CREATE TABLE iceberg.playground.wirelessextender (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/wirelessextender'
);
----------------------------------

CREATE TABLE iceberg.playground.rpd (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/rpd'
);

----------------------

CREATE TABLE iceberg.playground.servicegroup (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/servicegroup'
);

-------------------  Not yet created
CREATE TABLE iceberg.playground.bpsapplication (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/bpsapplication'
);
-------------
CREATE TABLE iceberg.playground.bpssite (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/bpssite'
);

CREATE TABLE iceberg.playground.intelligenthome (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/intelligenthome'
);

------------

CREATE TABLE iceberg.playground.interface (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/interface'
);
-------------

CREATE TABLE iceberg.playground.iuc (
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
    WITH (    format = 'PARQUET', 
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/iuc'
);
-----------

CREATE TABLE iceberg.playground.macdomain (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/macdomain'
);
------------

CREATE TABLE iceberg.playground.mgtarea (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/mgtarea'
);
-------------

-- Table: modemldap
CREATE TABLE iceberg.playground.modemldap (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/modemldap'
);

-- Table: vehicle
CREATE TABLE iceberg.playground.vehicle (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/vehicle'
);

-- Table: wirelessrouter
CREATE TABLE iceberg.playground.wirelessrouter (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/wirelessrouter'
);

-- Table: poller
CREATE TABLE iceberg.playground.poller (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/poller'
);

-- Table: profile
CREATE TABLE iceberg.playground.profile (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/profile'
);

-- Table: market
CREATE TABLE iceberg.playground.market (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/market'
);

-- Table: module
CREATE TABLE iceberg.playground.module (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/module'
);


CREATE TABLE iceberg.playground.eventrakapplication (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/eventrakapplication'
);

-- Table: iqdapplication
CREATE TABLE iceberg.playground.iqdapplication (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/iqdapplication'
);

-- Table: mailldap
CREATE TABLE iceberg.playground.mailldap (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/mailldap'
);

-- Table: region
CREATE TABLE iceberg.playground.region (
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
	format = 'PARQUET',    
	format_version = 2,    
	location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/region'
);


-----------------------


CREATE TABLE iceberg.playground.site (
    enabled BIGINT,
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    name VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
)     WITH (    
		format = 'PARQUET',    
		format_version = 2,    
		location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/site'
);

CREATE TABLE iceberg.playground.team (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/team'
);



CREATE TABLE iceberg.playground.division (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/division'
);

CREATE TABLE iceberg.playground.area (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/area'
);

CREATE TABLE iceberg.playground.node (
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
) 
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/node'
);

-- Continue creating tables for all other table definitions as shown above by following this same pattern.

=======================



CREATE TABLE iceberg.playground.networkdevice (
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
) networkdevice', 
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/
);

CREATE TABLE iceberg.playground.device (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/device'
);




CREATE TABLE iceberg.playground.dta (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/dta'
);

CREATE TABLE iceberg.playground.equipmentchassis (
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
)   WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentchassis'
);

CREATE TABLE iceberg.playground.equipmentcontainer (
    cmts_id VARCHAR(255),
    entitytype VARCHAR(255),
    id VARCHAR(255),
    key VARCHAR(255),
    keyattr VARCHAR(255),
    scope VARCHAR(255),
    type VARCHAR(255)
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentcontainer'
);

CREATE TABLE iceberg.playground.equipmentfan (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentfan'
);

CREATE TABLE iceberg.playground.equipmentmodule (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentmodule'
);


CREATE TABLE iceberg.playground.equipmentpowersupply (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentpowersupply'
);

CREATE TABLE iceberg.playground.hotspotap (
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
) 
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/hotspotap'
);

CREATE TABLE iceberg.playground.olt (
    enabled bigint,
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
)      WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/olt'
);

CREATE TABLE iceberg.playground.cmts (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/cmts'
);

CREATE TABLE iceberg.playground.employee (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/employee'
);

CREATE TABLE iceberg.playground.house (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/house'
);

CREATE TABLE iceberg.playground.hub (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/hub'
);

CREATE TABLE iceberg.playground.equipmentbackplane (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/equipmentbackplane'
);

CREATE TABLE iceberg.playground.mta (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/mta'
);

CREATE TABLE iceberg.playground.onu (
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
    enabled bigint,
    enterprise_id VARCHAR(255),
    enterprise_name VARCHAR(255),
    entitytype VARCHAR(255),
    equipmenttype VARCHAR(255),
    ethernetspeed bigint,
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
    offlinereport_duration bigint,
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
    status bigint,
    statuslastchange bigint,
    swversion VARCHAR(255),
    sys VARCHAR(255),
    sysactual VARCHAR(255),
    sysdescr VARCHAR(255),
    type VARCHAR(255),
    uptime VARCHAR(255)
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/onu'
);


CREATE TABLE iceberg.playground.cdf (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/cdf'
);

CREATE TABLE iceberg.playground.enterprise (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/enterprise'
);

CREATE TABLE iceberg.playground.ata (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/ata'
);

CREATE TABLE iceberg.playground.cpe (
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
)  
    WITH (    format = 'PARQUET',    format_version = 2,    location = 'hdfs://ip-10-210-78-223.ec2.internal:8020/warehouse/playground/cpe'
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




