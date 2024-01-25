-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: Favourite_Games
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favorite_games`
--

DROP TABLE IF EXISTS `favorite_games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite_games` (
  `user_id` int(10) unsigned NOT NULL,
  `game_id` int(10) unsigned NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `game_id` (`game_id`),
  CONSTRAINT `favorite_games_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `favorite_games_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `videogames` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite_games`
--

LOCK TABLES `favorite_games` WRITE;
/*!40000 ALTER TABLE `favorite_games` DISABLE KEYS */;
INSERT INTO `favorite_games` VALUES
(1,1),
(2,2),
(2,4),
(3,4),
(3,5),
(5,2),
(9,11),
(11,29),
(15,27),
(15,17),
(15,8),
(10,21),
(7,23),
(12,17);
/*!40000 ALTER TABLE `favorite_games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platforms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(100) NOT NULL,
  `platform_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES
(1,'Microsoft','Windows'),
(2,'Microsoft','Xbox 360'),
(3,'Sony','PlayStation 2'),
(4,'Sony','PlayStation 4'),
(5,'Nintendo','Wii U'),
(6,'Microsoft','Xbox Original'),
(7,'Sony','PlayStation One'),
(8,'Sony','PlayStation Portable'),
(9,'Sony','PlayStation Vita'),
(10,'Nintendo','Entertainment System'),
(11,'Sega','Mega Drive'),
(12,'Microsoft','Xbox One X'),
(13,'Sony','PlayStation 3'),
(14,'Microsoft','Xbox Series X'),
(15,'Sony','PlayStation 5');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `age` smallint(5) unsigned NOT NULL,
  `country` varchar(100) DEFAULT 'USA',
  `nickname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Alice','White',21,'Romania','alice_007'),
(2,'Jack','Wildson',23,'USA','wilds000n'),
(3,'Michael','Jordan',34,'Germany','great_guy'),
(4,'Gabe','Newell',56,'USA','gabe_is_king'),
(5,'Samantha','Smith',16,'Canada','s@m@nth@'),
(6,'Ali','Mahamad',30,'China','ali_ali_1900'),
(7,'Simona','Bowie',48,'Japan','bo_boshka'),
(8,'Jakov','Gillinger',25,'Russia','ja_gi_98'),
(9,'Yuri','Smirnov',14,'Russia','smirnofff'),
(10,'Maximillian','Strauss',32,'Austria','stromaxxx'),
(11,'Grut','Karnov',34,'Japan','karnov_2000'),
(12,'Sebastian','Michaelis',32,'Belgium','grell_satcliff'),
(13,'Brienna','Gross',30,'Germany','BBB_12345'),
(14,'Katherine','Green',24,'France','sexy_katushka'),
(15,'Cruella','DeViile',20,'Belgium','i_kill_them_all');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videogames`
--

DROP TABLE IF EXISTS `videogames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videogames` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_name` text NOT NULL,
  `platform_id` int(10) unsigned NOT NULL,
  `release_date` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `platform_id` (`platform_id`),
  CONSTRAINT `videogames_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videogames`
--

LOCK TABLES `videogames` WRITE;
/*!40000 ALTER TABLE `videogames` DISABLE KEYS */;
INSERT INTO `videogames` VALUES
(1,'Overwatch',1,2016),
(2,'GTA V',2,2013),
(3,'TES: Skyrim',1,2011),
(4,'DOOM',4,2016),
(5,'Jagged Alliance 3',1,2023),
(6,'Need For Speed: Underground',3,2003),
(7,'The Witcher 3',1,2015),
(8,'The Witcher 3',4,2015),
(9,'The Witcher 3',12,2015),
(10,'DOOM',1,2016),
(11,'DOOM',12,2016),
(12,'GTA V',1,2015),
(13,'GTA V',4,2013),
(14,'TES: Skyrim',13,2011),
(15,'TES: Skyrim',2,2011),
(16,'TES: Skyrim',12,2011),
(17,'Bloodborne',4,2016),
(18,'Uncharted 3',13,2011),
(19,'Tom Clancy\'s Splinter Cell',1,2003),
(20,'Tom Clancy\'s Splinter Cell',6,2002),
(21,'Half-Life 2',1,2004),
(22,'Velvet Assassin',2,2009),
(23,'Gothic 3',1,2006),
(24,'Cyberpunk 2077',1,2020),
(25,'Cyberpunk 2077',14,2021),
(26,'Cyberpunk 2077',15,2021),
(27,'Silent Hill 3',3,2003),
(28,'Crysis 3',1,2013),
(29,'Gone Home',1,2013),
(30,'Gone Home',4,2013),
(31,'Gone Home',12,2013);
/*!40000 ALTER TABLE `videogames` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-18 23:56:22
