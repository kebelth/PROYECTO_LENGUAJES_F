ALTER SESSION SET "_ORACLE_SCRIPT" = true;

SET SERVEROUTPUT ON;

--Creacion de los Tablespaces------------------------------------------------------------------------------------

CREATE TABLESPACE prodatos
    DATAFILE 'E:\DATABASES\PROYECTO\PRO01.DBF' SIZE 500K REUSE
    AUTOEXTEND ON NEXT 500K MAXSIZE 100M;

CREATE TABLESPACE proindices
    DATAFILE 'E:\DATABASES\PROYECTO\PROIND01.DBF' SIZE 500K REUSE
    AUTOEXTEND ON NEXT 500K MAXSIZE 100M;

CREATE TEMPORARY TABLESPACE protemp
    TEMPFILE 'E:\DATABASES\PROYECTO\PROTEMP02.DBF' SIZE 5M
    AUTOEXTEND ON;

CREATE TABLESPACE tbs_provinciass01
    DATAFILE 'E:\DATABASES\PROYECTO\DF_PROVINCIAS01.DBF' SIZE 65M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_provincias01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_PROVINCIAS01_IDX.DBF' SIZE 65M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_cantones
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CANTONES01.DBF' SIZE 65M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_cantones01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CANTONES01_IDX.DBF' SIZE 65M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_distritos
    DATAFILE 'E:\DATABASES\PROYECTO\DF_DISTRITOS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_distritos01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_DISTRITOS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_servicios
    DATAFILE 'E:\DATABASES\PROYECTO\DF_SERVICIOS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_servicios01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_SERVICIOS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_roles
    DATAFILE 'E:\DATABASES\PROYECTO\DF_ROLES01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_roles01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_ROLES01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_turnos
    DATAFILE 'E:\DATABASES\PROYECTO\DF_TURNOS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_turnos01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_TURNOS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_bloque
    DATAFILE 'E:\DATABASES\PROYECTO\DF_BLOQUE01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_bloque01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_BLOQUE01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_t_casas
    DATAFILE 'E:\DATABASES\PROYECTO\DF_TCASA01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_t_casas01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_T_CASAS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_e_visi
    DATAFILE 'E:\DATABASES\PROYECTO\DF_E_VISI01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_e_visi01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_E_VISI01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_personas
    DATAFILE 'E:\DATABASES\PROYECTO\DF_PERSONAS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_personas01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_PERSONAS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_empleados
    DATAFILE 'E:\DATABASES\PROYECTO\DF_EMPLEADOS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_empleados01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_EMPLEADOS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_casas
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CASASS01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_casas01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CASAS01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_visitantes
    DATAFILE 'E:\DATABASES\PROYECTO\DF_VISITANTES01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_visitantes01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_VISITANTES01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_casa_resi
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CASA_RESI01.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );

CREATE TABLESPACE tbs_casa_resi01_idx
    DATAFILE 'E:\DATABASES\PROYECTO\DF_CASA_RESI01_IDX.DBF' SIZE 40M
DEFAULT
    STORAGE ( INITIAL 5M NEXT 8M PCTINCREASE 0 );










/*

roles
turnos
bloques
tipos_casa
estados_visitantes
personas
empleados
casas
visitantes
casa_residentes
*/

--Creacion del USUARIO------------------------------------------------------------------------------------


--CREATE USER KEBELTHADMIN
--   IDENTIFIED BY 12345678
--    DEFAULT TABLESPACE PRODATOS 
--    TEMPORARY TABLESPACE PROTEMP
--    QUOTA 10M ON PRODATOS;


GRANT
    CREATE SESSION
TO kebelthadmin;

GRANT resource TO kebelthadmin;


------------TABLAS-----------------------------------

CREATE TABLE kebelthadmin.provincias (
    id_provincia NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    nombre       VARCHAR2(20) NOT NULL,
    PRIMARY KEY ( id_provincia )
);

CREATE TABLE kebelthadmin.cantones (
    id_canton NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    nombre    VARCHAR2(20) NOT NULL,
    PRIMARY KEY ( id_canton )
);

