DROP DATABASE IF EXISTS inmobiliaria;
CREATE DATABASE inmobiliaria;
USE inmobiliaria;
CREATE TABLE inmobiliarias (
    id_inmobiliaria int NOT NULL PRIMARY KEY,
    cif varchar(10) NOT NULL UNIQUE,
    direccion_inmobiliaria varchar(25) NOT NULL,
    telefono_inmobiliaria int NOT NULL
);
CREATE TABLE propietarios (
    id_propietario int NOT NULL PRIMARY KEY,
    nif varchar(10) NOT NULL UNIQUE,
    nombre varchar(25) NOT NULL,
    apellidos varchar(25) NOT NULL,
    telefono_propietario int NOT NULL,
    direccion varchar(25) NOT NULL,
    email varchar(25) NOT NULL
);
CREATE TABLE viviendas (
    id_vivienda int NOT NULL PRIMARY KEY,
    id_inmobiliaria int NOT NULL,
    cif varchar(10) NOT NULL UNIQUE,
    calle varchar(25) NOT NULL,
    numero int NOT NULL,
    piso int NOT NULL,
    cod_postal int NOT NULL,
    poblacion varchar(25) NOT NULL,
    descripcion varchar(25) NOT NULL,
    FOREIGN KEY viviendas(id_inmobiliaria) REFERENCES inmobiliarias(id_inmobiliaria) ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE inquilinos (
    id_inquilino int NOT NULL PRIMARY KEY,
    nif varchar(10) NOT NULL UNIQUE,
    nombre varchar(25) NOT NULL,
    apellidos varchar(25) NOT NULL,
    telefono_propietario int NOT NULL,
    f_nac DATE NOT NULL
);
CREATE TABLE alquileres (
    id_alquiler int NOT NULL PRIMARY KEY,
    id_vivienda int NOT NULL,
    id_inquilino int NOT NULL,
    f_inicio DATE NOT NULL,
    f_fin DATE NOT NULL,
    importe float NOT NULL,
    fianza float NOT NULL,
    f_firma DATE NOT NULL,
    renovacion bit NOT NULL,
    CONSTRAINT FK_alquileres_id_vivienda 
    FOREIGN KEY alquileres(id_vivienda) 
    REFERENCES viviendas(id_vivienda) 
    ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FK_alquileres_id_inquilino 
    FOREIGN KEY alquileres(id_inquilino) 
    REFERENCES inquilinos(id_inquilino) 
    ON DELETE CASCADE ON UPDATE CASCADE
);