CREATE DATABASE  IF NOT EXISTS `newschema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `newschema`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: newschema
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `Procarid` int NOT NULL AUTO_INCREMENT,
  `memid` varchar(45) DEFAULT NULL,
  `buycount` int DEFAULT NULL,
  PRIMARY KEY (`Procarid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `count`
--

DROP TABLE IF EXISTS `count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count` (
  `id` int NOT NULL DEFAULT '1',
  `num` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count`
--

LOCK TABLES `count` WRITE;
/*!40000 ALTER TABLE `count` DISABLE KEYS */;
INSERT INTO `count` VALUES (1,1);
/*!40000 ALTER TABLE `count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `counter` (
  `idcounter` int NOT NULL AUTO_INCREMENT,
  `counter` int NOT NULL,
  PRIMARY KEY (`idcounter`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,95);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `Name` int NOT NULL,
  `psw` varchar(45) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manage` (
  `manageid` int NOT NULL AUTO_INCREMENT,
  `manage_account` varchar(45) NOT NULL,
  `manage_psw` varchar(45) NOT NULL,
  PRIMARY KEY (`manageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `proid` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `date` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `orderstatus` varchar(45) NOT NULL,
  `productstatus` varchar(45) NOT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL,
  `src` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `amount` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'img/flower/C01.jpg','聖誕老人','聖誕限定','2500','9999'),(2,'img/flower/C02.jpg','冬日來信','聖誕限定','2500','9999'),(3,'img/flower/C03.jpg','平安夜','聖誕限定','2500','9999'),(4,'img/flower/C04.jpg','初雪','聖誕限定','2500','9999'),(5,'img/flower/C05.jpg','聖誕頌歌','聖誕限定','2500','9999'),(6,'img/flower/C06.jpg','蘋蘋安安','聖誕限定','2500','9999'),(7,'img/flower/G01.jpg','歌頌青春','歡慶畢業','2500','9999'),(8,'img/flower/G02.jpg','少年的你','歡慶畢業','2500','9999'),(9,'img/flower/G03.jpg','後浪入海','歡慶畢業','2500','9999'),(10,'img/flower/G04.jpg','追光','歡慶畢業','2500','9999'),(11,'img/flower/G05.jpg','逆風飛翔','歡慶畢業','2500','9999'),(12,'img/flower/G06.jpg','不算分別','歡慶畢業','2500','9999'),(13,'img/flower/R01.jpg','情書','浪漫首選','2500','9999'),(14,'img/flower/R02.jpg','柔情似水','浪漫首選','2500','9999'),(15,'img/flower/R03.jpg','維也納','浪漫首選','2500','9999'),(16,'img/flower/R04.jpg','岩海之戀','浪漫首選','2500','9999'),(17,'img/flower/R05.jpg','仲夏夜夢','浪漫首選','2500','9999'),(18,'img/flower/R06.jpg','深緋','浪漫首選','2500','9999'),(19,'img/flower/FN04.jpg','花樣柔情','新品','2500','9999'),(20,'img/flower/FN02.jpg','繾綣之夜','新品','2500','9999'),(21,'img/flower/FN03.jpg','飄然如夢','新品','2500','9999'),(22,'img/flower/FN01.jpg','岩海之戀','新品','2500','9999'),(23,'img/flower/FN05.jpg','仲夏夜夢','新品','2500','9999'),(24,'img/flower/FN06.jpg','燦然星辰','新品','2500','9999'),(25,'img/flower/FF01.jpg','淺談花語','花束','2500','9999'),(26,'img/flower/FF02.jpg','粉色愛戀','花束','2500','9999'),(27,'img/flower/FF03.jpg','優雅薰香','花束','2500','9999'),(28,'img/flower/FF04.jpg','天空之吻','花束','2500','9999'),(29,'img/flower/FF05.jpg','夜空星辰','花束','2500','9999'),(30,'img/flower/FF06.jpg','淡雅花章','花束','2500','9999'),(31,'img/flower/FG01.jpg','春天','玻璃罩','2500','9999'),(32,'img/flower/FG02.jpg','北極','玻璃罩','2500','9999'),(33,'img/flower/FG03.jpg','秘密','玻璃罩','2500','9999'),(34,'img/flower/FG04.jpg','永不止息','玻璃罩','2500','9999'),(35,'img/flower/FG05.jpg','禮物','玻璃罩','2500','9999'),(36,'img/flower/FG06.jpg','蔚藍大海','玻璃罩','2500','9999'),(37,'img/flower/S01.jpg','蘆薈','多肉植物','2500','9999'),(38,'img/flower/S02.jpg','金盛丸','多肉植物','2500','9999'),(39,'img/flower/S03.jpg','五稜角','多肉植物','2500','9999'),(40,'img/flower/S04.jpg','卡蘿拉','多肉植物','2500','9999'),(41,'img/flower/S05.jpg','蔓蓮','多肉植物','2500','9999'),(42,'img/flower/S06.jpg','耳墜草','多肉植物','2500','9999');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `vipid` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `psw` varchar(45) NOT NULL,
  PRIMARY KEY (`vipid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES (1,'S',NULL,'123'),(2,'B',NULL,'456'),(3,'Proma',NULL,'789'),(4,'123','123@gmail.com','123'),(5,'root564','465@gmail.com','4556');
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-06  7:01:02
