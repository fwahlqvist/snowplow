-- AUTO-GENERATED BY schema-ddl DO NOT EDIT
-- Generator: schema-ddl 0.2.0
-- Generated: 2015-12-09 14:36

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.org_openweathermap_weather_1 (
    "schema_vendor"   VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_name"     VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_format"   VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "schema_version"  VARCHAR(128)     ENCODE RUNLENGTH NOT NULL,
    "root_id"         CHAR(36)         ENCODE RAW       NOT NULL,
    "root_tstamp"     TIMESTAMP        ENCODE LZO       NOT NULL,
    "ref_root"        VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "ref_tree"        VARCHAR(1500)    ENCODE RUNLENGTH NOT NULL,
    "ref_parent"      VARCHAR(255)     ENCODE RUNLENGTH NOT NULL,
    "clouds.all"      SMALLINT         ENCODE LZO       NOT NULL,
    "dt"              TIMESTAMP        ENCODE LZO       NOT NULL,
    "main.humidity"   DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "main.pressure"   DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "main.temp"       DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "main.temp_max"   DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "main.temp_min"   DOUBLE PRECISION ENCODE RAW       NOT NULL,
    "main.grnd_level" DOUBLE PRECISION ENCODE RAW,
    "main.sea_level"  DOUBLE PRECISION ENCODE RAW,
    "rain.1h"         DOUBLE PRECISION ENCODE RAW,
    "rain.3h"         DOUBLE PRECISION ENCODE RAW,
    "snow.1h"         DOUBLE PRECISION ENCODE RAW,
    "snow.3h"         DOUBLE PRECISION ENCODE RAW,
    "weather"         VARCHAR(5000)    ENCODE LZO,
    "wind.deg"        DOUBLE PRECISION ENCODE RAW,
    "wind.gust"       DOUBLE PRECISION ENCODE RAW,
    "wind.speed"      DOUBLE PRECISION ENCODE RAW,
    "wind.var_beg"    SMALLINT         ENCODE LZO,
    "wind.var_end"    SMALLINT         ENCODE LZO,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.org_openweathermap_weather_1 IS 'iglu:org.openweathermap/weather/jsonschema/1-0-0';
