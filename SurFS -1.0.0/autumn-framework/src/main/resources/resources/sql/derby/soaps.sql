CREATE TABLE "SOAPS" (
  "ID" INT NOT NULL GENERATED BY DEFAULT AS IDENTITY,
  "HOST" VARCHAR(30) NOT NULL DEFAULT '',
  "TITLE" VARCHAR(60) NOT NULL DEFAULT '',
  "SERVICENAME" VARCHAR(30) NOT NULL DEFAULT '',
  "IMPLCLASS" VARCHAR(80) NOT NULL DEFAULT '',
  "CLASSNAME" VARCHAR(80) NOT NULL DEFAULT '',
  "AUTHTYPE" SMALLINT NOT NULL DEFAULT 0,
  "STYLE" VARCHAR(10) NOT NULL DEFAULT 'RPC',
  "USETYPE" VARCHAR(10) NOT NULL DEFAULT 'LITERAL',
  "IPLIST" VARCHAR(100) DEFAULT NULL,
  "INFILTER" VARCHAR(80) DEFAULT NULL,
  "OUTFILTER" VARCHAR(80) DEFAULT NULL,
  "PARAMS" CLOB,
  "AEGIS" CLOB ,
  "LOGNAME" VARCHAR(20) NOT NULL DEFAULT 'system',
  "MEMO" CLOB ,
  "CREATETIME" TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY ("ID")
);
CREATE UNIQUE INDEX SOAPS_IDX ON APP."SOAPS"("HOST","SERVICENAME");
CREATE UNIQUE INDEX SOAPS_TITLE_IDX ON APP."SOAPS"("HOST","TITLE");
CREATE INDEX SOAPS_IMPLCLASS ON APP."SOAPS"("IMPLCLASS");
CREATE INDEX SOAPS_CLASSNAME ON APP."SOAPS"("CLASSNAME");
CREATE INDEX SOAPS_INFILTER ON APP."SOAPS"("INFILTER");
CREATE INDEX SOAPS_OUTFILTER ON APP."SOAPS"("OUTFILTER");
CREATE INDEX SOAPS_AUTHTYPE ON APP."SOAPS"("AUTHTYPE");
CREATE INDEX SOAPS_STYLE ON APP."SOAPS"("STYLE");
CREATE INDEX SOAPS_USETYPE ON APP."SOAPS"("USETYPE");
CREATE INDEX SOAPS_CREATETIME ON APP."SOAPS"("CREATETIME")