-- MySQL dump 10.13  Distrib 5.7.19, for Linux (i686)
--
-- Host: localhost    Database: prueba
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-08-02 20:12:49.567990'),(2,'auth','0001_initial','2017-08-02 20:13:03.366100'),(3,'admin','0001_initial','2017-08-02 20:13:06.982632'),(4,'admin','0002_logentry_remove_auto_add','2017-08-02 20:13:07.230638'),(5,'contenttypes','0002_remove_content_type_name','2017-08-02 20:13:08.962973'),(6,'auth','0002_alter_permission_name_max_length','2017-08-02 20:13:09.165980'),(7,'auth','0003_alter_user_email_max_length','2017-08-02 20:13:09.400799'),(8,'auth','0004_alter_user_username_opts','2017-08-02 20:13:09.529093'),(9,'auth','0005_alter_user_last_login_null','2017-08-02 20:13:10.391898'),(10,'auth','0006_require_contenttypes_0002','2017-08-02 20:13:10.451882'),(11,'auth','0007_alter_validators_add_error_messages','2017-08-02 20:13:10.569615'),(12,'auth','0008_alter_user_username_max_length','2017-08-02 20:13:11.121823'),(13,'sessions','0001_initial','2017-08-02 20:13:11.936851'),(14,'users','0001_initial','2017-08-02 21:34:14.495243'),(15,'users','0002_auto_20170802_1741','2017-08-02 22:41:44.213236'),(16,'users','0003_auto_20170802_1748','2017-08-02 22:50:14.481504'),(17,'users','0004_auto_20170802_1912','2017-08-03 00:12:57.629431'),(18,'users','0005_auto_20170802_1914','2017-08-03 00:14:34.617916'),(19,'users','0006_auto_20170802_2026','2017-08-03 01:26:19.487843');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-02 23:20:08
