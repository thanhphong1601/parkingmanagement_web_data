-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: parkingdb
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `entry_history`
--

DROP TABLE IF EXISTS `entry_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entry_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_in` datetime(6) DEFAULT NULL,
  `time_out` datetime(6) DEFAULT NULL,
  `vehicle_id` int NOT NULL,
  `plate_img_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plate_img_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` int NOT NULL,
  `vehicle_owner_id` int NOT NULL,
  `ticket_id` int DEFAULT NULL,
  `person_img_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_img_out` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkllrymdaxivhow0qs37iafxik` (`vehicle_id`),
  KEY `FKsx1fqeajucctph4c68nwirwke` (`creator_id`),
  KEY `FKc3yb0hehdbrkpd3hwrups9g50` (`vehicle_owner_id`),
  KEY `FK7sqk91ubwim1aaxf9bamjmgrq` (`ticket_id`),
  CONSTRAINT `FK7sqk91ubwim1aaxf9bamjmgrq` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`),
  CONSTRAINT `FKc3yb0hehdbrkpd3hwrups9g50` FOREIGN KEY (`vehicle_owner_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKkllrymdaxivhow0qs37iafxik` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `FKsx1fqeajucctph4c68nwirwke` FOREIGN KEY (`creator_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_history`
--

LOCK TABLES `entry_history` WRITE;
/*!40000 ALTER TABLE `entry_history` DISABLE KEYS */;
INSERT INTO `entry_history` VALUES (18,'2025-04-10 15:19:12.118000','2025-04-10 16:06:52.865000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744273154/i42fyk6oiv01rki9cgb7.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744276017/sfpxeu9ysrh9xg8sysui.jpg',7,17,20,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744273158/xzygswqdn24b7zuqcpfc.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744276019/hmsu680kigwaondhqyte.jpg','0'),(24,'2025-04-10 23:28:32.614000','2025-04-10 23:32:29.960000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744302517/qkd2yg7gxxfnkuyvm6vh.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744302754/zwzxihzauawys3cbluic.jpg',7,17,21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744302519/swjqoovp9dl8ezofprit.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744302759/tgmo5l5df5hbslh9t5u1.jpg','blx2shapps'),(26,'2025-04-11 23:22:23.324000','2025-04-11 23:25:19.781000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744388547/dqnvbszhjawfrwj3slek.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744388724/lj5hmxavjtrn1zfxbdfl.jpg',7,17,20,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744388549/hm9hlgxulqhbiijnfwiv.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744388729/kiz9r1xue4pi2xgs6auy.jpg','0'),(27,'2025-04-18 23:32:53.128000','2025-04-18 23:34:29.055000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744993977/rpcw81ujefbucz9wxqf5.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744994074/damhkxvlkztchz91bagb.jpg',7,17,19,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744993979/uwvmjyimbvoz7mantv4a.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744994078/smxx0wjy0d0ut9cjs5rf.jpg','0'),(28,'2025-04-18 23:32:53.128000','2025-04-18 23:34:29.055000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744993977/rpcw81ujefbucz9wxqf5.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744994074/damhkxvlkztchz91bagb.jpg',7,17,19,'http://res.cloudinary.com/dstjar2iy/image/upload/v1744993979/uwvmjyimbvoz7mantv4a.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1744994078/smxx0wjy0d0ut9cjs5rf.jpg','0'),(29,'2025-04-26 00:40:21.096000','2025-04-26 00:45:16.862000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745602825/k3cnjseotn6jcmwwitev.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1745603121/ojlswhprv75qmic1i6qx.jpg',7,17,21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745602830/a5ngzpsuulpkatmvdfu7.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1745603126/d7diyg2yswcsh9if5pgg.jpg','blx2shapps'),(30,'2025-04-26 15:48:13.799000','2025-04-26 16:06:31.801000',21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745657297/wgksivuqdgfkuwdj9ie5.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1745658395/jsxnx8ty7qh9npdywdiw.jpg',7,17,20,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745657301/kkmmolgq0sb0ihqod5r8.jpg','http://res.cloudinary.com/dstjar2iy/image/upload/v1745658399/uoqgluj41i0lsazfhbcz.jpg','blx2shapps'),(31,'2025-04-26 15:56:14.715000',NULL,21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745657777/iuzgwouo14a09pbopksq.jpg',NULL,7,17,21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745657781/do8swk0oioxnevvtkcqa.jpg',NULL,'79h33594'),(32,'2025-04-27 00:44:46.089000',NULL,21,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745689490/fthpzi9lcwxcy3sjpfn0.jpg',NULL,7,17,20,'http://res.cloudinary.com/dstjar2iy/image/upload/v1745689494/qti2ye1nrj436tepfvxj.jpg',NULL,'blx2shapps');
/*!40000 ALTER TABLE `entry_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `floor_number` int NOT NULL,
  `full_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,1,1);
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `line`
--

DROP TABLE IF EXISTS `line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `line` (
  `id` int NOT NULL AUTO_INCREMENT,
  `line` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_id` int DEFAULT NULL,
  `full_status` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7d1ynpc4qeoh7n5elcp4kpy5i` (`floor_id`),
  CONSTRAINT `FK7d1ynpc4qeoh7n5elcp4kpy5i` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `line`
--

LOCK TABLES `line` WRITE;
/*!40000 ALTER TABLE `line` DISABLE KEYS */;
INSERT INTO `line` VALUES (1,'A',1,0,0),(2,'B',1,1,0),(3,'A',2,0,0),(4,'B',2,1,0),(5,'C',1,1,0),(6,'C',2,0,0),(7,'T',7,0,0),(8,'BUC',8,1,1),(9,'A',3,0,0);
/*!40000 ALTER TABLE `line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp`
--

DROP TABLE IF EXISTS `otp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `expiration_time` datetime(6) NOT NULL,
  `otp` int NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK4mkxc1wpojj1vymcvurokktwm` (`user_id`),
  CONSTRAINT `FKdrrkob03otk15fxe9b0bkkp35` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp`
--

LOCK TABLES `otp` WRITE;
/*!40000 ALTER TABLE `otp` DISABLE KEYS */;
INSERT INTO `otp` VALUES (9,'2025-03-25 23:12:32.148000',319309,15),(25,'2025-03-27 00:26:42.817000',127732,17),(27,'2025-04-13 15:55:33.395000',945729,18),(46,'2025-04-18 22:05:12.731000',963826,7),(47,'2025-04-26 14:12:00.715000',633003,12);
/*!40000 ALTER TABLE `otp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `position_number` int NOT NULL,
  `line_id` int DEFAULT NULL,
  `take` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `parking_status` enum('AVAILABLE','ERROR','MAINTENANCE','MANUAL_OVERRIDE','OCCUPIED','RESERVED','WRONG_POSITION') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_ticket_id` bigint DEFAULT NULL,
  `plate_img_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5kjoeexke5ue31r306minyjfb` (`line_id`),
  CONSTRAINT `FK5kjoeexke5ue31r306minyjfb` FOREIGN KEY (`line_id`) REFERENCES `line` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,1,1,0,0,'AVAILABLE',NULL,NULL),(2,2,1,0,0,'AVAILABLE',NULL,NULL),(3,1,2,0,0,'AVAILABLE',NULL,NULL),(4,2,2,0,0,'AVAILABLE',NULL,NULL),(5,1,3,0,0,'AVAILABLE',NULL,NULL),(6,2,3,0,0,'AVAILABLE',NULL,NULL),(7,1,4,0,1,'AVAILABLE',NULL,NULL),(8,2,4,0,0,'AVAILABLE',NULL,NULL),(9,3,1,0,0,'AVAILABLE',NULL,NULL),(10,4,1,0,0,'AVAILABLE',NULL,NULL),(11,5,1,0,1,'AVAILABLE',NULL,NULL),(13,3,6,0,0,'AVAILABLE',NULL,NULL),(14,1,7,0,0,'AVAILABLE',NULL,NULL),(15,2,7,0,0,'AVAILABLE',NULL,NULL),(16,1,8,0,1,'AVAILABLE',NULL,NULL),(17,1,9,1,0,'RESERVED',25,NULL);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_at` datetime(6) DEFAULT NULL,
  `owner_id` int NOT NULL,
  `ticket_id` int NOT NULL,
  `total_amount` int NOT NULL,
  `transaction_date` datetime(6) DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkgekunl8l7276vcqxs4tvxrgv` (`owner_id`),
  KEY `FKlyafwpo5yiupqymntth574ssr` (`ticket_id`),
  CONSTRAINT `FKkgekunl8l7276vcqxs4tvxrgv` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKlyafwpo5yiupqymntth574ssr` FOREIGN KEY (`ticket_id`) REFERENCES `ticket` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,'2024-10-08 22:44:06.013000',12,1,465000,'2024-10-08 22:44:06.013000','1',NULL),(2,'2024-10-08 22:44:44.571000',14,2,495000,'2024-10-08 22:44:44.571000','2',NULL),(4,'2025-03-19 23:29:18.969000',12,12,15000,'2025-03-19 23:29:18.969000','3',NULL),(6,'2025-04-02 16:12:11.122000',12,16,465000,'2025-04-02 16:12:11.122000','5',NULL),(7,'2025-04-18 23:33:57.771000',17,19,15000,'2025-04-18 23:33:57.000000','6753958951',NULL),(8,'2025-04-26 00:44:51.590000',17,21,15000,'2025-04-26 00:44:51.000000','6932229186',NULL),(9,'2025-04-26 16:05:58.278000',17,20,15000,'2025-04-26 16:05:58.000000','1180098784',NULL),(10,'2025-05-08 22:40:09.411000',12,17,420000,'2025-05-08 22:40:26.000000','14946554','Người dùng TestFastPay - CMND: 0202020200202020 thanh toán vé mang id NORMAL27'),(12,'2025-05-08 22:50:28.511000',17,27,15000,'2025-05-08 22:50:47.000000','14946568','Người dùng test - CMND: 1 thanh toán vé mang id NORMAL27'),(13,'2025-05-08 22:50:28.511000',17,27,15000,'2025-05-08 22:50:47.000000','14946568','Người dùng test - CMND: 1 thanh toán vé mang id NORMAL27'),(15,'2025-05-08 23:06:16.915000',17,27,15000,'2025-05-08 22:50:47.000000','14946568','Người dùng test - CMND: 1 thanh toán vé mang id NORMAL27'),(16,'2025-05-08 23:31:35.905000',12,23,10000,'2025-05-08 23:19:59.000000','14946607','Người dùng: Phan Văn Hào - CMND: 098249893421 thanh toán vé id: 23'),(17,'2025-05-08 23:45:56.408000',17,27,15000,'2025-05-08 23:46:14.000000','14946619','Người dùng 1 - CMND: 1 thanh toán vé mang id NORMAL27');
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_SECURITY'),(3,'ROLE_CUSTOMER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `floor_id` int DEFAULT NULL,
  `line_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `ticket_price_id` int NOT NULL,
  `user_id_create` int NOT NULL,
  `user_id_owned` int NOT NULL,
  `vehicle_id` int NOT NULL,
  `end_day` datetime(6) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `start_day` datetime(6) DEFAULT NULL,
  `total_price` int DEFAULT NULL,
  `ticket_type` int DEFAULT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKecmypqmowkxppypty5su8xuh2` (`ticket_price_id`),
  KEY `FKbxafwe9rmsadx01ubw0b4lgms` (`user_id_create`),
  KEY `FKhwlwq077eett8h16rj21da3l7` (`user_id_owned`),
  KEY `FKfqskmh1tlhwl0v3snwumpfb00` (`vehicle_id`),
  KEY `FKm5wptkmypoalkpcrgvrgqgr4f` (`ticket_type`),
  KEY `FK1v92ifejit66l8y4u89dbickc` (`floor_id`),
  KEY `FK6aplgqg60qstrhdilp1m1q9nf` (`position_id`),
  KEY `FKo0uev77i98axym39wtdmthpx0` (`line_id`),
  CONSTRAINT `FK1v92ifejit66l8y4u89dbickc` FOREIGN KEY (`floor_id`) REFERENCES `floor` (`id`),
  CONSTRAINT `FK6aplgqg60qstrhdilp1m1q9nf` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  CONSTRAINT `FKbxafwe9rmsadx01ubw0b4lgms` FOREIGN KEY (`user_id_create`) REFERENCES `user` (`id`),
  CONSTRAINT `FKecmypqmowkxppypty5su8xuh2` FOREIGN KEY (`ticket_price_id`) REFERENCES `ticket_price` (`id`),
  CONSTRAINT `FKfqskmh1tlhwl0v3snwumpfb00` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`id`),
  CONSTRAINT `FKhwlwq077eett8h16rj21da3l7` FOREIGN KEY (`user_id_owned`) REFERENCES `user` (`id`),
  CONSTRAINT `FKm5wptkmypoalkpcrgvrgqgr4f` FOREIGN KEY (`ticket_type`) REFERENCES `ticket_type` (`id`),
  CONSTRAINT `FKo0uev77i98axym39wtdmthpx0` FOREIGN KEY (`line_id`) REFERENCES `line` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (1,1,1,1,1,2,12,11,'2024-10-25 00:00:00.000000',1,'2024-09-24 00:00:00.000000',465000,2,'IT20BOM','VIP1',0),(2,2,2,2,1,2,14,14,'2024-10-27 00:00:00.000000',1,'2024-09-24 00:00:00.000000',495000,2,'11112222','VIP2',0),(7,1,1,2,1,9,15,19,'2024-10-12 00:00:00.000000',0,'2024-10-09 00:00:00.000000',45000,2,'29C199999','VIP7',0),(10,2,3,6,1,2,17,21,'2025-02-26 00:00:00.000000',0,'2025-02-25 00:00:00.000000',15000,2,'0','VIP10',0),(12,1,1,11,1,2,12,11,'2025-03-06 00:00:00.000000',1,'2025-03-05 00:00:00.000000',15000,2,'IT20BOM','VIP12',0),(16,1,1,1,1,2,12,11,'2024-10-25 00:00:00.000000',1,'2024-09-24 00:00:00.000000',465000,2,'IT20BOM','VIP16',0),(17,1,1,1,2,7,12,24,'2025-06-03 00:00:00.000000',1,'2025-04-04 00:00:00.000000',420000,3,'0','MONTH17',1),(19,2,6,13,1,7,17,21,'2025-04-20 00:00:00.000000',1,'2025-04-08 00:00:00.000000',15000,1,'0','NORMAL19',1),(20,1,1,1,1,7,17,21,'2025-04-28 00:00:00.000000',0,'2025-04-27 00:00:00.000000',15000,1,'blx2shapps','NORMAL20',1),(21,1,1,2,1,7,17,21,'2025-04-27 00:00:00.000000',0,'2025-04-26 00:00:00.000000',15000,1,'79h33594','NORMAL21',1),(23,8,8,16,2,2,12,11,'2025-04-21 00:00:00.000000',1,'2025-04-20 00:00:00.000000',10000,2,NULL,'VIP23',0),(25,3,9,17,3,2,12,11,'2025-06-20 00:00:00.000000',0,'2025-04-21 00:00:00.000000',23400000,3,NULL,'MONTH25',1),(26,1,1,1,1,7,17,21,'2025-05-07 00:00:00.000000',0,'2025-05-06 00:00:00.000000',15000,1,'0','NORMAL26',NULL),(27,1,1,2,1,7,17,21,'2025-05-07 00:00:00.000000',1,'2025-05-06 00:00:00.000000',15000,1,'0','NORMAL27',NULL);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_price`
--

DROP TABLE IF EXISTS `ticket_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_price`
--

LOCK TABLES `ticket_price` WRITE;
/*!40000 ALTER TABLE `ticket_price` DISABLE KEYS */;
INSERT INTO `ticket_price` VALUES (1,15000),(2,10000),(3,390000);
/*!40000 ALTER TABLE `ticket_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_type`
--

DROP TABLE IF EXISTS `ticket_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_type`
--

LOCK TABLES `ticket_type` WRITE;
/*!40000 ALTER TABLE `ticket_type` DISABLE KEYS */;
INSERT INTO `ticket_type` VALUES (1,'Thường'),(2,'VIP'),(3,'Tháng');
/*!40000 ALTER TABLE `ticket_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identity_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `identity_number_UNIQUE` (`identity_number`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `FKn82ha3ccdebhokx3a8fgdqeyy` (`role_id`),
  CONSTRAINT `FKn82ha3ccdebhokx3a8fgdqeyy` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,1,'Security',NULL,'2024-09-19 00:00:00.000000','security@gmail.com','33333333','Security','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','1230','security',2),(3,1,'Security 2',NULL,'2024-09-19 00:00:00.000000','security2@gmail.com','44444444','Security 2','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','123','security2',2),(5,1,'BlankUser',NULL,'2024-09-19 00:00:00.000000','blankUser@gmail.com','55555555','BlankUser','00000','00000','blankuser',1),(7,1,'testAddress2','https://res-console.cloudinary.com/dstjar2iy/thumbnails/v1/image/upload/v1745603126/ZDdkaXlnMnlzd2NzaDlpZjVwZ2c=/drilldown','2024-09-19 00:00:00.000000','phongmauser330@gmail.com','66666666','Admin','$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','4444444444','admin',1),(9,1,'testAdress','https://res-console.cloudinary.com/dstjar2iy/thumbnails/v1/image/upload/v1745603126/ZDdkaXlnMnlzd2NzaDlpZjVwZ2c=/drilldown','2024-09-12 00:00:00.000000','test2@gmail.com','019373474783','Security 3','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','8172943095','security3',2),(10,1,'testAdress',NULL,NULL,'test4@gmail.com','913047897874','TestVehicle','$2a$10$kTVQNo73lZgi9AKucHXrJOtRGsORM1GwjHSNOwmv6Hfm.GRry.iV6','9081945857','testVehicle',1),(12,1,'testAdress',NULL,'2024-09-17 00:00:00.000000','2151013069phong@ou.edu.vn','098249893421','Phan Văn Hào','$2a$10$JgEPHCyBsSkbSKrcYNTz.OuEutd64TBng18cED9QFQ1Fe7AVGfCty','0984726134','khachhang1',3),(14,1,'testAdress',NULL,'2024-09-11 00:00:00.000000','tvh@gmail.com','309813989839','Trương Văn Huy','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','0989393575','khachhang2',3),(15,1,'testApi',NULL,'2024-11-01 00:00:00.000000','hlh@gmail.com','578578571389','Huỳnh Hữu Lộc','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','0903333333','khachhang3',3),(16,1,'TestApiCreate',NULL,'2024-10-09 00:00:00.000000','TestApiCreate@gmail.com','037129919384','Đỗ Thanh Bình','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','0903030303','khachhang4',3),(17,1,'Anonymous',NULL,'2024-10-09 00:00:00.000000','Anonymous@gmail.com','1','Anonymous','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','1','Anonymous',3),(18,1,'testAdress',NULL,'2024-10-09 00:00:00.000000','testMail@gmail.com','000000000000','TestRegisterApi','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO','0000000000','TestRegisterApi',3),(19,1,NULL,NULL,'2024-10-09 00:00:00.000000','phongmauser440@gmail.com','0000000000000000','Phong Thanh','$2a$2a$10$TZixs/v38lY4BLP0m/ARn.ZkXDbi5eS4N79gFreR/iqF3vJ4pjeVO',NULL,'phongmauser440@gmail.com',3);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate_license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrmyxjc1r0nxymg692mq9emy56` (`user_id`),
  KEY `FK8qlgtkjao0ig1k8ky1ocnp4dx` (`type_id`),
  CONSTRAINT `FK8qlgtkjao0ig1k8ky1ocnp4dx` FOREIGN KEY (`type_id`) REFERENCES `vehicle_type` (`id`),
  CONSTRAINT `FKrmyxjc1r0nxymg692mq9emy56` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'Honda','666A6666',2,1),(2,'Vision','717BA381',3,2),(11,'Vision','IT20BOM',12,2),(14,'Vario','11112222',14,2),(17,'SH','29A00003',16,2),(18,'Honda','39B01103',16,2),(19,'Honda','29C199999',15,1),(21,'Unknown','0',17,2),(24,'test','1',12,1),(25,'testVehicle','22331144',7,2);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_type`
--

DROP TABLE IF EXISTS `vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_type`
--

LOCK TABLES `vehicle_type` WRITE;
/*!40000 ALTER TABLE `vehicle_type` DISABLE KEYS */;
INSERT INTO `vehicle_type` VALUES (1,'4 chỗ'),(2,'Xe máy');
/*!40000 ALTER TABLE `vehicle_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 21:25:37
