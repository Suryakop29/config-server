-- charterentity.account definition

-- Drop table

-- DROP TABLE charterentity.account;

CREATE TABLE charterentity.account (
	account text NULL,
	address_apt text NULL,
	address_city text NULL,
	address_state text NULL,
	address_street text NULL,
	address_zip text NULL,
	amp text NULL,
	area_id text NULL,
	cdf_id text NULL,
	controller_id text NULL,
	controller_name text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	customertype text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	ecpbillingdivision text NULL,
	enddate text NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	geolocation text NULL,
	headend text NULL,
	highsplitarea bool NULL,
	house_id text NULL,
	house_name text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	old_id text NULL,
	phone text NULL,
	region_id text NULL,
	"scope" text NULL,
	seasonal bool NULL,
	soadivisionid text NULL,
	spcdivisionid text NULL,
	startdate text NULL,
	sys text NULL,
	sysactual text NULL,
	tag text NULL,
	"type" text NULL,
	vip text NULL,
	workzone text NULL
)
PARTITION BY LIST (enabled);
CREATE INDEX idx_account_enabled_coordinates ON ONLY charterentity.account USING btree (enabled, coordinates_latitude, coordinates_longitude);
CREATE INDEX idx_account_enabled_name ON ONLY charterentity.account USING btree (name, id);

-- Partitions

CREATE TABLE public.account_enabled_0 PARTITION OF charterentity.account  FOR VALUES IN ('0');
CREATE INDEX account_enabled_0_enabled_coordinates_latitude_coordinates__idx ON public.account_enabled_0 USING btree (enabled, coordinates_latitude, coordinates_longitude);
CREATE INDEX account_enabled_0_name_id_idx ON public.account_enabled_0 USING btree (name, id);

CREATE TABLE public.account_enabled_1 PARTITION OF charterentity.account  FOR VALUES IN ('1');
CREATE INDEX account_enabled_1_enabled_coordinates_latitude_coordinates__idx ON public.account_enabled_1 USING btree (enabled, coordinates_latitude, coordinates_longitude);
CREATE INDEX account_enabled_1_name_id_idx ON public.account_enabled_1 USING btree (name, id);


-- charterentity.area definition

-- Drop table

-- DROP TABLE charterentity.area;

