CREATE DATABASE  IF NOT EXISTS `img` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `img`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: img
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `arealoc`
--

DROP TABLE IF EXISTS `arealoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arealoc` (
  `arealoc` varchar(25) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `incharge` varchar(30) DEFAULT NULL,
  `mob_incharge` bigint DEFAULT NULL,
  PRIMARY KEY (`arealoc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arealoc`
--

LOCK TABLES `arealoc` WRITE;
/*!40000 ALTER TABLE `arealoc` DISABLE KEYS */;
INSERT INTO `arealoc` VALUES ('Airport','Jawahar Nagar','Sunil',7764599875),('Mall','Raja Park','Rakesh',9447516547),('School','Malviya Nagar','Akash',7465841231),('Stadium','C-Scheme','Ramesh',9756457683);
/*!40000 ALTER TABLE `arealoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gateno`
--

DROP TABLE IF EXISTS `gateno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gateno` (
  `gateno` int NOT NULL,
  PRIMARY KEY (`gateno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gateno`
--

LOCK TABLES `gateno` WRITE;
/*!40000 ALTER TABLE `gateno` DISABLE KEYS */;
INSERT INTO `gateno` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `gateno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local`
--

DROP TABLE IF EXISTS `local`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local` (
  `local` int NOT NULL,
  `refer` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local`
--

LOCK TABLES `local` WRITE;
/*!40000 ALTER TABLE `local` DISABLE KEYS */;
INSERT INTO `local` VALUES (2,'top right'),(3,'top left'),(4,'bottom right'),(5,'bottom left');
/*!40000 ALTER TABLE `local` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `usern` varchar(50) NOT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `mobno` bigint DEFAULT NULL,
  PRIMARY KEY (`usern`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('akshay','akshay_y','Akshay',4697863453),('karans','karan_sh','Karan',7834549784);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablet`
--

DROP TABLE IF EXISTS `tablet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablet` (
  `Tablet` varchar(10) NOT NULL,
  `_Condition` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Tablet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablet`
--

LOCK TABLES `tablet` WRITE;
/*!40000 ALTER TABLE `tablet` DISABLE KEYS */;
INSERT INTO `tablet` VALUES ('T-1','Running'),('T-2','Stopped'),('T-3','Running'),('T-4','Not Working');
/*!40000 ALTER TABLE `tablet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threat`
--

DROP TABLE IF EXISTS `threat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threat` (
  `threat` varchar(25) NOT NULL,
  `details` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`threat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threat`
--

LOCK TABLES `threat` WRITE;
/*!40000 ALTER TABLE `threat` DISABLE KEYS */;
INSERT INTO `threat` VALUES ('AK-47','Automatic'),('C-4','explosives'),('Flame thrower','Automatic'),('gatling gun','Automatic'),('grenade','explosives'),('handgun','Semi-Automatic'),('knife','Manual'),('Nighthawk','Automatic'),('Nuclear Bomb','explosives'),('null','null'),('rapier','Manual'),('rifle','Semi-Automatic'),('sniper','Semi-Automatic'),('Stun Gun','Manual'),('sword','Manual');
/*!40000 ALTER TABLE `threat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threattrans`
--

DROP TABLE IF EXISTS `threattrans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `threattrans` (
  `Trans_id` int NOT NULL AUTO_INCREMENT,
  `arealoc` varchar(25) DEFAULT NULL,
  `gateno` int DEFAULT NULL,
  `local` int DEFAULT NULL,
  `threat` varchar(25) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`Trans_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threattrans`
--

LOCK TABLES `threattrans` WRITE;
/*!40000 ALTER TABLE `threattrans` DISABLE KEYS */;
INSERT INTO `threattrans` VALUES (100,'Stadium',5,2,'handgun','2021-11-26 11:56:50'),(101,'Airport',3,3,'knife','2021-12-30 00:00:00'),(102,'School',5,4,'Stun Gun','2022-01-18 12:04:49'),(103,'Mall',2,5,'C-4','2022-01-18 15:17:29');
/*!40000 ALTER TABLE `threattrans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 15:55:39
