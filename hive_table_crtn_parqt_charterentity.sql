CREATE TABLE hive.playground.wirelessextender_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lob VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/WirelessExtender',
    format = 'PARQUET'
);
----------------------------------

CREATE TABLE hive.playground.rpd_1 (
    adminstatus VARCHAR(255),
    alias VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    division_name VARCHAR(255),
    downstreaminterfaceids VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    ifindex VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    mac VARCHAR(255),
    macdomain_id VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    ofdm_id VARCHAR(255),
    ofdma_id VARCHAR(255),
    operstatus VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255),
    upstreaminterfaceids VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/RPD',
    format = 'PARQUET'
);

----------------------

CREATE TABLE hive.playground.servicegroup_1 (
    direction VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    index VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/ServiceGroup',
    format = 'PARQUET'
);

-------------------  Not yet created
CREATE TABLE hive.playground.bpsapplication_1 (
    bpshost VARCHAR(255),
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    module_id VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/BPSApplication',
    format = 'PARQUET'
);
-------------
CREATE TABLE hive.playground.bpssite_1 (
    bpssitecode VARCHAR(255),
    bpsapplication_id VARCHAR(255),
    bpssite_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/BPSSite',
    format = 'PARQUET'
);

CREATE TABLE hive.playground.intelligenthome_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable VARCHAR(255),
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lob VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/IntelligentHome',
    format = 'PARQUET'
);

------------

CREATE TABLE hive.playground.interface_1 (
    adminstatus VARCHAR(255),
    amm_id VARCHAR(255),
    ana_id VARCHAR(255),
    channelid VARCHAR(255),
    chanwidth VARCHAR(255),
    cmts_id VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    frequency VARCHAR(255),
    highfrequency VARCHAR(255),
    id VARCHAR(255),
    ifdescr VARCHAR(255),
    ifidx BIGINT,
    intalias VARCHAR(255),
    intdescr VARCHAR(255),
    intdirection VARCHAR(255),
    intspeed VARCHAR(255),
    inttype VARCHAR(255),
    ipv4netblocks VARCHAR(255),
    ipv6netblocks VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lastchange VARCHAR(255),
    lowfrequency VARCHAR(255),
    macdomain_id VARCHAR(255),
    mdindexnum VARCHAR(255),
    modprofile VARCHAR(255),
    modulation VARCHAR(255),
    mtu VARCHAR(255),
    name VARCHAR(255),
    nodelist VARCHAR(255),
    ofdmawidth VARCHAR(255),
    olt_id VARCHAR(255),
    operstatus VARCHAR(255),
    physaddress VARCHAR(255),
    physhashkey VARCHAR(255),
    physindex VARCHAR(255),
    poller VARCHAR(255),
    primary_capable BOOLEAN,
    regexmacdomain VARCHAR(255),
    rpd_id VARCHAR(255),
    scope VARCHAR(255),
    servicegroup VARCHAR(255),
    speed BIGINT,
    subcarriers VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Interface',
    format = 'PARQUET'
);
-------------

CREATE TABLE hive.playground.iuc_1 (
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    interface_id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    minislots VARCHAR(255),
    modulation VARCHAR(255),
    pilotpattern BIGINT,
    scope VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/IUC',
    format = 'PARQUET'
);
-----------

CREATE TABLE hive.playground.macdomain_1 (
    adminstatus BIGINT,
    channelid BIGINT,
    cmudcenabled BIGINT,
    cmts_id VARCHAR(255),
    direction VARCHAR(255),
    downchannelannex BIGINT,
    earlyauthencrctrl BIGINT,
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    frequency VARCHAR(255),
    id VARCHAR(255),
    ifalias VARCHAR(255),
    ifdescr VARCHAR(255),
    ifidx VARCHAR(255),
    iftype VARCHAR(255),
    ipprovmode VARCHAR(255),
    ipv4netblocks VARCHAR(255),
    ipv6netblocks VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lastchange BIGINT,
    mcastdsidfwdenabled BIGINT,
    mdifindex BIGINT,
    mddinterval BIGINT,
    mgtarea_id VARCHAR(255),
    modulation BIGINT,
    mtu BIGINT,
    multrxchmodeenabled BIGINT,
    multtxchmodeenabled BIGINT,
    name VARCHAR(255),
    nodeid VARCHAR(255),
    ofdmaphase VARCHAR(255),
    olt_id VARCHAR(255),
    operstatus BIGINT,
    physaddress VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    sendudcrulesenabled BIGINT,
    servicetypeidlist BIGINT,
    srcaddrverifenabled BIGINT,
    statusevctlenabled BIGINT,
    tftpproxyenabled BIGINT,
    type VARCHAR(255),
    usfreqrange BIGINT,
    width BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/MacDomain',
    format = 'PARQUET'
);
------------

