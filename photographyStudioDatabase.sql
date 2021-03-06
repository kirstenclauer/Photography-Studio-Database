-- Generated by Oracle SQL Developer Data Modeler 18.2.0.179.0756
--   at:        2018-10-24 14:30:42 EDT
--   site:      Oracle Database 12c
--   type:      Oracle Database 12c

SET ECHO ON 

CREATE TABLE client (
    clientid                INTEGER NOT NULL,
    clientfirstname         VARCHAR2(15) NOT NULL,
    clientlastname          VARCHAR2(15) NOT NULL,
    clientaddress           VARCHAR2(30),
    clientcity              VARCHAR2(15),
    clienttelephonenumber   INTEGER,
    clientzip               INTEGER,
    clientstate             VARCHAR2(2)
);

ALTER TABLE client ADD CONSTRAINT client_pk PRIMARY KEY ( clientid );

CREATE TABLE contract (
    contractid                INTEGER NOT NULL,
    specialinstructions       VARCHAR2(50),
    inquiry_inquiryformid     INTEGER NOT NULL,
    photographer_employeeid   INTEGER NOT NULL,
    inquiry_client_clientid   INTEGER NOT NULL,
    initialdeposit            NUMBER(8,2),
    eventpayment              NUMBER(8,2),
    presentationpayment       NUMBER(8,2),
    finalpayment              NUMBER(8,2),
    totalestimate             NUMBER(8,2)
);

CREATE UNIQUE INDEX contract__idx ON
    contract (
        inquiry_inquiryformid
    ASC,
        inquiry_client_clientid
    ASC );

ALTER TABLE contract ADD CONSTRAINT contract_pk PRIMARY KEY ( contractid,
                                                              photographer_employeeid );

CREATE TABLE event (
    eventaddress          VARCHAR2(30),
    eventcity             VARCHAR2(10),
    eventzip              INTEGER,
    contract_contractid   INTEGER NOT NULL,
    cost                  NUMBER(8,2),
    servicetype           VARCHAR2(10),
    employeeid            INTEGER NOT NULL
);

CREATE UNIQUE INDEX event__idx ON
    event (
        contract_contractid
    ASC,
        employeeid
    ASC );

ALTER TABLE event ADD CONSTRAINT event_pk PRIMARY KEY ( contract_contractid );

CREATE TABLE inquiry (
    servicetype       VARCHAR2(15),
    inquiryformid     INTEGER NOT NULL,
    client_clientid   INTEGER NOT NULL
);

ALTER TABLE inquiry ADD CONSTRAINT inquiry_pk PRIMARY KEY ( inquiryformid);

CREATE TABLE packageorderform (
    orderformid       INTEGER NOT NULL,
    albumtype         VARCHAR2(10),
    client_clientid   INTEGER NOT NULL,
    packagetype       VARCHAR2(10),
    proofid           INTEGER NOT NULL
);

ALTER TABLE packageorderform ADD CONSTRAINT packageorderform_pk PRIMARY KEY ( orderformid );

CREATE TABLE photographer (
    firstname    VARCHAR2(10),
    lastname     VARCHAR2(10),
    employeeid   INTEGER NOT NULL
);

ALTER TABLE photographer ADD CONSTRAINT photographer_pk PRIMARY KEY ( employeeid );

CREATE TABLE photographerschedule (
    "date"                    DATE,
    photographer_employeeid   INTEGER NOT NULL
);

ALTER TABLE photographerschedule ADD CONSTRAINT photographerschedule_pk PRIMARY KEY ( photographer_employeeid,
                                                                                      "date" );

CREATE TABLE photographertoevents (
    photographer_employeeid   INTEGER NOT NULL,
    event_contractid          INTEGER NOT NULL
);

ALTER TABLE photographertoevents ADD CONSTRAINT photographertoevents_pk PRIMARY KEY ( photographer_employeeid,
                                                                                      event_contractid );

CREATE TABLE proof (
    proofid                        INTEGER NOT NULL,
    prooflength                    INTEGER,
    proofwidth                     INTEGER,
    packageorderform_orderformid   INTEGER NOT NULL,
    filter                         VARCHAR2(10)
);

ALTER TABLE proof ADD CONSTRAINT proof_pk PRIMARY KEY ( proofid );

CREATE TABLE weeklyschedule (
    employeeid                  INTEGER NOT NULL,
    photographerschedule_date   DATE NOT NULL
);

ALTER TABLE weeklyschedule ADD CONSTRAINT weeklyschedule_pk PRIMARY KEY ( employeeid,
                                                                          photographerschedule_date );

ALTER TABLE contract
    ADD CONSTRAINT contract_inquiry_fk FOREIGN KEY ( inquiry_inquiryformid,
                                                     inquiry_client_clientid )
        REFERENCES inquiry ( inquiryformid,
                             client_clientid );

ALTER TABLE contract
    ADD CONSTRAINT contract_photographer_fk FOREIGN KEY ( photographer_employeeid )
        REFERENCES photographer ( employeeid );

ALTER TABLE event
    ADD CONSTRAINT event_contract_fk FOREIGN KEY ( contract_contractid,
                                                   employeeid )
        REFERENCES contract ( contractid,
                              photographer_employeeid );

ALTER TABLE photographertoevents
    ADD CONSTRAINT events_photographer_fk FOREIGN KEY ( photographer_employeeid )
        REFERENCES photographer ( employeeid );

ALTER TABLE inquiry
    ADD CONSTRAINT inquiry_client_fk FOREIGN KEY ( client_clientid )
        REFERENCES client ( clientid );

ALTER TABLE packageorderform
    ADD CONSTRAINT packageorderform_client_fk FOREIGN KEY ( client_clientid )
        REFERENCES client ( clientid );

ALTER TABLE photographerschedule
    ADD CONSTRAINT photographer_fk FOREIGN KEY ( photographer_employeeid )
        REFERENCES photographer ( employeeid );

ALTER TABLE weeklyschedule
    ADD CONSTRAINT photographerschedule_fk FOREIGN KEY ( employeeid,
                                                         photographerschedule_date )
        REFERENCES photographerschedule ( photographer_employeeid,
                                          "date" );

ALTER TABLE photographertoevents
    ADD CONSTRAINT photographertoevents_event_fk FOREIGN KEY ( event_contractid )

    REFERENCES event ( contract_contractid );

ALTER TABLE proof
    ADD CONSTRAINT proof_packageorderform_fk FOREIGN KEY ( packageorderform_orderformid )
        REFERENCES packageorderform ( orderformid );