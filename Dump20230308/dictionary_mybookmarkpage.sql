-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dictionary
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mybookmarkpage`
--

DROP TABLE IF EXISTS `mybookmarkpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybookmarkpage` (
  `Detailpage_itemIndex` int NOT NULL,
  `Users_userIndex` int NOT NULL,
  `bookmarkIDIndex` int NOT NULL AUTO_INCREMENT,
  `createAt` timestamp NOT NULL,
  `stateAt` tinyint(1) NOT NULL,
  PRIMARY KEY (`bookmarkIDIndex`),
  KEY `fk_Mybookmarkpage_Detailpage1_idx` (`Detailpage_itemIndex`),
  KEY `fk_Mybookmarkpage_Users1_idx` (`Users_userIndex`),
  CONSTRAINT `fk_Mybookmarkpage_Detailpage1` FOREIGN KEY (`Detailpage_itemIndex`) REFERENCES `detailpage` (`itemIndex`),
  CONSTRAINT `fk_Mybookmarkpage_Users1` FOREIGN KEY (`Users_userIndex`) REFERENCES `users` (`userIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybookmarkpage`
--

LOCK TABLES `mybookmarkpage` WRITE;
/*!40000 ALTER TABLE `mybookmarkpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mybookmarkpage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 17:01:11
