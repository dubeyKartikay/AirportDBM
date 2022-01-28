-- MySQL dump 10.17  Distrib 10.3.24-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: AirportDataBase
-- ------------------------------------------------------
-- Server version	10.3.24-MariaDB-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Flightlogs20201103`
--

DROP TABLE IF EXISTS `Flightlogs20201103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flightlogs20201103` (
  `AircraftID` varchar(20) NOT NULL,
  `AircraftName` varchar(20) DEFAULT NULL,
  `Capacity` varchar(20) DEFAULT NULL,
  `DeptFrom` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `DeptTime` time DEFAULT NULL,
  `ArrivalTime` time DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `AirlinePartner` varchar(20) DEFAULT NULL,
  `FirstClassFare` decimal(10,2) DEFAULT NULL,
  `BussinessFare` decimal(10,2) DEFAULT NULL,
  `EconomyFare` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`AircraftID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flightlogs20201103`
--

LOCK TABLES `Flightlogs20201103` WRITE;
/*!40000 ALTER TABLE `Flightlogs20201103` DISABLE KEYS */;
INSERT INTO `Flightlogs20201103` VALUES ('1015A320','AirBus A320','170','Gurgaon','Nepal','16:30:00','00:00:00','2020-11-03','Indigo Airlines',16500.00,13200.00,9900.00),('1037787','Boeing 787','250','Gurgaon','Kolkata','06:00:00','10:00:00','2020-11-03','Quatar Airways',4000.00,3200.00,2400.00),('1352737','Boeing 737 NG:','150','Bihar','Gurgaon','08:00:00','04:30:00','2020-11-03','British Airways',3500.00,2800.00,2100.00),('1637747','Boeing 747','400','Gurgaon','Bihar','18:30:00','03:30:00','2020-11-03','British Airways',15000.00,12000.00,9000.00),('2012787','Boeing 787','250','Chennai','Gurgaon','08:30:00','15:30:00','2020-11-03','British Airways',7000.00,5600.00,4200.00),('2164A350','Airbus A350','300','Madurai','Gurgaon','20:00:00','05:30:00','2020-11-03','British Airways',14500.00,11600.00,8700.00),('2171747','Boeing 747','400','Kanpur','Gurgaon','12:00:00','02:00:00','2020-11-03','Air India',10000.00,8000.00,6000.00),('2287787','Boeing 787','250','Gurgaon','Pudducherri','09:00:00','12:30:00','2020-11-03','Quatar Airways',3500.00,2800.00,2100.00),('2625A350','Airbus A350','300','Chennai','Gurgaon','15:30:00','06:30:00','2020-11-03','British Airways',9000.00,7200.00,5400.00),('2758747','Boeing 747','400','Madurai','Gurgaon','21:30:00','17:00:00','2020-11-03','Indigo Airlines',4500.00,3600.00,2700.00),('3021787','Boeing 787','250','Nepal','Gurgaon','22:00:00','14:30:00','2020-11-03','Quatar Airways',7500.00,6000.00,4500.00),('3045747','Boeing 747','400','Gurgaon','Kolkata','22:00:00','10:00:00','2020-11-03','British Airways',12000.00,9600.00,7200.00),('3068A350','Airbus A350','300','Gurgaon','Bihar','19:00:00','13:30:00','2020-11-03','Virgin Atlantic',5500.00,4400.00,3300.00),('3271A320','AirBus A320','170','Gurgaon','Kashmir','03:30:00','22:00:00','2020-11-03','Virgin Atlantic',18500.00,14800.00,11100.00),('3516787','Boeing 787','250','Gorakhpur','Gurgaon','16:30:00','13:30:00','2020-11-03','British Airways',3000.00,2400.00,1800.00),('3651737','Boeing 737 NG:','150','Gurgaon','Bihar','13:00:00','00:30:00','2020-11-03','Indigo Airlines',12500.00,10000.00,7500.00),('3809A350','Airbus A350','300','Nepal','Gurgaon','16:00:00','06:30:00','2020-11-03','Quatar Airways',9500.00,7600.00,5700.00),('4022787','Boeing 787','250','Gurgaon','Kashmir','22:00:00','17:30:00','2020-11-03','Indigo Airlines',4500.00,3600.00,2700.00),('4206A350','Airbus A350','300','Gurgaon','Chennai','01:00:00','14:00:00','2020-11-03','Air India',13000.00,10400.00,7800.00),('4346737','Boeing 737 NG:','150','Madurai','Gurgaon','00:00:00','18:30:00','2020-11-03','British Airways',18500.00,14800.00,11100.00),('4637747','Boeing 747','400','Gurgaon','Kashmir','00:30:00','13:30:00','2020-11-03','Air India',13000.00,10400.00,7800.00),('4762787','Boeing 787','250','Bihar','Gurgaon','16:30:00','15:00:00','2020-11-03','British Airways',1500.00,1200.00,900.00),('4818787','Boeing 787','250','Gorakhpur','Gurgaon','19:30:00','08:30:00','2020-11-03','Quatar Airways',11000.00,8800.00,6600.00),('4926A350','Airbus A350','300','Bihar','Gurgaon','02:00:00','13:30:00','2020-11-03','British Airways',11500.00,9200.00,6900.00),('4963737','Boeing 737 NG:','150','Gurgaon','Gorakhpur','14:30:00','18:30:00','2020-11-03','British Airways',4000.00,3200.00,2400.00),('5451737','Boeing 737 NG:','150','Kanpur','Gurgaon','14:30:00','18:30:00','2020-11-03','Quatar Airways',4000.00,3200.00,2400.00),('5495787','Boeing 787','250','Gurgaon','Mumbai','21:00:00','05:30:00','2020-11-03','Virgin Atlantic',15500.00,12400.00,9300.00),('5516787','Boeing 787','250','Pudducherri','Gurgaon','10:30:00','17:00:00','2020-11-03','Quatar Airways',6500.00,5200.00,3900.00),('5604787','Boeing 787','250','Bihar','Gurgaon','10:00:00','16:30:00','2020-11-03','Indigo Airlines',6500.00,5200.00,3900.00),('5651A350','Airbus A350','300','Madurai','Gurgaon','04:00:00','17:00:00','2020-11-03','Quatar Airways',13000.00,10400.00,7800.00),('6630737','Boeing 737 NG:','150','Madurai','Gurgaon','03:30:00','05:00:00','2020-11-03','Indigo Airlines',1500.00,1200.00,900.00),('6642787','Boeing 787','250','Kanpur','Gurgaon','09:00:00','23:30:00','2020-11-03','Virgin Atlantic',14500.00,11600.00,8700.00),('6796747','Boeing 747','400','Madurai','Gurgaon','20:00:00','14:00:00','2020-11-03','British Airways',6000.00,4800.00,3600.00),('6983787','Boeing 787','250','Chennai','Gurgaon','19:30:00','00:30:00','2020-11-03','Air India',19000.00,15200.00,11400.00),('7032747','Boeing 747','400','Gurgaon','Mumbai','22:30:00','12:30:00','2020-11-03','Virgin Atlantic',10000.00,8000.00,6000.00),('7183747','Boeing 747','400','Kashmir','Gurgaon','23:00:00','18:00:00','2020-11-03','Air India',5000.00,4000.00,3000.00),('7610A320','AirBus A320','170','Mumbai','Gurgaon','16:00:00','14:30:00','2020-11-03','Quatar Airways',1500.00,1200.00,900.00),('8234747','Boeing 747','400','Gurgaon','Madurai','18:00:00','11:30:00','2020-11-03','British Airways',6500.00,5200.00,3900.00),('8247737','Boeing 737 NG:','150','Pudducherri','Gurgaon','01:30:00','11:30:00','2020-11-03','British Airways',10000.00,8000.00,6000.00),('8775737','Boeing 737 NG:','150','Gurgaon','Gorakhpur','06:30:00','08:30:00','2020-11-03','Quatar Airways',2000.00,1600.00,1200.00),('8920A320','AirBus A320','170','Gurgaon','Nepal','10:00:00','03:30:00','2020-11-03','British Airways',6500.00,5200.00,3900.00),('9147747','Boeing 747','400','Chennai','Gurgaon','06:30:00','08:00:00','2020-11-03','Quatar Airways',1500.00,1200.00,900.00),('9180747','Boeing 747','400','Kashmir','Gurgaon','01:30:00','19:30:00','2020-11-03','Quatar Airways',18000.00,14400.00,10800.00),('9193A350','Airbus A350','300','Pudducherri','Gurgaon','14:00:00','07:00:00','2020-11-03','British Airways',7000.00,5600.00,4200.00),('9217747','Boeing 747','400','Gurgaon','Kashmir','13:00:00','10:30:00','2020-11-03','Virgin Atlantic',2500.00,2000.00,1500.00),('9817737','Boeing 737 NG:','150','Gurgaon','Chennai','08:30:00','21:00:00','2020-11-03','Air India',12500.00,10000.00,7500.00),('9921A350','Airbus A350','300','Gurgaon','Pudducherri','13:00:00','21:00:00','2020-11-03','British Airways',8000.00,6400.00,4800.00),('9923A350','Airbus A350','300','Bihar','Gurgaon','13:00:00','20:00:00','2020-11-03','British Airways',7000.00,5600.00,4200.00),('9958747','Boeing 747','400','Gurgaon','Kanpur','06:30:00','02:30:00','2020-11-03','Indigo Airlines',4000.00,3200.00,2400.00),('AA320','Airbus A320','150','Gurgaon','Mumbai','06:00:00','12:00:00','2020-11-15','British Airways',6000.00,4800.00,3600.00);
/*!40000 ALTER TABLE `Flightlogs20201103` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PassengerLogs20201103`
--

DROP TABLE IF EXISTS `PassengerLogs20201103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PassengerLogs20201103` (
  `PassenID` varchar(20) NOT NULL,
  `AircraftID` varchar(20) DEFAULT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `BoardingTime` time DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Seat` varchar(5) DEFAULT NULL,
  `TicketPrice` decimal(10,2) DEFAULT NULL,
  `Airline` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `DeptFrom` varchar(20) DEFAULT NULL,
  `FlightName` varchar(20) DEFAULT NULL,
  `ArrivalTime` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`PassenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PassengerLogs20201103`
--

LOCK TABLES `PassengerLogs20201103` WRITE;
/*!40000 ALTER TABLE `PassengerLogs20201103` DISABLE KEYS */;
INSERT INTO `PassengerLogs20201103` VALUES ('79889','1015A320','BussinessClass','16:30:00','Marty Plotkin','1DW',13200.00,'Indigo Airlines','Nepal','Gurgaon','AirBus A320','0:00:00','2020-11-03');
/*!40000 ALTER TABLE `PassengerLogs20201103` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-03 22:40:11
