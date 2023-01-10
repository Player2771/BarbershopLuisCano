-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bpmsdb
CREATE DATABASE IF NOT EXISTS `bpmsdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bpmsdb`;

-- Dumping structure for table bpmsdb.tbladmin
CREATE TABLE IF NOT EXISTS `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tbladmin: ~1 rows (approximately)
INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
	(1, 'configuroweb', 'admin', 7898799798, 'barbershop@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-07-25 06:21:50');

-- Dumping structure for table bpmsdb.tblappointment
CREATE TABLE IF NOT EXISTS `tblappointment` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tblappointment: ~8 rows (approximately)
INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
	(8, '496532914', 'Roman Garcia', 'rgarcia@cweb.com', 3211076843, '1/23/2020', '6:30pm', 'Fruit Facial', '2020-01-23 23:50:09', 'Excelente Cliente', '1', '2020-01-23 23:52:03'),
	(9, '304302609', 'Lucia grajales', 'lgrajales@cweb.com', 3065439781, '1/24/2020', '9:00am', 'Fruit Facial', '2020-01-24 13:56:31', 'La srta realizÃ³ el proceso correspondiente.', '1', '2020-01-24 13:57:43'),
	(10, '604686038', 'JUAN ARANGO', 'JARANGO@CWEB.COM', 3147641979, '1/24/2020', '1:00pm', 'Masaje Facial', '2020-01-24 14:54:02', 'Excelente cliente, recomendado', '1', '2020-01-24 14:54:57'),
	(11, '932355891', 'Dilan cabal', 'DCABAL@CWEB.COM', 3178674931, '1/24/2020', '10:30am', 'Masaje Facial', '2020-01-24 15:11:49', 'Se realizÃ³ el pedido a satisfacciÃ³n.', '1', '2020-01-24 15:12:54'),
	(12, '182457009', 'Juan Gallego', 'JGALLEGO@CWEB.COM', 3163798467, '1/24/2020', '1:30am', 'Masaje Facial', '2020-01-24 16:20:12', 'Acepto', '1', '2020-01-24 16:21:20'),
	(13, '958882735', 'Rocio Calam', 'rcalam@cweb.com', 3010123201, '1/24/2020', '10:30pm', 'Layer Haircut', '2020-01-24 16:43:01', 'Se le cobra', '2', '2020-01-24 16:44:55'),
	(14, '715202098', 'pedro', '117@superrito.com', 9994565456, '1/6/2023', '5:00am', 'Masaje Facial', '2023-01-06 09:00:14', 'correcto', '2', '2023-01-06 17:11:33'),
	(15, '312895410', 'juan', '117@tuputamadre', 664565454, '1/8/2023', '1:00pm', 'Masaje Facial', '2023-01-08 04:36:49', 'Muy platicador ', '2', '2023-01-08 04:37:48');

-- Dumping structure for table bpmsdb.tblcustomers
CREATE TABLE IF NOT EXISTS `tblcustomers` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Mujer','Hombre','No definido') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tblcustomers: ~7 rows (approximately)
INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
	(1, 'Juan PÃ©rez', 'jperez@cweb.com', 3144567894613, 'Hombre', 'Taking Hair Spa', '2019-07-26 11:09:10', '2020-01-24 15:08:36'),
	(2, 'Edith Velazco', 'dgarzon@cweb.com', 3014673497814, 'Mujer', 'Taken haircut by him', '2019-07-26 11:10:02', '2020-01-24 15:08:42'),
	(3, 'Daniel Garzon', 'dgarzon@cweb.com', 3126743476978, 'Hombre', 'Buen Cliente', '2019-07-26 11:10:28', '2020-01-24 15:08:50'),
	(4, 'Adrian Narvaez', 'anarvaez@cweb.com', 3149874625789, 'Hombre', 'Taking Body Spa', '2019-08-19 13:38:58', '2020-01-24 15:08:07'),
	(5, 'Norman Palao', 'npalao@cweb.com', 3169463781497, 'Hombre', 'Cliente frecuente,  le gusta los servicios premium tenerlo muy en cuenta', '2019-08-21 16:24:53', '2020-01-24 15:08:58'),
	(6, 'Roberto GalÃ¡n', 'rgalan@cweb.com', 3172232526, 'Hombre', 'Interesante cliente', '2020-01-24 14:56:35', '2020-01-24 18:12:27'),
	(7, 'Humberto Gonzalez', 'hgonzalez@cweb.com', 3179768047, 'Hombre', 'Creado satisfactoriamente', '2020-01-24 17:06:53', '2020-01-24 17:09:40');

-- Dumping structure for table bpmsdb.tblinvoice
CREATE TABLE IF NOT EXISTS `tblinvoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tblinvoice: ~7 rows (approximately)
INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
	(26, 1, 1, 535139230, '2020-01-23 23:55:32'),
	(27, 6, 1, 232733358, '2020-01-24 14:58:47'),
	(28, 4, 10, 635394484, '2020-01-24 16:51:26'),
	(29, 4, 15, 609822877, '2020-01-24 17:02:06'),
	(30, 4, 16, 609822877, '2020-01-24 17:02:06'),
	(31, 1, 1, 251964013, '2023-01-06 17:27:32'),
	(32, 1, 8, 251964013, '2023-01-06 17:27:32');

-- Dumping structure for table bpmsdb.tblpage
CREATE TABLE IF NOT EXISTS `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tblpage: ~2 rows (approximately)
INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
	(1, 'aboutus', 'Acerca de', 'Ubicado en la calle Calle 78A Colonia: centro contamos con el mejor servicios de cortes de cabello ', NULL, NULL, NULL, ''),
	(2, 'contactus', 'Contacto', 'Progreso Yucatán&nbsp;', 'barbershop@gmail.com', 9994714604, NULL, '10:00 am to 6:30 pm');

-- Dumping structure for table bpmsdb.tblservices
CREATE TABLE IF NOT EXISTS `tblservices` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table bpmsdb.tblservices: ~7 rows (approximately)
INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
	(1, 'Masaje Facial', 100, '2019-07-25 11:22:38'),
	(19, 'Corte de barba', 130, '2023-01-08 04:25:02'),
	(20, 'Corte de niño', 50, '2023-01-08 04:25:17'),
	(21, 'Corte de adulto', 100, '2023-01-08 04:26:14'),
	(22, 'Black mask ', 30, '2023-01-08 04:26:35'),
	(23, 'Depliado de ceja', 30, '2023-01-08 04:26:53'),
	(24, '1231232', 0, '2023-01-08 04:45:27');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
