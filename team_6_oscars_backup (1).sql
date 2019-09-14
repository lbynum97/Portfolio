-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: oscars
-- ------------------------------------------------------
-- Server version	8.0.14

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actors` (
  `actor_id` int(5) NOT NULL,
  `act_first_name` varchar(20) NOT NULL,
  `act_last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Chiwetel','Ejofor'),(2,'Christian','Bale'),(3,'Andrew','Stanton'),(4,'Amanda','Seyfried'),(5,'Tyler','Perry'),(6,'James','Gunn'),(7,'Katherine','Heigl'),(8,'Taraji','Henson'),(9,'Leigh','Whannell'),(10,'Dev','Parel'),(11,'Ryan','Reynolds'),(12,'Chris','Evans'),(13,'Mathew','McConaughey'),(14,'Colin','Firth'),(15,'Daniel','Day-Lewis'),(16,'Russell','Crowe'),(17,'Jamie','Foxx'),(18,'Toby',' Maguire');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_roles`
--

DROP TABLE IF EXISTS `actors_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actors_roles` (
  `movie_id` int(5) NOT NULL,
  `actor_id` int(5) NOT NULL,
  `roles` varchar(50) NOT NULL,
  PRIMARY KEY (`movie_id`,`actor_id`),
  KEY `fk_Movies_has_Actors_Actors1_idx` (`actor_id`),
  KEY `fk_Movies_has_Actors_Movies1_idx` (`movie_id`),
  CONSTRAINT `fk_Movies_has_Actors_Actors1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`),
  CONSTRAINT `fk_Movies_has_Actors_Movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_roles`
--

