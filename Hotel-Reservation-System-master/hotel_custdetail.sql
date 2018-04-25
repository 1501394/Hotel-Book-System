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
-- Table structure for table `custdetail`
--

DROP TABLE IF EXISTS `custdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custdetail` (
  `Cust_id` varchar(20) NOT NULL,
  `Cust_name` varchar(30) NOT NULL,
  `Cust_credential` varchar(40) NOT NULL,
  `Cust_nationality` varchar(45) NOT NULL,
  `Cust_phone` int(20) NOT NULL,
  `Cust_adult` int(11) NOT NULL,
  `Cust_child` int(11) NOT NULL,
  `Cust_bill` int(5) NOT NULL,
  `book_id` int(3) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Cust_id`),
  UNIQUE KEY `Cust_id_UNIQUE` (`Cust_id`),
  UNIQUE KEY `book_id_UNIQUE` (`book_id`),
  KEY `Cust_id_index` (`Cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custdetail`
--

LOCK TABLES `custdetail` WRITE;
/*!40000 ALTER TABLE `custdetail` DISABLE KEYS */;
INSERT INTO `custdetail` VALUES ('312467','LiHang','ID','Finland',4564564,1,0,3000,2),('87654321','LeeLee','passport','UK',99999999,1,2,500,3),('w123456','ChenSihan','passport','China',123456,2,2,4000,1);
/*!40000 ALTER TABLE `custdetail` ENABLE KEYS */;
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
