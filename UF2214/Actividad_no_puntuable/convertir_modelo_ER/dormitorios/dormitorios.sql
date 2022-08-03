DROP DATABASE IF EXISTS Dormitorios;

CREATE DATABASE Dormitorios;

USE Dormitorios;

CREATE TABLE clientes(
    id_cliente INT,
    nif_cliente VARCHAR(10) NOT NULL,
    nombre_cliente VARCHAR(50) NOT NULL,
    direccion_cliente VARCHAR(50) NOT NULL,
    telefono_cliente VARCHAR(10),
    CONSTRAINT PK_clientes_id_cliente PRIMARY KEY clientes(id_cliente)
); 

CREATE TABLE dormitorios(
    id_dormitorio INT,
    nombre_dormitorio VARCHAR(50) NOT NULL,
    CONSTRAINT PK_dormitorios_id_dormitorio PRIMARY KEY dormitorios(id_dormitorio)
); 

CREATE TABLE compras(
    id_compra INT,
    fecha_compra DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_dormitorio INT NOT NULL,
    CONSTRAINT PK_compras_id_compras PRIMARY KEY compras(id_compra),
    CONSTRAINT FK_compras_id_cliente FOREIGN KEY compras(id_cliente) REFERENCES clientes(id_cliente) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_compras_id_dormitorio FOREIGN KEY compras(id_dormitorio) REFERENCES dormitorios(id_dormitorio) ON UPDATE CASCADE ON DELETE CASCADE
); 

CREATE TABLE trabajadores(
    id_trabajador INT,
    nif_trabajador VARCHAR(10) NOT NULL,
    nombre_trabajador VARCHAR(50) NOT NULL,
    direccion_trabajador VARCHAR(50) NOT NULL,
    telefono_trabajador VARCHAR(10),
    CONSTRAINT PK_trabajadores_id_trabajador PRIMARY KEY trabajadores(id_trabajador)
); 

CREATE TABLE equipos(
    id_equipo INT,
    cod_equipo VARCHAR(10) NOT NULL,
    CONSTRAINT PK_equipos_id_equipo PRIMARY KEY equipos(id_equipo)
); 

CREATE TABLE equipos_trabajadores(
    id_equipos_trabajadores INT,
    id_equipo INT NOT NULL,
    id_trabajador INT NOT NULL,
    CONSTRAINT PK_equip_trab_id_equipos_trabajadores PRIMARY KEY equipos_trabajadores(id_equipos_trabajadores),
    CONSTRAINT FK_equip_trab_id_equipo FOREIGN KEY equipos_trabajadores(id_equipo) REFERENCES equipos(id_equipo) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_equip_trab_id_trabajador FOREIGN KEY equipos_trabajadores(id_trabajador) REFERENCES trabajadores(id_trabajador) ON UPDATE CASCADE ON DELETE CASCADE
); 

CREATE TABLE montajes(
    id_montaje INT,
    id_equipo INT NOT NULL,
    id_dormitorio INT NOT NULL,
    fecha_montaje DATE NOT NULL,
    CONSTRAINT PK_montajes_id_montaje PRIMARY KEY montajes(id_montaje),
    CONSTRAINT FK_montajes_id_equipo FOREIGN KEY montajes(id_equipo) REFERENCES equipos(id_equipo) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_montajes_id_dormitorio FOREIGN KEY montajes(id_dormitorio) REFERENCES dormitorios(id_dormitorio) ON UPDATE CASCADE ON DELETE CASCADE
);