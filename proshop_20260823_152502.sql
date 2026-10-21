-- MySQL dump 10.13  Distrib 8.4.9, for Linux (x86_64)
--
-- Host: 192.168.56.12    Database: proshop_db
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',3,'add_permission'),(6,'Can change permission',3,'change_permission'),(7,'Can delete permission',3,'delete_permission'),(8,'Can view permission',3,'view_permission'),(9,'Can add group',2,'add_group'),(10,'Can change group',2,'change_group'),(11,'Can delete group',2,'delete_group'),(12,'Can view group',2,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',12,'add_product'),(26,'Can change product',12,'change_product'),(27,'Can delete product',12,'delete_product'),(28,'Can view product',12,'view_product'),(29,'Can add cart',7,'add_cart'),(30,'Can change cart',7,'change_cart'),(31,'Can delete cart',7,'delete_cart'),(32,'Can view cart',7,'view_cart'),(33,'Can add cart item',8,'add_cartitem'),(34,'Can change cart item',8,'change_cartitem'),(35,'Can delete cart item',8,'delete_cartitem'),(36,'Can view cart item',8,'view_cartitem'),(37,'Can add feedback',9,'add_feedback'),(38,'Can change feedback',9,'change_feedback'),(39,'Can delete feedback',9,'delete_feedback'),(40,'Can view feedback',9,'view_feedback'),(41,'Can add order',10,'add_order'),(42,'Can change order',10,'change_order'),(43,'Can delete order',10,'delete_order'),(44,'Can view order',10,'view_order'),(45,'Can add order item',11,'add_orderitem'),(46,'Can change order item',11,'change_orderitem'),(47,'Can delete order item',11,'delete_orderitem'),(48,'Can view order item',11,'view_orderitem');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1200000$hIq6IA2weUk4pZC688faVk$X8EaKsyCmE+dAp4Mxp6rRcwUDkaUvwR3V1RTBNBHzTo=','2026-08-15 15:29:04.155475',1,'dheeraj','','','',1,1,'2026-06-02 11:23:52.602606'),(2,'pbkdf2_sha256$1200000$eirBriW9nIcSvOfnWbUQge$FfQDZBktQQ0jgR2ByZs+zheN5iwJ23RnCimgNJgVy58=','2026-06-02 12:10:23.603873',0,'harshit','','','',0,1,'2026-06-02 12:10:07.052597'),(3,'pbkdf2_sha256$1200000$2jvhY87zc6fIdcOKbm7g2C$7yN2POTBjDxR9SHegmDI99chKG+ZAsmcncUJX4mmb/o=','2026-08-15 15:27:57.437684',0,'Chelani','','','',0,1,'2026-08-15 15:21:50.169685');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2026-06-02 11:32:24.407476','1','achkan',1,'[{\"added\": {}}]',12,1),(2,'2026-06-02 11:51:06.064697','2','dslr',1,'[{\"added\": {}}]',12,1),(3,'2026-06-02 11:51:53.860121','3','bluetooth speaker',1,'[{\"added\": {}}]',12,1),(4,'2026-06-02 11:52:22.861345','4','headphone',1,'[{\"added\": {}}]',12,1),(5,'2026-06-02 11:53:04.528695','5','mens-trouser',1,'[{\"added\": {}}]',12,1),(6,'2026-06-02 11:53:40.738904','6','shirt',1,'[{\"added\": {}}]',12,1),(7,'2026-06-02 11:54:33.652520','7','iphone',1,'[{\"added\": {}}]',12,1),(8,'2026-06-02 11:55:06.085713','8','gaming laptop',1,'[{\"added\": {}}]',12,1),(9,'2026-06-02 11:55:26.813929','9','leather backpack',1,'[{\"added\": {}}]',12,1),(10,'2026-06-02 11:55:46.885063','10','chair',1,'[{\"added\": {}}]',12,1),(11,'2026-06-02 11:56:36.216193','11','table',1,'[{\"added\": {}}]',12,1),(12,'2026-06-02 11:56:56.953093','12','study table',1,'[{\"added\": {}}]',12,1),(13,'2026-06-02 11:57:15.634732','13','bed',1,'[{\"added\": {}}]',12,1),(14,'2026-06-02 11:58:21.070537','1','achkan',3,'',12,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','group'),(3,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'store','cart'),(8,'store','cartitem'),(9,'store','feedback'),(10,'store','order'),(11,'store','orderitem'),(12,'store','product');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-06-02 11:18:38.570387'),(2,'auth','0001_initial','2026-06-02 11:18:44.825729'),(3,'admin','0001_initial','2026-06-02 11:18:49.985495'),(4,'admin','0002_logentry_remove_auto_add','2026-06-02 11:18:50.030576'),(5,'admin','0003_logentry_add_action_flag_choices','2026-06-02 11:18:50.132384'),(6,'contenttypes','0002_remove_content_type_name','2026-06-02 11:18:51.085499'),(7,'auth','0002_alter_permission_name_max_length','2026-06-02 11:18:51.802468'),(8,'auth','0003_alter_user_email_max_length','2026-06-02 11:18:52.019631'),(9,'auth','0004_alter_user_username_opts','2026-06-02 11:18:52.157372'),(10,'auth','0005_alter_user_last_login_null','2026-06-02 11:18:52.644801'),(11,'auth','0006_require_contenttypes_0002','2026-06-02 11:18:52.739710'),(12,'auth','0007_alter_validators_add_error_messages','2026-06-02 11:18:52.802869'),(13,'auth','0008_alter_user_username_max_length','2026-06-02 11:18:53.322525'),(14,'auth','0009_alter_user_last_name_max_length','2026-06-02 11:18:54.170772'),(15,'auth','0010_alter_group_name_max_length','2026-06-02 11:18:54.373987'),(16,'auth','0011_update_proxy_permissions','2026-06-02 11:18:54.518587'),(17,'auth','0012_alter_user_first_name_max_length','2026-06-02 11:18:55.069139'),(18,'sessions','0001_initial','2026-06-02 11:18:55.706925'),(19,'store','0001_initial','2026-06-02 11:18:56.037135'),(20,'store','0002_rename_products_product','2026-06-02 11:18:56.455211'),(21,'store','0003_cart_cartitem','2026-06-02 11:18:58.209443'),(22,'store','0004_feedback','2026-06-02 11:18:58.479985'),(23,'store','0005_product_description','2026-06-02 11:18:58.988532'),(24,'store','0006_product_category','2026-06-02 11:18:59.669828'),(25,'store','0007_alter_product_category','2026-06-02 11:18:59.782517'),(26,'store','0008_alter_product_category','2026-06-02 11:18:59.822494'),(27,'store','0009_order_orderitem','2026-06-02 11:19:02.637786'),(28,'store','0010_alter_product_id','2026-06-02 11:19:05.645851');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8bnts6qp9pis42ar647cpwlbpoaxe2ah','.eJxVjEEOwiAQRe_C2hBghlJcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWWpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtUVulCcCjHRF8sYxJATjndXSRER05MApdsUZ5BGRDA2eFw-iLxyzeH5jWNi0:1woyEt:9TJJcDVjgcvLe8HnTVChDk_5ERFuRGEvp1-vEOFSjB4','2026-08-12 06:58:03.412337'),('9kg6y64obyim6wooobqg3df700q32r3w','.eJxVjEEOwiAQRe_C2hBghlJcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWWpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtUVulCcCjHRF8sYxJATjndXSRER05MApdsUZ5BGRDA2eFw-iLxyzeH5jWNi0:1wvGJk:dcyAuXTC-81BgOO30IE1J-ZJ_8No9Cao16kUxbLWcIw','2026-08-29 15:29:04.203470'),('9y2coo0wv8b10m0sfyq0urjgryk4qr6i','.eJxVjEEOwiAQRe_C2hBghlJcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWWpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtUVulCcCjHRF8sYxJATjndXSRER05MApdsUZ5BGRDA2eFw-iLxyzeH5jWNi0:1wvGEw:XFeWZy4U2BhqCk5s0lAuEzxyF4IeFC_irO37fRapdVk','2026-08-29 15:24:06.337984'),('f6heawcrbueciyql36ioxv17uuiy4m65','.eJxVjDsOwjAQRO_iGln-bOyEkj5nsNbrDQ4gW4qTCnF3EikFNFPMezNvEXBbc9gaL2FO4iq0uPx2EenJ5QDpgeVeJdWyLnOUhyJP2uRYE79up_t3kLHlfa0G0t4ZgGiGqKzzrJ23PaIyE4HnPRJih5ETgTOaOlJgPRjqYXLWis8X0Ks3jw:1wcfb9:d8VlbnmNNVIOpqVW2z3F8lHhiCTJMKo56WxModyXI7I','2026-07-09 08:38:11.136597'),('oqmjsut5h6dijp66w2nhahtpm0m0hg6c','.eJxVjEEOwiAQRe_C2hBghlJcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWWpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtUVulCcCjHRF8sYxJATjndXSRER05MApdsUZ5BGRDA2eFw-iLxyzeH5jWNi0:1wvDIB:0Y6EqyALtcM9Yupj2-SXbHTf_su2wHhKkz1kihQtUk8','2026-08-29 12:15:15.940327'),('uqdiiq2juclfjzax20dtqc25ywe2uw9k','.eJxVjEEOwiAQRe_C2hBghlJcuvcMZGBAqoYmpV0Z765NutDtf-_9lwi0rTVsPS9hYnEWWpx-t0jpkdsO-E7tNss0t3WZotwVedAurzPn5-Vw_w4q9fqtUVulCcCjHRF8sYxJATjndXSRER05MApdsUZ5BGRDA2eFw-iLxyzeH5jWNi0:1wiSA2:jwse9_Z3TznYH4ASmc6Olei6e1L0mOJLZIt1edubLbg','2026-07-25 07:30:06.669019'),('zr9fkl3jb9rtpv6xhbq3m0ktwiolt3lp','.eJxVjEsOAiEQBe_C2pBuQAZcuvcMpOkGGTVMMp-V8e5mklno9lXVe6tE29rStpQ5jaIuCtXpd8vEz9J3IA_q90nz1Nd5zHpX9EEXfZukvK6H-3fQaGl7baE4RvREdagQo0EnSNVltkF4wOCNDOAoQ-UcTAXvg6VzFAQE69XnC-g0N4c:1wXI5Z:TFOjfrbDgnlsIIHdN90TS2dTbbvjU0uUZbyJjNIJCTU','2026-06-24 12:31:21.975696');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cart`
--

