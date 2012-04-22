CREATE DATABASE  IF NOT EXISTS `colorswayindia_DB` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `colorswayindia_DB`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: shoppingcart
-- ------------------------------------------------------
-- Server version	5.5.22

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
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_contact` (
  `msg_id` int(11) NOT NULL,
  `msg_desc` text,
  `msg_subject` varchar(45) DEFAULT NULL,
  `msg_email` varchar(99) DEFAULT NULL,
  `msg_cellphone` bigint(20) DEFAULT NULL,
  `msg_name` varchar(45) DEFAULT NULL,
  `msg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_shop_config`
--

DROP TABLE IF EXISTS `tbl_shop_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_shop_config` (
  `sc_name` varchar(50) NOT NULL DEFAULT '',
  `sc_address` varchar(100) NOT NULL DEFAULT '',
  `sc_phone` varchar(30) NOT NULL DEFAULT '',
  `sc_email` varchar(60) NOT NULL DEFAULT '',
  `sc_shipping_cost` decimal(5,2) NOT NULL DEFAULT '0.00',
  `sc_currency` int(10) unsigned NOT NULL DEFAULT '1',
  `sc_order_email` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_shop_config`
--

LOCK TABLES `tbl_shop_config` WRITE;
/*!40000 ALTER TABLE `tbl_shop_config` DISABLE KEYS */;
INSERT INTO `tbl_shop_config` VALUES ('MagicBox Corporation Pvt. Ltd.','Kolkata India','9007077311','dibakardharchoudhury@yahoo.co.in',5.00,4,'y');
/*!40000 ALTER TABLE `tbl_shop_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_currency`
--

DROP TABLE IF EXISTS `tbl_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_currency` (
  `cy_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cy_code` char(3) NOT NULL DEFAULT '',
  `cy_symbol` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`cy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_currency`
--

LOCK TABLES `tbl_currency` WRITE;
/*!40000 ALTER TABLE `tbl_currency` DISABLE KEYS */;
INSERT INTO `tbl_currency` VALUES (1,'EUR','&#8364;'),(2,'GBP','&pound;'),(3,'JPY','&yen;'),(4,'USD','$');
/*!40000 ALTER TABLE `tbl_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `od_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `od_date` datetime DEFAULT NULL,
  `od_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `od_status` enum('New','Paid','Shipped','Completed','Cancelled') NOT NULL DEFAULT 'New',
  `od_memo` varchar(255) NOT NULL DEFAULT '',
  `od_shipping_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_shipping_address1` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_address2` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_phone` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_city` varchar(100) NOT NULL DEFAULT '',
  `od_shipping_state` varchar(32) NOT NULL DEFAULT '',
  `od_shipping_postal_code` varchar(10) NOT NULL DEFAULT '',
  `od_shipping_cost` decimal(5,2) DEFAULT '0.00',
  `od_payment_first_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_last_name` varchar(50) NOT NULL DEFAULT '',
  `od_payment_address1` varchar(100) NOT NULL DEFAULT '',
  `od_payment_address2` varchar(100) NOT NULL DEFAULT '',
  `od_payment_phone` varchar(32) NOT NULL DEFAULT '',
  `od_payment_city` varchar(100) NOT NULL DEFAULT '',
  `od_payment_state` varchar(32) NOT NULL DEFAULT '',
  `od_payment_postal_code` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`od_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1024 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1001,'2012-04-12 23:30:53','2012-04-12 23:30:53','New','','Dibakar','Aaa','aaa','kjkj','jjj','Jjj','jjjjj','560081',5.00,'Dibakar','Aaa','aaa','kjkj','jjj','Jjj','jjjjj','560081'),(1002,'2012-04-12 23:50:05','2012-04-12 23:50:05','New','','Fff','Hhh','h','h','h','H','h','h',5.00,'Fff','Hhh','h','h','h','H','h','h'),(1003,'2012-04-13 00:23:37','2012-04-13 00:23:37','New','','A','K','k','k','k','K','k','k',5.00,'A','K','k','k','k','K','k','k'),(1004,'2012-04-13 01:11:30','2012-04-13 02:26:28','Shipped','','L','L','l','l','l','L','l','l',5.00,'L','L','l','l','l','L','l','l'),(1005,'2012-04-13 01:20:53','2012-04-13 01:20:53','New','','L','L','l','l','l','Lk','l','ll',5.00,'L','L','l','l','l','Lk','l','ll'),(1006,'2012-04-13 01:23:24','2012-04-13 02:25:51','Shipped','','Ll','Hh','l','l','l','L','ll','l',5.00,'Ll','Hh','l','l','l','L','ll','l'),(1007,'2012-04-13 01:25:16','2012-04-13 01:25:16','New','','Kkk','K','k','k','k','K','k','k',5.00,'Kkk','K','k','k','k','K','k','k'),(1008,'2012-04-13 01:27:25','2012-04-13 02:26:15','Shipped','','Ll','L','l','l','l','L','l','l',5.00,'Ll','L','l','l','l','L','l','l'),(1009,'2012-04-13 01:29:32','2012-04-13 01:29:32','New','','Lk','K','k','k','k','K','k','k',5.00,'Lk','K','k','k','k','K','k','k'),(1010,'2012-04-13 01:31:15','2012-04-13 01:31:15','New','','H','H','h','h','h','H','h','h',5.00,'H','H','h','h','h','H','h','h'),(1011,'2012-04-13 01:34:56','2012-04-13 02:26:05','Completed','','U','U','u','u','u','U','u','u',5.00,'U','U','u','u','u','U','u','u'),(1012,'2012-04-13 01:36:25','2012-04-13 01:36:25','New','','P','P','p','p','p','P','p','p',5.00,'P','P','p','p','p','P','p','p'),(1013,'2012-04-13 01:38:44','2012-04-13 02:26:53','Shipped','','U','U','u','u','u','U','u','u',5.00,'U','U','u','u','u','U','u','u'),(1014,'2012-04-13 01:41:39','2012-04-13 01:41:39','New','','P','P','p','p','pp','P','p','p',5.00,'P','P','p','p','pp','P','p','p'),(1015,'2012-04-13 01:46:49','2012-04-13 02:26:38','Shipped','','P','P','p','p','p','P','p','p',5.00,'P','P','p','p','p','P','p','p'),(1016,'2012-04-13 02:37:59','2012-04-13 02:37:59','New','','P','P','p','p','p','P','p','p',5.00,'P','P','p','p','p','P','p','p'),(1017,'2012-04-13 02:41:11','2012-04-13 02:41:11','New','','P','P','p','p','p','P','p','p',5.00,'P','P','p','p','p','P','p','p'),(1018,'2012-04-13 02:42:23','2012-04-13 02:42:23','New','','O','O','o','o','o','O','o','o',5.00,'O','O','o','o','o','O','o','o'),(1019,'2012-04-13 02:43:59','2012-04-13 02:43:59','New','','O','O','o','o','o','O','o','o',5.00,'O','O','o','o','o','O','o','o'),(1020,'2012-04-13 02:45:37','2012-04-13 02:45:37','New','','O','O','o','o','o','O','o','o',5.00,'O','O','o','o','o','O','o','o'),(1021,'2012-04-13 02:46:49','2012-04-16 20:06:28','Shipped','','O','O','o','o','o','O','o','o',5.00,'O','O','o','o','o','O','o','o'),(1022,'2012-04-14 14:16:11','2012-04-14 14:17:13','Paid','','KKk','K','K','K','K','K','K','K',5.00,'KKk','K','K','K','K','K','K','K'),(1023,'2012-04-14 21:20:39','2012-04-14 21:22:41','Shipped','','P','P','p','p','p','P','p','p',5.00,'P','P','p','p','p','P','p','p');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_parent_id` int(11) NOT NULL DEFAULT '0',
  `cat_name` varchar(50) NOT NULL DEFAULT '',
  `cat_description` varchar(200) NOT NULL DEFAULT '',
  `cat_image` varchar(255) NOT NULL DEFAULT '',
  `cat_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`),
  KEY `cat_name` (`cat_name`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (12,0,'Cars','Expensive and luxurious cars','dce08605333d805106217aaab7f93b95.jpg',NULL),(28,19,'Kelly Brooke','Whistles...!!!','72b4ed885373491a12f7559a5fb8991a.jpg',NULL),(14,12,'Volvo','Swedish luxury car','df297efea07815522945c3487c85c6c6.jpg',NULL),(15,12,'BMW','Expensive but real good','16a2ca1ff7d0e537231dfd6b27b14138.jpg',NULL),(27,19,'Elisha Cuthbert','Woooo Hooooooooooo!!!','f13cc2200d36c65fe4eaa52a7d3d65ed.jpg',NULL),(18,12,'Maruti','Indian Brand','377ad0790d0d9eb7dbc5d9daab2fc598.jpg',NULL),(19,0,'Chicks','Babes delivered at your doorstep','9cc47f6c839931d6d311c44cfba6c844.jpg',NULL),(20,12,'Nissan','Japanese masterpiece','885db1bea0d3382473df0b934b14995b.jpg',NULL),(21,12,'Toyota','Japanese beauty','cb7977a314c169d94a2d09d970613447.jpg',NULL),(22,12,'Chevrolet','American brand','f49941176ee0859cdb3ecd2f64649bfe.jpg',NULL),(24,12,'Audi','Expensive..','d292eabb98b142e7e7b7288056aa813a.jpg',NULL),(25,12,'Volkswagen','German brand','3ecab0eaea0abef1e611b486cc408f3f.jpg',NULL),(26,12,'Jaguar','Brand owned by TATA motors','f5a141164deb6bb653f42cbc898abf7a.png',NULL),(29,19,'Kim Kardashian','aahaaaa!!','3e84ea69b3619183eed13bc8619e4699.jpg',NULL),(30,19,'Mila Kunis','Respect..!!!','06fd6c4b8f00411d8162d3a802c38468.jpg',NULL),(31,19,'Angelina Jolie','Envy brad ..','b2e7f03f4feb4d3ad9c77c5cc0325203.jpg',NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order_item`
--

DROP TABLE IF EXISTS `tbl_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order_item` (
  `od_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `od_qty` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`od_id`,`pd_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order_item`
--

LOCK TABLES `tbl_order_item` WRITE;
/*!40000 ALTER TABLE `tbl_order_item` DISABLE KEYS */;
INSERT INTO `tbl_order_item` VALUES (1001,24,2),(1001,22,1),(1002,24,1),(1003,24,1),(1004,24,1),(1005,22,1),(1006,22,3),(1007,22,1),(1008,22,1),(1009,22,1),(1010,22,1),(1011,22,1),(1012,22,1),(1013,22,1),(1014,22,1),(1015,22,1),(1016,24,1),(1017,22,1),(1018,22,1),(1019,22,1),(1020,22,1),(1021,22,1),(1022,35,1),(1022,38,1),(1022,25,1),(1022,40,1),(1022,48,1),(1022,50,2),(1022,56,1),(1023,48,1),(1023,40,5),(1023,53,1),(1023,38,1),(1023,34,1),(1023,25,1);
/*!40000 ALTER TABLE `tbl_order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cart`
--

DROP TABLE IF EXISTS `tbl_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cart` (
  `ct_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pd_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ct_qty` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `ct_session_id` char(32) NOT NULL DEFAULT '',
  `ct_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ct_id`),
  KEY `pd_id` (`pd_id`),
  KEY `ct_session_id` (`ct_session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cart`
--

LOCK TABLES `tbl_cart` WRITE;
/*!40000 ALTER TABLE `tbl_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL DEFAULT '',
  `user_password` varchar(100) NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Address1` text,
  `Address2` text,
  `Email` varchar(99) DEFAULT NULL,
  `Cell` bigint(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Sex` varchar(20) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `PostalCode` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'admin','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','2005-02-20 17:35:44','2012-04-16 20:05:39',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'webmaster','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','2005-03-02 17:52:51','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'moses','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','2012-04-07 20:56:56','2012-04-14 21:23:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audittrail`
--

DROP TABLE IF EXISTS `audittrail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audittrail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL,
  `script` varchar(80) DEFAULT NULL,
  `user` varchar(80) DEFAULT NULL,
  `action` varchar(80) DEFAULT NULL,
  `table` varchar(80) DEFAULT NULL,
  `field` varchar(80) DEFAULT NULL,
  `keyvalue` longtext,
  `oldvalue` longtext,
  `newvalue` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audittrail`
--

LOCK TABLES `audittrail` WRITE;
/*!40000 ALTER TABLE `audittrail` DISABLE KEYS */;
/*!40000 ALTER TABLE `audittrail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offer`
--

DROP TABLE IF EXISTS `tbl_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_offer` (
  `pd_id` int(11) DEFAULT NULL,
  `pd_name` varchar(45) DEFAULT NULL,
  `offer_type` varchar(45) DEFAULT NULL,
  `offer_amount` bigint(20) DEFAULT NULL,
  `offer_validity` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offer`
--

LOCK TABLES `tbl_offer` WRITE;
/*!40000 ALTER TABLE `tbl_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `pd_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pd_name` varchar(100) NOT NULL DEFAULT '',
  `pd_description` text NOT NULL,
  `pd_price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `pd_qty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pd_image` varchar(200) DEFAULT NULL,
  `pd_thumbnail` varchar(200) DEFAULT NULL,
  `pd_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pd_last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pd_active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`pd_id`),
  KEY `cat_id` (`cat_id`),
  KEY `pd_name` (`pd_name`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (22,14,'Volvo Bus','Volvo Bus',99999.90,12,'2bfed40fe3a761c435e43041ed760464.jpg','53fbf0a6c56b1f268919a0281cc985b3.jpg','2012-04-07 20:59:00','0000-00-00 00:00:00',NULL),(29,18,'Kizashi','Suzuki\'s baby',40000.00,20,'0c5483e6ab293b3bc399a1015d50a957.jpg','1f49d0212233dfa13f3863311adeea74.jpg','2012-04-14 13:05:14','0000-00-00 00:00:00',NULL),(24,18,'Swift VDI','Diesel',546000.00,9,'880eb5fcda53dc27a1b391fe16c34fe8.jpg','6114ee639eff0aa867c9700b1f1de5e6.jpg','2012-04-08 14:53:24','0000-00-00 00:00:00',NULL),(25,15,'BMW I','BMW',55000.00,13,'0b1e1c1ea67d038d4d753d352d113a12.jpg','0e6e2330b7c5a895af47236dca715539.jpg','2012-04-14 12:49:04','0000-00-00 00:00:00',NULL),(26,15,'BMW II','BMW II',60000.00,20,'2547d948592c7c7d3ad5b6e87bb51923.jpg','be2c75e970c78e8a187c3f19810c5084.jpg','2012-04-14 12:50:52','0000-00-00 00:00:00',NULL),(27,20,'Nissan I','Japanese Beauty',40000.00,20,'08547e39e965e68b03405010e474207c.jpg','a587ec903de1984118564a69c6a8b811.jpg','2012-04-14 12:53:25','0000-00-00 00:00:00',NULL),(28,20,'Nissan II','Japanese Giant',70000.00,15,'98a875dc4d896713b275fecb35befa14.jpg','689b2ae69521467bc016fac7029070c6.jpg','2012-04-14 12:53:56','0000-00-00 00:00:00',NULL),(30,18,'Alto','Not K10',20000.00,20,'adf30ba8a3c69b11cccf1aa6c2407f4f.jpg','76cb537e98dea08c9413cb2962620f60.jpg','2012-04-14 13:05:52','0000-00-00 00:00:00',NULL),(31,21,'Toyota I','',40000.00,20,'cc43b0af29745d63c7b57ec04b74dde7.jpg','5a9064b35e8c741ac437eb4260693e9c.jpg','2012-04-14 13:06:23','0000-00-00 00:00:00',NULL),(32,21,'Toyota II','',45000.00,15,'35ead9965fb5daba8d089cd702495d96.jpg','a14858b551b3453cc29f2c69feaab792.jpg','2012-04-14 13:06:43','0000-00-00 00:00:00',NULL),(33,22,'Beat','Known as SPARK in rest of the world',35000.00,15,'6363a710a71ac6c2320224dd9a239943.jpg','8a9961ed378dea08d9a951dfae5961d7.jpg','2012-04-14 13:07:19','0000-00-00 00:00:00',NULL),(34,22,'Bumble Bee','',50000.00,13,'cc747cb46254fedbebffb1ca1165e671.jpg','22d6bfb1e2b60e58ff7f19ec6e2ac3dc.jpg','2012-04-14 13:07:43','0000-00-00 00:00:00',NULL),(35,25,'Volkwagen I','Volkswagen',60000.00,24,'3d719731a68b3c6281e31bb160fcf73e.jpg','4934453cc7c1dfbdd0ba97e85082b4a5.jpg','2012-04-14 13:29:59','0000-00-00 00:00:00',NULL),(36,25,'Volkswagen II','Des Auto!!',40000.00,20,'0019dcbd67443c9968ec3725770fd3a5.jpg','441865362cf0709dfda3eaf52928371b.jpg','2012-04-14 13:30:39','0000-00-00 00:00:00',NULL),(37,26,'Jaguar Tata motors','Jaguar XF10',55000.00,25,'9d550289107860642e1e31b6641121f4.jpg','a80aad7ee7b8e3bff49c916743657b56.jpg','2012-04-14 13:31:41','0000-00-00 00:00:00',NULL),(38,26,'Jaguar II','',55000.00,23,'9e1ee0df7be3184b2df4ae4e43d97898.jpg','c4e85bd628c6ee1742f871df29177083.jpg','2012-04-14 13:32:09','0000-00-00 00:00:00',NULL),(39,27,'Elisha Black','Black',46500.00,20,'37508de52516d9be44509eeca48a1d53.jpg','cf1d64f1607ec95947af45868d815f41.jpg','2012-04-14 14:05:24','0000-00-00 00:00:00',NULL),(40,27,'Elisha bikini','Elisha bikini',30999.00,9,'d0a3eb3aaced6d5abf4832f847b35f8c.jpg','1f41e0c141d5ae6aec40d068a8a11947.jpg','2012-04-14 14:05:52','0000-00-00 00:00:00',NULL),(41,27,'Elisha Standing','Elisha Standing',30000.00,10,'6cc3fa58d0b8e1267ffc733c9094950b.jpg','93f06ef169ab57ca03d54a49660fd5bb.jpg','2012-04-14 14:06:24','0000-00-00 00:00:00',NULL),(42,27,'Elisha with the Red hat','Elisha with the Red hat',50000.00,7,'62ffea41eb873d41ff91950f0215f049.jpg','13cc584b4caca64171d64fb75bbbaf25.jpg','2012-04-14 14:06:46','0000-00-00 00:00:00',NULL),(43,27,'Elisha White','Elisha White',40000.00,20,'c0a0340b082cfb624d6d4b4147724808.jpg','527f8543fcbb02c712f3d3ded8bae7c9.jpg','2012-04-14 14:07:03','0000-00-00 00:00:00',NULL),(44,28,'Kelly in Bikini','Kelly in Bikini',20000.00,20,'7ecdea914875d427741c9dd4418df5d6.jpg','a3d75bb005fe8bd1ef93845c2a7405c3.jpg','2012-04-14 14:07:44','0000-00-00 00:00:00',NULL),(45,28,'Kelly in Red','Kelly in Red',30000.00,28,'b57185c3448adae3a819ab2d52a0fa11.jpg','3281cd031e29500278199849f857a031.jpg','2012-04-14 14:08:04','0000-00-00 00:00:00',NULL),(46,29,'Kim I','Kim I',10000.00,10,'9c187f1e89e16b3800cfe0301cbb99cf.jpg','8ce889aeaad4172f46856da01525f10b.jpg','2012-04-14 14:08:47','0000-00-00 00:00:00',NULL),(47,29,'Kim bikini','Kim bikini',40000.00,20,'d1cbc1ddebcbd741ef13ea956fe10167.jpg','120fcaeac4afd40eecbb432f0ccd7723.jpg','2012-04-14 14:09:09','0000-00-00 00:00:00',NULL),(48,29,'Kim cleavage','Kim cleavage',35000.00,8,'17e49ce72688ec565abcb0796db05eb1.jpg','c000d065780092d0982d5824c292d9ae.jpg','2012-04-14 14:09:32','0000-00-00 00:00:00',NULL),(49,30,'Mila Kunis I','Mila Kunis I',20000.00,10,'f916141adaa0280cdfc5c284b83b7c7d.jpg','9c417eaaec7d62f60a650723052e7d45.jpg','2012-04-14 14:10:07','0000-00-00 00:00:00',NULL),(50,30,'Mila Kunis in Tees','Mila Kunis in Tees',20000.00,18,'dcf32fb8784dde7c9e7ad281c979c11e.jpg','4a60c82f13cdc937c23fb6f7937f7303.jpg','2012-04-14 14:10:31','0000-00-00 00:00:00',NULL),(51,30,'Mila Kunis seduction','Mila Kunis seduction',20000.00,20,'b191cd012d17e46876741c1f621db4a4.jpg','5b4faff585e8fc64cc4c5e72c01cdc3d.jpg','2012-04-14 14:10:54','0000-00-00 00:00:00',NULL),(52,30,'Mila having drink','Mila having drink',20000.00,26,'ffa184b47265fc0f520e65c3ee5cbc96.jpg','a6636e19d24c178976d186491d7e55cf.jpg','2012-04-14 14:11:20','0000-00-00 00:00:00',NULL),(53,30,'Mila III','Mila III',28000.00,19,'9f83b0e10073183a34990d0db8f38e42.jpg','d23add7fdf57d41fa5959213cbef481e.jpg','2012-04-14 14:11:45','0000-00-00 00:00:00',NULL),(54,31,'Jolie Eating strawberry','',20000.00,20,'5d83d213b05c32eb620c2c5d2b78cb65.jpg','ba804ab4b67c0ba373fe55958d93f4aa.jpg','2012-04-14 14:13:03','0000-00-00 00:00:00',NULL),(55,31,'Jolie with snake','Jolie with snake',40000.00,20,'48a31b1df830c8f71e1e1fe6dd8b1101.jpg','2ced8898329fa2b2ef25d119e7f08a43.jpg','2012-04-14 14:13:28','0000-00-00 00:00:00',NULL),(56,31,'Jolie seduction','Jolie seduction',40000.00,19,'79fcea4140835e78a50579e13656d2b3.jpg','a53e69bfc1dd2b720e6901ca058e7bd6.jpg','2012-04-14 14:13:49','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_review`
--

DROP TABLE IF EXISTS `tbl_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_review` (
  `pd_id` int(11) NOT NULL,
  `pd_name` varchar(45) DEFAULT NULL,
  `pd_rating` int(11) DEFAULT NULL,
  `pd_review` text,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(99) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `thumbs_up` bigint(20) DEFAULT NULL,
  `thumbs_down` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_review`
--

LOCK TABLES `tbl_review` WRITE;
/*!40000 ALTER TABLE `tbl_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-04-16 21:44:02
