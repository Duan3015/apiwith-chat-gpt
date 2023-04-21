-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: test
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `categoryId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ff0c0301a95e517153df97f6812` (`categoryId`),
  CONSTRAINT `FK_ff0c0301a95e517153df97f6812` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Sleek Concrete Towels',347,'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J','https://picsum.photos/640/640?r=3260,https://picsum.photos/640/640?r=349,https://picsum.photos/640/640?r=6884','2023-04-21 01:13:34','2023-04-21 01:13:34',1),(2,'Luxurious Rubber Car',395,'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','https://picsum.photos/640/640?r=8633,https://picsum.photos/640/640?r=6833,https://picsum.photos/640/640?r=3373','2023-04-21 01:26:06','2023-04-21 01:26:06',2),(3,'Ergonomic Fresh Computer',889,'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','https://picsum.photos/640/640?r=6812,https://picsum.photos/640/640?r=4060,https://picsum.photos/640/640?r=859','2023-04-21 15:24:52','2023-04-21 16:33:33',2),(4,'Bespoke Rubber Pizza',272,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=4764,https://picsum.photos/640/640?r=8114,https://picsum.photos/640/640?r=728','2023-04-21 15:25:37','2023-04-21 15:25:37',4),(5,'Handmade Concrete Tuna',267,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=6405,https://picsum.photos/640/640?r=3425,https://picsum.photos/640/640?r=3651','2023-04-21 16:31:01','2023-04-21 16:31:01',3),(6,'Electronic Frozen Shirt',647,'New ABC 13 9370, 13.3, 5th Gen CoreA5-8250U, 8GB RAM, 256GB SSD, power UHD Graphics, OS 10 Home, OS Office A & J 2016','https://picsum.photos/640/640?r=3188,https://picsum.photos/640/640?r=4061,https://picsum.photos/640/640?r=6797','2023-04-21 16:39:03','2023-04-21 16:39:03',2),(7,'Modern Concrete Shirt',309,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=8282,https://picsum.photos/640/640?r=3809,https://picsum.photos/640/640?r=5773','2023-04-21 16:39:53','2023-04-21 16:39:53',2),(8,'Elegant Cotton Shoes',203,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=2517,https://picsum.photos/640/640?r=4641,https://picsum.photos/640/640?r=9340','2023-04-21 16:41:43','2023-04-21 16:41:43',6),(9,'Small Wooden Bike',997,'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','https://picsum.photos/640/640?r=6486,https://picsum.photos/640/640?r=7703,https://picsum.photos/640/640?r=4962','2023-04-21 16:42:52','2023-04-21 16:42:52',4),(10,'Intelligent Rubber Bacon',242,'The slim & simple Maple Gaming Keyboard from Dev Byte comes with a sleek body and 7- Color RGB LED Back-lighting for smart functionality','https://picsum.photos/640/640?r=2398,https://picsum.photos/640/640?r=3093,https://picsum.photos/640/640?r=1781','2023-04-21 16:43:23','2023-04-21 16:43:23',3),(11,'Incredible Bronze Tuna',471,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=1028,https://picsum.photos/640/640?r=8778,https://picsum.photos/640/640?r=6312','2023-04-21 16:45:18','2023-04-21 16:45:18',6),(12,'Recycled Metal Computer',253,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=7310,https://picsum.photos/640/640?r=105,https://picsum.photos/640/640?r=9144','2023-04-21 19:15:31','2023-04-21 19:15:31',2),(13,'Incredible Wooden Chips',591,'The Football Is Good For Training And Recreational Purposes','https://picsum.photos/640/640?r=7575,https://picsum.photos/640/640?r=392,https://picsum.photos/640/640?r=1268','2023-04-21 19:15:49','2023-04-21 19:15:49',6),(14,'Incredible Bronze Tuna',471,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=1028,https://picsum.photos/640/640?r=8778,https://picsum.photos/640/640?r=6312','2023-04-21 19:16:11','2023-04-21 19:16:11',6),(15,'Practical Metal Fish',689,'The Apollotech B340 is an affordable wireless mouse with reliable connectivity, 12 months battery life and modern design','https://picsum.photos/640/640?r=8790,https://picsum.photos/640/640?r=8247,https://picsum.photos/640/640?r=3872','2023-04-21 19:16:31','2023-04-21 19:16:31',2),(16,'Intelligent Wooden Tuna',361,'Boston\'s most advanced compression wear technology increases muscle oxygenation, stabilizes active muscles','https://picsum.photos/640/640?r=9630,https://picsum.photos/640/640?r=8244,https://picsum.photos/640/640?r=5929','2023-04-21 19:17:58','2023-04-21 19:17:58',7),(17,'Ergonomic Soft Bike',588,'The automobile layout consists of a front-engine design, with transaxle-type transmissions mounted at the rear of the engine and four wheel drive','https://picsum.photos/640/640?r=2173,https://picsum.photos/640/640?r=1154,https://picsum.photos/640/640?r=7553','2023-04-21 19:18:28','2023-04-21 19:18:28',4),(18,'Refined Plastic Soap',77,'The beautiful range of Apple Naturalé that has an exciting mix of natural ingredients. With the Goodness of 100% Natural Ingredients','https://picsum.photos/640/640?r=9200,https://picsum.photos/640/640?r=613,https://picsum.photos/640/640?r=8670','2023-04-21 19:19:04','2023-04-21 19:19:04',7),(19,'Tasty Metal Computer',112,'The Nagasaki Lander is the trademarked name of several series of Nagasaki sport bikes, that started with the 1984 ABC800J','https://picsum.photos/640/640?r=7749,https://picsum.photos/640/640?r=4595,https://picsum.photos/640/640?r=9510','2023-04-21 19:19:39','2023-04-21 19:19:39',6),(20,'Refined Metal Shirt',472,'Andy shoes are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals','https://picsum.photos/640/640?r=5448,https://picsum.photos/640/640?r=1958,https://picsum.photos/640/640?r=86','2023-04-21 19:20:03','2023-04-21 19:20:03',6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-21 14:50:55
