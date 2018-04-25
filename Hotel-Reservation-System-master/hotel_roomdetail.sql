CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.7.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roomdetail`
--

DROP TABLE IF EXISTS `roomdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roomdetail` (
  `room_no` varchar(5) NOT NULL,
  `room_type` varchar(20) NOT NULL,
  `room_rate` int(10) NOT NULL,
  `room_bed` varchar(20) NOT NULL,
  PRIMARY KEY (`room_no`),
  UNIQUE KEY `room_no_UNIQUE` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomdetail`
--

LOCK TABLES `roomdetail` WRITE;
/*!40000 ALTER TABLE `roomdetail` DISABLE KEYS */;
INSERT INTO `roomdetail` VALUES ('110','luxury',2000,'largest double'),('111','standard',500,'double'),('112','standard',500,'single'),('113','superior',1234,'single'),('114','deluxe',5234,'3 double'),('115','couple',777,'big round');
/*!40000 ALTER TABLE `roomdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-13 22:03:34
