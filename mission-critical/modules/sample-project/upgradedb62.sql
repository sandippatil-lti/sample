-- MySQL dump 10.13  Distrib 5.1.41, for Win64 (unknown)
--
-- Host: localhost    Database: upgradedb62
-- ------------------------------------------------------
-- Server version	5.1.41-community

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
-- Table structure for table `account_`
--

DROP TABLE IF EXISTS `account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_`
--

LOCK TABLES `account_` WRITE;
/*!40000 ALTER TABLE `account_` DISABLE KEYS */;
INSERT INTO `account_` VALUES (20157,20155,0,'','2017-11-21 05:47:29','2017-11-21 05:47:29',0,'Liferay','','','','','','','','');
/*!40000 ALTER TABLE `account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsdelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsdelivery`
--

LOCK TABLES `announcementsdelivery` WRITE;
/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` VALUES (20434,20155,20199,'general',0,0,1),(20435,20155,20199,'news',0,0,1),(20436,20155,20199,'test',0,0,1);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsentry`
--

LOCK TABLES `announcementsentry` WRITE;
/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsflag`
--

LOCK TABLES `announcementsflag` WRITE;
/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategory`
--

DROP TABLE IF EXISTS `assetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategory`
--

LOCK TABLES `assetcategory` WRITE;
/*!40000 ALTER TABLE `assetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategoryproperty`
--

DROP TABLE IF EXISTS `assetcategoryproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategoryproperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategoryproperty`
--

LOCK TABLES `assetcategoryproperty` WRITE;
/*!40000 ALTER TABLE `assetcategoryproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategoryproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assetcategories`
--

DROP TABLE IF EXISTS `assetentries_assetcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assetcategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assetcategories`
--

LOCK TABLES `assetentries_assetcategories` WRITE;
/*!40000 ALTER TABLE `assetentries_assetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assetcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assettags`
--

DROP TABLE IF EXISTS `assetentries_assettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assettags`
--

LOCK TABLES `assetentries_assettags` WRITE;
/*!40000 ALTER TABLE `assetentries_assettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentry`
--

DROP TABLE IF EXISTS `assetentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentry`
--

LOCK TABLES `assetentry` WRITE;
/*!40000 ALTER TABLE `assetentry` DISABLE KEYS */;
INSERT INTO `assetentry` VALUES (20180,20173,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20116,20178,'b3b93ae3-31ac-a22c-1eae-08d3b4338b16',0,0,NULL,NULL,NULL,NULL,'text/html','20176','','','','',0,0,0,0),(20189,20182,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20116,20187,'f61ee154-c4c8-7a13-af64-0276406e2ead',0,0,NULL,NULL,NULL,NULL,'text/html','20185','','','','',0,0,0,0),(20204,20195,20155,20199,'Test Test','2017-11-21 05:47:31','2017-11-21 05:49:48',20005,20199,'4329dd02-f375-135d-1235-54892774ff50',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(20325,20317,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',20116,20322,'9bea6588-648d-aaf2-21ab-8260b488a036',0,0,NULL,NULL,NULL,NULL,'text/html','20320','','','','',0,0,0,0),(20336,20329,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36',20116,20334,'df4c0f5e-cc50-676c-4e5f-88bb10cc96ca',0,0,NULL,NULL,NULL,NULL,'text/html','20332','','','','',0,0,0,0),(20346,20339,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37',20116,20344,'833f643c-13a5-8da1-ed27-49764a28d3f7',0,0,NULL,NULL,NULL,NULL,'text/html','20342','','','','',0,0,0,0),(20365,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',20116,20363,'2144a9c3-e765-7ed1-6156-db558bac2915',0,0,NULL,NULL,NULL,NULL,'text/html','20361','','','','',0,0,0,0),(20373,20350,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',20116,20371,'bebf7d17-2bd8-538a-af16-685cf22b48e4',0,0,NULL,NULL,NULL,NULL,'text/html','20369','','','','',0,0,0,0),(20391,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20116,20389,'2d4e6c1a-ce47-9d12-369f-84ee9425ae4a',0,0,NULL,NULL,NULL,NULL,'text/html','20387','','','','',0,0,0,0),(20400,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20116,20398,'b000b765-3f5b-9b6a-098a-389cbdd22b06',0,0,NULL,NULL,NULL,NULL,'text/html','20396','','','','',0,0,0,0),(20408,20376,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',20116,20406,'83c77ec4-ab3e-8c17-2c73-0fefadbe08ba',0,0,NULL,NULL,NULL,NULL,'text/html','20404','','','','',0,0,0,0),(20540,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20116,20538,'87e71201-a803-6a67-8ef4-a15943fb3e64',0,0,NULL,NULL,NULL,NULL,'text/html','20536','','','','',0,0,0,0),(20546,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20116,20544,'d7013bc7-e1a7-b286-9053-55ea93730281',0,0,NULL,NULL,NULL,NULL,'text/html','20542','','','','',0,0,0,0),(20598,20182,20155,20199,'Test Test','2014-01-02 15:52:34','2014-01-02 15:52:34',20012,20597,'d2fec023-3554-43bd-a296-dc387003a163',0,1,NULL,NULL,NULL,NULL,'','content-images','','','','',0,0,0,0),(20602,20182,20155,20199,'Test Test','2014-01-02 16:26:18','2014-01-02 16:26:18',20011,20600,'2b93a38a-24bd-472d-a2b2-148d1bd25da3',0,1,NULL,NULL,NULL,NULL,'image/jpeg','space.jpg','','','','',0,0,0,1),(20605,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20116,20603,'656a6947-e7a1-1ead-a97c-2c1e039af8ca',0,0,NULL,NULL,NULL,NULL,'text/html','20600','','','','',0,0,0,0),(20611,20182,20155,20199,'Test Test','2014-01-02 15:54:17','2014-01-02 15:54:17',20011,20609,'2c49679f-c6b8-4383-8889-86a63e63494a',0,1,NULL,NULL,NULL,NULL,'image/jpeg','red-planet.jpg','','','','',0,0,0,1),(20614,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20116,20612,'a17ef9ff-38d7-cc14-a087-92bcd0b2bfde',0,0,NULL,NULL,NULL,NULL,'text/html','20609','','','','',0,0,0,0),(20619,20182,20155,20199,'Test Test','2014-01-17 14:55:46','2014-01-17 14:55:46',20011,20617,'91c7b3a2-db0f-4635-81a3-95ef2fa3073a',0,1,NULL,NULL,NULL,NULL,'image/jpeg','marathon-rocket.jpg','','','','',0,0,0,0),(20622,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20116,20620,'f9ee1eb3-0561-8b2e-9299-1a541894dab4',0,0,NULL,NULL,NULL,NULL,'text/html','20617','','','','',0,0,0,0),(20626,20182,20155,20199,'Test Test','2014-01-02 15:51:44','2014-01-02 15:51:44',20013,20625,'956c9fc8-07cd-4755-9f57-475b5fd2be8d',0,1,NULL,NULL,NULL,NULL,'text/plain','Articles','Informational Articles','','','',0,0,0,0),(20628,20182,20155,20199,'Test Test','2014-01-02 15:55:56','2014-01-02 15:55:56',20013,20627,'938d237c-0b24-4239-afbf-d11a1c0ff0ff',0,1,NULL,NULL,NULL,NULL,'text/plain','UI Elements','','','','',0,0,0,0),(20636,20182,20155,20199,'Test Test','2014-01-02 15:54:54','2014-01-09 18:56:16',20109,20634,'7f22ae1d-fcd1-42a8-8a86-2cfdf9fc601f',0,1,NULL,NULL,'2014-01-02 15:53:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Mars</Title></root>','','','','',0,0,0,24),(20639,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20116,20637,'fb58e2a2-b486-d7bb-4d26-dfa1dd0b5200',0,0,NULL,NULL,NULL,NULL,'text/html','20634','','','','',0,0,0,0),(20645,20182,20155,20199,'Test Test','2014-01-02 16:26:24','2014-01-09 18:56:30',20109,20643,'007e64ea-a611-403b-acc9-d73e931d76a1',0,1,NULL,NULL,'2014-01-02 16:22:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Outer Space</Title></root>','','','','',0,0,0,22),(20648,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20116,20646,'75610459-3570-4cb5-b6fb-afe7ac11aab1',0,0,NULL,NULL,NULL,NULL,'text/html','20643','','','','',0,0,0,0),(20666,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2017-11-21 06:21:25',20109,20652,'a77748e5-e4d7-4cbd-9137-08ae5624fb80',20629,1,NULL,NULL,'2014-01-02 16:03:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','','','','',0,0,0,24),(20669,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20116,20667,'4d37fcdd-c83b-a45e-a542-4955c3222f52',0,0,NULL,NULL,NULL,NULL,'text/html','20652','','','','',0,0,0,0),(20727,20182,20155,20199,'Test Test','2014-01-17 14:56:13','2014-01-17 14:56:14',20109,20725,'9a54afe0-26db-4aee-8ccb-c34dff83506d',0,1,NULL,NULL,'2014-01-17 14:53:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Marathon Rocket</Title></root>','','','','',0,0,0,0),(20730,20182,20155,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:17',20116,20728,'55d442e8-0194-dbab-dd15-0bbd47ed3bde',0,0,NULL,NULL,NULL,NULL,'text/html','20725','','','','',0,0,0,0),(20759,20182,20155,20199,'Test Test','2017-11-21 06:17:48','2017-11-21 06:17:48',20449,20750,'3c17fb9e-da77-7e25-ed82-6b06c364c740',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','','','','',0,0,0,0),(20814,20182,20155,20199,'Test Test','2017-11-21 07:30:30','2017-11-21 07:30:30',20797,1,'264fb33b-4055-9558-8c2d-27fa337cb926',0,1,NULL,NULL,NULL,NULL,'text/html','Iram Shaikh','','','','',0,0,0,0),(20815,20182,20155,20199,'Test Test','2017-11-21 07:30:58','2017-11-21 07:30:58',20798,1,'bea95ed8-2044-6fba-bd70-fd35bd65895f',0,1,NULL,NULL,NULL,NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Iram</Name></root>','','','','',0,0,0,0);
/*!40000 ALTER TABLE `assetentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetlink`
--

DROP TABLE IF EXISTS `assetlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetlink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetlink`
--

LOCK TABLES `assetlink` WRITE;
/*!40000 ALTER TABLE `assetlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettag`
--

DROP TABLE IF EXISTS `assettag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettag`
--

LOCK TABLES `assettag` WRITE;
/*!40000 ALTER TABLE `assettag` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagproperty`
--

DROP TABLE IF EXISTS `assettagproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagproperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_13805BF7` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagproperty`
--

LOCK TABLES `assettagproperty` WRITE;
/*!40000 ALTER TABLE `assettagproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagstats`
--

DROP TABLE IF EXISTS `assettagstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagstats`
--

LOCK TABLES `assettagstats` WRITE;
/*!40000 ALTER TABLE `assettagstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetvocabulary`
--

DROP TABLE IF EXISTS `assetvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetvocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  UNIQUE KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetvocabulary`
--

LOCK TABLES `assetvocabulary` WRITE;
/*!40000 ALTER TABLE `assetvocabulary` DISABLE KEYS */;
INSERT INTO `assetvocabulary` VALUES ('76be0aca-2ec4-d780-c82e-c41ec3d95aac',20324,20195,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('b34943ec-9338-40b4-9dc5-041a1531a483',20588,20182,20155,20199,'Test Test','2017-11-21 06:17:14','2017-11-21 06:17:14','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `assetvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backgroundtask`
--

DROP TABLE IF EXISTS `backgroundtask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backgroundtask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backgroundtask`
--

LOCK TABLES `backgroundtask` WRITE;
/*!40000 ALTER TABLE `backgroundtask` DISABLE KEYS */;
INSERT INTO `backgroundtask` VALUES (20578,20182,20155,20199,'Test Test','2017-11-21 06:17:13','2017-11-21 06:17:17','space-program-content-6.2.10.lar','','com.liferay.portal.lar.backgroundtask.LayoutImportBackgroundTaskExecutor','{\"javaClass\":\"java.util.HashMap\",\"map\":{\"fileName\":\"20171121061713412VMJLSZIJ.lar\",\"groupId\":20182,\"cmd\":\"import\",\"privateLayout\":false,\"parameterMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"_journal_version-historyCheckbox\":[\"true\"],\"PERMISSIONS\":[\"false\"],\"_journal_web-content\":[\"true\"],\"COMMENTSCheckbox\":[\"true\"],\"groupId\":[\"20182\"],\"LOGO\":[\"true\"],\"_journal_templates\":[\"true\"],\"_journal_folders\":[\"true\"],\"permissionsAssignedToRoles\":[\"true\"],\"PORTLET_DATA_183\":[\"true\"],\"_document_library_folders\":[\"true\"],\"_dynamic_data_lists_data-definitions\":[\"true\"],\"struts_action\":[\"/group_pages/import_layouts\"],\"DELETE_MISSING_LAYOUTS\":[\"false\"],\"_document_library_previews-and-thumbnailsCheckbox\":[\"true\"],\"_dynamic_data_lists_recordsCheckbox\":[\"true\"],\"LAYOUT_SET_SETTINGS\":[\"true\"],\"LAYOUT_SET_SETTINGSCheckbox\":[\"true\"],\"_journal_referenced-contentCheckbox\":[\"true\"],\"PORTLET_DATA_20Checkbox\":[\"true\"],\"formDate\":[\"1511245025951\"],\"PORTLET_DATA_CONTROL_DEFAULT\":[\"true\"],\"privateLayout\":[\"false\"],\"CATEGORIES\":[\"true\"],\"_journal_web-contentCheckbox\":[\"true\"],\"CATEGORIESCheckbox\":[\"true\"],\"USER_ID_STRATEGY\":[\"CURRENT_USER_ID\"],\"PORTLET_DATA_15Checkbox\":[\"true\"],\"_journal_structuresCheckbox\":[\"true\"],\"RATINGS\":[\"true\"],\"cmd\":[\"import\"],\"_portlet_display_templates_application-display-templates\":[\"true\"],\"PORTLET_DATA_15\":[\"true\"],\"PORTLET_DATA_ALL\":[\"true\"],\"_dynamic_data_lists_records\":[\"true\"],\"PORTLET_DATA_20\":[\"true\"],\"PORTLET_DATA\":[\"true\"],\"RATINGSCheckbox\":[\"true\"],\"_document_library_documentsCheckbox\":[\"true\"],\"COMMENTS\":[\"true\"],\"LOGOCheckbox\":[\"true\"],\"PORTLET_DATA_167Checkbox\":[\"true\"],\"DATA_STRATEGY\":[\"DATA_STRATEGY_MIRROR\"],\"_document_library_documents\":[\"true\"],\"_journal_foldersCheckbox\":[\"true\"],\"_journal_version-history\":[\"true\"],\"redirect\":[\"http://localhost:8080/group/control_panel/manage?p_p_auth=6fDAAhUR&p_p_id=156&p_p_lifecycle=0&p_p_state=pop_up&p_p_mode=view&doAsGroupId=20182&refererPlid=20185&controlPanelCategory=current_site.pages&_156_tabs2=current-and-previous&_156_groupId=20182&_156_privateLayout=false&_156_struts_action=%2Fgroup_pages%2Fimport_layouts\"],\"DELETE_PORTLET_DATA\":[\"false\"],\"THEME_REFERENCE\":[\"true\"],\"permissionsAssignedToRolesCheckbox\":[\"true\"],\"_dynamic_data_lists_data-definitionsCheckbox\":[\"true\"],\"_journal_templatesCheckbox\":[\"true\"],\"PORTLET_DATA_167\":[\"true\"],\"_journal_referenced-content\":[\"true\"],\"_document_library_foldersCheckbox\":[\"true\"],\"_document_library_previews-and-thumbnails\":[\"true\"],\"_journal_structures\":[\"true\"],\"PORTLET_DATA_183Checkbox\":[\"true\"],\"THEME_REFERENCECheckbox\":[\"true\"]}},\"userId\":20199}}',1,'2017-11-21 06:17:17',3,''),(20732,20182,20155,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:18','','','com.liferay.portal.lar.backgroundtask.StagingIndexingBackgroundTaskExecutor','{\"javaClass\":\"java.util.HashMap\",\"map\":{\"userId\":20199,\"portletDataContext\":{\"javaClass\":\"com.liferay.portal.lar.PortletDataContextImpl\",\"serializable\":{\"sourceUserPersonalSiteGroupId\":0,\"sourceCompanyId\":0,\"deletionSystemEventModelTypes\":{\"set\":{},\"javaClass\":\"java.util.HashSet\"},\"references\":{\"set\":{},\"javaClass\":\"java.util.HashSet\"},\"endDate\":null,\"groupId\":20182,\"scopedPrimaryKeys\":{\"set\":{},\"javaClass\":\"java.util.HashSet\"},\"assetCategoryIdsMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"expandoColumnsMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"primaryKeys\":{\"set\":{},\"javaClass\":\"java.util.HashSet\"},\"scopeGroupId\":20182,\"scopeType\":null,\"dataStrategy\":\"DATA_STRATEGY_MIRROR\",\"assetCategoryUuidsMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"oldPlid\":0,\"companyGroupId\":20195,\"rootPortletId\":null,\"parameterMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"_journal_version-historyCheckbox\":[\"true\"],\"PERMISSIONS\":[\"false\"],\"_journal_web-content\":[\"true\"],\"COMMENTSCheckbox\":[\"true\"],\"groupId\":[\"20182\"],\"LOGO\":[\"true\"],\"_journal_templates\":[\"true\"],\"_journal_folders\":[\"true\"],\"permissionsAssignedToRoles\":[\"true\"],\"PORTLET_DATA_183\":[\"true\"],\"_document_library_folders\":[\"true\"],\"_dynamic_data_lists_data-definitions\":[\"true\"],\"struts_action\":[\"/group_pages/import_layouts\"],\"DELETE_MISSING_LAYOUTS\":[\"false\"],\"_document_library_previews-and-thumbnailsCheckbox\":[\"true\"],\"_dynamic_data_lists_recordsCheckbox\":[\"true\"],\"LAYOUT_SET_SETTINGS\":[\"true\"],\"LAYOUT_SET_SETTINGSCheckbox\":[\"true\"],\"_journal_referenced-contentCheckbox\":[\"true\"],\"PORTLET_DATA_20Checkbox\":[\"true\"],\"formDate\":[\"1511245025951\"],\"PORTLET_DATA_CONTROL_DEFAULT\":[\"true\"],\"privateLayout\":[\"false\"],\"CATEGORIES\":[\"true\"],\"_journal_web-contentCheckbox\":[\"true\"],\"CATEGORIESCheckbox\":[\"true\"],\"USER_ID_STRATEGY\":[\"CURRENT_USER_ID\"],\"PORTLET_DATA_15Checkbox\":[\"true\"],\"_journal_structuresCheckbox\":[\"true\"],\"RATINGS\":[\"true\"],\"cmd\":[\"import\"],\"_portlet_display_templates_application-display-templates\":[\"true\"],\"PORTLET_DATA_15\":[\"true\"],\"PORTLET_DATA_ALL\":[\"true\"],\"_dynamic_data_lists_records\":[\"true\"],\"PORTLET_DATA_20\":[\"true\"],\"PORTLET_DATA\":[\"true\"],\"RATINGSCheckbox\":[\"true\"],\"_document_library_documentsCheckbox\":[\"true\"],\"COMMENTS\":[\"true\"],\"LOGOCheckbox\":[\"true\"],\"PORTLET_DATA_167Checkbox\":[\"true\"],\"DATA_STRATEGY\":[\"DATA_STRATEGY_MIRROR\"],\"_document_library_documents\":[\"true\"],\"_journal_foldersCheckbox\":[\"true\"],\"_journal_version-history\":[\"true\"],\"redirect\":[\"http://localhost:8080/group/control_panel/manage?p_p_auth=6fDAAhUR&p_p_id=156&p_p_lifecycle=0&p_p_state=pop_up&p_p_mode=view&doAsGroupId=20182&refererPlid=20185&controlPanelCategory=current_site.pages&_156_tabs2=current-and-previous&_156_groupId=20182&_156_privateLayout=false&_156_struts_action=%2Fgroup_pages%2Fimport_layouts\"],\"DELETE_PORTLET_DATA\":[\"false\"],\"THEME_REFERENCE\":[\"true\"],\"permissionsAssignedToRolesCheckbox\":[\"true\"],\"_dynamic_data_lists_data-definitionsCheckbox\":[\"true\"],\"_journal_templatesCheckbox\":[\"true\"],\"PORTLET_DATA_167\":[\"true\"],\"_journal_referenced-content\":[\"true\"],\"_document_library_foldersCheckbox\":[\"true\"],\"_document_library_previews-and-thumbnails\":[\"true\"],\"_journal_structures\":[\"true\"],\"PORTLET_DATA_183Checkbox\":[\"true\"],\"THEME_REFERENCECheckbox\":[\"true\"]}},\"newPrimaryKeysMaps\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"com.liferay.portal.kernel.repository.model.Folder\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10638\":20597}},\"interface com.liferay.portlet.journal.model.JournalArticle.articleId\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10697\":\"20650\",\"10676\":\"20632\",\"10687\":\"20641\",\"10742\":\"20723\"}},\"com.liferay.portlet.journal.model.JournalFolder\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10672\":20625,\"10674\":20627}},\"com.liferay.portlet.dynamicdatamapping.model.DDMTemplate\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10670\":20630}},\"com.liferay.portlet.asset.model.AssetCategory\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"com.liferay.portal.model.Layout\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10187\":20185}},\"com.liferay.portlet.dynamicdatamapping.model.DDMStructure\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10669\":20629}},\"com.liferay.portlet.documentlibrary.model.DLFileEntryType\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"com.liferay.portlet.journal.model.JournalArticle\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10689\":20643,\"10678\":20634,\"10744\":20725,\"10699\":20652}},\"com.liferay.portal.model.LayoutFriendlyURL\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10188\":20186}},\"com.liferay.portlet.wiki.model.WikiNode\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"com.liferay.portlet.documentlibrary.model.DLFolder\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10638\":20597}},\"com.liferay.portal.kernel.repository.model.FileEntry\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10660\":20617,\"10651\":20609,\"10641\":20600}},\"com.liferay.portlet.asset.model.AssetVocabulary\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10631\":20588}},\"com.liferay.portlet.documentlibrary.model.DLFileEntry\":{\"javaClass\":\"java.util.HashMap\",\"map\":{\"10660\":20617,\"10651\":20609,\"10641\":20600}}}},\"plid\":0,\"commentsMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"privateLayout\":false,\"permissionsMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"assetTagNamesMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"companyId\":20155,\"assetLinksMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"sourceCompanyGroupId\":0,\"userPersonalSiteGroupId\":20192,\"deletionKeysMap\":{\"javaClass\":\"java.util.HashMap\",\"map\":{}},\"scopeLayoutUuid\":null,\"startDate\":null,\"notUniquePerLayout\":{\"set\":{},\"javaClass\":\"java.util.HashSet\"},\"sourceGroupId\":0}}}}',1,'2017-11-21 06:17:18',3,'');
/*!40000 ALTER TABLE `backgroundtask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsentry`
--

LOCK TABLES `blogsentry` WRITE;
/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsstatsuser`
--

LOCK TABLES `blogsstatsuser` WRITE;
/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksentry`
--

LOCK TABLES `bookmarksentry` WRITE;
/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksfolder`
--

LOCK TABLES `bookmarksfolder` WRITE;
/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsertracker`
--

DROP TABLE IF EXISTS `browsertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsertracker`
--

LOCK TABLES `browsertracker` WRITE;
/*!40000 ALTER TABLE `browsertracker` DISABLE KEYS */;
INSERT INTO `browsertracker` VALUES (20552,20199,160809823811);
/*!40000 ALTER TABLE `browsertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar`
--

DROP TABLE IF EXISTS `calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar`
--

LOCK TABLES `calendar` WRITE;
/*!40000 ALTER TABLE `calendar` DISABLE KEYS */;
INSERT INTO `calendar` VALUES ('ab99075f-baf7-6115-08aa-0774ac77b0e9',20752,20182,20155,20199,'Test Test','2017-11-21 06:17:48','2017-11-21 06:17:48',4,20750,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','','UTC',14247526,1,0,0);
/*!40000 ALTER TABLE `calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarbooking`
--

DROP TABLE IF EXISTS `calendarbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarbooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `vEventUid` varchar(255) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_8B23DA0E` (`calendarId`,`vEventUid`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarbooking`
--

LOCK TABLES `calendarbooking` WRITE;
/*!40000 ALTER TABLE `calendarbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarnotificationtemplate`
--

DROP TABLE IF EXISTS `calendarnotificationtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarnotificationtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarnotificationtemplate`
--

LOCK TABLES `calendarnotificationtemplate` WRITE;
/*!40000 ALTER TABLE `calendarnotificationtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendarnotificationtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendarresource`
--

DROP TABLE IF EXISTS `calendarresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendarresource`
--

LOCK TABLES `calendarresource` WRITE;
/*!40000 ALTER TABLE `calendarresource` DISABLE KEYS */;
INSERT INTO `calendarresource` VALUES ('3c17fb9e-da77-7e25-ed82-6b06c364c740',20750,20182,20155,20199,'Test Test','2017-11-21 06:17:48','2017-11-21 06:17:48',1,20001,20182,'','20750','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','',1);
/*!40000 ALTER TABLE `calendarresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calevent`
--

LOCK TABLES `calevent` WRITE;
/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classname_`
--

LOCK TABLES `classname_` WRITE;
/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` VALUES (20446,'com.liferay.calendar.model.Calendar'),(20447,'com.liferay.calendar.model.CalendarBooking'),(20448,'com.liferay.calendar.model.CalendarNotificationTemplate'),(20449,'com.liferay.calendar.model.CalendarResource'),(20017,'com.liferay.counter.model.Counter'),(20437,'com.liferay.marketplace.model.App'),(20438,'com.liferay.marketplace.model.Module'),(20509,'com.liferay.notifications.model.UserNotificationEvent'),(20513,'com.liferay.oauth.model.OAuthApplication'),(20514,'com.liferay.oauth.model.OAuthUser'),(20518,'com.liferay.opensocial.model.Gadget'),(20519,'com.liferay.opensocial.model.OAuthConsumer'),(20520,'com.liferay.opensocial.model.OAuthToken'),(20424,'com.liferay.portal.kernel.repository.model.FileEntry'),(20018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(20019,'com.liferay.portal.model.Account'),(20020,'com.liferay.portal.model.Address'),(20021,'com.liferay.portal.model.BackgroundTask'),(20022,'com.liferay.portal.model.BrowserTracker'),(20023,'com.liferay.portal.model.ClassName'),(20024,'com.liferay.portal.model.ClusterGroup'),(20025,'com.liferay.portal.model.Company'),(20026,'com.liferay.portal.model.Contact'),(20027,'com.liferay.portal.model.Country'),(20028,'com.liferay.portal.model.EmailAddress'),(20001,'com.liferay.portal.model.Group'),(20029,'com.liferay.portal.model.Image'),(20002,'com.liferay.portal.model.Layout'),(20030,'com.liferay.portal.model.LayoutBranch'),(20031,'com.liferay.portal.model.LayoutFriendlyURL'),(20032,'com.liferay.portal.model.LayoutPrototype'),(20033,'com.liferay.portal.model.LayoutRevision'),(20034,'com.liferay.portal.model.LayoutSet'),(20035,'com.liferay.portal.model.LayoutSetBranch'),(20036,'com.liferay.portal.model.LayoutSetPrototype'),(20037,'com.liferay.portal.model.ListType'),(20038,'com.liferay.portal.model.Lock'),(20039,'com.liferay.portal.model.MembershipRequest'),(20003,'com.liferay.portal.model.Organization'),(20040,'com.liferay.portal.model.OrgGroupRole'),(20041,'com.liferay.portal.model.OrgLabor'),(20042,'com.liferay.portal.model.PasswordPolicy'),(20043,'com.liferay.portal.model.PasswordPolicyRel'),(20044,'com.liferay.portal.model.PasswordTracker'),(20045,'com.liferay.portal.model.Phone'),(20046,'com.liferay.portal.model.PluginSetting'),(20047,'com.liferay.portal.model.PortalPreferences'),(20048,'com.liferay.portal.model.Portlet'),(20049,'com.liferay.portal.model.PortletItem'),(20050,'com.liferay.portal.model.PortletPreferences'),(20051,'com.liferay.portal.model.Region'),(20052,'com.liferay.portal.model.Release'),(20053,'com.liferay.portal.model.Repository'),(20054,'com.liferay.portal.model.RepositoryEntry'),(20055,'com.liferay.portal.model.ResourceAction'),(20056,'com.liferay.portal.model.ResourceBlock'),(20057,'com.liferay.portal.model.ResourceBlockPermission'),(20058,'com.liferay.portal.model.ResourcePermission'),(20059,'com.liferay.portal.model.ResourceTypePermission'),(20004,'com.liferay.portal.model.Role'),(20060,'com.liferay.portal.model.ServiceComponent'),(20061,'com.liferay.portal.model.Shard'),(20062,'com.liferay.portal.model.Subscription'),(20063,'com.liferay.portal.model.SystemEvent'),(20064,'com.liferay.portal.model.Team'),(20065,'com.liferay.portal.model.Ticket'),(20005,'com.liferay.portal.model.User'),(20006,'com.liferay.portal.model.UserGroup'),(20066,'com.liferay.portal.model.UserGroupGroupRole'),(20067,'com.liferay.portal.model.UserGroupRole'),(20068,'com.liferay.portal.model.UserIdMapper'),(20069,'com.liferay.portal.model.UserNotificationDelivery'),(20070,'com.liferay.portal.model.UserNotificationEvent'),(20191,'com.liferay.portal.model.UserPersonalSite'),(20071,'com.liferay.portal.model.UserTracker'),(20072,'com.liferay.portal.model.UserTrackerPath'),(20073,'com.liferay.portal.model.VirtualHost'),(20074,'com.liferay.portal.model.WebDAVProps'),(20075,'com.liferay.portal.model.Website'),(20076,'com.liferay.portal.model.WorkflowDefinitionLink'),(20077,'com.liferay.portal.model.WorkflowInstanceLink'),(20558,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),(20500,'com.liferay.portal.workflow.kaleo.designer.model.KaleoDraftDefinition'),(20503,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess'),(20504,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcessLink'),(20453,'com.liferay.portal.workflow.kaleo.model.KaleoAction'),(20454,'com.liferay.portal.workflow.kaleo.model.KaleoCondition'),(20455,'com.liferay.portal.workflow.kaleo.model.KaleoDefinition'),(20456,'com.liferay.portal.workflow.kaleo.model.KaleoInstance'),(20457,'com.liferay.portal.workflow.kaleo.model.KaleoInstanceToken'),(20458,'com.liferay.portal.workflow.kaleo.model.KaleoLog'),(20459,'com.liferay.portal.workflow.kaleo.model.KaleoNode'),(20460,'com.liferay.portal.workflow.kaleo.model.KaleoNotification'),(20461,'com.liferay.portal.workflow.kaleo.model.KaleoNotificationRecipient'),(20462,'com.liferay.portal.workflow.kaleo.model.KaleoTask'),(20463,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignment'),(20464,'com.liferay.portal.workflow.kaleo.model.KaleoTaskAssignmentInstance'),(20465,'com.liferay.portal.workflow.kaleo.model.KaleoTaskInstanceToken'),(20466,'com.liferay.portal.workflow.kaleo.model.KaleoTimer'),(20467,'com.liferay.portal.workflow.kaleo.model.KaleoTimerInstanceToken'),(20468,'com.liferay.portal.workflow.kaleo.model.KaleoTransition'),(20078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(20079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(20080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(20081,'com.liferay.portlet.asset.model.AssetCategory'),(20082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(20083,'com.liferay.portlet.asset.model.AssetEntry'),(20084,'com.liferay.portlet.asset.model.AssetLink'),(20085,'com.liferay.portlet.asset.model.AssetTag'),(20086,'com.liferay.portlet.asset.model.AssetTagProperty'),(20087,'com.liferay.portlet.asset.model.AssetTagStats'),(20088,'com.liferay.portlet.asset.model.AssetVocabulary'),(20007,'com.liferay.portlet.blogs.model.BlogsEntry'),(20089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(20008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(20009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(20010,'com.liferay.portlet.calendar.model.CalEvent'),(20090,'com.liferay.portlet.documentlibrary.model.DLContent'),(20011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(20091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(20092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(20093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(20094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(20095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(20012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(20096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(20314,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(20097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(20098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(20099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(20100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(20101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(20102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(20103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(20104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(20105,'com.liferay.portlet.expando.model.ExpandoColumn'),(20106,'com.liferay.portlet.expando.model.ExpandoRow'),(20107,'com.liferay.portlet.expando.model.ExpandoTable'),(20108,'com.liferay.portlet.expando.model.ExpandoValue'),(20109,'com.liferay.portlet.journal.model.JournalArticle'),(20110,'com.liferay.portlet.journal.model.JournalArticleImage'),(20111,'com.liferay.portlet.journal.model.JournalArticleResource'),(20112,'com.liferay.portlet.journal.model.JournalContentSearch'),(20113,'com.liferay.portlet.journal.model.JournalFeed'),(20013,'com.liferay.portlet.journal.model.JournalFolder'),(20114,'com.liferay.portlet.messageboards.model.MBBan'),(20115,'com.liferay.portlet.messageboards.model.MBCategory'),(20116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(20117,'com.liferay.portlet.messageboards.model.MBMailingList'),(20014,'com.liferay.portlet.messageboards.model.MBMessage'),(20118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(20015,'com.liferay.portlet.messageboards.model.MBThread'),(20119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(20120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(20121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(20122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(20123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(20124,'com.liferay.portlet.polls.model.PollsChoice'),(20125,'com.liferay.portlet.polls.model.PollsQuestion'),(20126,'com.liferay.portlet.polls.model.PollsVote'),(20127,'com.liferay.portlet.ratings.model.RatingsEntry'),(20128,'com.liferay.portlet.ratings.model.RatingsStats'),(20129,'com.liferay.portlet.shopping.model.ShoppingCart'),(20130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(20131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(20132,'com.liferay.portlet.shopping.model.ShoppingItem'),(20133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(20134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(20135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(20136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(20137,'com.liferay.portlet.social.model.SocialActivity'),(20138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(20139,'com.liferay.portlet.social.model.SocialActivityCounter'),(20140,'com.liferay.portlet.social.model.SocialActivityLimit'),(20141,'com.liferay.portlet.social.model.SocialActivitySet'),(20142,'com.liferay.portlet.social.model.SocialActivitySetting'),(20143,'com.liferay.portlet.social.model.SocialRelation'),(20144,'com.liferay.portlet.social.model.SocialRequest'),(20145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(20146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(20147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(20148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(20149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(20150,'com.liferay.portlet.trash.model.TrashEntry'),(20151,'com.liferay.portlet.trash.model.TrashVersion'),(20152,'com.liferay.portlet.wiki.model.WikiNode'),(20016,'com.liferay.portlet.wiki.model.WikiPage'),(20153,'com.liferay.portlet.wiki.model.WikiPageResource'),(20528,'com.liferay.sync.model.SyncDevice'),(20529,'com.liferay.sync.model.SyncDLFileVersionDiff'),(20530,'com.liferay.sync.model.SyncDLObject'),(20797,'com.liferay.training.parts.model.Manufacturer'),(20798,'com.liferay.training.parts.model.Part'),(20799,'com.liferay.training.parts.model.PurchaseOrder'),(20804,'com.liferay.training.shuttlestats.model.Shuttle'),(20805,'com.liferay.training.shuttlestats.model.ShuttleStats');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clustergroup`
--

DROP TABLE IF EXISTS `clustergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustergroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clustergroup`
--

LOCK TABLES `clustergroup` WRITE;
/*!40000 ALTER TABLE `clustergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (20155,20157,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABDsWwJ+WjZ+3jytjdpQpRRZ','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_`
--

LOCK TABLES `contact_` WRITE;
/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` VALUES (20160,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20005,20159,20157,0,'default@liferay.com','','','',0,0,1,'2017-11-21 05:47:29','','','','','','','','','','','','','','',''),(20200,20155,20199,'','2017-11-21 05:47:31','2017-11-21 05:49:48',20005,20199,20157,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('com.liferay.counter.model.Counter',21000),('com.liferay.portal.model.Layout#20173#true',1),('com.liferay.portal.model.Layout#20182#false',1),('com.liferay.portal.model.Layout#20201#false',1),('com.liferay.portal.model.Layout#20201#true',1),('com.liferay.portal.model.Layout#20317#true',1),('com.liferay.portal.model.Layout#20329#true',1),('com.liferay.portal.model.Layout#20339#true',1),('com.liferay.portal.model.Layout#20350#true',2),('com.liferay.portal.model.Layout#20376#true',3),('com.liferay.portal.model.ResourceAction',1300),('com.liferay.portal.model.ResourceBlock',100),('com.liferay.portal.model.ResourcePermission',700),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100),('com.liferay.portlet.social.model.SocialActivity',100),('com.liferay.training.parts.model.Manufacturer',100),('com.liferay.training.parts.model.Part',100);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrususer`
--

DROP TABLE IF EXISTS `cyrususer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrususer`
--

LOCK TABLES `cyrususer` WRITE;
/*!40000 ALTER TABLE `cyrususer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrususer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrusvirtual`
--

DROP TABLE IF EXISTS `cyrusvirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrusvirtual`
--

LOCK TABLES `cyrusvirtual` WRITE;
/*!40000 ALTER TABLE `cyrusvirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrusvirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecord`
--

DROP TABLE IF EXISTS `ddlrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecord`
--

LOCK TABLES `ddlrecord` WRITE;
/*!40000 ALTER TABLE `ddlrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordset`
--

DROP TABLE IF EXISTS `ddlrecordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordset` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordset`
--

LOCK TABLES `ddlrecordset` WRITE;
/*!40000 ALTER TABLE `ddlrecordset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordversion`
--

DROP TABLE IF EXISTS `ddlrecordversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordversion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordversion`
--

LOCK TABLES `ddlrecordversion` WRITE;
/*!40000 ALTER TABLE `ddlrecordversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmcontent`
--

DROP TABLE IF EXISTS `ddmcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmcontent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmcontent`
--

LOCK TABLES `ddmcontent` WRITE;
/*!40000 ALTER TABLE `ddmcontent` DISABLE KEYS */;
INSERT INTO `ddmcontent` VALUES ('9a45802e-a684-e435-e9b5-2e359e2501c0',20734,20182,20155,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:17','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_RESOLUTION_VERTICAL\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[72.0]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_SOFTWARE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[Adobe Photoshop CS3 Windows]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[16]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2009-08-11T17:27:55]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_CREATION_DATE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2009-08-11T17:27:55]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_SAMPLES_PER_PIXEL\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[3]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_RESOLUTION_UNIT\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[Inch]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_LAST_MODIFIED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2009-08-11T17:27:55]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[1753]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_RESOLUTION_HORIZONTAL\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[72.0]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[1683]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_LAST_SAVED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2009-08-11T17:27:55]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"DublinCore_CREATED\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[2009-08-11T17:27:55]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_ORIENTATION\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[1]]></dynamic-content>\n	</dynamic-element>\n</root>'),('0ca26ac8-2e87-9b76-fd23-b2d862e71b22',20739,20182,20155,20199,'Test Test','2017-11-21 06:17:18','2017-11-21 06:17:18','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[400]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"MSOffice_COMMENTS\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[File source: http://commons.wikimedia.org/wiki/File:Sol454_Marte_spirit.jpg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[209]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"ClimateForcast_COMMENT\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[File source: http://commons.wikimedia.org/wiki/File:Sol454_Marte_spirit.jpg]]></dynamic-content>\n	</dynamic-element>\n</root>'),('e53cc9e5-00b4-2408-3619-65a5e95b0684',20743,20182,20155,20199,'Test Test','2017-11-21 06:17:18','2017-11-21 06:17:18','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[360]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element default-language-id=\"en_US\" name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content language-id=\"en_US\"><![CDATA[287]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `ddmcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstoragelink`
--

DROP TABLE IF EXISTS `ddmstoragelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstoragelink`
--

LOCK TABLES `ddmstoragelink` WRITE;
/*!40000 ALTER TABLE `ddmstoragelink` DISABLE KEYS */;
INSERT INTO `ddmstoragelink` VALUES ('f90bf50d-d1b6-b726-f0a8-5ce692df60b2',20736,20100,20734,20315),('dc08c2d0-11c7-70e8-9f61-e14bc25439ed',20740,20100,20739,20315),('60965fe3-994d-4b66-e602-ed6ddf4a9a54',20744,20100,20743,20315);
/*!40000 ALTER TABLE `ddmstoragelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructure`
--

DROP TABLE IF EXISTS `ddmstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructure`
--

LOCK TABLES `ddmstructure` WRITE;
/*!40000 ALTER TABLE `ddmstructure` DISABLE KEYS */;
INSERT INTO `ddmstructure` VALUES ('fedc1a9e-dace-0519-c94f-c08f6d3dbb4a',20303,20195,20155,20159,'','2017-11-21 05:47:33','2017-11-21 05:47:33',0,20091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('37b580d9-dfe0-87ff-4e0e-9f0eae7bb5f2',20304,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34',0,20091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('7fbf8ede-f68e-6749-beed-e0f3e42d79bb',20305,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34',0,20091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('0ac382da-021b-a800-7b13-82714aa7d4d0',20307,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34',0,20091,'AUTO_2BE5E1A0-046D-8584-F298-461DD84C059B','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('093ef5c0-cc14-627e-fff5-2e593e9b258b',20309,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34',0,20091,'AUTO_F08CE628-8DA1-B626-2E06-F5D20F8BA76B','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('5c5779d8-f810-3b2d-854b-385302e6feaf',20311,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34',0,20091,'AUTO_A966870A-B8BD-BEFF-3F47-8941A3A549FB','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('4b93e16b-bda3-83d9-0665-fac1d6e342b2',20313,20195,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',0,20091,'AUTO_FAA5F912-8CBE-87D7-21CD-637532562466','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('90459105-1f7e-7e9a-02f3-8141ae95760a',20315,20195,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',0,20314,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('a031005d-0df8-4759-fd45-799bda50edd3',20412,20182,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',0,20098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('6e3eeef7-0f62-64bb-30a6-f9914f352125',20413,20182,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',0,20098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('e21bd262-0404-f7ae-6f73-273892a02697',20414,20182,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',0,20098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('2856e761-09d3-8f8f-d010-a8983cf7c22d',20415,20182,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',0,20098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('726a71e0-726d-61bd-63f5-e3c16a110584',20416,20182,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',0,20098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('f7b46dc3-5a83-ad24-6746-c7cb70e2fc9b',20417,20182,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',0,20098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('fab0e43c-5e76-41f7-a16c-c8b0334ce259',20629,20182,20155,20199,'Test Test','2014-01-02 15:59:26','2014-01-02 16:01:58',0,20109,'12233','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"image\" fieldNamespace=\"wcm\" indexType=\"keyword\" name=\"image\" readOnly=\"false\" repeatable=\"true\" required=\"false\" showLabel=\"true\" type=\"wcm-image\" width=\"\">\n		<dynamic-element dataType=\"image\" fieldNamespace=\"wcm\" indexType=\"keyword\" name=\"image-720\" readOnly=\"false\" repeatable=\"false\" required=\"false\" showLabel=\"true\" type=\"wcm-image\" width=\"\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[image-720]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n				<entry name=\"tip\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"content\" readOnly=\"false\" repeatable=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"small\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[content]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n				<entry name=\"tip\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"link\" readOnly=\"false\" repeatable=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"small\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[link]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n				<entry name=\"tip\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[image]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `ddmstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructurelink`
--

DROP TABLE IF EXISTS `ddmstructurelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructurelink`
--

LOCK TABLES `ddmstructurelink` WRITE;
/*!40000 ALTER TABLE `ddmstructurelink` DISABLE KEYS */;
INSERT INTO `ddmstructurelink` VALUES (20737,20091,20733,20315),(20741,20091,20738,20315),(20745,20091,20742,20315);
/*!40000 ALTER TABLE `ddmstructurelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmtemplate`
--

DROP TABLE IF EXISTS `ddmtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmtemplate`
--

LOCK TABLES `ddmtemplate` WRITE;
/*!40000 ALTER TABLE `ddmtemplate` DISABLE KEYS */;
INSERT INTO `ddmtemplate` VALUES ('0fb66eb1-30c9-a9f8-fa2c-d9187be1eb8e',20418,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,20419,''),('9b0aa896-fa39-6e18-b53b-8b9697b44511',20420,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(renderRequest, renderResponse))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle, false) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle], false) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,20421,''),('88494017-d5f7-1df7-3fac-ba6fd93efe95',20422,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20423,''),('119f829b-ec16-1ec4-f62a-fefc0d54d010',20425,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20424,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,20426,''),('e003d2ba-d39f-7de7-48f2-3e0ea1258e80',20427,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))], false) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,20428,''),('76a8dbca-6938-e0dc-eab6-f0fadb74e3e6',20429,20195,20155,20159,'','2017-11-21 05:47:43','2017-11-21 05:47:43',20085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,20430,''),('d8111553-162a-fb72-205f-71ebe1315e32',20431,20195,20155,20159,'','2017-11-21 05:47:44','2017-11-21 05:47:44',20081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,20432,''),('78ad1a97-4d8b-429e-81f6-50f82ecc2b52',20630,20182,20155,20199,'Test Test','2014-01-02 16:02:32','2014-01-02 20:35:23',20102,20629,'12235','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel Template</Name></root>','','display','','vm','## Define variables\n#set ($portletNamespace = $request.portlet-namespace)\n\n<style type=\"text/css\">\n\n	## CSS selectors are not namespaced in this example and could potentially affect other elements on the page that have the same css class names\n	\n	.carousel {\n		height: 252px;\n		width: 940px;\n	}\n\n	.aui-carousel-item {\n		height: 252px;\n		width: 940px;\n	}\n\n</style>\n<style type=\"text/css\">\n\n	#set ($count = 1)\n	#foreach ($each-image in $image.siblings)\n\n		.aui-carousel-item-$count {\n			background-image: url($each-image.data);\n		}\n\n		#set ($count = $count + 1)	\n	#end\n</style>\n\n<div class=\"carousel\" id=\"${request.portlet-namespace}carousel\">\n	#set ($count = 1)\n	#set ($activeClass = \'\')\n\n	#foreach ($each-image in $image.siblings)\n		#if ($count == 1)\n			#set ($activeClass = \'aui-carousel-item-active\')\n		#end\n\n		<a href=\"$each-image.link.data\" class=\"display-b aui-carousel-item aui-carousel-item-$count $activeClass callout u-12-12 h-14-12 u-9-9 h-10-9\">\n			<div class=\"aui-helper-hidden-accessible\">\n				$each-image.content.data\n			</div>\n		</a>\n		#set ($activeClass = \'\')\n\n		#set ($count = $count + 1)\n	#end\n</div>\n\n<script>\n\n	AUI().ready(\'aui-carousel\', function(A) {\n		var carousel = new A.Carousel({\n			intervalTime: 7,\n			contentBox: \'#${request.portlet-namespace}carousel\',\n			activeIndex: 0,\n			after: {\n				render: function(e) {\n					var carouselInstance = e.currentTarget;\n					var contentBox = carouselInstance.get(\'contentBox\');\n					var firstItem = contentBox.one(\'.aui-carousel-item-1\');\n					\n					firstItem.setStyle(\'opacity\' , 1);\n				}\n			}\n		})\n		.render();\n	});\n\n</script>',0,0,20631,'');
/*!40000 ALTER TABLE `ddmtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlcontent`
--

DROP TABLE IF EXISTS `dlcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlcontent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlcontent`
--

LOCK TABLES `dlcontent` WRITE;
/*!40000 ALTER TABLE `dlcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`),
  KEY `IX_1B352F4A` (`repositoryId`,`folderId`),
  KEY `IX_25F5CAB9` (`smallImageId`,`largeImageId`,`custom1ImageId`,`custom2ImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentry`
--

LOCK TABLES `dlfileentry` WRITE;
/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
INSERT INTO `dlfileentry` VALUES ('8b7569fc-9c1f-b1ec-44be-4e2e5bdc7bd4',20582,20182,20155,20199,'Test Test','2017-11-21 06:17:13','2017-11-21 06:17:13',20021,20578,20579,20581,'/20580/20581/','3','lar','application/zip','20171121061713412VMJLSZIJ.lar','','',0,'1.0',5630612,0,0,0,0,0,0),('2b93a38a-24bd-472d-a2b2-148d1bd25da3',20600,20182,20155,20199,'Test Test','2014-01-02 16:26:18','2014-01-02 16:26:18',0,0,20182,20597,'/20597/','4','jpg','image/jpeg','space.jpg','','',0,'1.0',191209,1,0,0,0,0,0),('2c49679f-c6b8-4383-8889-86a63e63494a',20609,20182,20155,20199,'Test Test','2014-01-02 15:54:17','2014-01-02 15:54:17',0,0,20182,20597,'/20597/','5','jpg','image/jpeg','red-planet.jpg','','',0,'1.0',20946,1,0,0,0,0,0),('91c7b3a2-db0f-4635-81a3-95ef2fa3073a',20617,20182,20155,20199,'Test Test','2014-01-17 14:55:46','2014-01-17 14:55:46',0,0,20182,20597,'/20597/','6','jpg','image/jpeg','marathon-rocket.jpg','','',0,'1.0',31369,0,0,0,0,0,0);
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrymetadata`
--

DROP TABLE IF EXISTS `dlfileentrymetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrymetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrymetadata`
--

LOCK TABLES `dlfileentrymetadata` WRITE;
/*!40000 ALTER TABLE `dlfileentrymetadata` DISABLE KEYS */;
INSERT INTO `dlfileentrymetadata` VALUES ('415be556-22f3-c9f2-9138-c23a9ea9800d',20733,20734,20315,0,20600,20601),('c3cf0e55-0ec3-9c8d-eeca-1506b17ec4d4',20738,20739,20315,0,20609,20610),('9cff0333-7018-4f23-db97-0a9ca8ab6c52',20742,20743,20315,0,20617,20618);
/*!40000 ALTER TABLE `dlfileentrymetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytype`
--

DROP TABLE IF EXISTS `dlfileentrytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytype`
--

LOCK TABLES `dlfileentrytype` WRITE;
/*!40000 ALTER TABLE `dlfileentrytype` DISABLE KEYS */;
INSERT INTO `dlfileentrytype` VALUES ('3d31015a-b9ea-b7eb-dc83-413d3c9aaaaf',0,0,0,0,'','2017-11-21 05:33:01','2017-11-21 05:33:01','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('2be5e1a0-046d-8584-f298-461dd84c059b',20306,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('f08ce628-8da1-b626-2e06-f5d20f8ba76b',20308,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('a966870a-b8bd-beff-3f47-8941a3a549fb',20310,20195,20155,20159,'','2017-11-21 05:47:34','2017-11-21 05:47:34','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('faa5f912-8cbe-87d7-21cd-637532562466',20312,20195,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `dlfileentrytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_ddmstructures`
--

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_ddmstructures`
--

LOCK TABLES `dlfileentrytypes_ddmstructures` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` DISABLE KEYS */;
INSERT INTO `dlfileentrytypes_ddmstructures` VALUES (20307,20306),(20304,20308),(20309,20308),(20303,20310),(20311,20310),(20305,20312),(20313,20312);
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_dlfolders`
--

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_dlfolders`
--

LOCK TABLES `dlfileentrytypes_dlfolders` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`),
  KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfilerank`
--

LOCK TABLES `dlfilerank` WRITE;
/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
INSERT INTO `dlfilerank` VALUES (20762,20182,20155,20199,'2017-11-21 06:18:05',20609,1),(20767,20182,20155,20199,'2017-11-21 06:19:01',20600,1);
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileshortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileshortcut`
--

LOCK TABLES `dlfileshortcut` WRITE;
/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileversion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileversion`
--

LOCK TABLES `dlfileversion` WRITE;
/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
INSERT INTO `dlfileversion` VALUES ('674d4d1f-65c7-0765-1ff3-f25149352d60',20583,20182,20155,20199,'Test Test','2017-11-21 06:17:13','2017-11-21 06:17:13',20579,20581,20582,'/20580/20581/','lar','application/zip','20171121061713412VMJLSZIJ.lar','','','',0,'1.0',5630612,'',0,20199,'Test Test','2017-11-21 06:17:13'),('1da132d5-a5c4-44e7-b9c4-3610b1cde434',20601,20182,20155,20199,'Test Test','2014-01-02 16:26:18','2014-01-02 16:26:18',20182,20597,20600,'/20597/','jpg','image/jpeg','space.jpg','','','',0,'1.0',191209,'',0,20199,'Test Test','2017-11-21 06:17:15'),('a5875139-c95b-4868-9038-649725784904',20610,20182,20155,20199,'Test Test','2014-01-02 15:54:17','2014-01-02 15:54:17',20182,20597,20609,'/20597/','jpg','image/jpeg','red-planet.jpg','','','',0,'1.0',20946,'',0,20199,'Test Test','2017-11-21 06:17:15'),('73898ed2-7452-460a-ac0a-8d132f62244f',20618,20182,20155,20199,'Test Test','2014-01-17 14:55:46','2014-01-17 14:55:46',20182,20597,20617,'/20597/','jpg','image/jpeg','marathon-rocket.jpg','','','',0,'1.0',31369,'',0,20199,'Test Test','2017-11-21 06:17:15');
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfolder`
--

LOCK TABLES `dlfolder` WRITE;
/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
INSERT INTO `dlfolder` VALUES ('0fd1d1f0-092c-6943-ca5c-bbcd3337361e',20560,20182,20155,20159,'','2017-11-21 06:14:35','2017-11-21 06:14:35',20559,1,0,'/20560/','20','','2017-11-21 06:14:36',0,1,0,0,0,'',NULL),('c788e52e-ca57-4d3c-4cc8-092e4480bfc6',20561,20182,20155,20199,'Test Test','2017-11-21 06:14:36','2017-11-21 06:14:36',20559,0,20560,'/20560/20561/','20199','','2017-11-21 06:15:46',0,0,0,0,0,'',NULL),('3c66edae-1984-0c4f-87d1-0d4d7a4a60c3',20562,20182,20155,20199,'Test Test','2017-11-21 06:14:36','2017-11-21 06:14:36',20559,0,20561,'/20560/20561/20562/','1db25597ffc920e0a2e046daa0eb47f628da8797c0807e4027b8b5cb494f0d63','','2017-11-21 06:17:00',0,0,0,0,0,'',NULL),('cf62161e-a11a-7c78-d06c-eabfea306fe5',20567,20182,20155,20199,'Test Test','2017-11-21 06:15:45','2017-11-21 06:15:45',20559,0,20561,'/20560/20561/20567/','c04f8cdb685f7b905abc9e7e323c800ff8d08c2936c6b5ca153edfdd90850a0f','','2017-11-21 06:15:45',0,0,0,0,0,'',NULL),('ff3d55f9-642d-369f-32f6-d2d037c4e90c',20568,20182,20155,20199,'Test Test','2017-11-21 06:15:46','2017-11-21 06:15:46',20559,0,20561,'/20560/20561/20568/','61678485da704f75a94d80b73ed9ea082d2afb4f936a86659b28be5cf0520268','','2017-11-21 06:16:08',0,0,0,0,0,'',NULL),('18ee7eef-bdc3-9012-1017-06e98a017b04',20580,20182,20155,20159,'','2017-11-21 06:17:13','2017-11-21 06:17:13',20579,1,0,'/20580/','189','','2017-11-21 06:17:13',0,1,0,0,0,'',NULL),('8727a267-5171-e688-7f70-02162689a95f',20581,20182,20155,20199,'Test Test','2017-11-21 06:17:13','2017-11-21 06:17:13',20579,0,20580,'/20580/20581/','20578','','2017-11-21 06:17:13',0,0,0,0,0,'',NULL),('d2fec023-3554-43bd-a296-dc387003a163',20597,20182,20155,20199,'Test Test','2014-01-02 15:52:34','2014-01-02 15:52:34',20182,0,0,'/20597/','content-images','','2017-11-21 06:17:15',0,0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlsyncevent`
--

DROP TABLE IF EXISTS `dlsyncevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlsyncevent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlsyncevent`
--

LOCK TABLES `dlsyncevent` WRITE;
/*!40000 ALTER TABLE `dlsyncevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlsyncevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaddress`
--

LOCK TABLES `emailaddress` WRITE;
/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandocolumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandocolumn`
--

LOCK TABLES `expandocolumn` WRITE;
/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
INSERT INTO `expandocolumn` VALUES (20442,20155,20441,'accessSecret',15,'',''),(20443,20155,20441,'accessToken',15,'',''),(20444,20155,20441,'requestSecret',15,'',''),(20445,20155,20441,'requestToken',15,'',''),(20809,20155,20808,'comments-astronauts',15,'','index-type=true\n');
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandorow`
--

LOCK TABLES `expandorow` WRITE;
/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
INSERT INTO `expandorow` VALUES (20810,20155,'2017-11-21 07:20:20',20808,20199);
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandotable`
--

LOCK TABLES `expandotable` WRITE;
/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
INSERT INTO `expandotable` VALUES (20591,20155,20002,'CUSTOM_FIELDS'),(20526,20155,20002,'OPEN_SOCIAL_DATA_'),(20808,20155,20005,'CUSTOM_FIELDS'),(20441,20155,20005,'MP'),(20527,20155,20005,'OPEN_SOCIAL_DATA_'),(20595,20155,20011,'CUSTOM_FIELDS'),(20590,20155,20012,'CUSTOM_FIELDS'),(20596,20155,20013,'CUSTOM_FIELDS'),(20594,20155,20031,'CUSTOM_FIELDS'),(20593,20155,20102,'CUSTOM_FIELDS'),(20589,20155,20104,'CUSTOM_FIELDS'),(20592,20155,20109,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandovalue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandovalue`
--

LOCK TABLES `expandovalue` WRITE;
/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
INSERT INTO `expandovalue` VALUES (20811,20155,20808,20809,20810,20005,20199,'I\'ve loved astronauts since I was a child!');
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_`
--

DROP TABLE IF EXISTS `group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`),
  KEY `IX_DDC91A87` (`companyId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_`
--

LOCK TABLES `group_` WRITE;
/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` VALUES ('c285491d-e435-6f03-bdc4-76e6bae51383',20173,20155,20159,20001,20173,0,0,'/20173/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('e1c9d46d-1457-ec2c-b689-160bb2f2c0f0',20182,20155,20159,20001,20182,0,0,'/20182/','Guest','',1,'mergeGuestPublicPages=false\n',1,0,'/guest',1,0,1),('d7c89b7e-4a3c-e0f1-7e8a-796bebff8147',20192,20155,20159,20191,20159,0,0,'/20192/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('0dab187e-1ecb-282a-be1e-261843c8ff1e',20195,20155,20159,20025,20155,0,0,'/20195/','20155','',0,'',1,0,'/global',1,0,1),('d3172156-2ea4-be24-fbbc-353165a45942',20201,20155,20199,20005,20199,0,0,'/20201/','20199','',0,'',1,0,'/test',0,0,1),('1272c102-4df8-1f13-07f2-8e12b91b595a',20317,20155,20159,20032,20316,0,0,'/20317/','20316','',0,'',1,0,'/template-20316',0,0,1),('900b6ab4-437b-2234-c107-9c309ab02c64',20329,20155,20159,20032,20328,0,0,'/20329/','20328','',0,'',1,0,'/template-20328',0,0,1),('aa33e2e9-f7e1-1379-5990-959aaff0b275',20339,20155,20159,20032,20338,0,0,'/20339/','20338','',0,'',1,0,'/template-20338',0,0,1),('32d6e0fa-f0f9-bd40-916f-4a865a8df5bc',20350,20155,20159,20036,20349,0,0,'/20350/','20349','',0,'',1,0,'/template-20349',0,0,1),('b5197fd6-a145-4eb1-7b59-66f15355aa05',20376,20155,20159,20036,20375,0,0,'/20376/','20375','',0,'',1,0,'/template-20375',0,0,1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_orgs`
--

LOCK TABLES `groups_orgs` WRITE;
/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_roles`
--

LOCK TABLES `groups_roles` WRITE;
/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_usergroups`
--

LOCK TABLES `groups_usergroups` WRITE;
/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (20773,'2017-11-21 06:20:51','jpg',350,1068,77403),(20776,'2017-11-21 06:20:51','jpg',292,468,23048),(20785,'2017-11-21 06:21:25','jpg',350,1068,77403),(20786,'2017-11-21 06:21:25','jpg',350,1068,77403),(20787,'2017-11-21 06:21:25','jpg',292,468,23048),(20788,'2017-11-21 06:21:25','jpg',292,468,23048),(20789,'2017-11-21 06:21:25','jpg',288,432,64005);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_manufacturer`
--

DROP TABLE IF EXISTS `inventory_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_manufacturer` (
  `uuid_` varchar(75) DEFAULT NULL,
  `manufacturerId` bigint(20) NOT NULL,
  `partId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `website` varchar(75) DEFAULT NULL,
  `phoneNumber` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`manufacturerId`),
  UNIQUE KEY `IX_51865A50` (`uuid_`,`groupId`),
  KEY `IX_DBC67110` (`groupId`),
  KEY `IX_B74A9FF6` (`groupId`,`status`),
  KEY `IX_92591DC0` (`status`),
  KEY `IX_78E5079A` (`uuid_`),
  KEY `IX_CFD8184E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_manufacturer`
--

LOCK TABLES `inventory_manufacturer` WRITE;
/*!40000 ALTER TABLE `inventory_manufacturer` DISABLE KEYS */;
INSERT INTO `inventory_manufacturer` VALUES ('264fb33b-4055-9558-8c2d-27fa337cb926',1,0,20155,20182,20199,'2017-11-21 07:30:30','2017-11-21 07:30:30','Iram Shaikh','xyz@gmail.com','www.iramshaikh.com','09004142924',0,20199,'Test Test','2017-11-21 07:30:30','Test Test');
/*!40000 ALTER TABLE `inventory_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_part`
--

DROP TABLE IF EXISTS `inventory_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_part` (
  `uuid_` varchar(75) DEFAULT NULL,
  `partId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `manufacturerId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  `name` longtext,
  `partNumber` varchar(75) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`partId`),
  UNIQUE KEY `IX_1F36C8F2` (`uuid_`,`groupId`),
  KEY `IX_F67A54AE` (`groupId`),
  KEY `IX_9FA80594` (`groupId`,`status`),
  KEY `IX_F67CB96E` (`manufacturerId`,`groupId`),
  KEY `IX_7FD93AB8` (`uuid_`),
  KEY `IX_F3276670` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_part`
--

LOCK TABLES `inventory_part` WRITE;
/*!40000 ALTER TABLE `inventory_part` DISABLE KEYS */;
INSERT INTO `inventory_part` VALUES ('bea95ed8-2044-6fba-bd70-fd35bd65895f',1,'2017-11-21 07:30:58','2017-11-21 07:30:58',20155,20182,20199,1,0,20199,'Test Test','2017-11-21 07:30:58','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Iram</Name></root>','101','2017-11-15 00:00:00',1,'Test Test');
/*!40000 ALTER TABLE `inventory_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_purchaseorder`
--

DROP TABLE IF EXISTS `inventory_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_purchaseorder` (
  `orderId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `partId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `closed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_purchaseorder`
--

LOCK TABLES `inventory_purchaseorder` WRITE;
/*!40000 ALTER TABLE `inventory_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_71520099` (`uuid_`,`companyId`),
  KEY `IX_FF0E7A72` (`classNameId`,`templateId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticle`
--

LOCK TABLES `journalarticle` WRITE;
/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
INSERT INTO `journalarticle` VALUES ('3b256bb3-21fc-987c-0a6b-f29c9996658f',20633,20634,20182,20155,20199,'Test Test','2014-01-02 15:54:54','2014-01-02 15:54:54',20625,0,0,'/20625/','20632',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Mars</Title></root>','mars','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1>Mars</h1>\n\n<p>Mars is the fourth planet from the Sun in the Solar System. Named after the Roman god of war, it is often described as the \"Red Planet\", as the iron oxide prevalent on its surface gives it a reddish appearance. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the&nbsp;</p>\n<img alt=\"\" src=\"/documents/20182/20597/red-planet.jpg/2c49679f-c6b8-4383-8889-86a63e63494a?t=1388678057873\" style=\"width: 400px; height: 209px; float: right; margin: 2px;\" />\n<p>Moon and the volcanoes, valleys, deserts, and polar ice caps of Earth. The rotational period and seasonal cycles of Mars are likewise similar to those of Earth, as is the tilt that produces the seasons. Mars is the site of Olympus Mons, the highest known mountain within the Solar System, and of Valles Marineris, one of the largest canyons. The smooth Borealis basin in the northern hemisphere covers 40% of the planet and may be a giant impact feature. Mars has two moons, Phobos and Deimos, which are small and irregularly shaped. These may be captured asteroids, similar to 5261 Eureka, a Martian trojan asteroid.</p>\n\n<h2>Water on Mars</h2>\n\n<p>Until the first successful flyby of Mars occurred in 1965 by Mariner 4, many speculated about the presence of liquid water on the planet\'s surface. This was based on observed periodic variations in light and dark patches, particularly in the polar latitudes, which appeared to be seas and continents; long, dark striations were interpreted by some as irrigation channels for liquid water. These straight line features were later explained as optical illusions, though geological evidence gathered by unmanned missions suggest that Mars once had large-scale water coverage on its surface. In 2005, radar data revealed the presence of large quantities of water ice at the poles and at mid-latitudes. The Mars rover Spirit sampled chemical compounds containing water molecules in March 2007. The Phoenix lander directly sampled water ice in shallow Martian soil on July 31, 2008.</p>\n\n<p>source: http://en.wikipedia.org/wiki/Mars</p>]]></static-content>\n</root>','general','','','','2014-01-02 15:53:00',NULL,NULL,1,0,20635,'',0,20199,'Test Test','2014-01-02 15:54:54'),('eee702a7-be98-e084-03bd-91dd7a1b7833',20642,20643,20182,20155,20199,'Test Test','2014-01-02 16:26:24','2014-01-02 16:26:24',20625,0,0,'/20625/','20641',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Outer Space</Title></root>','outer-space','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1 style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">Outer Space</h1>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">Outer space, or simply&nbsp;space, is the void that exists between&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Celestial_bodies\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Celestial bodies\"><span style=\"color:#000000;\">celestial bodies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, including the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Earth\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Earth\"><span style=\"color:#000000;\">Earth</span></a><span style=\"color: rgb(0, 0, 0);\"><font size=\"2\"><span style=\"line-height: 19.1875px;\">.</span></font><span style=\"font-size: 11.111111640930176px; line-height: 10.815972328186035px;\">&nbsp;</span></span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">It is not completely empty, but consists of a&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Hard_vacuum\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hard vacuum\"><span style=\"color:#000000;\">hard vacuum</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;containing a low density of particles: predominantly a&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Plasma_(physics)\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Plasma (physics)\"><span style=\"color:#000000;\">plasma</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Hydrogen\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hydrogen\"><span style=\"color:#000000;\">hydrogen</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Helium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Helium\"><span style=\"color:#000000;\">helium</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, as well as&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Electromagnetic_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic radiation\"><span style=\"color:#000000;\">electromagnetic radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Magnetic_field\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Magnetic field\"><span style=\"color:#000000;\">magnetic fields</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_neutrino_background\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic neutrino background\"><span style=\"color:#000000;\">neutrinos</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_dust\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic dust\"><span style=\"color:#000000;\">dust</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Cosmic_rays\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic rays\"><span style=\"color:#000000;\">cosmic rays</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. The baseline temperature, as set by the</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_background_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic background radiation\"><span style=\"color:#000000;\">background radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;from the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Big_Bang\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Big Bang\"><span style=\"color:#000000;\">Big Bang</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, is 2.7&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Kelvin\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Kelvin\"><span style=\"color:#000000;\">kelvin</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;(K).</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Plasma with a density of less than one hydrogen atom per cubic meter and a temperature of millions of kelvin in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Warm-hot_intergalactic_medium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Warm-hot intergalactic medium\"><span style=\"color:#000000;\">space between galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;accounts for most of the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Baryonic_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Baryonic matter\"><span style=\"color:#000000;\">baryonic (ordinary) matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">in outer space; local concentrations have condensed into&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Star\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Star\"><span style=\"color:#000000;\">stars</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Galaxy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Galaxy\"><span style=\"color:#000000;\">galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. In most galaxies, observations provide evidence that 90% of the mass is in an unknown form, called&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark matter\"><span style=\"color:#000000;\">dark matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, which interacts with other matter through&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Gravitation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Gravitation\"><span style=\"color:#000000;\">gravitational</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;but not</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Electromagnetic_force\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic force\"><span style=\"color:#000000;\">electromagnetic</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;forces.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Data indicates that the majority of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Mass%E2%80%93energy_equivalence\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Mass–energy equivalence\"><span style=\"color:#000000;\">mass-energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Observable_Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Observable Universe\"><span style=\"color:#000000;\">observable Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;is a poorly understood&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Vacuum_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Vacuum energy\"><span style=\"color:#000000;\">vacuum energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of space which astronomers label&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark energy\"><span style=\"color:#000000;\">dark energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Intergalactic space takes up most of the volume of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Universe\"><span style=\"color:#000000;\">Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, but even galaxies and star systems consist almost entirely of empty space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><img alt=\"\" src=\"/documents/20182/20597/space.jpg/2b93a38a-24bd-472d-a2b2-148d1bd25da3?t=1388679978574\" style=\"width: 640px; height: 350px;\" /></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">There is no firm boundary where space begins. However the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/K%C3%A1rm%C3%A1n_line\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Kármán line\"><span style=\"color:#000000;\">Kármán line</span></a><span style=\"color:#000000;\">, at an altitude of 100&nbsp;km (62&nbsp;mi) above&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Sea_level\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Sea level\"><span style=\"color:#000000;\">sea level</span></a><span style=\"color:#000000;\">,</span><span style=\"color:#000000;\">&nbsp;is conventionally used as the start of outer space in space treaties and for aerospace records keeping. The framework for international&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Space_law\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Space law\"><span style=\"color:#000000;\">space law</span></a><span style=\"color:#000000;\">&nbsp;was established by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Outer_Space_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Outer Space Treaty\"><span style=\"color:#000000;\">Outer Space Treaty</span></a><span style=\"color:#000000;\">, which was passed by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/United_Nations\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"United Nations\"><span style=\"color:#000000;\">United Nations</span></a><span style=\"color:#000000;\">&nbsp;in 1967. This treaty precludes any claims of national sovereignty and permits all states to freely explore outer space. In 1979, the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon Treaty\"><span style=\"color:#000000;\">Moon Treaty</span></a><span style=\"color:#000000;\">&nbsp;made the surfaces of objects such as planets, as well as the orbital space around these bodies, the jurisdiction of the international community. Despite the drafting of UN resolutions for the peaceful uses of outer space,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Anti-satellite_weapon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Anti-satellite weapon\"><span style=\"color:#000000;\">anti-satellite weapons</span></a><span style=\"color:#000000;\">have been tested in Earth orbit.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">Humans began the physical exploration of space during the 20th century with the advent of high-altitude&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Balloon_(aircraft)\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Balloon (aircraft)\"><span style=\"color:#000000;\">balloon flights</span></a><span style=\"color:#000000;\">, followed by manned&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Rocket_launch\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Rocket launch\"><span style=\"color:#000000;\">rocket launches</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Earth orbit\"><span style=\"color:#000000;\">Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;was first achieved by&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Yuri_Gagarin\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Yuri Gagarin\"><span style=\"color:#000000;\">Yuri Gagarin</span></a><span style=\"color:#000000;\">&nbsp;of the Soviet Union in 1961 and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Unmanned_spacecraft\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Unmanned spacecraft\"><span style=\"color:#000000;\">unmanned spacecraft</span></a><span style=\"color:#000000;\">&nbsp;have since reached all of the known&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Planet\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Planet\"><span style=\"color:#000000;\">planets</span></a><span style=\"color:#000000;\">&nbsp;in the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Solar_System\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Solar System\"><span style=\"color:#000000;\">Solar System</span></a><span style=\"color:#000000;\">. Achieving&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Low_Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Low Earth orbit\"><span style=\"color:#000000;\">low Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;requires a minimum velocity of 28,100&nbsp;km/h (17,500&nbsp;mph), much faster than any conventional aircraft. Outer space represents a challenging environment for human exploration because of the dual hazards of vacuum and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Radiation\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Radiation\"><span style=\"color:#000000;\">radiation</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Microgravity\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Microgravity\"><span style=\"color:#000000;\">Microgravity</span></a><span style=\"color:#000000;\">&nbsp;has a negative effect on human&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Physiology\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Physiology\"><span style=\"color:#000000;\">physiology</span></a><span style=\"color:#000000;\">, causing&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Muscle_atrophy\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Muscle atrophy\"><span style=\"color:#000000;\">muscle atrophy</span></a><span style=\"color:#000000;\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight_osteopenia\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight osteopenia\"><span style=\"color:#000000;\">bone loss</span></a><span style=\"color:#000000;\">.&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight\"><span style=\"color:#000000;\">Space travel</span></a><span style=\"color:#000000;\">&nbsp;has been limited to low Earth orbit and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon\"><span style=\"color:#000000;\">Moon</span></a><span style=\"color:#000000;\">&nbsp;for manned flight, and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_program\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager program\"><span style=\"color:#000000;\">vicinity of the Solar System</span></a><span style=\"color:#000000;\">&nbsp;for unmanned vehicles. In August 2012,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_1\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager 1\"><span style=\"color:#000000;\">Voyager 1</span></a><span style=\"color:#000000;\">&nbsp;became the first man-made craft to enter interstellar space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">source:&nbsp;http://en.wikipedia.org/wiki/Outer_space</p>]]></static-content>\n</root>','general','','','','2014-01-02 16:22:00',NULL,NULL,1,0,20644,'',0,20199,'Test Test','2014-01-02 16:26:24'),('bed4326a-fb26-c064-b82d-c20d311b1485',20651,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2014-01-09 17:55:08',0,0,0,'/0/','20650',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"r6Pi\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"daED\">\n			<dynamic-content language-id=\"en_US\" id=\"10701\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"WmuE\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"VuFp\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10700\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"1\" type=\"image\" index-type=\"keyword\" instance-id=\"H11y\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"rf5U\">\n			<dynamic-content language-id=\"en_US\" id=\"10701\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"aYkZ\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"RTYa\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10702\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"2\" type=\"image\" index-type=\"keyword\" instance-id=\"cqCd\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"QnrJ\">\n			<dynamic-content language-id=\"en_US\" id=\"10701\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"Dt0o\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"FGFr\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10703\"></dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,20665,'',0,20199,'Test Test','2014-01-09 17:55:08'),('11154cc7-6e85-9c19-22c7-6d7b080b6ed9',20671,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2014-01-02 16:08:19',20627,0,0,'/20627/','20650',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"qHFe\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"LcBO\">\n			<dynamic-content language-id=\"en_US\" id=\"10713\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"t0Lr\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[Learn more about outer space.]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"9Wpk\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10712\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"1\" type=\"image\" index-type=\"keyword\" instance-id=\"9PWb\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"KKPJ\">\n			<dynamic-content language-id=\"en_US\" id=\"10713\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"GRCz\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[Learn more about Mars.]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"cugS\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10714\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"2\" type=\"image\" index-type=\"keyword\" instance-id=\"eazv\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"67qd\">\n			<dynamic-content language-id=\"en_US\" id=\"10713\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"KbKo\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[Learn more about Space Program operations on Earth.]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"MQqo\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10715\"></dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-02 16:08:19'),('e7abd87c-d833-2544-4bbf-b77b064caf23',20684,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2014-01-02 18:41:07',0,0,0,'/0/','20650',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"b44p\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"UQLM\">\n			<dynamic-content language-id=\"en_US\" id=\"10718\">/image/journal/article?img_id=10718&amp;t=1406826139796</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"sk2D\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"TN0s\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10717\">/image/journal/article?img_id=10717&amp;t=1406826139773</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"1\" type=\"image\" index-type=\"keyword\" instance-id=\"GWRx\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"pVbd\">\n			<dynamic-content language-id=\"en_US\" id=\"10718\">/image/journal/article?img_id=10718&amp;t=1406826139835</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"WIIu\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"Wy8p\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10719\">/image/journal/article?img_id=10719&amp;t=1406826139818</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"2\" type=\"image\" index-type=\"keyword\" instance-id=\"M8yu\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"THFi\">\n			<dynamic-content language-id=\"en_US\" id=\"10718\">/image/journal/article?img_id=10718&amp;t=1406826139875</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"4zLI\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"rHrs\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10720\">/image/journal/article?img_id=10720&amp;t=1406826139858</dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-02 18:41:07'),('4de6a1c5-e354-220f-61e9-a61759c30fbe',20697,20634,20182,20155,20199,'Test Test','2014-01-02 15:54:54','2014-01-09 18:56:16',20625,0,0,'/20625/','20632',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Mars</Title></root>','mars','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1>Mars</h1>\n\n<p>Mars is the fourth planet from the Sun in the Solar System. Named after the Roman god of war, it is often described as the \"Red Planet\", as the iron oxide prevalent on its surface gives it a reddish appearance. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the&nbsp;</p>\n<img alt=\"\" src=\"/documents/20182/20597/red-planet.jpg/2c49679f-c6b8-4383-8889-86a63e63494a?t=1388678057873\" style=\"width: 400px; height: 209px; float: right; margin: 2px;\" />\n<p>Moon and the volcanoes, valleys, deserts, and polar ice caps of Earth. The rotational period and seasonal cycles of Mars are likewise similar to those of Earth, as is the tilt that produces the seasons. Mars is the site of Olympus Mons, the highest known mountain within the Solar System, and of Valles Marineris, one of the largest canyons. The smooth Borealis basin in the northern hemisphere covers 40% of the planet and may be a giant impact feature. Mars has two moons, Phobos and Deimos, which are small and irregularly shaped. These may be captured asteroids, similar to 5261 Eureka, a Martian trojan asteroid.</p>\n\n<h2>Water on Mars</h2>\n\n<p>Until the first successful flyby of Mars occurred in 1965 by Mariner 4, many speculated about the presence of liquid water on the planet\'s surface. This was based on observed periodic variations in light and dark patches, particularly in the polar latitudes, which appeared to be seas and continents; long, dark striations were interpreted by some as irrigation channels for liquid water. These straight line features were later explained as optical illusions, though geological evidence gathered by unmanned missions suggest that Mars once had large-scale water coverage on its surface. In 2005, radar data revealed the presence of large quantities of water ice at the poles and at mid-latitudes. The Mars rover Spirit sampled chemical compounds containing water molecules in March 2007. The Phoenix lander directly sampled water ice in shallow Martian soil on July 31, 2008.</p>\n\n<p>source: http://en.wikipedia.org/wiki/Mars</p>]]></static-content>\n</root>','general','','','','2014-01-02 15:53:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-09 18:56:16'),('c8041d0f-412a-5efa-1a4e-66a3701ec5eb',20701,20643,20182,20155,20199,'Test Test','2014-01-02 16:26:24','2014-01-09 18:56:30',20625,0,0,'/20625/','20641',1.2,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Outer Space</Title></root>','outer-space','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1 style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">Outer Space</h1>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">Outer space, or simply&nbsp;space, is the void that exists between&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Celestial_bodies\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Celestial bodies\"><span style=\"color:#000000;\">celestial bodies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, including the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Earth\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Earth\"><span style=\"color:#000000;\">Earth</span></a><span style=\"color: rgb(0, 0, 0);\"><font size=\"2\"><span style=\"line-height: 19.1875px;\">.</span></font><span style=\"font-size: 11.111111640930176px; line-height: 10.815972328186035px;\">&nbsp;</span></span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">It is not completely empty, but consists of a&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Hard_vacuum\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hard vacuum\"><span style=\"color:#000000;\">hard vacuum</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;containing a low density of particles: predominantly a&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Plasma_(physics)\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Plasma (physics)\"><span style=\"color:#000000;\">plasma</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Hydrogen\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hydrogen\"><span style=\"color:#000000;\">hydrogen</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Helium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Helium\"><span style=\"color:#000000;\">helium</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, as well as&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Electromagnetic_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic radiation\"><span style=\"color:#000000;\">electromagnetic radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Magnetic_field\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Magnetic field\"><span style=\"color:#000000;\">magnetic fields</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_neutrino_background\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic neutrino background\"><span style=\"color:#000000;\">neutrinos</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_dust\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic dust\"><span style=\"color:#000000;\">dust</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Cosmic_rays\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic rays\"><span style=\"color:#000000;\">cosmic rays</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. The baseline temperature, as set by the</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_background_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic background radiation\"><span style=\"color:#000000;\">background radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;from the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Big_Bang\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Big Bang\"><span style=\"color:#000000;\">Big Bang</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, is 2.7&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Kelvin\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Kelvin\"><span style=\"color:#000000;\">kelvin</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;(K).</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Plasma with a density of less than one hydrogen atom per cubic meter and a temperature of millions of kelvin in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Warm-hot_intergalactic_medium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Warm-hot intergalactic medium\"><span style=\"color:#000000;\">space between galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;accounts for most of the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Baryonic_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Baryonic matter\"><span style=\"color:#000000;\">baryonic (ordinary) matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">in outer space; local concentrations have condensed into&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Star\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Star\"><span style=\"color:#000000;\">stars</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Galaxy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Galaxy\"><span style=\"color:#000000;\">galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. In most galaxies, observations provide evidence that 90% of the mass is in an unknown form, called&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark matter\"><span style=\"color:#000000;\">dark matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, which interacts with other matter through&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Gravitation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Gravitation\"><span style=\"color:#000000;\">gravitational</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;but not</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Electromagnetic_force\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic force\"><span style=\"color:#000000;\">electromagnetic</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;forces.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Data indicates that the majority of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Mass%E2%80%93energy_equivalence\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Mass–energy equivalence\"><span style=\"color:#000000;\">mass-energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Observable_Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Observable Universe\"><span style=\"color:#000000;\">observable Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;is a poorly understood&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Vacuum_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Vacuum energy\"><span style=\"color:#000000;\">vacuum energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of space which astronomers label&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark energy\"><span style=\"color:#000000;\">dark energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Intergalactic space takes up most of the volume of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Universe\"><span style=\"color:#000000;\">Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, but even galaxies and star systems consist almost entirely of empty space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><img alt=\"\" src=\"/documents/20182/20597/space.jpg/2b93a38a-24bd-472d-a2b2-148d1bd25da3?t=1388679978574\" style=\"width: 640px; height: 350px;\" /></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">There is no firm boundary where space begins. However the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/K%C3%A1rm%C3%A1n_line\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Kármán line\"><span style=\"color:#000000;\">Kármán line</span></a><span style=\"color:#000000;\">, at an altitude of 100&nbsp;km (62&nbsp;mi) above&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Sea_level\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Sea level\"><span style=\"color:#000000;\">sea level</span></a><span style=\"color:#000000;\">,</span><span style=\"color:#000000;\">&nbsp;is conventionally used as the start of outer space in space treaties and for aerospace records keeping. The framework for international&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Space_law\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Space law\"><span style=\"color:#000000;\">space law</span></a><span style=\"color:#000000;\">&nbsp;was established by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Outer_Space_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Outer Space Treaty\"><span style=\"color:#000000;\">Outer Space Treaty</span></a><span style=\"color:#000000;\">, which was passed by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/United_Nations\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"United Nations\"><span style=\"color:#000000;\">United Nations</span></a><span style=\"color:#000000;\">&nbsp;in 1967. This treaty precludes any claims of national sovereignty and permits all states to freely explore outer space. In 1979, the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon Treaty\"><span style=\"color:#000000;\">Moon Treaty</span></a><span style=\"color:#000000;\">&nbsp;made the surfaces of objects such as planets, as well as the orbital space around these bodies, the jurisdiction of the international community. Despite the drafting of UN resolutions for the peaceful uses of outer space,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Anti-satellite_weapon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Anti-satellite weapon\"><span style=\"color:#000000;\">anti-satellite weapons</span></a><span style=\"color:#000000;\">have been tested in Earth orbit.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">Humans began the physical exploration of space during the 20th century with the advent of high-altitude&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Balloon_(aircraft)\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Balloon (aircraft)\"><span style=\"color:#000000;\">balloon flights</span></a><span style=\"color:#000000;\">, followed by manned&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Rocket_launch\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Rocket launch\"><span style=\"color:#000000;\">rocket launches</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Earth orbit\"><span style=\"color:#000000;\">Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;was first achieved by&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Yuri_Gagarin\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Yuri Gagarin\"><span style=\"color:#000000;\">Yuri Gagarin</span></a><span style=\"color:#000000;\">&nbsp;of the Soviet Union in 1961 and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Unmanned_spacecraft\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Unmanned spacecraft\"><span style=\"color:#000000;\">unmanned spacecraft</span></a><span style=\"color:#000000;\">&nbsp;have since reached all of the known&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Planet\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Planet\"><span style=\"color:#000000;\">planets</span></a><span style=\"color:#000000;\">&nbsp;in the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Solar_System\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Solar System\"><span style=\"color:#000000;\">Solar System</span></a><span style=\"color:#000000;\">. Achieving&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Low_Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Low Earth orbit\"><span style=\"color:#000000;\">low Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;requires a minimum velocity of 28,100&nbsp;km/h (17,500&nbsp;mph), much faster than any conventional aircraft. Outer space represents a challenging environment for human exploration because of the dual hazards of vacuum and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Radiation\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Radiation\"><span style=\"color:#000000;\">radiation</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Microgravity\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Microgravity\"><span style=\"color:#000000;\">Microgravity</span></a><span style=\"color:#000000;\">&nbsp;has a negative effect on human&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Physiology\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Physiology\"><span style=\"color:#000000;\">physiology</span></a><span style=\"color:#000000;\">, causing&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Muscle_atrophy\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Muscle atrophy\"><span style=\"color:#000000;\">muscle atrophy</span></a><span style=\"color:#000000;\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight_osteopenia\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight osteopenia\"><span style=\"color:#000000;\">bone loss</span></a><span style=\"color:#000000;\">.&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight\"><span style=\"color:#000000;\">Space travel</span></a><span style=\"color:#000000;\">&nbsp;has been limited to low Earth orbit and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon\"><span style=\"color:#000000;\">Moon</span></a><span style=\"color:#000000;\">&nbsp;for manned flight, and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_program\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager program\"><span style=\"color:#000000;\">vicinity of the Solar System</span></a><span style=\"color:#000000;\">&nbsp;for unmanned vehicles. In August 2012,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_1\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager 1\"><span style=\"color:#000000;\">Voyager 1</span></a><span style=\"color:#000000;\">&nbsp;became the first man-made craft to enter interstellar space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">source:&nbsp;http://en.wikipedia.org/wiki/Outer_space</p>]]></static-content>\n</root>','general','','','','2014-01-02 16:22:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-09 18:56:30'),('f7e00e41-d024-0255-d6dc-10839c56ce8e',20705,20643,20182,20155,20199,'Test Test','2014-01-02 16:26:24','2014-01-02 19:54:21',20625,0,0,'/20625/','20641',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Outer Space</Title></root>','outer-space','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1 style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">Outer Space</h1>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">Outer space, or simply&nbsp;space, is the void that exists between&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Celestial_bodies\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Celestial bodies\"><span style=\"color:#000000;\">celestial bodies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, including the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Earth\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Earth\"><span style=\"color:#000000;\">Earth</span></a><span style=\"color: rgb(0, 0, 0);\"><font size=\"2\"><span style=\"line-height: 19.1875px;\">.</span></font><span style=\"font-size: 11.111111640930176px; line-height: 10.815972328186035px;\">&nbsp;</span></span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">It is not completely empty, but consists of a&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Hard_vacuum\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hard vacuum\"><span style=\"color:#000000;\">hard vacuum</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;containing a low density of particles: predominantly a&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Plasma_(physics)\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Plasma (physics)\"><span style=\"color:#000000;\">plasma</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Hydrogen\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Hydrogen\"><span style=\"color:#000000;\">hydrogen</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Helium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Helium\"><span style=\"color:#000000;\">helium</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, as well as&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Electromagnetic_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic radiation\"><span style=\"color:#000000;\">electromagnetic radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Magnetic_field\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Magnetic field\"><span style=\"color:#000000;\">magnetic fields</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_neutrino_background\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic neutrino background\"><span style=\"color:#000000;\">neutrinos</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_dust\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic dust\"><span style=\"color:#000000;\">dust</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Cosmic_rays\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic rays\"><span style=\"color:#000000;\">cosmic rays</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. The baseline temperature, as set by the</span><a href=\"http://en.wikipedia.org/wiki/Cosmic_background_radiation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Cosmic background radiation\"><span style=\"color:#000000;\">background radiation</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;from the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Big_Bang\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Big Bang\"><span style=\"color:#000000;\">Big Bang</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, is 2.7&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Kelvin\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Kelvin\"><span style=\"color:#000000;\">kelvin</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;(K).</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Plasma with a density of less than one hydrogen atom per cubic meter and a temperature of millions of kelvin in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Warm-hot_intergalactic_medium\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Warm-hot intergalactic medium\"><span style=\"color:#000000;\">space between galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;accounts for most of the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Baryonic_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Baryonic matter\"><span style=\"color:#000000;\">baryonic (ordinary) matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">in outer space; local concentrations have condensed into&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Star\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Star\"><span style=\"color:#000000;\">stars</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Galaxy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Galaxy\"><span style=\"color:#000000;\">galaxies</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">. In most galaxies, observations provide evidence that 90% of the mass is in an unknown form, called&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_matter\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark matter\"><span style=\"color:#000000;\">dark matter</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, which interacts with other matter through&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Gravitation\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Gravitation\"><span style=\"color:#000000;\">gravitational</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;but not</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Electromagnetic_force\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Electromagnetic force\"><span style=\"color:#000000;\">electromagnetic</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;forces.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Data indicates that the majority of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Mass%E2%80%93energy_equivalence\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Mass–energy equivalence\"><span style=\"color:#000000;\">mass-energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;in the&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Observable_Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Observable Universe\"><span style=\"color:#000000;\">observable Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;is a poorly understood&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Vacuum_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Vacuum energy\"><span style=\"color:#000000;\">vacuum energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;of space which astronomers label&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Dark_energy\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Dark energy\"><span style=\"color:#000000;\">dark energy</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">.</span><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">&nbsp;Intergalactic space takes up most of the volume of the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Universe\" style=\"font-size: 13px; line-height: 19.1875px; text-decoration: none; color: rgb(11, 0, 128); background-image: none;\" title=\"Universe\"><span style=\"color:#000000;\">Universe</span></a><span style=\"font-size: 13px; line-height: 19.1875px; color: rgb(0, 0, 0);\">, but even galaxies and star systems consist almost entirely of empty space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; font-family: sans-serif;\"><img alt=\"\" src=\"/documents/20182/20597/space.jpg/2b93a38a-24bd-472d-a2b2-148d1bd25da3?t=1388679978574\" style=\"width: 640px; height: 350px;\" /></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">There is no firm boundary where space begins. However the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/K%C3%A1rm%C3%A1n_line\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Kármán line\"><span style=\"color:#000000;\">Kármán line</span></a><span style=\"color:#000000;\">, at an altitude of 100&nbsp;km (62&nbsp;mi) above&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Sea_level\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Sea level\"><span style=\"color:#000000;\">sea level</span></a><span style=\"color:#000000;\">,</span><span style=\"color:#000000;\">&nbsp;is conventionally used as the start of outer space in space treaties and for aerospace records keeping. The framework for international&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Space_law\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Space law\"><span style=\"color:#000000;\">space law</span></a><span style=\"color:#000000;\">&nbsp;was established by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Outer_Space_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Outer Space Treaty\"><span style=\"color:#000000;\">Outer Space Treaty</span></a><span style=\"color:#000000;\">, which was passed by the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/United_Nations\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"United Nations\"><span style=\"color:#000000;\">United Nations</span></a><span style=\"color:#000000;\">&nbsp;in 1967. This treaty precludes any claims of national sovereignty and permits all states to freely explore outer space. In 1979, the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon_Treaty\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon Treaty\"><span style=\"color:#000000;\">Moon Treaty</span></a><span style=\"color:#000000;\">&nbsp;made the surfaces of objects such as planets, as well as the orbital space around these bodies, the jurisdiction of the international community. Despite the drafting of UN resolutions for the peaceful uses of outer space,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Anti-satellite_weapon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Anti-satellite weapon\"><span style=\"color:#000000;\">anti-satellite weapons</span></a><span style=\"color:#000000;\">have been tested in Earth orbit.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\"><span style=\"color:#000000;\">Humans began the physical exploration of space during the 20th century with the advent of high-altitude&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Balloon_(aircraft)\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Balloon (aircraft)\"><span style=\"color:#000000;\">balloon flights</span></a><span style=\"color:#000000;\">, followed by manned&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Rocket_launch\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Rocket launch\"><span style=\"color:#000000;\">rocket launches</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Earth orbit\"><span style=\"color:#000000;\">Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;was first achieved by&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Yuri_Gagarin\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Yuri Gagarin\"><span style=\"color:#000000;\">Yuri Gagarin</span></a><span style=\"color:#000000;\">&nbsp;of the Soviet Union in 1961 and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Unmanned_spacecraft\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Unmanned spacecraft\"><span style=\"color:#000000;\">unmanned spacecraft</span></a><span style=\"color:#000000;\">&nbsp;have since reached all of the known&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Planet\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Planet\"><span style=\"color:#000000;\">planets</span></a><span style=\"color:#000000;\">&nbsp;in the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Solar_System\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Solar System\"><span style=\"color:#000000;\">Solar System</span></a><span style=\"color:#000000;\">. Achieving&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Low_Earth_orbit\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Low Earth orbit\"><span style=\"color:#000000;\">low Earth orbit</span></a><span style=\"color:#000000;\">&nbsp;requires a minimum velocity of 28,100&nbsp;km/h (17,500&nbsp;mph), much faster than any conventional aircraft. Outer space represents a challenging environment for human exploration because of the dual hazards of vacuum and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Radiation\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Radiation\"><span style=\"color:#000000;\">radiation</span></a><span style=\"color:#000000;\">.&nbsp;</span><a class=\"mw-redirect\" href=\"http://en.wikipedia.org/wiki/Microgravity\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Microgravity\"><span style=\"color:#000000;\">Microgravity</span></a><span style=\"color:#000000;\">&nbsp;has a negative effect on human&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Physiology\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Physiology\"><span style=\"color:#000000;\">physiology</span></a><span style=\"color:#000000;\">, causing&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Muscle_atrophy\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Muscle atrophy\"><span style=\"color:#000000;\">muscle atrophy</span></a><span style=\"color:#000000;\">&nbsp;and&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight_osteopenia\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight osteopenia\"><span style=\"color:#000000;\">bone loss</span></a><span style=\"color:#000000;\">.&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Spaceflight\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Spaceflight\"><span style=\"color:#000000;\">Space travel</span></a><span style=\"color:#000000;\">&nbsp;has been limited to low Earth orbit and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Moon\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Moon\"><span style=\"color:#000000;\">Moon</span></a><span style=\"color:#000000;\">&nbsp;for manned flight, and the&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_program\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager program\"><span style=\"color:#000000;\">vicinity of the Solar System</span></a><span style=\"color:#000000;\">&nbsp;for unmanned vehicles. In August 2012,&nbsp;</span><a href=\"http://en.wikipedia.org/wiki/Voyager_1\" style=\"text-decoration: none; color: rgb(11, 0, 128); background-image: none; background-position: initial initial; background-repeat: initial initial;\" title=\"Voyager 1\"><span style=\"color:#000000;\">Voyager 1</span></a><span style=\"color:#000000;\">&nbsp;became the first man-made craft to enter interstellar space.</span></p>\n\n<p style=\"margin: 0.4em 0px 0.5em; line-height: 19.1875px; font-family: sans-serif; font-size: 13px;\">source:&nbsp;http://en.wikipedia.org/wiki/Outer_space</p>]]></static-content>\n</root>','general','','','','2014-01-02 16:22:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-02 19:54:21'),('32297663-ae86-7b5e-c3f4-56f048cafb7f',20706,20634,20182,20155,20199,'Test Test','2014-01-02 15:54:54','2014-01-02 19:54:46',20625,0,0,'/20625/','20632',1.1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Mars</Title></root>','mars','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<h1>Mars</h1>\n\n<p>Mars is the fourth planet from the Sun in the Solar System. Named after the Roman god of war, it is often described as the \"Red Planet\", as the iron oxide prevalent on its surface gives it a reddish appearance. Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the&nbsp;</p>\n<img alt=\"\" src=\"/documents/20182/20597/red-planet.jpg/2c49679f-c6b8-4383-8889-86a63e63494a?t=1388678057873\" style=\"width: 400px; height: 209px; float: right; margin: 2px;\" />\n<p>Moon and the volcanoes, valleys, deserts, and polar ice caps of Earth. The rotational period and seasonal cycles of Mars are likewise similar to those of Earth, as is the tilt that produces the seasons. Mars is the site of Olympus Mons, the highest known mountain within the Solar System, and of Valles Marineris, one of the largest canyons. The smooth Borealis basin in the northern hemisphere covers 40% of the planet and may be a giant impact feature. Mars has two moons, Phobos and Deimos, which are small and irregularly shaped. These may be captured asteroids, similar to 5261 Eureka, a Martian trojan asteroid.</p>\n\n<h2>Water on Mars</h2>\n\n<p>Until the first successful flyby of Mars occurred in 1965 by Mariner 4, many speculated about the presence of liquid water on the planet\'s surface. This was based on observed periodic variations in light and dark patches, particularly in the polar latitudes, which appeared to be seas and continents; long, dark striations were interpreted by some as irrigation channels for liquid water. These straight line features were later explained as optical illusions, though geological evidence gathered by unmanned missions suggest that Mars once had large-scale water coverage on its surface. In 2005, radar data revealed the presence of large quantities of water ice at the poles and at mid-latitudes. The Mars rover Spirit sampled chemical compounds containing water molecules in March 2007. The Phoenix lander directly sampled water ice in shallow Martian soil on July 31, 2008.</p>\n\n<p>source: http://en.wikipedia.org/wiki/Mars</p>]]></static-content>\n</root>','general','','','','2014-01-02 15:53:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-02 19:54:46'),('f0968bf3-a1f3-f026-95ad-05636387ab75',20707,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2014-01-15 22:13:11',0,0,0,'/0/','20650',1.3,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"PyK1\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"6NmS\">\n			<dynamic-content language-id=\"en_US\" id=\"10736\">/image/journal/article?img_id=10736&amp;t=1406826140394</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"b3zG\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"ij5d\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10735\">/image/journal/article?img_id=10735&amp;t=1406826140366</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"1\" type=\"image\" index-type=\"keyword\" instance-id=\"e4l9\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"6OrD\">\n			<dynamic-content language-id=\"en_US\" id=\"10736\">/image/journal/article?img_id=10736&amp;t=1406826140434</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"2FlZ\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"Zf7N\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10737\">/image/journal/article?img_id=10737&amp;t=1406826140418</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" index=\"2\" type=\"image\" index-type=\"keyword\" instance-id=\"tMcS\">\n		<dynamic-element name=\"image-720\" index=\"0\" type=\"image\" index-type=\"keyword\" instance-id=\"QVPQ\">\n			<dynamic-content language-id=\"en_US\" id=\"10736\">/image/journal/article?img_id=10736&amp;t=1406826140476</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" type=\"text_box\" index-type=\"keyword\" instance-id=\"v9np\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" type=\"text\" index-type=\"keyword\" instance-id=\"kXbi\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"10738\">/image/journal/article?img_id=10738&amp;t=1406826140458</dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2014-01-15 22:13:11'),('a183e9c0-86c3-4d12-3ebc-121b0c26c513',20724,20725,20182,20155,20199,'Test Test','2014-01-17 14:56:13','2014-01-17 14:56:14',20625,0,0,'/20625/','20723',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Marathon Rocket</Title></root>','marathon-rocket','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<p>We are happy to announce the design of a new rocket engine. Dubbed the Marathon, this rocket features an \"air-breathing\" design that uses oxygen from the atmosphere to burn fuel. This makes the craft lighter, since it doesn\'t have to carry as much oxygen as a component of its fuel payload.</p>\n\n<p><img alt=\"\" src=\"/documents/20182/20597/marathon-rocket.jpg/91c7b3a2-db0f-4635-81a3-95ef2fa3073a?t=1389970546246\" style=\"width: 360px; height: 287px; float: right;\" /></p>\n\n<p>For the first part of the rocket\'s flight, the rocket burns fuel almost like a conventional jet engine. Taking oxygen from the air and combining it with hydrogen, it burns more than 15% more efficiently and weighs 50% less than a conventional rocket engine.</p>\n\n<p>When the rocket reaches a sufficient altitude, it switches to using oxygen that\'s carried as standard fuel, because there isn\'t sufficient oxygen to run the engine as the atmosphere gets thinner at higher altitudes.</p>\n\n<p>Space Program engineers are excited about the new design and can\'t wait to test it out. Project Leader John Jacobson states, \"This is one of the most promising developments in the history of the rocket engine. It will revolutionize space travel, making it possible for space travel to be affordable by just about anyone.\"</p>\n\n<p>The rocket\'s construction has begun at one of the Space Program\'s test facilities. It is hoped that initial tests of the design can proceed within six months.&nbsp;</p>]]></static-content>\n</root>','general','','','','2014-01-17 14:53:00',NULL,NULL,1,0,20726,'',0,20199,'Test Test','2014-01-17 14:56:14'),('0c9ad848-bccf-c5b5-9351-ddbde9a9c13a',20770,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2017-11-21 06:20:51',0,0,0,'/0/','20650',1.4,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"0\" instance-id=\"PyK1\">\n		<dynamic-element name=\"image-720\" index=\"0\" instance-id=\"6NmS\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\" id=\"20773\">/image/journal/article?img_id=20773&amp;t=1511245251313</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" instance-id=\"b3zG\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" instance-id=\"ij5d\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"1\" instance-id=\"e4l9\">\n		<dynamic-element name=\"image-720\" index=\"1\" instance-id=\"6OrD\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\" id=\"20776\">/image/journal/article?img_id=20776&amp;t=1511245251365</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"1\" instance-id=\"2FlZ\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"1\" instance-id=\"Zf7N\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\"></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"2\" instance-id=\"tMcS\">\n		<dynamic-element name=\"image-720\" index=\"2\" instance-id=\"QVPQ\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"2\" instance-id=\"v9np\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"2\" instance-id=\"kXbi\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\"></dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2017-11-21 06:20:51'),('573a326e-8f19-bde5-1be4-a1d05e5b4632',20784,20652,20182,20155,20199,'Test Test','2014-01-02 20:20:25','2017-11-21 06:21:25',0,0,0,'/0/','20650',1.5,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Homepage Carousel</Title></root>','homepage-carousel','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"0\" instance-id=\"PyK1\">\n		<dynamic-element name=\"image-720\" index=\"0\" instance-id=\"6NmS\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\" id=\"20786\">/image/journal/article?img_id=20786&amp;t=1511245285519</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"0\" instance-id=\"b3zG\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"0\" instance-id=\"ij5d\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Outer_space]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"20785\">/image/journal/article?img_id=20785&amp;t=1511245285489</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"1\" instance-id=\"e4l9\">\n		<dynamic-element name=\"image-720\" index=\"1\" instance-id=\"6OrD\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\" id=\"20788\">/image/journal/article?img_id=20788&amp;t=1511245285601</dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"1\" instance-id=\"2FlZ\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"1\" instance-id=\"Zf7N\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://en.wikipedia.org/wiki/Mars]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"20787\">/image/journal/article?img_id=20787&amp;t=1511245285552</dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"image\" type=\"image\" index-type=\"keyword\" index=\"2\" instance-id=\"tMcS\">\n		<dynamic-element name=\"image-720\" index=\"2\" instance-id=\"QVPQ\" type=\"image\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"content\" index=\"2\" instance-id=\"v9np\" type=\"text_box\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element name=\"link\" index=\"2\" instance-id=\"kXbi\" type=\"text\" index-type=\"keyword\">\n			<dynamic-content language-id=\"en_US\"><![CDATA[http://localhost:8080/web/guest/about]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content language-id=\"en_US\" id=\"20789\">/image/journal/article?img_id=20789&amp;t=1511245285648</dynamic-content>\n	</dynamic-element>\n</root>','general','12233','12235','','2014-01-02 16:03:00',NULL,NULL,1,0,0,'',0,20199,'Test Test','2017-11-21 06:21:26');
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleimage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleimage`
--

LOCK TABLES `journalarticleimage` WRITE;
/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
INSERT INTO `journalarticleimage` VALUES (20653,20182,'20650',1.2,'r6Pi','image_0','_en_US',0),(20654,20182,'20650',1.2,'r6Pi','image_0','',0),(20655,20182,'20650',1.2,'daED','image-720_0','_en_US',0),(20656,20182,'20650',1.2,'daED','image-720_0','',0),(20657,20182,'20650',1.2,'H11y','image_1','_en_US',0),(20658,20182,'20650',1.2,'H11y','image_1','',0),(20659,20182,'20650',1.2,'rf5U','image-720_0','_en_US',0),(20660,20182,'20650',1.2,'rf5U','image-720_0','',0),(20661,20182,'20650',1.2,'cqCd','image_2','_en_US',0),(20662,20182,'20650',1.2,'cqCd','image_2','',0),(20663,20182,'20650',1.2,'QnrJ','image-720_0','_en_US',0),(20664,20182,'20650',1.2,'QnrJ','image-720_0','',0),(20672,20182,'20650',1,'qHFe','image_0','_en_US',0),(20673,20182,'20650',1,'qHFe','image_0','',0),(20674,20182,'20650',1,'LcBO','image-720_0','_en_US',0),(20675,20182,'20650',1,'LcBO','image-720_0','',0),(20676,20182,'20650',1,'9PWb','image_1','_en_US',0),(20677,20182,'20650',1,'9PWb','image_1','',0),(20678,20182,'20650',1,'KKPJ','image-720_0','_en_US',0),(20679,20182,'20650',1,'KKPJ','image-720_0','',0),(20680,20182,'20650',1,'eazv','image_2','_en_US',0),(20681,20182,'20650',1,'eazv','image_2','',0),(20682,20182,'20650',1,'67qd','image-720_0','_en_US',0),(20683,20182,'20650',1,'67qd','image-720_0','',0),(20685,20182,'20650',1.1,'b44p','image_0','_en_US',0),(20686,20182,'20650',1.2,'b44p','image_0','_en_US',0),(20687,20182,'20650',1.1,'UQLM','image-720_0','_en_US',0),(20688,20182,'20650',1.2,'UQLM','image-720_0','_en_US',0),(20689,20182,'20650',1.1,'GWRx','image_1','_en_US',0),(20690,20182,'20650',1.2,'GWRx','image_1','_en_US',0),(20691,20182,'20650',1.1,'pVbd','image-720_0','_en_US',0),(20692,20182,'20650',1.2,'pVbd','image-720_0','_en_US',0),(20693,20182,'20650',1.1,'M8yu','image_2','_en_US',0),(20694,20182,'20650',1.2,'M8yu','image_2','_en_US',0),(20695,20182,'20650',1.1,'THFi','image-720_0','_en_US',0),(20696,20182,'20650',1.2,'THFi','image-720_0','_en_US',0),(20708,20182,'20650',1.3,'PyK1','image_0','_en_US',0),(20709,20182,'20650',1.2,'PyK1','image_0','_en_US',0),(20710,20182,'20650',1.3,'6NmS','image-720_0','_en_US',0),(20711,20182,'20650',1.2,'6NmS','image-720_0','_en_US',0),(20712,20182,'20650',1.3,'e4l9','image_1','_en_US',0),(20713,20182,'20650',1.2,'e4l9','image_1','_en_US',0),(20714,20182,'20650',1.3,'6OrD','image-720_0','_en_US',0),(20715,20182,'20650',1.2,'6OrD','image-720_0','_en_US',0),(20716,20182,'20650',1.3,'tMcS','image_2','_en_US',0),(20717,20182,'20650',1.2,'tMcS','image_2','_en_US',0),(20718,20182,'20650',1.3,'QVPQ','image-720_0','_en_US',0),(20719,20182,'20650',1.2,'QVPQ','image-720_0','_en_US',0),(20771,20182,'20650',1.4,'PyK1','image_0','_en_US',0),(20772,20182,'20650',1.4,'PyK1','image_0','',0),(20773,20182,'20650',1.4,'6NmS','image-720_0','_en_US',0),(20774,20182,'20650',1.4,'e4l9','image_1','_en_US',0),(20775,20182,'20650',1.4,'e4l9','image_1','',0),(20776,20182,'20650',1.4,'6OrD','image-720_1','_en_US',0),(20777,20182,'20650',1.4,'tMcS','image_2','_en_US',0),(20778,20182,'20650',1.4,'tMcS','image_2','',0),(20779,20182,'20650',1.4,'QVPQ','image-720_2','_en_US',0),(20780,20182,'20650',1.4,'QVPQ','image-720_2','',0),(20785,20182,'20650',1.5,'PyK1','image_0','_en_US',0),(20786,20182,'20650',1.5,'6NmS','image-720_0','_en_US',0),(20787,20182,'20650',1.5,'e4l9','image_1','_en_US',0),(20788,20182,'20650',1.5,'6OrD','image-720_1','_en_US',0),(20789,20182,'20650',1.5,'tMcS','image_2','_en_US',0),(20790,20182,'20650',1.5,'QVPQ','image-720_2','_en_US',0),(20791,20182,'20650',1.5,'QVPQ','image-720_2','',0);
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleresource`
--

LOCK TABLES `journalarticleresource` WRITE;
/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
INSERT INTO `journalarticleresource` VALUES ('7f22ae1d-fcd1-42a8-8a86-2cfdf9fc601f',20634,20182,'20632'),('007e64ea-a611-403b-acc9-d73e931d76a1',20643,20182,'20641'),('a77748e5-e4d7-4cbd-9137-08ae5624fb80',20652,20182,'20650'),('9a54afe0-26db-4aee-8ccb-c34dff83506d',20725,20182,'20723');
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalcontentsearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalcontentsearch`
--

LOCK TABLES `journalcontentsearch` WRITE;
/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
INSERT INTO `journalcontentsearch` VALUES (20761,20182,20155,0,1,'56_INSTANCE_d4rZoQEy6tmm','20632'),(20764,20182,20155,0,1,'56_INSTANCE_gfc1bQxD7BCR','20650'),(20766,20182,20155,0,1,'56_INSTANCE_Wvv422wGCE4T','20641');
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfeed`
--

LOCK TABLES `journalfeed` WRITE;
/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfolder`
--

DROP TABLE IF EXISTS `journalfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfolder`
--

LOCK TABLES `journalfolder` WRITE;
/*!40000 ALTER TABLE `journalfolder` DISABLE KEYS */;
INSERT INTO `journalfolder` VALUES ('956c9fc8-07cd-4755-9f57-475b5fd2be8d',20625,20182,20155,20199,'Test Test','2014-01-02 15:51:44','2014-01-02 15:51:44',0,'/20625/','Articles','Informational Articles',0,0,'',NULL),('938d237c-0b24-4239-afbf-d11a1c0ff0ff',20627,20182,20155,20199,'Test Test','2014-01-02 15:55:56','2014-01-02 15:55:56',0,'/20627/','UI Elements','',0,0,'',NULL);
/*!40000 ALTER TABLE `journalfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoaction`
--

DROP TABLE IF EXISTS `kaleoaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoaction` (
  `kaleoActionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoActionId`),
  KEY `IX_50E9112C` (`companyId`),
  KEY `IX_170EFD7A` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_4B2545E8` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_F95A622` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoaction`
--

LOCK TABLES `kaleoaction` WRITE;
/*!40000 ALTER TABLE `kaleoaction` DISABLE KEYS */;
INSERT INTO `kaleoaction` VALUES (20473,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoNode',20472,20471,'approved','approve','','onEntry','\n					\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					\n				','groovy','',0),(20492,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoNode',20491,20471,'update','reject','','onAssignment','\n					\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					\n				','javascript','',0);
/*!40000 ALTER TABLE `kaleoaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleocondition`
--

DROP TABLE IF EXISTS `kaleocondition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleocondition` (
  `kaleoConditionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `script` longtext,
  `scriptLanguage` varchar(75) DEFAULT NULL,
  `scriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoConditionId`),
  KEY `IX_FEE46067` (`companyId`),
  KEY `IX_DC978A5D` (`kaleoDefinitionId`),
  KEY `IX_86CBD4C` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleocondition`
--

LOCK TABLES `kaleocondition` WRITE;
/*!40000 ALTER TABLE `kaleocondition` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleocondition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleodefinition`
--

DROP TABLE IF EXISTS `kaleodefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleodefinition` (
  `kaleoDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `startKaleoNodeId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoDefinitionId`),
  KEY `IX_40B9112F` (`companyId`),
  KEY `IX_408542BA` (`companyId`,`active_`),
  KEY `IX_76C781AE` (`companyId`,`name`),
  KEY `IX_4C23F11B` (`companyId`,`name`,`active_`),
  KEY `IX_EC14F81A` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleodefinition`
--

LOCK TABLES `kaleodefinition` WRITE;
/*!40000 ALTER TABLE `kaleodefinition` DISABLE KEYS */;
INSERT INTO `kaleodefinition` VALUES (20471,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','Single Approver','Single Approver','A single approver can approve a workflow content.','<?xml version=\"1.0\"?>\n\n<workflow-definition xmlns=\"urn:liferay.com:liferay-workflow_6.2.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"urn:liferay.com:liferay-workflow_6.2.0 http://www.liferay.com/dtd/liferay-workflow-definition_6_2_0.xsd\">\n	<name>Single Approver</name>\n	<description>A single approver can approve a workflow content.</description>\n	<version>1</version>\n	<state>\n		<name>created</name>\n		<metadata> <![CDATA[{\"xy\":[36,51]}]]> </metadata>\n		<initial>true</initial>\n		<transitions>\n			<transition>\n				<name>review</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</state>\n	<task>\n		<name>update</name>\n		<metadata> <![CDATA[{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}]]> </metadata>\n		<actions>\n			<action>\n				<name>reject</name>\n				<script> <![CDATA[\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"denied\"), workflowContext);\n						Packages.com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil.updateStatus(Packages.com.liferay.portal.kernel.workflow.WorkflowConstants.toStatus(\"pending\"), workflowContext);\n					]]> </script>\n				<script-language>javascript</script-language>\n				<execution-type>onAssignment</execution-type>\n			</action>\n			<notification>\n				<name>Creator Modification Notification</name>\n				<template>Your submission was rejected by ${userName}, please modify and resubmit.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<user/>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>resubmit</name>\n				<target>review</target>\n			</transition>\n		</transitions>\n	</task>\n	<task>\n		<name>review</name>\n		<metadata> <![CDATA[{\"xy\":[168,36]}]]> </metadata>\n		<actions>\n			<notification>\n				<name>Review Notification</name>\n				<template>${userName} sent you a ${entryType} for review in the workflow.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<notification-type>user-notification</notification-type>\n				<execution-type>onAssignment</execution-type>\n			</notification>\n			<notification>\n				<name>Review Completion Notification</name>\n				<template>Your submission has been reviewed and the reviewer has applied the following ${taskComments}.</template>\n				<template-language>freemarker</template-language>\n				<notification-type>email</notification-type>\n				<recipients>\n					<user/>\n				</recipients>\n				<execution-type>onExit</execution-type>\n			</notification>\n		</actions>\n		<assignments>\n			<roles>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Administrator</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>organization</role-type>\n					<name>Organization Owner</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Administrator</name>\n				</role>\n				<role>\n					<role-type>regular</role-type>\n					<name>Portal Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Administrator</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Content Reviewer</name>\n				</role>\n				<role>\n					<role-type>site</role-type>\n					<name>Site Owner</name>\n				</role>\n			</roles>\n		</assignments>\n		<transitions>\n			<transition>\n				<name>approve</name>\n				<target>approved</target>\n			</transition>\n			<transition>\n				<name>reject</name>\n				<target>update</target>\n				<default>false</default>\n			</transition>\n		</transitions>\n	</task>\n	<state>\n		<name>approved</name>\n		<metadata> <![CDATA[\n				{\"xy\":[380,51]}\n			]]> </metadata>\n		<actions>\n			<action>\n				<name>approve</name>\n				<script> <![CDATA[\n						import com.liferay.portal.kernel.workflow.WorkflowStatusManagerUtil;\n						import com.liferay.portal.kernel.workflow.WorkflowConstants;\n\n						WorkflowStatusManagerUtil.updateStatus(WorkflowConstants.toStatus(\"approved\"), workflowContext);\n					]]> </script>\n				<script-language>groovy</script-language>\n				<execution-type>onEntry</execution-type>\n			</action>\n		</actions>\n	</state>\n</workflow-definition>',1,1,20474);
/*!40000 ALTER TABLE `kaleodefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleodraftdefinition`
--

DROP TABLE IF EXISTS `kaleodraftdefinition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleodraftdefinition` (
  `kaleoDraftDefinitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `content` longtext,
  `version` int(11) DEFAULT NULL,
  `draftVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoDraftDefinitionId`),
  UNIQUE KEY `IX_A500C06` (`companyId`,`name`,`version`,`draftVersion`),
  KEY `IX_4DBA0C4E` (`companyId`),
  KEY `IX_94487B1B` (`companyId`,`name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleodraftdefinition`
--

LOCK TABLES `kaleodraftdefinition` WRITE;
/*!40000 ALTER TABLE `kaleodraftdefinition` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleodraftdefinition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoinstance`
--

DROP TABLE IF EXISTS `kaleoinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoinstance` (
  `kaleoInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoDefinitionName` varchar(200) DEFAULT NULL,
  `kaleoDefinitionVersion` int(11) DEFAULT NULL,
  `rootKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoInstanceId`),
  KEY `IX_58D85ECB` (`className`,`classPK`),
  KEY `IX_5F2FCD2D` (`companyId`),
  KEY `IX_BF5839F8` (`companyId`,`kaleoDefinitionName`,`kaleoDefinitionVersion`,`completionDate`),
  KEY `IX_C6D7A867` (`companyId`,`userId`),
  KEY `IX_4DA4D123` (`kaleoDefinitionId`),
  KEY `IX_ACF16238` (`kaleoDefinitionId`,`completed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoinstance`
--

LOCK TABLES `kaleoinstance` WRITE;
/*!40000 ALTER TABLE `kaleoinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoinstancetoken`
--

DROP TABLE IF EXISTS `kaleoinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoinstancetoken` (
  `kaleoInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `parentKaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeId` bigint(20) DEFAULT NULL,
  `currentKaleoNodeName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoInstanceTokenId`),
  KEY `IX_153721BE` (`companyId`),
  KEY `IX_4A86923B` (`companyId`,`parentKaleoInstanceTokenId`),
  KEY `IX_360D34D9` (`companyId`,`parentKaleoInstanceTokenId`,`completionDate`),
  KEY `IX_7BDB04B4` (`kaleoDefinitionId`),
  KEY `IX_F42AAFF6` (`kaleoInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoinstancetoken`
--

LOCK TABLES `kaleoinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleoinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleolog`
--

DROP TABLE IF EXISTS `kaleolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleolog` (
  `kaleoLogId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `terminalKaleoNode` tinyint(4) DEFAULT NULL,
  `kaleoActionId` bigint(20) DEFAULT NULL,
  `kaleoActionName` varchar(200) DEFAULT NULL,
  `kaleoActionDescription` longtext,
  `previousKaleoNodeId` bigint(20) DEFAULT NULL,
  `previousKaleoNodeName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassName` varchar(200) DEFAULT NULL,
  `previousAssigneeClassPK` bigint(20) DEFAULT NULL,
  `currentAssigneeClassName` varchar(200) DEFAULT NULL,
  `currentAssigneeClassPK` bigint(20) DEFAULT NULL,
  `type_` varchar(50) DEFAULT NULL,
  `comment_` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoLogId`),
  KEY `IX_73B5F4DE` (`companyId`),
  KEY `IX_E66A153A` (`kaleoClassName`,`kaleoClassPK`,`kaleoInstanceTokenId`,`type_`),
  KEY `IX_6C64B7D4` (`kaleoDefinitionId`),
  KEY `IX_5BC6AB16` (`kaleoInstanceId`),
  KEY `IX_470B9FF8` (`kaleoInstanceTokenId`,`type_`),
  KEY `IX_B0CDCA38` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleolog`
--

LOCK TABLES `kaleolog` WRITE;
/*!40000 ALTER TABLE `kaleolog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonode`
--

DROP TABLE IF EXISTS `kaleonode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonode` (
  `kaleoNodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `metadata` longtext,
  `description` longtext,
  `type_` varchar(20) DEFAULT NULL,
  `initial_` tinyint(4) DEFAULT NULL,
  `terminal` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoNodeId`),
  KEY `IX_C4E9ACE0` (`companyId`),
  KEY `IX_F28C443E` (`companyId`,`kaleoDefinitionId`),
  KEY `IX_32E94DD6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonode`
--

LOCK TABLES `kaleonode` WRITE;
/*!40000 ALTER TABLE `kaleonode` DISABLE KEYS */;
INSERT INTO `kaleonode` VALUES (20472,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,'approved','\n			\n				{\"xy\":[380,51]}\n			\n		','','STATE',0,1),(20474,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,'created','\n			{\"xy\":[36,51]}\n		','','STATE',1,0),(20475,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,'review','\n			{\"xy\":[168,36]}\n		','','TASK',0,0),(20491,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,'update','\n			{\"transitions\":{\"resubmit\":{\"bendpoints\":[[303,140]]}},\"xy\":[328,199]}\n		','','TASK',0,0);
/*!40000 ALTER TABLE `kaleonode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonotification`
--

DROP TABLE IF EXISTS `kaleonotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonotification` (
  `kaleoNotificationId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeName` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `executionType` varchar(20) DEFAULT NULL,
  `template` longtext,
  `templateLanguage` varchar(75) DEFAULT NULL,
  `notificationTypes` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationId`),
  KEY `IX_38829497` (`companyId`),
  KEY `IX_902D342F` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_F3362E93` (`kaleoClassName`,`kaleoClassPK`,`executionType`),
  KEY `IX_4B968E8D` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonotification`
--

LOCK TABLES `kaleonotification` WRITE;
/*!40000 ALTER TABLE `kaleonotification` DISABLE KEYS */;
INSERT INTO `kaleonotification` VALUES (20476,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoNode',20475,20471,'review','Review Notification','','onAssignment','${userName} sent you a ${entryType} for review in the workflow.','freemarker','user-notification,email'),(20477,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoNode',20475,20471,'review','Review Completion Notification','','onExit','\n					Your submission has been reviewed and the reviewer has applied the following ${taskComments}.','freemarker','email'),(20493,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoNode',20491,20471,'update','Creator Modification Notification','','onAssignment','Your submission was rejected by ${userName}, please modify and resubmit.','freemarker','user-notification,email');
/*!40000 ALTER TABLE `kaleonotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleonotificationrecipient`
--

DROP TABLE IF EXISTS `kaleonotificationrecipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleonotificationrecipient` (
  `kaleoNotificationRecipientId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNotificationId` bigint(20) DEFAULT NULL,
  `recipientClassName` varchar(200) DEFAULT NULL,
  `recipientClassPK` bigint(20) DEFAULT NULL,
  `recipientRoleType` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kaleoNotificationRecipientId`),
  KEY `IX_2C8C4AF4` (`companyId`),
  KEY `IX_AA6697EA` (`kaleoDefinitionId`),
  KEY `IX_7F4FED02` (`kaleoNotificationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleonotificationrecipient`
--

LOCK TABLES `kaleonotificationrecipient` WRITE;
/*!40000 ALTER TABLE `kaleonotificationrecipient` DISABLE KEYS */;
INSERT INTO `kaleonotificationrecipient` VALUES (20478,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20477,'com.liferay.portal.model.User',0,0,'');
/*!40000 ALTER TABLE `kaleonotificationrecipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoprocess`
--

DROP TABLE IF EXISTS `kaleoprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoprocess` (
  `kaleoProcessId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDLRecordSetId` bigint(20) DEFAULT NULL,
  `DDMTemplateId` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`kaleoProcessId`),
  KEY `IX_65CA6CC9` (`DDLRecordSetId`),
  KEY `IX_A29A06D5` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoprocess`
--

LOCK TABLES `kaleoprocess` WRITE;
/*!40000 ALTER TABLE `kaleoprocess` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoprocess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleoprocesslink`
--

DROP TABLE IF EXISTS `kaleoprocesslink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleoprocesslink` (
  `kaleoProcessLinkId` bigint(20) NOT NULL,
  `kaleoProcessId` bigint(20) DEFAULT NULL,
  `workflowTaskName` varchar(75) DEFAULT NULL,
  `DDMTemplateId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`kaleoProcessLinkId`),
  UNIQUE KEY `IX_10E0E9D0` (`kaleoProcessId`,`workflowTaskName`),
  KEY `IX_3F378B4D` (`kaleoProcessId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleoprocesslink`
--

LOCK TABLES `kaleoprocesslink` WRITE;
/*!40000 ALTER TABLE `kaleoprocesslink` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleoprocesslink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotask`
--

DROP TABLE IF EXISTS `kaleotask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotask` (
  `kaleoTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`kaleoTaskId`),
  KEY `IX_E1F8B23D` (`companyId`),
  KEY `IX_3FFA633` (`kaleoDefinitionId`),
  KEY `IX_77B3F1A2` (`kaleoNodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotask`
--

LOCK TABLES `kaleotask` WRITE;
/*!40000 ALTER TABLE `kaleotask` DISABLE KEYS */;
INSERT INTO `kaleotask` VALUES (20479,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20475,'review',''),(20494,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20491,'update','');
/*!40000 ALTER TABLE `kaleotask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskassignment`
--

DROP TABLE IF EXISTS `kaleotaskassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskassignment` (
  `kaleoTaskAssignmentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `assigneeActionId` varchar(75) DEFAULT NULL,
  `assigneeScript` longtext,
  `assigneeScriptLanguage` varchar(75) DEFAULT NULL,
  `assigneeScriptRequiredContexts` longtext,
  PRIMARY KEY (`kaleoTaskAssignmentId`),
  KEY `IX_611732B0` (`companyId`),
  KEY `IX_D835C576` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1087068E` (`kaleoClassName`,`kaleoClassPK`,`assigneeClassName`),
  KEY `IX_575C03A6` (`kaleoDefinitionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskassignment`
--

LOCK TABLES `kaleotaskassignment` WRITE;
/*!40000 ALTER TABLE `kaleotaskassignment` DISABLE KEYS */;
INSERT INTO `kaleotaskassignment` VALUES (20480,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20481,'','','',''),(20482,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20162,'','','',''),(20483,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20167,'','','',''),(20484,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20168,'','','',''),(20485,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20170,'','','',''),(20486,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20487,'','','',''),(20488,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20172,'','','',''),(20489,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20479,20471,0,'com.liferay.portal.model.Role',20490,'','','',''),(20495,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10','com.liferay.portal.workflow.kaleo.model.KaleoTask',20494,20471,0,'com.liferay.portal.model.User',0,'','','','');
/*!40000 ALTER TABLE `kaleotaskassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskassignmentinstance`
--

DROP TABLE IF EXISTS `kaleotaskassignmentinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskassignmentinstance` (
  `kaleoTaskAssignmentInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `assigneeClassName` varchar(200) DEFAULT NULL,
  `assigneeClassPK` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  PRIMARY KEY (`kaleoTaskAssignmentInstanceId`),
  KEY `IX_945F4EB7` (`assigneeClassName`),
  KEY `IX_3BD436FD` (`assigneeClassName`,`assigneeClassPK`),
  KEY `IX_6E3CDA1B` (`companyId`),
  KEY `IX_38A47B17` (`groupId`,`assigneeClassPK`),
  KEY `IX_C851011` (`kaleoDefinitionId`),
  KEY `IX_67A9EE93` (`kaleoInstanceId`),
  KEY `IX_D4C2235B` (`kaleoTaskInstanceTokenId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskassignmentinstance`
--

LOCK TABLES `kaleotaskassignmentinstance` WRITE;
/*!40000 ALTER TABLE `kaleotaskassignmentinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskassignmentinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotaskinstancetoken`
--

DROP TABLE IF EXISTS `kaleotaskinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotaskinstancetoken` (
  `kaleoTaskInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskId` bigint(20) DEFAULT NULL,
  `kaleoTaskName` varchar(200) DEFAULT NULL,
  `className` varchar(200) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTaskInstanceTokenId`),
  KEY `IX_A3271995` (`className`,`classPK`),
  KEY `IX_997FE723` (`companyId`),
  KEY `IX_608E9519` (`kaleoDefinitionId`),
  KEY `IX_2CE1159B` (`kaleoInstanceId`),
  KEY `IX_B857A115` (`kaleoInstanceId`,`kaleoTaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotaskinstancetoken`
--

LOCK TABLES `kaleotaskinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleotaskinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotaskinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotimer`
--

DROP TABLE IF EXISTS `kaleotimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotimer` (
  `kaleoTimerId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `description` longtext,
  `duration` double DEFAULT NULL,
  `scale` varchar(75) DEFAULT NULL,
  `recurrenceDuration` double DEFAULT NULL,
  `recurrenceScale` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`kaleoTimerId`),
  KEY `IX_4DE6A889` (`kaleoClassName`,`kaleoClassPK`),
  KEY `IX_1A479F32` (`kaleoClassName`,`kaleoClassPK`,`blocking`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotimer`
--

LOCK TABLES `kaleotimer` WRITE;
/*!40000 ALTER TABLE `kaleotimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotimerinstancetoken`
--

DROP TABLE IF EXISTS `kaleotimerinstancetoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotimerinstancetoken` (
  `kaleoTimerInstanceTokenId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoClassName` varchar(200) DEFAULT NULL,
  `kaleoClassPK` bigint(20) DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoInstanceId` bigint(20) DEFAULT NULL,
  `kaleoInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTaskInstanceTokenId` bigint(20) DEFAULT NULL,
  `kaleoTimerId` bigint(20) DEFAULT NULL,
  `kaleoTimerName` varchar(200) DEFAULT NULL,
  `blocking` tinyint(4) DEFAULT NULL,
  `completionUserId` bigint(20) DEFAULT NULL,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `workflowContext` longtext,
  PRIMARY KEY (`kaleoTimerInstanceTokenId`),
  KEY `IX_DB96C55B` (`kaleoInstanceId`),
  KEY `IX_DB279423` (`kaleoInstanceTokenId`,`completed`),
  KEY `IX_9932524C` (`kaleoInstanceTokenId`,`completed`,`blocking`),
  KEY `IX_13A5BA2C` (`kaleoInstanceTokenId`,`kaleoTimerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotimerinstancetoken`
--

LOCK TABLES `kaleotimerinstancetoken` WRITE;
/*!40000 ALTER TABLE `kaleotimerinstancetoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `kaleotimerinstancetoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kaleotransition`
--

DROP TABLE IF EXISTS `kaleotransition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kaleotransition` (
  `kaleoTransitionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `kaleoDefinitionId` bigint(20) DEFAULT NULL,
  `kaleoNodeId` bigint(20) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `sourceKaleoNodeId` bigint(20) DEFAULT NULL,
  `sourceKaleoNodeName` varchar(200) DEFAULT NULL,
  `targetKaleoNodeId` bigint(20) DEFAULT NULL,
  `targetKaleoNodeName` varchar(200) DEFAULT NULL,
  `defaultTransition` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`kaleoTransitionId`),
  KEY `IX_41D6C6D` (`companyId`),
  KEY `IX_479F3063` (`kaleoDefinitionId`),
  KEY `IX_A392DFD2` (`kaleoNodeId`),
  KEY `IX_A38E2194` (`kaleoNodeId`,`defaultTransition`),
  KEY `IX_85268A11` (`kaleoNodeId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kaleotransition`
--

LOCK TABLES `kaleotransition` WRITE;
/*!40000 ALTER TABLE `kaleotransition` DISABLE KEYS */;
INSERT INTO `kaleotransition` VALUES (20496,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20474,'review','',20474,'created',20475,'review',1),(20497,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20475,'approve','',20475,'review',20472,'approved',1),(20498,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20475,'reject','',20475,'review',20491,'update',0),(20499,0,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20471,20491,'resubmit','',20491,'update',20475,'review',1);
/*!40000 ALTER TABLE `kaleotransition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`),
  KEY `IX_881EABCB` (`companyId`,`layoutPrototypeUuid`),
  KEY `IX_7399B71E` (`groupId`,`privateLayout`,`parentLayoutId`,`priority`),
  KEY `IX_3BC009C0` (`privateLayout`,`iconImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES ('3214bac5-9eaa-d571-e385-1d32510ba908',20176,20173,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','privateLayout=true\n',0,'/manage',0,0,'','','','','',0,'',0,''),('eb155824-fd14-fb35-472f-7537d06e6300',20185,20182,20155,20159,'','2017-11-21 05:47:31','2017-11-21 07:31:56',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=56_INSTANCE_gfc1bQxD7BCR,\ncolumn-2=56_INSTANCE_d4rZoQEy6tmm,47,\ncolumn-3=partsportlet_WAR_partsinventoryportlet,56_INSTANCE_Wvv422wGCE4T,\nlayout-template-id=1_2_columns_i\nlayoutUpdateable=true\nsitemap-changefreq=daily\nsitemap-include=1\n',0,'/home',0,0,'classic','','','','',0,'',0,''),('2413ee6a-7e6a-dfdf-3181-524ae2819407',20320,20317,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:36',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','column-1=33,\ncolumn-2=148_INSTANCE_Rn4ab8CZRPV1,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('4f27b2fb-7603-348e-2468-5f1320781a87',20332,20329,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:37',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','column-1=141_INSTANCE_RcKw4ILeUBkT,122_INSTANCE_4F3aXtMCr1z0,\ncolumn-2=3,101_INSTANCE_hi6Bo3maqTEI,\ndefault-asset-publisher-portlet-id=101_INSTANCE_hi6Bo3maqTEI\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('df5928ee-0205-abd6-4d2e-9020cc93b4ba',20342,20339,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:38',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_WIsS8PuKo9L5,141_INSTANCE_hcLpTk4m0g5M,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('f78e0f66-9018-2871-84a8-9fd5f3abeb25',20361,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=19,\ncolumn-2=3,59_INSTANCE_2WE525RmJK7l,180,101_INSTANCE_Mni5kqgAP7sX,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('2910ae11-c461-54d7-d4c7-4b3ee3e8dc5b',20369,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:40',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_giCsUjsGyGWy,148_INSTANCE_FaJACLiu7ypL,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('bca05805-ac13-de47-1d0b-a959203ad85a',20387,20376,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:41',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=116,\ncolumn-2=3,82,101_INSTANCE_bCh2dLhmDhSE,\nlayout-template-id=2_columns_i\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('4dbf81c3-6665-302f-3e8a-675dcc195de3',20396,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:42',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','column-1=20,\ncolumn-2=101_INSTANCE_XY8sYXFVIGFi,\nlayout-template-id=1_column\nprivateLayout=true\n',0,'/documents',0,0,'','','','','',1,'',0,''),('eccd4ea3-1fb0-7249-af72-ba26858c3431',20404,20376,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','column-1=39_INSTANCE_BjucSHUHtJGw,\ncolumn-2=39_INSTANCE_RFylSpnrkEGm,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/news',0,0,'','','','','',2,'',0,''),('7770f468-4de1-39d1-3326-a99446d8f42d',20536,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('a0f10feb-d697-443f-799d-7afcff8c379a',20542,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutbranch`
--

DROP TABLE IF EXISTS `layoutbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutbranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutbranch`
--

LOCK TABLES `layoutbranch` WRITE;
/*!40000 ALTER TABLE `layoutbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutfriendlyurl`
--

DROP TABLE IF EXISTS `layoutfriendlyurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutfriendlyurl` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutfriendlyurl`
--

LOCK TABLES `layoutfriendlyurl` WRITE;
/*!40000 ALTER TABLE `layoutfriendlyurl` DISABLE KEYS */;
INSERT INTO `layoutfriendlyurl` VALUES ('91853de0-13cb-771f-415c-191af27172f4',20177,20173,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20176,1,'/manage','en_US'),('d02437e2-15df-53d7-dcf8-6668511cf06a',20186,20182,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20185,0,'/home','en_US'),('7d4e9946-5c51-9a08-25c0-bf4aaaa2c4a0',20321,20317,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',20320,1,'/layout','en_US'),('230f219c-70cb-9497-d165-47fb2e5bfdf3',20333,20329,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36',20332,1,'/layout','en_US'),('d50eea13-3cdb-d514-b975-b7b3378d608c',20343,20339,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37',20342,1,'/layout','en_US'),('da875eaf-79da-cbd8-82dc-d7b73229b78b',20362,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',20361,1,'/home','en_US'),('4aa49ddd-625d-db9d-28a6-bae99fa5b5e6',20370,20350,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',20369,1,'/wiki','en_US'),('886eac5d-73bb-bd0a-c0d9-18d1167c7d39',20388,20376,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',20387,1,'/home','en_US'),('d1a7efb6-08d7-ca1c-790e-1a8a1b5e1d4d',20397,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20396,1,'/documents','en_US'),('86e9535c-264a-a64b-fd9a-54d43ff3184b',20405,20376,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',20404,1,'/news','en_US'),('6391c359-7076-ad12-8354-35598e5a18c6',20537,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20536,1,'/home','en_US'),('6ce08a2c-c97f-84b2-37da-ac097946729b',20543,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20542,0,'/home','en_US');
/*!40000 ALTER TABLE `layoutfriendlyurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutprototype`
--

DROP TABLE IF EXISTS `layoutprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutprototype`
--

LOCK TABLES `layoutprototype` WRITE;
/*!40000 ALTER TABLE `layoutprototype` DISABLE KEYS */;
INSERT INTO `layoutprototype` VALUES ('3e28010d-2a40-1187-6c3d-56ecf2ef605a',20316,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('f53ed2e8-f9ae-ee63-3d8d-4c24a24a5ad0',20328,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('70b3f7d6-346f-4601-b2fa-1af4f4a4ef23',20338,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `layoutprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutrevision`
--

DROP TABLE IF EXISTS `layoutrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutrevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutrevision`
--

LOCK TABLES `layoutrevision` WRITE;
/*!40000 ALTER TABLE `layoutrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutset` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`),
  KEY `IX_1B698D9` (`privateLayout`,`logoId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutset`
--

LOCK TABLES `layoutset` WRITE;
/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` VALUES (20174,20173,20155,'2017-11-21 05:47:30','2017-11-21 05:47:31',1,0,0,'classic','01','mobile','01','',1,'','',0),(20175,20173,20155,'2017-11-21 05:47:30','2017-11-21 05:47:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(20183,20182,20155,'2017-11-21 05:47:31','2017-11-21 05:47:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(20184,20182,20155,'2017-11-21 05:47:31','2017-11-21 07:10:15',0,0,0,'spaceprogram62_WAR_spaceprogram62theme','01','mobile','01','',1,'showSiteName=true\n','',0),(20193,20192,20155,'2017-11-21 05:47:31','2017-11-21 05:47:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(20194,20192,20155,'2017-11-21 05:47:31','2017-11-21 05:47:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(20196,20195,20155,'2017-11-21 05:47:31','2017-11-21 05:47:31',1,0,0,'classic','01','mobile','01','',0,'','',0),(20197,20195,20155,'2017-11-21 05:47:31','2017-11-21 05:47:31',0,0,0,'classic','01','mobile','01','',0,'','',0),(20202,20201,20155,'2017-11-21 05:47:32','2017-11-21 05:51:38',1,0,0,'classic','01','mobile','01','',1,'','',0),(20203,20201,20155,'2017-11-21 05:47:32','2017-11-21 05:51:38',0,0,0,'classic','01','mobile','01','',1,'','',0),(20318,20317,20155,'2017-11-21 05:47:35','2017-11-21 05:47:35',1,0,0,'classic','01','mobile','01','',1,'','',0),(20319,20317,20155,'2017-11-21 05:47:35','2017-11-21 05:47:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(20330,20329,20155,'2017-11-21 05:47:36','2017-11-21 05:47:36',1,0,0,'classic','01','mobile','01','',1,'','',0),(20331,20329,20155,'2017-11-21 05:47:36','2017-11-21 05:47:36',0,0,0,'classic','01','mobile','01','',0,'','',0),(20340,20339,20155,'2017-11-21 05:47:37','2017-11-21 05:47:37',1,0,0,'classic','01','mobile','01','',1,'','',0),(20341,20339,20155,'2017-11-21 05:47:37','2017-11-21 05:47:37',0,0,0,'classic','01','mobile','01','',0,'','',0),(20351,20350,20155,'2017-11-21 05:47:38','2017-11-21 05:47:40',1,0,0,'classic','01','mobile','01','',2,'','',0),(20352,20350,20155,'2017-11-21 05:47:38','2017-11-21 05:47:38',0,0,0,'classic','01','mobile','01','',0,'','',0),(20377,20376,20155,'2017-11-21 05:47:40','2017-11-21 05:47:42',1,0,0,'classic','01','mobile','01','',3,'','',0),(20378,20376,20155,'2017-11-21 05:47:40','2017-11-21 05:47:40',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetbranch`
--

DROP TABLE IF EXISTS `layoutsetbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetbranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetbranch`
--

LOCK TABLES `layoutsetbranch` WRITE;
/*!40000 ALTER TABLE `layoutsetbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutsetbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetprototype`
--

DROP TABLE IF EXISTS `layoutsetprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetprototype`
--

LOCK TABLES `layoutsetprototype` WRITE;
/*!40000 ALTER TABLE `layoutsetprototype` DISABLE KEYS */;
INSERT INTO `layoutsetprototype` VALUES ('44a3ee9a-9909-7e82-0556-3da5b96f99da',20349,20155,20159,'','2017-11-21 05:47:38','2017-11-21 05:47:40','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('5017b3ef-1341-39de-3542-9ed1d56f7360',20375,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:42','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `layoutsetprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listtype`
--

LOCK TABLES `listtype` WRITE;
/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_`
--

DROP TABLE IF EXISTS `lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_`
--

LOCK TABLES `lock_` WRITE;
/*!40000 ALTER TABLE `lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_app`
--

DROP TABLE IF EXISTS `marketplace_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_app` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_app`
--

LOCK TABLES `marketplace_app` WRITE;
/*!40000 ALTER TABLE `marketplace_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_module`
--

DROP TABLE IF EXISTS `marketplace_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `bundleSymbolicName` varchar(500) DEFAULT NULL,
  `bundleVersion` varchar(75) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_5848F52D` (`appId`,`bundleSymbolicName`,`bundleVersion`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_DD03D499` (`bundleSymbolicName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_module`
--

LOCK TABLES `marketplace_module` WRITE;
/*!40000 ALTER TABLE `marketplace_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbban` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbban`
--

LOCK TABLES `mbban` WRITE;
/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbcategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbcategory`
--

LOCK TABLES `mbcategory` WRITE;
/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbdiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbdiscussion`
--

LOCK TABLES `mbdiscussion` WRITE;
/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
INSERT INTO `mbdiscussion` VALUES ('849401e0-f7ae-a2d0-e782-7e333dddc1bc',20181,0,0,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20002,20176,20179),('f985272f-31e4-0be3-c8ec-967f4a70cfcc',20190,0,0,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20002,20185,20188),('9d9bb502-3d57-6161-1528-d5fe3e6d9929',20326,0,0,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',20002,20320,20323),('66f482d2-4d9b-354c-dbd4-4b8046b980a3',20337,0,0,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36',20002,20332,20335),('5a12fc09-47f6-2c63-3e56-5806b795162e',20347,0,0,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37',20002,20342,20345),('ceaae79d-e1e3-229c-9eee-e865e2c32ca3',20366,0,0,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',20002,20361,20364),('805dde26-01ba-9881-c0d3-f7fb675130c6',20374,0,0,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',20002,20369,20372),('f65d6a6d-3e96-8c44-5ab1-f4bc14bd3d0c',20392,0,0,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20002,20387,20390),('4f98011d-5a53-e445-d9a5-36c83497f812',20401,0,0,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20002,20396,20399),('df2e48a4-d0b8-88d0-199b-37ab41105605',20409,0,0,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',20002,20404,20407),('4a9e64c2-90f3-383b-a54c-fdd663b7e2e2',20541,0,0,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20002,20536,20539),('aae213a5-ffd0-dd57-1335-ceaae7396d2b',20547,0,0,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20002,20542,20545),('bda2b1ef-e9f8-ea9d-9e61-a2f162d96693',20606,0,0,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20600,20604),('a047429e-8096-b0f1-5c54-d93d74967bc1',20615,0,0,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20609,20613),('53276eab-df25-2a4f-b5ce-5e5faa2f5a1a',20623,0,0,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20617,20621),('5c75dd00-1d69-ef0b-4ffa-d03fc6b8498c',20640,0,0,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20634,20638),('bb8eef8f-4e9f-e005-a7a2-69ff911bfa71',20649,0,0,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20643,20647),('1a6ff4a1-dfe1-7e39-2322-d28cd2a5a268',20670,0,0,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20652,20668),('a8906bc7-10c4-6e98-daf3-1c7a6b2df782',20731,0,0,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:17',20109,20725,20729);
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmailinglist`
--

DROP TABLE IF EXISTS `mbmailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmailinglist` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmailinglist`
--

LOCK TABLES `mbmailinglist` WRITE;
/*!40000 ALTER TABLE `mbmailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmessage`
--

LOCK TABLES `mbmessage` WRITE;
/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
INSERT INTO `mbmessage` VALUES ('b3b93ae3-31ac-a22c-1eae-08d3b4338b16',20178,20173,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20002,20176,-1,20179,20178,0,'20176','20176','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:31'),('f61ee154-c4c8-7a13-af64-0276406e2ead',20187,20182,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',20002,20185,-1,20188,20187,0,'20185','20185','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:31'),('9bea6588-648d-aaf2-21ab-8260b488a036',20322,20317,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',20002,20320,-1,20323,20322,0,'20320','20320','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:35'),('df4c0f5e-cc50-676c-4e5f-88bb10cc96ca',20334,20329,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36',20002,20332,-1,20335,20334,0,'20332','20332','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:36'),('833f643c-13a5-8da1-ed27-49764a28d3f7',20344,20339,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37',20002,20342,-1,20345,20344,0,'20342','20342','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:37'),('2144a9c3-e765-7ed1-6156-db558bac2915',20363,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',20002,20361,-1,20364,20363,0,'20361','20361','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:39'),('bebf7d17-2bd8-538a-af16-685cf22b48e4',20371,20350,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',20002,20369,-1,20372,20371,0,'20369','20369','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:40'),('2d4e6c1a-ce47-9d12-369f-84ee9425ae4a',20389,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20002,20387,-1,20390,20389,0,'20387','20387','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:41'),('b000b765-3f5b-9b6a-098a-389cbdd22b06',20398,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',20002,20396,-1,20399,20398,0,'20396','20396','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:41'),('83c77ec4-ab3e-8c17-2c73-0fefadbe08ba',20406,20376,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',20002,20404,-1,20407,20406,0,'20404','20404','bbcode',1,0,0,0,0,20159,'','2017-11-21 05:47:42'),('87e71201-a803-6a67-8ef4-a15943fb3e64',20538,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20002,20536,-1,20539,20538,0,'20536','20536','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 05:51:38'),('d7013bc7-e1a7-b286-9053-55ea93730281',20544,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',20002,20542,-1,20545,20544,0,'20542','20542','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 05:51:38'),('656a6947-e7a1-1ead-a97c-2c1e039af8ca',20603,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20600,-1,20604,20603,0,'20600','20600','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('a17ef9ff-38d7-cc14-a087-92bcd0b2bfde',20612,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20609,-1,20613,20612,0,'20609','20609','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('f9ee1eb3-0561-8b2e-9299-1a541894dab4',20620,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',20011,20617,-1,20621,20620,0,'20617','20617','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('fb58e2a2-b486-d7bb-4d26-dfa1dd0b5200',20637,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20634,-1,20638,20637,0,'20634','20634','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('75610459-3570-4cb5-b6fb-afe7ac11aab1',20646,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20643,-1,20647,20646,0,'20643','20643','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('4d37fcdd-c83b-a45e-a542-4955c3222f52',20667,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',20109,20652,-1,20668,20667,0,'20652','20652','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('55d442e8-0194-dbab-dd15-0bbd47ed3bde',20728,20182,20155,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:17',20109,20725,-1,20729,20728,0,'20725','20725','bbcode',0,0,0,0,0,20199,'Test Test','2017-11-21 06:17:17');
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbstatsuser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbstatsuser`
--

LOCK TABLES `mbstatsuser` WRITE;
/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthread`
--

LOCK TABLES `mbthread` WRITE;
/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
INSERT INTO `mbthread` VALUES ('687aad5b-c8e3-00d4-ef49-724428037538',20179,20173,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',-1,20178,20159,1,0,0,'2017-11-21 05:47:31',0,0,0,20159,'','2017-11-21 05:47:31'),('72cbb729-0b49-b9b5-98c7-140f66b599c2',20188,20182,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',-1,20187,20159,1,0,0,'2017-11-21 05:47:31',0,0,0,20159,'','2017-11-21 05:47:31'),('377fa8eb-d373-808b-1fdf-bc57f05956b6',20323,20317,20155,20159,'','2017-11-21 05:47:35','2017-11-21 05:47:35',-1,20322,20159,1,0,0,'2017-11-21 05:47:35',0,0,0,20159,'','2017-11-21 05:47:35'),('5179bfa2-864b-570a-57dc-7eed84249ef2',20335,20329,20155,20159,'','2017-11-21 05:47:36','2017-11-21 05:47:36',-1,20334,20159,1,0,0,'2017-11-21 05:47:36',0,0,0,20159,'','2017-11-21 05:47:36'),('294cd802-974a-775c-4344-d24bfc5d1158',20345,20339,20155,20159,'','2017-11-21 05:47:37','2017-11-21 05:47:37',-1,20344,20159,1,0,0,'2017-11-21 05:47:37',0,0,0,20159,'','2017-11-21 05:47:37'),('786d0aed-8f68-4fc4-3c2d-45142591cac1',20364,20350,20155,20159,'','2017-11-21 05:47:39','2017-11-21 05:47:39',-1,20363,20159,1,0,0,'2017-11-21 05:47:39',0,0,0,20159,'','2017-11-21 05:47:39'),('61e57445-8cc4-ccf0-99b7-d6756cf26c36',20372,20350,20155,20159,'','2017-11-21 05:47:40','2017-11-21 05:47:40',-1,20371,20159,1,0,0,'2017-11-21 05:47:40',0,0,0,20159,'','2017-11-21 05:47:40'),('2891d610-ffac-020d-c9e1-1640d9370f88',20390,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',-1,20389,20159,1,0,0,'2017-11-21 05:47:41',0,0,0,20159,'','2017-11-21 05:47:41'),('b2d33c9a-084b-0b46-cf7b-e2e5eea8b867',20399,20376,20155,20159,'','2017-11-21 05:47:41','2017-11-21 05:47:41',-1,20398,20159,1,0,0,'2017-11-21 05:47:41',0,0,0,20159,'','2017-11-21 05:47:41'),('67d2204b-642a-c929-543f-0ebe3e890da6',20407,20376,20155,20159,'','2017-11-21 05:47:42','2017-11-21 05:47:42',-1,20406,20159,1,0,0,'2017-11-21 05:47:42',0,0,0,20159,'','2017-11-21 05:47:42'),('c6fd41d6-12ef-6826-f14f-7865813f60e2',20539,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',-1,20538,20199,1,0,20199,'2017-11-21 05:51:38',0,0,0,20199,'Test Test','2017-11-21 05:51:38'),('24ac1c41-0e3d-4e17-44c7-40e16b912d3b',20545,20201,20155,20199,'Test Test','2017-11-21 05:51:38','2017-11-21 05:51:38',-1,20544,20199,1,0,20199,'2017-11-21 05:51:38',0,0,0,20199,'Test Test','2017-11-21 05:51:38'),('d1795eba-26c3-2ff9-228e-4dc37f36b4fc',20604,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',-1,20603,20199,1,0,20199,'2017-11-21 06:17:15',0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('d824590e-1c82-1e41-2db4-89311d5b0a59',20613,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',-1,20612,20199,1,0,20199,'2017-11-21 06:17:15',0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('185fa969-bccf-730b-c451-46197dabb013',20621,20182,20155,20199,'Test Test','2017-11-21 06:17:15','2017-11-21 06:17:15',-1,20620,20199,1,0,20199,'2017-11-21 06:17:15',0,0,0,20199,'Test Test','2017-11-21 06:17:15'),('02e5f739-9c58-16c8-418b-7f51e4a6366e',20638,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',-1,20637,20199,1,0,20199,'2017-11-21 06:17:16',0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('caa3681d-aa48-5262-7f62-e561697e940b',20647,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',-1,20646,20199,1,0,20199,'2017-11-21 06:17:16',0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('bb068d08-a6d5-b995-544f-7feb8bfa987f',20668,20182,20155,20199,'Test Test','2017-11-21 06:17:16','2017-11-21 06:17:16',-1,20667,20199,1,0,20199,'2017-11-21 06:17:16',0,0,0,20199,'Test Test','2017-11-21 06:17:16'),('361ae932-4b2f-833f-8dd6-f1e7d619257c',20729,20182,20155,20199,'Test Test','2017-11-21 06:17:17','2017-11-21 06:17:17',-1,20728,20199,1,0,20199,'2017-11-21 06:17:17',0,0,0,20199,'Test Test','2017-11-21 06:17:17');
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthreadflag`
--

DROP TABLE IF EXISTS `mbthreadflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthreadflag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthreadflag`
--

LOCK TABLES `mbthreadflag` WRITE;
/*!40000 ALTER TABLE `mbthreadflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthreadflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdraction`
--

DROP TABLE IF EXISTS `mdraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdraction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdraction`
--

LOCK TABLES `mdraction` WRITE;
/*!40000 ALTER TABLE `mdraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrule`
--

DROP TABLE IF EXISTS `mdrrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrule`
--

LOCK TABLES `mdrrule` WRITE;
/*!40000 ALTER TABLE `mdrrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroup`
--

DROP TABLE IF EXISTS `mdrrulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroup`
--

LOCK TABLES `mdrrulegroup` WRITE;
/*!40000 ALTER TABLE `mdrrulegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroupinstance`
--

DROP TABLE IF EXISTS `mdrrulegroupinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroupinstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroupinstance`
--

LOCK TABLES `mdrrulegroupinstance` WRITE;
/*!40000 ALTER TABLE `mdrrulegroupinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroupinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershiprequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiprequest`
--

LOCK TABLES `membershiprequest` WRITE;
/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ntfctns_usernotificationevent`
--

DROP TABLE IF EXISTS `ntfctns_usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ntfctns_usernotificationevent` (
  `notificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userNotificationEventId` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `actionRequired` tinyint(4) DEFAULT NULL,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`notificationEventId`),
  UNIQUE KEY `IX_D448A02E` (`userNotificationEventId`),
  KEY `IX_61F3E3E4` (`userId`,`actionRequired`),
  KEY `IX_911E393A` (`userId`,`actionRequired`,`archived`),
  KEY `IX_5EC15E51` (`userId`,`archived`),
  KEY `IX_20DFA99` (`userId`,`delivered`),
  KEY `IX_609938C2` (`userId`,`delivered`,`actionRequired`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ntfctns_usernotificationevent`
--

LOCK TABLES `ntfctns_usernotificationevent` WRITE;
/*!40000 ALTER TABLE `ntfctns_usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ntfctns_usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_oauthapplication`
--

DROP TABLE IF EXISTS `oauth_oauthapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthapplication` (
  `oAuthApplicationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` varchar(75) DEFAULT NULL,
  `accessLevel` int(11) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `shareableAccessToken` tinyint(4) DEFAULT NULL,
  `callbackURI` longtext,
  `websiteURL` longtext,
  PRIMARY KEY (`oAuthApplicationId`),
  UNIQUE KEY `IX_B12A5172` (`consumerKey`),
  KEY `IX_78A82761` (`companyId`),
  KEY `IX_DD85AA60` (`companyId`,`name`),
  KEY `IX_FA67A7A1` (`userId`),
  KEY `IX_2B33FAA0` (`userId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthapplication`
--

LOCK TABLES `oauth_oauthapplication` WRITE;
/*!40000 ALTER TABLE `oauth_oauthapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_oauthuser`
--

DROP TABLE IF EXISTS `oauth_oauthuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_oauthuser` (
  `oAuthUserId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `oAuthApplicationId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `accessSecret` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthUserId`),
  UNIQUE KEY `IX_84260D45` (`accessToken`),
  UNIQUE KEY `IX_7B260C62` (`userId`,`oAuthApplicationId`),
  KEY `IX_4167B528` (`oAuthApplicationId`),
  KEY `IX_CBA598DA` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_oauthuser`
--

LOCK TABLES `oauth_oauthuser` WRITE;
/*!40000 ALTER TABLE `oauth_oauthuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_oauthuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_gadget`
--

DROP TABLE IF EXISTS `opensocial_gadget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_gadget` (
  `uuid_` varchar(75) DEFAULT NULL,
  `gadgetId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `portletCategoryNames` longtext,
  PRIMARY KEY (`gadgetId`),
  KEY `IX_729869EE` (`companyId`),
  KEY `IX_E1F8627A` (`uuid_`),
  KEY `IX_3C79316E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_gadget`
--

LOCK TABLES `opensocial_gadget` WRITE;
/*!40000 ALTER TABLE `opensocial_gadget` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_gadget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_oauthconsumer`
--

DROP TABLE IF EXISTS `opensocial_oauthconsumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_oauthconsumer` (
  `oAuthConsumerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `consumerKey` varchar(75) DEFAULT NULL,
  `consumerSecret` longtext,
  `keyType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`oAuthConsumerId`),
  KEY `IX_47206618` (`gadgetKey`),
  KEY `IX_8E715BF8` (`gadgetKey`,`serviceName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_oauthconsumer`
--

LOCK TABLES `opensocial_oauthconsumer` WRITE;
/*!40000 ALTER TABLE `opensocial_oauthconsumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_oauthconsumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opensocial_oauthtoken`
--

DROP TABLE IF EXISTS `opensocial_oauthtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opensocial_oauthtoken` (
  `oAuthTokenId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `gadgetKey` varchar(75) DEFAULT NULL,
  `serviceName` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) DEFAULT NULL,
  `accessToken` varchar(75) DEFAULT NULL,
  `tokenName` varchar(75) DEFAULT NULL,
  `tokenSecret` varchar(75) DEFAULT NULL,
  `sessionHandle` varchar(75) DEFAULT NULL,
  `expiration` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`oAuthTokenId`),
  KEY `IX_6C8CCC3D` (`gadgetKey`,`serviceName`),
  KEY `IX_CDD35402` (`userId`,`gadgetKey`,`serviceName`,`moduleId`,`tokenName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opensocial_oauthtoken`
--

LOCK TABLES `opensocial_oauthtoken` WRITE;
/*!40000 ALTER TABLE `opensocial_oauthtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `opensocial_oauthtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_`
--

LOCK TABLES `organization_` WRITE;
/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orggrouprole`
--

LOCK TABLES `orggrouprole` WRITE;
/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orglabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orglabor`
--

LOCK TABLES `orglabor` WRITE;
/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicy`
--

LOCK TABLES `passwordpolicy` WRITE;
/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` VALUES ('893ec710-f9b7-6dbe-6e3e-506a90420642',20198,20155,20159,'','2017-11-21 05:47:31','2017-11-21 05:47:31',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicyrel`
--

LOCK TABLES `passwordpolicyrel` WRITE;
/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordtracker`
--

LOCK TABLES `passwordtracker` WRITE;
/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginsetting`
--

LOCK TABLES `pluginsetting` WRITE;
/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollschoice`
--

LOCK TABLES `pollschoice` WRITE;
/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsquestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsquestion`
--

LOCK TABLES `pollsquestion` WRITE;
/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsvote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsvote`
--

LOCK TABLES `pollsvote` WRITE;
/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpreferences`
--

DROP TABLE IF EXISTS `portalpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpreferences`
--

LOCK TABLES `portalpreferences` WRITE;
/*!40000 ALTER TABLE `portalpreferences` DISABLE KEYS */;
INSERT INTO `portalpreferences` VALUES (20154,0,1,'<portlet-preferences />'),(20161,20155,1,'<portlet-preferences><preference><name>sync.lan.server.uuid</name><value>90abdb6c-738d-61c7-a12b-52e605fbfed2</value></preference><preference><name>sync.lan.key</name><value>MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJpCLfwnBpn4jRa8VmTsHnq/8Fnj0aKzEIJpU6UAU8Lt0evALh8PuTPzNBB61XRzPHGGDs2qJCOVc+G6hevZ8hSebgiJtzGtzzQrVva5gyF5pxAEb78MG4EKF/Z1PKHhFOKg73wahClj4p5m+U87mlcNxpB1VxQrCmMKADFgc7yZAgMBAAECgYAdHk714RwC5oMjfovEYznhq+ef4DxLPQfpxh4O8H/fNOtCWDWckWhBYTA7yCQQ5kvLliWnNu25ddW5D2+GNM7YQEYmf1AYFs0+oIGqHC1VaijdupoRXOIabt02+NeSoD7oabfD8ww8VrfSFkAoowJn3kISqi9Y71Wfz5VDiXwmAQJBANeMoah79vBAUmU+LeSlqreMVl9/DsPotQ9hwySZ7zkoR2aQXyqD++ugwWdcSkLavoD4Ez/JJaSPO53Lme/fzdkCQQC3NQd+XbJUp9RZTgQpyELubJdYa2w+HGumyTNVodGt6hFv9tMLb7/Qx/Dc4m2NrdfmY+XvF7T7rYTkJMzFsmzBAkAoqwrxK/pqV+hz26hzBGLSYLMHL4TMp8JJlato43ZENXpLOqAJ+H72dQ0ogDwuovDgim2vUjc89h1MZ1ay8Gn5AkBQpNcXmMbW3MlsRhsvCSftK3+zPBX5gSkh0Y73MrPJii8CyfM8JYSZsmkj0cfHha5zi6W7CQRxhH/qrQg2PcQBAkAdupnX/28p7GEOLLyDRgl29X+9B59qB52wD+GrU6z7ZoHR7GOZik2EamHnU+jFUZWF1If4/lEUYidk1R3tB1RV</value></preference><preference><name>sync.lan.certificate</name><value>MIIB2zCCAUSgAwIBAgIIZgimboh/5dYwDQYJKoZIhvcNAQELBQAwLzEtMCsGA1UEAwwkOTBhYmRiNmMtNzM4ZC02MWM3LWExMmItNTJlNjA1ZmJmZWQyMCAXDTE2MTEyMTA1NTEzNVoYDzMwMTcwMzI0MDU1MTM1WjAvMS0wKwYDVQQDDCQ5MGFiZGI2Yy03MzhkLTYxYzctYTEyYi01MmU2MDVmYmZlZDIwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAJpCLfwnBpn4jRa8VmTsHnq/8Fnj0aKzEIJpU6UAU8Lt0evALh8PuTPzNBB61XRzPHGGDs2qJCOVc+G6hevZ8hSebgiJtzGtzzQrVva5gyF5pxAEb78MG4EKF/Z1PKHhFOKg73wahClj4p5m+U87mlcNxpB1VxQrCmMKADFgc7yZAgMBAAEwDQYJKoZIhvcNAQELBQADgYEAJlB+vY444jRddApNMmt+ea5P5NOasJtAECqzjGx24lfuqKb3IpXnvLce9vO4TmrysrnEaf0m9LfYbqf9s5nOcRMjdb8mUHlYUiOS6M/IztSuoEkvPtzdWCoL+dyoEycnuQRLKEZxWuXJahWsb+pWGH48r6tgo6DLaQLrSM7gDHA=</value></preference></portlet-preferences>'),(20433,20159,4,'<portlet-preferences />'),(20548,20199,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#manufacturerAssetLinksPanel</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#_145_portletCategory7</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.content</name><value>open</value></preference><preference><name>com.liferay.portal.util.SessionClicks#panel-manage-site_administration.pages</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#manufacturerCategorizationPanel</name><value>closed</value></preference></portlet-preferences>');
/*!40000 ALTER TABLE `portalpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
INSERT INTO `portlet` VALUES (20205,20155,'193','',1),(20206,20155,'194','',1),(20207,20155,'110','',1),(20208,20155,'114','',1),(20209,20155,'115','',1),(20210,20155,'116','',1),(20211,20155,'118','',1),(20212,20155,'97','',1),(20213,20155,'98','',0),(20214,20155,'11','',1),(20215,20155,'99','',1),(20216,20155,'15','',1),(20217,20155,'16','',1),(20218,20155,'19','',1),(20219,20155,'121','',1),(20220,20155,'122','',1),(20221,20155,'3','',1),(20222,20155,'125','',1),(20223,20155,'127','',1),(20224,20155,'128','',1),(20225,20155,'129','',1),(20226,20155,'9','',1),(20227,20155,'20','',1),(20228,20155,'23','',1),(20229,20155,'25','',1),(20230,20155,'26','',1),(20231,20155,'27','',1),(20232,20155,'28','',1),(20233,20155,'29','',1),(20234,20155,'130','',1),(20235,20155,'131','',1),(20236,20155,'132','',1),(20237,20155,'134','',1),(20238,20155,'135','',1),(20239,20155,'137','',1),(20240,20155,'30','',1),(20241,20155,'31','',1),(20242,20155,'33','',1),(20243,20155,'34','',1),(20244,20155,'36','',1),(20245,20155,'39','',1),(20246,20155,'141','',1),(20247,20155,'143','',1),(20248,20155,'146','',1),(20249,20155,'147','',1),(20250,20155,'148','',1),(20251,20155,'149','',1),(20252,20155,'47','',1),(20253,20155,'48','',1),(20254,20155,'150','',1),(20255,20155,'151','',1),(20256,20155,'152','',1),(20257,20155,'153','',1),(20258,20155,'154','',1),(20259,20155,'157','',1),(20260,20155,'158','',1),(20261,20155,'50','',1),(20262,20155,'54','',1),(20263,20155,'56','',1),(20264,20155,'58','',1),(20265,20155,'59','',1),(20266,20155,'161','',1),(20267,20155,'162','',1),(20268,20155,'164','',1),(20269,20155,'166','',1),(20270,20155,'167','',1),(20271,20155,'169','',1),(20272,20155,'61','',1),(20273,20155,'62','',0),(20274,20155,'64','',1),(20275,20155,'66','',1),(20276,20155,'67','',1),(20277,20155,'173','',0),(20278,20155,'175','',1),(20279,20155,'176','',1),(20280,20155,'178','',1),(20281,20155,'179','',1),(20282,20155,'70','',1),(20283,20155,'71','',1),(20284,20155,'73','',1),(20285,20155,'77','',1),(20286,20155,'180','',1),(20287,20155,'181','',1),(20288,20155,'182','',1),(20289,20155,'183','',1),(20290,20155,'184','',1),(20291,20155,'186','',1),(20292,20155,'187','',1),(20293,20155,'100','',1),(20294,20155,'188','',1),(20295,20155,'101','',1),(20296,20155,'102','',1),(20297,20155,'107','',1),(20298,20155,'108','',1),(20299,20155,'82','',1),(20300,20155,'83','',1),(20301,20155,'84','',1),(20302,20155,'85','',1),(20452,20155,'1_WAR_calendarportlet','',1),(20502,20155,'2_WAR_kaleodesignerportlet','',1),(20507,20155,'2_WAR_kaleoformsportlet','',1),(20508,20155,'1_WAR_kaleoformsportlet','',1),(20512,20155,'1_WAR_notificationsportlet','',1),(20516,20155,'2_WAR_oauthportlet','',1),(20517,20155,'1_WAR_oauthportlet','',1),(20522,20155,'1_WAR_opensocialportlet','',1),(20523,20155,'2_WAR_opensocialportlet','',1),(20524,20155,'3_WAR_opensocialportlet','',1),(20525,20155,'4_WAR_opensocialportlet','',1),(20533,20155,'2_WAR_syncadminportlet','',1),(20534,20155,'1_WAR_syncadminportlet','',1),(20535,20155,'1_WAR_webformportlet','',1),(20801,20155,'manufacturerportlet_WAR_partsinventoryportlet','',1),(20802,20155,'partsportlet_WAR_partsinventoryportlet','',1),(20803,20155,'orderPortlet_WAR_partsinventoryportlet','',1),(20807,20155,'shuttlestats_WAR_shuttlestatsportlet','',1);
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletitem`
--

LOCK TABLES `portletitem` WRITE;
/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletpreferences`
--

LOCK TABLES `portletpreferences` WRITE;
/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` VALUES (20327,0,3,20320,'148_INSTANCE_Rn4ab8CZRPV1','<portlet-preferences><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>showAssetCount</name><value>true</value></preference><preference><name>maxAssetTags</name><value>10</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>20007</value></preference></portlet-preferences>'),(20348,0,3,20342,'141_INSTANCE_hcLpTk4m0g5M','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>20016</value></preference></portlet-preferences>'),(20367,0,3,20361,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20368,0,3,20361,'101_INSTANCE_Mni5kqgAP7sX','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20393,0,3,20387,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20394,0,3,20387,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(20395,0,3,20387,'101_INSTANCE_bCh2dLhmDhSE','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(20402,0,3,20396,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(20403,0,3,20396,'101_INSTANCE_XY8sYXFVIGFi','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(20410,0,3,20404,'39_INSTANCE_BjucSHUHtJGw','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(20411,0,3,20404,'39_INSTANCE_RFylSpnrkEGm','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference></portlet-preferences>'),(20549,0,3,20185,'145','<portlet-preferences />'),(20550,0,3,20185,'1_WAR_kaleodesignerportlet','<portlet-preferences />'),(20551,0,3,20185,'2_WAR_notificationsportlet','<portlet-preferences />'),(20553,0,3,20176,'160','<portlet-preferences />'),(20554,0,3,20176,'156','<portlet-preferences />'),(20555,0,3,20176,'1_WAR_kaleodesignerportlet','<portlet-preferences />'),(20556,0,3,20176,'145','<portlet-preferences />'),(20557,0,3,20176,'2_WAR_notificationsportlet','<portlet-preferences />'),(20564,0,3,20176,'15','<portlet-preferences />'),(20565,20182,2,0,'15','<portlet-preferences />'),(20566,0,3,20176,'86','<portlet-preferences />'),(20608,20182,2,0,'20','<portlet-preferences />'),(20760,0,3,20185,'56_INSTANCE_d4rZoQEy6tmm','<portlet-preferences><preference><name>groupId</name><value>20182</value></preference><preference><name>articleId</name><value>20632</value></preference></portlet-preferences>'),(20763,0,3,20185,'56_INSTANCE_gfc1bQxD7BCR','<portlet-preferences><preference><name>groupId</name><value>20182</value></preference><preference><name>articleId</name><value>20650</value></preference></portlet-preferences>'),(20765,0,3,20185,'56_INSTANCE_Wvv422wGCE4T','<portlet-preferences><preference><name>groupId</name><value>20182</value></preference><preference><name>articleId</name><value>20641</value></preference></portlet-preferences>'),(20768,0,3,20176,'190','<portlet-preferences />'),(20769,0,3,20176,'137','<portlet-preferences />'),(20795,0,3,20176,'3_WAR_marketplaceportlet','<portlet-preferences />'),(20796,20199,4,20176,'3_WAR_marketplaceportlet','<portlet-preferences />'),(20812,0,3,20185,'partsportlet_WAR_partsinventoryportlet','<portlet-preferences />'),(20813,0,3,20176,'manufacturerportlet_WAR_partsinventoryportlet','<portlet-preferences />'),(20901,0,3,20542,'1_WAR_kaleodesignerportlet','<portlet-preferences />'),(20902,0,3,20542,'145','<portlet-preferences />'),(20903,0,3,20176,'2','<portlet-preferences />'),(20904,0,3,20542,'2_WAR_notificationsportlet','<portlet-preferences />'),(20905,0,3,20176,'139','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_blob_triggers`
--

DROP TABLE IF EXISTS `quartz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_blob_triggers`
--

LOCK TABLES `quartz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_calendars`
--

DROP TABLE IF EXISTS `quartz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_calendars`
--

LOCK TABLES `quartz_calendars` WRITE;
/*!40000 ALTER TABLE `quartz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_cron_triggers`
--

DROP TABLE IF EXISTS `quartz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_cron_triggers`
--

LOCK TABLES `quartz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_fired_triggers`
--

LOCK TABLES `quartz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_job_details`
--

LOCK TABLES `quartz_job_details` WRITE;
/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_locks`
--

DROP TABLE IF EXISTS `quartz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_locks`
--

LOCK TABLES `quartz_locks` WRITE;
/*!40000 ALTER TABLE `quartz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_paused_trigger_grps`
--

LOCK TABLES `quartz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_scheduler_state`
--

DROP TABLE IF EXISTS `quartz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_scheduler_state`
--

LOCK TABLES `quartz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `quartz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simple_triggers`
--

DROP TABLE IF EXISTS `quartz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simple_triggers`
--

LOCK TABLES `quartz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simprop_triggers`
--

DROP TABLE IF EXISTS `quartz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simprop_triggers`
--

LOCK TABLES `quartz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_triggers`
--

LOCK TABLES `quartz_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsentry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsentry`
--

LOCK TABLES `ratingsentry` WRITE;
/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsstats`
--

LOCK TABLES `ratingsstats` WRITE;
/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BB','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MB','Monza e Brianza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_`
--

DROP TABLE IF EXISTS `release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_`
--

LOCK TABLES `release_` WRITE;
/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` VALUES (1,'2017-11-21 10:59:26','2017-11-21 05:33:01','portal',6210,'2013-11-01 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(20440,'2017-11-21 05:49:53','2017-11-21 05:49:53','marketplace-portlet',101,NULL,1,0,''),(20451,'2017-11-21 05:50:51','2017-11-21 05:50:51','calendar-portlet',102,NULL,1,0,''),(20470,'2017-11-21 05:51:08','2017-11-21 05:51:09','kaleo-web',110,NULL,1,0,''),(20506,'2017-11-21 05:51:14','2017-11-21 05:51:14','kaleo-forms-portlet',100,NULL,1,0,''),(20511,'2017-11-21 05:51:19','2017-11-21 05:51:19','notifications-portlet',130,NULL,1,0,''),(20532,'2017-11-21 05:51:35','2017-11-21 05:51:35','sync-web',102,NULL,1,0,'');
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
INSERT INTO `repository` VALUES ('596b4eb3-307a-9545-3da8-2208fb6a58a2',20559,20182,20155,20159,'','2017-11-21 06:14:35','2017-11-21 06:14:35',20558,'20','','20','',20560),('5a8297de-e0a5-93f3-6e5e-88388f9d8a4e',20579,20182,20155,20159,'','2017-11-21 06:17:13','2017-11-21 06:17:13',20558,'189','','189','',20580);
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositoryentry`
--

DROP TABLE IF EXISTS `repositoryentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositoryentry`
--

LOCK TABLES `repositoryentry` WRITE;
/*!40000 ALTER TABLE `repositoryentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositoryentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceaction`
--

DROP TABLE IF EXISTS `resourceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceaction`
--

LOCK TABLES `resourceaction` WRITE;
/*!40000 ALTER TABLE `resourceaction` DISABLE KEYS */;
INSERT INTO `resourceaction` VALUES (1,'com.liferay.portlet.polls','ADD_QUESTION',2),(2,'com.liferay.portlet.polls','PERMISSIONS',4),(3,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(4,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(5,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(6,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(7,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(8,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(9,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(10,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(11,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(12,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(13,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(14,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(15,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(16,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(17,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(18,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(19,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(20,'com.liferay.portal.model.Team','DELETE',4),(21,'com.liferay.portal.model.Team','PERMISSIONS',8),(22,'com.liferay.portal.model.Team','UPDATE',16),(23,'com.liferay.portal.model.Team','VIEW',1),(24,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(25,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(26,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(27,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(28,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(29,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(30,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(31,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(32,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(33,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(34,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(35,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(36,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(37,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(38,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(39,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(40,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(41,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(42,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(43,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(44,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(45,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(46,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(47,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(48,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(49,'com.liferay.portal.model.User','DELETE',2),(50,'com.liferay.portal.model.User','IMPERSONATE',4),(51,'com.liferay.portal.model.User','PERMISSIONS',8),(52,'com.liferay.portal.model.User','UPDATE',16),(53,'com.liferay.portal.model.User','VIEW',1),(54,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(55,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(56,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(57,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(58,'com.liferay.portlet.calendar','ADD_EVENT',2),(59,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(60,'com.liferay.portlet.calendar','PERMISSIONS',8),(61,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(62,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(63,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(64,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(65,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(66,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(67,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(68,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(69,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(70,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(71,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(72,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(73,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(74,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(75,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(76,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(77,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(78,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(79,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(80,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(81,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(82,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(83,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(84,'com.liferay.portlet.messageboards','ADD_FILE',4),(85,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(86,'com.liferay.portlet.messageboards','BAN_USER',16),(87,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(88,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(89,'com.liferay.portlet.messageboards','PERMISSIONS',128),(90,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(91,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(92,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(93,'com.liferay.portlet.messageboards','VIEW',1),(94,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(95,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(96,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(97,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(98,'com.liferay.portlet.bookmarks','VIEW',1),(99,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(100,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(101,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(102,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(103,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(104,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(105,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(106,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(107,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(108,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(109,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(110,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(111,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(112,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(113,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(114,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(115,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(116,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(117,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(118,'com.liferay.portlet.documentlibrary','UPDATE',512),(119,'com.liferay.portlet.documentlibrary','VIEW',1),(120,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(121,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(122,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(123,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(124,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(125,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(126,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(128,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(129,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(130,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(131,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(132,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(133,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(134,'com.liferay.portal.model.Organization','DELETE',16),(135,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(136,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(137,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(138,'com.liferay.portal.model.Organization','PERMISSIONS',256),(139,'com.liferay.portal.model.Organization','UPDATE',512),(140,'com.liferay.portal.model.Organization','VIEW',1),(141,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(142,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(143,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(144,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(145,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(146,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(147,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(148,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(149,'com.liferay.portal.model.Group','DELETE',256),(150,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(151,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(152,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(153,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(154,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(155,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(156,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(157,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(158,'com.liferay.portal.model.Group','PERMISSIONS',131072),(159,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(160,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(161,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(162,'com.liferay.portal.model.Group','UPDATE',2097152),(163,'com.liferay.portal.model.Group','VIEW',1),(164,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(165,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(166,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(167,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(168,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(169,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(170,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(171,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(172,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(173,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(174,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(175,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(176,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(177,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(178,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(179,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(180,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(181,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(182,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(183,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(184,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(185,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(186,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(187,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(188,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(189,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(190,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(191,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(193,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(194,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(195,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(196,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(197,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(198,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(199,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(200,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(201,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(202,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(203,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(204,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(205,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(206,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(207,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(208,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(209,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(210,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(211,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(212,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(213,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(214,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(215,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(216,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(217,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(218,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(219,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(220,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(221,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(222,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(223,'com.liferay.portlet.shopping','ADD_ITEM',4),(224,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(225,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(226,'com.liferay.portlet.shopping','PERMISSIONS',32),(227,'com.liferay.portlet.shopping','VIEW',1),(228,'com.liferay.portlet.wiki','ADD_NODE',2),(229,'com.liferay.portlet.wiki','PERMISSIONS',4),(230,'com.liferay.portlet.blogs','ADD_ENTRY',2),(231,'com.liferay.portlet.blogs','PERMISSIONS',4),(232,'com.liferay.portlet.blogs','SUBSCRIBE',8),(233,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(234,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(235,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(236,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(237,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(238,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(239,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(240,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(241,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(242,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(243,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(244,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(245,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(246,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(247,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(248,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(249,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(250,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(251,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(252,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(253,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(254,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(255,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(256,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(257,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(258,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(259,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(260,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(261,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(262,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(263,'com.liferay.portlet.journal','ADD_ARTICLE',2),(264,'com.liferay.portlet.journal','ADD_FEED',4),(265,'com.liferay.portlet.journal','ADD_FOLDER',8),(266,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(267,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(268,'com.liferay.portlet.journal','SUBSCRIBE',64),(269,'com.liferay.portlet.journal','VIEW',1),(270,'com.liferay.portlet.journal','PERMISSIONS',128),(271,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(272,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(273,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(274,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.UserGroup','VIEW_MEMBERS',64),(282,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(283,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(284,'com.liferay.portal.model.Role','DELETE',8),(285,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(286,'com.liferay.portal.model.Role','PERMISSIONS',32),(287,'com.liferay.portal.model.Role','UPDATE',64),(288,'com.liferay.portal.model.Role','VIEW',1),(289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(293,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(294,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(295,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(296,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(297,'com.liferay.portal.model.Layout','DELETE',32),(298,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(299,'com.liferay.portal.model.Layout','PERMISSIONS',128),(300,'com.liferay.portal.model.Layout','UPDATE',256),(301,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(302,'com.liferay.portal.model.Layout','VIEW',1),(303,'com.liferay.portlet.asset','ADD_TAG',2),(304,'com.liferay.portlet.asset','PERMISSIONS',4),(305,'com.liferay.portlet.asset','ADD_CATEGORY',8),(306,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(307,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(308,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(309,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(310,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(311,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(312,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(313,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(314,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(315,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(316,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(317,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(318,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(319,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(320,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(321,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(322,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(323,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(324,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(325,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(326,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(327,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(328,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(329,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(330,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(331,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(332,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(333,'com.liferay.portlet.mobiledevicerules','VIEW',1),(334,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(335,'com.liferay.portal.model.LayoutBranch','DELETE',2),(336,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(337,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(338,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(339,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(340,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(341,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(342,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(343,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(344,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(345,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(346,'25','ACCESS_IN_CONTROL_PANEL',2),(347,'25','CONFIGURATION',4),(348,'25','VIEW',1),(349,'25','PERMISSIONS',8),(350,'25','PREFERENCES',16),(351,'28','ACCESS_IN_CONTROL_PANEL',2),(352,'28','ADD_TO_PAGE',4),(353,'28','CONFIGURATION',8),(354,'28','VIEW',1),(355,'28','PERMISSIONS',16),(356,'28','PREFERENCES',32),(357,'174','ADD_TO_PAGE',2),(358,'174','CONFIGURATION',4),(359,'174','PERMISSIONS',8),(360,'174','PREFERENCES',16),(361,'174','VIEW',1),(362,'110','ADD_TO_PAGE',2),(363,'110','CONFIGURATION',4),(364,'110','PERMISSIONS',8),(365,'110','PREFERENCES',16),(366,'110','VIEW',1),(367,'154','ACCESS_IN_CONTROL_PANEL',2),(368,'154','CONFIGURATION',4),(369,'154','VIEW',1),(370,'154','PERMISSIONS',8),(371,'154','PREFERENCES',16),(372,'134','ACCESS_IN_CONTROL_PANEL',2),(373,'134','CONFIGURATION',4),(374,'134','VIEW',1),(375,'134','PERMISSIONS',8),(376,'134','PREFERENCES',16),(377,'156','ADD_TO_PAGE',2),(378,'156','CONFIGURATION',4),(379,'156','PERMISSIONS',8),(380,'156','PREFERENCES',16),(381,'156','VIEW',1),(382,'178','CONFIGURATION',2),(383,'178','VIEW',1),(384,'178','ADD_TO_PAGE',4),(385,'178','PERMISSIONS',8),(386,'178','PREFERENCES',16),(387,'139','ACCESS_IN_CONTROL_PANEL',2),(388,'139','ADD_EXPANDO',4),(389,'139','CONFIGURATION',8),(390,'139','VIEW',1),(391,'139','PERMISSIONS',16),(392,'139','PREFERENCES',32),(393,'31','ADD_TO_PAGE',2),(394,'31','CONFIGURATION',4),(395,'31','PERMISSIONS',8),(396,'31','PREFERENCES',16),(397,'31','VIEW',1),(398,'98','ACCESS_IN_CONTROL_PANEL',2),(399,'98','ADD_TO_PAGE',4),(400,'98','CONFIGURATION',8),(401,'98','VIEW',1),(402,'98','PERMISSIONS',16),(403,'98','PREFERENCES',32),(404,'99','ACCESS_IN_CONTROL_PANEL',2),(405,'99','CONFIGURATION',4),(406,'99','VIEW',1),(407,'99','PERMISSIONS',8),(408,'99','PREFERENCES',16),(409,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(410,'33','ADD_TO_PAGE',4),(411,'33','CONFIGURATION',8),(412,'33','VIEW',1),(413,'33','PERMISSIONS',16),(414,'33','PREFERENCES',32),(415,'34','ADD_TO_PAGE',2),(416,'34','CONFIGURATION',4),(417,'34','VIEW',1),(418,'34','PERMISSIONS',8),(419,'34','PREFERENCES',16),(420,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(421,'36','ADD_TO_PAGE',4),(422,'36','CONFIGURATION',8),(423,'36','VIEW',1),(424,'36','PERMISSIONS',16),(425,'36','PREFERENCES',32),(426,'15','ACCESS_IN_CONTROL_PANEL',2),(427,'15','ADD_TO_PAGE',4),(428,'15','CONFIGURATION',8),(429,'15','VIEW',1),(430,'15','PERMISSIONS',16),(431,'15','PREFERENCES',32),(432,'59','ADD_TO_PAGE',2),(433,'59','CONFIGURATION',4),(434,'59','PERMISSIONS',8),(435,'59','PREFERENCES',16),(436,'59','VIEW',1),(437,'19','ADD_TO_PAGE',2),(438,'19','CONFIGURATION',4),(439,'19','VIEW',1),(440,'19','PERMISSIONS',8),(441,'19','PREFERENCES',16),(442,'161','ACCESS_IN_CONTROL_PANEL',2),(443,'161','CONFIGURATION',4),(444,'161','VIEW',1),(445,'161','PERMISSIONS',8),(446,'161','PREFERENCES',16),(447,'162','ACCESS_IN_CONTROL_PANEL',2),(448,'162','CONFIGURATION',4),(449,'162','VIEW',1),(450,'162','PERMISSIONS',8),(451,'162','PREFERENCES',16),(452,'165','ADD_TO_PAGE',2),(453,'165','CONFIGURATION',4),(454,'165','PERMISSIONS',8),(455,'165','PREFERENCES',16),(456,'165','VIEW',1),(457,'166','ACCESS_IN_CONTROL_PANEL',2),(458,'166','ADD_TO_PAGE',4),(459,'166','CONFIGURATION',8),(460,'166','VIEW',1),(461,'166','PERMISSIONS',16),(462,'166','PREFERENCES',32),(463,'167','ACCESS_IN_CONTROL_PANEL',2),(464,'167','ADD_TO_PAGE',4),(465,'167','CONFIGURATION',8),(466,'167','VIEW',1),(467,'167','PERMISSIONS',16),(468,'167','PREFERENCES',32),(469,'146','ACCESS_IN_CONTROL_PANEL',2),(470,'146','CONFIGURATION',4),(471,'146','VIEW',1),(472,'146','PERMISSIONS',8),(473,'146','PREFERENCES',16),(474,'125','ACCESS_IN_CONTROL_PANEL',2),(475,'125','CONFIGURATION',4),(476,'125','EXPORT_USER',8),(477,'125','VIEW',1),(478,'125','PERMISSIONS',16),(479,'125','PREFERENCES',32),(480,'147','ACCESS_IN_CONTROL_PANEL',2),(481,'147','CONFIGURATION',4),(482,'147','VIEW',1),(483,'147','PERMISSIONS',8),(484,'147','PREFERENCES',16),(485,'169','ADD_TO_PAGE',2),(486,'169','CONFIGURATION',4),(487,'169','PERMISSIONS',8),(488,'169','PREFERENCES',16),(489,'169','VIEW',1),(490,'149','ACCESS_IN_CONTROL_PANEL',2),(491,'149','CONFIGURATION',4),(492,'149','VIEW',1),(493,'149','PERMISSIONS',8),(494,'149','PREFERENCES',16),(495,'127','ADD_TO_PAGE',2),(496,'127','CONFIGURATION',4),(497,'127','PERMISSIONS',8),(498,'127','PREFERENCES',16),(499,'127','VIEW',1),(500,'128','ACCESS_IN_CONTROL_PANEL',2),(501,'128','CONFIGURATION',4),(502,'128','VIEW',1),(503,'128','PERMISSIONS',8),(504,'128','PREFERENCES',16),(505,'129','ACCESS_IN_CONTROL_PANEL',2),(506,'129','CONFIGURATION',4),(507,'129','VIEW',1),(508,'129','PERMISSIONS',8),(509,'129','PREFERENCES',16),(510,'8','ACCESS_IN_CONTROL_PANEL',2),(511,'8','ADD_TO_PAGE',4),(512,'8','CONFIGURATION',8),(513,'8','VIEW',1),(514,'8','PERMISSIONS',16),(515,'8','PREFERENCES',32),(516,'83','ADD_ENTRY',2),(517,'83','ADD_TO_PAGE',4),(518,'83','CONFIGURATION',8),(519,'83','VIEW',1),(520,'83','PERMISSIONS',16),(521,'83','PREFERENCES',32),(522,'84','ADD_ENTRY',2),(523,'84','ADD_TO_PAGE',4),(524,'84','CONFIGURATION',8),(525,'84','VIEW',1),(526,'84','PERMISSIONS',16),(527,'84','PREFERENCES',32),(528,'20','ACCESS_IN_CONTROL_PANEL',2),(529,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(530,'20','ADD_TO_PAGE',8),(531,'20','CONFIGURATION',16),(532,'20','VIEW',1),(533,'20','PERMISSIONS',32),(534,'20','PREFERENCES',64),(535,'88','VIEW',1),(536,'88','ADD_TO_PAGE',2),(537,'88','CONFIGURATION',4),(538,'88','PERMISSIONS',8),(539,'88','PREFERENCES',16),(540,'88','ACCESS_IN_CONTROL_PANEL',32),(541,'190','VIEW',1),(542,'190','ADD_TO_PAGE',2),(543,'190','CONFIGURATION',4),(544,'190','PERMISSIONS',8),(545,'190','PREFERENCES',16),(546,'190','ACCESS_IN_CONTROL_PANEL',32),(547,'191','VIEW',1),(548,'191','ADD_TO_PAGE',2),(549,'191','CONFIGURATION',4),(550,'191','PERMISSIONS',8),(551,'191','PREFERENCES',16),(552,'191','ACCESS_IN_CONTROL_PANEL',32),(553,'192','VIEW',1),(554,'192','ADD_TO_PAGE',2),(555,'192','CONFIGURATION',4),(556,'192','PERMISSIONS',8),(557,'192','PREFERENCES',16),(558,'192','ACCESS_IN_CONTROL_PANEL',32),(559,'193','VIEW',1),(560,'193','ADD_TO_PAGE',2),(561,'193','CONFIGURATION',4),(562,'193','PERMISSIONS',8),(563,'193','PREFERENCES',16),(564,'193','ACCESS_IN_CONTROL_PANEL',32),(565,'194','VIEW',1),(566,'194','ADD_TO_PAGE',2),(567,'194','CONFIGURATION',4),(568,'194','PERMISSIONS',8),(569,'194','PREFERENCES',16),(570,'194','ACCESS_IN_CONTROL_PANEL',32),(571,'110','ACCESS_IN_CONTROL_PANEL',32),(572,'113','VIEW',1),(573,'113','ADD_TO_PAGE',2),(574,'113','CONFIGURATION',4),(575,'113','PERMISSIONS',8),(576,'113','PREFERENCES',16),(577,'113','ACCESS_IN_CONTROL_PANEL',32),(578,'114','VIEW',1),(579,'114','ADD_TO_PAGE',2),(580,'114','CONFIGURATION',4),(581,'114','PERMISSIONS',8),(582,'114','PREFERENCES',16),(583,'114','ACCESS_IN_CONTROL_PANEL',32),(584,'115','VIEW',1),(585,'115','ADD_TO_PAGE',2),(586,'115','CONFIGURATION',4),(587,'115','PERMISSIONS',8),(588,'115','PREFERENCES',16),(589,'115','ACCESS_IN_CONTROL_PANEL',32),(590,'116','VIEW',1),(591,'116','ADD_TO_PAGE',2),(592,'116','CONFIGURATION',4),(593,'116','PERMISSIONS',8),(594,'116','PREFERENCES',16),(595,'116','ACCESS_IN_CONTROL_PANEL',32),(596,'90','ADD_COMMUNITY',2),(597,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(598,'90','ADD_LAYOUT_PROTOTYPE',8),(599,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(600,'90','ADD_LICENSE',32),(601,'90','ADD_ORGANIZATION',64),(602,'90','ADD_PASSWORD_POLICY',128),(603,'90','ADD_ROLE',256),(604,'90','ADD_USER',512),(605,'90','ADD_USER_GROUP',1024),(606,'90','CONFIGURATION',2048),(607,'90','EXPORT_USER',4096),(608,'90','IMPERSONATE',8192),(609,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(610,'90','VIEW_CONTROL_PANEL',32768),(611,'90','ADD_TO_PAGE',65536),(612,'90','PERMISSIONS',131072),(613,'90','PREFERENCES',262144),(614,'90','VIEW',1),(615,'90','ACCESS_IN_CONTROL_PANEL',524288),(616,'118','VIEW',1),(617,'118','ADD_TO_PAGE',2),(618,'118','CONFIGURATION',4),(619,'118','PERMISSIONS',8),(620,'118','PREFERENCES',16),(621,'118','ACCESS_IN_CONTROL_PANEL',32),(622,'119','VIEW',1),(623,'119','ADD_TO_PAGE',2),(624,'119','CONFIGURATION',4),(625,'119','PERMISSIONS',8),(626,'119','PREFERENCES',16),(627,'119','ACCESS_IN_CONTROL_PANEL',32),(628,'97','VIEW',1),(629,'97','ADD_TO_PAGE',2),(630,'97','CONFIGURATION',4),(631,'97','PERMISSIONS',8),(632,'97','PREFERENCES',16),(633,'97','ACCESS_IN_CONTROL_PANEL',32),(634,'11','ADD_TO_PAGE',2),(635,'11','CONFIGURATION',4),(636,'11','VIEW',1),(637,'11','PERMISSIONS',8),(638,'11','PREFERENCES',16),(639,'11','ACCESS_IN_CONTROL_PANEL',32),(640,'16','VIEW',1),(641,'16','GUEST_PREFERENCES',2),(642,'16','PREFERENCES',4),(643,'16','ADD_TO_PAGE',8),(644,'16','CONFIGURATION',16),(645,'16','PERMISSIONS',32),(646,'16','ACCESS_IN_CONTROL_PANEL',64),(647,'19','ACCESS_IN_CONTROL_PANEL',32),(648,'121','VIEW',1),(649,'121','ADD_TO_PAGE',2),(650,'121','CONFIGURATION',4),(651,'121','PERMISSIONS',8),(652,'121','PREFERENCES',16),(653,'121','ACCESS_IN_CONTROL_PANEL',32),(654,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(655,'122','CONFIGURATION',4),(656,'122','VIEW',1),(657,'122','ADD_TO_PAGE',8),(658,'122','PERMISSIONS',16),(659,'122','PREFERENCES',32),(660,'122','ACCESS_IN_CONTROL_PANEL',64),(661,'2','ACCESS_IN_CONTROL_PANEL',2),(662,'2','CONFIGURATION',4),(663,'2','VIEW',1),(664,'2','PERMISSIONS',8),(665,'2','PREFERENCES',16),(666,'3','VIEW',1),(667,'3','ADD_TO_PAGE',2),(668,'3','CONFIGURATION',4),(669,'3','PERMISSIONS',8),(670,'3','PREFERENCES',16),(671,'3','ACCESS_IN_CONTROL_PANEL',32),(672,'124','VIEW',1),(673,'124','ADD_TO_PAGE',2),(674,'124','CONFIGURATION',4),(675,'124','PERMISSIONS',8),(676,'124','PREFERENCES',16),(677,'124','ACCESS_IN_CONTROL_PANEL',32),(678,'127','ACCESS_IN_CONTROL_PANEL',32),(679,'9','VIEW',1),(680,'9','ADD_TO_PAGE',2),(681,'9','CONFIGURATION',4),(682,'9','PERMISSIONS',8),(683,'9','PREFERENCES',16),(684,'9','ACCESS_IN_CONTROL_PANEL',32),(685,'23','VIEW',1),(686,'23','ADD_TO_PAGE',2),(687,'23','CONFIGURATION',4),(688,'23','PERMISSIONS',8),(689,'23','PREFERENCES',16),(690,'23','ACCESS_IN_CONTROL_PANEL',32),(691,'26','VIEW',1),(692,'26','ADD_TO_PAGE',2),(693,'26','CONFIGURATION',4),(694,'26','PERMISSIONS',8),(695,'26','PREFERENCES',16),(696,'26','ACCESS_IN_CONTROL_PANEL',32),(697,'27','VIEW',1),(698,'27','ADD_TO_PAGE',2),(699,'27','CONFIGURATION',4),(700,'27','PERMISSIONS',8),(701,'27','PREFERENCES',16),(702,'27','ACCESS_IN_CONTROL_PANEL',32),(703,'29','ADD_TO_PAGE',2),(704,'29','CONFIGURATION',4),(705,'29','VIEW',1),(706,'29','PERMISSIONS',8),(707,'29','PREFERENCES',16),(708,'29','ACCESS_IN_CONTROL_PANEL',32),(709,'130','ACCESS_IN_CONTROL_PANEL',2),(710,'130','CONFIGURATION',4),(711,'130','VIEW',1),(712,'130','PERMISSIONS',8),(713,'130','PREFERENCES',16),(714,'131','ACCESS_IN_CONTROL_PANEL',2),(715,'131','CONFIGURATION',4),(716,'131','VIEW',1),(717,'131','PERMISSIONS',8),(718,'131','PREFERENCES',16),(719,'132','ACCESS_IN_CONTROL_PANEL',2),(720,'132','CONFIGURATION',4),(721,'132','VIEW',1),(722,'132','PERMISSIONS',8),(723,'132','PREFERENCES',16),(724,'133','VIEW',1),(725,'133','ADD_TO_PAGE',2),(726,'133','CONFIGURATION',4),(727,'133','PERMISSIONS',8),(728,'133','PREFERENCES',16),(729,'133','ACCESS_IN_CONTROL_PANEL',32),(730,'135','ACCESS_IN_CONTROL_PANEL',2),(731,'135','CONFIGURATION',4),(732,'135','VIEW',1),(733,'135','PERMISSIONS',8),(734,'135','PREFERENCES',16),(735,'137','ACCESS_IN_CONTROL_PANEL',2),(736,'137','CONFIGURATION',4),(737,'137','VIEW',1),(738,'137','PERMISSIONS',8),(739,'137','PREFERENCES',16),(740,'30','VIEW',1),(741,'30','ADD_TO_PAGE',2),(742,'30','CONFIGURATION',4),(743,'30','PERMISSIONS',8),(744,'30','PREFERENCES',16),(745,'30','ACCESS_IN_CONTROL_PANEL',32),(746,'31','ACCESS_IN_CONTROL_PANEL',32),(747,'33','ACCESS_IN_CONTROL_PANEL',64),(748,'34','ACCESS_IN_CONTROL_PANEL',32),(749,'36','ACCESS_IN_CONTROL_PANEL',64),(750,'39','VIEW',1),(751,'39','ADD_TO_PAGE',2),(752,'39','CONFIGURATION',4),(753,'39','PERMISSIONS',8),(754,'39','PREFERENCES',16),(755,'39','ACCESS_IN_CONTROL_PANEL',32),(756,'140','ACCESS_IN_CONTROL_PANEL',2),(757,'140','CONFIGURATION',4),(758,'140','VIEW',1),(759,'140','PERMISSIONS',8),(760,'140','PREFERENCES',16),(761,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(762,'141','CONFIGURATION',4),(763,'141','VIEW',1),(764,'141','ADD_TO_PAGE',8),(765,'141','PERMISSIONS',16),(766,'141','PREFERENCES',32),(767,'141','ACCESS_IN_CONTROL_PANEL',64),(768,'142','VIEW',1),(769,'142','ADD_TO_PAGE',2),(770,'142','CONFIGURATION',4),(771,'142','PERMISSIONS',8),(772,'142','PREFERENCES',16),(773,'142','ACCESS_IN_CONTROL_PANEL',32),(774,'143','VIEW',1),(775,'143','ADD_TO_PAGE',2),(776,'143','CONFIGURATION',4),(777,'143','PERMISSIONS',8),(778,'143','PREFERENCES',16),(779,'143','ACCESS_IN_CONTROL_PANEL',32),(780,'145','VIEW',1),(781,'145','ADD_TO_PAGE',2),(782,'145','CONFIGURATION',4),(783,'145','PERMISSIONS',8),(784,'145','PREFERENCES',16),(785,'145','ACCESS_IN_CONTROL_PANEL',32),(786,'148','VIEW',1),(787,'148','ADD_TO_PAGE',2),(788,'148','CONFIGURATION',4),(789,'148','PERMISSIONS',8),(790,'148','PREFERENCES',16),(791,'148','ACCESS_IN_CONTROL_PANEL',32),(792,'47','VIEW',1),(793,'47','ADD_TO_PAGE',2),(794,'47','CONFIGURATION',4),(795,'47','PERMISSIONS',8),(796,'47','PREFERENCES',16),(797,'47','ACCESS_IN_CONTROL_PANEL',32),(798,'48','VIEW',1),(799,'48','ADD_TO_PAGE',2),(800,'48','CONFIGURATION',4),(801,'48','PERMISSIONS',8),(802,'48','PREFERENCES',16),(803,'48','ACCESS_IN_CONTROL_PANEL',32),(804,'49','VIEW',1),(805,'49','ADD_TO_PAGE',2),(806,'49','CONFIGURATION',4),(807,'49','PERMISSIONS',8),(808,'49','PREFERENCES',16),(809,'49','ACCESS_IN_CONTROL_PANEL',32),(810,'150','ACCESS_IN_CONTROL_PANEL',2),(811,'150','CONFIGURATION',4),(812,'150','VIEW',1),(813,'150','PERMISSIONS',8),(814,'150','PREFERENCES',16),(815,'151','ACCESS_IN_CONTROL_PANEL',2),(816,'151','CONFIGURATION',4),(817,'151','VIEW',1),(818,'151','PERMISSIONS',8),(819,'151','PREFERENCES',16),(820,'152','ACCESS_IN_CONTROL_PANEL',2),(821,'152','CONFIGURATION',4),(822,'152','VIEW',1),(823,'152','PERMISSIONS',8),(824,'152','PREFERENCES',16),(825,'153','ACCESS_IN_CONTROL_PANEL',2),(826,'153','ADD_TO_PAGE',4),(827,'153','CONFIGURATION',8),(828,'153','VIEW',1),(829,'153','PERMISSIONS',16),(830,'153','PREFERENCES',32),(831,'156','ACCESS_IN_CONTROL_PANEL',32),(832,'157','ACCESS_IN_CONTROL_PANEL',2),(833,'157','CONFIGURATION',4),(834,'157','VIEW',1),(835,'157','PERMISSIONS',8),(836,'157','PREFERENCES',16),(837,'158','ACCESS_IN_CONTROL_PANEL',2),(838,'158','ADD_TO_PAGE',4),(839,'158','CONFIGURATION',8),(840,'158','VIEW',1),(841,'158','PERMISSIONS',16),(842,'158','PREFERENCES',32),(843,'50','VIEW',1),(844,'50','ADD_TO_PAGE',2),(845,'50','CONFIGURATION',4),(846,'50','PERMISSIONS',8),(847,'50','PREFERENCES',16),(848,'50','ACCESS_IN_CONTROL_PANEL',32),(849,'54','VIEW',1),(850,'54','ADD_TO_PAGE',2),(851,'54','CONFIGURATION',4),(852,'54','PERMISSIONS',8),(853,'54','PREFERENCES',16),(854,'54','ACCESS_IN_CONTROL_PANEL',32),(855,'56','ADD_TO_PAGE',2),(856,'56','CONFIGURATION',4),(857,'56','VIEW',1),(858,'56','PERMISSIONS',8),(859,'56','PREFERENCES',16),(860,'56','ACCESS_IN_CONTROL_PANEL',32),(861,'58','ADD_TO_PAGE',2),(862,'58','CONFIGURATION',4),(863,'58','VIEW',1),(864,'58','PERMISSIONS',8),(865,'58','PREFERENCES',16),(866,'58','ACCESS_IN_CONTROL_PANEL',32),(867,'59','ACCESS_IN_CONTROL_PANEL',32),(868,'160','VIEW',1),(869,'160','ADD_TO_PAGE',2),(870,'160','CONFIGURATION',4),(871,'160','PERMISSIONS',8),(872,'160','PREFERENCES',16),(873,'160','ACCESS_IN_CONTROL_PANEL',32),(874,'164','VIEW',1),(875,'164','ADD_TO_PAGE',2),(876,'164','CONFIGURATION',4),(877,'164','PERMISSIONS',8),(878,'164','PREFERENCES',16),(879,'164','ACCESS_IN_CONTROL_PANEL',32),(880,'165','ACCESS_IN_CONTROL_PANEL',32),(881,'169','ACCESS_IN_CONTROL_PANEL',32),(882,'61','VIEW',1),(883,'61','ADD_TO_PAGE',2),(884,'61','CONFIGURATION',4),(885,'61','PERMISSIONS',8),(886,'61','PREFERENCES',16),(887,'61','ACCESS_IN_CONTROL_PANEL',32),(888,'62','VIEW',1),(889,'62','ADD_TO_PAGE',2),(890,'62','CONFIGURATION',4),(891,'62','PERMISSIONS',8),(892,'62','PREFERENCES',16),(893,'62','ACCESS_IN_CONTROL_PANEL',32),(894,'64','VIEW',1),(895,'64','ADD_TO_PAGE',2),(896,'64','CONFIGURATION',4),(897,'64','PERMISSIONS',8),(898,'64','PREFERENCES',16),(899,'64','ACCESS_IN_CONTROL_PANEL',32),(900,'66','VIEW',1),(901,'66','ADD_TO_PAGE',2),(902,'66','CONFIGURATION',4),(903,'66','PERMISSIONS',8),(904,'66','PREFERENCES',16),(905,'66','ACCESS_IN_CONTROL_PANEL',32),(906,'67','VIEW',1),(907,'67','ADD_TO_PAGE',2),(908,'67','CONFIGURATION',4),(909,'67','PERMISSIONS',8),(910,'67','PREFERENCES',16),(911,'67','ACCESS_IN_CONTROL_PANEL',32),(912,'170','VIEW',1),(913,'170','ADD_TO_PAGE',2),(914,'170','CONFIGURATION',4),(915,'170','PERMISSIONS',8),(916,'170','PREFERENCES',16),(917,'170','ACCESS_IN_CONTROL_PANEL',32),(918,'172','VIEW',1),(919,'172','ADD_TO_PAGE',2),(920,'172','CONFIGURATION',4),(921,'172','PERMISSIONS',8),(922,'172','PREFERENCES',16),(923,'172','ACCESS_IN_CONTROL_PANEL',32),(924,'173','VIEW',1),(925,'173','ADD_TO_PAGE',2),(926,'173','CONFIGURATION',4),(927,'173','PERMISSIONS',8),(928,'173','PREFERENCES',16),(929,'173','ACCESS_IN_CONTROL_PANEL',32),(930,'174','ACCESS_IN_CONTROL_PANEL',32),(931,'175','VIEW',1),(932,'175','ADD_TO_PAGE',2),(933,'175','CONFIGURATION',4),(934,'175','PERMISSIONS',8),(935,'175','PREFERENCES',16),(936,'175','ACCESS_IN_CONTROL_PANEL',32),(937,'176','VIEW',1),(938,'176','ADD_TO_PAGE',2),(939,'176','CONFIGURATION',4),(940,'176','PERMISSIONS',8),(941,'176','PREFERENCES',16),(942,'176','ACCESS_IN_CONTROL_PANEL',32),(943,'178','ACCESS_IN_CONTROL_PANEL',32),(944,'179','ACCESS_IN_CONTROL_PANEL',2),(945,'179','CONFIGURATION',4),(946,'179','VIEW',1),(947,'179','PERMISSIONS',8),(948,'179','PREFERENCES',16),(949,'70','VIEW',1),(950,'70','ADD_TO_PAGE',2),(951,'70','CONFIGURATION',4),(952,'70','PERMISSIONS',8),(953,'70','PREFERENCES',16),(954,'70','ACCESS_IN_CONTROL_PANEL',32),(955,'71','ADD_TO_PAGE',2),(956,'71','CONFIGURATION',4),(957,'71','VIEW',1),(958,'71','PERMISSIONS',8),(959,'71','PREFERENCES',16),(960,'71','ACCESS_IN_CONTROL_PANEL',32),(961,'73','ADD_TO_PAGE',2),(962,'73','CONFIGURATION',4),(963,'73','VIEW',1),(964,'73','PERMISSIONS',8),(965,'73','PREFERENCES',16),(966,'73','ACCESS_IN_CONTROL_PANEL',32),(967,'77','VIEW',1),(968,'77','ADD_TO_PAGE',2),(969,'77','CONFIGURATION',4),(970,'77','PERMISSIONS',8),(971,'77','PREFERENCES',16),(972,'77','ACCESS_IN_CONTROL_PANEL',32),(973,'180','VIEW',1),(974,'180','ADD_TO_PAGE',2),(975,'180','CONFIGURATION',4),(976,'180','PERMISSIONS',8),(977,'180','PREFERENCES',16),(978,'180','ACCESS_IN_CONTROL_PANEL',32),(979,'181','VIEW',1),(980,'181','ADD_TO_PAGE',2),(981,'181','CONFIGURATION',4),(982,'181','PERMISSIONS',8),(983,'181','PREFERENCES',16),(984,'181','ACCESS_IN_CONTROL_PANEL',32),(985,'182','VIEW',1),(986,'182','ADD_TO_PAGE',2),(987,'182','CONFIGURATION',4),(988,'182','PERMISSIONS',8),(989,'182','PREFERENCES',16),(990,'182','ACCESS_IN_CONTROL_PANEL',32),(991,'183','VIEW',1),(992,'183','ADD_TO_PAGE',2),(993,'183','CONFIGURATION',4),(994,'183','PERMISSIONS',8),(995,'183','PREFERENCES',16),(996,'183','ACCESS_IN_CONTROL_PANEL',32),(997,'184','ADD_TO_PAGE',2),(998,'184','CONFIGURATION',4),(999,'184','VIEW',1),(1000,'184','PERMISSIONS',8),(1001,'184','PREFERENCES',16),(1002,'184','ACCESS_IN_CONTROL_PANEL',32),(1003,'185','VIEW',1),(1004,'185','ADD_TO_PAGE',2),(1005,'185','CONFIGURATION',4),(1006,'185','PERMISSIONS',8),(1007,'185','PREFERENCES',16),(1008,'185','ACCESS_IN_CONTROL_PANEL',32),(1009,'186','ADD_TO_PAGE',2),(1010,'186','CONFIGURATION',4),(1011,'186','VIEW',1),(1012,'186','PERMISSIONS',8),(1013,'186','PREFERENCES',16),(1014,'186','ACCESS_IN_CONTROL_PANEL',32),(1015,'187','ADD_TO_PAGE',2),(1016,'187','CONFIGURATION',4),(1017,'187','VIEW',1),(1018,'187','PERMISSIONS',8),(1019,'187','PREFERENCES',16),(1020,'187','ACCESS_IN_CONTROL_PANEL',32),(1021,'100','VIEW',1),(1022,'100','ADD_TO_PAGE',2),(1023,'100','CONFIGURATION',4),(1024,'100','PERMISSIONS',8),(1025,'100','PREFERENCES',16),(1026,'100','ACCESS_IN_CONTROL_PANEL',32),(1027,'188','ADD_TO_PAGE',2),(1028,'188','CONFIGURATION',4),(1029,'188','VIEW',1),(1030,'188','PERMISSIONS',8),(1031,'188','PREFERENCES',16),(1032,'188','ACCESS_IN_CONTROL_PANEL',32),(1033,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(1034,'101','ADD_TO_PAGE',4),(1035,'101','CONFIGURATION',8),(1036,'101','SUBSCRIBE',16),(1037,'101','VIEW',1),(1038,'101','PERMISSIONS',32),(1039,'101','PREFERENCES',64),(1040,'101','ACCESS_IN_CONTROL_PANEL',128),(1041,'102','VIEW',1),(1042,'102','ADD_TO_PAGE',2),(1043,'102','CONFIGURATION',4),(1044,'102','PERMISSIONS',8),(1045,'102','PREFERENCES',16),(1046,'102','ACCESS_IN_CONTROL_PANEL',32),(1047,'103','VIEW',1),(1048,'103','ADD_TO_PAGE',2),(1049,'103','CONFIGURATION',4),(1050,'103','PERMISSIONS',8),(1051,'103','PREFERENCES',16),(1052,'103','ACCESS_IN_CONTROL_PANEL',32),(1053,'107','VIEW',1),(1054,'107','ADD_TO_PAGE',2),(1055,'107','CONFIGURATION',4),(1056,'107','PERMISSIONS',8),(1057,'107','PREFERENCES',16),(1058,'107','ACCESS_IN_CONTROL_PANEL',32),(1059,'108','VIEW',1),(1060,'108','ADD_TO_PAGE',2),(1061,'108','CONFIGURATION',4),(1062,'108','PERMISSIONS',8),(1063,'108','PREFERENCES',16),(1064,'108','ACCESS_IN_CONTROL_PANEL',32),(1065,'82','VIEW',1),(1066,'82','ADD_TO_PAGE',2),(1067,'82','CONFIGURATION',4),(1068,'82','PERMISSIONS',8),(1069,'82','PREFERENCES',16),(1070,'82','ACCESS_IN_CONTROL_PANEL',32),(1071,'83','ACCESS_IN_CONTROL_PANEL',64),(1072,'84','ACCESS_IN_CONTROL_PANEL',64),(1073,'85','ADD_TO_PAGE',2),(1074,'85','CONFIGURATION',4),(1075,'85','VIEW',1),(1076,'85','PERMISSIONS',8),(1077,'85','PREFERENCES',16),(1078,'85','ADD_PORTLET_DISPLAY_TEMPLATE',32),(1079,'85','ACCESS_IN_CONTROL_PANEL',64),(1080,'86','VIEW',1),(1081,'86','ADD_TO_PAGE',2),(1082,'86','CONFIGURATION',4),(1083,'86','PERMISSIONS',8),(1084,'86','PREFERENCES',16),(1085,'86','ACCESS_IN_CONTROL_PANEL',32),(1086,'1_WAR_marketplaceportlet','VIEW',1),(1087,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1088,'1_WAR_marketplaceportlet','CONFIGURATION',4),(1089,'1_WAR_marketplaceportlet','PERMISSIONS',8),(1090,'1_WAR_marketplaceportlet','PREFERENCES',16),(1091,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1092,'3_WAR_marketplaceportlet','VIEW',1),(1093,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1094,'3_WAR_marketplaceportlet','CONFIGURATION',4),(1095,'3_WAR_marketplaceportlet','PERMISSIONS',8),(1096,'3_WAR_marketplaceportlet','PREFERENCES',16),(1097,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1098,'2_WAR_marketplaceportlet','VIEW',1),(1099,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1100,'2_WAR_marketplaceportlet','CONFIGURATION',4),(1101,'2_WAR_marketplaceportlet','PERMISSIONS',8),(1102,'2_WAR_marketplaceportlet','PREFERENCES',16),(1103,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1104,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(1105,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(1106,'1_WAR_calendarportlet','CONFIGURATION',8),(1107,'1_WAR_calendarportlet','VIEW',1),(1108,'1_WAR_calendarportlet','PERMISSIONS',16),(1109,'1_WAR_calendarportlet','PREFERENCES',32),(1110,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(1111,'com.liferay.calendar.model.CalendarResource','DELETE',4),(1112,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(1113,'com.liferay.calendar.model.CalendarResource','VIEW',1),(1114,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(1115,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(1116,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(1117,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(1118,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(1119,'com.liferay.calendar','ADD_RESOURCE',2),(1120,'com.liferay.calendar','PERMISSIONS',4),(1121,'com.liferay.calendar.model.Calendar','DELETE',2),(1122,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(1123,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(1124,'com.liferay.calendar.model.Calendar','UPDATE',16),(1125,'com.liferay.calendar.model.Calendar','VIEW',1),(1126,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32),(1127,'2_WAR_kaleodesignerportlet','ACCESS_IN_CONTROL_PANEL',2),(1128,'2_WAR_kaleodesignerportlet','CONFIGURATION',4),(1129,'2_WAR_kaleodesignerportlet','VIEW',1),(1130,'2_WAR_kaleodesignerportlet','PERMISSIONS',8),(1131,'2_WAR_kaleodesignerportlet','PREFERENCES',16),(1132,'com.liferay.portal.workflow.kaleo.designer','ADD_DRAFT',2),(1133,'com.liferay.portal.workflow.kaleo.designer','PUBLISH',4),(1134,'com.liferay.portal.workflow.kaleo.designer','VIEW',1),(1135,'com.liferay.portal.workflow.kaleo.designer','PERMISSIONS',8),(1136,'com.liferay.portal.workflow.kaleo.designer.model.KaleoDraftDefinition','DELETE',2),(1137,'com.liferay.portal.workflow.kaleo.designer.model.KaleoDraftDefinition','PERMISSIONS',4),(1138,'com.liferay.portal.workflow.kaleo.designer.model.KaleoDraftDefinition','UPDATE',8),(1139,'com.liferay.portal.workflow.kaleo.designer.model.KaleoDraftDefinition','VIEW',1),(1140,'1_WAR_kaleodesignerportlet','VIEW',1),(1141,'1_WAR_kaleodesignerportlet','ADD_TO_PAGE',2),(1142,'1_WAR_kaleodesignerportlet','CONFIGURATION',4),(1143,'1_WAR_kaleodesignerportlet','PERMISSIONS',8),(1144,'1_WAR_kaleodesignerportlet','PREFERENCES',16),(1145,'1_WAR_kaleodesignerportlet','ACCESS_IN_CONTROL_PANEL',32),(1146,'2_WAR_kaleoformsportlet','VIEW',1),(1147,'2_WAR_kaleoformsportlet','ADD_TO_PAGE',2),(1148,'2_WAR_kaleoformsportlet','CONFIGURATION',4),(1149,'2_WAR_kaleoformsportlet','PERMISSIONS',8),(1150,'2_WAR_kaleoformsportlet','PREFERENCES',16),(1151,'2_WAR_kaleoformsportlet','ACCESS_IN_CONTROL_PANEL',32),(1152,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','COMPLETE_FORM',2),(1153,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','DELETE',4),(1154,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','PERMISSIONS',8),(1155,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','UPDATE',16),(1156,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','SUBMIT',32),(1157,'com.liferay.portal.workflow.kaleo.forms.model.KaleoProcess','VIEW',1),(1158,'com.liferay.portal.workflow.kaleo.forms','ADD_PROCESS',2),(1159,'com.liferay.portal.workflow.kaleo.forms','ADD_STRUCTURE',4),(1160,'com.liferay.portal.workflow.kaleo.forms','ADD_TEMPLATE',8),(1161,'com.liferay.portal.workflow.kaleo.forms','PERMISSIONS',16),(1162,'1_WAR_kaleoformsportlet','ADD_TO_PAGE',2),(1163,'1_WAR_kaleoformsportlet','CONFIGURATION',4),(1164,'1_WAR_kaleoformsportlet','VIEW',1),(1165,'1_WAR_kaleoformsportlet','PERMISSIONS',8),(1166,'1_WAR_kaleoformsportlet','PREFERENCES',16),(1167,'1_WAR_kaleoformsportlet','ACCESS_IN_CONTROL_PANEL',32),(1168,'2_WAR_notificationsportlet','VIEW',1),(1169,'2_WAR_notificationsportlet','ADD_TO_PAGE',2),(1170,'2_WAR_notificationsportlet','CONFIGURATION',4),(1171,'2_WAR_notificationsportlet','PERMISSIONS',8),(1172,'2_WAR_notificationsportlet','PREFERENCES',16),(1173,'2_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1174,'1_WAR_notificationsportlet','VIEW',1),(1175,'1_WAR_notificationsportlet','ADD_TO_PAGE',2),(1176,'1_WAR_notificationsportlet','CONFIGURATION',4),(1177,'1_WAR_notificationsportlet','PERMISSIONS',8),(1178,'1_WAR_notificationsportlet','PREFERENCES',16),(1179,'1_WAR_notificationsportlet','ACCESS_IN_CONTROL_PANEL',32),(1180,'2_WAR_oauthportlet','ACCESS_IN_CONTROL_PANEL',2),(1181,'2_WAR_oauthportlet','VIEW',1),(1182,'2_WAR_oauthportlet','CONFIGURATION',4),(1183,'2_WAR_oauthportlet','PERMISSIONS',8),(1184,'2_WAR_oauthportlet','PREFERENCES',16),(1185,'com.liferay.oauth.model.OAuthUser','DELETE',2),(1186,'com.liferay.oauth.model.OAuthUser','PERMISSIONS',4),(1187,'com.liferay.oauth.model.OAuthUser','UPDATE',8),(1188,'com.liferay.oauth.model.OAuthUser','VIEW',1),(1189,'1_WAR_oauthportlet','ACCESS_IN_CONTROL_PANEL',2),(1190,'1_WAR_oauthportlet','ADD_TO_PAGE',4),(1191,'1_WAR_oauthportlet','CONFIGURATION',8),(1192,'1_WAR_oauthportlet','VIEW',1),(1193,'1_WAR_oauthportlet','PERMISSIONS',16),(1194,'1_WAR_oauthportlet','PREFERENCES',32),(1195,'com.liferay.oauth.model.OAuthApplication','DELETE',2),(1196,'com.liferay.oauth.model.OAuthApplication','PERMISSIONS',4),(1197,'com.liferay.oauth.model.OAuthApplication','UPDATE',8),(1198,'com.liferay.oauth.model.OAuthApplication','VIEW',1),(1199,'com.liferay.oauth','ADD_APPLICATION',2),(1200,'com.liferay.oauth','PERMISSIONS',4),(1201,'3_WAR_oauthportlet','VIEW',1),(1202,'3_WAR_oauthportlet','ADD_TO_PAGE',2),(1203,'3_WAR_oauthportlet','CONFIGURATION',4),(1204,'3_WAR_oauthportlet','PERMISSIONS',8),(1205,'3_WAR_oauthportlet','PREFERENCES',16),(1206,'3_WAR_oauthportlet','ACCESS_IN_CONTROL_PANEL',32),(1207,'1_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1208,'1_WAR_opensocialportlet','CONFIGURATION',4),(1209,'1_WAR_opensocialportlet','VIEW',1),(1210,'1_WAR_opensocialportlet','PERMISSIONS',8),(1211,'1_WAR_opensocialportlet','PREFERENCES',16),(1212,'com.liferay.opensocial.model.Gadget','DELETE',2),(1213,'com.liferay.opensocial.model.Gadget','PERMISSIONS',4),(1214,'com.liferay.opensocial.model.Gadget','UPDATE',8),(1215,'com.liferay.opensocial.model.Gadget','VIEW',1),(1216,'com.liferay.opensocial','PERMISSIONS',2),(1217,'com.liferay.opensocial','PUBLISH_GADGET',4),(1218,'2_WAR_opensocialportlet','ADD_TO_PAGE',2),(1219,'2_WAR_opensocialportlet','CONFIGURATION',4),(1220,'2_WAR_opensocialportlet','VIEW',1),(1221,'2_WAR_opensocialportlet','PERMISSIONS',8),(1222,'2_WAR_opensocialportlet','PREFERENCES',16),(1223,'2_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1224,'3_WAR_opensocialportlet','ADD_TO_PAGE',2),(1225,'3_WAR_opensocialportlet','CONFIGURATION',4),(1226,'3_WAR_opensocialportlet','VIEW',1),(1227,'3_WAR_opensocialportlet','PERMISSIONS',8),(1228,'3_WAR_opensocialportlet','PREFERENCES',16),(1229,'3_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',32),(1230,'4_WAR_opensocialportlet','ACCESS_IN_CONTROL_PANEL',2),(1231,'4_WAR_opensocialportlet','CONFIGURATION',4),(1232,'4_WAR_opensocialportlet','VIEW',1),(1233,'4_WAR_opensocialportlet','PERMISSIONS',8),(1234,'4_WAR_opensocialportlet','PREFERENCES',16),(1235,'2_WAR_syncadminportlet','VIEW',1),(1236,'2_WAR_syncadminportlet','ADD_TO_PAGE',2),(1237,'2_WAR_syncadminportlet','CONFIGURATION',4),(1238,'2_WAR_syncadminportlet','PERMISSIONS',8),(1239,'2_WAR_syncadminportlet','PREFERENCES',16),(1240,'2_WAR_syncadminportlet','ACCESS_IN_CONTROL_PANEL',32),(1241,'1_WAR_syncadminportlet','VIEW',1),(1242,'1_WAR_syncadminportlet','ADD_TO_PAGE',2),(1243,'1_WAR_syncadminportlet','CONFIGURATION',4),(1244,'1_WAR_syncadminportlet','PERMISSIONS',8),(1245,'1_WAR_syncadminportlet','PREFERENCES',16),(1246,'1_WAR_syncadminportlet','ACCESS_IN_CONTROL_PANEL',32),(1247,'1_WAR_webformportlet','VIEW',1),(1248,'1_WAR_webformportlet','ADD_TO_PAGE',2),(1249,'1_WAR_webformportlet','CONFIGURATION',4),(1250,'1_WAR_webformportlet','PERMISSIONS',8),(1251,'1_WAR_webformportlet','PREFERENCES',16),(1252,'1_WAR_webformportlet','ACCESS_IN_CONTROL_PANEL',32),(1253,'manufacturerportlet_WAR_partsinventoryportlet','ADD_TO_PAGE',2),(1254,'manufacturerportlet_WAR_partsinventoryportlet','CONFIGURATION',4),(1255,'manufacturerportlet_WAR_partsinventoryportlet','VIEW',1),(1256,'manufacturerportlet_WAR_partsinventoryportlet','PERMISSIONS',8),(1257,'manufacturerportlet_WAR_partsinventoryportlet','PREFERENCES',16),(1258,'manufacturerportlet_WAR_partsinventoryportlet','ACCESS_IN_CONTROL_PANEL',32),(1259,'com.liferay.training.parts.model.Manufacturer','DELETE',2),(1260,'com.liferay.training.parts.model.Manufacturer','PERMISSIONS',4),(1261,'com.liferay.training.parts.model.Manufacturer','UPDATE',8),(1262,'com.liferay.training.parts.model.Manufacturer','VIEW',1),(1263,'partsportlet_WAR_partsinventoryportlet','ADD_PORTLET_DISPLAY_TEMPLATE',2),(1264,'partsportlet_WAR_partsinventoryportlet','ADD_TO_PAGE',4),(1265,'partsportlet_WAR_partsinventoryportlet','CONFIGURATION',8),(1266,'partsportlet_WAR_partsinventoryportlet','VIEW',1),(1267,'partsportlet_WAR_partsinventoryportlet','PERMISSIONS',16),(1268,'partsportlet_WAR_partsinventoryportlet','PREFERENCES',32),(1269,'partsportlet_WAR_partsinventoryportlet','ACCESS_IN_CONTROL_PANEL',64),(1270,'com.liferay.training.parts.model','ADD_PART',2),(1271,'com.liferay.training.parts.model','ADD_MANUFACTURER',4),(1272,'com.liferay.training.parts.model','PERMISSIONS',8),(1273,'com.liferay.training.parts.model.Part','DELETE',2),(1274,'com.liferay.training.parts.model.Part','PERMISSIONS',4),(1275,'com.liferay.training.parts.model.Part','UPDATE',8),(1276,'com.liferay.training.parts.model.Part','VIEW',1),(1277,'orderPortlet_WAR_partsinventoryportlet','VIEW',1),(1278,'orderPortlet_WAR_partsinventoryportlet','ADD_TO_PAGE',2),(1279,'orderPortlet_WAR_partsinventoryportlet','CONFIGURATION',4),(1280,'orderPortlet_WAR_partsinventoryportlet','PERMISSIONS',8),(1281,'orderPortlet_WAR_partsinventoryportlet','PREFERENCES',16),(1282,'orderPortlet_WAR_partsinventoryportlet','ACCESS_IN_CONTROL_PANEL',32),(1283,'shuttlestats_WAR_shuttlestatsportlet','VIEW',1),(1284,'shuttlestats_WAR_shuttlestatsportlet','ADD_TO_PAGE',2),(1285,'shuttlestats_WAR_shuttlestatsportlet','CONFIGURATION',4),(1286,'shuttlestats_WAR_shuttlestatsportlet','PERMISSIONS',8),(1287,'shuttlestats_WAR_shuttlestatsportlet','PREFERENCES',16),(1288,'shuttlestats_WAR_shuttlestatsportlet','ACCESS_IN_CONTROL_PANEL',32);
/*!40000 ALTER TABLE `resourceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblock`
--

DROP TABLE IF EXISTS `resourceblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblock`
--

LOCK TABLES `resourceblock` WRITE;
/*!40000 ALTER TABLE `resourceblock` DISABLE KEYS */;
INSERT INTO `resourceblock` VALUES (1,20155,20182,'com.liferay.calendar.model.CalendarResource','0e3875dce3bb9b14fcb987ed2366069a2b4b03be',1),(4,20155,20182,'com.liferay.calendar.model.Calendar','2ae2fa8381158f5a91ddcb6cedc99f1082cb30d7',1);
/*!40000 ALTER TABLE `resourceblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblockpermission`
--

DROP TABLE IF EXISTS `resourceblockpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblockpermission`
--

LOCK TABLES `resourceblockpermission` WRITE;
/*!40000 ALTER TABLE `resourceblockpermission` DISABLE KEYS */;
INSERT INTO `resourceblockpermission` VALUES (20751,1,20164,31),(20753,2,20164,63),(20754,3,20164,63),(20755,3,20171,1),(20756,4,20163,1),(20757,4,20164,63),(20758,4,20171,1);
/*!40000 ALTER TABLE `resourceblockpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepermission`
--

DROP TABLE IF EXISTS `resourcepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepermission`
--

LOCK TABLES `resourcepermission` WRITE;
/*!40000 ALTER TABLE `resourcepermission` DISABLE KEYS */;
INSERT INTO `resourcepermission` VALUES (1,20155,'2',1,'20155',20166,0,2),(2,20155,'140',1,'20155',20166,0,2),(3,20155,'158',1,'20155',20166,0,6),(4,20155,'153',1,'20155',20166,0,6),(5,20155,'com.liferay.portal.model.Role',4,'20162',20164,0,127),(6,20155,'com.liferay.portal.model.Role',4,'20163',20164,0,127),(7,20155,'com.liferay.portal.model.Role',4,'20164',20164,0,127),(8,20155,'com.liferay.portal.model.Role',4,'20165',20164,0,127),(9,20155,'com.liferay.portal.model.Role',4,'20166',20164,0,127),(10,20155,'com.liferay.portal.model.Role',4,'20167',20164,0,127),(11,20155,'com.liferay.portal.model.Role',4,'20168',20164,0,127),(12,20155,'com.liferay.portal.model.Role',4,'20169',20164,0,127),(13,20155,'com.liferay.portal.model.Role',4,'20170',20164,0,127),(14,20155,'com.liferay.portal.model.Role',4,'20171',20164,0,127),(15,20155,'com.liferay.portal.model.Role',4,'20172',20164,0,127),(16,20155,'com.liferay.portal.model.Role',4,'20162',20166,0,1),(17,20155,'com.liferay.portal.model.Role',4,'20163',20166,0,1),(18,20155,'com.liferay.portal.model.Role',4,'20164',20166,0,1),(19,20155,'com.liferay.portal.model.Role',4,'20165',20166,0,1),(20,20155,'com.liferay.portal.model.Role',4,'20166',20166,0,1),(21,20155,'com.liferay.portal.model.Role',4,'20167',20166,0,1),(22,20155,'com.liferay.portal.model.Role',4,'20168',20166,0,1),(23,20155,'com.liferay.portal.model.Role',4,'20169',20166,0,1),(24,20155,'com.liferay.portal.model.Role',4,'20170',20166,0,1),(25,20155,'com.liferay.portal.model.Role',4,'20171',20166,0,1),(26,20155,'com.liferay.portal.model.Role',4,'20172',20166,0,1),(27,20155,'com.liferay.portal.model.Layout',4,'20176',20164,20159,1023),(28,20155,'com.liferay.portal.model.Layout',4,'20176',20171,0,19),(29,20155,'com.liferay.portal.model.Layout',4,'20176',20163,0,1),(30,20155,'com.liferay.portal.model.Layout',4,'20185',20164,20159,1023),(31,20155,'com.liferay.portal.model.Layout',4,'20185',20171,0,19),(32,20155,'com.liferay.portal.model.Layout',4,'20185',20163,0,1),(33,20155,'com.liferay.portal.model.Layout',2,'20192',20166,0,1),(34,20155,'com.liferay.portlet.blogs',2,'20192',20166,0,14),(35,20155,'98',2,'20192',20165,0,2),(36,20155,'99',2,'20192',20165,0,2),(37,20155,'15',2,'20192',20165,0,2),(38,20155,'20',2,'20192',20165,0,2),(39,20155,'25',2,'20192',20165,0,2),(40,20155,'28',2,'20192',20165,0,2),(41,20155,'147',2,'20192',20165,0,2),(42,20155,'152',2,'20192',20165,0,2),(43,20155,'154',2,'20192',20165,0,2),(44,20155,'161',2,'20192',20165,0,2),(45,20155,'162',2,'20192',20165,0,2),(46,20155,'167',2,'20192',20165,0,2),(47,20155,'173',2,'20192',20165,0,32),(48,20155,'178',2,'20192',20165,0,32),(49,20155,'179',2,'20192',20165,0,2),(50,20155,'182',2,'20192',20165,0,32),(51,20155,'183',2,'20192',20165,0,32),(52,20155,'com.liferay.portal.model.Group',2,'20192',20165,0,8396800),(53,20155,'com.liferay.portlet.asset',2,'20192',20165,0,30),(54,20155,'com.liferay.portlet.blogs',2,'20192',20165,0,14),(55,20155,'com.liferay.portlet.bookmarks',2,'20192',20165,0,31),(56,20155,'com.liferay.portlet.documentlibrary',2,'20192',20165,0,1023),(57,20155,'com.liferay.portlet.journal',2,'20192',20165,0,255),(58,20155,'com.liferay.portlet.messageboards',2,'20192',20165,0,2047),(59,20155,'com.liferay.portlet.polls',2,'20192',20165,0,6),(60,20155,'com.liferay.portlet.wiki',2,'20192',20165,0,6),(61,20155,'com.liferay.portal.model.PasswordPolicy',4,'20198',20164,0,31),(62,20155,'com.liferay.portal.model.User',4,'20199',20164,20199,31),(63,20155,'193',1,'20155',20163,0,2),(64,20155,'193',1,'20155',20165,0,2),(65,20155,'193',1,'20155',20166,0,2),(66,20155,'194',1,'20155',20163,0,2),(67,20155,'194',1,'20155',20165,0,2),(68,20155,'194',1,'20155',20166,0,2),(69,20155,'110',1,'20155',20165,0,2),(70,20155,'110',1,'20155',20166,0,2),(71,20155,'114',1,'20155',20163,0,2),(72,20155,'114',1,'20155',20165,0,2),(73,20155,'114',1,'20155',20166,0,2),(74,20155,'115',1,'20155',20163,0,2),(75,20155,'115',1,'20155',20165,0,2),(76,20155,'115',1,'20155',20166,0,2),(77,20155,'116',1,'20155',20163,0,2),(78,20155,'116',1,'20155',20165,0,2),(79,20155,'116',1,'20155',20166,0,2),(80,20155,'118',1,'20155',20163,0,2),(81,20155,'118',1,'20155',20165,0,2),(82,20155,'118',1,'20155',20166,0,2),(83,20155,'97',1,'20155',20165,0,2),(84,20155,'97',1,'20155',20166,0,2),(85,20155,'98',1,'20155',20165,0,4),(86,20155,'98',1,'20155',20166,0,4),(87,20155,'11',1,'20155',20165,0,2),(88,20155,'11',1,'20155',20166,0,2),(89,20155,'15',1,'20155',20165,0,4),(90,20155,'15',1,'20155',20166,0,4),(91,20155,'16',1,'20155',20165,0,8),(92,20155,'16',1,'20155',20166,0,8),(93,20155,'19',1,'20155',20165,0,2),(94,20155,'19',1,'20155',20166,0,2),(95,20155,'121',1,'20155',20163,0,2),(96,20155,'121',1,'20155',20165,0,2),(97,20155,'121',1,'20155',20166,0,2),(98,20155,'122',1,'20155',20163,0,8),(99,20155,'122',1,'20155',20165,0,8),(100,20155,'122',1,'20155',20166,0,8),(101,20155,'3',1,'20155',20163,0,2),(102,20155,'3',1,'20155',20165,0,2),(103,20155,'3',1,'20155',20166,0,2),(104,20155,'127',1,'20155',20162,0,2),(105,20155,'9',1,'20155',20162,0,2),(106,20155,'20',1,'20155',20163,0,8),(107,20155,'20',1,'20155',20165,0,8),(108,20155,'20',1,'20155',20166,0,8),(109,20155,'23',1,'20155',20165,0,2),(110,20155,'23',1,'20155',20166,0,2),(111,20155,'26',1,'20155',20165,0,2),(112,20155,'26',1,'20155',20166,0,2),(113,20155,'27',1,'20155',20165,0,2),(114,20155,'27',1,'20155',20166,0,2),(115,20155,'28',1,'20155',20165,0,4),(116,20155,'28',1,'20155',20166,0,4),(117,20155,'29',1,'20155',20165,0,2),(118,20155,'29',1,'20155',20166,0,2),(119,20155,'30',1,'20155',20165,0,2),(120,20155,'30',1,'20155',20166,0,2),(121,20155,'31',1,'20155',20163,0,2),(122,20155,'31',1,'20155',20165,0,2),(123,20155,'31',1,'20155',20166,0,2),(124,20155,'33',1,'20155',20163,0,4),(125,20155,'33',1,'20155',20165,0,4),(126,20155,'33',1,'20155',20166,0,4),(127,20155,'34',1,'20155',20165,0,2),(128,20155,'34',1,'20155',20166,0,2),(129,20155,'36',1,'20155',20165,0,4),(130,20155,'36',1,'20155',20166,0,4),(131,20155,'39',1,'20155',20165,0,2),(132,20155,'39',1,'20155',20166,0,2),(133,20155,'141',1,'20155',20163,0,8),(134,20155,'141',1,'20155',20165,0,8),(135,20155,'141',1,'20155',20166,0,8),(136,20155,'143',1,'20155',20163,0,2),(137,20155,'143',1,'20155',20165,0,2),(138,20155,'143',1,'20155',20166,0,2),(139,20155,'148',1,'20155',20163,0,2),(140,20155,'148',1,'20155',20165,0,2),(141,20155,'148',1,'20155',20166,0,2),(142,20155,'47',1,'20155',20163,0,2),(143,20155,'47',1,'20155',20165,0,2),(144,20155,'47',1,'20155',20166,0,2),(145,20155,'48',1,'20155',20165,0,2),(146,20155,'48',1,'20155',20166,0,2),(147,20155,'153',1,'20155',20165,0,4),(148,20155,'158',1,'20155',20165,0,4),(149,20155,'50',1,'20155',20163,0,2),(150,20155,'50',1,'20155',20165,0,2),(151,20155,'50',1,'20155',20166,0,2),(152,20155,'54',1,'20155',20165,0,2),(153,20155,'54',1,'20155',20166,0,2),(154,20155,'56',1,'20155',20163,0,2),(155,20155,'56',1,'20155',20165,0,2),(156,20155,'56',1,'20155',20166,0,2),(157,20155,'58',1,'20155',20163,0,2),(158,20155,'58',1,'20155',20165,0,2),(159,20155,'58',1,'20155',20166,0,2),(160,20155,'59',1,'20155',20165,0,2),(161,20155,'59',1,'20155',20166,0,2),(162,20155,'164',1,'20155',20163,0,2),(163,20155,'164',1,'20155',20165,0,2),(164,20155,'164',1,'20155',20166,0,2),(165,20155,'166',1,'20155',20165,0,4),(166,20155,'166',1,'20155',20166,0,4),(167,20155,'167',1,'20155',20165,0,4),(168,20155,'167',1,'20155',20166,0,4),(169,20155,'169',1,'20155',20165,0,2),(170,20155,'169',1,'20155',20166,0,2),(171,20155,'61',1,'20155',20165,0,2),(172,20155,'61',1,'20155',20166,0,2),(173,20155,'62',1,'20155',20165,0,2),(174,20155,'62',1,'20155',20166,0,2),(175,20155,'64',1,'20155',20163,0,2),(176,20155,'64',1,'20155',20165,0,2),(177,20155,'64',1,'20155',20166,0,2),(178,20155,'66',1,'20155',20165,0,2),(179,20155,'66',1,'20155',20166,0,2),(180,20155,'67',1,'20155',20165,0,2),(181,20155,'67',1,'20155',20166,0,2),(182,20155,'173',1,'20155',20163,0,2),(183,20155,'173',1,'20155',20165,0,2),(184,20155,'173',1,'20155',20166,0,2),(185,20155,'175',1,'20155',20163,0,2),(186,20155,'175',1,'20155',20165,0,2),(187,20155,'175',1,'20155',20166,0,2),(188,20155,'176',1,'20155',20162,0,2),(189,20155,'178',1,'20155',20165,0,4),(190,20155,'178',1,'20155',20166,0,4),(191,20155,'70',1,'20155',20165,0,2),(192,20155,'70',1,'20155',20166,0,2),(193,20155,'71',1,'20155',20163,0,2),(194,20155,'71',1,'20155',20165,0,2),(195,20155,'71',1,'20155',20166,0,2),(196,20155,'73',1,'20155',20163,0,2),(197,20155,'73',1,'20155',20165,0,2),(198,20155,'73',1,'20155',20166,0,2),(199,20155,'77',1,'20155',20163,0,2),(200,20155,'77',1,'20155',20165,0,2),(201,20155,'77',1,'20155',20166,0,2),(202,20155,'180',1,'20155',20163,0,2),(203,20155,'180',1,'20155',20165,0,2),(204,20155,'180',1,'20155',20166,0,2),(205,20155,'181',1,'20155',20163,0,2),(206,20155,'181',1,'20155',20165,0,2),(207,20155,'181',1,'20155',20166,0,2),(208,20155,'182',1,'20155',20165,0,2),(209,20155,'182',1,'20155',20166,0,2),(210,20155,'183',1,'20155',20162,0,2),(211,20155,'184',1,'20155',20163,0,2),(212,20155,'184',1,'20155',20165,0,2),(213,20155,'184',1,'20155',20166,0,2),(214,20155,'186',1,'20155',20165,0,2),(215,20155,'186',1,'20155',20166,0,2),(216,20155,'187',1,'20155',20165,0,2),(217,20155,'187',1,'20155',20166,0,2),(218,20155,'100',1,'20155',20165,0,2),(219,20155,'100',1,'20155',20166,0,2),(220,20155,'188',1,'20155',20165,0,2),(221,20155,'188',1,'20155',20166,0,2),(222,20155,'101',1,'20155',20163,0,4),(223,20155,'101',1,'20155',20165,0,4),(224,20155,'101',1,'20155',20166,0,4),(225,20155,'102',1,'20155',20162,0,2),(226,20155,'107',1,'20155',20165,0,2),(227,20155,'107',1,'20155',20166,0,2),(228,20155,'108',1,'20155',20165,0,2),(229,20155,'108',1,'20155',20166,0,2),(230,20155,'82',1,'20155',20163,0,2),(231,20155,'82',1,'20155',20165,0,2),(232,20155,'82',1,'20155',20166,0,2),(233,20155,'83',1,'20155',20165,0,4),(234,20155,'83',1,'20155',20166,0,4),(235,20155,'84',1,'20155',20165,0,4),(236,20155,'84',1,'20155',20166,0,4),(237,20155,'85',1,'20155',20163,0,2),(238,20155,'85',1,'20155',20165,0,2),(239,20155,'85',1,'20155',20166,0,2),(240,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20164,20159,15),(241,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20166,0,1),(242,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20303',20163,0,1),(243,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20164,20159,15),(244,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20166,0,1),(245,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20304',20163,0,1),(246,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20164,20159,15),(247,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20166,0,1),(248,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20305',20163,0,1),(249,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20164,20159,15),(250,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20166,0,1),(251,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20307',20163,0,1),(252,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20164,20159,15),(253,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20166,0,1),(254,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20306',20163,0,1),(255,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20164,20159,15),(256,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20166,0,1),(257,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20309',20163,0,1),(258,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20164,20159,15),(259,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20166,0,1),(260,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20308',20163,0,1),(261,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20164,20159,15),(262,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20166,0,1),(263,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20311',20163,0,1),(264,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20164,20159,15),(265,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20166,0,1),(266,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20310',20163,0,1),(267,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20164,20159,15),(268,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20166,0,1),(269,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20313',20163,0,1),(270,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20164,20159,15),(271,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20166,0,1),(272,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'20312',20163,0,1),(273,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20164,20159,15),(274,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20166,0,1),(275,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20315',20163,0,1),(276,20155,'com.liferay.portal.model.LayoutPrototype',4,'20316',20164,20159,15),(277,20155,'com.liferay.portal.model.Layout',4,'20320',20164,20159,1023),(278,20155,'com.liferay.portal.model.Layout',4,'20320',20171,0,19),(279,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20324',20164,20159,15),(280,20155,'33',4,'20320_LAYOUT_33',20164,0,127),(281,20155,'33',4,'20320_LAYOUT_33',20171,0,1),(282,20155,'33',4,'20320_LAYOUT_33',20163,0,1),(283,20155,'com.liferay.portlet.blogs',4,'20317',20164,0,14),(284,20155,'148',4,'20320_LAYOUT_148_INSTANCE_Rn4ab8CZRPV1',20164,0,63),(285,20155,'148',4,'20320_LAYOUT_148_INSTANCE_Rn4ab8CZRPV1',20171,0,1),(286,20155,'148',4,'20320_LAYOUT_148_INSTANCE_Rn4ab8CZRPV1',20163,0,1),(287,20155,'114',4,'20320_LAYOUT_114',20164,0,63),(288,20155,'114',4,'20320_LAYOUT_114',20171,0,1),(289,20155,'114',4,'20320_LAYOUT_114',20163,0,1),(290,20155,'com.liferay.portal.model.LayoutPrototype',4,'20328',20164,20159,15),(291,20155,'com.liferay.portal.model.Layout',4,'20332',20164,20159,1023),(292,20155,'com.liferay.portal.model.Layout',4,'20332',20171,0,19),(293,20155,'141',4,'20332_LAYOUT_141_INSTANCE_RcKw4ILeUBkT',20164,0,127),(294,20155,'141',4,'20332_LAYOUT_141_INSTANCE_RcKw4ILeUBkT',20171,0,1),(295,20155,'141',4,'20332_LAYOUT_141_INSTANCE_RcKw4ILeUBkT',20163,0,1),(296,20155,'122',4,'20332_LAYOUT_122_INSTANCE_4F3aXtMCr1z0',20164,0,127),(297,20155,'122',4,'20332_LAYOUT_122_INSTANCE_4F3aXtMCr1z0',20171,0,1),(298,20155,'122',4,'20332_LAYOUT_122_INSTANCE_4F3aXtMCr1z0',20163,0,1),(299,20155,'3',4,'20332_LAYOUT_3',20164,0,63),(300,20155,'3',4,'20332_LAYOUT_3',20171,0,1),(301,20155,'3',4,'20332_LAYOUT_3',20163,0,1),(302,20155,'101',4,'20332_LAYOUT_101_INSTANCE_hi6Bo3maqTEI',20164,0,255),(303,20155,'101',4,'20332_LAYOUT_101_INSTANCE_hi6Bo3maqTEI',20171,0,17),(304,20155,'101',4,'20332_LAYOUT_101_INSTANCE_hi6Bo3maqTEI',20163,0,1),(305,20155,'com.liferay.portal.model.LayoutPrototype',4,'20338',20164,20159,15),(306,20155,'com.liferay.portal.model.Layout',4,'20342',20164,20159,1023),(307,20155,'com.liferay.portal.model.Layout',4,'20342',20171,0,19),(308,20155,'36',4,'20342_LAYOUT_36',20164,0,127),(309,20155,'36',4,'20342_LAYOUT_36',20171,0,1),(310,20155,'36',4,'20342_LAYOUT_36',20163,0,1),(311,20155,'com.liferay.portlet.wiki',4,'20339',20164,0,6),(312,20155,'122',4,'20342_LAYOUT_122_INSTANCE_WIsS8PuKo9L5',20164,0,127),(313,20155,'122',4,'20342_LAYOUT_122_INSTANCE_WIsS8PuKo9L5',20171,0,1),(314,20155,'122',4,'20342_LAYOUT_122_INSTANCE_WIsS8PuKo9L5',20163,0,1),(315,20155,'141',4,'20342_LAYOUT_141_INSTANCE_hcLpTk4m0g5M',20164,0,127),(316,20155,'141',4,'20342_LAYOUT_141_INSTANCE_hcLpTk4m0g5M',20171,0,1),(317,20155,'141',4,'20342_LAYOUT_141_INSTANCE_hcLpTk4m0g5M',20163,0,1),(318,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20349',20164,20159,15),(322,20155,'com.liferay.portal.model.Layout',4,'20361',20164,20159,1023),(323,20155,'com.liferay.portal.model.Layout',4,'20361',20171,0,19),(324,20155,'com.liferay.portal.model.Layout',4,'20361',20163,0,1),(325,20155,'19',4,'20361_LAYOUT_19',20164,0,63),(326,20155,'19',4,'20361_LAYOUT_19',20171,0,1),(327,20155,'19',4,'20361_LAYOUT_19',20163,0,1),(328,20155,'com.liferay.portlet.messageboards',4,'20350',20164,0,2047),(329,20155,'com.liferay.portlet.messageboards',4,'20350',20171,0,781),(330,20155,'com.liferay.portlet.messageboards',4,'20350',20163,0,1),(331,20155,'3',4,'20361_LAYOUT_3',20164,0,63),(332,20155,'3',4,'20361_LAYOUT_3',20171,0,1),(333,20155,'3',4,'20361_LAYOUT_3',20163,0,1),(334,20155,'59',4,'20361_LAYOUT_59_INSTANCE_2WE525RmJK7l',20164,0,63),(335,20155,'59',4,'20361_LAYOUT_59_INSTANCE_2WE525RmJK7l',20171,0,1),(336,20155,'59',4,'20361_LAYOUT_59_INSTANCE_2WE525RmJK7l',20163,0,1),(337,20155,'com.liferay.portlet.polls',4,'20350',20164,0,6),(338,20155,'180',4,'20361_LAYOUT_180',20164,0,63),(339,20155,'180',4,'20361_LAYOUT_180',20171,0,1),(340,20155,'180',4,'20361_LAYOUT_180',20163,0,1),(341,20155,'101',4,'20361_LAYOUT_101_INSTANCE_Mni5kqgAP7sX',20164,0,255),(342,20155,'101',4,'20361_LAYOUT_101_INSTANCE_Mni5kqgAP7sX',20171,0,17),(343,20155,'101',4,'20361_LAYOUT_101_INSTANCE_Mni5kqgAP7sX',20163,0,1),(344,20155,'com.liferay.portal.model.Layout',4,'20369',20164,20159,1023),(345,20155,'com.liferay.portal.model.Layout',4,'20369',20171,0,19),(346,20155,'com.liferay.portal.model.Layout',4,'20369',20163,0,1),(347,20155,'36',4,'20369_LAYOUT_36',20164,0,127),(348,20155,'36',4,'20369_LAYOUT_36',20171,0,1),(349,20155,'36',4,'20369_LAYOUT_36',20163,0,1),(350,20155,'com.liferay.portlet.wiki',4,'20350',20164,0,6),(351,20155,'122',4,'20369_LAYOUT_122_INSTANCE_giCsUjsGyGWy',20164,0,127),(352,20155,'122',4,'20369_LAYOUT_122_INSTANCE_giCsUjsGyGWy',20171,0,1),(353,20155,'122',4,'20369_LAYOUT_122_INSTANCE_giCsUjsGyGWy',20163,0,1),(354,20155,'148',4,'20369_LAYOUT_148_INSTANCE_FaJACLiu7ypL',20164,0,63),(355,20155,'148',4,'20369_LAYOUT_148_INSTANCE_FaJACLiu7ypL',20171,0,1),(356,20155,'148',4,'20369_LAYOUT_148_INSTANCE_FaJACLiu7ypL',20163,0,1),(357,20155,'com.liferay.portal.model.LayoutSetPrototype',4,'20375',20164,20159,15),(361,20155,'com.liferay.portal.model.Layout',4,'20387',20164,20159,1023),(362,20155,'com.liferay.portal.model.Layout',4,'20387',20171,0,19),(363,20155,'com.liferay.portal.model.Layout',4,'20387',20163,0,1),(364,20155,'116',4,'20387_LAYOUT_116',20164,0,63),(365,20155,'116',4,'20387_LAYOUT_116',20171,0,1),(366,20155,'116',4,'20387_LAYOUT_116',20163,0,1),(367,20155,'3',4,'20387_LAYOUT_3',20164,0,63),(368,20155,'3',4,'20387_LAYOUT_3',20171,0,1),(369,20155,'3',4,'20387_LAYOUT_3',20163,0,1),(370,20155,'82',4,'20387_LAYOUT_82',20164,0,63),(371,20155,'82',4,'20387_LAYOUT_82',20171,0,1),(372,20155,'82',4,'20387_LAYOUT_82',20163,0,1),(373,20155,'101',4,'20387_LAYOUT_101_INSTANCE_bCh2dLhmDhSE',20164,0,255),(374,20155,'101',4,'20387_LAYOUT_101_INSTANCE_bCh2dLhmDhSE',20171,0,17),(375,20155,'101',4,'20387_LAYOUT_101_INSTANCE_bCh2dLhmDhSE',20163,0,1),(376,20155,'com.liferay.portal.model.Layout',4,'20396',20164,20159,1023),(377,20155,'com.liferay.portal.model.Layout',4,'20396',20171,0,19),(378,20155,'com.liferay.portal.model.Layout',4,'20396',20163,0,1),(379,20155,'20',4,'20396_LAYOUT_20',20164,0,127),(380,20155,'20',4,'20396_LAYOUT_20',20171,0,1),(381,20155,'20',4,'20396_LAYOUT_20',20163,0,1),(382,20155,'com.liferay.portlet.documentlibrary',4,'20376',20164,0,1023),(383,20155,'com.liferay.portlet.documentlibrary',4,'20376',20171,0,331),(384,20155,'com.liferay.portlet.documentlibrary',4,'20376',20163,0,1),(385,20155,'101',4,'20396_LAYOUT_101_INSTANCE_XY8sYXFVIGFi',20164,0,255),(386,20155,'101',4,'20396_LAYOUT_101_INSTANCE_XY8sYXFVIGFi',20171,0,17),(387,20155,'101',4,'20396_LAYOUT_101_INSTANCE_XY8sYXFVIGFi',20163,0,1),(388,20155,'com.liferay.portal.model.Layout',4,'20404',20164,20159,1023),(389,20155,'com.liferay.portal.model.Layout',4,'20404',20171,0,19),(390,20155,'com.liferay.portal.model.Layout',4,'20404',20163,0,1),(391,20155,'39',4,'20404_LAYOUT_39_INSTANCE_BjucSHUHtJGw',20164,0,63),(392,20155,'39',4,'20404_LAYOUT_39_INSTANCE_BjucSHUHtJGw',20171,0,1),(393,20155,'39',4,'20404_LAYOUT_39_INSTANCE_BjucSHUHtJGw',20163,0,1),(394,20155,'39',4,'20404_LAYOUT_39_INSTANCE_RFylSpnrkEGm',20164,0,63),(395,20155,'39',4,'20404_LAYOUT_39_INSTANCE_RFylSpnrkEGm',20171,0,1),(396,20155,'39',4,'20404_LAYOUT_39_INSTANCE_RFylSpnrkEGm',20163,0,1),(397,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20412',20164,20159,15),(398,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20413',20164,20159,15),(399,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20414',20164,20159,15),(400,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20415',20164,20159,15),(401,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20416',20164,20159,15),(402,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20417',20164,20159,15),(403,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20418',20164,20159,15),(404,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20420',20164,20159,15),(405,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20422',20164,20159,15),(406,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20425',20164,20159,15),(407,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20427',20164,20159,15),(408,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20429',20164,20159,15),(409,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20431',20164,20159,15),(410,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20442',20164,0,15),(411,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20443',20164,0,15),(412,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20444',20164,0,15),(413,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20445',20164,0,15),(414,20155,'1_WAR_calendarportlet',1,'20155',20162,0,4),(415,20155,'1_WAR_calendarportlet',1,'20155',20163,0,4),(416,20155,'1_WAR_calendarportlet',1,'20155',20165,0,4),(417,20155,'1_WAR_calendarportlet',1,'20155',20166,0,4),(418,20155,'com.liferay.portal.model.Role',4,'20481',20164,0,127),(419,20155,'com.liferay.portal.model.Role',4,'20487',20164,0,127),(420,20155,'com.liferay.portal.model.Role',4,'20490',20164,0,127),(421,20155,'2_WAR_kaleoformsportlet',1,'20155',20162,0,2),(422,20155,'2_WAR_kaleoformsportlet',1,'20155',20163,0,2),(423,20155,'2_WAR_kaleoformsportlet',1,'20155',20165,0,2),(424,20155,'2_WAR_kaleoformsportlet',1,'20155',20166,0,2),(425,20155,'1_WAR_kaleoformsportlet',1,'20155',20162,0,2),(426,20155,'1_WAR_kaleoformsportlet',1,'20155',20163,0,2),(427,20155,'1_WAR_kaleoformsportlet',1,'20155',20165,0,2),(428,20155,'1_WAR_kaleoformsportlet',1,'20155',20166,0,2),(429,20155,'1_WAR_notificationsportlet',1,'20155',20162,0,2),(430,20155,'1_WAR_notificationsportlet',1,'20155',20163,0,2),(431,20155,'1_WAR_notificationsportlet',1,'20155',20165,0,2),(432,20155,'1_WAR_notificationsportlet',1,'20155',20166,0,2),(433,20155,'1_WAR_oauthportlet',1,'20155',20162,0,4),(434,20155,'1_WAR_oauthportlet',1,'20155',20163,0,4),(435,20155,'1_WAR_oauthportlet',1,'20155',20165,0,4),(436,20155,'1_WAR_oauthportlet',1,'20155',20166,0,4),(437,20155,'2_WAR_opensocialportlet',1,'20155',20162,0,2),(438,20155,'2_WAR_opensocialportlet',1,'20155',20163,0,2),(439,20155,'2_WAR_opensocialportlet',1,'20155',20165,0,2),(440,20155,'2_WAR_opensocialportlet',1,'20155',20166,0,2),(441,20155,'3_WAR_opensocialportlet',1,'20155',20162,0,2),(442,20155,'3_WAR_opensocialportlet',1,'20155',20163,0,2),(443,20155,'3_WAR_opensocialportlet',1,'20155',20165,0,2),(444,20155,'3_WAR_opensocialportlet',1,'20155',20166,0,2),(445,20155,'2_WAR_syncadminportlet',1,'20155',20162,0,2),(446,20155,'2_WAR_syncadminportlet',1,'20155',20163,0,2),(447,20155,'2_WAR_syncadminportlet',1,'20155',20165,0,2),(448,20155,'2_WAR_syncadminportlet',1,'20155',20166,0,2),(449,20155,'1_WAR_syncadminportlet',1,'20155',20162,0,2),(450,20155,'1_WAR_webformportlet',1,'20155',20162,0,2),(451,20155,'1_WAR_webformportlet',1,'20155',20163,0,2),(452,20155,'1_WAR_webformportlet',1,'20155',20165,0,2),(453,20155,'1_WAR_webformportlet',1,'20155',20166,0,2),(454,20155,'com.liferay.portal.model.Layout',4,'20536',20164,20199,1023),(455,20155,'com.liferay.portal.model.Layout',4,'20542',20164,20199,1023),(456,20155,'com.liferay.portal.model.Layout',4,'20542',20166,0,19),(457,20155,'com.liferay.portal.model.Layout',4,'20542',20163,0,1),(458,20155,'145',4,'20185_LAYOUT_145',20164,0,63),(459,20155,'145',4,'20185_LAYOUT_145',20171,0,1),(460,20155,'145',4,'20185_LAYOUT_145',20163,0,1),(464,20155,'47',4,'20185_LAYOUT_47',20164,0,63),(465,20155,'47',4,'20185_LAYOUT_47',20171,0,1),(466,20155,'47',4,'20185_LAYOUT_47',20163,0,1),(467,20155,'1_WAR_kaleodesignerportlet',4,'20185_LAYOUT_1_WAR_kaleodesignerportlet',20164,0,63),(468,20155,'1_WAR_kaleodesignerportlet',4,'20185_LAYOUT_1_WAR_kaleodesignerportlet',20171,0,1),(469,20155,'1_WAR_kaleodesignerportlet',4,'20185_LAYOUT_1_WAR_kaleodesignerportlet',20163,0,1),(470,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(471,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20171,0,1),(472,20155,'2_WAR_notificationsportlet',4,'20185_LAYOUT_2_WAR_notificationsportlet',20163,0,1),(473,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20560',20164,20159,255),(474,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20560',20171,0,29),(475,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20560',20163,0,1),(476,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20561',20164,20199,255),(477,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20561',20171,0,29),(478,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20561',20163,0,1),(479,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20562',20164,20199,255),(480,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20562',20171,0,29),(481,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20562',20163,0,1),(482,20155,'com.liferay.portlet.journal',4,'20182',20164,0,255),(483,20155,'com.liferay.portlet.journal',4,'20182',20171,0,1),(484,20155,'com.liferay.portlet.journal',4,'20182',20163,0,1),(485,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20567',20164,20199,255),(486,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20567',20171,0,29),(487,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20567',20163,0,1),(488,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20568',20164,20199,255),(489,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20568',20171,0,29),(490,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20568',20163,0,1),(497,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20580',20164,20159,255),(498,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20580',20171,0,29),(499,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20580',20163,0,1),(500,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20581',20164,20199,255),(501,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20581',20171,0,29),(502,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20581',20163,0,1),(503,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20582',20164,20199,255),(504,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20582',20171,0,3),(505,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20582',20163,0,3),(506,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20588',20164,20199,15),(507,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20588',20171,0,1),(508,20155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'20588',20163,0,1),(509,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20597',20164,20199,255),(510,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20597',20171,0,29),(511,20155,'com.liferay.portlet.documentlibrary.model.DLFolder',4,'20597',20163,0,1),(512,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20600',20164,20199,255),(513,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20600',20171,0,3),(514,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20600',20163,0,3),(515,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20609',20164,20199,255),(516,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20609',20171,0,3),(517,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20609',20163,0,3),(518,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20617',20164,20199,255),(519,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20617',20171,0,3),(520,20155,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'20617',20163,0,3),(521,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20625',20164,20199,127),(522,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20625',20171,0,5),(523,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20625',20163,0,1),(524,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20627',20164,20199,127),(525,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20627',20171,0,5),(526,20155,'com.liferay.portlet.journal.model.JournalFolder',4,'20627',20163,0,1),(527,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20629',20164,20199,15),(528,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20629',20171,0,1),(529,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'20629',20163,0,1),(530,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20630',20164,20199,15),(531,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20630',20171,0,1),(532,20155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'20630',20163,0,1),(533,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20634',20164,20199,255),(534,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20634',20171,0,3),(535,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20634',20163,0,3),(536,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20643',20164,20199,255),(537,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20643',20171,0,3),(538,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20643',20163,0,3),(539,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20652',20164,20199,255),(540,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20652',20171,0,3),(541,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20652',20163,0,3),(542,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20725',20164,20199,255),(543,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20725',20171,0,3),(544,20155,'com.liferay.portlet.journal.model.JournalArticle',4,'20725',20163,0,3),(545,20155,'com.liferay.portlet.documentlibrary',4,'20182',20164,0,1023),(546,20155,'com.liferay.portlet.documentlibrary',4,'20182',20171,0,331),(547,20155,'com.liferay.portlet.documentlibrary',4,'20182',20163,0,1),(548,20155,'56',4,'20185_LAYOUT_56_INSTANCE_d4rZoQEy6tmm',20164,0,63),(549,20155,'56',4,'20185_LAYOUT_56_INSTANCE_d4rZoQEy6tmm',20171,0,1),(550,20155,'56',4,'20185_LAYOUT_56_INSTANCE_d4rZoQEy6tmm',20163,0,1),(551,20155,'56',4,'20185_LAYOUT_56_INSTANCE_gfc1bQxD7BCR',20164,0,63),(552,20155,'56',4,'20185_LAYOUT_56_INSTANCE_gfc1bQxD7BCR',20171,0,1),(553,20155,'56',4,'20185_LAYOUT_56_INSTANCE_gfc1bQxD7BCR',20163,0,1),(554,20155,'56',4,'20185_LAYOUT_56_INSTANCE_Wvv422wGCE4T',20164,0,63),(555,20155,'56',4,'20185_LAYOUT_56_INSTANCE_Wvv422wGCE4T',20171,0,1),(556,20155,'56',4,'20185_LAYOUT_56_INSTANCE_Wvv422wGCE4T',20163,0,1),(557,20155,'86',4,'20185_LAYOUT_86',20164,0,63),(558,20155,'86',4,'20185_LAYOUT_86',20171,0,1),(559,20155,'86',4,'20185_LAYOUT_86',20163,0,1),(560,20155,'15',4,'20185_LAYOUT_15',20164,0,63),(561,20155,'15',4,'20185_LAYOUT_15',20171,0,1),(562,20155,'15',4,'20185_LAYOUT_15',20163,0,1),(563,20155,'manufacturerportlet_WAR_partsinventoryportlet',1,'20155',20162,0,2),(564,20155,'manufacturerportlet_WAR_partsinventoryportlet',1,'20155',20163,0,2),(565,20155,'manufacturerportlet_WAR_partsinventoryportlet',1,'20155',20165,0,2),(566,20155,'manufacturerportlet_WAR_partsinventoryportlet',1,'20155',20166,0,2),(567,20155,'partsportlet_WAR_partsinventoryportlet',1,'20155',20162,0,4),(568,20155,'partsportlet_WAR_partsinventoryportlet',1,'20155',20163,0,4),(569,20155,'partsportlet_WAR_partsinventoryportlet',1,'20155',20165,0,4),(570,20155,'partsportlet_WAR_partsinventoryportlet',1,'20155',20166,0,4),(571,20155,'orderPortlet_WAR_partsinventoryportlet',1,'20155',20162,0,2),(572,20155,'orderPortlet_WAR_partsinventoryportlet',1,'20155',20163,0,2),(573,20155,'orderPortlet_WAR_partsinventoryportlet',1,'20155',20165,0,2),(574,20155,'orderPortlet_WAR_partsinventoryportlet',1,'20155',20166,0,2),(575,20155,'shuttlestats_WAR_shuttlestatsportlet',1,'20155',20162,0,2),(576,20155,'shuttlestats_WAR_shuttlestatsportlet',1,'20155',20163,0,2),(577,20155,'shuttlestats_WAR_shuttlestatsportlet',1,'20155',20165,0,2),(578,20155,'shuttlestats_WAR_shuttlestatsportlet',1,'20155',20166,0,2),(579,20155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'20809',20164,0,15),(580,20155,'partsportlet_WAR_partsinventoryportlet',4,'20185_LAYOUT_partsportlet_WAR_partsinventoryportlet',20164,0,127),(581,20155,'partsportlet_WAR_partsinventoryportlet',4,'20185_LAYOUT_partsportlet_WAR_partsinventoryportlet',20171,0,1),(582,20155,'partsportlet_WAR_partsinventoryportlet',4,'20185_LAYOUT_partsportlet_WAR_partsinventoryportlet',20163,0,1),(583,20155,'com.liferay.training.parts.model',4,'20182',20164,0,14),(584,20155,'com.liferay.training.parts.model.Manufacturer',4,'1',20164,20199,15),(585,20155,'com.liferay.training.parts.model.Manufacturer',4,'1',20171,0,1),(586,20155,'com.liferay.training.parts.model.Manufacturer',4,'1',20163,0,1),(587,20155,'com.liferay.training.parts.model.Part',4,'1',20164,20199,15),(588,20155,'com.liferay.training.parts.model.Part',4,'1',20171,0,1),(589,20155,'com.liferay.training.parts.model.Part',4,'1',20163,0,1),(601,20155,'58',4,'20185_LAYOUT_58',20164,0,63),(602,20155,'58',4,'20185_LAYOUT_58',20171,0,1),(603,20155,'58',4,'20185_LAYOUT_58',20163,0,1),(604,20155,'49',4,'20185_LAYOUT_49',20164,0,63),(605,20155,'49',4,'20185_LAYOUT_49',20171,0,1),(606,20155,'49',4,'20185_LAYOUT_49',20163,0,1),(607,20155,'82',4,'20542_LAYOUT_82',20164,0,63),(608,20155,'33',4,'20542_LAYOUT_33',20164,0,127),(609,20155,'33',4,'20542_LAYOUT_33',20166,0,1),(610,20155,'82',4,'20542_LAYOUT_82',20166,0,1),(611,20155,'33',4,'20542_LAYOUT_33',20163,0,1),(612,20155,'82',4,'20542_LAYOUT_82',20163,0,1),(613,20155,'com.liferay.portlet.blogs',4,'20201',20164,0,14),(614,20155,'3',4,'20542_LAYOUT_3',20164,0,63),(615,20155,'3',4,'20542_LAYOUT_3',20166,0,1),(616,20155,'3',4,'20542_LAYOUT_3',20163,0,1),(617,20155,'1_WAR_kaleodesignerportlet',4,'20542_LAYOUT_1_WAR_kaleodesignerportlet',20164,0,63),(618,20155,'1_WAR_kaleodesignerportlet',4,'20542_LAYOUT_1_WAR_kaleodesignerportlet',20166,0,1),(619,20155,'1_WAR_kaleodesignerportlet',4,'20542_LAYOUT_1_WAR_kaleodesignerportlet',20163,0,1),(620,20155,'145',4,'20542_LAYOUT_145',20164,0,63),(621,20155,'145',4,'20542_LAYOUT_145',20166,0,1),(622,20155,'145',4,'20542_LAYOUT_145',20163,0,1),(623,20155,'2_WAR_notificationsportlet',4,'20542_LAYOUT_2_WAR_notificationsportlet',20164,0,63),(624,20155,'2_WAR_notificationsportlet',4,'20542_LAYOUT_2_WAR_notificationsportlet',20166,0,1),(625,20155,'2_WAR_notificationsportlet',4,'20542_LAYOUT_2_WAR_notificationsportlet',20163,0,1);
/*!40000 ALTER TABLE `resourcepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcetypepermission`
--

DROP TABLE IF EXISTS `resourcetypepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcetypepermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcetypepermission`
--

LOCK TABLES `resourcetypepermission` WRITE;
/*!40000 ALTER TABLE `resourcetypepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcetypepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_`
--

DROP TABLE IF EXISTS `role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_`
--

LOCK TABLES `role_` WRITE;
/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` VALUES ('6d8da659-1455-235b-46bb-9f217a689a82',20162,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20004,20162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('f01d00c8-a9ca-b76a-a6b8-4161b2021a26',20163,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20004,20163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('0435947d-02dc-6e1f-30e6-aca5aee39f1a',20164,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20004,20164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('1ddeb155-d7d0-e996-a11b-86efb7244f0a',20165,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20004,20165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('8c05c38d-d0de-c463-2098-240cf515021c',20166,20155,20159,'','2017-11-21 05:47:29','2017-11-21 05:47:29',20004,20166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('aa1c3984-96f7-ad31-49ef-4a3e1cb4e231',20167,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20167,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('ff5d2246-2796-ef55-5f9b-19302df74f4e',20168,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20168,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('393e580a-35ec-68f8-a237-6e775a6b075d',20169,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20169,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('fd7aaf6c-bbf9-b3b4-5b04-9926298dc72f',20170,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20170,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('9a1c1bab-69fd-97f1-b132-bce323ae6f66',20171,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20171,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('c99c951a-af0c-df9c-7558-977a4846badc',20172,20155,20159,'','2017-11-21 05:47:30','2017-11-21 05:47:30',20004,20172,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),('f446fbec-0da8-c6c9-3407-a3d10275902e',20481,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20004,20481,'Organization Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',3,''),('1fa11131-86c3-2f44-8dfa-9416e58b9648',20487,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20004,20487,'Site Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',2,''),('ef8829bd-2ab9-a39e-bddf-b265ad15c9b2',20490,20155,20159,'','2017-11-21 05:51:10','2017-11-21 05:51:10',20004,20490,'Portal Content Reviewer','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Autogenerated role from workflow definition</Description></root>',1,'');
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

LOCK TABLES `scframeworkversi_scproductvers` WRITE;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversion`
--

LOCK TABLES `scframeworkversion` WRITE;
/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicense`
--

LOCK TABLES `sclicense` WRITE;
/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicenses_scproductentries`
--

LOCK TABLES `sclicenses_scproductentries` WRITE;
/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductentry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductentry`
--

LOCK TABLES `scproductentry` WRITE;
/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductscreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductscreenshot`
--

LOCK TABLES `scproductscreenshot` WRITE;
/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductversion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(767)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductversion`
--

LOCK TABLES `scproductversion` WRITE;
/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecomponent`
--

LOCK TABLES `servicecomponent` WRITE;
/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
INSERT INTO `servicecomponent` VALUES (20439,'Marketplace',4,1410828214125,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	bundleSymbolicName VARCHAR(500) null,\n	bundleVersion VARCHAR(75) null,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(20450,'Calendar',4,1424703239325,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	timeZoneId VARCHAR(75) null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	vEventUid VARCHAR(255) null,\n	title STRING null,\n	description TEXT null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate unique index IX_8B23DA0E on CalendarBooking (calendarId, vEventUid);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>'),(20469,'Kaleo',8,1425595080483,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoAction (\n	kaleoActionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null,\n	priority INTEGER\n);\n\ncreate table KaleoCondition (\n	kaleoConditionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	script TEXT null,\n	scriptLanguage VARCHAR(75) null,\n	scriptRequiredContexts STRING null\n);\n\ncreate table KaleoDefinition (\n	kaleoDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(200) null,\n	title STRING null,\n	description STRING null,\n	content TEXT null,\n	version INTEGER,\n	active_ BOOLEAN,\n	startKaleoNodeId LONG\n);\n\ncreate table KaleoInstance (\n	kaleoInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoDefinitionName VARCHAR(200) null,\n	kaleoDefinitionVersion INTEGER,\n	rootKaleoInstanceTokenId LONG,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoInstanceToken (\n	kaleoInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	parentKaleoInstanceTokenId LONG,\n	currentKaleoNodeId LONG,\n	currentKaleoNodeName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoLog (\n	kaleoLogId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	terminalKaleoNode BOOLEAN,\n	kaleoActionId LONG,\n	kaleoActionName VARCHAR(200) null,\n	kaleoActionDescription STRING null,\n	previousKaleoNodeId LONG,\n	previousKaleoNodeName VARCHAR(200) null,\n	previousAssigneeClassName VARCHAR(200) null,\n	previousAssigneeClassPK LONG,\n	currentAssigneeClassName VARCHAR(200) null,\n	currentAssigneeClassPK LONG,\n	type_ VARCHAR(50) null,\n	comment_ TEXT null,\n	startDate DATE null,\n	endDate DATE null,\n	duration LONG,\n	workflowContext TEXT null\n);\n\ncreate table KaleoNode (\n	kaleoNodeId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	name VARCHAR(200) null,\n	metadata STRING null,\n	description STRING null,\n	type_ VARCHAR(20) null,\n	initial_ BOOLEAN,\n	terminal BOOLEAN\n);\n\ncreate table KaleoNotification (\n	kaleoNotificationId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeName VARCHAR(200) null,\n	name VARCHAR(200) null,\n	description STRING null,\n	executionType VARCHAR(20) null,\n	template TEXT null,\n	templateLanguage VARCHAR(75) null,\n	notificationTypes VARCHAR(25) null\n);\n\ncreate table KaleoNotificationRecipient (\n	kaleoNotificationRecipientId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNotificationId LONG,\n	recipientClassName VARCHAR(200) null,\n	recipientClassPK LONG,\n	recipientRoleType INTEGER,\n	address VARCHAR(255) null\n);\n\ncreate table KaleoTask (\n	kaleoTaskId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null\n);\n\ncreate table KaleoTaskAssignment (\n	kaleoTaskAssignmentId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	assigneeActionId VARCHAR(75) null,\n	assigneeScript TEXT null,\n	assigneeScriptLanguage VARCHAR(75) null,\n	assigneeScriptRequiredContexts STRING null\n);\n\ncreate table KaleoTaskAssignmentInstance (\n	kaleoTaskAssignmentInstanceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	assigneeClassName VARCHAR(200) null,\n	assigneeClassPK LONG,\n	completed BOOLEAN,\n	completionDate DATE null\n);\n\ncreate table KaleoTaskInstanceToken (\n	kaleoTaskInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskId LONG,\n	kaleoTaskName VARCHAR(200) null,\n	className VARCHAR(200) null,\n	classPK LONG,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	dueDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTimer (\n	kaleoTimerId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	name VARCHAR(75) null,\n	blocking BOOLEAN,\n	description STRING null,\n	duration DOUBLE,\n	scale VARCHAR(75) null,\n	recurrenceDuration DOUBLE,\n	recurrenceScale VARCHAR(75) null\n);\n\ncreate table KaleoTimerInstanceToken (\n	kaleoTimerInstanceTokenId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoClassName VARCHAR(200) null,\n	kaleoClassPK LONG,\n	kaleoDefinitionId LONG,\n	kaleoInstanceId LONG,\n	kaleoInstanceTokenId LONG,\n	kaleoTaskInstanceTokenId LONG,\n	kaleoTimerId LONG,\n	kaleoTimerName VARCHAR(200) null,\n	blocking BOOLEAN,\n	completionUserId LONG,\n	completed BOOLEAN,\n	completionDate DATE null,\n	workflowContext TEXT null\n);\n\ncreate table KaleoTransition (\n	kaleoTransitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(200) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	kaleoDefinitionId LONG,\n	kaleoNodeId LONG,\n	name VARCHAR(200) null,\n	description STRING null,\n	sourceKaleoNodeId LONG,\n	sourceKaleoNodeName VARCHAR(200) null,\n	targetKaleoNodeId LONG,\n	targetKaleoNodeName VARCHAR(200) null,\n	defaultTransition BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_50E9112C on KaleoAction (companyId);\ncreate index IX_170EFD7A on KaleoAction (kaleoClassName, kaleoClassPK);\ncreate index IX_4B2545E8 on KaleoAction (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_F95A622 on KaleoAction (kaleoDefinitionId);\n\ncreate index IX_FEE46067 on KaleoCondition (companyId);\ncreate index IX_DC978A5D on KaleoCondition (kaleoDefinitionId);\ncreate index IX_86CBD4C on KaleoCondition (kaleoNodeId);\n\ncreate index IX_40B9112F on KaleoDefinition (companyId);\ncreate index IX_408542BA on KaleoDefinition (companyId, active_);\ncreate index IX_76C781AE on KaleoDefinition (companyId, name);\ncreate index IX_4C23F11B on KaleoDefinition (companyId, name, active_);\ncreate index IX_EC14F81A on KaleoDefinition (companyId, name, version);\n\ncreate index IX_58D85ECB on KaleoInstance (className, classPK);\ncreate index IX_5F2FCD2D on KaleoInstance (companyId);\ncreate index IX_BF5839F8 on KaleoInstance (companyId, kaleoDefinitionName, kaleoDefinitionVersion, completionDate);\ncreate index IX_C6D7A867 on KaleoInstance (companyId, userId);\ncreate index IX_4DA4D123 on KaleoInstance (kaleoDefinitionId);\ncreate index IX_ACF16238 on KaleoInstance (kaleoDefinitionId, completed);\n\ncreate index IX_153721BE on KaleoInstanceToken (companyId);\ncreate index IX_4A86923B on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId);\ncreate index IX_360D34D9 on KaleoInstanceToken (companyId, parentKaleoInstanceTokenId, completionDate);\ncreate index IX_7BDB04B4 on KaleoInstanceToken (kaleoDefinitionId);\ncreate index IX_F42AAFF6 on KaleoInstanceToken (kaleoInstanceId);\n\ncreate index IX_73B5F4DE on KaleoLog (companyId);\ncreate index IX_E66A153A on KaleoLog (kaleoClassName, kaleoClassPK, kaleoInstanceTokenId, type_);\ncreate index IX_6C64B7D4 on KaleoLog (kaleoDefinitionId);\ncreate index IX_5BC6AB16 on KaleoLog (kaleoInstanceId);\ncreate index IX_470B9FF8 on KaleoLog (kaleoInstanceTokenId, type_);\ncreate index IX_B0CDCA38 on KaleoLog (kaleoTaskInstanceTokenId);\n\ncreate index IX_C4E9ACE0 on KaleoNode (companyId);\ncreate index IX_F28C443E on KaleoNode (companyId, kaleoDefinitionId);\ncreate index IX_32E94DD6 on KaleoNode (kaleoDefinitionId);\n\ncreate index IX_38829497 on KaleoNotification (companyId);\ncreate index IX_902D342F on KaleoNotification (kaleoClassName, kaleoClassPK);\ncreate index IX_F3362E93 on KaleoNotification (kaleoClassName, kaleoClassPK, executionType);\ncreate index IX_4B968E8D on KaleoNotification (kaleoDefinitionId);\n\ncreate index IX_2C8C4AF4 on KaleoNotificationRecipient (companyId);\ncreate index IX_AA6697EA on KaleoNotificationRecipient (kaleoDefinitionId);\ncreate index IX_7F4FED02 on KaleoNotificationRecipient (kaleoNotificationId);\n\ncreate index IX_E1F8B23D on KaleoTask (companyId);\ncreate index IX_3FFA633 on KaleoTask (kaleoDefinitionId);\ncreate index IX_77B3F1A2 on KaleoTask (kaleoNodeId);\n\ncreate index IX_611732B0 on KaleoTaskAssignment (companyId);\ncreate index IX_D835C576 on KaleoTaskAssignment (kaleoClassName, kaleoClassPK);\ncreate index IX_1087068E on KaleoTaskAssignment (kaleoClassName, kaleoClassPK, assigneeClassName);\ncreate index IX_575C03A6 on KaleoTaskAssignment (kaleoDefinitionId);\n\ncreate index IX_945F4EB7 on KaleoTaskAssignmentInstance (assigneeClassName);\ncreate index IX_3BD436FD on KaleoTaskAssignmentInstance (assigneeClassName, assigneeClassPK);\ncreate index IX_6E3CDA1B on KaleoTaskAssignmentInstance (companyId);\ncreate index IX_38A47B17 on KaleoTaskAssignmentInstance (groupId, assigneeClassPK);\ncreate index IX_C851011 on KaleoTaskAssignmentInstance (kaleoDefinitionId);\ncreate index IX_67A9EE93 on KaleoTaskAssignmentInstance (kaleoInstanceId);\ncreate index IX_D4C2235B on KaleoTaskAssignmentInstance (kaleoTaskInstanceTokenId);\n\ncreate index IX_A3271995 on KaleoTaskInstanceToken (className, classPK);\ncreate index IX_997FE723 on KaleoTaskInstanceToken (companyId);\ncreate index IX_608E9519 on KaleoTaskInstanceToken (kaleoDefinitionId);\ncreate index IX_2CE1159B on KaleoTaskInstanceToken (kaleoInstanceId);\ncreate index IX_B857A115 on KaleoTaskInstanceToken (kaleoInstanceId, kaleoTaskId);\n\ncreate index IX_4DE6A889 on KaleoTimer (kaleoClassName, kaleoClassPK);\ncreate index IX_1A479F32 on KaleoTimer (kaleoClassName, kaleoClassPK, blocking);\n\ncreate index IX_DB96C55B on KaleoTimerInstanceToken (kaleoInstanceId);\ncreate index IX_DB279423 on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed);\ncreate index IX_9932524C on KaleoTimerInstanceToken (kaleoInstanceTokenId, completed, blocking);\ncreate index IX_13A5BA2C on KaleoTimerInstanceToken (kaleoInstanceTokenId, kaleoTimerId);\n\ncreate index IX_41D6C6D on KaleoTransition (companyId);\ncreate index IX_479F3063 on KaleoTransition (kaleoDefinitionId);\ncreate index IX_A392DFD2 on KaleoTransition (kaleoNodeId);\ncreate index IX_A38E2194 on KaleoTransition (kaleoNodeId, defaultTransition);\ncreate index IX_85268A11 on KaleoTransition (kaleoNodeId, name);]]></indexes-sql>\n</data>'),(20501,'KaleoDesigner',2,1343264313201,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoDraftDefinition (\n	kaleoDraftDefinitionId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	title STRING null,\n	content TEXT null,\n	version INTEGER,\n	draftVersion INTEGER\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_4DBA0C4E on KaleoDraftDefinition (companyId);\ncreate index IX_94487B1B on KaleoDraftDefinition (companyId, name, version);\ncreate unique index IX_A500C06 on KaleoDraftDefinition (companyId, name, version, draftVersion);]]></indexes-sql>\n</data>'),(20505,'KaleoForms',3,1425751448273,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table KaleoProcess (\n	kaleoProcessId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	DDLRecordSetId LONG,\n	DDMTemplateId LONG,\n	workflowDefinitionName VARCHAR(75) null,\n	workflowDefinitionVersion INTEGER\n);\n\ncreate table KaleoProcessLink (\n	kaleoProcessLinkId LONG not null primary key,\n	kaleoProcessId LONG,\n	workflowTaskName VARCHAR(75) null,\n	DDMTemplateId LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_65CA6CC9 on KaleoProcess (DDLRecordSetId);\ncreate index IX_A29A06D5 on KaleoProcess (groupId);\n\ncreate index IX_3F378B4D on KaleoProcessLink (kaleoProcessId);\ncreate unique index IX_10E0E9D0 on KaleoProcessLink (kaleoProcessId, workflowTaskName);]]></indexes-sql>\n</data>'),(20510,'Ntfctns',2,1423239092186,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Ntfctns_UserNotificationEvent (\n	notificationEventId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userNotificationEventId LONG,\n	timestamp LONG,\n	delivered BOOLEAN,\n	actionRequired BOOLEAN,\n	archived BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_61F3E3E4 on Ntfctns_UserNotificationEvent (userId, actionRequired);\ncreate index IX_911E393A on Ntfctns_UserNotificationEvent (userId, actionRequired, archived);\ncreate index IX_5EC15E51 on Ntfctns_UserNotificationEvent (userId, archived);\ncreate index IX_20DFA99 on Ntfctns_UserNotificationEvent (userId, delivered);\ncreate index IX_609938C2 on Ntfctns_UserNotificationEvent (userId, delivered, actionRequired);\ncreate unique index IX_D448A02E on Ntfctns_UserNotificationEvent (userNotificationEventId);]]></indexes-sql>\n</data>'),(20515,'OAuth',1,1355990674844,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OAuth_OAuthApplication (\n	oAuthApplicationId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	description STRING null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret VARCHAR(75) null,\n	accessLevel INTEGER,\n	logoId LONG,\n	shareableAccessToken BOOLEAN,\n	callbackURI STRING null,\n	websiteURL STRING null\n);\n\ncreate table OAuth_OAuthUser (\n	oAuthUserId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	oAuthApplicationId LONG,\n	accessToken VARCHAR(75) null,\n	accessSecret VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_78A82761 on OAuth_OAuthApplication (companyId);\ncreate index IX_DD85AA60 on OAuth_OAuthApplication (companyId, name);\ncreate unique index IX_B12A5172 on OAuth_OAuthApplication (consumerKey);\ncreate index IX_FA67A7A1 on OAuth_OAuthApplication (userId);\ncreate index IX_2B33FAA0 on OAuth_OAuthApplication (userId, name);\n\ncreate unique index IX_84260D45 on OAuth_OAuthUser (accessToken);\ncreate index IX_4167B528 on OAuth_OAuthUser (oAuthApplicationId);\ncreate index IX_CBA598DA on OAuth_OAuthUser (userId);\ncreate unique index IX_7B260C62 on OAuth_OAuthUser (userId, oAuthApplicationId);]]></indexes-sql>\n</data>'),(20521,'OpenSocial',4,1343264401607,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table OpenSocial_Gadget (\n	uuid_ VARCHAR(75) null,\n	gadgetId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	url STRING null,\n	portletCategoryNames STRING null\n);\n\ncreate table OpenSocial_OAuthConsumer (\n	oAuthConsumerId LONG not null primary key,\n	companyId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	consumerKey VARCHAR(75) null,\n	consumerSecret TEXT null,\n	keyType VARCHAR(75) null\n);\n\ncreate table OpenSocial_OAuthToken (\n	oAuthTokenId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	gadgetKey VARCHAR(75) null,\n	serviceName VARCHAR(75) null,\n	moduleId LONG,\n	accessToken VARCHAR(75) null,\n	tokenName VARCHAR(75) null,\n	tokenSecret VARCHAR(75) null,\n	sessionHandle VARCHAR(75) null,\n	expiration LONG\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_729869EE on OpenSocial_Gadget (companyId);\ncreate unique index IX_A6A89EB1 on OpenSocial_Gadget (companyId, url);\ncreate index IX_E1F8627A on OpenSocial_Gadget (uuid_);\ncreate index IX_3C79316E on OpenSocial_Gadget (uuid_, companyId);\n\ncreate index IX_47206618 on OpenSocial_OAuthConsumer (gadgetKey);\ncreate index IX_8E715BF8 on OpenSocial_OAuthConsumer (gadgetKey, serviceName);\n\ncreate index IX_6C8CCC3D on OpenSocial_OAuthToken (gadgetKey, serviceName);\ncreate index IX_CDD35402 on OpenSocial_OAuthToken (userId, gadgetKey, serviceName, moduleId, tokenName);]]></indexes-sql>\n</data>'),(20531,'Sync',9,1469064234816,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table SyncDLFileVersionDiff (\n	syncDLFileVersionDiffId LONG not null primary key,\n	fileEntryId LONG,\n	sourceFileVersionId LONG,\n	targetFileVersionId LONG,\n	dataFileEntryId LONG,\n	size_ LONG,\n	expirationDate DATE null\n);\n\ncreate table SyncDLObject (\n	syncDLObjectId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createTime LONG,\n	modifiedTime LONG,\n	repositoryId LONG,\n	parentFolderId LONG,\n	treePath STRING null,\n	name VARCHAR(255) null,\n	extension VARCHAR(75) null,\n	mimeType VARCHAR(75) null,\n	description STRING null,\n	changeLog VARCHAR(75) null,\n	extraSettings TEXT null,\n	version VARCHAR(75) null,\n	versionId LONG,\n	size_ LONG,\n	checksum VARCHAR(75) null,\n	event VARCHAR(75) null,\n	lanTokenKey VARCHAR(75) null,\n	lastPermissionChangeDate DATE null,\n	lockExpirationDate DATE null,\n	lockUserId LONG,\n	lockUserName VARCHAR(75) null,\n	type_ VARCHAR(75) null,\n	typePK LONG,\n	typeUuid VARCHAR(75) null\n);\n\ncreate table SyncDevice (\n	uuid_ VARCHAR(75) null,\n	syncDeviceId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	type_ VARCHAR(75) null,\n	buildNumber LONG,\n	featureSet INTEGER,\n	hostname VARCHAR(75) null,\n	status INTEGER\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_A9B43C55 on SyncDLFileVersionDiff (expirationDate);\ncreate unique index IX_AC4C7667 on SyncDLFileVersionDiff (fileEntryId, sourceFileVersionId, targetFileVersionId);\n\ncreate index IX_8D4FDC9F on SyncDLObject (modifiedTime, repositoryId, event);\ncreate index IX_38C38A09 on SyncDLObject (repositoryId, event);\ncreate index IX_3BE7BB8D on SyncDLObject (repositoryId, parentFolderId, type_);\ncreate index IX_57F62914 on SyncDLObject (repositoryId, type_);\ncreate unique index IX_E3F57BD6 on SyncDLObject (type_, typePK);\ncreate index IX_1CCA3B5 on SyncDLObject (version, type_);\n\ncreate index IX_176DF87B on SyncDevice (companyId, userName);\ncreate index IX_A18EDDB1 on SyncDevice (userId);\ncreate index IX_AE38DEAB on SyncDevice (uuid_, companyId);]]></indexes-sql>\n</data>'),(20800,'Inventory',48,1432673326916,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Inventory_Manufacturer (\n	uuid_ VARCHAR(75) null,\n	manufacturerId LONG not null primary key,\n	partId LONG,\n	companyId LONG,\n	groupId LONG,\n	userId LONG,\n	createDate DATE null,\n	modifiedDate DATE null,\n	name VARCHAR(75) null,\n	emailAddress VARCHAR(75) null,\n	website VARCHAR(75) null,\n	phoneNumber VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null,\n	userName VARCHAR(75) null\n);\n\ncreate table Inventory_Part (\n	uuid_ VARCHAR(75) null,\n	partId LONG not null primary key,\n	createDate DATE null,\n	modifiedDate DATE null,\n	companyId LONG,\n	groupId LONG,\n	userId LONG,\n	manufacturerId LONG,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null,\n	name STRING null,\n	partNumber VARCHAR(75) null,\n	orderDate DATE null,\n	quantity INTEGER,\n	userName VARCHAR(75) null\n);\n\ncreate table Inventory_PurchaseOrder (\n	orderId LONG not null primary key,\n	companyId LONG,\n	groupId LONG,\n	partId LONG,\n	userId LONG,\n	orderDate DATE null,\n	closed BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_DBC67110 on Inventory_Manufacturer (groupId);\ncreate index IX_B74A9FF6 on Inventory_Manufacturer (groupId, status);\ncreate index IX_92591DC0 on Inventory_Manufacturer (status);\ncreate index IX_78E5079A on Inventory_Manufacturer (uuid_);\ncreate index IX_CFD8184E on Inventory_Manufacturer (uuid_, companyId);\ncreate unique index IX_51865A50 on Inventory_Manufacturer (uuid_, groupId);\n\ncreate index IX_F67A54AE on Inventory_Part (groupId);\ncreate index IX_9FA80594 on Inventory_Part (groupId, status);\ncreate index IX_F67CB96E on Inventory_Part (manufacturerId, groupId);\ncreate index IX_7FD93AB8 on Inventory_Part (uuid_);\ncreate index IX_F3276670 on Inventory_Part (uuid_, companyId);\ncreate unique index IX_1F36C8F2 on Inventory_Part (uuid_, groupId);]]></indexes-sql>\n</data>'),(20806,'ShuttleStats',4,1398973588278,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shard`
--

DROP TABLE IF EXISTS `shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shard`
--

LOCK TABLES `shard` WRITE;
/*!40000 ALTER TABLE `shard` DISABLE KEYS */;
INSERT INTO `shard` VALUES (20156,20025,20155,'default');
/*!40000 ALTER TABLE `shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`),
  KEY `IX_6A84467D` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcategory`
--

LOCK TABLES `shoppingcategory` WRITE;
/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcoupon`
--

LOCK TABLES `shoppingcoupon` WRITE;
/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitem`
--

LOCK TABLES `shoppingitem` WRITE;
/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemfield`
--

LOCK TABLES `shoppingitemfield` WRITE;
/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemprice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemprice`
--

LOCK TABLES `shoppingitemprice` WRITE;
/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorder`
--

LOCK TABLES `shoppingorder` WRITE;
/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorderitem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorderitem`
--

LOCK TABLES `shoppingorderitem` WRITE;
/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivity`
--

LOCK TABLES `socialactivity` WRITE;
/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
INSERT INTO `socialactivity` VALUES (1,20182,20155,20199,1511245251450,0,0,20109,20652,0,0,2,'{\"title\":\"<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\\\"en_US\\\" default-locale=\\\"en_US\\\"><Title language-id=\\\"en_US\\\">Homepage Carousel<\\/Title><\\/root>\"}',0),(2,20182,20155,20199,1511245286032,0,0,20109,20652,0,0,2,'{\"title\":\"<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\\\"en_US\\\" default-locale=\\\"en_US\\\"><Title language-id=\\\"en_US\\\">Homepage Carousel<\\/Title><\\/root>\"}',0),(3,20182,20155,20199,1511249458243,0,0,20798,1,0,0,1,'',0);
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityachievement`
--

DROP TABLE IF EXISTS `socialactivityachievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityachievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityachievement`
--

LOCK TABLES `socialactivityachievement` WRITE;
/*!40000 ALTER TABLE `socialactivityachievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityachievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitycounter`
--

DROP TABLE IF EXISTS `socialactivitycounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitycounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitycounter`
--

LOCK TABLES `socialactivitycounter` WRITE;
/*!40000 ALTER TABLE `socialactivitycounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitycounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitylimit`
--

DROP TABLE IF EXISTS `socialactivitylimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitylimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitylimit`
--

LOCK TABLES `socialactivitylimit` WRITE;
/*!40000 ALTER TABLE `socialactivitylimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitylimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityset`
--

DROP TABLE IF EXISTS `socialactivityset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityset` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityset`
--

LOCK TABLES `socialactivityset` WRITE;
/*!40000 ALTER TABLE `socialactivityset` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitysetting`
--

DROP TABLE IF EXISTS `socialactivitysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitysetting`
--

LOCK TABLES `socialactivitysetting` WRITE;
/*!40000 ALTER TABLE `socialactivitysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrelation`
--

LOCK TABLES `socialrelation` WRITE;
/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrequest`
--

LOCK TABLES `socialrequest` WRITE;
/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdevice`
--

DROP TABLE IF EXISTS `syncdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdevice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `syncDeviceId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `featureSet` int(11) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`syncDeviceId`),
  KEY `IX_176DF87B` (`companyId`,`userName`),
  KEY `IX_A18EDDB1` (`userId`),
  KEY `IX_AE38DEAB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdevice`
--

LOCK TABLES `syncdevice` WRITE;
/*!40000 ALTER TABLE `syncdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdevice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdlfileversiondiff`
--

DROP TABLE IF EXISTS `syncdlfileversiondiff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdlfileversiondiff` (
  `syncDLFileVersionDiffId` bigint(20) NOT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `sourceFileVersionId` bigint(20) DEFAULT NULL,
  `targetFileVersionId` bigint(20) DEFAULT NULL,
  `dataFileEntryId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`syncDLFileVersionDiffId`),
  UNIQUE KEY `IX_AC4C7667` (`fileEntryId`,`sourceFileVersionId`,`targetFileVersionId`),
  KEY `IX_A9B43C55` (`expirationDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdlfileversiondiff`
--

LOCK TABLES `syncdlfileversiondiff` WRITE;
/*!40000 ALTER TABLE `syncdlfileversiondiff` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncdlfileversiondiff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncdlobject`
--

DROP TABLE IF EXISTS `syncdlobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncdlobject` (
  `syncDLObjectId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createTime` bigint(20) DEFAULT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `version` varchar(75) DEFAULT NULL,
  `versionId` bigint(20) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `lanTokenKey` varchar(75) DEFAULT NULL,
  `lastPermissionChangeDate` datetime DEFAULT NULL,
  `lockExpirationDate` datetime DEFAULT NULL,
  `lockUserId` bigint(20) DEFAULT NULL,
  `lockUserName` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `typeUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncDLObjectId`),
  UNIQUE KEY `IX_E3F57BD6` (`type_`,`typePK`),
  KEY `IX_8D4FDC9F` (`modifiedTime`,`repositoryId`,`event`),
  KEY `IX_38C38A09` (`repositoryId`,`event`),
  KEY `IX_3BE7BB8D` (`repositoryId`,`parentFolderId`,`type_`),
  KEY `IX_57F62914` (`repositoryId`,`type_`),
  KEY `IX_1CCA3B5` (`version`,`type_`),
  KEY `IX_32B691FF` (`treePath`(255))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncdlobject`
--

LOCK TABLES `syncdlobject` WRITE;
/*!40000 ALTER TABLE `syncdlobject` DISABLE KEYS */;
INSERT INTO `syncdlobject` VALUES (20746,20155,20199,'Test Test',1511245035290,1511245035290,20182,0,'/20597/','content-images','','','','','','',0,0,'','add','',NULL,NULL,0,'','folder',20597,'d2fec023-3554-43bd-a296-dc387003a163'),(20747,20155,20199,'Test Test',1511245035471,1511245035471,20182,20597,'/20597/','space.jpg','jpg','image/jpeg','','','','1.0',20601,191209,'6QsWr+siaB02isTuEJz9y72YpbY=','add','sAV76Szt',NULL,NULL,0,'','file',20600,'2b93a38a-24bd-472d-a2b2-148d1bd25da3'),(20748,20155,20199,'Test Test',1511245035601,1511245035601,20182,20597,'/20597/','red-planet.jpg','jpg','image/jpeg','','','','1.0',20610,20946,'zMK+c7jE1WoTEf55TYru+/ap13I=','add','zn14F0yA',NULL,NULL,0,'','file',20609,'2c49679f-c6b8-4383-8889-86a63e63494a'),(20749,20155,20199,'Test Test',1511245035674,1511245035674,20182,20597,'/20597/','marathon-rocket.jpg','jpg','image/jpeg','','','','1.0',20618,31369,'gH75Bf0rZ/rx1O7Fmqg5gJLyl7U=','add','wnohqM6U',NULL,NULL,0,'','file',20617,'91c7b3a2-db0f-4635-81a3-95ef2fa3073a');
/*!40000 ALTER TABLE `syncdlobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemevent`
--

DROP TABLE IF EXISTS `systemevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemevent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemevent`
--

LOCK TABLES `systemevent` WRITE;
/*!40000 ALTER TABLE `systemevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`),
  KEY `IX_1E8DFB2E` (`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (20563,20155,'2017-11-21 06:14:38',20005,20199,'d36d4d44-4537-0d53-d440-f571450f4096',2,'','2017-11-21 06:44:38'),(20569,20155,'2017-11-21 06:15:46',20005,20199,'1652c2e0-50fc-25fa-c84e-7d3d1a229670',2,'','2017-11-21 06:45:46'),(20574,20155,'2017-11-21 06:16:56',20005,20199,'aa22eff6-5cd7-728d-1f04-3e6fb19c9e0b',2,'','2017-11-21 06:46:56'),(20577,20155,'2017-11-21 06:17:01',20005,20199,'d8922de5-60b6-a7c1-b2c9-f12a376ab16a',2,'','2017-11-21 06:47:01'),(20587,20155,'2017-11-21 06:17:14',20005,20199,'170b9f8a-47af-79c2-9755-415811ecd751',2,'','2017-11-21 06:47:14');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashentry`
--

DROP TABLE IF EXISTS `trashentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashentry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashentry`
--

LOCK TABLES `trashentry` WRITE;
/*!40000 ALTER TABLE `trashentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trashversion`
--

DROP TABLE IF EXISTS `trashversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trashversion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trashversion`
--

LOCK TABLES `trashversion` WRITE;
/*!40000 ALTER TABLE `trashversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `trashversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_`
--

DROP TABLE IF EXISTS `user_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_89509087` (`companyId`,`openId`(767)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_`
--

LOCK TABLES `user_` WRITE;
/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` VALUES ('601ff05e-5d30-83b5-8153-5e6444e19b92',20159,20155,'2017-11-21 05:47:29','2017-11-21 05:47:29',1,20160,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,9590828507537743bc166fef8cff8748,9590828507537743bc166fef8cff8748','','',0,'20159','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2017-11-21 05:47:29','',NULL,'',NULL,0,0,NULL,1,0,0),('4329dd02-f375-135d-1235-54892774ff50',20199,20155,'2017-11-21 05:47:31','2017-11-21 05:49:48',0,20200,'AAAAoAAB9AD4autR50abLbig8+s9DeIdyMyy96Ab2gYbffiv',1,0,'2017-11-21 05:52:48','08f303df25151ff1a34831e5ea6a848a,6494cec56a0888a077a0c6e793ee53d9,5d46387ff6d69b571d6c2036270defb5','what-is-your-library-card-number','12345',0,'test','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2017-11-21 07:35:16','127.0.0.1','2017-11-21 05:47:32','127.0.0.1','2017-11-21 05:52:21',0,0,NULL,1,1,0);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroupgrouprole`
--

DROP TABLE IF EXISTS `usergroupgrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroupgrouprole`
--

LOCK TABLES `usergroupgrouprole` WRITE;
/*!40000 ALTER TABLE `usergroupgrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupgrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergrouprole`
--

LOCK TABLES `usergrouprole` WRITE;
/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_teams`
--

DROP TABLE IF EXISTS `usergroups_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_teams`
--

LOCK TABLES `usergroups_teams` WRITE;
/*!40000 ALTER TABLE `usergroups_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useridmapper`
--

LOCK TABLES `useridmapper` WRITE;
/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationdelivery`
--

DROP TABLE IF EXISTS `usernotificationdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationdelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationdelivery`
--

LOCK TABLES `usernotificationdelivery` WRITE;
/*!40000 ALTER TABLE `usernotificationdelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationevent`
--

DROP TABLE IF EXISTS `usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationevent`
--

LOCK TABLES `usernotificationevent` WRITE;
/*!40000 ALTER TABLE `usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (20182,20199);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_orgs`
--

LOCK TABLES `users_orgs` WRITE;
/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (20162,20199),(20163,20159),(20165,20199),(20166,20199);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teams`
--

DROP TABLE IF EXISTS `users_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teams`
--

LOCK TABLES `users_teams` WRITE;
/*!40000 ALTER TABLE `users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertracker`
--

LOCK TABLES `usertracker` WRITE;
/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertrackerpath`
--

LOCK TABLES `usertrackerpath` WRITE;
/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost`
--

LOCK TABLES `virtualhost` WRITE;
/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
INSERT INTO `virtualhost` VALUES (20158,20155,0,'localhost');
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdavprops`
--

LOCK TABLES `webdavprops` WRITE;
/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikinode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikinode`
--

LOCK TABLES `wikinode` WRITE;
/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipage`
--

LOCK TABLES `wikipage` WRITE;
/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipageresource`
--

LOCK TABLES `wikipageresource` WRITE;
/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowdefinitionlink`
--

DROP TABLE IF EXISTS `workflowdefinitionlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowdefinitionlink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowdefinitionlink`
--

LOCK TABLES `workflowdefinitionlink` WRITE;
/*!40000 ALTER TABLE `workflowdefinitionlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowdefinitionlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowinstancelink`
--

DROP TABLE IF EXISTS `workflowinstancelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowinstancelink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowinstancelink`
--

LOCK TABLES `workflowinstancelink` WRITE;
/*!40000 ALTER TABLE `workflowinstancelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowinstancelink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-21 14:04:09
