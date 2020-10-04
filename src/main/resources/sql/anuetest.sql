-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `priceinfotable`
--

DROP TABLE IF EXISTS `priceinfotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `priceinfotable` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `stock_code` varchar(45) DEFAULT NULL,
  `deal_date` date DEFAULT NULL,
  `deal_time` timestamp(3) NULL DEFAULT NULL,
  `deal_price` varchar(45) DEFAULT NULL,
  `deal_volume` varchar(45) DEFAULT NULL,
  `renew_time` timestamp(3) NULL DEFAULT NULL,
  `build_time` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priceinfotable`
--

LOCK TABLES `priceinfotable` WRITE;
/*!40000 ALTER TABLE `priceinfotable` DISABLE KEYS */;
INSERT INTO `priceinfotable` VALUES (1,'0','2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-01 07:30:07.428','2020-10-01 07:30:07.428'),(2,'0','2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-01 07:30:44.439','2020-10-01 07:30:44.439'),(3,'4','2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-01 07:31:45.116','2020-10-01 07:31:45.116'),(4,NULL,'2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-01 07:35:23.464','2020-10-01 07:35:23.464'),(5,'5124','2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-01 07:35:40.267','2020-10-01 07:35:40.267'),(6,'5124','2020-10-01','1970-01-19 04:52:45.223','21','50','2020-10-02 01:32:17.999','2020-10-02 01:32:17.999'),(7,'5124','2020-10-02','1970-01-19 04:52:45.223','21','50','2020-10-02 17:01:41.262','2020-10-02 17:01:41.262'),(8,'5124','2020-10-02','1970-01-20 08:39:25.223','21','50','2020-10-02 17:04:52.118','2020-10-02 17:04:52.118'),(9,'5124','2020-10-02','1970-01-20 08:39:25.223','21','50','2020-10-02 17:04:57.508','2020-10-02 17:04:57.508'),(10,'5124','2020-10-02','1970-01-02 18:26:05.223','21','50','2020-10-02 17:05:06.989','2020-10-02 17:05:06.989'),(11,'5124','2020-10-02','1970-01-14 08:12:45.223','21','50','2020-10-02 17:05:13.004','2020-10-02 17:05:13.004'),(12,'5124','2020-10-02','1970-05-10 01:59:25.223','21','50','2020-10-02 17:05:17.079','2020-10-02 17:05:17.079'),(13,'5124','2020-10-02','1973-07-10 11:46:05.223','21','50','2020-10-02 17:05:21.168','2020-10-02 17:05:21.168'),(14,'5124','2020-10-02','1986-03-14 02:52:45.223','21','50','2020-10-02 17:05:25.470','2020-10-02 17:05:25.470'),(15,'5124','2020-10-02','2017-11-20 04:39:25.223','21','50','2020-10-02 17:05:29.270','2020-10-02 17:05:29.270'),(16,'3000','2020-10-02','2017-11-20 04:39:25.223','21','50','2020-10-02 20:14:36.328','2020-10-02 20:14:36.328'),(17,'1234','2020-10-02','2017-11-20 04:39:25.223','21','50','2020-10-02 20:17:42.467','2020-10-02 20:17:42.467'),(18,'1234','2020-09-02','2017-11-20 04:39:25.223','20','50','2020-10-02 20:43:44.269','2020-10-02 20:43:44.269');
/*!40000 ALTER TABLE `priceinfotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockinfotable`
--

DROP TABLE IF EXISTS `stockinfotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockinfotable` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `STOCK_NAME` varchar(45) DEFAULT NULL,
  `STOCK_CODE` varchar(45) DEFAULT NULL,
  `RENEW_TIME` timestamp(3) NULL DEFAULT NULL,
  `BUILD_TIME` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='SELECT `stockinfotable`.`ID`,\n    `stockinfotable`.`STOCK_NAME`,\n    `stockinfotable`.`STOCK_CODE`,\n    `stockinfotable`.`RENEW_TIME`,\n    `stockinfotable`.`BUILD_TIME`,\n    `stockinfotable`.`code`,\n    `stockinfotable`.`name`\nFROM `new_schema`.`stockinfotable`;\n';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockinfotable`
--

LOCK TABLES `stockinfotable` WRITE;
/*!40000 ALTER TABLE `stockinfotable` DISABLE KEYS */;
INSERT INTO `stockinfotable` VALUES (1,'銀行','5124','2020-10-02 01:42:30.540','1979-12-31 16:00:00.000'),(5,'彰化銀行','1234','2020-09-30 22:03:00.534','2020-09-30 22:03:00.534'),(6,'彰化銀行','512400','2020-10-02 20:12:33.769','2020-10-02 20:12:33.769'),(7,'台新銀行','312400','2020-10-02 20:12:56.706','2020-10-02 20:12:56.706'),(8,'台新銀行222','5555','2020-10-02 20:41:21.963','2020-10-02 20:40:49.670');
/*!40000 ALTER TABLE `stockinfotable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-04 12:30:22
