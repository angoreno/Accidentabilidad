-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2020-06-26 08:35:35 CLT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE asesoria (
    id                   INTEGER NOT NULL,
    asesoria             VARCHAR2(100 CHAR) NOT NULL,
    motivo               VARCHAR2(300 CHAR) NOT NULL,
    profesional_usuario  VARCHAR2(20 CHAR) NOT NULL,
    cliente_usuario      VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE asesoria ADD CONSTRAINT asesoria_pk PRIMARY KEY ( id );

CREATE TABLE cargo (
    id           INTEGER NOT NULL,
    "nombre "    VARCHAR2(100 CHAR) NOT NULL,
    descripcion  VARCHAR2(200 CHAR) NOT NULL
);

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( id );

CREATE TABLE checklist (
    id                   INTEGER NOT NULL,
    nombre               VARCHAR2(100 CHAR) NOT NULL,
    descripcion          VARCHAR2(200 CHAR) NOT NULL,
    profesional_usuario  VARCHAR2(20 CHAR) NOT NULL,
    cliente_usuario      VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE checklist ADD CONSTRAINT checklist_pk PRIMARY KEY ( id );

CREATE TABLE cliente (
    usuario   VARCHAR2(100 CHAR) NOT NULL,
    pass      INTEGER NOT NULL,
    nombre    VARCHAR2(100 CHAR) NOT NULL,
    cargo_id  INTEGER NOT NULL
);

ALTER TABLE cliente ADD CONSTRAINT cliente_pk PRIMARY KEY ( usuario );

CREATE TABLE detchecklist (
    id            INTEGER NOT NULL,
    "check"       VARCHAR2(100 CHAR) NOT NULL,
    descripcion   VARCHAR2(200 CHAR) NOT NULL,
    checklist_id  INTEGER NOT NULL
);

ALTER TABLE detchecklist ADD CONSTRAINT detchecklist_pk PRIMARY KEY ( id );

CREATE TABLE mejora (
    id                   INTEGER NOT NULL,
    mejora               VARCHAR2(100 CHAR) NOT NULL,
    descripcion          VARCHAR2(200 CHAR) NOT NULL,
    profesional_usuario  VARCHAR2(20 CHAR) NOT NULL,
    cliente_usuario      VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE mejora ADD CONSTRAINT mejora_pk PRIMARY KEY ( id );

CREATE TABLE profesional (
    usuario      VARCHAR2(20 CHAR) NOT NULL,
    pass         VARCHAR2(30 CHAR) NOT NULL,
    nombre       VARCHAR2(150 CHAR) NOT NULL,
    descripcion  VARCHAR2(200 CHAR) NOT NULL,
    cargo_id     INTEGER NOT NULL
);

ALTER TABLE profesional ADD CONSTRAINT usuario_pk PRIMARY KEY ( usuario );

CREATE TABLE repaccidentes (
    id               INTEGER NOT NULL,
    accidente        VARCHAR2(100 CHAR) NOT NULL,
    trabajador       VARCHAR2(100 CHAR) NOT NULL,
    fecha            DATE NOT NULL,
    cliente_usuario  VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE repaccidentes ADD CONSTRAINT repaccidentes_pk PRIMARY KEY ( id );

CREATE TABLE solasesoria (
    id               INTEGER NOT NULL,
    motivo           VARCHAR2(150 CHAR) NOT NULL,
    fecha            VARCHAR2(10 CHAR) NOT NULL,
    detalle          VARCHAR2(300 CHAR) NOT NULL,
    cliente_usuario  VARCHAR2(100 CHAR) NOT NULL
);

ALTER TABLE solasesoria ADD CONSTRAINT solasesoria_pk PRIMARY KEY ( id );

ALTER TABLE asesoria
    ADD CONSTRAINT asesoria_cliente_fk FOREIGN KEY ( cliente_usuario )
        REFERENCES cliente ( usuario );

ALTER TABLE asesoria
    ADD CONSTRAINT asesoria_profesional_fk FOREIGN KEY ( profesional_usuario )
        REFERENCES profesional ( usuario );

ALTER TABLE checklist
    ADD CONSTRAINT checklist_cliente_fk FOREIGN KEY ( cliente_usuario )
        REFERENCES cliente ( usuario );

ALTER TABLE checklist
    ADD CONSTRAINT checklist_profesional_fk FOREIGN KEY ( profesional_usuario )
        REFERENCES profesional ( usuario );

ALTER TABLE cliente
    ADD CONSTRAINT cliente_cargo_fk FOREIGN KEY ( cargo_id )
        REFERENCES cargo ( id );

ALTER TABLE detchecklist
    ADD CONSTRAINT detchecklist_checklist_fk FOREIGN KEY ( checklist_id )
        REFERENCES checklist ( id );

ALTER TABLE mejora
    ADD CONSTRAINT mejora_cliente_fk FOREIGN KEY ( cliente_usuario )
        REFERENCES cliente ( usuario );

ALTER TABLE mejora
    ADD CONSTRAINT mejora_profesional_fk FOREIGN KEY ( profesional_usuario )
        REFERENCES profesional ( usuario );

ALTER TABLE repaccidentes
    ADD CONSTRAINT repaccidentes_cliente_fk FOREIGN KEY ( cliente_usuario )
        REFERENCES cliente ( usuario );

ALTER TABLE solasesoria
    ADD CONSTRAINT solasesoria_cliente_fk FOREIGN KEY ( cliente_usuario )
        REFERENCES cliente ( usuario );

ALTER TABLE profesional
    ADD CONSTRAINT usuario_cargo_fk FOREIGN KEY ( cargo_id )
        REFERENCES cargo ( id );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             9
-- CREATE INDEX                             0
-- ALTER TABLE                             20
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
