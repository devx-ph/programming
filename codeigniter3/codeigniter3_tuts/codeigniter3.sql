-- MariaDB dump 10.19-11.0.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: codeigniter3
-- ------------------------------------------------------
-- Server version	11.0.2-MariaDB

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
-- Current Database: `codeigniter3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `codeigniter3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `codeigniter3`;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES
(1,'Kristian Ryan','Bulos','0912869824','kristianryanbulos@gmail.com'),
(2,'John','Doe','09123456789','jdoe@mail.com'),
(3,'Jane','Doe','09123456789','janedoe@mail.com'),
(23,'test','3','09991231234','test3@mail.com'),
(26,'test','4','09991231234','test4@mail.com'),
(28,'test123','1234','09991231234','test132@m.c'),
(29,'emp','0001','09991231234','emp0001@m.c'),
(30,'emp','0002','09991231234','emp0002@m.c'),
(31,'emp','0003','09991231234','emp0003@m.c'),
(32,'emp','0004','09991231234','emp0004@m.c'),
(33,'emp','0005','09991231234','empp0005@m.c'),
(34,'emp','0006','09991231234','emp0006@m.c'),
(35,'emp','0007','09991231234','emp0007@m.c');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'Thinkpad X220','Lenovo ThinkPad X220 \r\n- Core i5 2540M /2.6 GHz \r\n- Win 7 Pro 64-bit \r\n- 4 GB RAM - 320 GB HDD\r\n- DVD-Writer \r\n- 12.5\" IPS Premium 1366 x 768 (HD)\r\n- HD Graphics 3000 \r\n- 3G upgradable \r\n- vPro \r\n- black \r\n- with UltraBase Series 3','10000','1688957621-x220.jpg','2023-07-09 10:07:19'),
(17,'test1 updated','test1 updated','10','1688957108-codeigniter3_timestamp.png','2023-07-10 02:44:43'),
(18,'test2','test2','10','1688957553-codeigniter3_timestamp.png','2023-07-10 02:46:44'),
(19,'test3','test3','10','1688957536-test.png','2023-07-10 02:52:16');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_as` tinyint(4) DEFAULT 1 COMMENT '1=user, 2=admin',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Kristian','Bulos','kristianryanbulos@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:21:26'),
(2,'John','Doe','jdoe@mail.com','81dc9bdb52d04dc20036dbd8313ed055',2,'2023-07-06 16:23:11'),
(3,'Jane','Doe','janedoe@doe.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:26:19'),
(4,'test','test','test@test.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:29:12'),
(5,'testi','testi','test2@test.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:33:06'),
(6,'adas','adsad','adasd@asdas.c','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:33:37'),
(7,'asdads','asdad','bkbbk@kada.c','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:35:10'),
(8,'atatat','tatatrara','atat@mail.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:36:44'),
(9,'bnbnbn','nanan','banana@mail.banana','81dc9bdb52d04dc20036dbd8313ed055',1,'2023-07-06 16:37:14'),
(10,'Kristian','Bulos','kr@b.com','1234',1,'2023-07-07 01:25:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10 15:09:50