CREATE TABLE charterentity.area (
	ancestors text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	market_id text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.ata definition

-- Drop table

-- DROP TABLE charterentity.ata;

CREATE TABLE charterentity.ata (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.awg definition

-- Drop table

-- DROP TABLE charterentity.awg;

CREATE TABLE charterentity.awg (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	area_id text NULL,
	area_name text NULL,
	bbip text NULL,
	cmts_id text NULL,
	cmts_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	docsis_version text NULL,
	downstream_id text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	interface_id text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.bpsapplication definition

-- Drop table

-- DROP TABLE charterentity.bpsapplication;

CREATE TABLE charterentity.bpsapplication (
	bpshost text NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	module_id text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.bpssite definition

-- Drop table

-- DROP TABLE charterentity.bpssite;

CREATE TABLE charterentity.bpssite (
	bpssitecode text NULL,
	bpsapplication_id text NULL,
	bpssite_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.cablemodem definition

-- Drop table

-- DROP TABLE charterentity.cablemodem;

CREATE TABLE charterentity.cablemodem (
	account_id text NULL,
	account_name text NULL,
	addressable bool NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	bandedge text NULL,
	bondstatus numeric NULL,
	bootversion text NULL,
	cmts_id text NULL,
	cmts_name text NULL,
	cpe_id text NULL,
	custowned bool NULL,
	division_id text NULL,
	division_name text NULL,
	docsis_version text NULL,
	downstream_id text NULL,
	enabled numeric NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	ethernetspeed numeric NULL,
	fbc_capable bool NULL,
	fbc_enabled bool NULL,
	hub_id text NULL,
	hub_name text NULL,
	hwversion text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv4netblocks text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastpoll text NULL,
	lastseen text NULL,
	lob text NULL,
	mac text NULL,
	macdomain_id text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	network text NULL,
	node_id text NULL,
	node_name text NULL,
	ofdm_id text NULL,
	ofdm_assignments text NULL,
	ofdma_id text NULL,
	ofdma_assignments text NULL,
	offlinereport_date text NULL,
	offlinereport_duration numeric NULL,
	partialbond text NULL,
	partiallybonded bool NULL,
	poller text NULL,
	port text NULL,
	primarydownstream text NULL,
	primaryupstream text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sgid text NULL,
	status numeric NULL,
	statuslastchange numeric NULL,
	stbmacaddress text NULL,
	swversion text NULL,
	sys text NULL,
	sysactual text NULL,
	sysdescr text NULL,
	tftpserver text NULL,
	ts text NULL,
	"type" text NULL,
	upstream_id text NULL,
	uptime text NULL,
	uspartialbond text NULL,
	uspartiallybonded bool NULL
);
CREATE INDEX idx_cablemodem_account_name ON charterentity.cablemodem USING btree (account_name, id);


-- charterentity.cdf definition

-- Drop table

-- DROP TABLE charterentity.cdf;

CREATE TABLE charterentity.cdf (
	cdftext text NULL,
	cdftextnatural text NULL,
	cdfstring text NULL,
	agent text NULL,
	biller text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	glid text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	legacymso text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	prin text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	soadivisionid text NULL,
	spcdivisionid text NULL,
	sys text NULL,
	"type" text NULL,
	cdfstringnatural text NULL
);


-- charterentity.cmts definition

-- Drop table

-- DROP TABLE charterentity.cmts;

CREATE TABLE charterentity.cmts (
	controller_id text NULL,
	controller_name text NULL,
	division_id text NULL,
	docsis_model text NULL,
	docsis_vendor text NULL,
	enabled numeric NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	generation text NULL,
	highsplit text NULL,
	hub_id text NULL,
	hwversion text NULL,
	id text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	sysdescr text NULL,
	sysloc text NULL,
	"type" text NULL
);
CREATE INDEX idx_cmts_id ON charterentity.cmts USING btree (id);


-- charterentity.cmts_backup definition

-- Drop table

-- DROP TABLE charterentity.cmts_backup;

CREATE TABLE charterentity.cmts_backup (
	controller_id text NULL,
	controller_name text NULL,
	division_id text NULL,
	docsis_model text NULL,
	docsis_vendor text NULL,
	enabled numeric NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	generation text NULL,
	highsplit text NULL,
	hub_id text NULL,
	hwversion text NULL,
	id text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	sysdescr text NULL,
	sysloc text NULL,
	"type" text NULL
);


-- charterentity.cpe definition

-- Drop table

-- DROP TABLE charterentity.cpe;

CREATE TABLE charterentity.cpe (
	account_id text NULL,
	account_name text NULL,
	area_id text NULL,
	area_name text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	lob_data bool NULL,
	lob_phone bool NULL,
	lob_video bool NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.division definition

-- Drop table

-- DROP TABLE charterentity.division;

CREATE TABLE charterentity.division (
	ancestors text NULL,
	area_id text NULL,
	bdncsserver text NULL,
	billingdb text NULL,
	bmsfilename text NULL,
	bpssite_id text NULL,
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvoicesub text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	currentutcoffset text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	geolocation text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	market_id text NULL,
	masserver text NULL,
	"name" text NULL,
	nyroc_divisionname text NULL,
	nyroc_name text NULL,
	nyroc_server text NULL,
	olsontz text NULL,
	pdncsserver text NULL,
	pksystem text NULL,
	remedy_name text NULL,
	remedy_region text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	"type" text NULL,
	unified_cpedb text NULL,
	unified_divisionid text NULL,
	unified_divisionname text NULL,
	unified_friendlyname text NULL,
	unified_server text NULL,
	unified_weburl text NULL
);


-- charterentity.dta definition

-- Drop table

-- DROP TABLE charterentity.dta;

CREATE TABLE charterentity.dta (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.employee definition

-- Drop table

-- DROP TABLE charterentity.employee;

CREATE TABLE charterentity.employee (
	eid text NULL,
	kmacode text NULL,
	kmadesc text NULL,
	pid text NULL,
	accountnumber text NULL,
	color text NULL,
	company text NULL,
	csgtechid numeric NULL,
	department text NULL,
	departmentnumber text NULL,
	developer text NULL,
	division text NULL,
	divisiondesc text NULL,
	employeeid text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	firstname text NULL,
	icomstechid int8 NULL,
	id text NULL,
	jobcode text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastname text NULL,
	mainttech text NULL,
	manager_id text NULL,
	mgtareaids text NULL,
	rocspecialist text NULL,
	"scope" text NULL,
	secondaryteamids text NULL,
	serviceaccount numeric NULL,
	supervisor numeric NULL,
	team_id text NULL,
	terminationdate text NULL,
	title text NULL,
	"type" text NULL,
	username text NULL,
	workcity text NULL,
	workemail text NULL,
	workphone text NULL,
	workstate text NULL,
	workstreet text NULL,
	workzip text NULL
);


-- charterentity.enterprise definition

-- Drop table

-- DROP TABLE charterentity.enterprise;

CREATE TABLE charterentity.enterprise (
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvideosub text NULL,
	comvoicesub text NULL,
	enabled int8 NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvideosub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	site_id text NULL,
	"type" text NULL
);


-- charterentity.equipmentbackplane definition

-- Drop table

-- DROP TABLE charterentity.equipmentbackplane;

CREATE TABLE charterentity.equipmentbackplane (
	"class" text NULL,
	cmts_id text NULL,
	descr text NULL,
	entitytype text NULL,
	fwversion text NULL,
	hwversion text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL
);


-- charterentity.equipmentchassis definition

-- Drop table

-- DROP TABLE charterentity.equipmentchassis;

CREATE TABLE charterentity.equipmentchassis (
	"class" text NULL,
	cmts_id text NULL,
	descr text NULL,
	entitytype text NULL,
	fwversion text NULL,
	hwversion text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL
);


-- charterentity.equipmentcontainer definition

-- Drop table

-- DROP TABLE charterentity.equipmentcontainer;

CREATE TABLE charterentity.equipmentcontainer (
	cmts_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.equipmentfan definition

-- Drop table

-- DROP TABLE charterentity.equipmentfan;

CREATE TABLE charterentity.equipmentfan (
	"class" text NULL,
	cmts_id text NULL,
	descr text NULL,
	entitytype text NULL,
	fwversion text NULL,
	hwversion text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL
);


-- charterentity.equipmentmodule definition

-- Drop table

-- DROP TABLE charterentity.equipmentmodule;

CREATE TABLE charterentity.equipmentmodule (
	"class" text NULL,
	cmts_id text NULL,
	descr text NULL,
	entitytype text NULL,
	fwversion text NULL,
	hwversion text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL
);


-- charterentity.equipmentpowersupply definition

-- Drop table

-- DROP TABLE charterentity.equipmentpowersupply;

CREATE TABLE charterentity.equipmentpowersupply (
	"class" text NULL,
	cmts_id text NULL,
	descr text NULL,
	entitytype text NULL,
	fwversion text NULL,
	hwversion text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL
);


-- charterentity.eventrakapplication definition

-- Drop table

-- DROP TABLE charterentity.eventrakapplication;

CREATE TABLE charterentity.eventrakapplication (
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL,
	enabled int8 NULL
);


-- charterentity.hotspotap definition

-- Drop table

-- DROP TABLE charterentity.hotspotap;

CREATE TABLE charterentity.hotspotap (
	account_id text NULL,
	account_name text NULL,
	addressable bool NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned bool NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	lob text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.house definition

-- Drop table

-- DROP TABLE charterentity.house;

CREATE TABLE charterentity.house (
	active text NULL,
	apt text NULL,
	cdf_id text NULL,
	city text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	division_id text NULL,
	division_name text NULL,
	ecpbillingdivision text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	geolocation text NULL,
	headend text NULL,
	housenum text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	latitude text NULL,
	longitude text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	ratecenter text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	soadivisionid text NULL,
	spcdivisionid text NULL,
	state text NULL,
	street text NULL,
	sys text NULL,
	"type" text NULL,
	workzone text NULL,
	zip text NULL
);


-- charterentity.hub definition

-- Drop table

-- DROP TABLE charterentity.hub;

CREATE TABLE charterentity.hub (
	address_city text NULL,
	address_state text NULL,
	address_street text NULL,
	address_zip text NULL,
	althubid text NULL,
	ancestors text NULL,
	area_id text NULL,
	bpssite_id text NULL,
	clli text NULL,
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvideosub text NULL,
	comvoicesub text NULL,
	controller_id text NULL,
	controller_name text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	division_id text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entityname text NULL,
	entitytype text NULL,
	geolocation text NULL,
	hasres text NULL,
	hubcommonname text NULL,
	hubname text NULL,
	hubtype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	market_id text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	"name" text NULL,
	old_id text NULL,
	region_id text NULL,
	remedy_division text NULL,
	remedy_market text NULL,
	remedy_mgtarea text NULL,
	remedy_name text NULL,
	remedy_region text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvideosub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL,
	verified bool NULL
);
CREATE INDEX idx_hub_id ON charterentity.hub USING btree (id);


-- charterentity.intelligenthome definition

-- Drop table

-- DROP TABLE charterentity.intelligenthome;

CREATE TABLE charterentity.intelligenthome (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	lob text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.interface definition

-- Drop table

-- DROP TABLE charterentity.interface;

CREATE TABLE charterentity.interface (
	adminstatus text NULL,
	amm_id text NULL,
	ana_id text NULL,
	channelid text NULL,
	chanwidth text NULL,
	cmts_id text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entityname text NULL,
	entitytype text NULL,
	frequency text NULL,
	highfrequency text NULL,
	id text NULL,
	ifdescr text NULL,
	ifidx int8 NULL,
	intalias text NULL,
	intdescr text NULL,
	intdirection text NULL,
	intspeed text NULL,
	inttype text NULL,
	ipv4netblocks text NULL,
	ipv6netblocks text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastchange text NULL,
	lowfrequency text NULL,
	macdomain_id text NULL,
	mdindexnum text NULL,
	modprofile text NULL,
	modulation text NULL,
	mtu text NULL,
	"name" text NULL,
	nodelist text NULL,
	ofdmawidth text NULL,
	olt_id text NULL,
	operstatus text NULL,
	physaddress text NULL,
	physhashkey text NULL,
	physindex text NULL,
	poller text NULL,
	primary_capable bool NULL,
	regexmacdomain text NULL,
	rpd_id text NULL,
	"scope" text NULL,
	servicegroup text NULL,
	speed int8 NULL,
	subcarriers text NULL,
	"type" text NULL
);


-- charterentity.interface_backup definition

-- Drop table

-- DROP TABLE charterentity.interface_backup;

CREATE TABLE charterentity.interface_backup (
	adminstatus text NULL,
	amm_id text NULL,
	ana_id text NULL,
	channelid text NULL,
	chanwidth text NULL,
	cmts_id text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entityname text NULL,
	entitytype text NULL,
	frequency text NULL,
	highfrequency text NULL,
	id text NULL,
	ifdescr text NULL,
	ifidx int8 NULL,
	intalias text NULL,
	intdescr text NULL,
	intdirection text NULL,
	intspeed text NULL,
	inttype text NULL,
	ipv4netblocks text NULL,
	ipv6netblocks text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastchange text NULL,
	lowfrequency text NULL,
	macdomain_id text NULL,
	mdindexnum text NULL,
	modprofile text NULL,
	modulation text NULL,
	mtu text NULL,
	"name" text NULL,
	nodelist text NULL,
	ofdmawidth text NULL,
	olt_id text NULL,
	operstatus text NULL,
	physaddress text NULL,
	physhashkey text NULL,
	physindex text NULL,
	poller text NULL,
	primary_capable bool NULL,
	regexmacdomain text NULL,
	rpd_id text NULL,
	"scope" text NULL,
	servicegroup text NULL,
	speed int8 NULL,
	subcarriers text NULL,
	"type" text NULL
);


-- charterentity.iqdapplication definition

-- Drop table

-- DROP TABLE charterentity.iqdapplication;

CREATE TABLE charterentity.iqdapplication (
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"scope" text NULL,
	"type" text NULL,
	enabled int8 NULL
);


-- charterentity.iuc definition

-- Drop table

-- DROP TABLE charterentity.iuc;

CREATE TABLE charterentity.iuc (
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	interface_id text NULL,
	"key" text NULL,
	keyattr text NULL,
	minislots text NULL,
	modulation text NULL,
	pilotpattern int8 NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.macdomain definition

-- Drop table

-- DROP TABLE charterentity.macdomain;

CREATE TABLE charterentity.macdomain (
	adminstatus int8 NULL,
	channelid int8 NULL,
	cmudcenabled int8 NULL,
	cmts_id text NULL,
	direction text NULL,
	downchannelannex int8 NULL,
	earlyauthencrctrl int8 NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	frequency text NULL,
	id text NULL,
	ifalias text NULL,
	ifdescr text NULL,
	ifidx text NULL,
	iftype text NULL,
	ipprovmode text NULL,
	ipv4netblocks text NULL,
	ipv6netblocks text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastchange int8 NULL,
	mcastdsidfwdenabled int8 NULL,
	mdifindex int8 NULL,
	mddinterval int8 NULL,
	mgtarea_id text NULL,
	modulation int8 NULL,
	mtu int8 NULL,
	multrxchmodeenabled int8 NULL,
	multtxchmodeenabled int8 NULL,
	"name" text NULL,
	nodeid text NULL,
	ofdmaphase text NULL,
	olt_id text NULL,
	operstatus int8 NULL,
	physaddress text NULL,
	poller text NULL,
	"scope" text NULL,
	sendudcrulesenabled int8 NULL,
	servicetypeidlist int8 NULL,
	srcaddrverifenabled int8 NULL,
	statusevctlenabled int8 NULL,
	tftpproxyenabled int8 NULL,
	"type" text NULL,
	usfreqrange int8 NULL,
	width int8 NULL
);


-- charterentity.macdomain_backup definition

-- Drop table

-- DROP TABLE charterentity.macdomain_backup;

CREATE TABLE charterentity.macdomain_backup (
	adminstatus int8 NULL,
	channelid int8 NULL,
	cmudcenabled int8 NULL,
	cmts_id text NULL,
	direction text NULL,
	downchannelannex int8 NULL,
	earlyauthencrctrl int8 NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	frequency text NULL,
	id text NULL,
	ifalias text NULL,
	ifdescr text NULL,
	ifidx text NULL,
	iftype text NULL,
	ipprovmode text NULL,
	ipv4netblocks text NULL,
	ipv6netblocks text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastchange int8 NULL,
	mcastdsidfwdenabled int8 NULL,
	mdifindex int8 NULL,
	mddinterval int8 NULL,
	mgtarea_id text NULL,
	modulation int8 NULL,
	mtu int8 NULL,
	multrxchmodeenabled int8 NULL,
	multtxchmodeenabled int8 NULL,
	"name" text NULL,
	nodeid text NULL,
	ofdmaphase text NULL,
	olt_id text NULL,
	operstatus int8 NULL,
	physaddress text NULL,
	poller text NULL,
	"scope" text NULL,
	sendudcrulesenabled int8 NULL,
	servicetypeidlist int8 NULL,
	srcaddrverifenabled int8 NULL,
	statusevctlenabled int8 NULL,
	tftpproxyenabled int8 NULL,
	"type" text NULL,
	usfreqrange int8 NULL
);


-- charterentity.mailldap definition

-- Drop table

-- DROP TABLE charterentity.mailldap;

CREATE TABLE charterentity.mailldap (
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	module_id text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL,
	enabled int8 NULL
);


-- charterentity.market definition

-- Drop table

-- DROP TABLE charterentity.market;

CREATE TABLE charterentity.market (
	bpssite_id text NULL,
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvoicesub text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	geolocation text NULL,
	id text DEFAULT ''::text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	pkmarket text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.mgtarea definition

-- Drop table

-- DROP TABLE charterentity.mgtarea;

CREATE TABLE charterentity.mgtarea (
	ancestors text NULL,
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvideosub text NULL,
	comvoicesub text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	geolocation text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	region_id text NULL,
	remedy_name text NULL,
	remedy_region text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvideosub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	site_id text NULL,
	"type" text NULL
);


-- charterentity.modemldap definition

-- Drop table

-- DROP TABLE charterentity.modemldap;

CREATE TABLE charterentity.modemldap (
	enterprise_id text NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	module_id text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL,
	enabled int8 NULL
);


-- charterentity."module" definition

-- Drop table

-- DROP TABLE charterentity."module";

CREATE TABLE charterentity."module" (
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	enabled int8 NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.mta definition

-- Drop table

-- DROP TABLE charterentity.mta;

CREATE TABLE charterentity.mta (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	bbip text NULL,
	cablemodem_id text NULL,
	cmts_id text NULL,
	cmts_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	docsis_version text NULL,
	downstream_id text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	hw_version text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	interface_id text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	poller text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.node definition

-- Drop table

-- DROP TABLE charterentity.node;

CREATE TABLE charterentity.node (
	ofdma_high_descr text NULL,
	ofdma_high_start_freq int8 NULL,
	ofdma_low_descr text NULL,
	ofdma_low_start_freq int8 NULL,
	ofdma_total_partial_svc int8 NULL,
	ofdm_descr text NULL,
	address_city text NULL,
	address_state text NULL,
	address_street text NULL,
	address_zip text NULL,
	area_id text NULL,
	artdemandrank text NULL,
	artrank text NULL,
	bpssite_id text NULL,
	cmts_id text NULL,
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvideosub text NULL,
	comvoicesub text NULL,
	controller_id text NULL,
	controller_name text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entityname text NULL,
	entitytype text NULL,
	geolocation text NULL,
	hasres text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	interfacelistdownstream_hashkeys text NULL,
	interfacelistupstream_hashkeys text NULL,
	"key" text NULL,
	keyattr text NULL,
	legacy_id text NULL,
	macdomain_id text NULL,
	market_id text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	"name" text NULL,
	node_name text NULL,
	ofdmlist_hashkeys text NULL,
	ofdmalist_hashkeys text NULL,
	ofdmaphase int8 NULL,
	old_id text NULL,
	olt_id text NULL,
	pathtrakurl text NULL,
	primarytech text NULL,
	radius text NULL,
	rawname_name text NULL,
	region_id text NULL,
	region_name text NULL,
	remedy_hub text NULL,
	remedy_mgtarea text NULL,
	remedy_name text NULL,
	remedy_region text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvideosub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	sys text NULL,
	sysactual text NULL,
	team_id text NULL,
	"type" text NULL,
	verified bool NULL
);
CREATE INDEX idx_node_id_hub_id_cmts_id ON charterentity.node USING btree (id, hub_id, cmts_id);


-- charterentity.olt definition

-- Drop table

-- DROP TABLE charterentity.olt;

CREATE TABLE charterentity.olt (
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	hub_id text NULL,
	hwversion text NULL,
	id text NULL,
	ip text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastpoll text NULL,
	make text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	poller text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	sysdescr text NULL,
	sysloc text NULL,
	"type" text NULL
);


-- charterentity.onu definition

-- Drop table

-- DROP TABLE charterentity.onu;

CREATE TABLE charterentity.onu (
	account_id text NULL,
	account_name text NULL,
	addressable bool NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	bootversion text NULL,
	cpe_id text NULL,
	custowned bool NULL,
	division_id text NULL,
	division_name text NULL,
	docsis_version text NULL,
	enabled numeric NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	ethernetspeed numeric NULL,
	hub_id text NULL,
	hub_name text NULL,
	hwversion text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastpoll text NULL,
	lastseen text NULL,
	mac text NULL,
	macdomain_id text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	oam text NULL,
	offlinereport_date text NULL,
	offlinereport_duration numeric NULL,
	olt_id text NULL,
	olt_name text NULL,
	poller text NULL,
	port text NULL,
	primarydownstream text NULL,
	primaryupstream text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	status numeric NULL,
	statuslastchange numeric NULL,
	swversion text NULL,
	sys text NULL,
	sysactual text NULL,
	sysdescr text NULL,
	"type" text NULL,
	uptime text NULL
);
CREATE INDEX idx_onu_account_name ON charterentity.onu USING btree (account_name, id);


-- charterentity.onu_backup definition

-- Drop table

-- DROP TABLE charterentity.onu_backup;

CREATE TABLE charterentity.onu_backup (
	account_id text NULL,
	account_name text NULL,
	addressable bool NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	bootversion text NULL,
	cpe_id text NULL,
	custowned bool NULL,
	division_id text NULL,
	division_name text NULL,
	docsis_version text NULL,
	enabled numeric NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	ethernetspeed numeric NULL,
	hub_id text NULL,
	hub_name text NULL,
	hwversion text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	ip text NULL,
	ipv4 text NULL,
	ipv6 text NULL,
	"key" text NULL,
	keyattr text NULL,
	lastpoll text NULL,
	lastseen text NULL,
	mac text NULL,
	macdomain_id text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	oam text NULL,
	offlinereport_date text NULL,
	offlinereport_duration numeric NULL,
	olt_id text NULL,
	olt_name text NULL,
	poller text NULL,
	port text NULL,
	primarydownstream text NULL,
	primaryupstream text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	status numeric NULL,
	statuslastchange numeric NULL,
	swversion text NULL,
	sys text NULL,
	sysactual text NULL,
	sysdescr text NULL,
	"type" text NULL,
	uptime text NULL
);


-- charterentity.ouimac definition

-- Drop table

-- DROP TABLE charterentity.ouimac;

CREATE TABLE charterentity.ouimac (
	macprefix text NULL,
	vendor text NULL
);


-- charterentity.poller definition

-- Drop table

-- DROP TABLE charterentity.poller;

CREATE TABLE charterentity.poller (
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	fqdn text NULL,
	id text NULL,
	ip text NULL,
	ipv4 text NULL,
	"key" text NULL,
	keyattr text NULL,
	market_id text NULL,
	market_name text NULL,
	"name" text NULL,
	os text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.profile definition

-- Drop table

-- DROP TABLE charterentity.profile;

CREATE TABLE charterentity.profile (
	profile int8 NULL,
	profiletype int8 NULL,
	startidx int8 NULL,
	stopidx int8 NULL,
	division_name text NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	id text NULL,
	interface_id text NULL,
	"key" text NULL,
	keyattr text NULL,
	mgtarea_id text NULL,
	modulation text NULL,
	poller text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.region definition

-- Drop table

-- DROP TABLE charterentity.region;

CREATE TABLE charterentity.region (
	combasicvideosub text NULL,
	comhsdsub text NULL,
	comvideosub text NULL,
	comvoicesub text NULL,
	coordinates_latitude text NULL,
	coordinates_longitude text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	entitytype text NULL,
	geolocation text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	remedy_name text NULL,
	resbasicvideosub text NULL,
	reshsdsub text NULL,
	resvideosub text NULL,
	resvoicesub text NULL,
	"scope" text NULL,
	site_id text NULL,
	"type" text NULL
);


-- charterentity.router definition

-- Drop table

-- DROP TABLE charterentity.router;

CREATE TABLE charterentity.router (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	ip text NULL,
	ipv4 text NULL,
	"key" text NULL,
	keyattr text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	poller text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.rpd definition

-- Drop table

-- DROP TABLE charterentity.rpd;

CREATE TABLE charterentity.rpd (
	adminstatus text NULL,
	alias text NULL,
	cmts_id text NULL,
	descr text NULL,
	division_name text NULL,
	downstreaminterfaceids text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entitytype text NULL,
	hwversion text NULL,
	id text NULL,
	ifindex text NULL,
	"key" text NULL,
	keyattr text NULL,
	mac text NULL,
	macdomain_id text NULL,
	make text NULL,
	mgtarea_id text NULL,
	model text NULL,
	"name" text NULL,
	ofdm_id text NULL,
	ofdma_id text NULL,
	operstatus text NULL,
	poller text NULL,
	"scope" text NULL,
	serial text NULL,
	swversion text NULL,
	"type" text NULL,
	upstreaminterfaceids text NULL
);


-- charterentity.servicegroup definition

-- Drop table

-- DROP TABLE charterentity.servicegroup;

CREATE TABLE charterentity.servicegroup (
	direction text NULL,
	entitytype text NULL,
	id text NULL,
	"index" text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	poller text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.settopbox definition

-- Drop table

-- DROP TABLE charterentity.settopbox;

CREATE TABLE charterentity.settopbox (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	alias text NULL,
	area_id text NULL,
	area_name text NULL,
	bbip text NULL,
	cablemodem_id text NULL,
	cmts_id text NULL,
	controller_id text NULL,
	controller_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	ip text NULL,
	ipv4 text NULL,
	"key" text NULL,
	keyattr text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	poller text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	stbmacaddress text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.site definition

-- Drop table

-- DROP TABLE charterentity.site;

CREATE TABLE charterentity.site (
	enabled int8 NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	"name" text NULL,
	"scope" text NULL,
	"type" text NULL
);


-- charterentity.team definition

-- Drop table

-- DROP TABLE charterentity.team;

CREATE TABLE charterentity.team (
	enabled int8 NULL,
	entitytype text NULL,
	id text NULL,
	"key" text NULL,
	keyattr text NULL,
	manager_id text NULL,
	"scope" text NULL,
	teamcolor text NULL,
	teamname text NULL,
	"type" text NULL
);


-- charterentity.vehicle definition

-- Drop table

-- DROP TABLE charterentity.vehicle;

CREATE TABLE charterentity.vehicle (
	"cityMPG" int8 NULL,
	"currentOdometer" int8 NULL,
	"deltaDistance" int8 NULL,
	"deltaTime" int8 NULL,
	direction int8 NULL,
	"displayState" text NULL,
	"driverName" text NULL,
	"driverNumber" text NULL,
	enabled int8 NULL,
	"engineMinutes" int8 NULL,
	"entityType" text NULL,
	"geoLocation" text NULL,
	"groupID" text NULL,
	"hasNavigationDevice" bool NULL,
	heading text NULL,
	"highwayMPG" int8 NULL,
	id text NULL,
	"idleTime" int8 NULL,
	"isPrivate" bool NULL,
	"key" text NULL,
	"keyAttr" text NULL,
	latitude int8 NULL,
	"locationUpdateUTC" int8 NULL,
	longitude int8 NULL,
	make text NULL,
	model text NULL,
	"name" text NULL,
	"number" text NULL,
	"registrationNumber" text NULL,
	"scope" text NULL,
	"size" int8 NULL,
	speed int8 NULL,
	"statusUpdateUTC" int8 NULL,
	"tankCapacity" int8 NULL,
	"type" text NULL,
	vin text NULL,
	"year" int8 NULL
);


-- charterentity.wirelessextender definition

-- Drop table

-- DROP TABLE charterentity.wirelessextender;

CREATE TABLE charterentity.wirelessextender (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	lob text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);


-- charterentity.wirelessrouter definition

-- Drop table

-- DROP TABLE charterentity.wirelessrouter;

CREATE TABLE charterentity.wirelessrouter (
	account_id text NULL,
	account_name text NULL,
	addressable text NULL,
	area_id text NULL,
	area_name text NULL,
	cpe_id text NULL,
	custowned text NULL,
	division_id text NULL,
	division_name text NULL,
	enabled int8 NULL,
	enterprise_id text NULL,
	enterprise_name text NULL,
	entityname text NULL,
	entitytype text NULL,
	equipmenttype text NULL,
	hub_id text NULL,
	hub_name text NULL,
	id text NULL,
	importcomplete bool NULL,
	installdate text NULL,
	"key" text NULL,
	keyattr text NULL,
	lob text NULL,
	mac text NULL,
	make text NULL,
	market_id text NULL,
	market_name text NULL,
	mgtarea_id text NULL,
	mgtarea_name text NULL,
	model text NULL,
	"name" text NULL,
	node_id text NULL,
	node_name text NULL,
	port text NULL,
	region_id text NULL,
	region_name text NULL,
	"scope" text NULL,
	serial text NULL,
	sys text NULL,
	sysactual text NULL,
	"type" text NULL
);