CREATE TABLE hive.playground.mgtarea_1 (
    ancestors VARCHAR(255),
    combasicvideosub VARCHAR(255),
    comhsdsub VARCHAR(255),
    comvideosub VARCHAR(255),
    comvoicesub VARCHAR(255),
    coordinates_latitude VARCHAR(255),
    coordinates_longitude VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    geolocation VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    region_id VARCHAR(255),
    remedy_name VARCHAR(255),
    remedy_region VARCHAR(255),
    resbasicvideosub VARCHAR(255),
    reshsdsub VARCHAR(255),
    resvideosub VARCHAR(255),
    resvoicesub VARCHAR(255),
    scope VARCHAR(255),
    site_id VARCHAR(255),
    type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/MgtArea',
    format = 'PARQUET'
);
-------------

-- Table: modemldap_1
CREATE TABLE hive.playground.modemldap_1 (
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  module_id VARCHAR(255),
  name VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255),
  enabled BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/ModemLDAP', 
    format = 'PARQUET'
);

-- Table: vehicle_1
CREATE TABLE hive.playground.vehicle_1 (
  citympg BIGINT,
  currentodometer BIGINT,
  deltadistance BIGINT,
  deltatime BIGINT,
  direction BIGINT,
  displaystate VARCHAR(255),
  drivername VARCHAR(255),
  drivernumber VARCHAR(255),
  enabled BIGINT,
  engineminutes BIGINT,
  entitytype VARCHAR(255),
  geolocation VARCHAR(255),
  groupid VARCHAR(255),
  hasnavigationdevice BOOLEAN,
  heading VARCHAR(255),
  highwaympg BIGINT,
  id VARCHAR(255),
  idletime BIGINT,
  isprivate BOOLEAN,
  key VARCHAR(255),
  keyattr VARCHAR(255),
  latitude BIGINT,
  locationupdateutc BIGINT,
  longitude BIGINT,
  make VARCHAR(255),
  model VARCHAR(255),
  name VARCHAR(255),
  number VARCHAR(255),
  registrationnumber VARCHAR(255),
  scope VARCHAR(255),
  size BIGINT,
  speed BIGINT,
  statusupdateutc BIGINT,
  tankcapacity BIGINT,
  type VARCHAR(255),
  vin VARCHAR(255),
  year BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Vehicle', 
    format = 'PARQUET'
);

-- Table: wirelessrouter_1
CREATE TABLE hive.playground.wirelessrouter_1 (
  account_id VARCHAR(255),
  account_name VARCHAR(255),
  addressable VARCHAR(255),
  area_id VARCHAR(255),
  area_name VARCHAR(255),
  cpe_id VARCHAR(255),
  custowned VARCHAR(255),
  division_id VARCHAR(255),
  division_name VARCHAR(255),
  enabled BIGINT,
  enterprise_id VARCHAR(255),
  enterprise_name VARCHAR(255),
  entityname VARCHAR(255),
  entitytype VARCHAR(255),
  equipmenttype VARCHAR(255),
  hub_id VARCHAR(255),
  hub_name VARCHAR(255),
  id VARCHAR(255),
  importcomplete BOOLEAN,
  installdate VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  lob VARCHAR(255),
  make VARCHAR(255),
  mgtarea_id VARCHAR(255),
  mgtarea_name VARCHAR(255),
  model VARCHAR(255),
  name VARCHAR(255),
  node_id VARCHAR(255),
  node_name VARCHAR(255),
  port VARCHAR(255),
  region_id VARCHAR(255),
  region_name VARCHAR(255),
  scope VARCHAR(255),
  serial VARCHAR(255),
  sys VARCHAR(255),
  sysactual VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/WirelessRouter', 
    format = 'PARQUET'
);