LOCK TABLES `actors_roles` WRITE;
/*!40000 ALTER TABLE `actors_roles` DISABLE KEYS */;
INSERT INTO `actors_roles` VALUES (1,1,'Solomon North'),(2,2,'Batman'),(3,3,'Axiom Passenger'),(4,4,'Sophie'),(5,5,'Terry'),(6,6,'Maskless Sakaaran'),(7,7,'Jane Nichols'),(8,8,'Katherine Johnson'),(10,10,'Jamal Mailk'),(11,11,'Deadpool'),(12,12,'Captain America'),(13,13,'Cooper'),(14,14,'King George IV'),(15,15,'Abraham Lincoln'),(16,16,'Maximus'),(17,17,'Django');
/*!40000 ALTER TABLE `actors_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `batman`
--

DROP TABLE IF EXISTS `batman`;
/*!50001 DROP VIEW IF EXISTS `batman`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `batman` AS SELECT 
 1 AS `full_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cali`
--

DROP TABLE IF EXISTS `cali`;
/*!50001 DROP VIEW IF EXISTS `cali`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `cali` AS SELECT 
 1 AS `total_gross`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `directors` (
  `director_id` int(5) NOT NULL,
  `dir_first_name` varchar(20) NOT NULL,
  `dir_last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Steve','McQueen'),(2,'Christopher','Nolan'),(3,'Andrew','Stanton'),(4,'Gary','Winick'),(5,'Tyler','Perry'),(6,'James','Gunn'),(7,'Ann','Fletcher'),(8,'Theodore','Melfi'),(9,'James','Wan'),(10,'Danny','Boyle'),(11,'Tim','Miller'),(12,'Anthony','Russo'),(13,'Ridely','Scott'),(14,'Tom','Hooper'),(15,'Steven ','Spielberg'),(16,'Quentin','Taratino'),(17,'Sam','Raimi');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `folgate_street`
--

DROP TABLE IF EXISTS `folgate_street`;
/*!50001 DROP VIEW IF EXISTS `folgate_street`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `folgate_street` AS SELECT 
 1 AS `pro_comp_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `genres` (
  `genre_id` int(5) NOT NULL,
  `genre_name` varchar(45) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `name_UNIQUE` (`genre_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Action'),(2,'Adventure'),(3,'Animation'),(4,'Biographical'),(5,'Comedy'),(6,'Documentary'),(7,'Drama'),(8,'Fantasy'),(9,'Historical Drama'),(10,'Horror'),(11,'Musical'),(12,'Romance'),(13,'Science Fiction'),(14,'Superhero'),(15,'Thriller'),(16,'Western');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genres`
--

DROP TABLE IF EXISTS `movie_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movie_genres` (
  `mov_gen_id` int(5) NOT NULL AUTO_INCREMENT,
  `movie_id` int(5) NOT NULL,
  `movie_title` varchar(50) NOT NULL,
  `genre_id` int(5) NOT NULL,
  PRIMARY KEY (`mov_gen_id`),
  KEY `fk_Movies_has_Genres_Genres1_idx` (`genre_id`),
  KEY `fk_Movies_has_Genres_Movies_idx` (`movie_id`),
  CONSTRAINT `fk_Movies_has_Genres_Genres1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `fk_Movies_has_Genres_Movies` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1,'12 Years a Slave',7),(2,1,'12 Years a Slave',9),(3,2,'The Dark Knight',1),(4,2,'The Dark Knight',2),(5,2,'The Dark Knight',7),(6,2,'The Dark Knight',14),(7,2,'The Dark Knight',15),(8,3,'WALL-E',1),(9,3,'WALL-E',2),(10,3,'WALL-E',3),(11,3,'WALL-E',5),(12,3,'WALL-E',8),(13,3,'WALL-E',12),(14,3,'WALL-E',13),(15,4,'Letters to Juilet',5),(16,4,'Letters to Juilet',7),(17,4,'Letters to Juilet',12),(18,5,'Tyler Perry\'s Why Did I get Married',5),(19,5,'Tyler Perry\'s Why Did I get Married',7),(20,6,'Guardians of the Galaxy',1),(21,6,'Guardians of the Galaxy',2),(22,6,'Guardians of the Galaxy',5),(23,6,'Guardians of the Galaxy',13),(24,6,'Guardians of the Galaxy',14),(25,7,'27 Dresses',5),(26,7,'27 Dresses',12),(27,8,'Hidden Figures',5),(28,8,'Hidden Figures',7),(32,10,'Slumdog Millionaire',7),(33,10,'Slumdog Millionaire',12),(34,10,'Slumdog Millionaire',15),(35,11,'Deadpool',1),(36,11,'Deadpool',5),(37,11,'Deadpool',12),(38,11,'Deadpool',13),(39,11,'Deadpool',14),(40,12,'Captain America: Civil War',1),(41,12,'Captain America: Civil War',2),(42,12,'Captain America: Civil War',13),(43,12,'Captain America: Civil War',14),(44,12,'Captain America: Civil War',15),(45,13,'Interstellar',2),(46,13,'Interstellar',7),(47,13,'Interstellar',13),(48,14,'The King\'s Speech',7),(49,14,'The King\'s Speech',9),(50,15,'Lincoln',7),(51,16,'Gladiator',1),(52,16,'Gladiator',2),(53,16,'Gladiator',7),(54,16,'Gladiator',9),(55,17,'Django Unchained',1),(56,17,'Django Unchained',2),(57,17,'Django Unchained',7),(58,17,'Django Unchained',16);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies` (
  `movie_id` int(5) NOT NULL,
  `movie_title` varchar(50) NOT NULL,
  `movie_year` year(4) NOT NULL,
  `movie_language` varchar(20) DEFAULT NULL,
  `movie_length` int(11) NOT NULL,
  `content_rating` varchar(5) DEFAULT NULL,
  `budget` decimal(10,0) NOT NULL,
  `worldwide_gross` decimal(10,0) NOT NULL,
  `imdb_review` float NOT NULL,
  `metacritic_review` int(11) NOT NULL,
  `rotten_tomatoes_review` int(11) NOT NULL,
  `pro_comp_id` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE KEY `movie_title_UNIQUE` (`movie_title`),
  KEY `fk_Movies_Production_Companies1_idx` (`pro_comp_id`),
  CONSTRAINT `fk_Movies_Production_Companies1` FOREIGN KEY (`pro_comp_id`) REFERENCES `production_companies` (`pro_comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'12 Years a Slave',2012,'English',134,'R',20000000,187733202,8.1,96,95,12),(2,'The Dark Knight',2008,'English',152,'PG-13',185000000,1004558444,9,84,94,9),(3,'WALL-E',2008,'English',98,'G',180000000,534767889,8.4,95,96,11),(4,'Letters to Juliet',2010,'English',105,'PG',30000000,82148538,6.6,50,40,8),(5,'Tyler Perry\'s Why Did I get Married',2007,'English',113,'PG-13',15000000,55184721,5.8,54,46,6),(6,'Guardians of the Galaxy',2014,'English',121,'PG-13',170000000,774176600,8.1,76,91,10),(7,'27 Dresses',2008,'English',111,'PG-13',30000000,160259319,6.1,47,40,5),(8,'	Hidden Figures',2016,'English',127,'PG',25000000,235956898,7.8,74,93,5),(10,'Slumdog Millionare',2009,'English',120,'R',15000000,377910544,8,86,91,13),(11,'Deadpool        ',2016,'English',108,'R',58000000,783112979,8,65,84,1),(12,'Captain America: Civil War',2016,'English',124,'PG-13',250000000,370569774,6.9,66,80,10),(13,'Interstellar	',2014,'English',169,'PG-13',165000000,675020017,8.6,74,72,2),(14,' The King\'s Speech',2016,'English',118,'R',15000000,373700000,8,88,94,4),(15,' Lincoln',2012,'English',150,'PG-13',65000000,275293450,7.4,86,89,3),(16,'Gladiator',2000,'English',155,'R',103000000,457640427,8.5,76,76,3),(17,'Django Unchained',2012,'English',165,'R',100000000,425368238,8.4,81,86,15);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_awards_join`
--

DROP TABLE IF EXISTS `movies_awards_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies_awards_join` (
  `movie_award_id` int(5) NOT NULL AUTO_INCREMENT,
  `movie_id` int(5) NOT NULL,
  `oscar_id` int(5) NOT NULL,
  `oscar_year` year(4) NOT NULL,
  `winner` varchar(1) NOT NULL,
  `nominated` varchar(1) NOT NULL,
  PRIMARY KEY (`movie_award_id`),
  KEY `fk_Movies_has_Oscars_Oscars1_idx` (`oscar_id`),
  KEY `fk_Movies_has_Oscars_Movies1_idx` (`movie_id`),
  CONSTRAINT `fk_Movies_has_Oscars_Movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  CONSTRAINT `fk_Movies_has_Oscars_Oscars1` FOREIGN KEY (`oscar_id`) REFERENCES `oscar_awards` (`oscar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_awards_join`
--

LOCK TABLES `movies_awards_join` WRITE;
/*!40000 ALTER TABLE `movies_awards_join` DISABLE KEYS */;
INSERT INTO `movies_awards_join` VALUES (1,1,3,2014,'Y','Y'),(2,1,6,2014,'Y','Y'),(3,1,10,2014,'Y','Y'),(4,1,1,2014,'N','Y'),(5,1,5,2014,'N','Y'),(6,1,4,2014,'N','Y'),(7,1,25,2014,'N','Y'),(8,1,20,2014,'N','Y'),(9,1,28,2014,'N','Y'),(10,2,5,2009,'Y','Y'),(11,2,12,2009,'N','Y'),(12,2,29,2009,'N','Y'),(13,2,27,2009,'N','Y'),(14,2,20,2009,'N','Y'),(15,2,28,2009,'N','Y'),(16,2,23,2009,'N','Y'),(17,3,9,2009,'Y','Y'),(18,3,13,2009,'N','Y'),(19,3,7,2009,'N','Y'),(20,3,12,2009,'N','Y'),(23,6,27,2015,'N','Y'),(24,6,23,2015,'N','Y'),(26,8,3,2017,'N','Y'),(27,8,6,2017,'N','Y'),(28,8,10,2017,'N','Y'),(30,10,29,2009,'Y','Y'),(31,10,3,2009,'Y','Y'),(32,10,4,2009,'Y','Y'),(33,10,10,2009,'Y','Y'),(34,10,13,2009,'Y','Y'),(35,10,28,2009,'Y','Y'),(36,10,12,2009,'Y','Y'),(39,13,27,2015,'Y','Y'),(40,13,13,2015,'N','Y'),(41,13,12,2015,'N','Y'),(42,13,20,2015,'N','Y'),(43,14,3,2011,'Y','Y'),(44,14,1,2011,'Y','Y'),(45,14,4,2011,'Y','Y'),(46,14,7,2011,'Y','Y'),(47,14,6,2011,'N','Y'),(48,14,5,2011,'N','Y'),(49,14,13,2011,'N','Y'),(50,14,29,2011,'N','Y'),(51,14,12,2011,'N','Y'),(52,14,25,2011,'N','Y'),(53,14,20,2011,'N','Y'),(54,14,28,2011,'N','Y'),(55,15,1,2013,'Y','Y'),(56,15,20,2013,'Y','Y'),(57,15,3,2013,'N','Y'),(58,15,5,2013,'N','Y'),(59,15,6,2013,'N','Y'),(60,15,4,2013,'N','Y'),(61,15,13,2013,'N','Y'),(62,15,10,2013,'N','Y'),(63,15,29,2013,'N','Y'),(64,15,12,2013,'N','Y'),(65,15,25,2013,'N','Y'),(66,15,28,2013,'N','Y'),(67,16,3,2001,'Y','Y'),(68,16,1,2001,'Y','Y'),(69,16,12,2001,'Y','Y'),(70,16,27,2001,'Y','Y'),(71,16,25,2001,'Y','Y'),(72,16,5,2001,'N','Y'),(73,16,4,2001,'N','Y'),(74,16,13,2001,'N','Y'),(75,16,7,2001,'N','Y'),(76,16,29,2001,'N','Y'),(77,16,20,2001,'N','Y'),(78,16,28,2001,'N','Y'),(79,17,5,2013,'Y','Y'),(80,17,7,2013,'Y','Y'),(81,17,29,2013,'N','Y'),(82,17,3,2013,'N','Y');
/*!40000 ALTER TABLE `movies_awards_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies_directors`
--

DROP TABLE IF EXISTS `movies_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `movies_directors` (
  `movie_id` int(5) NOT NULL,
  `director_id` int(5) NOT NULL,
  PRIMARY KEY (`movie_id`,`director_id`),
  KEY `fk_Movies_has_Directors_Directors1_idx` (`director_id`),
  KEY `fk_Movies_has_Directors_Movies1_idx` (`movie_id`),
  CONSTRAINT `fk_Movies_has_Directors_Directors1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`),
  CONSTRAINT `fk_Movies_has_Directors_Movies1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies_directors`
--

LOCK TABLES `movies_directors` WRITE;
/*!40000 ALTER TABLE `movies_directors` DISABLE KEYS */;
INSERT INTO `movies_directors` VALUES (1,1),(2,2),(13,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(10,10),(11,11),(12,12),(16,13),(14,14),(15,15),(17,16);
/*!40000 ALTER TABLE `movies_directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `nolan`
--

DROP TABLE IF EXISTS `nolan`;
/*!50001 DROP VIEW IF EXISTS `nolan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `nolan` AS SELECT 
 1 AS `ROUND(AVG(rotten_tomatoes_review),2)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `oscar_awards`
--

DROP TABLE IF EXISTS `oscar_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oscar_awards` (
  `oscar_id` int(5) NOT NULL,
  `oscar_description` varchar(45) NOT NULL,
  PRIMARY KEY (`oscar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oscar_awards`
--

LOCK TABLES `oscar_awards` WRITE;
/*!40000 ALTER TABLE `oscar_awards` DISABLE KEYS */;
INSERT INTO `oscar_awards` VALUES (1,'Best Actor'),(2,'Best Actress'),(3,'Best Picture'),(4,'Best Director'),(5,'Best Supporting Actor'),(6,'Best Supporting Actress'),(7,'Best Original Screenplay'),(8,'Foreign Language Film'),(9,'Best Animated Feature'),(10,'Best Adapted Screenplay'),(11,'Best Original Sound'),(12,'Best Sound Mixing'),(13,'Best Original Music Score'),(14,'Best Story'),(15,'Best Unique and Artistic Production'),(16,'Special Achievement Academy Award'),(17,'Best Story and Screenplay'),(18,'Best Animated Short Film'),(19,'Best Documentary Feature'),(20,'Best Production Design'),(21,'Best Dramatic Picture Direction'),(22,'Best Title Writing'),(23,'Best Makeup and Hairstyling '),(24,'Best Assistant Director'),(25,'Best Costume Design'),(26,'Best Comedy'),(27,'Best Visual Effects'),(28,'Best Film Editing'),(29,'Best Cinematography'),(30,'Best Story');
/*!40000 ALTER TABLE `oscar_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `pro`
--

DROP TABLE IF EXISTS `pro`;
/*!50001 DROP VIEW IF EXISTS `pro`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `pro` AS SELECT 
 1 AS `movie_title`,
 1 AS `difference`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `production_companies`
--

DROP TABLE IF EXISTS `production_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `production_companies` (
  `pro_comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_comp_name` varchar(30) NOT NULL,
  `pro_comp_street_address` varchar(45) NOT NULL,
  `pro_comp_state` varchar(2) NOT NULL,
  `pro_comp_zip` varchar(10) NOT NULL,
  `pro_comp_website` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`pro_comp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_companies`
--

LOCK TABLES `production_companies` WRITE;
/*!40000 ALTER TABLE `production_companies` DISABLE KEYS */;
INSERT INTO `production_companies` VALUES (1,'Twentieth Century Fox','10201 West Pico Blvd','CA','90064','https://www.foxmovies.com/'),(2,'Paramount Pictures','5515 Melrose Ave','CA','90038','http://www.paramountstudios.com/'),(3,'DreamWorks','1000 Flower Street','CA','91201','http://www.dreamworksanimation.com/'),(4,'See-Saw Films','45 Folgate Street','UK','E1 6GL','http://www.see-saw-films.com/'),(5,'Fox 2000 Pictures','10201 West Pico Blvd','CA','90064','https://www.foxmovies.com/'),(6,'Lions Gate Entertainment','2700 Colorado Ave ','CA','90404','https://www.lionsgate.com/'),(8,'Summit Entertainment','2700 Colorado Ave','CA','90404','https://www.lionsgate.com/'),(9,'Warner Bros','3400 Warner Blvd.','CA','91505','https://www.warnerbros.com/'),(10,'Marvel Studios','500 S. Buena Vista St.','CA','91505','https://www.marvel.com/'),(11,'Pixar Animation Studios','1200 Park Ave','CA','94608','https://www.pixar.com/'),(12,'Regency Enterprises','10201 West Pico Blvd, Bldg.12 ','CA','90035','http://www.newregency.com/'),(13,'Celador Films','Roman Landing','UK','SO14 1BN','http://www.celador.co.uk/'),(15,'The Weinstein Company','99 Hudson Street','NY','10013','NA');
/*!40000 ALTER TABLE `production_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `twelve`
--

DROP TABLE IF EXISTS `twelve`;
/*!50001 DROP VIEW IF EXISTS `twelve`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `twelve` AS SELECT 
 1 AS `COUNT(winner)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `western`
--

DROP TABLE IF EXISTS `western`;
/*!50001 DROP VIEW IF EXISTS `western`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `western` AS SELECT 
 1 AS `movie_title`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `batman`
--

/*!50001 DROP VIEW IF EXISTS `batman`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `batman` AS select concat(`actors`.`act_first_name`,', ',`actors`.`act_last_name`) AS `full_name` from (`actors` join `actors_roles` on((`actors`.`actor_id` = `actors_roles`.`actor_id`))) where (`actors_roles`.`roles` = 'Batman') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cali`
--

/*!50001 DROP VIEW IF EXISTS `cali`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cali` AS select format(sum(`movies`.`worldwide_gross`),2) AS `total_gross` from (`movies` join `production_companies` on((`movies`.`pro_comp_id` = `production_companies`.`pro_comp_id`))) where (`production_companies`.`pro_comp_state` <> 'CA') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `folgate_street`
--

/*!50001 DROP VIEW IF EXISTS `folgate_street`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `folgate_street` AS select `production_companies`.`pro_comp_name` AS `pro_comp_name` from `production_companies` where (`production_companies`.`pro_comp_street_address` = '45 Folgate Street') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nolan`
--

/*!50001 DROP VIEW IF EXISTS `nolan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nolan` AS select round(avg(`movies`.`rotten_tomatoes_review`),2) AS `ROUND(AVG(rotten_tomatoes_review),2)` from ((`movies` join `movies_directors` on((`movies`.`movie_id` = `movies_directors`.`movie_id`))) join `directors` on((`movies_directors`.`director_id` = `directors`.`director_id`))) where (`directors`.`dir_last_name` = 'Nolan') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `pro`
--

/*!50001 DROP VIEW IF EXISTS `pro`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `pro` AS select `movies`.`movie_title` AS `movie_title`,format((`movies`.`worldwide_gross` - `movies`.`budget`),2) AS `difference` from `movies` where `movies`.`pro_comp_id` in (select `production_companies`.`pro_comp_id` from `production_companies` where (`production_companies`.`pro_comp_state` = 'CA')) order by `movies`.`movie_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `twelve`
--

/*!50001 DROP VIEW IF EXISTS `twelve`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `twelve` AS select count(`movies_awards_join`.`winner`) AS `COUNT(winner)` from (`movies_awards_join` join `movies` on((`movies_awards_join`.`movie_id` = `movies`.`movie_id`))) where ((`movies_awards_join`.`winner` = 'Y') and (`movies`.`movie_title` = '12 Years a Slave')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `western`
--

/*!50001 DROP VIEW IF EXISTS `western`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `western` AS select `movies`.`movie_title` AS `movie_title` from ((`movies` join `movie_genres` on((`movies`.`movie_id` = `movie_genres`.`movie_id`))) join `genres` on((`movie_genres`.`genre_id` = `genres`.`genre_id`))) where (`genres`.`genre_name` = 'Western') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-14 19:21:47
