-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: codeigniter3
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES
(1,'Kristian','Bulos','0912869824','kristianryanbulos@gmail.com'),
(2,'John','Doe','09123456789','jdoe@mail.com'),
(3,'Jane','Doe','09123456789','janedoe@mail.com'),
(14,'emp','0003','09991231234','emp0003@mail.com'),
(15,'emp','0004','09991231234','emp0004@mail.com'),
(16,'emp','0005','09991231234','emp0005@mail.com'),
(17,'emp','0006','09991231234','emp0006@mail.com'),
(18,'emp','0007','09991231234','emp0007@mail.com'),
(19,'emp','0008','09991231234','emp0008@mail.com'),
(21,'test','2','09991231234','test2@test.com'),
(23,'test','3','09991231234','test3@mail.com'),
(26,'test','4','09991231234','test4@mail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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

-- Dump completed on 2023-07-07 14:47:26
