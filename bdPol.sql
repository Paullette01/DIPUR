create table personas(
    id number not null,
    identificacion varchar(100) not null,
    correoElectronico varchar(40) not null,
    numTarjeta int not null, 
    rfc varchar2(13) not null,
    tipoIdentificacion varchar2(40) not null
);

alter table personas add (constraint personas_pk primary key(id));

create table usuarios (
       id number not null,
        nombre varchar2(80),
       contrasena varchar2(90),
       superUsuario int not null
);

alter table usuarios  add (constraint usuarios_pk primary key(id));

create table autos(
       id number not null,
       matricula varchar2(100),
       marca varchar2(100),
       modelo varchar2(200),
       observaciones varchar2(400),
       color varchar2(50),
       rentaPorDia number
);


create table prestamos(
       idAuto number not null,
       idCliente number not null,
       fechaRenta varchar2(100),
       finalRenta varchar2(100),
       lugarDeRenta varchar2(100),
       monto number
);

ALTER TABLE autos add (constraint autos_pk primary key (id));


create SEQUENCE AUTOS_SEC START WITH 1 INCREMENT BY 1;


CREATE SEQUENCE PERSONAS_SEC
START WITH 1
INCREMENT BY 1;

	  create SEQUENCE USUARIOS_SEC START WITH 1 INCREMENT BY 1;


