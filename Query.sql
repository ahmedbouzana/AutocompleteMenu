-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bookdb
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dictionnairevisit`
--

DROP TABLE IF EXISTS `dictionnairevisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dictionnairevisit` (
  `id` int(11) NOT NULL,
  `nom` varchar(245) NOT NULL,
  `memo` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`,`nom`),
  UNIQUE KEY `nom_UNIQUE` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dictionnairevisit`
--

LOCK TABLES `dictionnairevisit` WRITE;
/*!40000 ALTER TABLE `dictionnairevisit` DISABLE KEYS */;
INSERT INTO `dictionnairevisit` VALUES (1,'Ahmed','szefzefze ezfkzehafbkjzef fezkjbzef'),(2,'Mohamed','zaefze czadzadzedez'),(3,'Ahmine','lkjkjhze zefd1561 zedzef'),(4,'Sofiane doubleclick','sfdhhze zefdzefzerfez zdze'),(5,'Ahdda','dghkjhjze 8888, fzdada'),(6,'Hocine zarg elaynin','azezfdsfczd dzaazd'),(7,'ahid intellegent ','olfdsgdg shtghza eregergre'),(8,'sofiane bourass','fh zsgzetger zergertgrezg,er ertikhiure eriuhetiurt');
/*!40000 ALTER TABLE `dictionnairevisit` ENABLE KEYS */;
UNLOCK TABLES;


CREATE DEFINER=`root`@`localhost` PROCEDURE `DictionnaireVisitViewAll`()
BEGIN
	SELECT *
    FROM dictionnairevisit;
END ;;
DELIMITER ;