-- Table: poller_1
CREATE TABLE hive.playground.poller_1 (
  enabled BIGINT,
  enterprise_id VARCHAR(255),
  enterprise_name VARCHAR(255),
  entitytype VARCHAR(255),
  fqdn VARCHAR(255),
  id VARCHAR(255),
  ip VARCHAR(255),
  ipv4 VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  market_id VARCHAR(255),
  market_name VARCHAR(255),
  name VARCHAR(255),
  os VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Poller', 
    format = 'PARQUET'
);

-- Table: profile_1
CREATE TABLE hive.playground.profile_1 (
  profile BIGINT,
  profiletype BIGINT,
  startidx BIGINT,
  stopidx BIGINT,
  division_name VARCHAR(255),
  enterprise_id VARCHAR(255),
  enterprise_name VARCHAR(255),
  entitytype VARCHAR(255),
  id VARCHAR(255),
  interface_id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  mgtarea_id VARCHAR(255),
  modulation VARCHAR(255),
  poller VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Profile', 
    format = 'PARQUET'
);

-- Table: market_1
CREATE TABLE hive.playground.market_1 (
  bpssite_id VARCHAR(255),
  combasicvideosub VARCHAR(255),
  comhsdsub VARCHAR(255),
  comvoicesub VARCHAR(255),
  coordinates_latitude VARCHAR(255),
  coordinates_longitude VARCHAR(255),
  enabled BIGINT,
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  geolocation VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  name VARCHAR(255),
  pkmarket VARCHAR(255),
  resbasicvideosub VARCHAR(255),
  reshsdsub VARCHAR(255),
  resvoicesub VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Market', 
    format = 'PARQUET'
);

-- Table: module_1
CREATE TABLE hive.playground.module_1 (
  entitytype VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  enabled BIGINT,
  name VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Module', 
    format = 'PARQUET'
);


CREATE TABLE hive.playground.eventrakapplication_1 (
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  name VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255),
  enabled BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EventrakApplication', 
    format = 'PARQUET'
);

-- Table: iqdapplication_1
CREATE TABLE hive.playground.iqdapplication_1 (
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255),
  enabled BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/IQDApplication', 
    format = 'PARQUET'
);

-- Table: mailldap_1
CREATE TABLE hive.playground.mailldap_1 (
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  module_id VARCHAR(255),
  name VARCHAR(255),
  scope VARCHAR(255),
  type VARCHAR(255),
  enabled BIGINT
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/MailLDAP', 
    format = 'PARQUET'
);

-- Table: region_1
CREATE TABLE hive.playground.region_1 (
  combasicvideosub VARCHAR(255),
  comhsdsub VARCHAR(255),
  comvideosub VARCHAR(255),
  comvoicesub VARCHAR(255),
  coordinates_latitude VARCHAR(255),
  coordinates_longitude VARCHAR(255),
  enabled BIGINT,
  enterprise_id VARCHAR(255),
  entitytype VARCHAR(255),
  geolocation VARCHAR(255),
  id VARCHAR(255),
  key VARCHAR(255),
  keyattr VARCHAR(255),
  name VARCHAR(255),
  remedy_name VARCHAR(255),
  resbasicvideosub VARCHAR(255),
  reshsdsub VARCHAR(255),
  resvideosub VARCHAR(255),
  resvoicesub VARCHAR(255),
  scope VARCHAR(255),
  site_id VARCHAR(255),
  type VARCHAR(255)
)
WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Region', 
    format = 'PARQUET'
);


-----------------------


CREATE TABLE hive.playground.site_1 (
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Site', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.team_1 (
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    manager_id VARCHAR(255),
    scope VARCHAR(255),
    teamcolor VARCHAR(255),
    teamname VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Team', 
    format = 'PARQUET'
);



