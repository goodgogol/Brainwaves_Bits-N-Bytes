CREATE DATABASE  IF NOT EXISTS `socgen_hack` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `socgen_hack`;
-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: socgen_hack
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
-- Table structure for table `auctions`
--

DROP TABLE IF EXISTS `auctions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctions` (
  `idauctions` int(11) NOT NULL,
  `timeslot` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `bid_1` varchar(45) DEFAULT NULL,
  `bid_2` varchar(45) DEFAULT NULL,
  `bid_3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idauctions`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctions`
--

LOCK TABLES `auctions` WRITE;
/*!40000 ALTER TABLE `auctions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_preference`
--

DROP TABLE IF EXISTS `final_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_preference` (
  `idfinal_preference` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `pref_1` varchar(45) DEFAULT NULL,
  `pref_2` varchar(45) DEFAULT NULL,
  `pref_3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfinal_preference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_preference`
--

LOCK TABLES `final_preference` WRITE;
/*!40000 ALTER TABLE `final_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `final_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `idtransaction` int(11) NOT NULL,
  `cust_id` varchar(45) DEFAULT NULL,
  `vendor_id` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idtransaction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'c01','v01','2014-11-11'),(2,'c01','v01','2014-08-15'),(3,'c01','v02','2014-08-16'),(4,'c01','v04','2014-09-21'),(5,'c02','v03','2014-09-22'),(6,'c02','v03','2014-09-23'),(7,'c02','v04','2014-10-23'),(8,'c02','v01','2014-11-01'),(9,'c03','v02','2014-08-08'),(10,'c03','v02','2014-07-08'),(11,'c03','v01','2014-08-10'),(12,'c03','v04','2014-09-12');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preference`
--

DROP TABLE IF EXISTS `user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preference` (
  `iduser_preference` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `pref_1` varchar(45) DEFAULT NULL,
  `pref_2` varchar(45) DEFAULT NULL,
  `pref_3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser_preference`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preference`
--

LOCK TABLES `user_preference` WRITE;
/*!40000 ALTER TABLE `user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `idvendors` varchar(5) NOT NULL,
  `vendor_name` varchar(45) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idvendors`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES ('v01','xyz','electronics,stationery'),('v02','abc','recharge'),('v03','pqr','travel'),('v04','mno','food'),('v05','def','gifts');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-08 20:17:24
