CREATE DATABASE  IF NOT EXISTS `online_shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `online_shop`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: online_shop
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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'banner_1',1,'4_2023/1682528499banner_1.jpg'),(2,'banner_2',2,'4_2023/1682528513banner_2.jpg'),(3,'banner_3',3,'4_2023/1682528527banner_3.png');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `product_type_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKivyikt568wo4oi3dsoi5viafx` (`product_type_id`),
  CONSTRAINT `FKivyikt568wo4oi3dsoi5viafx` FOREIGN KEY (`product_type_id`) REFERENCES `product_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'2023-04-27 00:06:00','History',1,2),(2,'2023-04-27 00:06:23','Art, Music & Photography',1,2),(3,'2023-04-27 00:06:58','Comic Books & Graphic Novels',1,4),(4,'2023-04-27 00:07:17','Computers & Technology',1,2),(5,'2023-04-27 00:07:48','Horror',1,4),(6,'2023-04-27 00:08:20','Self-Help',1,1),(7,'2023-04-29 19:38:07','Hand book',1,1),(9,'2023-05-06 21:15:06','DEMO ADD CATEGORY',1,5);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKawxpt1ns1sr7al76nvjkv21of` (`order_id`),
  CONSTRAINT `FKawxpt1ns1sr7al76nvjkv21of` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
INSERT INTO `order_products` VALUES (1,'Gwen, in Green (Paperbacks from Hell)',1,3,5,8),(2,'The Hunger Games',2,11,9,1),(3,'Handbook of research on children\'s and young adult literature ',2,77,7,1),(4,'Gwen, in Green (Paperbacks from Hell)',2,3,5,1),(5,'Avengers: Beyond (2023) #2',3,28.9,11,1),(6,'Avengers: Beyond (2023) #2',4,28.9,11,4),(7,'Avengers: Beyond (2023) #2',5,28.9,11,3),(8,'Avengers: Beyond (2023) #2',6,28.9,11,3),(9,'Edge of Spider-Verse (2023)',7,23,15,1),(10,'X-Men: Before The Fall - Sons Of X (2023)',8,70,17,2),(11,'The Hunger Games',8,34,9,1),(12,'Captain America: Symbol of Truth (2022) #12',8,34,10,1);
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `received_address` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-04-29 13:43:38','s·ªë nh√† 23, ng√°ch 5/28, ng√µ 1002 ƒë∆∞·ªùng L√°ng, L√°ng Th∆∞·ª£ng, ƒê·ªëng ƒêa, H√† N·ªôi',2,3.3000000000000003,1),(2,'2023-04-30 22:40:36','s·ªë nh√† 23, ng√°ch 5/28, ng√µ 1002 ƒë∆∞·ªùng L√°ng, L√°ng Th∆∞·ª£ng, ƒê·ªëng ƒêa, H√† N·ªôi',2,100.10000000000001,1),(3,'2023-05-06 21:21:15','Hanoi',2,31.790000000000003,1),(4,'2023-05-01 16:49:22','viet nam',1,31.790000000000003,1),(5,'2023-05-05 21:54:29','test',2,31.790000000000003,1),(6,'2023-05-01 19:25:22','s·ªë nh√† 23, ng√°ch 5/28, ng√µ 1002 ƒë∆∞·ªùng L√°ng, L√°ng Th∆∞·ª£ng, ƒê·ªëng ƒêa, H√† N·ªôi',2,95.36999999999999,1),(7,'2023-05-05 22:17:13','s·ªë nh√† 23, ng√°ch 5/28, ng√µ 1002 ƒë∆∞·ªùng L√°ng, L√°ng Th∆∞·ª£ng, ƒê·ªëng ƒêa, H√† N·ªôi',1,63.371,6),(8,'2023-05-06 21:30:02','s·ªë nh√† 23, ng√°ch 5/28, ng√µ 1002 ƒë∆∞·ªùng L√°ng, L√°ng Th∆∞·ª£ng, ƒê·ªëng ƒêa, H√† N·ªôi',3,253.96800000000002,8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'2023-04-27 00:04:14','Non-fiction',1),(2,'2023-04-27 00:04:37','Edited books',1),(3,'2023-04-27 00:04:52','Reference books',1),(4,'2023-04-27 00:05:03','Fiction',1),(5,'2023-05-05 21:47:41','DEMO',1),(6,'2023-05-06 21:14:07','DEMO2',1);
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_id` bigint DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(1000) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `voucher_id` bigint DEFAULT NULL,
  `final_price` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  KEY `FKl650ww41qfp47gpygnmfd573b` (`voucher_id`),
  CONSTRAINT `FKl650ww41qfp47gpygnmfd573b` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,6,'2023-04-30 16:05:43','Explore what sets high achievers apart--from Bill Gates to the Beatles--in this seminal work from \"a singular talent\" (New York Times Book Review) Malcolm Gladwell, bestselling author of Blink and The Bomber Mafia and host of the podcast Revisionist History In this stunning book, Malcolm Gladwell takes us on an intellectual journey through the world of \"outliers\"--the best and the brightest, the most famous and the most successful. He asks the question:...','Outliers: The Story of Success','4_2023/1682845542OutliersTheStoryofSuccess.jpg',45,23,1,NULL,NULL),(2,6,'2023-04-30 16:29:36','An international bestseller Over 80 million copies sold worldwide A PBS Great American Read Top 100 pick A special 25th anniversary edition of the extraordinary international bestseller, including a new Foreword by Paulo Coelho. Combining magic, mysticism, wisdom and wonder into an inspiring tale of self-discovery, The Alchemist has become a modern classic, selling millions of copies around the world and transforming the lives of countless readers...','The Alchemist','4_2023/1682846976The_Alchemist.jpg',100,23,1,NULL,NULL),(4,5,'2023-04-27 00:16:36','From the New York Times best-selling author of The Southern Book Club\'s Guide to Slaying Vampires comes a nostalgic and unflinchingly funny celebration of the horror fiction boom of the 1970s and \'80s. Take a tour through the horror paperback novels of two iconic decades . . . if you dare. Page through dozens and dozens of amazing book covers featuring well-dressed skeletons, evil dolls, and knife-wielding killer crabs! Read shocking plot summaries...','Paperbacks from Hell: The Twisted History of \'70s and \'80s Horror Fiction','4_2023/1682529395Paperbacks from Hell.jpg',78,75,1,NULL,NULL),(5,5,'2023-04-27 00:18:12','After receiving a large insurance settlement, young couple Gwen and George fulfill a dream by buying their own little island, a secluded, private paradise surrounded by a lush green landscape of plants. What the real estate man didn\'t tell them was that a tragedy took place years earlier in the cool, clear pool near the house. And the waters still hold a terrifying, centuries-old secret. Soon George begins to notice strange changes in his wife. Always...','Gwen, in Green (Paperbacks from Hell)','4_2023/1682529492Green (Paperbacks from Hell).jpg',34,74,1,NULL,NULL),(6,5,'2023-04-27 00:20:06','No Synopsis Available.','The Revenant','4_2023/1682529605The Revenant.jpg',56,21,1,NULL,NULL),(7,7,'2023-04-29 15:46:41','2011','Handbook of research on children\'s and young adult literature ','4_2023/1682758000Handbook of research on children\'s and young adult literature.jpg',100,34,1,NULL,NULL),(8,7,'2023-04-29 15:48:01','2011, ¬©2011','Miller\'s antiques handbook & price guide','4_2023/1682758080Miller\'s antiques handbook & price guide.jpg',65,54,1,NULL,NULL),(9,3,'2023-04-30 16:18:46','The first novel in the worldwide bestselling series by Suzanne Collins! Winning means fame and fortune. Losing means certain death. The Hunger Games have begun. . . . In the ruins of a place once known as North America lies the nation of Panem, a shining Capitol surrounded by twelve outlying districts. The Capitol is harsh and cruel and keeps the districts in line by forcing them all to send one boy and one girl between the ages of twelve and eighteen to participate in the annual Hunger Games, a fight to the death on live TV. Sixteen-year-old Katniss Everdeen regards it as a death sentence when she steps forward to take her sister\'s place in the Games. But Katniss has been close to dead before - and survival, for her, is second nature. Without really meaning to, she becomes a contender. But if she is to win, she will have to start making choices that weigh survival against humanity and life against love.','The Hunger Games','4_2023/1682846326The Hunger Games.jpg',34,34,1,NULL,NULL),(10,3,'2023-04-30 16:25:21','COLD WAR ‚Äì PART TWO! White Wolf has used the power granted him by Bucky Barnes to take control of Dimension Z and unleash its creatures onto the Captains America. Sam Wilson and Steve Rogers are prepared to fight their way through the onslaught, but the Outer Circle has more stakes in this fight than our heroes realize. Can Sam Wilson and Steve Rogers agree on their priorities before they fall to this new threat? And what exactly does Bucky Barnes intend to do to Ian Rogers?','Captain America: Symbol of Truth (2022) #12','4_2023/1682846720Captain America Symbol of Truth.jpg',34,34,1,NULL,NULL),(11,3,'2023-04-30 14:38:12','As violence tears New York apart, and ordinary citizens become crazed, super-powered thugs with nothing but wanton destruction on their minds, Janet Van Dyne ‚Äì A.K.A. the wonderfully winsome Wasp ‚Äì fights to save not only the lives of her fellow heroes, but also a friendship. Which is not easy when that particular friend is trying to bash her head in. Join us for a story of nonstop action and relentless adventure that dares to ask the big questions, such as: How much punching is too much punching? The answer may surprise you... But it probably won‚Äôt.','Avengers: Beyond (2023) #2','4_2023/1682840291Avengers Beyond (2023) 2.jpg',34,34,1,1,NULL),(13,1,'2023-04-30 22:48:56','This is it. The one you\'ve been SMASHING for. The Green Hulk RETURNS! It\'s Green Hulk Vs. Red Hulk --but the real loser is the Planet Earth. There have been knock-down-dragger-outters in the Marvel Universe -- but nothing like this!','Hulk (2008) #4','4_2023/1682869737Hulk 2008.jpg',234,23,1,NULL,NULL),(17,3,'2023-05-06 21:18:29','A BATTLE OF THE TITANS OF THE X-UNIVERSE! A man of innumerable personalities and powers vs. the most powerful artificial intelligence in this universe: Legion vs. Nimrod! With Nightcrawler in Orchis\' clutches, David Haller and his allies will have to confront the mastermind who destroyed Warlock and nearly took Krakoa with him. But Nightcrawler is not himself... and Legion\'s allies aren\'t all they seem to be either. Mutant monsters roam the Earth... Banshee, broken once again, dreams of lost vengeance... Mother Righteous, her role in SINS OF SINISTER unrevealed, takes another stab at universal control... Si Spurrier and Phil Noto usher in new status quos for some of your favorite X-Men in this can\'t-miss one-shot!','X-Men: Before The Fall - Sons Of X (2023)','5_2023/1683382708X Men Before The Fall  Sons Of X.jpg',100,70,1,2,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fe_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'ADMIN','ADMIN'),(3,'USER','USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` VALUES ('04a58327-3a05-421b-82a2-0bd725499eac','b2ee44db-5182-409c-abdc-3db9958bc0d9',1683383360218,1683383360218,1800,1683385160218,NULL),('0ff34d97-2460-4c1a-817a-d7d44294eb62','cd6f059c-b19e-4f06-91a7-1b5f8c475ce8',1683382213388,1683382213388,1800,1683384013388,NULL),('1d377248-88d3-4675-98d8-f1bf95793b20','25c1c26d-c9a8-49fe-aa7d-5d7ceeb264f1',1683382213388,1683382213388,1800,1683384013388,NULL),('537de876-17fe-4c45-bfcb-83ce6902ebef','820aabc2-289a-4e6d-8975-5c9e97becb8c',1683383004758,1683383004758,1800,1683384804758,NULL),('63ed4f29-360f-4138-aa4a-0d90bc67e94c','d6bba38f-7c2b-4b27-ad5c-48f537c75ab2',1683383360219,1683383360219,1800,1683385160219,NULL),('7117c007-5993-4dd9-ad90-78fb5973e6e7','8adb1b95-3bce-47db-b79e-bc701ba80a7f',1683383004762,1683383004763,1800,1683384804763,NULL),('a72ad479-1d7d-4a81-b34f-7fa357c1b343','8c2ea8df-8985-4ac6-a364-b0d68b5f2b08',1683383004757,1683383004757,1800,1683384804757,NULL),('a890baba-0d75-467d-a2e0-3fa0d19ad381','aaa308e7-e6e6-4554-a16c-29c5fffad72e',1683382213389,1683382213389,1800,1683384013389,NULL),('b2f5409b-8613-4187-8b97-a1a22afa06ff','824db564-4156-4eee-bc54-7ee32eb9e5f9',1683383360214,1683383360214,1800,1683385160214,NULL),('c7caddf7-2f82-4cc6-b144-2a19b98794a1','ef7e119f-a7fd-432e-a561-a9c913771010',1683382213387,1683382213388,1800,1683384013388,NULL),('ccc2ccf4-98a5-4191-ac6c-60e64decc458','934a8493-03bb-4edc-ba60-c2a90356f8ac',1683383004760,1683383004760,1800,1683384804760,NULL),('e72ca756-e3e0-45cb-b397-b49142c992ff','d157b6d2-ebe9-4d4f-90dd-6400275d2a3b',1683383360213,1683383360213,1800,1683385160213,NULL),('e80de051-0c32-425a-99e3-42feb66a28a0','7056a39a-c226-4bd9-b075-45caf16b9639',1683383360224,1683383402356,1800,1683385202356,'admin@gmail.com');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session_attributes`
--

DROP TABLE IF EXISTS `spring_session_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_attributes`
--

LOCK TABLES `spring_session_attributes` WRITE;
/*!40000 ALTER TABLE `spring_session_attributes` DISABLE KEYS */;
INSERT INTO `spring_session_attributes` VALUES ('0ff34d97-2460-4c1a-817a-d7d44294eb62','TOTAL_PRICE',_binary '¨\Ì\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0\0'),('537de876-17fe-4c45-bfcb-83ce6902ebef','TOTAL_PRICE',_binary '¨\Ì\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0\0'),('b2f5409b-8613-4187-8b97-a1a22afa06ff','TOTAL_PRICE',_binary '¨\Ì\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0\0'),('e80de051-0c32-425a-99e3-42feb66a28a0','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0&\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0&\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0&\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0&\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$b575f996-bf4a-4393-b0cc-a166fea60b8fpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0&\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0&\0\0xpw\0\0\0q\0~\0xpt\0admin@gmail.com'),('e80de051-0c32-425a-99e3-42feb66a28a0','TOTAL_PRICE',_binary '¨\Ì\0sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0\0');
/*!40000 ALTER TABLE `spring_session_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,2),(2,2),(4,3),(5,3),(7,3),(8,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(100) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Hanoi','2023-05-02 21:30:00','daido7031@gmail.com','Do Thanh Dat','cfa97ef1b9ecda00b59d008f5fb66a36','0961130568'),(2,'Hanoi ','2023-04-30 22:39:37','khanhVu@gmail.com','Kh√°nh V≈© ','9514d1876d599601b668162156a54505','0961130569'),(4,'Hanoi','2023-05-05 22:02:13','khanh@gmail.com','khanh','a6dee99ea62372d10c6b2e813434f0ad','09611305232'),(5,'demo','2023-05-05 22:08:57','demo@gmail.com','demo','eaac1ee7ec7376f21af8d086eae822e6','0961130568'),(7,'Hanoi','2023-05-06 06:25:41','demo123@gmail.com','DEMO DEMO','$2a$10$iXKIjqoUeHkV/ctxrnkIX.1ig6ngrZ.t6.DNhMybsBMKVdHqBxtTi','0961130568'),(8,'Lang Thuong','2023-05-06 21:25:37','test123@gmail.com','Khanh Vu','$2a$10$bT0H3q.LRBr4U.AdwDg5V.R2BzecDFpYYt8fQQp5gkUKKVjxNrEIe','096113000');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vouchers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_date` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sale_percentage` double DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (1,'2023-04-30 14:02:29','Summer sale 15%',15,1),(2,'2023-04-30 22:17:11','30/04-01/05 SALE 30.4%',30,1),(5,'2023-05-06 20:13:20','No voucher',0,1),(6,'2023-05-06 21:12:51','DEMO NEW VOUCHER',50,1);
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-06 22:40:22
