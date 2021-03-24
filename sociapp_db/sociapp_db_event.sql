-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sociapp_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `creator_id` int NOT NULL,
  `event_title` varchar(25) DEFAULT NULL,
  `event_address` varchar(255) DEFAULT NULL,
  `event_message` varchar(255) DEFAULT NULL,
  `participants` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,15,'Let\'s Dance','Carrer de Ramon Trias Fargas, 2-4','at 12 pm','53,81,79,86,51,33'),(2,97,'Dinner at Restaurant','Carrer d\'En Botella, 11','at 8 pm','14,73,64,16,83,2'),(3,73,'Quick Lunch','Carrer de Villarroel, 140','at 1 pm','23,41,84,63,22,59'),(5,17,'Chill at Park','Gran Via de les Corts Catalanes, 69','at 5 pm','7,91,48,8,84,18'),(6,65,'Grab beers at Pub','Plaça Sagrada Família, 4','at 9 pm','23,83,68,41,68,11'),(7,65,'Let\'s Dance','La Rambla, 33','at 11 pm','76,66,1,34,92,86'),(8,96,'Dinner at Restaurant','Carrer de Sant Antoni Maria Claret, 216','at 7:30 pm','67,63,92,9,67,100'),(9,65,'Quick Lunch','Carrer de los Castillejos, 373','at 1:30 pm','36,37,35,55,33,60'),(10,39,'Coffe Break','Avinguda Diagonal, 208','at 4:30 pm','88,40,42,31,71,51');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-28  1:10:04
