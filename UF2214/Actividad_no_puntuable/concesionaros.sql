DROP DATABASE IF EXISTS concesionarios;

CREATE DATABASE concesionarios;

USE concesionarios;

CREATE TABLE clientes (
	id int NOT null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) NOT null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50) not null,
    nif varchar(10) not null UNIQUE,
    direccion varchar(100) not null,
    telefono varchar(10)
);

CREATE TABLE vendedor (
	id int NOT null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) NOT null,
    apellido1 varchar(50) not null,
    apellido2 varchar(50) not null,
    nif varchar(10) not null UNIQUE,
    direccion varchar(100) not null,
    telefono varchar(10)
);

CREATE TABLE versiones (
    id int not null AUTO_INCREMENt PRIMARY KEY,
    nombre varchar(25) NOT null,
    combustible varchar(10) not null,
    potencia varchar(10),
    precio decimal(5,2)
);

CREATE TABLE vehiculo (
	id int NOT null AUTO_INCREMENT PRIMARY KEY,
    matricula varchar(8) NOT null UNIQUE,
    id_version int NOT null,
    FOREIGN key vehiculo(id_version) REFERENCES versiones(id) on DELETE RESTRICT on UPDATE RESTRICT

);


CREATE TABLE modelos (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) not null
);

CREATE TABLE versiones_modelos (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    id_version int not null,
    id_modelo int not null,
    FOREIGN key (id_version) REFERENCES versiones(id) on DELETE RESTRICT on UPDATE RESTRICT,
    FOREIGN key (id_modelo) REFERENCES modelos(id) on DELETE RESTRICT on UPDATE RESTRICT
);

CREATE TABLE marcas (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) not null
);

CREATE TABLE marcas_modelos (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    id_marca int not null,
    id_modelo int not null,
    FOREIGN key (id_marca) REFERENCES marcas(id) on DELETE RESTRICT on UPDATE RESTRICT,
    FOREIGN key (id_modelo) REFERENCES modelos(id) on DELETE RESTRICT on UPDATE RESTRICT
);

CREATE TABLE cesiones (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    f_cesion date not null,
    tasacion decimal(5,2) not null,
    id_vehiculo int not null,
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id) ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE extras (
	id int not null AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(50) not null,
    descripcion varchar(100) not null,
    precio decimal(5,2) not null
);

CREATE TABLE ventas (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    f_venta date not null,
    id_vehiculo int not null,
    id_cliente int,
    id_vendedor int,
    FOREIGN key (id_vehiculo) REFERENCES vehiculo(id) on DELETE RESTRICT on UPDATE RESTRICT,
    FOREIGN key (id_cliente) REFERENCES clientes(id) on DELETE RESTRICT on UPDATE RESTRICT,
    FOREIGN key (id_vendedor) REFERENCES vendedor(id) on DELETE RESTRICT on UPDATE RESTRICT

);

CREATE TABLE extras_ventas (
	id int not null AUTO_INCREMENT PRIMARY KEY,
    id_extra int not null,
    id_venta int not null,
    FOREIGN key (id_extra) REFERENCES extras(id) on DELETE RESTRICT on UPDATE RESTRICT,
    FOREIGN key (id_venta) REFERENCES ventas(id) on DELETE RESTRICT on UPDATE RESTRICT
);