CREATE TABLE kebelthadmin.distritos (
    id_distrito NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    nombre      VARCHAR2(20) NOT NULL,
    PRIMARY KEY ( id_distrito )
);

CREATE TABLE kebelthadmin.servicios (
    id_servicio NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_servicio )
);

CREATE TABLE kebelthadmin.roles (
    id_rol      NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_rol )
);

CREATE TABLE kebelthadmin.turnos (
    id_turno    NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_turno )
);

CREATE TABLE kebelthadmin.bloques (
    id_bloque   NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    sector      VARCHAR2(5) NOT NULL,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_bloque )
);

CREATE TABLE kebelthadmin.tipos_casa (
    id_tipo     NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    tipo        VARCHAR2(5) NOT NULL,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_tipo )
);

CREATE TABLE kebelthadmin.estados_visitantes (
    id_estado   NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    descripcion VARCHAR2(30) NOT NULL,
    PRIMARY KEY ( id_estado )
);

CREATE TABLE kebelthadmin.personas (
    id_persona     NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    identificacion NUMBER NOT NULL,
    nombre         VARCHAR2(30) NOT NULL,
    apellido_1     VARCHAR2(30) NOT NULL,
    apellido_2     VARCHAR2(30) NOT NULL,
    telefono       NUMBER NOT NULL,
    correo         VARCHAR2(30) NOT NULL,
    id_rol         NUMBER NOT NULL,
    id_provincia   NUMBER NOT NULL,
    id_canton      NUMBER NOT NULL,
    id_distrito    NUMBER NOT NULL,
    senas VARCHAR2(50) NOT NULL,
    PRIMARY KEY ( id_persona ),
    FOREIGN KEY ( id_rol )
        REFERENCES kebelthadmin.roles ( id_rol ),
    FOREIGN KEY ( id_provincia )
        REFERENCES kebelthadmin.provincias ( id_provincia ),
    FOREIGN KEY ( id_canton )
        REFERENCES kebelthadmin.cantones ( id_canton ),
    FOREIGN KEY ( id_distrito )
        REFERENCES kebelthadmin.distritos ( id_distrito )
);

CREATE TABLE kebelthadmin.empleados (
    id_registro NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    id_persona  NUMBER NOT NULL,
    id_rol      NUMBER NOT NULL,
    id_bloque   NUMBER NOT NULL,
    id_turno    NUMBER NOT NULL,
    PRIMARY KEY ( id_registro ),
    FOREIGN KEY ( id_persona )
        REFERENCES kebelthadmin.personas ( id_persona ),
    FOREIGN KEY ( id_rol )
        REFERENCES kebelthadmin.roles ( id_rol ),
    FOREIGN KEY ( id_bloque )
        REFERENCES kebelthadmin.bloques ( id_bloque ),
    FOREIGN KEY ( id_turno )
        REFERENCES kebelthadmin.turnos ( id_turno )
);

CREATE TABLE kebelthadmin.casas (
    id_casa   NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    numero    NUMBER NOT NULL,
    id_dueno  NUMBER NOT NULL,
    id_bloque NUMBER NOT NULL,
    id_tipo   NUMBER NOT NULL,
    PRIMARY KEY ( id_casa ),
    FOREIGN KEY ( id_dueno )
        REFERENCES kebelthadmin.personas ( id_persona ),
    FOREIGN KEY ( id_bloque )
        REFERENCES kebelthadmin.bloques ( id_bloque ),
    FOREIGN KEY ( id_tipo )
        REFERENCES kebelthadmin.tipos_casa ( id_tipo )
);

CREATE TABLE kebelthadmin.visitantes (
    id_visitante    NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    identificacion  NUMBER NOT NULL,
    nombre          VARCHAR2(30) NOT NULL,
    apellido_1      VARCHAR2(30) NOT NULL,
    apellido_2      VARCHAR2(30) NOT NULL,
    tiempo_registro TIMESTAMP NOT NULL,
    id_casa         NUMBER NOT NULL,
    id_estado       NUMBER NOT NULL,
    PRIMARY KEY ( id_visitante ),
    FOREIGN KEY ( id_casa )
        REFERENCES kebelthadmin.casas ( id_casa ),
    FOREIGN KEY ( id_estado )
        REFERENCES kebelthadmin.estados_visitantes ( id_estado )
);

