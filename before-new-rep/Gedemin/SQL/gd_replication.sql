
CREATE TABLE RPL_DBSTATE (
       DBSTATE              DSMALLINT,
       REPLICATIONID        DINTKEY,
       ERRORDECISION        DSMALLINT
);


CREATE TABLE RPL_FIELDS (
       RELATIONKEY          DINTKEY NOT NULL,
       FIELDNAME            DFIELDNAME NOT NULL
);


ALTER TABLE RPL_FIELDS
       ADD PRIMARY KEY (RELATIONKEY, FIELDNAME);


CREATE TABLE RPL_KEYS (
       RELATIONKEY          DINTKEY NOT NULL,
       KEYNAME              DFIELDNAME NOT NULL
);


ALTER TABLE RPL_KEYS
       ADD PRIMARY KEY (RELATIONKEY, KEYNAME);


CREATE TABLE RPL_LOG (
       SEQNO                DINTKEY NOT NULL,
       RELATIONKEY          DINTKEY,
       REPLTYPE             dreplicationtype,
       OLDKEY               DREPLIDSET,
       NEWKEY               DREPLIDSET,
       REPLKEY              DINTKEY,
       ACTIONTIME           DTIMESTAMP,
       DBKEY                DINTKEY
);


ALTER TABLE RPL_LOG
       ADD PRIMARY KEY (SEQNO);


CREATE TABLE RPL_LOGHIST (
       SEQNO                DINTKEY NOT NULL,
       DBKEY                DINTKEY NOT NULL,
       REPLKEY              DINTKEY
);


ALTER TABLE RPL_LOGHIST
       ADD PRIMARY KEY (SEQNO, DBKEY);


CREATE TABLE RPL_MANUAL (
       SEQNO                DINTKEY NOT NULL,
       RELATIONKEY          DINTKEY,
       REPLTYPE             DINTKEY,
       OLDKEY               DREPLIDSET,
       NEWKEY               DREPLIDSET,
       REPLKEY              DINTKEY,
       ERRORCODE            INTEGER,
       ERRORDESCRIPTION     DTEXT255
);


ALTER TABLE RPL_MANUAL
       ADD PRIMARY KEY (SEQNO);


CREATE TABLE RPL_RELATIONS (
       ID                   DINTKEY NOT NULL,
       RELATION             DTABLENAME
);


ALTER TABLE RPL_RELATIONS
       ADD PRIMARY KEY (ID);


CREATE TABLE RPL_REPLICATIONDB (
       DBKEY                DINTKEY NOT NULL,
       DBSTATE              DSMALLINT,
       PRIORITY             DSMALLINT
);


ALTER TABLE RPL_REPLICATIONDB
       ADD PRIMARY KEY (DBKEY);


ALTER TABLE RPL_FIELDS
       ADD FOREIGN KEY (RELATIONKEY)
                             REFERENCES RPL_RELATIONS;


ALTER TABLE RPL_KEYS
       ADD FOREIGN KEY (RELATIONKEY)
                             REFERENCES RPL_RELATIONS;


ALTER TABLE RPL_LOG
       ADD FOREIGN KEY (RELATIONKEY)
                             REFERENCES RPL_RELATIONS;


ALTER TABLE RPL_LOGHIST
       ADD FOREIGN KEY (DBKEY)
                             REFERENCES RPL_REPLICATIONDB;


ALTER TABLE RPL_LOGHIST
       ADD FOREIGN KEY (SEQNO)
                             REFERENCES RPL_LOG;


ALTER TABLE RPL_MANUAL
       ADD FOREIGN KEY (RELATIONKEY)
                             REFERENCES RPL_RELATIONS;



