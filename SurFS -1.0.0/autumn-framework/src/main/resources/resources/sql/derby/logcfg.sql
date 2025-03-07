CREATE TABLE "LOGCFG" (
  "LOGNAME" VARCHAR(20) NOT NULL DEFAULT 'SYSTEM',
  "HOST" VARCHAR(30) NOT NULL DEFAULT '',
  "DATEFORMATTER" VARCHAR(20) NOT NULL DEFAULT '[MM-dd HH:mm:ss]',
  "FILTER" VARCHAR(400) DEFAULT NULL,
  "WARNCLASS" VARCHAR(80) DEFAULT NULL,
  "WARNINTERAL" INT DEFAULT 0,
  "LEVEL" SMALLINT DEFAULT 1,
  "ADDLEVEL" SMALLINT DEFAULT 1,
  "ADDCLASSNAME" SMALLINT DEFAULT 1,
  "OUTCONSOLE" SMALLINT DEFAULT 1,
  "SYSLOGHOST" VARCHAR(50) NOT NULL DEFAULT '',
  "SYSLOGFACILITY" VARCHAR(10) NOT NULL DEFAULT '',
  "PARAMS" CLOB,
  PRIMARY KEY ("LOGNAME","HOST")
)