CREATE TABLE kebelthadmin.casas_residentes (
    id_casa      NUMBER NOT NULL,
    id_residente NUMBER NOT NULL,
    PRIMARY KEY ( id_casa,
                  id_residente ),
    FOREIGN KEY ( id_casa )
        REFERENCES kebelthadmin.casas ( id_casa ),
    FOREIGN KEY ( id_residente )
        REFERENCES kebelthadmin.personas ( id_persona )
);

CREATE TABLE kebelthadmin.registro_servicios (
    id_registro     NUMBER
        GENERATED BY DEFAULT ON NULL AS IDENTITY,
    nombre          VARCHAR2(30) NOT NULL,
    placa           VARCHAR2(10) NOT NULL,
    tiempo_registro TIMESTAMP NOT NULL,
    id_casa         NUMBER NOT NULL,
    id_servicio     NUMBER NOT NULL,
    PRIMARY KEY ( id_registro ),
    FOREIGN KEY ( id_casa )
        REFERENCES kebelthadmin.casas ( id_casa ),
    FOREIGN KEY ( id_servicio )
        REFERENCES kebelthadmin.servicios ( id_servicio )
);



-------------------------------------------------------------
 


--Funciones------------------------------------------------------------------------------------





--Procedimientos almacenados------------------------------------------------------------------------------------