CREATE TABLE hive.playground.division_1 (
    ancestors VARCHAR(255),
    area_id VARCHAR(255),
    bdncsserver VARCHAR(255),
    billingdb VARCHAR(255),
    bmsfilename VARCHAR(255),
    bpssite_id VARCHAR(255),
    combasicvideosub VARCHAR(255),
    comhsdsub VARCHAR(255),
    comvoicesub VARCHAR(255),
    coordinates_latitude VARCHAR(255),
    coordinates_longitude VARCHAR(255),
    currentutcoffset VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    geolocation VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    market_id VARCHAR(255),
    masserver VARCHAR(255),
    name VARCHAR(255),
    nyroc_divisionname VARCHAR(255),
    nyroc_name VARCHAR(255),
    nyroc_server VARCHAR(255),
    olsontz VARCHAR(255),
    pdncsserver VARCHAR(255),
    pksystem VARCHAR(255),
    remedy_name VARCHAR(255),
    remedy_region VARCHAR(255),
    resbasicvideosub VARCHAR(255),
    reshsdsub VARCHAR(255),
    resvoicesub VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255),
    unified_cpedb VARCHAR(255),
    unified_divisionid VARCHAR(255),
    unified_divisionname VARCHAR(255),
    unified_friendlyname VARCHAR(255),
    unified_server VARCHAR(255),
    unified_weburl VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Division', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.area_1 (
    ancestors VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    market_id VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Area', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.node_1 (
    ofdma_high_descr VARCHAR(255),
    ofdma_high_start_freq NUMERIC,
    ofdma_low_descr VARCHAR(255),
    ofdma_low_start_freq NUMERIC,
    ofdma_total_partial_svc NUMERIC,
    ofdm_descr VARCHAR(255),
    address_city VARCHAR(255),
    address_state VARCHAR(255),
    address_street VARCHAR(255),
    address_zip VARCHAR(255),
    area_id VARCHAR(255),
    artdemandrank VARCHAR(255),
    artrank VARCHAR(255),
    bpssite_id VARCHAR(255),
    cmts_id VARCHAR(255),
    combasicvideosub VARCHAR(255),
    comhsdsub VARCHAR(255),
    comvideosub VARCHAR(255),
    comvoicesub VARCHAR(255),
    controller_id VARCHAR(255),
    controller_name VARCHAR(255),
    coordinates_latitude VARCHAR(255),
    coordinates_longitude VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled NUMERIC,
    enterprise_id VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    geolocation VARCHAR(255),
    hasres VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    interfacelistdownstream_hashkeys VARCHAR(255),
    interfacelistupstream_hashkeys VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    legacy_id VARCHAR(255),
    macdomain_id VARCHAR(255),
    market_id VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    name VARCHAR(255),
    node_name VARCHAR(255),
    ofdmlist_hashkeys VARCHAR(255),
    ofdmalist_hashkeys VARCHAR(255),
    old_id VARCHAR(255),
    olt_id VARCHAR(255),
    pathtrakurl VARCHAR(255),
    primarytech VARCHAR(255),
    radius VARCHAR(255),
    rawname_name VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    remedy_hub VARCHAR(255),
    remedy_mgtarea VARCHAR(255),
    remedy_name VARCHAR(255),
    remedy_region VARCHAR(255),
    resbasicvideosub VARCHAR(255),
    reshsdsub VARCHAR(255),
    resvideosub VARCHAR(255),
    resvoicesub VARCHAR(255),
    rolt_id VARCHAR(255),
    rpd_id VARCHAR(255),
    scope VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    team_id VARCHAR(255),
    type VARCHAR(255),
    verified BOOLEAN
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Node', 
    format = 'PARQUET'
);

-- Continue creating tables for all other table definitions as shown above by following this same pattern.

=======================



CREATE TABLE hive.playground.networkdevice_1 (
    device_id VARCHAR(255),
    device_type VARCHAR(255),
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/networkdevice_1', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.device_1 (
    device_id VARCHAR(255),
    device_type VARCHAR(255),
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Device', 
    format = 'PARQUET'
);




CREATE TABLE hive.playground.dta_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable VARCHAR(255),
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/DTA', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.equipmentchassis_1 (
    class VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    entitytype VARCHAR(255),
    fwversion VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentChassis', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.equipmentcontainer_1 (
    cmts_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentContainer', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.equipmentfan_1 (
    class VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    entitytype VARCHAR(255),
    fwversion VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentFan', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.equipmentmodule_1 (
    class VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    entitytype VARCHAR(255),
    fwversion VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentModule', 
    format = 'PARQUET'
);


