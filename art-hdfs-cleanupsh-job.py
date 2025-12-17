from datetime import datetime, timedelta
import yaml
import tempfile
import os
import boto3
from airflow.models import Variable
from airflow.operators.python import PythonOperator

from airflow import DAG
from airflow.providers.cncf.kubernetes.operators.job import KubernetesJobOperator

# Function to get value of env variaable
def get_env(var_name):
    return Variable.get(var_name)

# Function to get value of eks cluster
def get_eks_cluster(var_name):
    return Variable.get(var_name)

def get_s3_bucket(var_name):
    return Variable.get(var_name)

# Construct variables
eks_cluster_name = get_eks_cluster('eks_cluster')
s3_bucket = get_s3_bucket('s3_bucket') 
dag_id = os.path.splitext(os.path.basename(__file__))[0]

# S3 configuration for kubeconfig
S3_BUCKET = s3_bucket  
S3_KUBECONFIG_KEY = f"/kubeconfigs/{eks_cluster_name}-kubeconfig"  # Replace with your kubeconfig path in S3

    # s3_bucket = "inteldev-s3-airflow-uat"
    # s3_key = f"/kubeconfigs/{eks_cluster_name}-kubeconfig"

# Define the Job YAML as a multi-line string
JOB_YAML = """
apiVersion: batch/v1
kind: Job
metadata:
  name: art-hdfs-cleanupsh-job
  namespace: sdp
spec:
  ttlSecondsAfterFinished: 3600
  backoffLimit: 0  # Prevent pod retries
  activeDeadlineSeconds: 60  # Pod must start within 1 minutes or job fails
  parallelism: 1  # Only one pod at a time    
  template:
    spec:
      serviceAccountName: sdp-sa
      containers:
      - name: go-arthdfscleanup-container
        image: docker-artifactory.spectrumflow.net/docker/inteldev/artingest:latest
        command: ["./art_hdfs_cleanup.sh", "--confFile","./misc/conf/config-awsuat.yml"]
        resources:
          requests:
            memory: "64Mi"
            cpu: "100m"
          limits:
            memory: "128Mi"
            cpu: "200m"
      imagePullSecrets:
      - name: sdp-specflow-artifactory-secret
      restartPolicy: Never
  backoffLimit: 0  # Prevent pod retries
  activeDeadlineSeconds: 60  # Pod must start within 1 minutes or job fails
  parallelism: 1  # Only one pod at a time  
  """

# Function to get kubeconfig from S3
def get_kubeconfig_from_s3():
    # Create local path for kubeconfig
    config_file = '/tmp/kubeconfig'
    
    # Download kubeconfig from S3
    s3_client = boto3.client('s3')
    s3_client.download_file(S3_BUCKET, S3_KUBECONFIG_KEY, config_file)
    
    return config_file

# Write the YAML to a temporary file that persists for the DAG run
def get_job_yaml_file():
    tmp_dir = '/tmp/airflow_jobs'
    os.makedirs(tmp_dir, exist_ok=True)
    yaml_file = os.path.join(tmp_dir, f"{dag_id}.yaml")
    
    if not os.path.exists(yaml_file):
        with open(yaml_file, 'w') as f:
            f.write(JOB_YAML)
    return yaml_file

# Clean up the YAML once DAG run is complete
def cleanup_job_yaml(**context):
    dag_id = context['dag'].dag_id
    yaml_file = os.path.join('/tmp/airflow_jobs', f'job_{dag_id}.yaml')
    if os.path.exists(yaml_file):
        os.remove(yaml_file)
        print(f"Cleaned up job yaml file: {yaml_file}")    

# Default arguments for the DAG
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 0,
    'retry_delay': timedelta(minutes=5),
}

# Create the DAG
with DAG(
    dag_id= dag_id,
    default_args=default_args,
    description='Submit Job to EKS cluster using kubeconfig from S3',
    schedule_interval=None,
    start_date=datetime(2024,12,26),
    catchup=False,
    tags=['eks', 'kubernetes'],
) as dag:

    # Task to submit job to EKS
    submit_job = KubernetesJobOperator(
        task_id='submit_eks_job',
        namespace='sdp',  
        in_cluster=False,
        config_file=get_kubeconfig_from_s3(),  
        job_template_file=get_job_yaml_file(),
        wait_until_job_complete=True,
        job_poll_interval=20,
        get_logs=True,
    )

    # Task to cleanup job yaml
    cleanup_yaml = PythonOperator(
        task_id='cleanup_job_yaml',
        python_callable=cleanup_job_yaml,
        provide_context=True,
    )    

    # Set task dependencies if you have multiple tasks
    submit_job >> cleanup_yaml