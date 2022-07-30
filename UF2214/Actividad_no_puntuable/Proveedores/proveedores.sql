DROP DATABASE IF EXISTS proveedores;

CREATE DATABASE proveedores; 

USE proveedores;

CREATE TABLE proveedores(
    id_proveedor INT PRIMARY KEY,
    nombre_proveedor VARCHAR(50) NOT NULL,
    direccion_proveedor VARCHAR(50) NOT NULL,
    ciudad_proveedor VARCHAR(50) NOT NULL,
    provincia_proveedor VARCHAR(50) NOT NULL
); 

CREATE TABLE categorias(
    id_categoria INT PRIMARY KEY,
    nombre_categoria VARCHAR(50)
); 

CREATE TABLE piezas(
    id_pieza INT PRIMARY KEY,
    id_categoria INT,
    nombre_pieza VARCHAR(50) NOT NULL,
    color VARCHAR(50) NOT NULL,
    precio DECIMAL(5, 2) NOT NULL,
    CONSTRAINT FK_piezas_id_categoria FOREIGN KEY piezas(id_categoria) REFERENCES categorías(id_categoria) ON UPDATE CASCADE ON DELETE CASCADE
); 

CREATE TABLE suministros(
    id_suministro INT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    id_pieza INT NOT NULL,
    cantidad INT NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT FK_suministros_id_proveedor FOREIGN KEY suministros(id_proveedor) REFERENCES proveedores(id_proveedor) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_suministros_id_pieza FOREIGN KEY suministros(id_pieza) REFERENCES piezas(id_pieza) ON UPDATE CASCADE ON DELETE CASCADE
);