CREATE TABLE hive.playground.equipmentpowersupply_1 (
    class VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    entitytype VARCHAR(255),
    fwversion VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentPowerSupply', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.hotspotap_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable BOOLEAN,
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned BOOLEAN,
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lob VARCHAR(255),
    mac VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/HotspotAP', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.olt_1 (
    enabled NUMERIC,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    hub_id VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    ip VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lastpoll VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    sysdescr VARCHAR(255),
    sysloc VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/OLT', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.cmts_1 (
    controller_id VARCHAR(255),
    controller_name VARCHAR(255),
    division_id VARCHAR(255),
    docsis_model VARCHAR(255),
    docsis_vendor VARCHAR(255),
    enabled NUMERIC,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    generation VARCHAR(255),
    highsplit VARCHAR(255),
    hub_id VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    ip VARCHAR(255),
    ipv4 VARCHAR(255),
    ipv6 VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    sysdescr VARCHAR(255),
    sysloc VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/CMTS', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.employee_1 (
    eid VARCHAR(255),
    kmacode VARCHAR(255),
    kmadesc VARCHAR(255),
    pid VARCHAR(255),
    accountnumber VARCHAR(255),
    color VARCHAR(255),
    company VARCHAR(255),
    csgtechid BIGINT,
    department VARCHAR(255),
    departmentnumber VARCHAR(255),
    developer VARCHAR(255),
    division VARCHAR(255),
    divisiondesc VARCHAR(255),
    employeeid VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entitytype VARCHAR(255),
    firstname VARCHAR(255),
    id VARCHAR(255),
    jobcode VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lastname VARCHAR(255),
    mainttech VARCHAR(255),
    manager_id VARCHAR(255),
    mgtareaids VARCHAR(255),
    rocspecialist VARCHAR(255),
    scope VARCHAR(255),
    supervisor BIGINT,
    terminationdate VARCHAR(255),
    title VARCHAR(255),
    type VARCHAR(255),
    username VARCHAR(255),
    workcity VARCHAR(255),
    workemail VARCHAR(255),
    workphone VARCHAR(255),
    workstate VARCHAR(255),
    workstreet VARCHAR(255),
    workzip VARCHAR(255),
    secondaryteamids VARCHAR(255),
    serviceaccount VARCHAR(255),
    team_id VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Employee', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.house_1 (
    active VARCHAR(255),
    apt VARCHAR(255),
    cdf_id VARCHAR(255),
    city VARCHAR(255),
    coordinates_latitude VARCHAR(255),
    coordinates_longitude VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    ecpbillingdivision VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    geolocation VARCHAR(255),
    headend VARCHAR(255),
    housenum VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    latitude VARCHAR(255),
    longitude VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    soadivisionid VARCHAR(255),
    spcdivisionid VARCHAR(255),
    state VARCHAR(255),
    street VARCHAR(255),
    sys VARCHAR(255),
    type VARCHAR(255),
    workzone VARCHAR(255),
    zip VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/House', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.hub_1 (
    address_city VARCHAR(255),
    address_state VARCHAR(255),
    address_street VARCHAR(255),
    address_zip VARCHAR(255),
    althubid VARCHAR(255),
    ancestors VARCHAR(255),
    area_id VARCHAR(255),
    bpssite_id VARCHAR(255),
    clli VARCHAR(255),
    combasicvideosub VARCHAR(255),
    comhsdsub VARCHAR(255),
    comvideosub VARCHAR(255),
    comvoicesub VARCHAR(255),
    controller_id VARCHAR(255),
    controller_name VARCHAR(255),
    coordinates_latitude VARCHAR(255),
    coordinates_longitude VARCHAR(255),
    division_id VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    geolocation VARCHAR(255),
    hasres VARCHAR(255),
    hubcommonname VARCHAR(255),
    hubname VARCHAR(255),
    hubtype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    market_id VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    name VARCHAR(255),
    old_id VARCHAR(255),
    region_id VARCHAR(255),
    remedy_division VARCHAR(255),
    remedy_market VARCHAR(255),
    remedy_mgtarea VARCHAR(255),
    remedy_name VARCHAR(255),
    remedy_region VARCHAR(255),
    resbasicvideosub VARCHAR(255),
    reshsdsub VARCHAR(255),
    resvideosub VARCHAR(255),
    resvoicesub VARCHAR(255),
    scope VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255),
    verified BOOLEAN
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Hub', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.equipmentbackplane_1 (
    class VARCHAR(255),
    cmts_id VARCHAR(255),
    descr VARCHAR(255),
    entitytype VARCHAR(255),
    fwversion VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    poller VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/EquipmentBackplane', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.mta_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable VARCHAR(255),
    alias VARCHAR(255),
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    bbip VARCHAR(255),
    cablemodem_id VARCHAR(255),
    cmts_id VARCHAR(255),
    cmts_name VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    docsis_version VARCHAR(255),
    downstream_id VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    hw_version VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    interface_id VARCHAR(255),
    ip VARCHAR(255),
    ipv4 VARCHAR(255),
    ipv6 VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    market_id VARCHAR(255),
    market_name VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    poller VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    swversion VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/MTA', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.onu_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable BOOLEAN,
    alias VARCHAR(255),
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    bootversion VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned BOOLEAN,
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    docsis_version VARCHAR(255),
    enabled NUMERIC,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    ethernetspeed NUMERIC,
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    hwversion VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    ip VARCHAR(255),
    ipv4 VARCHAR(255),
    ipv6 VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lastpoll VARCHAR(255),
    lastseen VARCHAR(255),
    mac VARCHAR(255),
    macdomain_id VARCHAR(255),
    make VARCHAR(255),
    market_id VARCHAR(255),
    market_name VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    oam VARCHAR(255),
    offlinereport_date VARCHAR(255),
    offlinereport_duration NUMERIC,
    olt_id VARCHAR(255),
    olt_name VARCHAR(255),
    poller VARCHAR(255),
    port VARCHAR(255),
    primarydownstream VARCHAR(255),
    primaryupstream VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    status NUMERIC,
    statuslastchange NUMERIC,
    swversion VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    sysdescr VARCHAR(255),
    type VARCHAR(255),
    uptime VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/ONU', 
    format = 'PARQUET'
);


