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
  `stock_id` int DEFAULT NULL,
  `deal_date` date DEFAULT NULL,
  `deal_time` timestamp(3) NULL DEFAULT NULL,
  `deal_price` varchar(45) DEFAULT NULL,
  `deal_volume` varchar(45) DEFAULT NULL,
  `renew_time` timestamp(3) NULL DEFAULT NULL,
  `build_time` timestamp(3) NULL DEFAULT NULL,
  `order_id` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `ID_idx` (`stock_id`),
  CONSTRAINT `ID` FOREIGN KEY (`stock_id`) REFERENCES `stockinfotable` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priceinfotable`
--

LOCK TABLES `priceinfotable` WRITE;
/*!40000 ALTER TABLE `priceinfotable` DISABLE KEYS */;
/*!40000 ALTER TABLE `priceinfotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockinfotable`
--

DROP TABLE IF EXISTS `stockinfotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockinfotable` (
  `ID` int NOT NULL,
  `STOCK_NAME` varchar(45) DEFAULT NULL,
  `STOCK_CODE` varchar(45) DEFAULT NULL,
  `RENEW_TIME` timestamp(3) NULL DEFAULT NULL,
  `BUILD_TIME` timestamp(3) NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockinfotable`
--

LOCK TABLES `stockinfotable` WRITE;
/*!40000 ALTER TABLE `stockinfotable` DISABLE KEYS */;
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

-- Dump completed on 2020-09-30 22:11:36
