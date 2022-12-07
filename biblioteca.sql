/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;

CREATE TABLE IF NOT EXISTS `autores` (
  `Id_Autor` int(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Epoca` year(4) NOT NULL,
  `Categoria` varchar(12) NOT NULL,
  PRIMARY KEY (`Id_Autor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` (`Id_Autor`, `Nombre`, `Epoca`, `Categoria`) VALUES
	(1, 'William Naphy', '1960', 'Escritor'),
	(2, 'Addison-Wesley', '1942', 'Editorial'),
	(3, 'F. Scott Fitzgerald', '1996', 'Novelista'),
	(4, 'Miguel Pardo Niebla', '1999', 'Educación'),
	(5, 'Stella Vallejo-Trujillo', '2019', 'Educación'),
	(6, 'Mabel Collins', '1971', 'Novela'),
	(7, 'Joe Hill', '2019', 'Ficción'),
	(8, 'Antonia Romero', '2016', 'Novela'),
	(9, 'Brandon Sanderson', '2016', 'Ficción'),
	(10, 'MarcelMaratayBlancaBlanxart', '2013', 'Novela');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `lector` (
  `id_lector` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Edad` int(3) NOT NULL,
  PRIMARY KEY (`id_lector`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `lector` DISABLE KEYS */;
INSERT INTO `lector` (`id_lector`, `Nombre`, `Edad`) VALUES
	(20231001, 'ELIZABETH TORREZ GIL', 21),
	(20310025, 'ALEJANDRA FERNANDEZ JIMENEZ ', 19),
	(20400288, 'JUAN MANUEL CORIA CORTEZ', 24),
	(20631001, 'CARLOS CORTES GRANADOS RAMIREZ', 20),
	(20631002, 'ROSA SANDOVAL MEJIA', 20),
	(20631456, 'ALFONSO VARGAS BAUTISTA', 20),
	(20680552, 'CARRILLO GALVAN SANDRA PAOLA ', 24),
	(20680662, 'ALEXIS FLORES CAMPOS ', 22),
	(20810091, 'JUAN RODRIGUEZ VARGAS ', 19),
	(20910090, 'JAVIER FLORES CASTILLOS ', 20);
/*!40000 ALTER TABLE `lector` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `libros` (
  `id` int(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Edicion` int(4) DEFAULT NULL,
  `Autor` varchar(30) NOT NULL,
  `Categoria` varchar(12) NOT NULL,
  `Localizacion` varchar(15) NOT NULL,
  `Editorial` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` (`id`, `Nombre`, `Edicion`, `Autor`, `Categoria`, `Localizacion`, `Editorial`) VALUES
	(1, 'Crimenes Sexuales', 2006, 'William Naphy', 'Crimen', 'Zona 10', 'TOMO'),
	(2, 'Programacion basica FOXPRO2.5', 1993, 'Addison-Wesley', 'Programacion', 'Zona 2', 'RA-MA'),
	(3, 'Narrativa', 2018, 'F. Scott Fitzgerald', 'Novela', 'Zona 4', 'MIRLO'),
	(4, 'Windows 98', 1999, 'Miguel Pardo Niebla', 'Programacion', 'Zona 2', 'ANAYA'),
	(5, 'Manuealdeeducacionfinanciera', 2019, 'Stella Vallejo-Trujillo', 'Educacion', 'Zona 5', 'Huella'),
	(6, 'La gema transparente', 1971, 'Mabel Collins', 'Novela', 'Zona 4', 'ORION'),
	(7, 'NOS4A2 (Nosferatu)', 2019, 'Joe Hill', 'Ficcion', 'Zona 6', 'Tauro'),
	(8, 'Los vampiros originales', 2016, 'Antonia Romero', 'Novela', 'Zona 4', 'QP Print'),
	(9, 'AcatrazBibliotecariosMalvados', 2016, 'Brandon Sanderson', 'Ficcion', 'Zona 6', 'QP Print'),
	(10, 'Tocame', 2013, 'MarcelMaratayBlancaBlanxart', ' Novela', 'Zona 4', 'Pulso');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `mobiliario` (
  `Id_mobiliario` int(10) NOT NULL,
  `Zona` int(2) NOT NULL,
  `Tipo` varchar(10) NOT NULL,
  PRIMARY KEY (`Id_mobiliario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `mobiliario` DISABLE KEYS */;
INSERT INTO `mobiliario` (`Id_mobiliario`, `Zona`, `Tipo`) VALUES
	(1, 2, 'Repisa'),
	(2, 3, 'Librero'),
	(3, 4, 'Estante'),
	(4, 5, 'Repisa'),
	(5, 6, 'Librero'),
	(6, 7, 'Estante'),
	(7, 8, 'Repisa'),
	(8, 9, 'Librero'),
	(9, 9, 'Repisa'),
	(10, 4, 'Estante'),
	(11, 9, 'librero'),
	(15, 1, 'Mesa');
/*!40000 ALTER TABLE `mobiliario` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `movimientos` (
  `Id_movimiento` int(10) NOT NULL,
  `Id_libros` int(10) NOT NULL,
  `Id_Lector` int(10) NOT NULL,
  `Id_personal` int(10) NOT NULL,
  PRIMARY KEY (`Id_movimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `movimientos` DISABLE KEYS */;
INSERT INTO `movimientos` (`Id_movimiento`, `Id_libros`, `Id_Lector`, `Id_personal`) VALUES
	(1001, 4, 20810091, 1231001564),
	(1010, 1, 20231001, 1231001564),
	(1110, 2, 20910090, 1231001901),
	(1111, 7, 20680662, 1231002889),
	(2123, 12, 1230120, 20680094),
	(10001, 9, 20631456, 1231001901),
	(10101, 3, 20631002, 1231002889),
	(10111, 5, 20680552, 1231001564),
	(11111, 6, 20680552, 1231001564),
	(110011, 8, 20400288, 1231001901),
	(111011, 10, 20310025, 1231001564);
/*!40000 ALTER TABLE `movimientos` ENABLE KEYS */;

CREATE TABLE IF NOT EXISTS `personal` (
  `id_personal` int(10) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Puesto` varchar(15) NOT NULL,
  `Edad` int(3) NOT NULL,
  PRIMARY KEY (`id_personal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`id_personal`, `Nombre`, `Puesto`, `Edad`) VALUES
	(20680094, 'Santiago Gil', 'Intendente', 20),
	(123100256, 'Alejandra Fernandez', 'Auxiliar', 28),
	(1231001011, 'Yahir', 'Coordinador', 34),
	(1231001564, 'Elizabeth Torres ', 'Empleado', 24),
	(1231001901, 'Alfonso Vargas', 'Empleado', 25),
	(1231002556, 'Rosa Sandoval', 'Auxiliar', 31),
	(1231002581, 'Alex Flores', 'Técnico', 28),
	(1231002889, 'Emily Rodriguez', 'Empleado', 24),
	(1231008970, 'Belén Figueroa', 'Instructor', 33),
	(1231009001, 'Javier Flores', 'Director_área', 26),
	(1231009190, 'Juan Campos', 'Jefe de área', 28);
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;

CREATE TABLE `rol_personal` (
	`Nombre` VARCHAR(30) NOT NULL COLLATE 'latin1_swedish_ci',
	`Puesto` VARCHAR(15) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

CREATE TABLE `tipo_mobiliario` (
	`Id_mobiliario` INT(10) NOT NULL,
	`Tipo` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

CREATE TABLE `transito_movimientos` (
	`Id_lector` INT(10) NOT NULL,
	`Id_personal` INT(10) NOT NULL,
	`Id_libros` INT(10) NOT NULL
) ENGINE=MyISAM;

DROP TABLE IF EXISTS `rol_personal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rol_personal` AS select Nombre, Puesto from personal ;

DROP TABLE IF EXISTS `tipo_mobiliario`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tipo_mobiliario` AS select Id_mobiliario, Tipo from mobiliario ;

DROP TABLE IF EXISTS `transito_movimientos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `transito_movimientos` AS select Id_lector, Id_personal, Id_libros from movimientos ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