DROP TABLE IF EXISTS `store_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_cart_user_id_99e99107_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_cart_user_id_99e99107_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cart`
--

LOCK TABLES `store_cart` WRITE;
/*!40000 ALTER TABLE `store_cart` DISABLE KEYS */;
INSERT INTO `store_cart` VALUES (1,1),(2,3);
/*!40000 ALTER TABLE `store_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_cartitem`
--

DROP TABLE IF EXISTS `store_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_cartitem_cart_id_4f60ac05_fk_store_cart_id` (`cart_id`),
  KEY `store_cartitem_product_id_4238d443_fk` (`product_id`),
  CONSTRAINT `store_cartitem_cart_id_4f60ac05_fk_store_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `store_cart` (`id`),
  CONSTRAINT `store_cartitem_product_id_4238d443_fk` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_cartitem`
--

LOCK TABLES `store_cartitem` WRITE;
/*!40000 ALTER TABLE `store_cartitem` DISABLE KEYS */;
INSERT INTO `store_cartitem` VALUES (4,1,1,2);
/*!40000 ALTER TABLE `store_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_feedback`
--

DROP TABLE IF EXISTS `store_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_feedback`
--

LOCK TABLES `store_feedback` WRITE;
/*!40000 ALTER TABLE `store_feedback` DISABLE KEYS */;
INSERT INTO `store_feedback` VALUES (1,'dheeraj','dheeraj2005@gmail.com','this website is very good for purchasing products','2026-06-02 12:12:40.227656');
/*!40000 ALTER TABLE `store_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_order` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `total_amount` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_order_user_id_ae5f7a5f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `store_order_user_id_ae5f7a5f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (1,'dheeraj','9799766900','124/339 agarwalfarm mansarover jaipur','jaipur','302020',5000,'2026-06-02 12:13:34.891176',1),(2,'Hsjz','94794','Bsbsbz','Bzb','BzB',4500,'2026-08-15 15:22:57.998830',3),(3,'Hsl','369..0','Gaah','Hhabb','Haja',500,'2026-08-15 15:28:39.189202',3);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_orderitem`
--

DROP TABLE IF EXISTS `store_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orderitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `order_id` bigint NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_orderitem_order_id_acf8722d_fk_store_order_id` (`order_id`),
  KEY `store_orderitem_product_id_f2b098d4_fk` (`product_id`),
  CONSTRAINT `store_orderitem_order_id_acf8722d_fk_store_order_id` FOREIGN KEY (`order_id`) REFERENCES `store_order` (`id`),
  CONSTRAINT `store_orderitem_product_id_f2b098d4_fk` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orderitem`
--

LOCK TABLES `store_orderitem` WRITE;
/*!40000 ALTER TABLE `store_orderitem` DISABLE KEYS */;
INSERT INTO `store_orderitem` VALUES (1,1,500,1,2),(2,1,4000,1,3),(3,1,500,1,4),(4,1,500,2,2),(5,1,4000,2,3),(6,1,500,3,2);
/*!40000 ALTER TABLE `store_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_product`
--

DROP TABLE IF EXISTS `store_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL DEFAULT (_utf8mb4'No Description'),
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_product`
--

LOCK TABLES `store_product` WRITE;
/*!40000 ALTER TABLE `store_product` DISABLE KEYS */;
INSERT INTO `store_product` VALUES (2,'dslr',500,'products/DSLR_camera_HFg9meL.png','No Description','electronics'),(3,'bluetooth speaker',4000,'products/bluetooth_speaker_v4Cp57d.png','No Description','electronics'),(4,'headphone',500,'products/wireless_headphone.png','No Description','electronics'),(5,'mens-trouser',300,'products/mens_trouser.webp','No Description','clothes'),(6,'shirt',200,'products/shirts.webp','No Description','clothes'),(7,'iphone',100000,'products/iphone_image.webp','No Description','electronics'),(8,'gaming laptop',60000,'products/gaming_laptop.avif','No Description','electronics'),(9,'leather backpack',20000,'products/leather_backpack.jpg','No Description','wooden'),(10,'chair',500,'products/chair.webp','No Description','wooden'),(11,'table',1000,'products/table.webp','No Description','wooden'),(12,'study table',2000,'products/study_table.webp','No Description','wooden'),(13,'bed',20000,'products/bed.webp','No Description','wooden');
/*!40000 ALTER TABLE `store_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-23 15:25:02
