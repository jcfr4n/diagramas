SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarLibroPorPalabraTitulo` (IN `word` VARCHAR(65))   BEGIN
    SELECT
        *
    FROM
        libro
    WHERE
        Titulo LIKE word ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarPrestamosPorFecha` (IN `dates` DATE)   BEGIN
    SELECT
        l.Titulo Titulo,
        s.NombreCompleto Socio
    FROM
        prestamo p
    JOIN socio s ON
        p.idSocio = s.idSocio
    JOIN libro l ON
        l.idLibro = p.idLibro
    WHERE
        p.FechaPrestamo = dates ;
END$$

DELIMITER ;

CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL,
  `NombreAutor` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `autor` VALUES
(1, 'Fernando López Segura'),
(2, 'Eduardo Cruz Ruiz'),
(3, 'Lilian Valecia Carrillo'),
(4, 'Juan Carlos Segundo Elias'),
(5, 'Jair Cuellar Artega'),
(6, 'Karla Rojas García'),
(7, 'ke ffhg fff');

CREATE TABLE `editorial` (
  `idEditorial` int(11) NOT NULL,
  `NombreEditorial` varchar(30) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `editorial` VALUES
(1, 'Trillas', 'AV. 20 DE NOVIEMBRE #61 Col. Centro', '23456789'),
(2, 'Pearson', 'AV. INDEPENDENCIA #956 COL. PIRAGUA', '56565655'),
(3, 'McGrawHill', 'AV. 5 DE MAYO #67 COL. TUXTEPEC', '32222224'),
(4, 'AlfaOmega', 'BLVD. BENITO JUAREZ #78 COL. TUXTEPEC', '87876887'),
(5, 'Thomsomp', 'ADOLFO LOPEZ MATEOS #12 COL. TUXTEPEC', '12345678'),
(6, 'Libertad', 'AV. MANCILLA ESQ. ALDAMA COL. LAZARO CARDENAS', '98654332');

CREATE TABLE `libro` (
  `idLibro` int(11) NOT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Titulo` varchar(65) DEFAULT NULL,
  `NumeroEjemplares` tinyint(4) DEFAULT NULL,
  `idAutor` int(11) DEFAULT NULL,
  `idEditorial` int(11) DEFAULT NULL,
  `idTema` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `libro` VALUES
(1, '1234567891', 'El Lengu de Prgramación C', 27, 1, 4, 1),
(2, '1357935799', 'Fundamentos de Programación', 12, 1, 6, 1),
(3, '1010345655', 'The Book of Ruby', 9, 1, 5, 1),
(4, '3456789212', 'Programación en C/C++', 25, 1, 3, 1),
(5, '7578799145', 'Introducción a la teoría general de la administración', 45, 6, 2, 4),
(6, '3238845533', 'Administración Moderna', 12, 6, 1, 4),
(7, '5267174899', 'Generación de Modelos de Negocio', 16, 6, 1, 4),
(8, '2456789011', 'Fundamentos de Administración Financiera', 99, 6, 1, 4),
(9, '3454565890', 'Invitación a la Biología', 11, 3, 1, 2),
(10, '2224579900', 'Biología molecular de la célula', 14, 3, 1, 2),
(11, '0988277777', 'Biología: ciencia y naturaleza', 22, 3, 1, 2),
(12, '6372653847', 'Atlas de Biología', 1, 3, 1, 2),
(13, '9823525255', 'Sistemas de Control para Ingeniería', 5, 4, 1, 6),
(14, '2324611234', 'Circuitos Eléctricos', 10, 4, 1, 6),
(15, '7774828288', 'Sismas de Comunicaciones', 7, 4, 1, 6),
(16, '2343454577', 'Química General', 2, 5, 1, 5),
(17, '5568883333', 'Química Orgánica', 3, 5, 1, 5),
(18, '1111166988', 'Principios de Economía', 1, 2, 1, 3),
(19, '0044523255', 'La riqueza de las naciones', 4, 2, 1, 3),
(20, '5767676722', 'Economía y Sociedad', 17, 2, 1, 3),
(21, '3235567986', 'Marketi de Guerra', 1, 2, 1, 3);

CREATE TABLE `prestamo` (
  `idPrestamo` int(11) NOT NULL,
  `FechaPrestamo` date DEFAULT NULL,
  `FechaEntrega` date DEFAULT NULL,
  `idSocio` int(11) DEFAULT NULL,
  `idLibro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `prestamo` VALUES
(1, '2016-11-26', '2017-08-09', 1, 6),
(2, '2016-09-04', '2017-06-10', 4, 4),
(3, '2016-03-24', '2017-04-11', 5, 1),
(4, '2016-06-04', '2017-02-12', 1, 2),
(5, '2016-01-20', '2017-10-25', 3, 3),
(6, '2016-06-10', '2017-11-02', 1, 5),
(7, '2016-04-15', '2017-05-02', 4, 3),
(8, '2016-09-06', '2017-10-07', 5, 19),
(9, '2016-09-02', '2017-07-04', 4, 5),
(10, '2016-01-01', '2017-11-08', 1, 12),
(11, '2016-11-19', '2017-07-09', 1, 15),
(12, '2016-07-23', '2017-07-07', 4, 4),
(13, '2016-05-19', '2017-04-20', 5, 1),
(14, '2016-02-14', '2017-09-24', 1, 7),
(15, '2016-03-12', '2017-10-18', 3, 8),
(16, '2016-07-16', '2017-09-23', 1, 9),
(17, '2016-01-20', '2017-10-21', 4, 10),
(18, '2016-05-26', '2017-03-27', 5, 11),
(19, '2016-05-02', '2017-03-26', 4, 18),
(20, '2016-03-24', '2017-03-10', 1, 20);

CREATE TABLE `socio` (
  `idSocio` int(11) NOT NULL,
  `NombreCompleto` varchar(60) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Correo` varchar(25) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `socio` VALUES
(1, 'Alfredo Hernández Mendoza', 'Dirección 1', 'alfred123@gmail.com', '12345678', 'Foto_1.png'),
(2, 'Juan Alberto Ramírez Sandoval', 'Dirección 2', 'juanal_66@hotmail.com', '91847567', 'Foto_2.png'),
(3, 'Enrique Alberto García Aguado', 'Dirección 3', '', '22885534', 'Foto_3.png'),
(4, 'Esmeralda López Cabrera', 'Dirección 4', 'esme27_p@yahoo.com.mx', '45263489', 'Foto_4.png'),
(5, 'Janeth Soto Cruz', 'Dirección 5', 'janeth11@hotmail.com', '64829164', 'Foto_5.png'),
(6, 'Marco Antonio Pérez Díaz', 'Dirección 6', 'makr@gmail.com', '88335522', 'Foto_6.png');

CREATE TABLE `tema` (
  `idTema` int(11) NOT NULL,
  `NombreTema` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tema` VALUES
(1, 'Programación'),
(2, 'Biología'),
(3, 'Economía / Marketing'),
(4, 'Administración empresas'),
(5, 'Química'),
(6, 'Ingeniería');


ALTER TABLE `autor`
  ADD PRIMARY KEY (`idAutor`);

ALTER TABLE `editorial`
  ADD PRIMARY KEY (`idEditorial`);

ALTER TABLE `libro`
  ADD PRIMARY KEY (`idLibro`),
  ADD KEY `idAutor` (`idAutor`),
  ADD KEY `idEditorial` (`idEditorial`),
  ADD KEY `idTema` (`idTema`);

ALTER TABLE `prestamo`
  ADD PRIMARY KEY (`idPrestamo`),
  ADD KEY `idSocio` (`idSocio`),
  ADD KEY `idLibro` (`idLibro`);

ALTER TABLE `socio`
  ADD PRIMARY KEY (`idSocio`);

ALTER TABLE `tema`
  ADD PRIMARY KEY (`idTema`);


ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`idEditorial`) REFERENCES `editorial` (`idEditorial`),
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`idTema`) REFERENCES `tema` (`idTema`);

ALTER TABLE `prestamo`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`idSocio`) REFERENCES `socio` (`idSocio`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`idLibro`) REFERENCES `libro` (`idLibro`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