-- (Casas) Procedimiento para listar todas las casas
CREATE OR REPLACE PROCEDURE listartodascasas (
    pcasas OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pcasas FOR SELECT
                        id_casa,
                        numero,
                        bloques.sector,
                        tipos_casa.tipo
                    FROM
                             kebelthadmin.casas
                        INNER JOIN kebelthadmin.bloques ON bloques.id_bloque = casas.id_bloque
                        INNER JOIN tipos_casa ON tipos_casa.id_tipo = casas.id_tipo;

END;


-- (Residentes) Procedimiento para listar todos los residentes
CREATE OR REPLACE PROCEDURE listarresidentes (
    presidentes OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN presidentes FOR SELECT
                             id_residente,
                             identificacion,
                             nombre,
                             apellido_1,
                             apellido_2,
                             numero,
                             descripcion
                         FROM
                                  kebelthadmin.casas_residentes
                             INNER JOIN kebelthadmin.personas ON casas_residentes.id_residente = personas.id_persona
                             INNER JOIN kebelthadmin.casas ON casas.id_casa = casas_residentes.id_casa
                             INNER JOIN kebelthadmin.roles ON personas.id_rol = roles.id_rol;

END;

-- (Residentes/Personas) Procedimiento para listar un residente/usuario
CREATE OR REPLACE PROCEDURE listarresidente (
    pid_persona IN NUMBER,
    presidente  OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN presidente FOR SELECT
                                                id_residente,
                                                identificacion,
                                                nombre,
                                                apellido_1,
                                                apellido_2,
                                                numero,
                                                descripcion AS "rol"
                                            FROM
                                                     kebelthadmin.casas_residentes
                                                INNER JOIN kebelthadmin.personas ON casas_residentes.id_residente = personas.id_persona
                                                INNER JOIN kebelthadmin.casas ON casas.id_casa = casas_residentes.id_casa
                                                INNER JOIN kebelthadmin.roles ON personas.id_rol = roles.id_rol
                        WHERE
                            pid_persona = id_residente;

END;

-- (Residentes/Personas) Procedimiento para registrar un nuevo residente
CREATE OR REPLACE PROCEDURE registrarresidente (
    pidentificacion IN NUMBER,
    pnombre         IN VARCHAR2,
    papellido_1     IN VARCHAR2,
    papellido_2     IN VARCHAR2,
    ptelefono       IN NUMBER,
    pcorreo         IN VARCHAR2,
    pnumcasa        IN NUMBER
) AS

    vid_casa      NUMBER;
    vid_residente NUMBER;
    vid_rol       NUMBER := 2;
    vid_provincia NUMBER := 1;
    vid_canton    NUMBER := 7;
    vid_distrito  NUMBER := 20;
    vsenas        VARCHAR2(50) := 'Casas del Norte';
BEGIN
    SELECT
        id_casa
    INTO vid_casa
    FROM
        casas
    WHERE
        numero = pnumcasa;

    INSERT INTO personas (
        identificacion,
        nombre,
        apellido_1,
        apellido_2,
        telefono,
        correo,
        id_rol,
        id_provincia,
        id_canton,
        id_distrito,
        senas
    ) VALUES (
        pidentificacion,
        pnombre,
        papellido_1,
        papellido_2,
        ptelefono,
        pcorreo,
        vid_rol,
        vid_provincia,
        vid_canton,
        vid_distrito,
        vsenas
    );

    SELECT
        id_persona
    INTO vid_residente
    FROM
        personas
    WHERE
        identificacion = pidentificacion;

    INSERT INTO casas_residentes (
        id_casa,
        id_residente
    ) VALUES (
        vid_casa,
        vid_residente
    );

END;


-- (Residentes/Personas) Procedimiento para actualizar un residente
CREATE OR REPLACE PROCEDURE actualizarresidente (
    pidpersona      IN NUMBER,
    pidentificacion IN NUMBER,
    pnombre         IN VARCHAR2,
    papellido_1     IN VARCHAR2,
    papellido_2     IN VARCHAR2,
    ptelefono       IN NUMBER,
    pcorreo         IN VARCHAR2
) AS
BEGIN
    UPDATE personas
    SET
        identificacion = pidentificacion,
        nombre = pnombre,
        apellido_1 = papellido_1,
        apellido_2 = papellido_2,
        telefono = ptelefono,
        correo = pcorreo
    WHERE
        id_persona = pidpersona;

END;


-- (Residentes/Personas) Procedimiento para eliminar un residente
CREATE OR REPLACE PROCEDURE eliminarresidente (
    pid_persona IN NUMBER
) AS
BEGIN
    DELETE FROM personas
    WHERE
        id_persona = pid_persona;

END;


-- (Residentes/Casas) Procedimiento para listar todos los residentes por casa
CREATE OR REPLACE PROCEDURE listarresidentesporcasa (
    pidcasa     IN NUMBER,
    presidentes OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN presidentes FOR SELECT
                                                  id_residente,
                                                  identificacion,
                                                  nombre,
                                                  apellido_1,
                                                  apellido_2,
                                                  descripcion
                                              FROM
                                                       kebelthadmin.casas_residentes
                                                  INNER JOIN kebelthadmin.personas ON casas_residentes.id_residente = personas.id_persona
                                                  INNER JOIN kebelthadmin.casas ON casas.id_casa = casas_residentes.id_casa
                                                  INNER JOIN kebelthadmin.roles ON personas.id_rol = roles.id_rol
                         WHERE
                             pidcasa = casas_residentes.id_casa;

END;


-- (Empleados) Procedimiento para listar todos los empleados para usuarios admin
CREATE OR REPLACE PROCEDURE listarempleadosadmin (
    pempleados OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pempleados FOR SELECT
                            id_registro,
                            roles.descripcion  AS "rol",
                            bloques.sector     AS "bloque",
                            turnos.descripcion AS "turno",
                            personas.nombre,
                            apellido_1,
                            apellido_2,
                            telefono,
                            correo,
                            provincias.nombre  AS "provincia",
                            cantones.nombre    AS "canton",
                            distritos.nombre   AS "distrito",
                            senas
                        FROM
                                 kebelthadmin.empleados
                            INNER JOIN kebelthadmin.personas ON personas.id_persona = empleados.id_persona
                            INNER JOIN kebelthadmin.roles ON roles.id_rol = empleados.id_rol
                            INNER JOIN kebelthadmin.bloques ON bloques.id_bloque = empleados.id_bloque
                            INNER JOIN kebelthadmin.turnos ON turnos.id_turno = empleados.id_turno
                            INNER JOIN kebelthadmin.provincias ON provincias.id_provincia = personas.id_provincia
                            INNER JOIN kebelthadmin.cantones ON cantones.id_canton = personas.id_canton
                            INNER JOIN kebelthadmin.distritos ON distritos.id_distrito = personas.id_distrito;

END;


-- (Empleados) Procedimiento para listar los empleados de un bloque especifico para usuario User
CREATE OR REPLACE PROCEDURE listarempleadosbloqueuser (
    pidbloque  IN NUMBER,
    pempleados OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pempleados FOR SELECT
                                                roles.descripcion  AS "rol",
                                                bloques.sector     AS "bloque",
                                                turnos.descripcion AS "turno",
                                                personas.nombre,
                                                apellido_1,
                                                apellido_2
                                            FROM
                                                     kebelthadmin.empleados
                                                INNER JOIN kebelthadmin.personas ON personas.id_persona = empleados.id_persona
                                                INNER JOIN kebelthadmin.roles ON roles.id_rol = empleados.id_rol
                                                INNER JOIN kebelthadmin.bloques ON bloques.id_bloque = empleados.id_bloque
                                                INNER JOIN kebelthadmin.turnos ON turnos.id_turno = empleados.id_turno
                        WHERE
                            empleados.id_bloque = pidbloque;

END;


-- (Empleados/Personas) Procedimiento para registrar un nuevo empleado
CREATE OR REPLACE PROCEDURE registrarempleado (
    pidentificacion IN NUMBER,
    pnombre         IN VARCHAR2,
    papellido_1     IN VARCHAR2,
    papellido_2     IN VARCHAR2,
    ptelefono       IN NUMBER,
    pcorreo         IN VARCHAR2,
    pid_rol         IN NUMBER,
    pid_provincia   IN NUMBER,
    pid_canton      IN NUMBER,
    pid_distrito    IN NUMBER,
    psenas          IN VARCHAR2,
    pid_bloque      IN NUMBER,
    pid_turno       IN NUMBER
) AS
    vidpersona NUMBER;
BEGIN
    INSERT INTO personas (
        identificacion,
        nombre,
        apellido_1,
        apellido_2,
        telefono,
        correo,
        id_rol,
        id_provincia,
        id_canton,
        id_distrito,
        senas
    ) VALUES (
        pidentificacion,
        pnombre,
        papellido_1,
        papellido_2,
        ptelefono,
        pcorreo,
        pid_rol,
        pid_provincia,
        pid_canton,
        pid_distrito,
        psenas
    );

    SELECT
        id_persona
    INTO vidpersona
    FROM
        personas
    WHERE
        identificacion = pidentificacion;

    INSERT INTO empleados (
        id_persona,
        id_rol,
        id_bloque,
        id_turno
    ) VALUES (
        vidpersona,
        pid_rol,
        pid_bloque,
        pid_turno
    );

END;


-- (Empleados/Personas) Procedimiento para actualizar un empleado
CREATE OR REPLACE PROCEDURE actualizarempleado (
    pid_persona     IN NUMBER,
    pidentificacion IN NUMBER,
    pnombre         IN VARCHAR2,
    papellido_1     IN VARCHAR2,
    papellido_2     IN VARCHAR2,
    ptelefono       IN NUMBER,
    pcorreo         IN VARCHAR2,
    pid_rol         IN NUMBER,
    pid_provincia   IN NUMBER,
    pid_canton      IN NUMBER,
    pid_distrito    IN NUMBER,
    psenas          IN VARCHAR2,
    pid_bloque      IN NUMBER,
    pid_turno       IN NUMBER
) AS
BEGIN
    UPDATE personas
    SET
        identificacion = pidentificacion,
        nombre = pnombre,
        apellido_1 = papellido_1,
        apellido_2 = papellido_2,
        telefono = ptelefono,
        correo = pcorreo,
        id_rol = pid_rol,
        id_provincia = pid_provincia,
        id_canton = pid_canton,
        id_distrito = pid_distrito,
        senas = psenas
    WHERE
        id_persona = pid_persona;

    UPDATE empleados
    SET
        id_rol = pid_rol,
        id_bloque = pid_bloque,
        id_turno = pid_turno
    WHERE
        id_persona = pid_persona;

END;


-- (Empleados) Procedimiento para eliminar un empleado
CREATE OR REPLACE PROCEDURE eliminarempleado (
    pid_persona IN NUMBER
) AS
BEGIN
    DELETE FROM empleados
    WHERE
        id_persona = pid_persona;

    DELETE FROM personas
    WHERE
        id_persona = pid_persona;

END;


-- (Visitantes) Procedimiento para listar los visitantes registrados
CREATE OR REPLACE PROCEDURE listartodosvisitantes (
    pvisitantes OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pvisitantes FOR SELECT
                             id_visitante,
                             identificacion,
                             nombre,
                             apellido_1,
                             apellido_2,
                             tiempo_registro,
                             numero,
                             CASE
                                 WHEN estado_registro(tiempo_registro) = 1 THEN
                                     'Activo'
                                 WHEN estado_registro(tiempo_registro) = 0 THEN
                                     'Expirado'
                             END AS "Estado"
                         FROM
                                  kebelthadmin.visitantes
                             INNER JOIN casas ON casas.id_casa = visitantes.id_casa;

END;

-- (Visitantes) Procedimiento para listar los visitantes registrados en una casa particular
CREATE OR REPLACE PROCEDURE listartodosvisitantesporcasa (
    pcasaid     IN NUMBER,
    pvisitantes OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pvisitantes FOR SELECT
                                                  id_visitante,
                                                  identificacion,
                                                  nombre,
                                                  apellido_1,
                                                  apellido_2,
                                                  tiempo_registro,
                                                  CASE
                                                      WHEN estado_registro(tiempo_registro) = 1 THEN
                                                          'Activo'
                                                      WHEN estado_registro(tiempo_registro) = 0 THEN
                                                          'Expirado'
                                                  END AS "Estado"
                                              FROM
                                                  kebelthadmin.visitantes
                         WHERE
                             visitantes.id_casa = pcasaid;

END;

-- (Visitantes) Procedimiento para eliminar un registro de un visitante
CREATE OR REPLACE PROCEDURE eliminarvisitante (
    pid_visitante IN NUMBER,
    presultado    OUT NUMBER
) AS
    vresultado       NUMBER;
    vtiempo_registro TIMESTAMP;
BEGIN
    SELECT
        tiempo_registro
    INTO vtiempo_registro
    FROM
        visitantes
    WHERE
        id_visitante = pid_visitante;

    IF estado_registro(vtiempo_registro) = 1 THEN
        vresultado := 1;
        DELETE FROM visitantes
        WHERE
            id_visitante = pid_visitante;

    ELSE
        vresultado := 0;
    END IF;

END;

-- (Visitantes) Procedimiento para registrar un visitante nuevo
CREATE OR REPLACE PROCEDURE registrarvisitante (
    pidentificacion IN NUMBER,
    pnombre         IN VARCHAR2,
    papellido_1     IN VARCHAR2,
    papellido_2     IN VARCHAR2,
    pid_casa        IN NUMBER
) AS
    vtiempo_registro TIMESTAMP := current_timestamp;
BEGIN
    INSERT INTO visitantes (
        identificacion,
        nombre,
        apellido_1,
        apellido_2,
        tiempo_registro,
        id_casa,
        id_estado
    ) VALUES (
        pidentificacion,
        pnombre,
        papellido_1,
        papellido_2,
        vtiempo_registro,
        pid_casa,
        1
    );

END;


-- (Servicios) Procedimiento para seleccionar todos los servicios registrados
CREATE OR REPLACE PROCEDURE seleccionartodosservicios (
    pservicios OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pservicios FOR SELECT
                            id_registro,
                            nombre,
                            placa,
                            tiempo_registro,
                            numero,
                            descripcion,
                            CASE
                                WHEN estado_registro(tiempo_registro) = 1 THEN
                                    'Activo'
                                WHEN estado_registro(tiempo_registro) = 0 THEN
                                    'Expirado'
                            END AS "Estado"
                        FROM
                                 registro_servicios
                            INNER JOIN casas ON casas.id_casa = registro_servicios.id_casa
                            INNER JOIN servicios ON servicios.id_servicio = registro_servicios.id_servicio;

END;






-- (Servicios) Procedimiento para seleccionar todos los servicios registrados
CREATE OR REPLACE PROCEDURE seleccionartodosservicios (
    pservicios OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pservicios FOR SELECT
                            id_registro,
                            nombre,
                            placa,
                            tiempo_registro,
                            numero,
                            descripcion,
                            CASE
                                WHEN estado_registro(tiempo_registro) = 1 THEN
                                    'Activo'
                                WHEN estado_registro(tiempo_registro) = 0 THEN
                                    'Expirado'
                            END AS "Estado"
                        FROM
                                 registro_servicios
                            INNER JOIN casas ON casas.id_casa = registro_servicios.id_casa
                            INNER JOIN servicios ON servicios.id_servicio = registro_servicios.id_servicio;

END;



-- (Servicios) Procedimiento para llamar todos los servicios registrados de una casa particular
CREATE OR REPLACE PROCEDURE seleccionarserviciosuser (
    pcasaid    IN NUMBER,
    pservicios OUT SYS_REFCURSOR
) AS
BEGIN
    OPEN pservicios FOR SELECT
                                                id_registro,
                                                nombre,
                                                placa,
                                                tiempo_registro,
                                                numero,
                                                descripcion,
                                                CASE
                                                    WHEN estado_registro(tiempo_registro) = 1 THEN
                                                        'Activo'
                                                    WHEN estado_registro(tiempo_registro) = 0 THEN
                                                        'Expirado'
                                                END AS "Estado"
                                            FROM
                                                     registro_servicios
                                                INNER JOIN casas ON casas.id_casa = registro_servicios.id_casa
                                                INNER JOIN servicios ON servicios.id_servicio = registro_servicios.id_servicio
                        WHERE
                            registro_servicios.id_casa = pcasaid;

END;

-- (Servicios) Procedimiento para registrar un nuevo servicio
CREATE OR REPLACE PROCEDURE agregarregistroservicio (
    pnombre      VARCHAR2,
    pplaca       VARCHAR2,
    pid_casa     NUMBER,
    pid_servicio NUMBER
) AS
    ptiempo_registro TIMESTAMP := current_timestamp;
BEGIN
    INSERT INTO registro_servicios (
        nombre,
        placa,
        tiempo_registro,
        id_casa,
        id_servicio
    ) VALUES (
        pnombre,
        pplaca,
        ptiempo_registro,
        pid_casa,
        pid_servicio
    );

END;


-- (Servicios) Procedimiento para eliminar un registro de un servicio de una casa particular
CREATE OR REPLACE PROCEDURE eliminarservicio (
    pid_registro IN NUMBER,
    presultado   OUT NUMBER
) AS
    vresultado       NUMBER;
    vtiempo_registro TIMESTAMP;
BEGIN
    SELECT
        tiempo_registro
    INTO vtiempo_registro
    FROM
        registro_servicios
    WHERE
        id_registro = pid_registro;

    IF estado_registro(vtiempo_registro) = 1 THEN
        vresultado := 1;
        DELETE FROM registro_servicios
        WHERE
            id_registro = pid_registro;

    ELSE
        vresultado := 0;
    END IF;

END;


--Funcion para determinar estado del servicio (Activo o expirado)
CREATE OR REPLACE FUNCTION estado_registro (
    fecha_registro IN TIMESTAMP
) RETURN NUMBER IS
    fecha_actual TIMESTAMP;
    dias         NUMBER;
    horas        NUMBER;
    estado       NUMBER;
BEGIN
    SELECT
        current_timestamp
    INTO fecha_actual
    FROM
        dual;

    SELECT
        EXTRACT(DAY FROM(fecha_actual - fecha_registro))
    INTO dias
    FROM
        dual;

    SELECT
        EXTRACT(HOUR FROM(fecha_actual - fecha_registro))
    INTO horas
    FROM
        dual;

    IF dias >= 1 THEN
        estado := 0;
    ELSE
        IF horas >= 1 THEN
            estado := 0;
        ELSE
            estado := 1;
        END IF;
    END IF;

    RETURN estado;
END;    



