CREATE DATABASE  IF NOT EXISTS `eu_countries` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eu_countries`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: eu_countries
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `eu_countries`
--

DROP TABLE IF EXISTS `eu_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eu_countries` (
  `country` varchar(50) NOT NULL,
  `capital` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `currency` varchar(50) NOT NULL,
  PRIMARY KEY (`country`),
  UNIQUE KEY `country_UNIQUE` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eu_countries`
--

LOCK TABLES `eu_countries` WRITE;
/*!40000 ALTER TABLE `eu_countries` DISABLE KEYS */;
INSERT INTO `eu_countries` VALUES ('ΑΥΣΤΡΙΑ','ΒΙΕΝΝΗ','ΓΕΡΜΑΝΙΚΑ','ΕΥΡΩ'),('ΒΕΛΓΙΟ','ΒΡΥΞΕΛΛΕΣ','ΓΑΛΛΙΚΑ, ΟΛΛΑΝΔΙΚΑ, ΓΕΡΜΑΝΙΚΑ','ΕΥΡΩ'),('ΒΟΥΛΓΑΡΙΑ','ΣΟΦΙΑ','ΒΟΥΛΓΑΡΙΚΑ','ΛΕΒ'),('ΓΑΛΛΙΑ','ΠΑΡΙΣΙ','ΓΑΛΛΙΚΑ','ΕΥΡΩ'),('ΓΕΡΜΑΝΙΑ','ΒΕΡΟΛΙΝΟ','ΓΕΡΜΑΝΙΚΑ','ΕΥΡΩ'),('ΔΑΝΙΑ','ΚΟΠΕΝΓΑΧΗ','ΔΑΝΕΖΙΚΑ','ΔΑΝΕΖΙΚΗ ΚΟΡΩΝΑ'),('ΕΛΛΑΔΑ','ΑΘΗΝΑ','ΕΛΛΗΝΙΚΑ','ΕΥΡΩ'),('ΕΣΤΟΝΙΑ','ΤΑΛΙΝ','ΕΣΤΟΝΙΚΑ','ΕΣΤΟΝΙΚΗ ΚΟΡΩΝΑ'),('ΗΝΩΜΕΝΟ ΒΑΣΙΛΕΙΟ','ΛΟΝΔΙΝΟ','ΑΓΓΛΙΚΑ','ΒΡΕΤΑΝΙΚΗ ΛΙΡΑ'),('ΙΡΛΑΝΔΙΑ','ΔΟΥΒΛΙΝΟ','ΑΓΓΛΙΚΑ, ΙΡΛΑΝΔΙΚΑ','ΕΥΡΩ'),('ΙΣΠΑΝΙΑ','ΜΑΔΡΙΤΗ','ΙΣΠΑΝΙΚΑ','ΕΥΡΩ'),('ΙΤΑΛΙΑ','ΡΩΜΗ','ΙΤΑΛΙΚΑ','ΕΥΡΩ'),('ΚΥΠΡΟΣ','ΛΕΥΚΩΣΙΑ','ΕΛΛΗΝΙΚΑ, ΑΓΓΛΙΚΑ','ΕΥΡΩ'),('ΛΕΤΟΝΙΑ','ΡΙΓΑ','ΛΕΤΟΝΙΚΑ','ΛΑΤΣ'),('ΛΙΘΟΥΑΝΙΑ','ΒΙΛΝΙΟΥΣ','ΛΙΘΟΥΑΝΙΚΑ','ΛΙΤΑΣ'),('ΛΟΥΞΕΜΒΟΥΡΓΟ','ΛΟΥΞΕΜΒΟΥΡΓΟ','ΓΑΛΛΙΚΑ, ΓΕΡΜΑΝΙΚΑ','ΕΥΡΩ'),('ΜΑΛΤΑ','ΒΑΛΕΤΤΑ','ΜΑΛΤΕΖΙΚΑ, ΑΓΓΛΙΚΑ','ΕΥΡΩ'),('ΟΛΛΑΝΔΙΑ','ΑΜΣΤΕΡΝΤΑΜ','ΟΛΛΑΝΔΙΚΑ','ΕΥΡΩ'),('ΟΥΓΓΑΡΙΑ','ΒΟΥΔΑΠΕΣΤΗ','ΟΥΓΓΡΙΚΑ','ΦΟΡΙΝΤ'),('ΠΟΛΩΝΙΑ','ΒΑΡΣΟΒΙΑ','ΠΟΛΩΝΙΚΑ','ΖΛΟΤΙ'),('ΠΟΡΤΟΓΑΛΙΑ','ΛΙΣΑΒΩΝΑ','ΠΟΡΤΟΓΑΛΙΚΑ','ΕΥΡΩ'),('ΡΟΥΜΑΝΙΑ','ΒΟΥΚΟΥΡΕΣΤΙ','ΡΟΥΜΑΝΙΚΑ','ΛΕΙ'),('ΣΛΟΒΑΚΙΑ','ΜΠΡΑΤΙΣΛΑΒΑ','ΣΛΟΒΑΚΙΚΑ','ΕΥΡΩ'),('ΣΛΟΒΕΝΙΑ','ΛΙΟΥΜΠΛΙΑΝΑ','ΣΛΟΒΕΝΙΚΑ','ΕΥΡΩ'),('ΣΟΥΗΔΙΑ','ΣΤΟΚΧΟΛΜΗ','ΣΟΥΗΔΙΚΑ','ΕΥΡΩ'),('ΤΣΕΧΙΑ','ΠΡΑΓΑ','ΤΣΕΧΙΚΑ','ΤΣΕΧΙΚΗ ΚΟΡΩΝΑ'),('ΦΙΝΛΑΝΔΙΑ','ΕΛΣΙΝΚΙ','ΦΙΛΑΝΔΙΚΑ, ΣΟΥΗΔΙΚΑ','ΕΥΡΩ');
/*!40000 ALTER TABLE `eu_countries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 11:19:09
