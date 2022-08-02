-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-08-2022 a las 01:09:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `los_muchachos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nif` varchar(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `direccioon` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `poblacion` varchar(50) NOT NULL,
  `provincia` varchar(50) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes_import`
--

CREATE TABLE `clientes_import` (
  `Id` int(2) DEFAULT NULL,
  `NIF` varchar(12) DEFAULT NULL,
  `Nombre` varchar(29) DEFAULT NULL,
  `Dirección` varchar(39) DEFAULT NULL,
  `CP` int(5) DEFAULT NULL,
  `Población` varchar(10) DEFAULT NULL,
  `Provincia` varchar(22) DEFAULT NULL,
  `Teléfono` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes_import`
--

INSERT INTO `clientes_import` (`Id`, `NIF`, `Nombre`, `Dirección`, `CP`, `Población`, `Provincia`, `Teléfono`) VALUES
(1, '11.120.336-Z', 'Candela Buendía Salinas', 'Avda. Constitución 35', 30200, 'Yecla', 'Murcia', 968682563),
(2, 'B-30.220.330', 'Decomur S.L.', 'P. Ind. Oeste Nave 24', 30250, 'Jumilla', 'Murcia', 968332232),
(3, '25.995.987-Z', 'Julio Pastor Gómez', 'C/ Ramón Gaya, 34', 30360, 'Lorquí', 'Murcia', 968523364),
(4, 'A-25.987-654', 'Construcciones López S.A.', 'P. I. La Capellanía, nave 20', 30600, 'Archena', 'Murcia', 968523698),
(5, 'A-30.253.336', 'Construcciones el Derribo, SA', 'Avda Tito Livio, 32', 30025, 'Murcia', 'Murcia', 968254103),
(6, 'B-40.369.330', 'Reformas Alcázar S.L:', 'Plaza Zocodover, 34', 40098, 'Toledo', 'Toledo', 925336254),
(7, 'B-03.336.367', 'Construcciones Hamman S.L:', 'C/ Julio Romero de Torres, 4oB', 3692, 'Lucena', 'Córdoba', 963253665),
(8, 'B-52.336.691', 'Interiorismo Buonarotti S.L.', 'C/ Poeta Vicente Medina, 55', 52003, 'Villadiego', 'Salamanca', 952369447),
(9, 'A-28.336.210', 'Dorico’s S.A', 'C/ Toledo, Edif. Carlos V, 3oH', 28036, 'Madrid', 'Madrid', 913253669),
(10, 'B-05.336.336', 'Pintura Rafael S.L.', 'C/ Camí de Fondo, Edif.. Neptuno 3º C', 5236, 'Campello', 'Alicante', 965332975),
(11, '13.258.976-Z', 'Miguel Ramírez Candel', 'C/ Carmona, 12', 22036, 'Alora', 'Santa Cruz de Tenerife', 963253665),
(12, 'A-30.256.330', 'Trazos decoradores S.A.', 'Avda Gran Vía Salzillo, 34 Edif. Aurora', 30025, 'Murcia', 'Murcia', 968523665),
(13, 'A-23.253.336', 'Olimpo Interiores S.A:', 'C/ Victoria Soler, 33', 22052, 'Cartama', 'Santa Cruz de Tenerife', 963253002),
(14, 'A-23.363.336', 'Muebles Hidalgo S.A.', 'C/ Rosas, 33', 22036, 'Alora', 'Santa Cruz de Tenerife', 963256360);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_factura_import`
--

CREATE TABLE `detalles_factura_import` (
  `Id` int(1) DEFAULT NULL,
  `Codigo_producto` varchar(5) DEFAULT NULL,
  `Cantidad` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalles_factura_import`
--

INSERT INTO `detalles_factura_import` (`Id`, `Codigo_producto`, `Cantidad`) VALUES
(1, 'PPB-1', 25),
(1, 'PPB-2', 50),
(1, 'PAB-1', 100),
(1, 'PAR-1', 65),
(2, 'PPB-2', 50),
(2, 'PPA-2', 100),
(2, 'PPM-2', 120),
(3, 'PPB-1', 250),
(3, 'PPB-2', 300),
(3, 'PPA-1', 250),
(3, 'PPA-2', 300),
(4, 'PAR-1', 352),
(5, 'PAR-1', 220),
(5, 'PAB-1', 500),
(6, 'PAB-1', 300),
(6, 'PPB-1', 300),
(6, 'PPA-2', 400),
(7, 'PPB-1', 100),
(7, 'PPB-2', 200),
(7, 'PPA-1', 250),
(7, 'PPA-2', 300),
(8, 'PPB-1', 100),
(9, 'PPB-1', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `codigo_producto` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `descuento` decimal(3,2) DEFAULT NULL,
  `iva` decimal(2,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas_import`
--

CREATE TABLE `facturas_import` (
  `Id` int(1) DEFAULT NULL,
  `fecha` varchar(8) DEFAULT NULL,
  `Id _cliente` int(2) DEFAULT NULL,
  `Descuento` int(2) DEFAULT NULL,
  `iva` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas_import`
--

INSERT INTO `facturas_import` (`Id`, `fecha`, `Id _cliente`, `Descuento`, `iva`) VALUES
(1, '10-01-22', 1, 0, 7),
(2, '15-02-22', 5, 5, 7),
(3, '20-02-19', 4, 15, 7),
(4, '12-03-22', 4, 20, 7),
(5, '15-03-19', 10, 0, 7),
(6, '20-03-19', 1, 10, 7),
(7, '25-03-22', 7, 5, 7),
(8, '25-03-22', 5, 5, 7),
(9, '25-03-22', 5, 25, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `codigo` varchar(10) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_import`
--

CREATE TABLE `productos_import` (
  `Código` varchar(5) DEFAULT NULL,
  `Producto` varchar(32) DEFAULT NULL,
  `Precio` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_import`
--

INSERT INTO `productos_import` (`Código`, `Producto`, `Precio`) VALUES
('PPB-1', 'Pintura plástica blanca 1 Kg.', '3,3'),
('PPB-2', 'Pintura plástica blanca 5 Kg.', '6,45'),
('PPB-3', 'Pintura plástica blanca 10 Kg', '11,3'),
('PPA-1', 'Pintura plástica azul 5', '8,65'),
('PPA-2', 'Pintura plástica azul 10 Kg.', '15,4'),
('PPM-1', 'Pintura plástica amarillo 5 Kg.', '10,45'),
('PPM-2', 'Pintura plástica amarillo 10 Kg.', '19,4'),
('PAB-1', 'Pintura acrílica blanca 1 Kg', '8,45'),
('PAR-1', 'Pintura acrílica roja 1 Kg', '15,4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `codigo_producto` (`codigo_producto`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `facturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `productos` (`codigo`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
