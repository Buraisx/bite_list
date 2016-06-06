CREATE DATABASE  IF NOT EXISTS `night_foodie` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `night_foodie`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: night_foodie
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `discount_menu`
--

DROP TABLE IF EXISTS `discount_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_menu` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `res_id` int(10) unsigned NOT NULL,
  `item_code` varchar(36) DEFAULT NULL,
  `item_name` varchar(64) NOT NULL,
  `orig_price` decimal(16,2) NOT NULL,
  `discount_price` decimal(16,2) NOT NULL,
  `promotion_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `promotion_end` timestamp NULL DEFAULT NULL,
  `item_desc` text,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`),
  KEY `res_id_INDEX` (`res_id`),
  CONSTRAINT `res_id_FK` FOREIGN KEY (`res_id`) REFERENCES `restaurant_info` (`res_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_menu`
--

LOCK TABLES `discount_menu` WRITE;
/*!40000 ALTER TABLE `discount_menu` DISABLE KEYS */;
INSERT INTO `discount_menu` VALUES (1,1,'BZ-001','The Burger',10.00,8.00,'2016-06-06 04:00:06',NULL,'The Burger is a classic at Benjamin\'s Burgers'),(2,1,'BZ-002','The Salad',5.00,2.00,'2016-06-06 04:00:00','2016-07-06 04:00:00',NULL),(3,1,'BZ-003','King Fries',7.00,5.00,'2016-06-06 04:00:06',NULL,'King Fries is a dish for only the most noble.');
/*!40000 ALTER TABLE `discount_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-06  0:01:37
