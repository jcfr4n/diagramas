-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-08-2022 a las 23:56:30
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
-- Base de datos: `tienda`
--
CREATE DATABASE IF NOT EXISTS `tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tienda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `clave_articulo` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `clave_fabricante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`clave_articulo`, `nombre`, `precio`, `clave_fabricante`) VALUES
(1, 'Teclado', 100, 3),
(2, 'Disco duro 300 Gb', 500, 5),
(3, 'Mouse', 80, 3),
(4, 'Memoria USB', 140, 4),
(5, 'Memoria RAM', 290, 1),
(6, 'Disco duro extraible 250 Gb', 650, 5),
(7, 'Memoria USB', 279, 1),
(8, 'DVD Rom', 450, 2),
(9, 'CD Rom', 200, 2),
(10, 'Tarjeta de red', 180, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `clave_fabricante` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`clave_fabricante`, `nombre`) VALUES
(1, 'Kingston'),
(2, 'Adata'),
(3, 'Logitech'),
(4, 'Lexar'),
(5, 'Seagate');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`clave_articulo`),
  ADD KEY `clave_fabricante` (`clave_fabricante`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`clave_fabricante`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`clave_fabricante`) REFERENCES `fabricantes` (`clave_fabricante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
