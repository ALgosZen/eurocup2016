-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: eurocup-db.mysql.database.azure.com    Database: eurocup2016
-- ------------------------------------------------------
-- Server version	5.6.47.0

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
-- Table structure for table `asst_referee_mast`
--

DROP TABLE IF EXISTS `asst_referee_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asst_referee_mast` (
  `ass_ref_id` int(11) NOT NULL,
  `ass_ref_name` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ass_ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asst_referee_mast`
--

LOCK TABLES `asst_referee_mast` WRITE;
/*!40000 ALTER TABLE `asst_referee_mast` DISABLE KEYS */;
INSERT INTO `asst_referee_mast` VALUES (80001,'Jure Praprotnik',1225),(80002,'Robert Vukan',1225),(80003,'Roberto Alonso Fernandez',1219),(80004,'Simon Beck',1206),(80005,'Mark Borsch',1208),(80006,'Stephen Child',1206),(80007,'Jake Collin',1206),(80008,'Elenito Di Liberatore',1211),(80009,'Bahattin Duran',1222),(80010,'Dalibor Durdevic',1227),(80011,'Mathias Klasenius',1220),(80012,'Tomasz Listkiewicz',1213),(80013,'Stefan Lupp',1208),(80014,'Mike Mullarkey',1206),(80015,'Tarik Ongun',1222),(80016,'Gyorgy Ring',1209),(80017,'Milovan Ristic',1227),(80018,'Pawel Sokolnicki',1213),(80019,'Mauro Tonolini',1211),(80020,'Vencel Toth',1209),(80021,'Sander van Roekel',1226),(80022,'Daniel Warnmark',1220),(80023,'Juan Yuste Jimenez',1219),(80024,'Erwin Zeinstra',1226),(80025,'Frank Andas',1229),(80026,'Frederic Cano',1207),(80027,'Frank Connor',1228),(80028,'Nicolas Danos',1207),(80029,'Sebastian Gheorghe',1216),(80030,'Nikolay Golubev',1217),(80031,'Kim Haglund',1229),(80032,'Tikhon Kalugin',1217),(80033,'Damien McGraith',1215),(80034,'Tomas Mokrusch',1205),(80035,'Roman Slysko',1218),(80036,'Octavian Sovre',1216),(80037,'Anton Averyanov',1217),(80038,'Martin Wilczek',1205);
/*!40000 ALTER TABLE `asst_referee_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coach_mast`
--

DROP TABLE IF EXISTS `coach_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coach_mast` (
  `coach_id` int(11) NOT NULL,
  `coach-name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`coach_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach_mast`
--

LOCK TABLES `coach_mast` WRITE;
/*!40000 ALTER TABLE `coach_mast` DISABLE KEYS */;
INSERT INTO `coach_mast` VALUES (5550,'Gianni De Biasi\r'),(5551,'Marcel Koller\r'),(5552,'Marc Wilmots\r'),(5553,'Ante Cacic\r'),(5554,'Pavel Vrba\r'),(5555,'Roy Hodgson\r'),(5556,'Didier Deschamps\r'),(5557,'Joachim Low\r'),(5558,'Bernd Storck\r'),(5559,'Lars Lagerback\r'),(5560,'Heimir HallgrÃ­msson\r'),(5561,'Antonio Conte\r'),(5562,'Michael ONeill\r'),(5563,'Adam Nawalka\r'),(5564,'Fernando Santos\r'),(5565,'Martin ONeill\r'),(5566,'Anghel Iordanescu\r'),(5567,'Leonid Slutski\r'),(5568,'Jan Kozak\r'),(5569,'Vicente del Bosque\r'),(5570,'Erik Hamren\r'),(5571,'Vladimir Petkovic\r'),(5572,'Fatih Terim\r'),(5573,'Mykhailo Fomenko\r'),(5574,'Chris Coleman\r');
/*!40000 ALTER TABLE `coach_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goal_details`
--

DROP TABLE IF EXISTS `goal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal_details` (
  `goal_id` int(11) NOT NULL,
  `match_no` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `goal_time` int(11) DEFAULT NULL,
  `goal_type` varchar(45) DEFAULT NULL,
  `play_stage` varchar(45) DEFAULT NULL,
  `goal_schedule` varchar(45) DEFAULT NULL,
  `goal_half` int(11) DEFAULT NULL,
  PRIMARY KEY (`goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal_details`
--

LOCK TABLES `goal_details` WRITE;
/*!40000 ALTER TABLE `goal_details` DISABLE KEYS */;
INSERT INTO `goal_details` VALUES (1,1,160159,1207,57,'N','G','NT',2),(2,1,160368,1216,65,'P','G','NT',2),(3,1,160154,1207,89,'N','G','NT',2),(4,2,160470,1221,5,'N','G','NT',1),(5,3,160547,1224,10,'N','G','NT',1),(6,3,160403,1218,61,'N','G','NT',2),(7,3,160550,1224,81,'N','G','NT',2),(8,4,160128,1206,73,'N','G','NT',2),(9,4,160373,1217,93,'N','G','ST',2),(10,5,160084,1204,41,'N','G','NT',1),(11,6,160298,1213,51,'N','G','NT',2),(12,7,160183,1208,19,'N','G','NT',1),(13,7,160180,1208,93,'N','G','ST',2),(14,8,160423,1219,87,'N','G','NT',2),(15,9,160335,1215,48,'N','G','NT',2),(16,9,160327,1215,71,'O','G','NT',2),(17,10,160244,1211,32,'N','G','NT',1),(18,10,160252,1211,93,'N','G','ST',2),(19,11,160207,1209,62,'N','G','NT',2),(20,11,160200,1209,87,'N','G','NT',2),(21,12,160320,1214,31,'N','G','NT',1),(22,12,160221,1210,50,'N','G','NT',2),(23,13,160411,1218,32,'N','G','NT',1),(24,13,160405,1218,45,'N','G','NT',1),(25,13,160380,1217,80,'N','G','NT',2),(26,14,160368,1216,18,'P','G','NT',1),(27,14,160481,1221,57,'N','G','NT',2),(28,15,160160,1207,90,'N','G','NT',2),(29,15,160154,1207,96,'N','G','ST',2),(30,16,160547,1224,42,'N','G','NT',1),(31,16,160138,1206,56,'N','G','NT',2),(32,16,160137,1206,93,'N','G','ST',2),(33,17,160262,1212,49,'N','G','NT',2),(34,17,160275,1212,96,'N','G','ST',2),(35,19,160248,1211,88,'N','G','NT',2),(36,20,160085,1204,37,'N','G','NT',1),(37,20,160086,1204,59,'N','G','NT',2),(38,20,160115,1205,76,'N','G','NT',2),(39,20,160114,1205,89,'P','G','NT',2),(40,21,160435,1219,34,'N','G','NT',1),(41,21,160436,1219,37,'N','G','NT',1),(42,21,160435,1219,48,'N','G','NT',2),(43,22,160067,1203,48,'N','G','NT',2),(44,22,160064,1203,61,'N','G','NT',2),(45,22,160067,1203,70,'N','G','NT',2),(46,23,160224,1210,40,'P','G','NT',1),(47,23,160216,1210,88,'O','G','NT',2),(48,25,160023,1201,43,'N','G','NT',1),(49,27,160544,1224,11,'N','G','NT',1),(50,27,160538,1224,20,'N','G','NT',1),(51,27,160547,1224,67,'N','G','NT',2),(52,29,160287,1213,54,'N','G','NT',2),(53,30,160182,1208,30,'N','G','NT',1),(54,31,160504,1222,10,'N','G','NT',1),(55,31,160500,1222,65,'N','G','NT',2),(56,32,160435,1219,7,'N','G','NT',1),(57,32,160089,1204,45,'N','G','NT',1),(58,32,160085,1204,87,'N','G','NT',2),(59,33,160226,1210,18,'N','G','NT',1),(60,33,160042,1202,60,'N','G','NT',2),(61,33,160226,1210,94,'N','G','ST',2),(62,34,160203,1209,19,'N','G','NT',1),(63,34,160320,1214,42,'N','G','NT',1),(64,34,160202,1209,47,'N','G','NT',2),(65,34,160322,1214,50,'N','G','NT',2),(66,34,160202,1209,55,'N','G','NT',2),(67,34,160322,1214,62,'N','G','NT',2),(68,35,160333,1215,85,'N','G','NT',2),(69,36,160063,1203,84,'N','G','NT',2),(70,37,160287,1213,39,'N','R','NT',1),(71,37,160476,1221,82,'N','R','NT',2),(72,38,160262,1212,75,'O','R','NT',2),(73,39,160321,1214,117,'N','R','ET',2),(74,40,160333,1215,2,'P','R','NT',1),(75,40,160160,1207,58,'N','R','NT',2),(76,40,160160,1207,61,'N','R','NT',2),(77,41,160165,1208,8,'N','R','NT',1),(78,41,160182,1208,43,'N','R','NT',1),(79,41,160173,1208,63,'N','R','NT',2),(80,42,160050,1203,10,'N','R','NT',1),(81,42,160065,1203,78,'N','R','NT',2),(82,42,160062,1203,80,'N','R','NT',2),(83,42,160058,1203,90,'N','R','NT',2),(84,43,160236,1211,33,'N','R','NT',1),(85,43,160252,1211,91,'N','R','ST',2),(86,44,160136,1206,4,'P','R','NT',1),(87,44,160219,1210,6,'N','R','NT',1),(88,44,160230,1210,18,'N','R','NT',1),(89,45,160297,1213,2,'N','Q','NT',1),(90,45,160316,1214,33,'N','Q','NT',1),(91,46,160063,1203,13,'N','Q','NT',1),(92,46,160539,1224,31,'N','Q','NT',1),(93,46,160550,1224,55,'N','Q','NT',2),(94,46,160551,1224,86,'N','Q','NT',2),(95,47,160177,1208,65,'N','Q','NT',2),(96,47,160235,1211,78,'P','Q','NT',2),(97,48,160159,1207,12,'N','Q','NT',1),(98,48,160155,1207,20,'N','Q','NT',1),(99,48,160154,1207,43,'N','Q','NT',1),(100,48,160160,1207,45,'N','Q','NT',1),(101,48,160230,1210,56,'N','Q','NT',2),(102,48,160159,1207,59,'N','Q','NT',2),(103,48,160221,1210,84,'N','Q','NT',2),(104,49,160322,1214,50,'N','S','NT',2),(105,49,160320,1214,53,'N','S','NT',2),(106,50,160160,1207,47,'P','S','ST',1),(107,50,160160,1207,72,'N','S','NT',2),(108,51,160319,1214,109,'N','F','ET',2);
/*!40000 ALTER TABLE `goal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_captain`
--

DROP TABLE IF EXISTS `match_captain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_captain` (
  `match_no` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_captain` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_captain`
--

LOCK TABLES `match_captain` WRITE;
/*!40000 ALTER TABLE `match_captain` DISABLE KEYS */;
INSERT INTO `match_captain` VALUES (1,1207,160140),(2,1201,160013),(3,1224,160539),(4,1206,160136),(5,1222,160494),(6,1213,160297),(7,1208,160163),(8,1219,160424),(9,1215,160331),(10,1203,160062),(11,1202,160028),(12,1214,160322),(13,1217,160373),(14,1216,160349),(15,1207,160140),(16,1206,160136),(17,1223,160515),(18,1208,160163),(19,1211,160231),(20,1205,160110),(21,1219,160424),(22,1203,160062),(23,1210,160222),(24,1214,160322),(25,1216,160349),(26,1221,160467),(27,1217,160386),(28,1218,160401),(29,1223,160520),(30,1212,160267),(31,1205,160093),(32,1204,160076),(33,1210,160222),(34,1209,160202),(35,1211,160235),(36,1220,160459),(37,1221,160467),(38,1224,160539),(39,1204,160076),(40,1207,160140),(41,1208,160163),(42,1209,160202),(43,1211,160231),(44,1206,160136),(45,1213,160297),(46,1224,160539),(47,1208,160163),(48,1207,160140),(49,1214,160322),(50,1207,160140),(51,1214,160322);
/*!40000 ALTER TABLE `match_captain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_details`
--

DROP TABLE IF EXISTS `match_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_details` (
  `match_no` int(11) NOT NULL,
  `play_stage` varchar(45) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `win_lose` varchar(45) DEFAULT NULL,
  `decided_by` varchar(45) DEFAULT NULL,
  `goal_score` int(11) DEFAULT NULL,
  `penalty_score` int(11) DEFAULT NULL,
  `ass_ref` int(11) DEFAULT NULL,
  `player_gk` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_details`
--

LOCK TABLES `match_details` WRITE;
/*!40000 ALTER TABLE `match_details` DISABLE KEYS */;
INSERT INTO `match_details` VALUES (1,'G',1207,'W','N',2,0,80016,160140),(2,'G',1201,'L','N',0,0,80003,160001),(3,'G',1224,'W','N',2,0,80031,160532),(4,'G',1206,'D','N',1,0,80008,160117),(5,'G',1222,'L','N',0,0,80011,160486),(6,'G',1213,'W','N',1,0,80036,160279),(7,'G',1208,'W','N',2,0,80014,160163),(8,'G',1219,'W','N',1,0,80018,160416),(9,'G',1215,'D','N',1,0,80017,160324),(10,'G',1203,'L','N',0,0,80004,160047),(11,'G',1202,'L','N',0,0,80026,160024),(12,'G',1214,'D','N',1,0,80009,160302),(13,'G',1217,'L','N',1,0,80001,160369),(14,'G',1216,'D','N',1,0,80030,160348),(15,'G',1207,'W','N',2,0,80033,160140),(16,'G',1206,'W','N',2,0,80005,160117),(17,'G',1223,'L','N',0,0,80035,160508),(18,'G',1208,'D','N',0,0,80021,160163),(19,'G',1211,'W','N',1,0,80016,160231),(20,'G',1205,'D','N',2,0,80004,160093),(21,'G',1219,'W','N',3,0,80017,160416),(22,'G',1203,'W','N',3,0,80009,160047),(23,'G',1210,'D','N',1,0,80030,160208),(24,'G',1214,'D','N',0,0,80008,160302),(25,'G',1216,'L','N',0,0,80035,160348),(26,'G',1221,'D','N',0,0,80001,160463),(27,'G',1217,'L','N',0,0,80011,160369),(28,'G',1218,'D','N',0,0,80003,160392),(29,'G',1223,'L','N',0,0,80031,160508),(30,'G',1212,'L','N',0,0,80026,160256),(31,'G',1205,'L','N',0,0,80033,160093),(32,'G',1204,'W','N',2,0,80021,160071),(33,'G',1210,'W','N',2,0,80018,160208),(34,'G',1209,'D','N',3,0,80014,160187),(35,'G',1211,'L','N',0,0,80036,160233),(36,'G',1220,'L','N',0,0,80005,160439),(37,'R',1221,'L','P',1,4,80004,160463),(38,'R',1224,'W','N',1,0,80014,160531),(39,'R',1204,'L','N',0,0,80003,160071),(40,'R',1207,'W','N',2,0,80008,160140),(41,'R',1208,'W','N',3,0,80018,160163),(42,'R',1209,'L','N',0,0,80017,160187),(43,'R',1211,'W','N',2,0,80009,160231),(44,'R',1206,'L','N',1,0,80001,160117),(45,'Q',1213,'L','P',1,3,80005,160278),(46,'Q',1224,'W','N',3,0,80001,160531),(47,'Q',1208,'W','P',1,6,80016,160163),(48,'Q',1207,'W','N',5,0,80021,160140),(49,'S',1214,'W','N',2,0,80011,160302),(50,'S',1207,'W','N',2,0,80008,160140),(51,'F',1214,'W','N',1,0,80004,160302);
/*!40000 ALTER TABLE `match_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_mast`
--

DROP TABLE IF EXISTS `match_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `match_mast` (
  `match_no` int(11) NOT NULL,
  `play_stage` varchar(45) DEFAULT NULL,
  `play_date` datetime DEFAULT NULL,
  `results` varchar(45) DEFAULT NULL,
  `decided_by` varchar(45) DEFAULT NULL,
  `goal_score` datetime DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL,
  `audence` int(11) DEFAULT NULL,
  `plr_of_match` int(11) DEFAULT NULL,
  `stop1_sec` int(11) DEFAULT NULL,
  `stop2_sec` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_mast`
--

LOCK TABLES `match_mast` WRITE;
/*!40000 ALTER TABLE `match_mast` DISABLE KEYS */;
INSERT INTO `match_mast` VALUES (1,'G','2016-06-11 00:00:00','WIN','N','0000-00-00 00:00:00',20008,70007,75113,160154,131,242),(2,'G','2016-06-11 00:00:00','WIN','N','0000-00-00 00:00:00',20002,70012,33805,160476,61,182),(3,'G','2016-06-11 00:00:00','WIN','N','0000-00-00 00:00:00',20001,70017,37831,160540,64,268),(4,'G','2016-06-12 00:00:00','DRAW','N','0000-00-00 00:00:00',20005,70011,62343,160128,0,185),(5,'G','2016-06-12 00:00:00','WIN','N','0000-00-00 00:00:00',20007,70006,43842,160084,125,325),(6,'G','2016-06-12 00:00:00','WIN','N','0000-00-00 00:00:00',20006,70014,33742,160291,2,246),(7,'G','2016-06-13 00:00:00','WIN','N','0000-00-00 00:00:00',20003,70002,43035,160176,89,188),(8,'G','2016-06-13 00:00:00','WIN','N','0000-00-00 00:00:00',20010,70009,29400,160429,360,182),(9,'G','2016-06-13 00:00:00','DRAW','N','0000-00-00 00:00:00',20008,70010,73419,160335,67,194),(10,'G','2016-06-14 00:00:00','WIN','N','0000-00-00 00:00:00',20004,70005,55408,160244,63,189),(11,'G','2016-06-14 00:00:00','WIN','N','0000-00-00 00:00:00',20001,70018,34424,160197,61,305),(12,'G','2016-06-15 00:00:00','DRAW','N','0000-00-00 00:00:00',20009,70004,38742,160320,15,284),(13,'G','2016-06-15 00:00:00','WIN','N','0000-00-00 00:00:00',20003,70001,38989,160405,62,189),(14,'G','2016-06-15 00:00:00','DRAW','N','0000-00-00 00:00:00',20007,70015,43576,160477,74,206),(15,'G','2016-06-16 00:00:00','WIN','N','0000-00-00 00:00:00',20005,70013,63670,160154,71,374),(16,'G','2016-06-16 00:00:00','WIN','N','0000-00-00 00:00:00',20002,70003,34033,160540,62,212),(17,'G','2016-06-16 00:00:00','WIN','N','0000-00-00 00:00:00',20004,70016,51043,160262,7,411),(18,'G','2016-06-17 00:00:00','DRAW','N','0000-00-00 00:00:00',20008,70008,73648,160165,6,208),(19,'G','2016-06-17 00:00:00','WIN','N','0000-00-00 00:00:00',20010,70007,29600,160248,2,264),(20,'G','2016-06-17 00:00:00','DRAW','N','0000-00-00 00:00:00',20009,70005,38376,160086,71,280),(21,'G','2016-06-18 00:00:00','WIN','N','0000-00-00 00:00:00',20006,70010,33409,160429,84,120),(22,'G','2016-06-18 00:00:00','WIN','N','0000-00-00 00:00:00',20001,70004,39493,160064,11,180),(23,'G','2016-06-18 00:00:00','DRAW','N','0000-00-00 00:00:00',20005,70015,60842,160230,61,280),(24,'G','2016-06-19 00:00:00','DRAW','N','0000-00-00 00:00:00',20007,70011,44291,160314,3,200),(25,'G','2016-06-20 00:00:00','WIN','N','0000-00-00 00:00:00',20004,70016,49752,160005,125,328),(26,'G','2016-06-20 00:00:00','DRAW','N','0000-00-00 00:00:00',20003,70001,45616,160463,60,122),(27,'G','2016-06-21 00:00:00','WIN','N','0000-00-00 00:00:00',20010,70006,28840,160544,62,119),(28,'G','2016-06-21 00:00:00','DRAW','N','0000-00-00 00:00:00',20009,70012,39051,160392,62,301),(29,'G','2016-06-21 00:00:00','WIN','N','0000-00-00 00:00:00',20005,70017,58874,160520,29,244),(30,'G','2016-06-21 00:00:00','WIN','N','0000-00-00 00:00:00',20007,70018,44125,160177,21,195),(31,'G','2016-06-22 00:00:00','WIN','N','0000-00-00 00:00:00',20002,70013,32836,160504,60,300),(32,'G','2016-06-22 00:00:00','WIN','N','0000-00-00 00:00:00',20001,70008,37245,160085,70,282),(33,'G','2016-06-22 00:00:00','WIN','N','0000-00-00 00:00:00',20008,70009,68714,160220,7,244),(34,'G','2016-06-22 00:00:00','DRAW','N','0000-00-00 00:00:00',20004,70002,55514,160322,70,185),(35,'G','2016-06-23 00:00:00','WIN','N','0000-00-00 00:00:00',20003,70014,44268,160333,79,221),(36,'G','2016-06-23 00:00:00','WIN','N','0000-00-00 00:00:00',20006,70003,34011,160062,63,195),(37,'R','2016-06-25 00:00:00','WIN','P','0000-00-00 00:00:00',20009,70005,38842,160476,126,243),(38,'R','2016-06-25 00:00:00','WIN','N','0000-00-00 00:00:00',20007,70002,44342,160547,5,245),(39,'R','2016-06-26 00:00:00','WIN','N','0000-00-00 00:00:00',20002,70012,33523,160316,61,198),(40,'R','2016-06-26 00:00:00','WIN','N','0000-00-00 00:00:00',20004,70011,56279,160160,238,203),(41,'R','2016-06-26 00:00:00','WIN','N','0000-00-00 00:00:00',20003,70009,44312,160173,62,124),(42,'R','2016-06-27 00:00:00','WIN','N','0000-00-00 00:00:00',20010,70010,28921,160062,3,133),(43,'R','2016-06-27 00:00:00','WIN','N','0000-00-00 00:00:00',20008,70004,76165,160235,63,243),(44,'R','2016-06-28 00:00:00','WIN','N','0000-00-00 00:00:00',20006,70001,33901,160217,5,199),(45,'Q','2016-07-01 00:00:00','WIN','P','0000-00-00 00:00:00',20005,70003,62940,160316,58,181),(46,'Q','2016-07-02 00:00:00','WIN','N','0000-00-00 00:00:00',20003,70001,45936,160550,14,182),(47,'Q','2016-07-03 00:00:00','WIN','P','0000-00-00 00:00:00',20001,70007,38764,160163,63,181),(48,'Q','2016-07-04 00:00:00','WIN','N','0000-00-00 00:00:00',20008,70008,76833,160159,16,125),(49,'S','2016-07-07 00:00:00','WIN','N','0000-00-00 00:00:00',20004,70006,55679,160322,2,181),(50,'S','2016-07-08 00:00:00','WIN','N','0000-00-00 00:00:00',20005,70011,64078,160160,126,275),(51,'F','2016-07-11 00:00:00','WIN','N','0000-00-00 00:00:00',20008,70005,75868,160307,161,181);
/*!40000 ALTER TABLE `match_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty_gk`
--

DROP TABLE IF EXISTS `penalty_gk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty_gk` (
  `match_no` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_gk` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty_gk`
--

LOCK TABLES `penalty_gk` WRITE;
/*!40000 ALTER TABLE `penalty_gk` DISABLE KEYS */;
INSERT INTO `penalty_gk` VALUES (0,0,0),(37,1221,160463),(45,1213,160278),(47,1208,160163);
/*!40000 ALTER TABLE `penalty_gk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty_shootout`
--

DROP TABLE IF EXISTS `penalty_shootout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty_shootout` (
  `kick_id` int(11) NOT NULL,
  `match_no` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `score_goal` varchar(45) DEFAULT NULL,
  `kick_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`kick_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty_shootout`
--

LOCK TABLES `penalty_shootout` WRITE;
/*!40000 ALTER TABLE `penalty_shootout` DISABLE KEYS */;
INSERT INTO `penalty_shootout` VALUES (1,37,1221,160467,'Y',1),(2,37,1213,160297,'Y',2),(3,37,1221,160477,'N',3),(4,37,1213,160298,'Y',4),(5,37,1221,160476,'Y',5),(6,37,1213,160281,'Y',6),(7,37,1221,160470,'Y',7),(8,37,1213,160287,'Y',8),(9,37,1221,160469,'Y',9),(10,37,1213,160291,'Y',10),(11,45,1214,160322,'Y',1),(12,45,1213,160297,'Y',2),(13,45,1214,160316,'Y',3),(14,45,1213,160298,'Y',4),(15,45,1214,160314,'Y',5),(16,45,1213,160281,'Y',6),(17,45,1214,160320,'Y',7),(18,45,1213,160287,'N',8),(19,45,1214,160321,'Y',9),(20,47,1211,160251,'Y',1),(21,47,1208,160176,'Y',2),(22,47,1211,160253,'N',3),(23,47,1208,160183,'N',4),(24,47,1211,160234,'Y',5),(25,47,1208,160177,'N',6),(26,47,1211,160252,'N',7),(27,47,1208,160173,'Y',8),(28,47,1211,160235,'N',9),(29,47,1208,160180,'N',10),(30,47,1211,160244,'Y',11),(31,47,1208,160168,'Y',12),(32,47,1211,160246,'Y',13),(33,47,1208,160169,'Y',14),(34,47,1211,160238,'Y',15),(35,47,1208,160165,'Y',16),(36,47,1211,160237,'N',17),(37,47,1208,160166,'Y',18);
/*!40000 ALTER TABLE `penalty_shootout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_booked`
--

DROP TABLE IF EXISTS `player_booked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_booked` (
  `match_no` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `booking_time` varchar(45) DEFAULT NULL,
  `sent_off` varchar(45) DEFAULT NULL,
  `play_schedule` varchar(45) DEFAULT NULL,
  `play_half` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_booked`
--

LOCK TABLES `player_booked` WRITE;
/*!40000 ALTER TABLE `player_booked` DISABLE KEYS */;
INSERT INTO `player_booked` VALUES (1,1216,160349,'32','','NT',1),(2,1221,160470,'14','','NT',1),(3,1218,160401,'2','','ST',2),(4,1206,160120,'62','','NT',2),(5,1222,160505,'31','','NT',1),(6,1213,160290,'65','','NT',2),(7,1223,160518,'68','','NT',2),(8,1205,160100,'61','','NT',2),(9,1215,160336,'43','','NT',1),(10,1211,160236,'65','','NT',2),(11,1202,160027,'33','','NT',1),(12,1210,160227,'2','','ST',2),(13,1218,160395,'46','','NT',2),(14,1221,160480,'2','','ST',2),(15,1201,160015,'55','','NT',2),(16,1224,160535,'61','','NT',2),(17,1223,160528,'40','','NT',1),(18,1208,160175,'3','','NT',1),(19,1211,160242,'69','','NT',2),(20,1204,160080,'14','','NT',1),(21,1219,160424,'2','','NT',1),(22,1215,160334,'42','','NT',1),(23,1209,160199,'2','','ST',2),(24,1202,160028,'6','','NT',1),(25,1201,160012,'6','','NT',1),(26,1207,160147,'25','','NT',1),(27,1224,160551,'16','','NT',1),(28,1218,160409,'24','','NT',1),(29,1223,160520,'25','','NT',1),(31,1222,160491,'35','','NT',1),(32,1204,160087,'29','','NT',1),(33,1210,160218,'36','','NT',1),(34,1209,160190,'13','','NT',1),(35,1211,160233,'39','','NT',1),(36,1203,160064,'1','','ST',1),(37,1221,160470,'55','','NT',2),(38,1212,160266,'44','','NT',1),(39,1214,160318,'78','','NT',2),(40,1215,160328,'25','','NT',1),(41,1218,160407,'2','','ST',2),(42,1209,160192,'34','','NT',1),(43,1219,160431,'2','','ST',2),(44,1210,160208,'38','','NT',1),(45,1214,160318,'2','','ST',2),(46,1224,160535,'5','','NT',1),(47,1211,160247,'56','','NT',2),(48,1210,160221,'58','','NT',2),(49,1224,160540,'8','','NT',1),(50,1208,160177,'1','','ST',1),(51,1214,160304,'34','','NT',1);
/*!40000 ALTER TABLE `player_booked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_in_out`
--

DROP TABLE IF EXISTS `player_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_in_out` (
  `match_no` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `in_out` varchar(45) DEFAULT NULL,
  `time_in_out` int(11) DEFAULT NULL,
  `play_schedule` varchar(45) DEFAULT NULL,
  `play_half` int(11) DEFAULT NULL,
  PRIMARY KEY (`match_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_in_out`
--

LOCK TABLES `player_in_out` WRITE;
/*!40000 ALTER TABLE `player_in_out` DISABLE KEYS */;
INSERT INTO `player_in_out` VALUES (1,1207,160151,'I',66,'NT',2),(2,1201,160014,'I',62,'NT',2),(3,1218,160413,'I',59,'NT',2),(4,1206,160133,'I',78,'NT',2),(5,1204,160090,'I',87,'NT',2),(6,1212,160266,'I',46,'NT',2),(7,1208,160179,'I',78,'NT',2),(8,1205,160113,'I',75,'NT',2),(9,1215,160337,'I',64,'NT',2),(10,1203,160068,'I',62,'NT',2),(11,1202,160041,'I',59,'NT',2),(12,1210,160227,'I',81,'NT',2),(13,1217,160380,'I',46,'NT',2),(14,1216,160358,'I',46,'NT',2),(15,1201,160018,'I',71,'NT',2),(16,1206,160138,'I',46,'NT',2),(17,1212,160275,'I',69,'NT',2),(18,1208,160179,'I',66,'NT',2),(19,1211,160253,'I',60,'NT',2),(20,1204,160083,'I',62,'NT',2),(21,1219,160426,'I',64,'NT',2),(22,1203,160063,'I',57,'NT',2),(23,1209,160201,'I',66,'NT',2),(24,1202,160042,'I',65,'NT',2),(25,1201,160020,'I',59,'NT',2),(26,1207,160154,'I',63,'NT',2),(27,1217,160372,'I',46,'NT',2),(28,1206,160136,'I',56,'NT',2),(29,1213,160287,'I',46,'NT',2),(30,1208,160179,'I',55,'NT',2),(31,1205,160115,'I',57,'NT',2),(32,1204,160083,'I',82,'NT',2),(33,1202,160042,'I',46,'NT',2),(34,1209,160188,'I',46,'NT',2),(35,1211,160237,'I',60,'NT',2),(36,1203,160068,'I',71,'NT',2),(37,1213,160289,'I',101,'ET',1),(38,1212,160276,'I',69,'NT',2),(39,1204,160092,'I',110,'ET',2),(40,1207,160151,'I',46,'NT',2),(41,1208,160167,'I',72,'NT',2),(42,1203,160058,'I',70,'NT',2),(43,1211,160245,'I',54,'NT',2),(44,1206,160133,'I',46,'NT',2),(45,1213,160289,'I',98,'ET',1),(46,1203,160061,'I',46,'NT',2),(47,1208,160180,'I',16,'NT',1),(48,1207,160158,'I',60,'NT',2),(49,1214,160311,'I',74,'NT',2),(50,1207,160152,'I',71,'NT',2),(51,1207,160161,'I',110,'ET',2);
/*!40000 ALTER TABLE `player_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_mast`
--

DROP TABLE IF EXISTS `player_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_mast` (
  `player_id` int(11) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `jersey_no` int(11) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `posi_to_play` varchar(45) DEFAULT NULL,
  `dt_of_bir` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `playing_club` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_mast`
--

LOCK TABLES `player_mast` WRITE;
/*!40000 ALTER TABLE `player_mast` DISABLE KEYS */;
INSERT INTO `player_mast` VALUES (160001,1201,1,'Etrit Berisha','GK','1989-03-10 00:00:00',27,'Lazio\r'),(160002,1201,23,'Alban Hoxha','GK','1987-11-23 00:00:00',28,'Partizani\r'),(160003,1201,12,'Orges Shehi','GK','1977-09-25 00:00:00',38,'Skenderbeu\r'),(160004,1201,7,'Ansi Agolli','DF','1982-10-11 00:00:00',33,'Qarabag\r'),(160005,1201,18,'Arlind Ajeti','DF','1993-09-25 00:00:00',22,'Frosinone\r'),(160006,1201,17,'Naser Aliji','DF','1993-12-27 00:00:00',22,'Basel\r'),(160007,1201,4,'Elseid Hysaj','DF','1994-02-20 00:00:00',22,'Napoli\r'),(160008,1201,2,'Andi Lila','DF','1986-02-12 00:00:00',30,'Giannina\r'),(160009,1201,15,'Mergim Mavraj','DF','1986-06-09 00:00:00',30,'Koln\r'),(160010,1201,6,'Frederic Veseli','DF','1992-11-20 00:00:00',23,'Lugano\r'),(160011,1201,22,'Amir Abrashi','MF','1990-03-27 00:00:00',26,'Freiburg\r'),(160012,1201,8,'Migjen Basha','MF','1987-01-05 00:00:00',29,'Como\r'),(160013,1201,5,'Lorik Cana','MF','1983-07-27 00:00:00',32,'Nantes\r'),(160014,1201,20,'Ergys Kace','MF','1993-07-08 00:00:00',22,'PAOK\r'),(160015,1201,13,'Burim Kukeli','MF','1984-01-16 00:00:00',32,'Zurich\r'),(160016,1201,3,'Ermir Lenjani','MF','1989-08-05 00:00:00',26,'Nantes\r'),(160017,1201,9,'Ledian Memushaj','MF','1986-12-17 00:00:00',29,'Pescara\r'),(160018,1201,21,'Odise Roshi','MF','1991-05-22 00:00:00',25,'Rijeka\r'),(160019,1201,14,'Taulant Xhaka','MF','1991-03-28 00:00:00',25,'Basel\r'),(160020,1201,19,'Bekim Balaj','FD','1991-01-11 00:00:00',25,'Rijeka\r'),(160021,1201,16,'Sokol Cikalleshi','FD','1990-07-27 00:00:00',25,'Istanbul Basaksehir\r'),(160022,1201,11,'Shkelzen Gashi','FD','1988-07-15 00:00:00',27,'Colorado\r'),(160023,1201,10,'Armando Sadiku','FD','1991-05-27 00:00:00',25,'Vaduz\r'),(160024,1202,1,'Robert Almer','GK','1984-03-20 00:00:00',32,'Austria Wien\r'),(160025,1202,12,'Heinz Lindner','GK','1990-07-17 00:00:00',25,'Frankfurt\r'),(160026,1202,23,'Ramazan Ozcan','GK','1984-06-28 00:00:00',31,'Ingolstadt\r'),(160027,1202,3,'Aleksandar Dragovic','DF','1991-03-06 00:00:00',25,'Dynamo Kyiv\r'),(160028,1202,5,'Christian Fuchs','DF','1986-04-07 00:00:00',30,'Leicester\r'),(160029,1202,4,'Martin Hinteregger','DF','1992-09-07 00:00:00',23,'Monchengladbach\r'),(160030,1202,17,'Florian Klein','DF','1986-11-17 00:00:00',29,'Stuttgart\r'),(160031,1202,15,'Sebastian Prodl','DF','1987-06-21 00:00:00',28,'Watford\r'),(160032,1202,13,'Markus Suttner','DF','1987-04-16 00:00:00',29,'Ingolstadt\r'),(160033,1202,16,'Kevin Wimmer','DF','1992-11-15 00:00:00',23,'Tottenham\r'),(160034,1202,8,'David Alaba','MF','1992-06-24 00:00:00',23,'Bayern\r'),(160035,1202,14,'Julian Baumgartlinger','MF','1988-01-02 00:00:00',28,'Mainz\r'),(160036,1202,2,'Gyorgy Garics','MF','1984-03-08 00:00:00',32,'Darmstadt\r'),(160037,1202,11,'Martin Harnik','MF','1987-06-10 00:00:00',29,'Stuttgart\r'),(160038,1202,6,'Stefan Ilsanker','MF','1989-05-18 00:00:00',27,'Leipzig\r'),(160039,1202,22,'Jakob Jantscher','MF','1989-01-08 00:00:00',27,'Luzern\r'),(160040,1202,10,'Zlatko Junuzovic','MF','1987-09-26 00:00:00',28,'Bremen\r'),(160041,1202,20,'Marcel Sabitzer','MF','1994-03-17 00:00:00',22,'Leipzig\r'),(160042,1202,18,'Alessandro Schopf','MF','1994-02-07 00:00:00',22,'Schalke\r'),(160043,1202,7,'Marko Arnautovic','FD','1989-04-19 00:00:00',27,'Stoke\r'),(160044,1202,19,'Lukas Hinterseer','FD','1991-03-28 00:00:00',25,'Ingolstadt\r'),(160045,1202,21,'Marc Janko','FD','1983-06-25 00:00:00',32,'Basel\r'),(160046,1202,9,'Rubin Okotie','FD','1987-06-06 00:00:00',29,'1860 Munchen\r'),(160047,1203,1,'Thibaut Courtois','GK','1992-05-11 00:00:00',24,'Chelsea\r'),(160048,1203,13,'Jean-Francois Gillet','GK','1979-05-31 00:00:00',37,'Mechelen\r'),(160049,1203,12,'Simon Mignolet','GK','1988-08-06 00:00:00',27,'Liverpool\r'),(160050,1203,2,'Toby Alderweireld','DF','1989-03-02 00:00:00',27,'Tottenham\r'),(160051,1203,23,'Laurent Ciman','DF','1985-08-05 00:00:00',30,'Montreal\r'),(160052,1203,15,'Jason Denayer','DF','1995-06-28 00:00:00',20,'Galatasaray\r'),(160053,1203,18,'Christian Kabasele','DF','1991-02-24 00:00:00',25,'Genk\r'),(160054,1203,21,'Jordan Lukaku','DF','1994-07-25 00:00:00',21,'Oostende\r'),(160055,1203,16,'Thomas Meunier','DF','1991-09-12 00:00:00',24,'Club Brugge\r'),(160056,1203,3,'Thomas Vermaelen','DF','1985-11-14 00:00:00',30,'Barcelona\r'),(160057,1203,5,'Jan Vertonghen','DF','1987-04-24 00:00:00',29,'Tottenham\r'),(160058,1203,11,'Yannick Carrasco','MF','1993-09-04 00:00:00',22,'Atletico\r'),(160059,1203,7,'Kevin De Bruyne','MF','1991-06-28 00:00:00',24,'Man. City\r'),(160060,1203,19,'Mousa Dembele','MF','1987-07-16 00:00:00',28,'Tottenham\r'),(160061,1203,8,'Marouane Fellaini','MF','1987-11-22 00:00:00',28,'Man. United\r'),(160062,1203,10,'Eden Hazard','MF','1991-01-07 00:00:00',25,'Chelsea\r'),(160063,1203,4,'Radja Nainggolan','MF','1988-05-04 00:00:00',28,'Roma\r'),(160064,1203,6,'Axel Witsel','MF','1989-01-12 00:00:00',27,'Zenit\r'),(160065,1203,22,'Michy Batshuayi','FD','1993-10-02 00:00:00',22,'Marseille\r'),(160066,1203,20,'Christian Benteke','FD','1990-12-03 00:00:00',25,'Liverpool\r'),(160067,1203,9,'Romelu Lukaku','FD','1993-05-13 00:00:00',23,'Everton\r'),(160068,1203,14,'Dries Mertens','FD','1987-05-06 00:00:00',29,'Napoli\r'),(160069,1203,17,'Divock Origi','FD','1995-04-18 00:00:00',21,'Liverpool\r'),(160070,1204,12,'Lovre Kalinic','GK','1990-04-03 00:00:00',26,'Hajduk Split\r'),(160071,1204,23,'Danijel SubaSic','GK','1984-10-27 00:00:00',31,'Monaco\r'),(160072,1204,1,'Ivan Vargic','GK','1987-03-15 00:00:00',29,'Rijeka\r'),(160073,1204,5,'Vedran Corluka','DF','1986-02-05 00:00:00',30,'Lokomotiv Moskva\r'),(160074,1204,6,'Tin Jedvaj','DF','1995-11-28 00:00:00',20,'Leverkusen\r'),(160075,1204,13,'Gordon Schildenfeld','DF','1985-03-18 00:00:00',31,'Dinamo Zagreb\r'),(160076,1204,11,'Darijo Srna','DF','1982-05-01 00:00:00',34,'Shakhtar Donetsk\r'),(160077,1204,3,'Ivan Strinic','DF','1987-07-17 00:00:00',28,'Napoli\r'),(160078,1204,21,'Domagoj Vida','DF','1989-04-29 00:00:00',27,'Dynamo Kyiv\r'),(160079,1204,2,'Sime Vrsaljko','DF','1992-01-10 00:00:00',24,'Sassuolo\r'),(160080,1204,19,'Milan Badelj','MF','1989-02-25 00:00:00',27,'Fiorentina\r'),(160081,1204,14,'Marcelo Brozovic','MF','1992-11-16 00:00:00',23,'Internazionale\r'),(160082,1204,18,'Ante Coric','MF','1997-04-14 00:00:00',19,'Dinamo Zagreb\r'),(160083,1204,8,'Mateo Kovacic','MF','1994-05-06 00:00:00',22,'Real Madrid\r'),(160084,1204,10,'Luka Modric','MF','1985-09-09 00:00:00',30,'Real Madrid\r'),(160085,1204,4,'Ivan PeriSic','MF','1989-02-02 00:00:00',27,'Internazionale\r'),(160086,1204,7,'Ivan Rakitic','MF','1988-03-10 00:00:00',28,'Barcelona\r'),(160087,1204,15,'Marko Rog','MF','1995-07-19 00:00:00',20,'Dinamo Zagreb\r'),(160088,1204,22,'Duje Cop','FD','1990-02-01 00:00:00',26,'Malaga\r'),(160089,1204,16,'Nikola Kalinic','FD','1988-01-05 00:00:00',28,'Fiorentina\r'),(160090,1204,9,'Andrej Kramaric','FD','1991-06-19 00:00:00',24,'Hoffenheim\r'),(160091,1204,17,'Mario Mandzukic','FD','1986-05-21 00:00:00',30,'Juventus\r'),(160092,1204,20,'Marko Pjaca','FD','1995-05-06 00:00:00',21,'Dinamo Zagreb\r'),(160093,1205,1,'Petr Cech','GK','1982-05-20 00:00:00',34,'Arsenal\r'),(160094,1205,23,'TomasKoubek','GK','1992-08-26 00:00:00',23,'Liberec\r'),(160095,1205,16,'TomasVaclik','GK','1989-03-29 00:00:00',27,'Basel\r'),(160096,1205,4,'Theodor Gebre Selassie','DF','1986-12-24 00:00:00',29,'Bremen\r'),(160097,1205,5,'Roman Hubnik','DF','1984-06-06 00:00:00',32,'Plzen\r'),(160098,1205,2,'Pavel Kaderabek','DF','1992-04-25 00:00:00',24,'Hoffenheim\r'),(160099,1205,3,'Michal Kadlec','DF','1984-12-13 00:00:00',31,'Fenerbahce\r'),(160100,1205,8,'David Limbersky','DF','1983-10-06 00:00:00',32,'Plzen\r'),(160101,1205,6,'TomasSivok','DF','1983-09-15 00:00:00',32,'Bursaspor\r'),(160102,1205,17,'Marek Suchy','DF','1988-03-29 00:00:00',28,'Basel\r'),(160103,1205,22,'Vladimir Darida','MF','1990-08-08 00:00:00',25,'Hertha\r'),(160104,1205,9,'Borek Dockal','MF','1988-09-30 00:00:00',27,'Sparta Praha\r'),(160105,1205,14,'Daniel Kolar','MF','1985-10-27 00:00:00',30,'Plzen\r'),(160106,1205,19,'Ladislav Krejci','MF','1992-07-05 00:00:00',23,'Sparta Praha\r'),(160107,1205,15,'David Pavelka','MF','1991-05-18 00:00:00',25,'Kasimpasa\r'),(160108,1205,13,'Jaroslav PlaSil','MF','1982-01-05 00:00:00',34,'Bordeaux\r'),(160109,1205,11,'Daniel Pudil','MF','1985-09-27 00:00:00',30,'Sheff. Wednesday\r'),(160110,1205,10,'TomasRosicky','MF','1980-10-04 00:00:00',35,'Arsenal\r'),(160111,1205,20,'Jiri Skalak','MF','1992-03-12 00:00:00',24,'Brighton\r'),(160112,1205,18,'Josef Sural','MF','1990-05-30 00:00:00',26,'Sparta Praha\r'),(160113,1205,21,'David Lafata','FD','1981-09-18 00:00:00',34,'Sparta Praha\r'),(160114,1205,7,'TomasNecid','FD','1989-08-13 00:00:00',26,'Bursaspor\r'),(160115,1205,12,'Milan Skoda','FD','1986-01-16 00:00:00',30,'Slavia Praha\r'),(160116,1206,13,'Fraser Forster','GK','1988-03-17 00:00:00',28,'Southampton\r'),(160117,1206,1,'Joe Hart','GK','1987-04-19 00:00:00',29,'Man. City\r'),(160118,1206,23,'Tom Heaton','GK','1986-04-15 00:00:00',30,'Burnley\r'),(160119,1206,21,'Ryan Bertrand','DF','1989-08-05 00:00:00',26,'Southampton\r'),(160120,1206,5,'Gary Cahill','DF','1985-12-19 00:00:00',30,'Chelsea\r'),(160121,1206,12,'Nathaniel Clyne','DF','1991-04-05 00:00:00',25,'Liverpool\r'),(160122,1206,3,'Danny Rose','DF','1990-07-02 00:00:00',25,'Tottenham\r'),(160123,1206,6,'Chris Smalling','DF','1989-11-22 00:00:00',26,'Man. United\r'),(160124,1206,16,'John Stones','DF','1994-05-28 00:00:00',22,'Everton\r'),(160125,1206,2,'Kyle Walker','DF','1990-05-28 00:00:00',26,'Tottenham\r'),(160126,1206,20,'Dele Alli','MF','1996-04-11 00:00:00',20,'Tottenham\r'),(160127,1206,19,'Ross Barkley','MF','1993-12-05 00:00:00',22,'Everton\r'),(160128,1206,17,'Eric Dier','MF','1994-01-15 00:00:00',22,'Tottenham\r'),(160129,1206,14,'Jordan Henderson','MF','1990-06-17 00:00:00',26,'Liverpool\r'),(160130,1206,8,'Adam Lallana','MF','1988-05-10 00:00:00',28,'Liverpool\r'),(160131,1206,4,'James Milner','MF','1986-01-04 00:00:00',30,'Liverpool\r'),(160132,1206,7,'Raheem Sterling','MF','1994-12-08 00:00:00',21,'Man. City\r'),(160133,1206,18,'Jack Wilshere','MF','1992-01-01 00:00:00',24,'Arsenal\r'),(160134,1206,9,'Harry Kane','FD','1993-07-28 00:00:00',22,'Tottenham\r'),(160135,1206,22,'Marcus Rashford','FD','1997-10-31 00:00:00',18,'Man. United\r'),(160136,1206,10,'Wayne Rooney','FD','1985-10-24 00:00:00',30,'Man. United\r'),(160137,1206,15,'Daniel Sturridge','FD','1989-09-01 00:00:00',26,'Liverpool\r'),(160138,1206,11,'Jamie Vardy','FD','1987-01-11 00:00:00',29,'Leicester\r'),(160139,1207,23,'Benoit Costil','GK','1987-07-03 00:00:00',28,'Rennes\r'),(160140,1207,1,'Hugo Lloris','GK','1986-12-26 00:00:00',29,'Tottenham\r'),(160141,1207,16,'Steve Mandanda','GK','1985-03-28 00:00:00',31,'Marseille\r'),(160142,1207,17,'Lucas Digne','DF','1993-07-20 00:00:00',22,'Roma\r'),(160143,1207,3,'Patrice Evra','DF','1981-05-15 00:00:00',35,'Juventus\r'),(160144,1207,2,'Christophe Jallet','DF','1983-10-31 00:00:00',32,'Lyon\r'),(160145,1207,21,'Laurent Koscielny','DF','1985-09-10 00:00:00',30,'Arsenal\r'),(160146,1207,13,'Eliaquim Mangala','DF','1991-02-13 00:00:00',25,'Man. City\r'),(160147,1207,4,'Adil Rami','DF','1985-12-27 00:00:00',30,'Sevilla\r'),(160148,1207,19,'Bacary Sagna','DF','1983-02-14 00:00:00',33,'Man. City\r'),(160149,1207,22,'Samuel Umtiti','DF','1993-11-14 00:00:00',22,'Lyon\r'),(160150,1207,6,'Yohan Cabaye','MF','1986-01-14 00:00:00',30,'Crystal Palace\r'),(160151,1207,20,'Kingsley Coman','MF','1996-06-13 00:00:00',20,'Bayern\r'),(160152,1207,5,'NGolo Kante','MF','1991-03-29 00:00:00',25,'Leicester\r'),(160153,1207,14,'Blaise Matuidi','MF','1987-04-09 00:00:00',29,'Paris\r'),(160154,1207,8,'Dimitri Payet','MF','1987-03-29 00:00:00',29,'West Ham\r'),(160155,1207,15,'Paul Pogba','MF','1993-03-15 00:00:00',23,'Juventus\r'),(160156,1207,12,'Morgan Schneiderlin','MF','1989-11-08 00:00:00',26,'Man. United\r'),(160157,1207,18,'Moussa Sissoko','MF','1989-08-16 00:00:00',26,'Newcastle\r'),(160158,1207,10,'Andre-Pierre Gignac','FD','1985-12-05 00:00:00',30,'Tigres\r'),(160159,1207,9,'Olivier Giroud','FD','1986-09-30 00:00:00',29,'Arsenal\r'),(160160,1207,7,'Antoine Griezmann','FD','1991-03-21 00:00:00',25,'Atletico\r'),(160161,1207,11,'Anthony Martial','FD','1995-12-05 00:00:00',20,'Man. United\r'),(160162,1208,12,'Bernd Leno','GK','1992-03-04 00:00:00',24,'Leverkusen\r'),(160163,1208,1,'Manuel Neuer','GK','1986-03-27 00:00:00',30,'Bayern\r'),(160164,1208,22,'Marc-Andre ter Stegen','GK','1992-04-30 00:00:00',24,'Barcelona\r'),(160165,1208,17,'Jerome Boateng','DF','1988-09-03 00:00:00',27,'Bayern\r'),(160166,1208,3,'Jonas Hector','DF','1990-05-27 00:00:00',26,'Koln\r'),(160167,1208,4,'Benedikt Howedes','DF','1988-02-29 00:00:00',28,'Schalke\r'),(160168,1208,5,'Mats Hummels','DF','1988-12-16 00:00:00',27,'Dortmund\r'),(160169,1208,21,'Joshua Kimmich','DF','1995-02-08 00:00:00',21,'Bayern\r'),(160170,1208,2,'Shkodran Mustafi','DF','1992-04-17 00:00:00',24,'Valencia\r'),(160171,1208,16,'Jonathan Tah','DF','1996-02-11 00:00:00',20,'Leverkusen\r'),(160172,1208,14,'Emre Can','MF','1994-01-12 00:00:00',22,'Liverpool\r'),(160173,1208,11,'Julian Draxler','MF','1993-09-20 00:00:00',22,'Wolfsburg\r'),(160174,1208,19,'Mario Gotze','MF','1992-06-03 00:00:00',24,'Bayern\r'),(160175,1208,6,'Sami Khedira','MF','1987-04-04 00:00:00',29,'Juventus\r'),(160176,1208,18,'Toni Kroos','MF','1990-01-04 00:00:00',26,'Real Madrid\r'),(160177,1208,8,'Mesut ozil','MF','1988-10-15 00:00:00',27,'Arsenal\r'),(160178,1208,20,'Leroy Sane','MF','1996-01-11 00:00:00',20,'Schalke\r'),(160179,1208,9,'Andre Schurrle','MF','1990-11-06 00:00:00',25,'Wolfsburg\r'),(160180,1208,7,'Bastian Schweinsteiger','MF','1984-08-01 00:00:00',31,'Man. United\r'),(160181,1208,15,'Julian Weigl','MF','1995-09-08 00:00:00',20,'Dortmund\r'),(160182,1208,23,'Mario Gomez','FD','1985-07-10 00:00:00',30,'Besiktas\r'),(160183,1208,13,'Thomas Muller','FD','1989-09-13 00:00:00',26,'Bayern\r'),(160184,1208,10,'Lukas Podolski','FD','1985-06-04 00:00:00',31,'Galatasaray\r'),(160185,1209,12,'Denes Dibusz','GK','1990-11-16 00:00:00',25,'Ferencvaros\r'),(160186,1209,22,'Peter Gulacsi','GK','1990-05-06 00:00:00',26,'Leipzig\r'),(160187,1209,1,'Gabor Kiraly','GK','1976-04-01 00:00:00',40,'Haladas\r'),(160188,1209,21,'Barnabas Bese','DF','1994-05-06 00:00:00',22,'MTK\r'),(160189,1209,5,'Attila Fiola','DF','1990-02-17 00:00:00',26,'Puskas Akademia\r'),(160190,1209,20,'Richard Guzmics','DF','1987-04-16 00:00:00',29,'Wisla\r'),(160191,1209,23,'Roland Juhasz','DF','1983-07-01 00:00:00',32,'Videoton\r'),(160192,1209,4,'Tamas Kadar','DF','1990-03-14 00:00:00',26,'Lech\r'),(160193,1209,3,'Mihaly Korhut','DF','1988-12-01 00:00:00',27,'Debrecen\r'),(160194,1209,2,'Adam Lang','DF','1993-01-17 00:00:00',23,'Videoton\r'),(160195,1209,16,'adam Pinter','DF','1988-06-12 00:00:00',28,'Ferencvaros\r'),(160196,1209,6,'Akos Elek','MF','1988-07-21 00:00:00',27,'Diosgyor\r'),(160197,1209,15,'Laszlo Kleinheisler','MF','1994-04-08 00:00:00',22,'Bremen\r'),(160198,1209,14,'Gergo Lovrencsics','MF','1988-09-01 00:00:00',27,'Lech\r'),(160199,1209,8,'Adam Nagy','MF','1995-06-17 00:00:00',21,'Ferencvaros\r'),(160200,1209,18,'Zoltan Stieber','MF','1988-10-16 00:00:00',27,'Nurnberg\r'),(160201,1209,13,'Daniel Bode','FD','1986-10-24 00:00:00',29,'Ferencvaros\r'),(160202,1209,7,'Balazs Dzsudzsak','FD','1986-12-23 00:00:00',29,'Bursaspor\r'),(160203,1209,10,'Zoltan Gera','FD','1979-04-22 00:00:00',37,'Ferencvaros\r'),(160204,1209,11,'Krisztian Nemeth','FD','1989-01-05 00:00:00',27,'Al-Gharafa\r'),(160205,1209,17,'Nemanja Nikolic','FD','1987-12-31 00:00:00',28,'Legia\r'),(160206,1209,19,'Tamas Priskin','FD','1986-09-27 00:00:00',29,'Slovan Bratislava\r'),(160207,1209,9,'Adam Szalai','FD','1987-12-09 00:00:00',28,'Hannover\r'),(160208,1210,1,'Hannes Halldorsson','GK','1984-04-27 00:00:00',32,'Bodo/Glimt\r'),(160209,1210,13,'Ingvar Jonsson','GK','1989-10-18 00:00:00',26,'Sandefjord\r'),(160210,1210,12,'Ogmundur Kristinsson','GK','1989-06-19 00:00:00',26,'Hammarby\r'),(160211,1210,18,'Elmar Bjarnason','DF','1987-03-04 00:00:00',29,'AGF\r'),(160212,1210,3,'Haukur Heidar Hauksson','DF','1991-09-01 00:00:00',24,'AIK\r'),(160213,1210,4,'Hjortur Hermannsson','DF','1995-02-08 00:00:00',21,'Goteborg\r'),(160214,1210,5,'Sverrir Ingason','DF','1993-08-05 00:00:00',22,'Lokeren\r'),(160215,1210,19,'Hordur Magnusson','DF','1993-02-11 00:00:00',23,'Cesena\r'),(160216,1210,2,'Birkir Saevarsson','DF','1984-11-11 00:00:00',31,'Hammarby\r'),(160217,1210,6,'Ragnar Sigurdsson','DF','1986-06-19 00:00:00',29,'Krasnodar\r'),(160218,1210,23,'Ari Skulason','DF','1987-05-14 00:00:00',29,'OB\r'),(160219,1210,21,'Arnor Ingvi Traustason','DF','1993-04-30 00:00:00',23,'Norrkoping\r'),(160220,1210,14,'Kari Arnason','MF','1982-10-13 00:00:00',33,'Malmo\r'),(160221,1210,8,'Birkir Bjarnason','MF','1988-05-27 00:00:00',28,'Basel\r'),(160222,1210,17,'Aron Gunnarsson','MF','1989-04-22 00:00:00',27,'Cardiff\r'),(160223,1210,20,'Emil Hallfredsson','MF','1984-06-29 00:00:00',31,'Udinese\r'),(160224,1210,10,'Gylfi Sigurdsson','MF','1989-09-08 00:00:00',26,'Swansea\r'),(160225,1210,16,'Runar Mar Sigurjonsson','MF','1990-06-18 00:00:00',26,'Sundsvall\r'),(160226,1210,15,'Jon Dadi Bodvarsson','FD','1992-05-25 00:00:00',24,'Kaiserslautern\r'),(160227,1210,11,'Alfred Finnbogason','FD','1989-02-01 00:00:00',27,'Augsburg\r'),(160228,1210,22,'Eidur Gudjohnsen','FD','1978-09-15 00:00:00',37,'Molde\r'),(160229,1210,7,'Johann Gudmundsson','FD','1990-10-27 00:00:00',25,'Charlton\r'),(160230,1210,9,'Kolbeinn Sigthorsson','FD','1990-03-14 00:00:00',26,'Nantes\r'),(160231,1211,1,'Gianluigi Buffon','GK','1978-01-28 00:00:00',38,'Juventus\r'),(160232,1211,13,'Federico Marchetti','GK','1983-02-07 00:00:00',33,'Lazio\r'),(160233,1211,12,'Salvatore Sirigu','GK','1987-01-12 00:00:00',29,'Paris\r'),(160234,1211,15,'Andrea Barzagli','DF','1981-05-08 00:00:00',35,'Juventus\r'),(160235,1211,19,'Leonardo Bonucci','DF','1987-05-01 00:00:00',29,'Juventus\r'),(160236,1211,3,'Giorgio Chiellini','DF','1984-08-14 00:00:00',31,'Juventus\r'),(160237,1211,4,'Matteo Darmian','DF','1989-12-02 00:00:00',26,'Man. United\r'),(160238,1211,2,'Mattia De Sciglio','DF','1992-10-20 00:00:00',23,'Milan\r'),(160239,1211,5,'Angelo Ogbonna','DF','1988-05-23 00:00:00',28,'West Ham\r'),(160240,1211,21,'Federico Bernardeschi','MF','1994-02-16 00:00:00',22,'Fiorentina\r'),(160241,1211,6,'Antonio Candreva','MF','1987-02-28 00:00:00',29,'Lazio\r'),(160242,1211,16,'Daniele De Rossi','MF','1983-07-24 00:00:00',32,'Roma\r'),(160243,1211,8,'Alessandro Florenzi','MF','1991-03-11 00:00:00',25,'Roma\r'),(160244,1211,23,'Emanuele Giaccherini','MF','1985-05-05 00:00:00',31,'Bologna\r'),(160245,1211,10,'Thiago Motta','MF','1982-08-28 00:00:00',33,'Paris\r'),(160246,1211,18,'Marco Parolo','MF','1985-01-25 00:00:00',31,'Lazio\r'),(160247,1211,14,'Stefano Sturaro','MF','1993-03-09 00:00:00',23,'Juventus\r'),(160248,1211,17,'Eder','FD','1986-11-15 00:00:00',29,'Internazionale\r'),(160249,1211,22,'Stephan El Shaarawy','FD','1992-10-27 00:00:00',23,'Roma\r'),(160250,1211,11,'Ciro Immobile','FD','1990-02-20 00:00:00',26,'Torino\r'),(160251,1211,20,'Lorenzo Insigne','FD','1991-06-04 00:00:00',25,'Napoli\r'),(160252,1211,9,'Graziano Pelle','FD','1985-07-15 00:00:00',30,'Southampton\r'),(160253,1211,7,'Simone Zaza','FD','1991-06-25 00:00:00',24,'Juventus\r'),(160254,1212,12,'Roy Carroll','GK','1977-09-30 00:00:00',38,'Notts County\r'),(160255,1212,23,'Alan Mannus','GK','1982-05-19 00:00:00',34,'St Johnstone\r'),(160256,1212,1,'Michael McGovern','GK','1984-07-12 00:00:00',31,'Hamilton\r'),(160257,1212,6,'Chris Baird','DF','1982-02-25 00:00:00',34,'Fulham\r'),(160258,1212,20,'Craig Cathcart','DF','1989-02-06 00:00:00',27,'Watford\r'),(160259,1212,5,'Jonny Evans','DF','1988-01-03 00:00:00',28,'West Brom\r'),(160260,1212,22,'Lee Hodson','DF','1991-10-02 00:00:00',24,'MK Dons\r'),(160261,1212,18,'Aaron Hughes','DF','1979-11-08 00:00:00',36,'Melbourne City\r'),(160262,1212,4,'Gareth McAuley','DF','1979-12-05 00:00:00',36,'West Brom\r'),(160263,1212,15,'Luke McCullough','DF','1994-02-15 00:00:00',22,'Doncaster\r'),(160264,1212,2,'Conor McLaughlin','DF','1991-07-26 00:00:00',24,'Fleetwood\r'),(160265,1212,17,'Paddy McNair','DF','1995-04-27 00:00:00',21,'Man. United\r'),(160266,1212,14,'Stuart Dallas','MF','1991-04-19 00:00:00',25,'Leeds\r'),(160267,1212,8,'Steven Davis','MF','1985-01-01 00:00:00',31,'Southampton\r'),(160268,1212,13,'Corry Evans','MF','1990-07-30 00:00:00',25,'Blackburn\r'),(160269,1212,3,'Shane Ferguson','MF','1991-07-12 00:00:00',24,'Millwall\r'),(160270,1212,21,'Josh Magennis','MF','1990-08-15 00:00:00',25,'Kilmarnock\r'),(160271,1212,16,'Oliver Norwood','MF','1991-04-12 00:00:00',25,'Reading\r'),(160272,1212,19,'Jamie Ward','MF','1986-05-12 00:00:00',30,'Nottm Forest\r'),(160273,1212,9,'Will Grigg','FD','1991-07-03 00:00:00',24,'Wigan\r'),(160274,1212,10,'Kyle Lafferty','FD','1987-09-16 00:00:00',28,'Birmingham\r'),(160275,1212,7,'Niall McGinn','FD','1987-07-20 00:00:00',28,'Aberdeen\r'),(160276,1212,11,'Conor Washington','FD','1992-05-18 00:00:00',24,'QPR\r'),(160277,1213,12,'Artur Boruc','GK','1980-02-20 00:00:00',36,'Bournemouth\r'),(160278,1213,22,'Lukasz Fabianski','GK','1985-04-18 00:00:00',31,'Swansea\r'),(160279,1213,1,'Wojciech Szczesny','GK','1990-04-18 00:00:00',26,'Roma\r'),(160280,1213,4,'Thiago Cionek','DF','1986-04-21 00:00:00',30,'Palermo\r'),(160281,1213,15,'Kamil Glik','DF','1988-02-03 00:00:00',28,'Torino\r'),(160282,1213,3,'Artur Jedrzejczyk','DF','1987-11-04 00:00:00',28,'Legia\r'),(160283,1213,2,'Michal Pazdan','DF','1987-09-21 00:00:00',28,'Legia\r'),(160284,1213,20,'Lukasz Piszczek','DF','1985-06-03 00:00:00',31,'Dortmund\r'),(160285,1213,18,'Bartosz Salamon','DF','1991-05-01 00:00:00',25,'Cagliari\r'),(160286,1213,14,'Jakub Wawrzyniak','DF','1983-07-07 00:00:00',32,'Lechia\r'),(160287,1213,16,'Jakub Blaszczykowski','MF','1985-12-14 00:00:00',30,'Fiorentina\r'),(160288,1213,11,'Kamil Grosicki','MF','1988-06-08 00:00:00',28,'Rennes\r'),(160289,1213,6,'Tomasz Jodlowiec','MF','1985-09-08 00:00:00',30,'Legia\r'),(160290,1213,21,'Bartosz Kapustka','MF','1996-12-23 00:00:00',19,'\r'),(160291,1213,10,'Grzegorz Krychowiak','MF','1990-01-29 00:00:00',26,'Sevilla\r'),(160292,1213,8,'Karol Linetty','MF','1995-02-02 00:00:00',21,'Lech\r'),(160293,1213,5,'Krzysztof Maczynski','MF','1987-05-23 00:00:00',29,'Wisla\r'),(160294,1213,17,'Slawomir Peszko','MF','1985-02-19 00:00:00',31,'Lechia\r'),(160295,1213,23,'Filip Starzynski','MF','1991-05-27 00:00:00',25,'Zaglebie\r'),(160296,1213,19,'Piotr Zielinski','MF','1994-05-20 00:00:00',22,'Empoli\r'),(160297,1213,9,'Robert Lewandowski','FD','1988-08-21 00:00:00',27,'Bayern\r'),(160298,1213,7,'Arkadiusz Milik','FD','1994-02-28 00:00:00',22,'Ajax\r'),(160299,1213,13,'Mariusz Stepinski','FD','1995-05-12 00:00:00',21,'Ruch\r'),(160300,1214,22,'Eduardo','GK','1982-09-19 00:00:00',33,'Dinamo Zagreb\r'),(160301,1214,12,'Anthony Lopes','GK','1990-10-01 00:00:00',25,'Lyon\r'),(160302,1214,1,'Rui Patricio','GK','1988-02-15 00:00:00',28,'Sporting CP\r'),(160303,1214,2,'Bruno Alves','DF','1981-11-27 00:00:00',34,'Fenerbahce\r'),(160304,1214,21,'Cedric','DF','1991-08-31 00:00:00',24,'Southampton\r'),(160305,1214,19,'Eliseu','DF','1983-10-01 00:00:00',32,'Benfica\r'),(160306,1214,4,'Jose Fonte','DF','1983-12-22 00:00:00',32,'Southampton\r'),(160307,1214,3,'Pepe','DF','1983-02-26 00:00:00',33,'Real Madrid\r'),(160308,1214,5,'Raphael Guerreiro','DF','1993-12-22 00:00:00',22,'Lorient\r'),(160309,1214,6,'Ricardo Carvalho','DF','1978-05-18 00:00:00',38,'Monaco\r'),(160310,1214,23,'Adrien Silva','MF','1989-03-15 00:00:00',27,'Sporting CP\r'),(160311,1214,15,'Andre Gomes','MF','1993-07-30 00:00:00',22,'Valencia\r'),(160312,1214,13,'Danilo','MF','1991-09-09 00:00:00',24,'Porto\r'),(160313,1214,10,'Joao Mario','MF','1993-01-19 00:00:00',23,'Sporting CP\r'),(160314,1214,8,'Joao Moutinho','MF','1986-09-08 00:00:00',29,'Monaco\r'),(160315,1214,18,'Rafa Silva','MF','1993-05-17 00:00:00',23,'Braga\r'),(160316,1214,16,'Renato Sanches','MF','1997-08-18 00:00:00',18,'Benfica\r'),(160317,1214,11,'Vieirinha','MF','1986-01-24 00:00:00',30,'Wolfsburg\r'),(160318,1214,14,'William Carvalho','MF','1992-04-07 00:00:00',24,'Sporting CP\r'),(160319,1214,9,'Eder','FD','1987-12-22 00:00:00',28,'LOSC\r'),(160320,1214,17,'Nani','FD','1986-11-17 00:00:00',29,'Fenerbahce\r'),(160321,1214,20,'Ricardo Quaresma','FD','1983-09-26 00:00:00',32,'Besiktas\r'),(160322,1214,7,'Cristiano Ronaldo','FD','1985-02-05 00:00:00',31,'Real Madrid\r'),(160323,1215,16,'Shay Given','GK','1976-04-20 00:00:00',40,'Stoke\r'),(160324,1215,23,'Darren Randolph','GK','1987-05-12 00:00:00',29,'West Ham\r'),(160325,1215,1,'Keiren Westwood','GK','1984-10-23 00:00:00',31,'Sheff. Wednesday\r'),(160326,1215,15,'Cyrus Christie','DF','1992-09-30 00:00:00',23,'Derby\r'),(160327,1215,3,'Ciaran Clark','DF','1989-09-26 00:00:00',26,'Aston Villa\r'),(160328,1215,2,'Seamus Coleman','DF','1988-10-11 00:00:00',27,'Everton\r'),(160329,1215,12,'Shane Duffy','DF','1992-01-01 00:00:00',24,'Blackburn\r'),(160330,1215,5,'Richard Keogh','DF','1986-08-11 00:00:00',29,'Derby\r'),(160331,1215,4,'John OShea','DF','1981-04-30 00:00:00',35,'Sunderland\r'),(160332,1215,17,'Stephen Ward','DF','1985-08-20 00:00:00',30,'Burnley\r'),(160333,1215,19,'Robbie Brady','MF','1992-01-14 00:00:00',24,'Norwich\r'),(160334,1215,13,'Jeff Hendrick','MF','1992-01-31 00:00:00',24,'Derby\r'),(160335,1215,20,'Wes Hoolahan','MF','1982-05-20 00:00:00',34,'Norwich\r'),(160336,1215,8,'James McCarthy','MF','1990-11-12 00:00:00',25,'Everton\r'),(160337,1215,11,'James McClean','MF','1989-04-22 00:00:00',27,'West Brom\r'),(160338,1215,7,'Aiden McGeady','MF','1986-04-04 00:00:00',30,'Sheff. Wednesday\r'),(160339,1215,18,'David Meyler','MF','1989-05-29 00:00:00',27,'Hull\r'),(160340,1215,22,'Stephen Quinn','MF','1986-04-01 00:00:00',30,'Reading\r'),(160341,1215,6,'Glenn Whelan','MF','1984-01-13 00:00:00',32,'Stoke\r'),(160342,1215,10,'Robbie Keane','FD','1980-07-08 00:00:00',35,'LA Galaxy\r'),(160343,1215,9,'Shane Long','FD','1987-01-22 00:00:00',29,'Southampton\r'),(160344,1215,21,'Daryl Murphy','FD','1983-03-15 00:00:00',33,'Ipswich\r'),(160345,1215,14,'Jon Walters','FD','1983-09-20 00:00:00',32,'Stoke\r'),(160346,1216,23,'Silviu Lung','GK','1989-06-04 00:00:00',27,'Astra\r'),(160347,1216,1,'Costel Pantilimon','GK','1987-02-01 00:00:00',29,'Watford\r'),(160348,1216,12,'Ciprian Tatarusanu','GK','1986-02-09 00:00:00',30,'Fiorentina\r'),(160349,1216,6,'Vlad Chiriches','DF','1989-11-14 00:00:00',26,'Napoli\r'),(160350,1216,16,'Steliano Filip','DF','1994-05-15 00:00:00',22,'Dinamo Bucuresti\r'),(160351,1216,15,'Valerica Gaman','DF','1989-02-25 00:00:00',27,'Astra\r'),(160352,1216,21,'Dragos Grigore','DF','1986-09-07 00:00:00',29,'Al-Sailiya\r'),(160353,1216,2,'Alexandru Matel','DF','1989-10-17 00:00:00',26,'Dinamo Zagreb\r'),(160354,1216,4,'Cosmin Moti','DF','1984-12-03 00:00:00',31,'Ludogorets\r'),(160355,1216,3,'Razvan Rat','DF','1981-05-26 00:00:00',35,'Rayo Vallecano\r'),(160356,1216,22,'Cristian Sapunaru','DF','1984-04-05 00:00:00',32,'Pandurii\r'),(160357,1216,7,'Alexandru Chipciu','MF','1989-05-18 00:00:00',27,'Steaua\r'),(160358,1216,5,'Ovidiu Hoban','MF','1982-12-27 00:00:00',33,'H. Beer-Sheva\r'),(160359,1216,8,'Mihai Pintilii','MF','1984-11-09 00:00:00',31,'Steaua\r'),(160360,1216,20,'Adrian Popa','MF','1988-07-24 00:00:00',27,'Steaua\r'),(160361,1216,18,'Andrei Prepelita','MF','1985-12-08 00:00:00',30,'Ludogorets\r'),(160362,1216,17,'Lucian Sanmartean','MF','1980-03-13 00:00:00',36,'Al-Ittihad\r'),(160363,1216,10,'Nicolae Stanciu','MF','1993-05-07 00:00:00',23,'Steaua\r'),(160364,1216,11,'Gabriel Torje','MF','1989-11-22 00:00:00',26,'Osmanlispor\r'),(160365,1216,9,'Denis Alibec','FD','1991-01-05 00:00:00',25,'Astra\r'),(160366,1216,14,'Florin Andone','FD','1993-04-11 00:00:00',23,'Cordoba\r'),(160367,1216,13,'Claudiu Keeru','FD','1986-12-02 00:00:00',29,'Ludogorets\r'),(160368,1216,19,'Bogdan Stancu','FD','1987-06-28 00:00:00',28,'Genclerbirligi\r'),(160369,1217,1,'Igor Akinfeev','GK','1986-04-08 00:00:00',30,'CSKA Moskva\r'),(160370,1217,16,'Guilherme','GK','1985-12-12 00:00:00',30,'Lokomotiv Moskva\r'),(160371,1217,12,'Yuri Lodygin','GK','1990-05-26 00:00:00',26,'Zenit\r'),(160372,1217,6,'Aleksei Berezutski','DF','1982-06-20 00:00:00',33,'CSKA Moskva\r'),(160373,1217,14,'Vasili Berezutski','DF','1982-06-20 00:00:00',33,'CSKA Moskva\r'),(160374,1217,4,'Sergei Ignashevich','DF','1979-07-14 00:00:00',36,'CSKA Moskva\r'),(160375,1217,23,'Dmitri Kombarov','DF','1987-01-22 00:00:00',29,'Spartak Moskva\r'),(160376,1217,5,'Roman Neustadter','DF','1988-02-18 00:00:00',28,'Schalke\r'),(160377,1217,21,'Georgi Schennikov','DF','1991-04-27 00:00:00',25,'CSKA Moskva\r'),(160378,1217,2,'Roman Shishkin','DF','1987-01-27 00:00:00',29,'Lokomotiv Moskva\r'),(160379,1217,3,'Igor Smolnikov','DF','1988-08-08 00:00:00',27,'Zenit\r'),(160380,1217,8,'Denis Glushakov','MF','1987-01-27 00:00:00',29,'Spartak Moskva\r'),(160381,1217,13,'Aleksandr Golovin','MF','1996-05-30 00:00:00',20,'CSKA Moskva\r'),(160382,1217,18,'Oleg Ivanov','MF','1986-08-04 00:00:00',29,'Terek\r'),(160383,1217,11,'Pavel Mamaev','MF','1988-09-17 00:00:00',27,'Krasnodar\r'),(160384,1217,19,'Aleksandr Samedov','MF','1984-07-19 00:00:00',31,'Lokomotiv Moskva\r'),(160385,1217,17,'Oleg Shatov','MF','1990-07-29 00:00:00',25,'Zenit\r'),(160386,1217,15,'Roman Shirokov','MF','1981-07-06 00:00:00',34,'CSKA Moskva\r'),(160387,1217,20,'Dmitri Torbinski','MF','1984-04-28 00:00:00',32,'Krasnodar\r'),(160388,1217,7,'Artur Yusupov','MF','1989-09-01 00:00:00',26,'Zenit\r'),(160389,1217,22,'Artem Dzyuba','FD','1988-08-22 00:00:00',27,'Zenit\r'),(160390,1217,9,'Aleksandr Kokorin','FD','1991-03-19 00:00:00',25,'Zenit\r'),(160391,1217,10,'Fedor Smolov','FD','1990-02-09 00:00:00',26,'Krasnodar\r'),(160392,1218,23,'MatusKozacik','GK','1983-12-27 00:00:00',32,'Plzen\r'),(160393,1218,1,'Jan Mucha','GK','1982-12-05 00:00:00',33,'Slovan Bratislava\r'),(160394,1218,12,'Jan Novota','GK','1983-11-29 00:00:00',32,'Rapid Wien\r'),(160395,1218,4,'Jan Durica','DF','1981-12-10 00:00:00',34,'Lokomotiv Moskva\r'),(160396,1218,5,'Norbert Gyomber','DF','1992-07-03 00:00:00',23,'Roma\r'),(160397,1218,15,'TomasHubocan','DF','1985-09-17 00:00:00',30,'Dinamo Moskva\r'),(160398,1218,2,'Peter Pekarik','DF','1986-10-30 00:00:00',29,'Hertha\r'),(160399,1218,16,'Kornel Salata','DF','1985-01-24 00:00:00',31,'Slovan Bratislava\r'),(160400,1218,14,'Milan Skriniar','DF','1995-02-11 00:00:00',21,'Sampdoria\r'),(160401,1218,3,'Martin Skrtel','DF','1984-12-15 00:00:00',31,'Liverpool\r'),(160402,1218,18,'Dusan Svento','DF','1985-08-01 00:00:00',30,'Koln\r'),(160403,1218,8,'Ondrej Duda','MF','1994-12-05 00:00:00',21,'Legia\r'),(160404,1218,6,'Jan Gregus','MF','1991-01-29 00:00:00',25,'Jablonec\r'),(160405,1218,17,'Marek Hamsik','MF','1987-07-27 00:00:00',28,'Napoli\r'),(160406,1218,13,'Patrik HroSovsky','MF','1992-04-22 00:00:00',24,'Plzen\r'),(160407,1218,19,'Juraj Kucka','MF','1987-02-26 00:00:00',29,'Milan\r'),(160408,1218,20,'Robert Mak','MF','1991-03-08 00:00:00',25,'PAOK\r'),(160409,1218,22,'Viktor Pecovsky','MF','1983-05-24 00:00:00',33,'zilina\r'),(160410,1218,10,'Miroslav Stoch','MF','1989-10-19 00:00:00',26,'Bursaspor\r'),(160411,1218,7,'Vladimir Weiss','MF','1989-11-30 00:00:00',26,'Al-Gharafa\r'),(160412,1218,21,'Michal Duris','FD','1988-06-01 00:00:00',28,'Plzen\r'),(160413,1218,11,'Adam Nemec','FD','1985-09-02 00:00:00',30,'Willem II\r'),(160414,1218,9,'Stanislav Sestak','FD','1982-12-16 00:00:00',33,'Ferencvaros\r'),(160415,1219,1,'Lker Casillas','GK','1981-05-20 00:00:00',35,'Porto\r'),(160416,1219,13,'David de Gea','GK','1990-11-07 00:00:00',25,'Man. United\r'),(160417,1219,23,'Sergio Rico','GK','1993-09-01 00:00:00',22,'Sevilla\r'),(160418,1219,2,'Cesar Azpilicueta','DF','1989-08-28 00:00:00',26,'Chelsea\r'),(160419,1219,4,'Marc Bartra','DF','1991-01-15 00:00:00',25,'Barcelona\r'),(160420,1219,12,'Hector Bellerin','DF','1995-03-19 00:00:00',21,'Arsenal\r'),(160421,1219,18,'Jordi Alba','DF','1989-03-21 00:00:00',27,'Barcelona\r'),(160422,1219,16,'Juanfran','DF','1985-01-09 00:00:00',31,'Atletico\r'),(160423,1219,3,'Gerard Pique','DF','1987-02-02 00:00:00',29,'Barcelona\r'),(160424,1219,15,'Sergio Ramos','DF','1986-03-30 00:00:00',30,'Real Madrid\r'),(160425,1219,17,'Mikel San Jose','DF','1989-05-30 00:00:00',27,'Athletic\r'),(160426,1219,19,'Bruno Soriano','MF','1984-06-12 00:00:00',32,'Villarreal\r'),(160427,1219,5,'Sergio Busquets','MF','1988-07-16 00:00:00',27,'Barcelona\r'),(160428,1219,10,'Cesc Fabregas','MF','1987-05-04 00:00:00',29,'Chelsea\r'),(160429,1219,6,'Andres Iniesta','MF','1984-05-11 00:00:00',32,'Barcelona\r'),(160430,1219,8,'Koke','MF','1992-01-08 00:00:00',24,'Atletico\r'),(160431,1219,21,'David Silva','MF','1986-01-08 00:00:00',30,'Man. City\r'),(160432,1219,14,'Thiago Alcantara','MF','1991-04-11 00:00:00',25,'Bayern\r'),(160433,1219,20,'Aritz Aduriz','FD','1981-02-11 00:00:00',35,'Athletic\r'),(160434,1219,9,'Lucas Vazquez','FD','1991-07-01 00:00:00',24,'Real Madrid\r'),(160435,1219,7,'Alvaro Morata','FD','1992-10-23 00:00:00',23,'Juventus\r'),(160436,1219,22,'Nolito','FD','1986-10-15 00:00:00',29,'Celta\r'),(160437,1219,11,'Pedro Rodriguez','FD','1987-07-28 00:00:00',28,'Chelsea\r'),(160438,1220,23,'Patrik Carlgren','GK','1992-01-08 00:00:00',24,'AIK\r'),(160439,1220,1,'Andreas Isaksson','GK','1981-10-03 00:00:00',34,'Kasimpasa\r'),(160440,1220,12,'Robin Olsen','GK','1990-01-08 00:00:00',26,'Kobenhavn\r'),(160441,1220,17,'Ludwig Augustinsson','DF','1994-04-21 00:00:00',22,'Kobenhavn\r'),(160442,1220,4,'Andreas Granqvist','DF','1985-04-16 00:00:00',31,'Krasnodar\r'),(160443,1220,13,'Pontus Jansson','DF','1991-02-13 00:00:00',25,'Torino\r'),(160444,1220,3,'Erik Johansson','DF','1988-12-30 00:00:00',27,'Kobenhavn\r'),(160445,1220,14,'Victor Lindelof','DF','1994-07-17 00:00:00',21,'Benfica\r'),(160446,1220,2,'Mikael Lustig','DF','1986-12-13 00:00:00',29,'Celtic\r'),(160447,1220,5,'Martin Olsson','DF','1988-05-17 00:00:00',28,'Norwich\r'),(160448,1220,21,'Jimmy Durmaz','MF','1989-03-22 00:00:00',27,'Olympiacos\r'),(160449,1220,8,'Albin Ekdal','MF','1989-07-28 00:00:00',26,'Hamburg\r'),(160450,1220,22,'Erkan Zengin','MF','1985-08-05 00:00:00',30,'Trabzonspor\r'),(160451,1220,6,'Emil Forsberg','MF','1991-10-23 00:00:00',24,'Leipzig\r'),(160452,1220,15,'Oscar Hiljemark','MF','1992-06-28 00:00:00',23,'Palermo\r'),(160453,1220,9,'Kim Kallstrom','MF','1982-08-24 00:00:00',33,'Grasshoppers\r'),(160454,1220,7,'Sebastian Larsson','MF','1985-06-06 00:00:00',31,'Sunderland\r'),(160455,1220,18,'Oscar Lewicki','MF','1992-07-14 00:00:00',23,'Malmo\r'),(160456,1220,16,'Pontus Wernbloom','MF','1986-06-25 00:00:00',29,'CSKA Moskva\r'),(160457,1220,11,'Marcus Berg','FD','1986-08-17 00:00:00',29,'Panathinaikos\r'),(160458,1220,20,'John Guidetti','FD','1992-04-15 00:00:00',24,'Celta\r'),(160459,1220,10,'Zlatan Ibrahimovic','FD','1981-10-03 00:00:00',34,'Paris\r'),(160460,1220,19,'Emir Kujovic','FD','1988-06-22 00:00:00',27,'Norrkoping\r'),(160461,1221,21,'Roman Burki','GK','1990-11-14 00:00:00',25,'Dortmund\r'),(160462,1221,12,'Marwin Hitz','GK','1987-09-18 00:00:00',28,'Augsburg\r'),(160463,1221,1,'Yann Sommer','GK','1988-12-17 00:00:00',27,'Monchengladbach\r'),(160464,1221,20,'Johan Djourou','DF','1987-01-18 00:00:00',29,'Hamburg\r'),(160465,1221,4,'Nico Elvedi','DF','1996-09-30 00:00:00',19,'Monchengladbach\r'),(160466,1221,6,'Michael Lang','DF','1991-02-08 00:00:00',25,'Basel\r'),(160467,1221,2,'Stephan Lichtsteiner','DF','1984-01-16 00:00:00',32,'Juventus\r'),(160468,1221,3,'Francois Moubandje','DF','1990-06-21 00:00:00',25,'Toulouse\r'),(160469,1221,13,'Ricardo Rodriguez','DF','1992-08-25 00:00:00',23,'Wolfsburg\r'),(160470,1221,22,'Fabian Schar','DF','1991-12-20 00:00:00',24,'Hoffenheim\r'),(160471,1221,5,'Steve von Bergen','DF','1983-06-10 00:00:00',33,'Young Boys\r'),(160472,1221,11,'Valon Behrami','MF','1985-04-19 00:00:00',31,'Watford\r'),(160473,1221,15,'Blerim Dzemaili','MF','1986-04-12 00:00:00',30,'Genoa\r'),(160474,1221,16,'Gelson Fernandes','MF','1986-09-02 00:00:00',29,'Rennes\r'),(160475,1221,8,'Fabian Frei','MF','1989-01-08 00:00:00',27,'Mainz\r'),(160476,1221,23,'Xherdan Shaqiri','MF','1991-10-10 00:00:00',24,'Stoke\r'),(160477,1221,10,'Granit Xhaka','MF','1992-09-27 00:00:00',23,'Monchengladbach\r'),(160478,1221,14,'Denis Zakaria','MF','1996-11-20 00:00:00',19,'Young Boys\r'),(160479,1221,19,'Eren Derdiyok','FD','1988-06-12 00:00:00',28,'Kasimpasa\r'),(160480,1221,7,'Breel Embolo','FD','1997-02-14 00:00:00',19,'Basel\r'),(160481,1221,18,'Admir Mehmedi','FD','1991-03-16 00:00:00',25,'Leverkusen\r'),(160482,1221,9,'Haris Seferovic','FD','1992-02-22 00:00:00',24,'Frankfurt\r'),(160483,1221,17,'Shani Tarashaj','FD','1995-02-07 00:00:00',21,'Grasshoppers\r'),(160484,1222,23,'Harun Tekin','GK','1989-06-17 00:00:00',27,'Bursaspor\r'),(160485,1222,12,'Onur Kivrak','GK','1988-01-01 00:00:00',28,'Trabzonspor\r'),(160486,1222,1,'Volkan Babacan','GK','1988-08-11 00:00:00',27,'Istanbul Basaksehir\r'),(160487,1222,4,'Ahmet Calik','DF','1994-02-26 00:00:00',22,'Genclerbirligi\r'),(160488,1222,18,'Caner Erkin','DF','1988-10-04 00:00:00',27,'Fenerbahce\r'),(160489,1222,7,'Gokhan Gonul','DF','1985-01-04 00:00:00',31,'Fenerbahce\r'),(160490,1222,3,'Hakan Balta','DF','1983-03-23 00:00:00',33,'Galatasaray\r'),(160491,1222,13,'Ismail Koybasi','DF','1989-07-10 00:00:00',26,'Besiktas\r'),(160492,1222,2,'Semih Kaya','DF','1991-02-24 00:00:00',25,'Galatasaray\r'),(160493,1222,22,'Sener Ozbayrakli','DF','1990-01-23 00:00:00',26,'Fenerbahce\r'),(160494,1222,10,'Arda Turan','MF','1987-01-30 00:00:00',29,'Barcelona\r'),(160495,1222,6,'Hakan Calhanoglu','MF','1994-02-08 00:00:00',22,'Leverkusen\r'),(160496,1222,15,'Mehmet Topal','MF','1986-03-03 00:00:00',30,'Fenerbahce\r'),(160497,1222,5,'Nuri Sahin','MF','1988-09-05 00:00:00',27,'Dortmund\r'),(160498,1222,14,'Oguzhan Ozyakup','MF','1992-09-23 00:00:00',23,'Besiktas\r'),(160499,1222,11,'Olcay Sahan','MF','1987-05-26 00:00:00',29,'Besiktas\r'),(160500,1222,16,'Ozan Tufan','MF','1995-03-23 00:00:00',21,'Fenerbahce\r'),(160501,1222,8,'Selcuk Inan','MF','1985-02-10 00:00:00',31,'Galatasaray\r'),(160502,1222,20,'Volkan Sen','MF','1987-07-07 00:00:00',28,'Fenerbahce\r'),(160503,1222,19,'Yunus Malli','MF','1992-02-24 00:00:00',24,'Mainz\r'),(160504,1222,17,'Burak Yilmaz','FD','1985-07-15 00:00:00',30,'Beijing Guoan\r'),(160505,1222,9,'Cenk Tosun','FD','1991-06-07 00:00:00',25,'Besiktas\r'),(160506,1222,21,'Emre Mor','FD','1997-07-24 00:00:00',18,'NordsjÃ¦lland\r'),(160507,1223,1,'Denys Boyko','GK','1988-01-29 00:00:00',28,'Besiktas\r'),(160508,1223,12,'Andriy Pyatov','GK','1984-06-28 00:00:00',31,'Shakhtar Donetsk\r'),(160509,1223,23,'Mykyta Shevchenko','GK','1993-01-26 00:00:00',23,'Zorya\r'),(160510,1223,2,'Bohdan Butko','DF','1991-01-13 00:00:00',25,'Amkar\r'),(160511,1223,17,'Artem Fedetskiy','DF','1985-04-26 00:00:00',31,'Dnipro\r'),(160512,1223,3,'Yevhen Khacheridi','DF','1987-07-28 00:00:00',28,'Dynamo Kyiv\r'),(160513,1223,5,'Olexandr Kucher','DF','1982-10-22 00:00:00',33,'Shakhtar Donetsk\r'),(160514,1223,20,'Yaroslav Rakitskiy','DF','1989-08-03 00:00:00',26,'Shakhtar Donetsk\r'),(160515,1223,13,'Vyacheslav Shevchuk','DF','1979-05-13 00:00:00',37,'Shakhtar Donetsk\r'),(160516,1223,19,'Denys Garmash','MF','1990-04-19 00:00:00',26,'Dynamo Kyiv\r'),(160517,1223,22,'Olexandr Karavaev','MF','1992-06-02 00:00:00',24,'Zorya\r'),(160518,1223,10,'Yevhen Konoplyanka','MF','1989-09-29 00:00:00',26,'Sevilla\r'),(160519,1223,9,'Viktor Kovalenko','MF','1996-02-14 00:00:00',20,'Shakhtar Donetsk\r'),(160520,1223,14,'Ruslan Rotan','MF','1981-10-29 00:00:00',34,'Dnipro\r'),(160521,1223,18,'Serhiy Rybalka','MF','1990-04-01 00:00:00',26,'Dynamo Kyiv\r'),(160522,1223,6,'Taras Stepanenko','MF','1989-08-08 00:00:00',26,'Shakhtar Donetsk\r'),(160523,1223,16,'Serhiy Sydorchuk','MF','1991-05-02 00:00:00',25,'Dynamo Kyiv\r'),(160524,1223,4,'Anatoliy Tymoshchuk','MF','1979-03-30 00:00:00',37,'Kairat\r'),(160525,1223,7,'Andriy Yarmolenko','MF','1989-10-23 00:00:00',26,'Dynamo Kyiv\r'),(160526,1223,21,'Olexandr Zinchenko','MF','1996-12-15 00:00:00',19,'Ufa\r'),(160527,1223,15,'Pylyp Budkivskiy','FD','1992-03-10 00:00:00',24,'Zorya\r'),(160528,1223,11,'Yevhen Seleznyov','FD','1985-07-20 00:00:00',30,'Shakhtar Donetsk\r'),(160529,1223,8,'Roman Zozulya','FD','1989-11-17 00:00:00',26,'Dnipro\r'),(160530,1224,12,'Owain Fon Williams','GK','1987-03-17 00:00:00',29,'Inverness\r'),(160531,1224,1,'Wayne Hennessey','GK','1987-01-24 00:00:00',29,'Crystal Palace\r'),(160532,1224,21,'Danny Ward','GK','1993-06-22 00:00:00',22,'Liverpool\r'),(160533,1224,5,'James Chester','DF','1989-01-23 00:00:00',27,'West Brom\r'),(160534,1224,19,'James Collins','DF','1983-08-23 00:00:00',32,'West Ham\r'),(160535,1224,4,'Ben Davies','DF','1993-04-24 00:00:00',23,'Tottenham\r'),(160536,1224,2,'Chris Gunter','DF','1989-07-21 00:00:00',26,'Reading\r'),(160537,1224,15,'Jazz Richards','DF','1991-04-12 00:00:00',25,'Fulham\r'),(160538,1224,3,'Neil Taylor','DF','1989-02-07 00:00:00',27,'Swansea\r'),(160539,1224,6,'Ashley Williams','DF','1984-08-23 00:00:00',31,'Swansea\r'),(160540,1224,7,'Joe Allen','MF','1990-03-14 00:00:00',26,'Liverpool\r'),(160541,1224,14,'David Edwards','MF','1986-02-03 00:00:00',30,'Wolves\r'),(160542,1224,8,'Andy King','MF','1988-10-29 00:00:00',27,'Leicester\r'),(160543,1224,16,'Joe Ledley','MF','1987-01-23 00:00:00',29,'Crystal Palace\r'),(160544,1224,10,'Aaron Ramsey','MF','1990-12-26 00:00:00',25,'Arsenal\r'),(160545,1224,22,'David Vaughan','MF','1983-02-18 00:00:00',33,'Nottm Forest\r'),(160546,1224,20,'Jonathan Williams','MF','1993-10-09 00:00:00',22,'Crystal Palace\r'),(160547,1224,11,'Gareth Bale','FD','1989-07-16 00:00:00',26,'Real Madrid\r'),(160548,1224,23,'Simon Church','FD','1988-12-10 00:00:00',27,'MK Dons\r'),(160549,1224,17,'David Cotterill','FD','1987-12-04 00:00:00',28,'Birmingham\r'),(160550,1224,9,'Hal Robson-Kanu','FD','1989-05-21 00:00:00',27,'Reading\r'),(160551,1224,18,'Sam Vokes','FD','1989-10-21 00:00:00',26,'Burnley\r'),(160552,1224,13,'George Williams','FD','1995-09-07 00:00:00',20,'Fulham\r');
/*!40000 ALTER TABLE `player_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playing_position`
--

DROP TABLE IF EXISTS `playing_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playing_position` (
  `position_id` varchar(45) NOT NULL,
  `position_desc` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playing_position`
--

LOCK TABLES `playing_position` WRITE;
/*!40000 ALTER TABLE `playing_position` DISABLE KEYS */;
INSERT INTO `playing_position` VALUES ('DF','Defenders\r'),('FD','Defenders\r'),('GK','Goalkeepers\r'),('MF','Midfielders\r');
/*!40000 ALTER TABLE `playing_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referee_mast`
--

DROP TABLE IF EXISTS `referee_mast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referee_mast` (
  `referee_id` int(11) NOT NULL,
  `referee_name` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`referee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referee_mast`
--

LOCK TABLES `referee_mast` WRITE;
/*!40000 ALTER TABLE `referee_mast` DISABLE KEYS */;
INSERT INTO `referee_mast` VALUES (70001,'Damir Skomina',1225),(70002,'Martin Atkinson',1206),(70003,'Felix Brych',1208),(70004,'Cuneyt Cakir',1222),(70005,'Mark Clattenburg',1206),(70006,'Jonas Eriksson',1220),(70007,'Viktor Kassai',1209),(70008,'Bjorn Kuipers',1226),(70009,'Szymon Marciniak',1213),(70010,'Milorad Mazic',1227),(70011,'Nicola Rizzoli',1211),(70012,'Carlos Velasco Carballo',1219),(70013,'William Collum',1228),(70014,'Ovidiu Hategan',1216),(70015,'Sergei Karasev',1217),(70016,'Pavel Kralovec',1205),(70017,'Svein Oddvar Moen',1229),(70018,'Clement Turpin',1207);
/*!40000 ALTER TABLE `referee_mast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soccer_city`
--

DROP TABLE IF EXISTS `soccer_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soccer_city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soccer_city`
--

LOCK TABLES `soccer_city` WRITE;
/*!40000 ALTER TABLE `soccer_city` DISABLE KEYS */;
INSERT INTO `soccer_city` VALUES (10001,'Paris',1207),(10002,'Saint-Denis',1207),(10003,'Bordeaux',1207),(10004,'Lens',1207),(10005,'Lille',1207),(10006,'Lyon',1207),(10007,'Marseille',1207),(10008,'Nice',1207),(10009,'Saint-Etienne',1207),(10010,'Toulouse',1207);
/*!40000 ALTER TABLE `soccer_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soccer_country`
--

DROP TABLE IF EXISTS `soccer_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soccer_country` (
  `country_id` int(11) NOT NULL,
  `countr y_a` varchar(45) DEFAULT NULL,
  `country_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soccer_country`
--

LOCK TABLES `soccer_country` WRITE;
/*!40000 ALTER TABLE `soccer_country` DISABLE KEYS */;
INSERT INTO `soccer_country` VALUES (0,'ALB','Albania\"		\r');
/*!40000 ALTER TABLE `soccer_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soccer_team`
--

DROP TABLE IF EXISTS `soccer_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soccer_team` (
  `team_id` int(11) NOT NULL,
  `team_group` varchar(45) DEFAULT NULL,
  `match_played` int(11) DEFAULT NULL,
  `won` int(11) DEFAULT NULL,
  `draw` int(11) DEFAULT NULL,
  `lost` int(11) DEFAULT NULL,
  `goal_for` int(11) DEFAULT NULL,
  `goal_agnst` int(11) DEFAULT NULL,
  `goal_diff` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `group_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soccer_team`
--

LOCK TABLES `soccer_team` WRITE;
/*!40000 ALTER TABLE `soccer_team` DISABLE KEYS */;
INSERT INTO `soccer_team` VALUES (1201,'A',3,1,0,2,1,3,-2,3,3),(1202,'F',3,0,1,2,1,4,-3,1,4),(1203,'E',3,2,0,1,4,2,2,6,2),(1204,'D',3,2,1,0,5,3,2,7,1),(1205,'D',3,0,1,2,2,5,-3,1,4),(1206,'B',3,1,2,0,3,2,1,5,2),(1207,'A',3,2,1,0,4,1,3,7,1),(1208,'C',3,2,1,0,3,0,3,7,1),(1209,'F',3,1,2,0,6,4,2,5,1),(1210,'F',3,1,2,0,4,3,1,5,2),(1211,'E',3,2,0,1,3,1,2,6,1),(1212,'C',3,1,0,2,2,2,0,3,3),(1213,'C',3,2,1,0,2,0,2,7,2),(1214,'F',3,0,3,0,4,4,0,3,3),(1215,'E',3,1,1,1,2,4,-2,4,3),(1216,'A',3,0,1,2,2,4,-2,1,4),(1217,'B',3,0,1,2,2,6,-4,1,4),(1218,'B',3,1,1,1,3,3,0,4,3),(1219,'D',3,2,0,1,5,2,3,6,2),(1220,'E',3,0,1,2,1,3,-2,1,4),(1221,'A',3,1,2,0,2,1,1,5,2),(1222,'D',3,1,0,2,2,4,-2,3,3),(1223,'C',3,0,0,3,0,5,-5,0,4),(1224,'B',3,2,0,1,6,3,3,6,1);
/*!40000 ALTER TABLE `soccer_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soccer_venue`
--

DROP TABLE IF EXISTS `soccer_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soccer_venue` (
  `venue_id` int(11) NOT NULL,
  `venue_name` varchar(45) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `aud_capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soccer_venue`
--

LOCK TABLES `soccer_venue` WRITE;
/*!40000 ALTER TABLE `soccer_venue` DISABLE KEYS */;
INSERT INTO `soccer_venue` VALUES (20001,'Stade de Bordeaux',10003,42115),(20002,'Stade Bollaert-Delelis',10004,38223),(20003,'Stade Pierre Mauroy',10005,49822),(20004,'Stade de Lyon',10006,58585),(20005,'Stade VElodrome',10007,64354),(20006,'Stade de Nice',10008,35624),(20007,'Parc des Princes',10001,47294),(20008,'Stade de France',10002,80100),(20009,'Stade Geoffroy Guichard',10009,42000),(20010,'Stadium de Toulouse',10010,33150);
/*!40000 ALTER TABLE `soccer_venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team_coaches`
--

DROP TABLE IF EXISTS `team_coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_coaches` (
  `team_id` int(11) NOT NULL,
  `coach_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_coaches`
--

LOCK TABLES `team_coaches` WRITE;
/*!40000 ALTER TABLE `team_coaches` DISABLE KEYS */;
INSERT INTO `team_coaches` VALUES (1201,5550),(1202,5551),(1203,5552),(1204,5553),(1205,5554),(1206,5555),(1207,5556),(1208,5557),(1209,5558),(1210,5559),(1211,5561),(1212,5562),(1213,5563),(1214,5564),(1215,5565),(1216,5566),(1217,5567),(1218,5568),(1219,5569),(1220,5570),(1221,5571),(1222,5572),(1223,5573),(1224,5574);
/*!40000 ALTER TABLE `team_coaches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-31 13:29:45
