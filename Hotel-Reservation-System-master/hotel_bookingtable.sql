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
-- Table structure for table `bookingtable`
--

DROP TABLE IF EXISTS `bookingtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookingtable` (
  `book_id` int(3) NOT NULL,
  `room_no` varchar(5) NOT NULL,
  `date_fro` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `no_of_day` int(3) NOT NULL,
  `Cust_id` varchar(20) NOT NULL,
  PRIMARY KEY (`book_id`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  UNIQUE KEY `room_no_UNIQUE` (`room_no`),
  KEY `fk_Cust_id` (`Cust_id`),
  CONSTRAINT `fk_Cust_id` FOREIGN KEY (`Cust_id`) REFERENCES `custdetail` (`Cust_id`),
  CONSTRAINT `room_no` FOREIGN KEY (`room_no`) REFERENCES `roomdetail` (`room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingtable`
--

LOCK TABLES `bookingtable` WRITE;
/*!40000 ALTER TABLE `bookingtable` DISABLE KEYS */;
INSERT INTO `bookingtable` VALUES (1,'110','2017-05-13 00:00:00','2017-05-15 00:00:00',2,'w123456'),(2,'112','2017-05-13 00:00:00','2017-05-19 00:00:00',6,'321567'),(3,'111','2017-05-13 00:00:00','2017-05-14 00:00:00',1,'87654321');
/*!40000 ALTER TABLE `bookingtable` ENABLE KEYS */;
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
