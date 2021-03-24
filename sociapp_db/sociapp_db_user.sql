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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(25) NOT NULL,
  `user_bio` varchar(4000) DEFAULT NULL,
  `user_picture` varchar(255) DEFAULT NULL,
  `user_age` varchar(5) DEFAULT NULL,
  `user_degree` varchar(25) DEFAULT NULL,
  `user_job` varchar(255) DEFAULT NULL,
  `book1` int NOT NULL,
  `book2` int NOT NULL,
  `book3` int NOT NULL,
  `book4` int NOT NULL,
  `book5` int NOT NULL,
  `movie1` int NOT NULL,
  `movie2` int NOT NULL,
  `movie3` int NOT NULL,
  `movie4` int NOT NULL,
  `movie5` int NOT NULL,
  `sport1` int NOT NULL,
  `sport2` int NOT NULL,
  `sport3` int NOT NULL,
  `sport4` int NOT NULL,
  `sport5` int NOT NULL,
  `music1` int NOT NULL,
  `music2` int NOT NULL,
  `music3` int NOT NULL,
  `music4` int NOT NULL,
  `music5` int NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_unique` (`user_name`),
  UNIQUE KEY `user_email_unique` (`user_email`),
  KEY `book1_index` (`book1`),
  KEY `book2_index` (`book2`),
  KEY `book3_index` (`book3`),
  KEY `book4_index` (`book4`),
  KEY `book5_index` (`book5`),
  KEY `movie1_index` (`movie1`),
  KEY `movie2_index` (`movie2`),
  KEY `movie3_index` (`movie3`),
  KEY `movie4_index` (`movie4`),
  KEY `movie5_index` (`movie5`),
  KEY `sport1_index` (`sport1`),
  KEY `sport2_index` (`sport2`),
  KEY `sport3_index` (`sport3`),
  KEY `sport4_index` (`sport4`),
  KEY `sport5_index` (`sport5`),
  KEY `music1_index` (`music1`),
  KEY `music2_index` (`music2`),
  KEY `music3_index` (`music3`),
  KEY `music4_index` (`music4`),
  KEY `music5_index` (`music5`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'William Robinson','william.robinson@mail.com','123',NULL,NULL,'18-20','High School',NULL,18,6,3,3,24,1,3,9,20,13,6,8,2,4,1,2,5,1,10,8),(2,'Vernell Phillips','vernell.phillips@mail.com','123',NULL,NULL,'18-20','High School',NULL,7,21,10,17,8,4,25,24,9,29,5,9,1,4,4,2,5,9,7,5),(3,'Karla Brown','karla.brown@mail.com','123',NULL,NULL,'21-25','High School',NULL,2,1,14,22,4,7,5,20,18,29,8,8,7,2,5,10,2,2,10,11),(4,'Adela Allen','adela.allen@mail.com','123',NULL,NULL,'21-25','High School',NULL,20,12,1,2,18,17,17,9,21,16,8,4,2,7,7,7,11,7,1,1),(5,'Daniel Taylor','daniel.taylor@mail.com','123',NULL,NULL,'21-25','University Degree',NULL,24,2,26,11,1,8,5,9,21,26,6,9,8,8,1,6,4,11,7,11),(6,'Faith Jones','faith.jones@mail.com','123',NULL,NULL,'21-25','University Degree',NULL,12,12,16,6,20,1,7,20,9,16,9,3,2,4,8,10,5,2,2,4),(7,'Steven Andrade','steven.andrade@mail.com','123',NULL,NULL,'21-25','Technical/Art School',NULL,7,5,23,26,7,2,5,24,22,13,8,3,3,1,1,4,2,10,9,1),(8,'Charles Guerra','charles.guerra@mail.com','123',NULL,NULL,'21-25','Technical/Art School',NULL,25,18,15,6,13,10,6,11,19,28,7,2,4,9,9,6,1,11,7,3),(9,'Albert Hall','albert.hall@mail.com','123',NULL,NULL,'21-25','Master\'s Degree',NULL,22,12,16,16,13,3,4,12,19,13,5,2,3,1,1,5,5,6,5,1),(10,'Christopher Boyer','christopher.boyer@mail.com','123',NULL,NULL,'21-25','Master\'s Degree',NULL,23,2,20,9,4,4,5,22,11,14,8,1,3,1,8,9,5,2,3,11),(11,'Joshua A. Villanueva','joshua.a.villanueva@mail.com','123',NULL,NULL,'31-40','High School',NULL,2,7,26,21,4,17,8,12,19,29,9,6,8,6,6,5,10,3,9,6),(12,'Randall F. Ross','randall.f.ross@mail.com','123',NULL,NULL,'31-40','High School',NULL,16,17,17,12,6,6,25,23,9,28,4,4,2,5,8,5,4,1,10,4),(13,'Stacy Young','stacy.young@mail.com','123',NULL,NULL,'31-40','University Degree',NULL,2,12,14,6,21,10,4,9,18,27,9,9,9,9,1,7,2,5,11,2),(14,'Joanne Gonzalez','joanne.gonzalez@mail.com','123',NULL,NULL,'31-40','University Degree',NULL,19,11,25,9,12,7,10,11,9,27,1,9,5,8,5,10,11,7,10,1),(15,'Joel Johnson','joel.johnson@mail.com','123',NULL,NULL,'31-40','Technical/Art School',NULL,15,6,5,1,23,5,6,22,12,14,1,9,2,1,5,9,8,5,4,11),(16,'Viola Cuevas','viola.cuevas@mail.com','123',NULL,NULL,'31-40','Technical/Art School',NULL,5,15,18,13,10,25,4,12,18,16,3,6,3,6,9,6,5,6,4,6),(17,'Alejandro Ray','alejandro.ray@mail.com','123',NULL,NULL,'31-40','Master\'s Degree',NULL,10,25,6,14,1,8,25,19,19,27,4,2,4,7,7,3,5,2,2,6),(18,'Richard Barber','richard.barber@mail.com','123',NULL,NULL,'31-40','Master\'s Degree',NULL,25,11,4,9,5,17,1,12,24,13,6,1,7,7,6,6,6,10,2,8),(19,'Vicki Simmons','vicki.simmons@mail.com','123',NULL,NULL,'31-40','PhD',NULL,7,20,22,12,9,7,8,9,20,13,7,1,3,1,9,10,7,4,10,6),(20,'Thomas Brown','thomas.brown@mail.com','123',NULL,NULL,'31-40','PhD',NULL,4,11,17,4,15,17,17,24,9,29,4,7,8,5,7,1,2,10,5,2),(21,'Kenneth Smith','kenneth.smith@mail.com','123',NULL,NULL,'41-45','High School',NULL,25,25,1,6,21,5,3,20,21,29,4,6,8,7,5,1,11,5,9,1),(22,'John Allen','john.allen@mail.com','123',NULL,NULL,'41-45','High School',NULL,22,13,11,20,24,25,5,23,19,26,6,5,4,6,4,3,4,9,6,4),(23,'Victoria Brown','victoria.brown@mail.com','123',NULL,NULL,'41-45','University Degree',NULL,15,11,11,15,10,8,10,23,24,29,7,4,3,1,2,5,3,9,10,1),(24,'Francisco Lewis','francisco.lewis@mail.com','123',NULL,NULL,'41-45','University Degree',NULL,3,19,4,6,20,10,5,19,19,26,8,2,3,6,4,2,11,9,11,11),(25,'Robert Roberts','robert.roberts@mail.com','123',NULL,NULL,'41-45','Technical/Art School',NULL,22,9,9,25,5,4,17,20,24,13,2,3,2,7,7,8,1,10,6,10),(26,'William Long','william.long@mail.com','123',NULL,NULL,'41-45','Technical/Art School',NULL,23,11,12,25,10,8,7,19,11,26,2,6,2,9,1,6,11,8,9,4),(27,'Anna Meyer','anna.meyer@mail.com','123',NULL,NULL,'41-45','Master\'s Degree',NULL,15,21,10,7,25,1,25,22,9,29,4,4,7,6,2,7,3,5,11,8),(28,'Florence Bacon','florence.bacon@mail.com','123',NULL,NULL,'41-45','Master\'s Degree',NULL,4,2,23,2,8,10,17,11,12,14,6,9,5,5,8,6,8,7,4,11),(29,'Jane Mckee','jane.mckee@mail.com','123',NULL,NULL,'41-45','PhD',NULL,24,8,16,9,5,1,7,19,11,29,6,8,1,9,8,11,5,4,5,1),(30,'Christina I. Young','christina.ı.young@mail.com','123',NULL,NULL,'41-45','PhD',NULL,16,11,21,16,23,25,2,19,18,26,9,2,2,4,9,9,8,1,1,9),(31,'Katherine Fields','katherine.fields@mail.com','123',NULL,NULL,'46-55','High School',NULL,22,13,2,24,12,5,7,22,20,14,4,8,3,9,5,10,2,5,5,5),(32,'Beatrice Brown','beatrice.brown@mail.com','123',NULL,NULL,'46-55','High School',NULL,14,18,25,19,25,5,8,23,20,15,2,5,5,3,8,3,10,8,2,7),(33,'Teresa Larson','teresa.larson@mail.com','123',NULL,NULL,'46-55','University Degree',NULL,18,17,23,9,4,8,1,18,24,29,8,1,5,3,9,7,5,9,3,8),(34,'Lorinda W. Wilson','lorinda.w.wilson@mail.com','123',NULL,NULL,'46-55','University Degree',NULL,12,20,12,5,11,2,1,12,18,14,5,3,4,2,6,11,6,1,7,2),(35,'Paul Cox','paul.cox@mail.com','123',NULL,NULL,'46-55','Technical/Art School',NULL,8,15,7,23,17,3,25,20,20,13,9,2,7,4,9,11,5,9,4,7),(36,'Evelyn Jenkins','evelyn.jenkins@mail.com','123',NULL,NULL,'46-55','Technical/Art School',NULL,9,1,8,4,7,7,7,18,12,26,2,2,3,4,3,1,8,6,1,11),(37,'Joan Campbell','joan.campbell@mail.com','123',NULL,NULL,'46-55','Master\'s Degree',NULL,19,26,14,5,20,1,25,18,18,27,3,8,4,5,1,5,6,11,8,1),(38,'Anita Taylor','anita.taylor@mail.com','123',NULL,NULL,'46-55','Master\'s Degree',NULL,18,9,14,4,20,1,8,18,9,13,2,5,8,4,8,4,5,5,4,11),(39,'Tamara Lee','tamara.lee@mail.com','123',NULL,NULL,'46-55','PhD',NULL,18,1,14,25,3,1,17,24,11,26,1,7,9,4,3,7,5,6,8,11),(40,'Jill Henderson','jill.henderson@mail.com','123',NULL,NULL,'46-55','PhD',NULL,11,22,12,24,4,10,1,21,19,28,4,1,9,9,3,10,5,7,8,9),(41,'Antoine R. Johnson','antoine.r.johnson@mail.com','123',NULL,NULL,'55+','High School',NULL,4,3,5,26,1,1,4,12,20,29,1,4,6,4,9,7,11,2,1,7),(42,'Charlotte Copeland','charlotte.copeland@mail.com','123',NULL,NULL,'55+','High School',NULL,18,18,17,23,6,8,3,21,20,13,7,2,3,9,8,2,10,11,4,5),(43,'Vonnie Jones','vonnie.jones@mail.com','123',NULL,NULL,'55+','University Degree',NULL,13,19,11,23,8,5,4,12,20,15,1,2,1,2,9,7,9,4,6,3),(44,'Christine Holman','christine.holman@mail.com','123',NULL,NULL,'55+','University Degree',NULL,7,19,2,25,20,6,5,23,20,26,9,9,3,1,6,11,7,5,3,11),(45,'Ryan L. Miller','ryan.l.miller@mail.com','123',NULL,NULL,'55+','Technical/Art School',NULL,24,22,17,1,24,2,4,19,19,26,9,9,7,4,4,7,4,11,11,2),(46,'Ronald Anderson','ronald.anderson@mail.com','123',NULL,NULL,'55+','Technical/Art School',NULL,11,10,25,26,24,6,17,21,12,26,7,9,7,1,9,11,6,1,10,10),(47,'David Williams','david.williams@mail.com','123',NULL,NULL,'55+','Master\'s Degree',NULL,10,5,14,1,19,3,5,18,19,16,7,6,1,7,4,2,8,1,7,1),(48,'Debra Wilson','debra.wilson@mail.com','123',NULL,NULL,'55+','Master\'s Degree',NULL,22,13,1,4,25,25,6,9,22,15,1,1,4,1,8,2,1,6,11,11),(49,'Kara Smith','kara.smith@mail.com','123',NULL,NULL,'55+','PhD',NULL,24,8,23,14,4,3,3,12,18,13,1,7,5,7,2,2,8,7,10,2),(50,'Ann A. Gonzales','ann.a.gonzales@mail.com','123',NULL,NULL,'55+','PhD',NULL,24,13,24,18,8,3,6,12,23,16,3,2,8,2,1,11,6,6,5,1),(51,'Irma Fuller','ırma.fuller@mail.com','123',NULL,NULL,'18-20','High School',NULL,3,19,4,10,16,10,4,18,11,15,7,2,8,9,5,8,5,4,11,8),(52,'Beverley Miller','beverley.miller@mail.com','123',NULL,NULL,'18-20','High School',NULL,16,4,22,8,24,5,6,19,12,28,9,7,4,8,9,2,8,10,7,2),(53,'Susan Duncan','susan.duncan@mail.com','123',NULL,NULL,'21-25','High School',NULL,7,20,7,4,6,1,4,9,21,28,4,7,7,1,5,11,3,7,7,11),(54,'Lucia Nelson','lucia.nelson@mail.com','123',NULL,NULL,'21-25','High School',NULL,10,5,14,2,10,25,7,18,24,26,9,7,8,7,2,3,5,7,8,6),(55,'Concha Smith','concha.smith@mail.com','123',NULL,NULL,'21-25','University Degree',NULL,11,22,8,4,21,6,17,18,11,14,6,1,4,5,2,1,7,3,1,3),(56,'Patricia Farris','patricia.farris@mail.com','123',NULL,NULL,'21-25','University Degree',NULL,20,7,18,16,9,3,4,22,20,13,3,2,3,3,5,8,3,11,7,8),(57,'Lauren Pryor','lauren.pryor@mail.com','123',NULL,NULL,'21-25','Technical/Art School',NULL,24,20,15,17,24,17,3,24,9,28,3,8,9,3,6,2,8,3,5,9),(58,'Patricia Fisher','patricia.fisher@mail.com','123',NULL,NULL,'21-25','Technical/Art School',NULL,18,18,19,10,20,7,17,11,20,28,6,6,1,8,5,8,8,6,9,9),(59,'Heather W. Puckett','heather.w.puckett@mail.com','123',NULL,NULL,'21-25','Master\'s Degree',NULL,12,19,10,4,1,6,7,21,20,16,1,8,7,9,9,3,5,3,10,5),(60,'Eric Andrews','eric.andrews@mail.com','123',NULL,NULL,'21-25','Master\'s Degree',NULL,16,23,25,6,5,25,6,21,21,14,9,1,7,1,2,4,9,6,9,7),(61,'Jeanne Bass','jeanne.bass@mail.com','123',NULL,NULL,'31-40','High School',NULL,9,26,9,4,4,17,7,22,11,15,5,9,4,5,1,10,2,11,10,10),(62,'Josephine Davis','josephine.davis@mail.com','123',NULL,NULL,'31-40','High School',NULL,11,4,15,18,9,8,10,19,20,29,3,9,6,8,7,1,2,3,7,8),(63,'Clayton Turner','clayton.turner@mail.com','123',NULL,NULL,'31-40','University Degree',NULL,1,23,9,15,5,5,6,19,21,28,1,3,1,4,7,8,4,7,9,5),(64,'Craig King','craig.king@mail.com','123',NULL,NULL,'31-40','University Degree',NULL,20,17,14,24,10,5,17,21,20,16,3,9,3,7,9,10,1,4,7,2),(65,'Beryl Bailey','beryl.bailey@mail.com','123',NULL,NULL,'31-40','Technical/Art School',NULL,18,1,5,10,7,6,1,18,11,14,4,6,2,3,7,9,10,1,6,3),(66,'Sherry Hayes','sherry.hayes@mail.com','123',NULL,NULL,'31-40','Technical/Art School',NULL,23,13,4,12,24,3,7,22,21,29,7,7,4,9,6,6,4,8,8,5),(67,'Erin Z. Mitchell','erin.z.mitchell@mail.com','123',NULL,NULL,'31-40','Master\'s Degree',NULL,10,14,19,18,16,6,7,19,21,27,6,3,1,9,1,6,3,9,11,4),(68,'Corinne Cooper','corinne.cooper@mail.com','123',NULL,NULL,'31-40','Master\'s Degree',NULL,12,20,7,3,2,2,10,20,9,27,8,1,1,3,3,6,11,4,9,5),(69,'Alicia Wilson','alicia.wilson@mail.com','123',NULL,NULL,'31-40','PhD',NULL,14,10,10,17,12,7,3,20,22,14,7,7,8,6,4,9,9,1,7,8),(70,'James Williams','james.williams@mail.com','123',NULL,NULL,'31-40','PhD',NULL,16,17,5,20,10,4,3,11,9,14,8,9,6,8,6,8,5,10,11,5),(71,'Michael Davis','michael.davis@mail.com','123',NULL,NULL,'41-45','High School',NULL,14,24,9,22,19,5,7,20,23,27,7,4,8,2,5,7,4,2,6,11),(72,'Lorraine Gonzalez','lorraine.gonzalez@mail.com','123',NULL,NULL,'41-45','High School',NULL,21,13,15,16,21,5,1,22,20,14,9,4,4,5,8,1,9,3,6,2),(73,'Albert Watson','albert.watson@mail.com','123',NULL,NULL,'41-45','University Degree',NULL,25,7,14,23,11,6,7,23,24,28,8,7,9,1,6,2,4,10,6,8),(74,'Rose Ward','rose.ward@mail.com','123',NULL,NULL,'41-45','University Degree',NULL,2,21,22,3,11,25,3,19,22,14,8,7,4,2,8,10,9,11,11,11),(75,'Stacey Johnson','stacey.johnson@mail.com','123',NULL,NULL,'41-45','Technical/Art School',NULL,12,24,21,2,16,4,3,19,19,29,9,5,9,2,2,9,1,5,5,4),(76,'Laurie Oliver','laurie.oliver@mail.com','123',NULL,NULL,'41-45','Technical/Art School',NULL,6,3,4,15,16,17,17,20,11,26,4,2,8,5,8,3,3,10,10,2),(77,'Jeffery Matthews','jeffery.matthews@mail.com','123',NULL,NULL,'41-45','Master\'s Degree',NULL,19,15,24,25,3,8,4,24,12,26,4,1,6,1,5,4,6,7,11,10),(78,'Sherry Johnson','sherry.johnson@mail.com','123',NULL,NULL,'41-45','Master\'s Degree',NULL,20,8,25,8,19,5,10,20,18,29,5,9,9,2,2,10,11,4,2,3),(79,'Christopher Williams','christopher.williams@mail.com','123',NULL,NULL,'41-45','PhD',NULL,9,1,25,24,8,10,2,18,19,14,7,2,6,6,5,11,8,5,3,11),(80,'Joshua Wright','joshua.wright@mail.com','123',NULL,NULL,'41-45','PhD',NULL,6,10,14,6,17,5,2,21,22,13,3,9,2,1,4,11,4,9,6,4),(81,'Noreen J. Ross','noreen.j.ross@mail.com','123',NULL,NULL,'46-55','High School',NULL,17,18,17,22,18,5,6,12,20,28,7,9,9,3,3,3,5,5,2,3),(82,'Joel Stone','joel.stone@mail.com','123',NULL,NULL,'46-55','High School',NULL,13,11,6,3,4,4,7,24,19,26,6,2,7,9,3,7,1,2,7,6),(83,'Ronald Garcia','ronald.garcia@mail.com','123',NULL,NULL,'46-55','University Degree',NULL,9,1,20,20,13,1,5,19,23,16,8,6,5,1,9,2,1,3,1,9),(84,'Gerald R. Elliott','gerald.r.elliott@mail.com','123',NULL,NULL,'46-55','University Degree',NULL,5,25,24,21,9,2,8,19,23,28,5,4,6,4,9,11,10,2,10,1),(85,'Ann Graham','ann.graham@mail.com','123',NULL,NULL,'46-55','Technical/Art School',NULL,21,13,26,19,2,1,3,23,19,16,7,7,8,5,3,9,8,8,8,4),(86,'Michael Moore','michael.moore@mail.com','123',NULL,NULL,'46-55','Technical/Art School',NULL,17,1,1,19,26,2,5,22,11,27,4,7,2,9,3,6,2,5,9,8),(87,'Erin Harper','erin.harper@mail.com','123',NULL,NULL,'46-55','Master\'s Degree',NULL,17,26,3,26,4,6,3,21,23,13,9,1,5,5,2,1,2,10,11,2),(88,'Octavio Williams','octavio.williams@mail.com','123',NULL,NULL,'46-55','Master\'s Degree',NULL,6,2,25,17,25,8,4,21,9,13,4,3,3,2,3,9,9,3,2,8),(89,'Ashley Anderson','ashley.anderson@mail.com','123',NULL,NULL,'46-55','PhD',NULL,11,7,11,5,9,2,6,24,18,28,3,6,2,1,5,1,9,6,10,10),(90,'Christopher Dunn','christopher.dunn@mail.com','123',NULL,NULL,'46-55','PhD',NULL,19,20,8,17,9,3,17,21,12,28,1,3,9,4,4,8,11,10,5,1),(91,'Michael Williams','michael.williams@mail.com','123',NULL,NULL,'55+','High School',NULL,7,24,14,10,2,3,2,23,23,15,3,9,7,4,1,7,5,3,4,10),(92,'Gerald Allen','gerald.allen@mail.com','123',NULL,NULL,'55+','High School',NULL,11,2,24,12,16,17,3,19,9,28,6,3,9,7,8,3,7,8,2,5),(93,'Richard Porter','richard.porter@mail.com','123',NULL,NULL,'55+','University Degree',NULL,24,7,5,7,26,2,3,23,20,16,8,8,8,9,3,2,9,4,7,2),(94,'Clarence Carter','clarence.carter@mail.com','123',NULL,NULL,'55+','University Degree',NULL,21,4,5,20,16,8,10,12,12,14,4,7,4,9,1,3,10,4,7,10),(95,'Janet Johnson','janet.johnson@mail.com','123',NULL,NULL,'55+','Technical/Art School',NULL,18,12,11,20,13,17,25,23,18,26,5,9,3,5,3,8,3,3,1,7),(96,'David Brown','david.brown@mail.com','123',NULL,NULL,'55+','Technical/Art School',NULL,25,25,7,1,13,7,17,24,20,16,2,6,1,4,2,3,7,9,5,7),(97,'Mary Perkins','mary.perkins@mail.com','123',NULL,NULL,'55+','Master\'s Degree',NULL,9,3,2,25,7,3,17,21,9,29,6,5,3,1,4,10,11,3,11,3),(98,'Charles Cook','charles.cook@mail.com','123',NULL,NULL,'55+','Master\'s Degree',NULL,12,6,2,6,19,3,4,20,18,28,2,9,9,9,3,2,8,9,11,10),(99,'Robert Henry','robert.henry@mail.com','123',NULL,NULL,'55+','PhD',NULL,14,8,11,26,7,7,1,11,23,13,9,1,7,8,8,4,1,9,5,8),(100,'Muslum Gurses','muslum.gurses@mail.com','123',NULL,NULL,'55+','PhD',NULL,20,17,2,17,13,3,17,21,23,29,1,4,7,4,9,10,8,1,6,10);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-28  1:10:01
