-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mades
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
-- Table structure for table `dis_sym1_rel`
--

DROP TABLE IF EXISTS `dis_sym1_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dis_sym1_rel` (
  `dis_id` int(11) NOT NULL,
  `sym_id` int(11) NOT NULL,
  `hf_num` int(11) NOT NULL DEFAULT '1',
  `hf_den` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dis_id`,`sym_id`),
  KEY `disease_id_idx` (`dis_id`),
  KEY `symptoms_id_idx` (`sym_id`),
  CONSTRAINT `disease1_id` FOREIGN KEY (`dis_id`) REFERENCES `disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `symptoms1_id` FOREIGN KEY (`sym_id`) REFERENCES `symptom1` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dis_sym1_rel`
--

LOCK TABLES `dis_sym1_rel` WRITE;
/*!40000 ALTER TABLE `dis_sym1_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `dis_sym1_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dis_sym2_rel`
--

DROP TABLE IF EXISTS `dis_sym2_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dis_sym2_rel` (
  `dis_id` int(11) NOT NULL,
  `sym_id` int(11) NOT NULL,
  `hf_num` int(11) NOT NULL DEFAULT '1',
  `hf_den` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dis_id`,`sym_id`),
  KEY `symptoms_id_idx` (`sym_id`),
  CONSTRAINT `disease2_id` FOREIGN KEY (`dis_id`) REFERENCES `disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `symptoms2_id` FOREIGN KEY (`sym_id`) REFERENCES `symptom2` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dis_sym2_rel`
--

LOCK TABLES `dis_sym2_rel` WRITE;
/*!40000 ALTER TABLE `dis_sym2_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `dis_sym2_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease_treatment_rel`
--

DROP TABLE IF EXISTS `disease_treatment_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_treatment_rel` (
  `dis_id` int(11) NOT NULL,
  `treat_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dis_id`,`treat_id`),
  KEY `treat_id_idx` (`treat_id`),
  CONSTRAINT `dis_id` FOREIGN KEY (`dis_id`) REFERENCES `disease` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `treat_id` FOREIGN KEY (`treat_id`) REFERENCES `treatment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_treatment_rel`
--

LOCK TABLES `disease_treatment_rel` WRITE;
/*!40000 ALTER TABLE `disease_treatment_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `disease_treatment_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom1`
--

DROP TABLE IF EXISTS `symptom1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptom1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `bodypart` varchar(45) DEFAULT NULL,
  `intensity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom1`
--

LOCK TABLES `symptom1` WRITE;
/*!40000 ALTER TABLE `symptom1` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptom1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symptom2`
--

DROP TABLE IF EXISTS `symptom2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symptom2` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `intensity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom2`
--

LOCK TABLES `symptom2` WRITE;
/*!40000 ALTER TABLE `symptom2` DISABLE KEYS */;
/*!40000 ALTER TABLE `symptom2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treatment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discription` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-03 14:47:35
