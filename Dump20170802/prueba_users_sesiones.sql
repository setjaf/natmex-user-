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
-- Table structure for table `users_sesiones`
--

DROP TABLE IF EXISTS `users_sesiones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_sesiones` (
  `id` char(32) NOT NULL,
  `token` varchar(30) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_expiracion` datetime(6) NOT NULL,
  `id_usuario_id` char(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_sesiones_id_usuario_id_72191733_fk_users_usuarios_id` (`id_usuario_id`),
  CONSTRAINT `users_sesiones_id_usuario_id_72191733_fk_users_usuarios_id` FOREIGN KEY (`id_usuario_id`) REFERENCES `users_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_sesiones`
--

LOCK TABLES `users_sesiones` WRITE;
/*!40000 ALTER TABLE `users_sesiones` DISABLE KEYS */;
INSERT INTO `users_sesiones` VALUES ('13996576360c46fda339b2e2f59d6416','rSVC6rB5jIWxGjOeof2VGl0PQlddWP','2017-08-03 04:10:35.187202','2017-08-03 04:40:35.187260','bf3e0ebce18c46c5b5278718dd34e138'),('34f72f31945643d48313d1ca413b832d','rSVC6rB5jIWxGjOeof2VGl0PQlddWP','2017-08-03 04:15:09.901669','2017-08-03 04:45:09.901717','bf3e0ebce18c46c5b5278718dd34e138'),('414dbf7057b544d483a6a0f1f7df1488','rSVC6rB5jIWxGjOeof2VGl0PQlddWP','2017-08-03 04:15:48.460924','2017-08-03 04:45:48.461005','bf3e0ebce18c46c5b5278718dd34e138'),('5ff8f8c4bebc452ba0abd8db3af2d62a','rSVC6rB5jIWxGjOeof2VGl0PQlddWP','2017-08-03 04:09:41.459915','2017-08-03 04:39:41.459969','bf3e0ebce18c46c5b5278718dd34e138'),('c1558d96a587458cbe551281a79bd1d1','fjnkCGhzWsiyqPkORIgcMbvFEHAl0o','2017-08-03 04:18:37.257751','2017-08-03 04:48:37.257809','bf3e0ebce18c46c5b5278718dd34e138');
/*!40000 ALTER TABLE `users_sesiones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-02 23:20:09