CREATE TABLE hive.playground.cdf_1 (
    cdfstring VARCHAR(255),
    cdfstringnatural VARCHAR(255),
    agent VARCHAR(255),
    biller VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    glid VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    legacymso VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    prin VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    soadivisionid VARCHAR(255),
    spcdivisionid VARCHAR(255),
    sys VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/CDF', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.enterprise_1 (
    combasicvideosub VARCHAR(255),
    comhsdsub VARCHAR(255),
    comvideosub VARCHAR(255),
    comvoicesub VARCHAR(255),
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    resbasicvideosub VARCHAR(255),
    reshsdsub VARCHAR(255),
    resvideosub VARCHAR(255),
    resvoicesub VARCHAR(255),
    scope VARCHAR(255),
    site_id VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/Enterprise', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.ata_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    addressable VARCHAR(255),
    cpe_id VARCHAR(255),
    custowned VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    port VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/ATA', 
    format = 'PARQUET'
);

CREATE TABLE hive.playground.cpe_1 (
    account_id VARCHAR(255),
    account_name VARCHAR(255),
    area_id VARCHAR(255),
    area_name VARCHAR(255),
    custowned VARCHAR(255),
    division_id VARCHAR(255),
    division_name VARCHAR(255),
    enabled BIGINT,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entityname VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    hub_id VARCHAR(255),
    hub_name VARCHAR(255),
    id VARCHAR(255),
    importcomplete BOOLEAN,
    installdate VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    lob_data BOOLEAN,
    lob_phone BOOLEAN,
    lob_video BOOLEAN,
    make VARCHAR(255),
    mgtarea_id VARCHAR(255),
    mgtarea_name VARCHAR(255),
    model VARCHAR(255),
    name VARCHAR(255),
    node_id VARCHAR(255),
    node_name VARCHAR(255),
    region_id VARCHAR(255),
    region_name VARCHAR(255),
    scope VARCHAR(255),
    serial VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    type VARCHAR(255)
) WITH (
    external_location = 's3://inteldev-s3-data-dev/app/charter-entities/parquet/20250327/CPE', 
    format = 'PARQUET'
);





account_1
area_1
bpsapplication_1

bpssite_1
cablemodem_1
cdf_1
cmts_1
division_1
eventrakapplication_1
house_1
hub_1
intelligenthome_1
interface_1
iqdapplication_1
iuc_1
macdomain_1
mailldap_1
market_1
mgtarea_1
modemldap_1
module_1
node_1
poller_1
profile_1
region_1
router_1
rpd_1
servicegroup_1
settopbox_1
site_1
team_1
vehicle_1
wirelessextender_1
wirelessrouter_1


