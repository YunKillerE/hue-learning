-- MySQL dump 10.13  Distrib 5.1.73, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: yc
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'default');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add nonce',4,'add_nonce'),(11,'Can change nonce',4,'change_nonce'),(12,'Can delete nonce',4,'delete_nonce'),(13,'Can add association',5,'add_association'),(14,'Can change association',5,'change_association'),(15,'Can delete association',5,'delete_association'),(16,'Can add user open id',6,'add_useropenid'),(17,'Can change user open id',6,'change_useropenid'),(18,'Can delete user open id',6,'delete_useropenid'),(19,'Can add content type',7,'add_contenttype'),(20,'Can change content type',7,'change_contenttype'),(21,'Can delete content type',7,'delete_contenttype'),(22,'Can add session',8,'add_session'),(23,'Can change session',8,'change_session'),(24,'Can delete session',8,'delete_session'),(25,'Can add site',9,'add_site'),(26,'Can change site',9,'change_site'),(27,'Can delete site',9,'delete_site'),(28,'Can add log entry',10,'add_logentry'),(29,'Can change log entry',10,'change_logentry'),(30,'Can delete log entry',10,'delete_logentry'),(31,'Can add migration history',11,'add_migrationhistory'),(32,'Can change migration history',11,'change_migrationhistory'),(33,'Can delete migration history',11,'delete_migrationhistory'),(34,'Can add access attempt',12,'add_accessattempt'),(35,'Can change access attempt',12,'change_accessattempt'),(36,'Can delete access attempt',12,'delete_accessattempt'),(37,'Can add access log',13,'add_accesslog'),(38,'Can change access log',13,'change_accesslog'),(39,'Can delete access log',13,'delete_accesslog'),(40,'Can add document',19,'add_document'),(41,'Can change document',19,'change_document'),(42,'Can delete document',19,'delete_document'),(43,'Can add pig script',18,'add_pigscript'),(44,'Can change pig script',18,'change_pigscript'),(45,'Can delete pig script',18,'delete_pigscript'),(46,'Can add job',20,'add_job'),(47,'Can change job',20,'change_job'),(48,'Can delete job',20,'delete_job'),(49,'Can add workflow',14,'add_workflow'),(50,'Can change workflow',14,'change_workflow'),(51,'Can delete workflow',14,'delete_workflow'),(52,'Can add link',21,'add_link'),(53,'Can change link',21,'change_link'),(54,'Can delete link',21,'delete_link'),(55,'Can add node',22,'add_node'),(56,'Can change node',22,'change_node'),(57,'Can delete node',22,'delete_node'),(58,'Can add mapreduce',23,'add_mapreduce'),(59,'Can change mapreduce',23,'change_mapreduce'),(60,'Can delete mapreduce',23,'delete_mapreduce'),(61,'Can add streaming',24,'add_streaming'),(62,'Can change streaming',24,'change_streaming'),(63,'Can delete streaming',24,'delete_streaming'),(64,'Can add java',25,'add_java'),(65,'Can change java',25,'change_java'),(66,'Can delete java',25,'delete_java'),(67,'Can add pig',26,'add_pig'),(68,'Can change pig',26,'change_pig'),(69,'Can delete pig',26,'delete_pig'),(70,'Can add hive',27,'add_hive'),(71,'Can change hive',27,'change_hive'),(72,'Can delete hive',27,'delete_hive'),(73,'Can add sqoop',28,'add_sqoop'),(74,'Can change sqoop',28,'change_sqoop'),(75,'Can delete sqoop',28,'delete_sqoop'),(76,'Can add ssh',29,'add_ssh'),(77,'Can change ssh',29,'change_ssh'),(78,'Can delete ssh',29,'delete_ssh'),(79,'Can add shell',30,'add_shell'),(80,'Can change shell',30,'change_shell'),(81,'Can delete shell',30,'delete_shell'),(82,'Can add dist cp',31,'add_distcp'),(83,'Can change dist cp',31,'change_distcp'),(84,'Can delete dist cp',31,'delete_distcp'),(85,'Can add fs',32,'add_fs'),(86,'Can change fs',32,'change_fs'),(87,'Can delete fs',32,'delete_fs'),(88,'Can add email',33,'add_email'),(89,'Can change email',33,'change_email'),(90,'Can delete email',33,'delete_email'),(91,'Can add sub workflow',34,'add_subworkflow'),(92,'Can change sub workflow',34,'change_subworkflow'),(93,'Can delete sub workflow',34,'delete_subworkflow'),(94,'Can add generic',35,'add_generic'),(95,'Can change generic',35,'change_generic'),(96,'Can delete generic',35,'delete_generic'),(97,'Can add start',36,'add_start'),(98,'Can change start',36,'change_start'),(99,'Can delete start',36,'delete_start'),(100,'Can add end',37,'add_end'),(101,'Can change end',37,'change_end'),(102,'Can delete end',37,'delete_end'),(103,'Can add kill',38,'add_kill'),(104,'Can change kill',38,'change_kill'),(105,'Can delete kill',38,'delete_kill'),(106,'Can add fork',39,'add_fork'),(107,'Can change fork',39,'change_fork'),(108,'Can delete fork',39,'delete_fork'),(109,'Can add join',40,'add_join'),(110,'Can change join',40,'change_join'),(111,'Can delete join',40,'delete_join'),(112,'Can add decision',41,'add_decision'),(113,'Can change decision',41,'change_decision'),(114,'Can delete decision',41,'delete_decision'),(115,'Can add decision end',42,'add_decisionend'),(116,'Can change decision end',42,'change_decisionend'),(117,'Can delete decision end',42,'delete_decisionend'),(118,'Can add coordinator',15,'add_coordinator'),(119,'Can change coordinator',15,'change_coordinator'),(120,'Can delete coordinator',15,'delete_coordinator'),(121,'Can add dataset',43,'add_dataset'),(122,'Can change dataset',43,'change_dataset'),(123,'Can delete dataset',43,'delete_dataset'),(124,'Can add data input',44,'add_datainput'),(125,'Can change data input',44,'change_datainput'),(126,'Can delete data input',44,'delete_datainput'),(127,'Can add data output',45,'add_dataoutput'),(128,'Can change data output',45,'change_dataoutput'),(129,'Can delete data output',45,'delete_dataoutput'),(130,'Can add bundled coordinator',46,'add_bundledcoordinator'),(131,'Can change bundled coordinator',46,'change_bundledcoordinator'),(132,'Can delete bundled coordinator',46,'delete_bundledcoordinator'),(133,'Can add bundle',16,'add_bundle'),(134,'Can change bundle',16,'change_bundle'),(135,'Can delete bundle',16,'delete_bundle'),(136,'Can add history',47,'add_history'),(137,'Can change history',47,'change_history'),(138,'Can delete history',47,'delete_history'),(139,'Can add user preferences',48,'add_userpreferences'),(140,'Can change user preferences',48,'change_userpreferences'),(141,'Can delete user preferences',48,'delete_userpreferences'),(142,'Can add settings',49,'add_settings'),(143,'Can change settings',49,'change_settings'),(144,'Can delete settings',49,'delete_settings'),(145,'Can add default configuration',50,'add_defaultconfiguration'),(146,'Can change default configuration',50,'change_defaultconfiguration'),(147,'Can delete default configuration',50,'delete_defaultconfiguration'),(148,'Can add document tag',51,'add_documenttag'),(149,'Can change document tag',51,'change_documenttag'),(150,'Can delete document tag',51,'delete_documenttag'),(151,'Can add document',52,'add_document'),(152,'Can change document',52,'change_document'),(153,'Can delete document',52,'delete_document'),(154,'Can add document permission',53,'add_documentpermission'),(155,'Can change document permission',53,'change_documentpermission'),(156,'Can delete document permission',53,'delete_documentpermission'),(157,'Can add document2',54,'add_document2'),(158,'Can change document2',54,'change_document2'),(159,'Can delete document2',54,'delete_document2'),(160,'Can add directory',54,'add_directory'),(161,'Can change directory',54,'change_directory'),(162,'Can delete directory',54,'delete_directory'),(163,'Can add document2 permission',55,'add_document2permission'),(164,'Can change document2 permission',55,'change_document2permission'),(165,'Can delete document2 permission',55,'delete_document2permission'),(166,'Can add query history',57,'add_queryhistory'),(167,'Can change query history',57,'change_queryhistory'),(168,'Can delete query history',57,'delete_queryhistory'),(169,'Can add hive server query history',57,'add_hiveserverqueryhistory'),(170,'Can change hive server query history',57,'change_hiveserverqueryhistory'),(171,'Can delete hive server query history',57,'delete_hiveserverqueryhistory'),(172,'Can add saved query',17,'add_savedquery'),(173,'Can change saved query',17,'change_savedquery'),(174,'Can delete saved query',17,'delete_savedquery'),(175,'Can add session',58,'add_session'),(176,'Can change session',58,'change_session'),(177,'Can delete session',58,'delete_session'),(178,'Can add meta install',59,'add_metainstall'),(179,'Can change meta install',59,'change_metainstall'),(180,'Can delete meta install',59,'delete_metainstall'),(181,'Can add job design',61,'add_jobdesign'),(182,'Can change job design',61,'change_jobdesign'),(183,'Can delete job design',61,'delete_jobdesign'),(184,'Can add check for setup',62,'add_checkforsetup'),(185,'Can change check for setup',62,'change_checkforsetup'),(186,'Can delete check for setup',62,'delete_checkforsetup'),(187,'Can add oozie action',63,'add_oozieaction'),(188,'Can change oozie action',63,'change_oozieaction'),(189,'Can delete oozie action',63,'delete_oozieaction'),(190,'Can add oozie design',64,'add_ooziedesign'),(191,'Can change oozie design',64,'change_ooziedesign'),(192,'Can delete oozie design',64,'delete_ooziedesign'),(193,'Can add oozie mapreduce action',65,'add_ooziemapreduceaction'),(194,'Can change oozie mapreduce action',65,'change_ooziemapreduceaction'),(195,'Can delete oozie mapreduce action',65,'delete_ooziemapreduceaction'),(196,'Can add oozie streaming action',66,'add_ooziestreamingaction'),(197,'Can change oozie streaming action',66,'change_ooziestreamingaction'),(198,'Can delete oozie streaming action',66,'delete_ooziestreamingaction'),(199,'Can add oozie java action',67,'add_ooziejavaaction'),(200,'Can change oozie java action',67,'change_ooziejavaaction'),(201,'Can delete oozie java action',67,'delete_ooziejavaaction'),(202,'Can add job history',68,'add_jobhistory'),(203,'Can change job history',68,'change_jobhistory'),(204,'Can delete job history',68,'delete_jobhistory'),(205,'Can add user profile',69,'add_userprofile'),(206,'Can change user profile',69,'change_userprofile'),(207,'Can delete user profile',69,'delete_userprofile'),(208,'Can add ldap group',70,'add_ldapgroup'),(209,'Can change ldap group',70,'change_ldapgroup'),(210,'Can delete ldap group',70,'delete_ldapgroup'),(211,'Can add group permission',71,'add_grouppermission'),(212,'Can change group permission',71,'change_grouppermission'),(213,'Can delete group permission',71,'delete_grouppermission'),(214,'Can add hue permission',72,'add_huepermission'),(215,'Can change hue permission',72,'change_huepermission'),(216,'Can delete hue permission',72,'delete_huepermission');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1100714 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$cn1dYQfvOJNZ$GgzgMfhjNbi9/dRcXQr3hc3M+m6a/VvWKhOomWF0NDk=','2017-06-29 19:54:20',1,'root','','','',0,1,'2017-06-12 21:00:05'),(1100713,'!','2017-06-28 22:52:04',0,'hue','','','',0,0,'2017-06-28 22:52:04');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,1,1),(2,1100713,1);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accessattempt`
--

DROP TABLE IF EXISTS `axes_accessattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `axes_accessattempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime NOT NULL,
  `get_data` longtext NOT NULL,
  `post_data` longtext NOT NULL,
  `failures_since_start` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accessattempt`
--

LOCK TABLES `axes_accessattempt` WRITE;
/*!40000 ALTER TABLE `axes_accessattempt` DISABLE KEYS */;
INSERT INTO `axes_accessattempt` VALUES (1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.248','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-12 21:00:06','','username=root\ncsrfmiddlewaretoken=5INjpGEg7EaxyL22zKJSG6ZMevxGZOlx\nnext=/',0),(2,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 22:51:28','','username=root\ncsrfmiddlewaretoken=0YheWYo4nr7Bo04I4pfjjhTgSlMSPkFJ\nnext=/',0),(3,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0','192.168.8.211','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 07:56:38','','username=root\ncsrfmiddlewaretoken=JaAmgVg4xR4QsDpxW4mJtwIkddXYW6Bt\nnext=/',0);
/*!40000 ALTER TABLE `axes_accessattempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `axes_accesslog`
--

DROP TABLE IF EXISTS `axes_accesslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `axes_accesslog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_agent` varchar(255) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `trusted` tinyint(1) NOT NULL,
  `http_accept` varchar(1025) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `attempt_time` datetime NOT NULL,
  `logout_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `axes_accesslog`
--

LOCK TABLES `axes_accesslog` WRITE;
/*!40000 ALTER TABLE `axes_accesslog` DISABLE KEYS */;
INSERT INTO `axes_accesslog` VALUES (1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.248','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-12 21:00:06',NULL),(2,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 22:51:28',NULL),(3,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 23:11:16',NULL),(4,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 23:17:25',NULL),(5,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 23:27:24',NULL),(6,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 23:29:11',NULL),(7,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-28 23:33:44',NULL),(8,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:54.0) Gecko/20100101 Firefox/54.0','192.168.8.211','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 07:56:38',NULL),(9,'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 18:54:50',NULL),(10,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-29 19:03:09',NULL),(11,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36','192.168.8.211','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8','/accounts/login/','2017-06-29 19:27:08',NULL),(12,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.4','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 19:30:38',NULL),(13,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.4','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 19:53:54',NULL),(14,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_5) AppleWebKit/603.2.4 (KHTML, like Gecko) Version/10.1.1 Safari/603.2.4','192.168.8.212','root',1,'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8','/accounts/login/','2017-06-29 19:54:20',NULL);
/*!40000 ALTER TABLE `axes_accesslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_metainstall`
--

DROP TABLE IF EXISTS `beeswax_metainstall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_metainstall` (
  `installed_example` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_metainstall`
--

LOCK TABLES `beeswax_metainstall` WRITE;
/*!40000 ALTER TABLE `beeswax_metainstall` DISABLE KEYS */;
/*!40000 ALTER TABLE `beeswax_metainstall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_queryhistory`
--

DROP TABLE IF EXISTS `beeswax_queryhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_queryhistory` (
  `submission_date` datetime NOT NULL,
  `last_state` int(11) NOT NULL,
  `server_id` varchar(1024) DEFAULT NULL,
  `log_context` varchar(1024) DEFAULT NULL,
  `design_id` int(11) DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `query` longtext NOT NULL,
  `has_results` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notify` tinyint(1) NOT NULL,
  `server_name` varchar(128) NOT NULL,
  `server_host` varchar(128) NOT NULL,
  `server_port` int(10) unsigned NOT NULL,
  `server_type` varchar(128) NOT NULL,
  `server_guid` varchar(1024) DEFAULT NULL,
  `operation_type` smallint(6) DEFAULT NULL,
  `modified_row_count` double DEFAULT NULL,
  `statement_number` smallint(6) NOT NULL,
  `query_type` smallint(6) NOT NULL,
  `is_redacted` tinyint(1) NOT NULL,
  `extra` longtext NOT NULL,
  `is_cleared` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_queryhistory_bfe02e93` (`last_state`),
  KEY `beeswax_queryhistory_38ebade8` (`design_id`),
  KEY `beeswax_queryhistory_cb902d83` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_queryhistory`
--

LOCK TABLES `beeswax_queryhistory` WRITE;
/*!40000 ALTER TABLE `beeswax_queryhistory` DISABLE KEYS */;
INSERT INTO `beeswax_queryhistory` VALUES ('2017-06-29 19:27:10',1,'o9KXh8l2TwyvHDZLQnMZmA==\n',NULL,NULL,1,'SELECT \'Hello World!\'',1,1,0,'beeswax','zjdw-pre0065',10000,'hiveserver2','kVPYfkvZSvOzZI2hnMFVeQ==\n',0,NULL,0,0,0,'{}',0),('2017-06-29 19:27:11',1,'azaBCNpyTUsAAAAADBTcYw==\n',NULL,NULL,1,'SELECT \'Hello World!\'',1,2,0,'impala','zjdw-pre0065',21050,'hiveserver2','azaBCNpyTUsAAAAADBTcYw==\n',0,NULL,0,0,0,'{}',0),('2017-06-29 19:53:57',1,'RMRqru4HQRSym5iDKDilpQ==\n',NULL,NULL,1,'SELECT \'Hello World!\'',1,3,0,'beeswax','zjdw-pre0065',10000,'hiveserver2','Jk0lK1OrQmO2ghLkfoB88w==\n',0,NULL,0,0,0,'{}',0),('2017-06-29 19:53:58',1,'5banuG+VS0IAAAAA7BYXNg==\n',NULL,NULL,1,'SELECT \'Hello World!\'',1,4,0,'impala','zjdw-pre0065',21050,'hiveserver2','5banuG+VS0IAAAAA7BYXNg==\n',0,NULL,0,0,0,'{}',0);
/*!40000 ALTER TABLE `beeswax_queryhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_savedquery`
--

DROP TABLE IF EXISTS `beeswax_savedquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_savedquery` (
  `name` varchar(80) NOT NULL,
  `type` int(11) NOT NULL,
  `is_auto` tinyint(1) NOT NULL,
  `mtime` datetime NOT NULL,
  `owner_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc` longtext NOT NULL,
  `is_trashed` tinyint(1) NOT NULL,
  `is_redacted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_savedquery_db558b3c` (`is_auto`),
  KEY `beeswax_savedquery_cb902d83` (`owner_id`),
  KEY `beeswax_savedquery_863b5435` (`is_trashed`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_savedquery`
--

LOCK TABLES `beeswax_savedquery` WRITE;
/*!40000 ALTER TABLE `beeswax_savedquery` DISABLE KEYS */;
INSERT INTO `beeswax_savedquery` VALUES ('Sample: Top salary',1,0,'2017-06-28 22:57:14',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"type\": 1, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',1,'Top salary 2007 above $100k',0,0),('Sample: Salary growth',1,0,'2017-06-28 22:57:14',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"type\": 1, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',2,'Salary growth (sorted) from 2007-08',0,0),('Sample: Job loss',1,0,'2017-06-28 22:57:14',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\nLIMIT 1000\", \"type\": 0, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',3,'Job loss among the top earners 2007-08',0,0),('Sample: Customers',1,0,'2017-06-28 22:57:14',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"-- Get email survey opt-in values for all customers \\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  c.id,\\r\\n  c.name\\r\\nFROM customers c, c.addresses a\\r\\nWHERE a.key = \'shipping\' and a.zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n c.name AS customer_name,\\r\\n  o.order_id,\\r\\n  v.total\\r\\nFROM\\r\\n  customers c,\\r\\n  c.orders o,\\r\\n  (SELECT SUM(price * qty) total FROM o.items) v;\", \"type\": 1, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',4,'Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order',0,0),('Sample: Top salary',0,0,'2017-06-28 22:58:02',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"type\": 0, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',5,'Top salary 2007 above $100k',0,0),('Sample: Salary growth',0,0,'2017-06-28 22:58:02',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"type\": 0, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',6,'Salary growth (sorted) from 2007-08',0,0),('Sample: Job loss',0,0,'2017-06-28 22:58:02',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\nLIMIT 1000\", \"type\": 0, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',7,'Job loss among the top earners 2007-08',0,0),('Sample: Customers',0,0,'2017-06-28 22:58:02',1100713,'{\"query\": {\"email_notify\": false, \"query\": \"-- Get email survey opt-in values for all customers\\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  customers.id,\\r\\n  customers.name\\r\\nFROM customers\\r\\nWHERE customers.addresses[\'shipping\'].zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n  c.name AS customer_name,\\r\\n  ords.order_id AS order_id,\\r\\n  SUM(order_items.price * order_items.qty) AS total_amount\\r\\nFROM\\r\\n  customers c\\r\\nLATERAL VIEW EXPLODE(c.orders) o AS ords\\r\\nLATERAL VIEW EXPLODE(ords.items) i AS order_items\\r\\nGROUP BY c.id, c.name, ords.order_id;\", \"type\": 0, \"is_parameterized\": false, \"database\": \"default\"}, \"functions\": [], \"VERSION\": \"0.4.1\", \"file_resources\": [], \"settings\": []}',8,'Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order',0,0);
/*!40000 ALTER TABLE `beeswax_savedquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beeswax_session`
--

DROP TABLE IF EXISTS `beeswax_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beeswax_session` (
  `last_used` datetime NOT NULL,
  `status_code` smallint(5) unsigned NOT NULL,
  `server_protocol_version` smallint(6) NOT NULL,
  `secret` longtext NOT NULL,
  `owner_id` int(11) NOT NULL,
  `guid` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(128) NOT NULL,
  `properties` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `beeswax_session_cdfd3889` (`last_used`),
  KEY `beeswax_session_cb902d83` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beeswax_session`
--

LOCK TABLES `beeswax_session` WRITE;
/*!40000 ALTER TABLE `beeswax_session` DISABLE KEYS */;
INSERT INTO `beeswax_session` VALUES ('2017-06-12 23:53:05',4,6,'JMuiOBbSQPW+vV+H2Qdw8g==\n',1,'D+DJ8mmvQBS/QRyUnWh3Tg==\n',1,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-28 22:51:32',4,6,'EKb7H34lQbyLsbxfnSc4aA==\n',1,'4YXba3dcT4CeATulDOPTaw==\n',2,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-28 23:17:29',4,6,'nYmorV2CTWuYJY78g+rn6g==\n',1,'3aX5dlO6RKmdKvNSkAAD5w==\n',3,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-28 23:00:26',4,5,'0rl6f7uLQfaffvFNGdBfPQ==\n',1,'dqsYExXAT0G7TlA0uryUmA==\n',4,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-28 23:00:56',4,5,'QrU6ofXKQIarz1tP/StbHQ==\n',1,'Au+e5H5bSSmMXIqDWmiy4A==\n',5,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-28 23:17:30',4,5,'agr1GcSiQ4eNZBoDnzTU6g==\n',1,'jiZqaHvrRBSkSQ0AypA+fg==\n',6,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-28 23:29:15',4,6,'lvc8kmy7S/mlWcHxFHPcqA==\n',1,'fZJTgLX0Ruan8k330yXO5Q==\n',7,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-28 23:29:16',4,5,'aUNDHuqCTQKumjQgYAgD0Q==\n',1,'t3VOmq+CQ1mJRzvDWmHpzQ==\n',8,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-29 19:53:57',4,6,'0vAg4WztSk2Bq45wMEP6eQ==\n',1,'1o6XNObhTtqml6yYTFoAUQ==\n',9,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-29 02:50:10',4,5,'//SsSf8pRICQGdp99iJ/fA==\n',1,'qn30TIX/TK+uka9qC5vbCA==\n',10,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-29 07:56:49',4,5,'JeRxstfkST+1CDjIM+T39Q==\n',1,'9At+ELv3TJ+WPhEfH+X2Pw==\n',11,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-29 18:54:55',4,5,'kivlRtnXRlWAG0Pbvw5yJw==\n',1,'QsYCcu31Rfqm7zBVwU8ovQ==\n',12,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-29 19:53:58',4,5,'e+3lKd6CSvqZeVQ2rwWvzg==\n',1,'qp05OCEXR8ihyRKNt+qSxw==\n',13,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}'),('2017-06-29 19:53:57',0,6,'fvPAxJQgQ/a/iMWkwZqWFA==\n',1,'m99EJb+iQF2cfS+76yR0hQ==\n',14,'beeswax','{\"hive.exec.compress.output\": \"false\", \"hive.execution.engine\": \"mr\", \"hive.exec.parallel\": \"false\", \"mapreduce.job.queuename\": \"default\", \"hive.map.aggr\": \"true\"}'),('2017-06-29 19:53:58',0,5,'caKH2jjDQc+TgQlZDn10Pw==\n',1,'jU1OvEYGT2ivBIsHAvNbyQ==\n',15,'impala','{\"RUNTIME_BLOOM_FILTER_SIZE\": \"1048576\", \"DECIMAL_V2\": \"0\", \"QUERY_TIMEOUT_S\": \"0\", \"RM_INITIAL_MEM\": \"0\", \"HBASE_CACHE_BLOCKS\": \"0\", \"SCHEDULE_RANDOM_REPLICA\": \"0\", \"DEFAULT_ORDER_BY_LIMIT\": \"-1\", \"REPLICA_PREFERENCE\": \"0\", \"RUNTIME_FILTER_MODE\": \"2\", \"HBASE_CACHING\": \"0\", \"DISABLE_CODEGEN\": \"0\", \"S3_SKIP_INSERT_STAGING\": \"1\", \"ABORT_ON_ERROR\": \"0\", \"PREFETCH_MODE\": \"1\", \"MAX_SCAN_RANGE_LENGTH\": \"0\", \"PARQUET_FILE_SIZE\": \"0\", \"DISABLE_STREAMING_PREAGGREGATIONS\": \"0\", \"COMPRESSION_CODEC\": \"NONE\", \"DISABLE_ROW_RUNTIME_FILTERING\": \"0\", \"DISABLE_OUTERMOST_TOPN\": \"0\", \"MAX_BLOCK_MGR_MEMORY\": \"0\", \"STRICT_MODE\": \"0\", \"BATCH_SIZE\": \"0\", \"NUM_NODES\": \"0\", \"MT_DOP\": \"0\", \"RUNTIME_FILTER_MIN_SIZE\": \"1048576\", \"PARQUET_FALLBACK_SCHEMA_RESOLUTION\": \"0\", \"ALLOW_UNSUPPORTED_FORMATS\": \"0\", \"MEM_LIMIT\": \"0\", \"http_addr\": \"zjdw-pre0065:25000\", \"RUNTIME_FILTER_MAX_SIZE\": \"16777216\", \"NUM_SCANNER_THREADS\": \"0\", \"SCAN_NODE_CODEGEN_THRESHOLD\": \"1800000\", \"MAX_NUM_RUNTIME_FILTERS\": \"10\", \"EXPLAIN_LEVEL\": \"1\", \"SCRATCH_LIMIT\": \"-1\", \"SEQ_COMPRESSION_MODE\": \"0\", \"MAX_ERRORS\": \"0\", \"MAX_IO_BUFFERS\": \"0\", \"RUNTIME_FILTER_WAIT_TIME_MS\": \"0\", \"DEBUG_ACTION\": \"\", \"PARQUET_ARRAY_RESOLUTION\": \"2\", \"DISABLE_UNSAFE_SPILLS\": \"0\", \"RESERVATION_REQUEST_TIMEOUT\": \"0\", \"SYNC_DDL\": \"0\", \"PARQUET_ANNOTATE_STRINGS_UTF8\": \"0\", \"DISABLE_CACHED_READS\": \"0\", \"ABORT_ON_DEFAULT_LIMIT_EXCEEDED\": \"0\", \"APPX_COUNT_DISTINCT\": \"0\", \"V_CPU_CORES\": \"0\", \"OPTIMIZE_PARTITION_KEY_SCANS\": \"0\", \"REQUEST_POOL\": \"\", \"EXEC_SINGLE_NODE_ROWS_THRESHOLD\": \"100\", \"ENABLE_EXPR_REWRITES\": \"1\"}');
/*!40000 ALTER TABLE `beeswax_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `defaultconfiguration_groups`
--

DROP TABLE IF EXISTS `defaultconfiguration_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `defaultconfiguration_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `defaultconfiguration_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `defaultconfigurati_defaultconfiguration_id_13559ffa29a523a_uniq` (`defaultconfiguration_id`,`group_id`),
  KEY `defaultconfiguration_groups_3c818360` (`defaultconfiguration_id`),
  KEY `defaultconfiguration_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `defaultconfiguration_groups`
--

LOCK TABLES `defaultconfiguration_groups` WRITE;
/*!40000 ALTER TABLE `defaultconfiguration_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `defaultconfiguration_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_defaultconfiguration`
--

DROP TABLE IF EXISTS `desktop_defaultconfiguration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_defaultconfiguration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) NOT NULL,
  `properties` longtext NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_defaultconfiguration_60fc113e` (`app`),
  KEY `desktop_defaultconfiguration_d2c4b3f2` (`is_default`),
  KEY `desktop_defaultconfiguration_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_defaultconfiguration`
--

LOCK TABLES `desktop_defaultconfiguration` WRITE;
/*!40000 ALTER TABLE `desktop_defaultconfiguration` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_defaultconfiguration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document`
--

DROP TABLE IF EXISTS `desktop_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document` (
  `description` longtext NOT NULL,
  `extra` longtext NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  `last_modified` datetime NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `version` smallint(6) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document_content_type_id_24066d293ce4f1bf_uniq` (`content_type_id`,`object_id`),
  KEY `desktop_document_5ccb38e5` (`last_modified`),
  KEY `desktop_document_37ef4eb4` (`content_type_id`),
  KEY `desktop_document_cb902d83` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document`
--

LOCK TABLES `desktop_document` WRITE;
/*!40000 ALTER TABLE `desktop_document` DISABLE KEYS */;
INSERT INTO `desktop_document` VALUES ('','',3,'2017-06-28 23:03:15',54,1,1100713,1,''),('','',4,'2017-06-28 23:03:15',54,1,1100713,2,'.Trash'),('','',5,'2017-06-28 23:03:15',54,1,1100713,3,'examples'),('','',1,'2017-06-28 22:52:04',54,1,1,4,''),('','',2,'2017-06-28 22:52:04',54,1,1,5,'.Trash'),('Web Logs','search-dashboard',6,'2017-06-29 03:09:44',54,1,1100713,6,'Web Logs'),('Yelp Reviews','search-dashboard',8,'2017-06-28 23:03:15',54,1,1100713,7,'Yelp Reviews'),('Twitter','search-dashboard',7,'2017-06-28 23:03:15',54,1,1100713,8,'Twitter'),('Top salary 2007 above $100k','1',1,'2017-06-28 23:03:15',17,1,1100713,9,'Sample: Top salary'),('Salary growth (sorted) from 2007-08','1',2,'2017-06-28 23:03:15',17,1,1100713,10,'Sample: Salary growth'),('Job loss among the top earners 2007-08','1',3,'2017-06-28 23:03:15',17,1,1100713,11,'Sample: Job loss'),('Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','1',4,'2017-06-28 23:03:15',17,1,1100713,12,'Sample: Customers'),('Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','',12,'2017-06-28 23:03:15',54,1,1100713,13,'Sample: Customers'),('Job loss among the top earners 2007-08','',11,'2017-06-28 23:03:15',54,1,1100713,14,'Sample: Job loss'),('Salary growth (sorted) from 2007-08','',10,'2017-06-28 23:03:15',54,1,1100713,15,'Sample: Salary growth'),('Top salary 2007 above $100k','',9,'2017-06-28 23:03:15',54,1,1100713,16,'Sample: Top salary'),('Run Spark Python, Scala and SQL snippets with graphs','notebook',13,'2017-06-28 23:03:15',54,1,1100713,17,'Sample Notebook'),('Top salary 2007 above $100k','0',5,'2017-06-28 23:03:15',17,1,1100713,18,'Sample: Top salary'),('Salary growth (sorted) from 2007-08','0',6,'2017-06-28 23:03:15',17,1,1100713,19,'Sample: Salary growth'),('Job loss among the top earners 2007-08','0',7,'2017-06-28 23:03:15',17,1,1100713,20,'Sample: Job loss'),('Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','0',8,'2017-06-28 23:03:15',17,1,1100713,21,'Sample: Customers'),('Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','',17,'2017-06-28 23:03:15',54,1,1100713,22,'Sample: Customers'),('Job loss among the top earners 2007-08','',16,'2017-06-29 02:45:37',54,1,1100713,23,'Sample: Job loss'),('Salary growth (sorted) from 2007-08','',15,'2017-06-28 23:03:15',54,1,1100713,24,'Sample: Salary growth'),('Top salary 2007 above $100k','',14,'2017-06-28 23:03:15',54,1,1100713,25,'Sample: Top salary'),('Run Spark Python, Scala and SQL snippets with graphs','notebook',20,'2017-06-28 23:01:00',54,1,1,26,'Yunchen Notebook'),('Example of Shell action','jobsub',1,'2017-06-28 23:03:15',14,1,1100713,36,'Shell'),('Example of Fs action','jobsub',2,'2017-06-28 23:03:15',14,1,1100713,37,'Fs'),('Example of Sqoop action','jobsub',3,'2017-06-28 23:03:15',14,1,1100713,38,'Sqoop'),('Example of SSH action','jobsub',4,'2017-06-28 23:03:15',14,1,1100713,39,'Ssh'),('Example of Hive action','jobsub',5,'2017-06-28 23:03:15',14,1,1100713,40,'Hive'),('Example of Email action','jobsub',6,'2017-06-28 23:03:15',14,1,1100713,41,'Email'),('Example of DistCp action','jobsub',7,'2017-06-28 23:03:15',14,1,1100713,42,'DistCp'),('Example of Pig action','jobsub',8,'2017-06-28 23:03:15',14,1,1100713,43,'Pig'),('Example of MapReduce action that sleeps','jobsub',9,'2017-06-28 23:03:15',14,1,1100713,44,'MapReduce'),('Run a MapReduce job that sleeps for N seconds','workflow2',49999,'2017-06-28 23:03:15',54,1,1100713,45,'MapReduce Sleep jobs'),('Run a Pig script and a Sub-workflow in parallel','workflow2',50006,'2017-06-28 23:03:15',54,1,1100713,46,'Fork Example'),('Aggregate two coordinators that copy files and run them together','bundle2',50004,'2017-06-28 23:03:15',54,1,1100713,47,'Copy Files'),('Copy everyday from files with a Spark job','coordinator2',50003,'2017-06-28 23:03:15',54,1,1100713,48,'My Coordinator'),('Run Hive script with HiveServer2','workflow2',50001,'2017-06-28 23:03:15',54,1,1100713,49,'Hive SQL'),('Copy a file by launching a Spark Java program','workflow2',50000,'2017-06-28 23:03:15',54,1,1100713,50,'Spark'),('Example of DistCp action','',50013,'2017-06-28 23:03:15',54,1,1100713,51,'DistCp'),('Example of Email action','',50012,'2017-06-28 23:03:15',54,1,1100713,52,'Email'),('Example of Fs action','',50008,'2017-06-28 23:03:15',54,1,1100713,53,'Fs'),('Example of Hive action','',50011,'2017-06-28 23:03:15',54,1,1100713,54,'Hive'),('Example of MapReduce action that sleeps','',50015,'2017-06-28 23:03:15',54,1,1100713,55,'MapReduce'),('Example of Pig action','',50014,'2017-06-28 23:03:15',54,1,1100713,56,'Pig'),('Example of Shell action','',50007,'2017-06-28 23:03:15',54,1,1100713,57,'Shell'),('Example of Sqoop action','',50009,'2017-06-28 23:03:15',54,1,1100713,58,'Sqoop'),('Example of SSH action','',50010,'2017-06-28 23:03:15',54,1,1100713,59,'Ssh'),('','query-hive',50016,'2017-06-29 02:42:17',54,1,1,60,'Sample: Job loss'),('','query-hive',50017,'2017-06-29 02:44:12',54,1,1,61,'Sample: Job loss'),('xxxxx','query-hive',50018,'2017-06-29 02:46:05',54,1,1,62,'yunchen');
/*!40000 ALTER TABLE `desktop_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2`
--

DROP TABLE IF EXISTS `desktop_document2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `type` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `extra` longtext NOT NULL,
  `last_modified` datetime NOT NULL,
  `version` smallint(6) NOT NULL,
  `is_history` tinyint(1) NOT NULL,
  `parent_directory_id` int(11) DEFAULT NULL,
  `search` longtext,
  `is_managed` tinyint(1) NOT NULL,
  `is_trashed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2_uuid_71ec93c81d6e68e7_uniq` (`uuid`,`version`,`is_history`),
  KEY `desktop_document2_cb902d83` (`owner_id`),
  KEY `desktop_document2_6f6e1b62` (`uuid`),
  KEY `desktop_document2_403d8ff3` (`type`),
  KEY `desktop_document2_5ccb38e5` (`last_modified`),
  KEY `desktop_document2_f516c2b3` (`version`),
  KEY `desktop_document2_dd08191e` (`is_history`),
  KEY `desktop_document2_9ffde453` (`parent_directory_id`),
  KEY `desktop_document2_0f116c0b` (`is_managed`),
  KEY `desktop_document2_863b5435` (`is_trashed`)
) ENGINE=InnoDB AUTO_INCREMENT=50019 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2`
--

LOCK TABLES `desktop_document2` WRITE;
/*!40000 ALTER TABLE `desktop_document2` DISABLE KEYS */;
INSERT INTO `desktop_document2` VALUES (1,1,'','','7e11b581-246f-42ab-9f45-04683ccb0341','directory','{}','','2017-06-12 23:56:07',1,0,NULL,NULL,0,0),(2,1,'.Trash','','7727ac2b-e61d-4083-a877-29b5d123ff89','directory','{}','','2017-06-12 23:56:07',1,0,1,NULL,0,0),(3,1100713,'','','53ecb022-40e4-4ecd-b940-46b96930e212','directory','{}','','2017-06-28 22:52:04',1,0,NULL,NULL,0,NULL),(4,1100713,'.Trash','','04b8f65a-a4e4-45d1-9324-833fc04011f8','directory','{}','','2017-06-28 22:52:04',1,0,3,NULL,0,NULL),(5,1100713,'examples','','0084a116-5f97-4cc8-a89e-dcfc12464c41','directory','{}','','2017-06-28 22:52:04',1,0,3,NULL,0,NULL),(6,1100713,'Web Logs','Web Logs','993de770-3bd3-47f5-86f8-b9f478f3e99c','search-dashboard','{\"autocomplete\": false, \"layout\": [{\"klass\": \"card card-home card-column span2\", \"rows\": [{\"widgets\": [{\"name\": \"Marker Map\", \"widgetType\": \"leafletmap-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"3ecde57b-221d-37f9-4ddc-93f7a74ca10d\", \"size\": 12}], \"id\": \"7226a68b-38ed-5f4b-b397-ff7fcfb55f31\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"987350ba-6489-ed6d-c90c-514da451505e\", \"size\": 12}], \"id\": \"d5e641b8-21d9-c37a-b10c-613a0541b9ea\", \"columns\": []}, {\"widgets\": [{\"name\": \"Bar Chart\", \"widgetType\": \"bar-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"06412dff-523c-0acf-c23c-bb76b3963c97\", \"size\": 12}], \"id\": \"b87d60fe-9c4a-40c2-a67d-21d67a7b7679\", \"columns\": []}, {\"widgets\": [{\"name\": \"Pie Chart\", \"widgetType\": \"pie-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"ad8a5a29-fc05-5210-70d1-33dcac4dfd1b\", \"size\": 12}], \"id\": \"adc008a9-0ab1-e1dc-c32d-d8152d8273a1\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"40d63042-e4cd-27b0-670b-1ef377854293\", \"size\": 12}], \"id\": \"909628db-181c-a886-ae44-e69f7ba0cc9e\", \"columns\": []}, {\"widgets\": [{\"name\": \"Pie Chart\", \"widgetType\": \"pie-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"af13439e-af3d-9c96-6a29-725df22ceb7e\", \"size\": 12}], \"id\": \"600d5fc0-68ee-1517-c402-c9e7e326c407\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"0180e6f0-8d10-6dec-72ff-0697984c4aa5\", \"size\": 12}], \"id\": \"f2332c83-8d68-af93-a022-c9b78611d589\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"ad535c3a-222c-8def-cfa0-d29a7f543e2b\", \"size\": 12}], \"id\": \"f9ff84ef-6054-a79b-61bb-caa610da97e2\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"51415e65-6866-0085-20a8-f7cd08c8c97e\", \"size\": 12}], \"id\": \"fa51e44e-2bab-4cd3-7663-c1823adc55f9\", \"columns\": []}], \"id\": \"a4bf563e-c2ae-a7ea-7164-8fa854f4fd1e\", \"drops\": [\"temp\"], \"size\": 2}, {\"klass\": \"card card-home card-column span10\", \"rows\": [{\"widgets\": [{\"name\": \"Filter Bar\", \"widgetType\": \"filter-widget\", \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"69fd15ef-b61d-5c94-4e90-7c8a761191e2\", \"size\": 12}], \"id\": \"6e162634-dc9f-a492-a6c7-c68bf5ce6e7b\", \"columns\": []}, {\"widgets\": [{\"name\": \"Histogram\", \"widgetType\": \"histogram-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"44a883ac-78df-30fd-5fa8-394120dce6b9\", \"size\": 12}], \"id\": \"f1d87313-3841-a7a0-7463-2b174dec35be\", \"columns\": []}, {\"widgets\": [{\"name\": \"Map\", \"widgetType\": \"map-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span4\", \"id\": \"89753738-5329-d49f-dcbf-bf71a48d1e24\", \"size\": 4}, {\"name\": \"Map\", \"widgetType\": \"map-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span4\", \"id\": \"eb93e270-abae-49c9-8684-bd88feb0b9dc\", \"size\": 4}, {\"name\": \"Map\", \"widgetType\": \"map-widget\", \"hasBeenSelected\": true, \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span4\", \"id\": \"4ab92797-319f-b9c6-9645-c56e157f5077\", \"size\": 4}], \"id\": \"e62748aa-647f-130c-2a8a-8741965ea87d\", \"columns\": []}, {\"widgets\": [{\"name\": \"Grid Results\", \"widgetType\": \"resultset-widget\", \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"52f07188-f30f-1296-2450-f77e02e1a5c0\", \"size\": 12}], \"id\": \"06c60faf-6015-1231-4fcd-fed32bd5ad73\", \"columns\": []}, {\"widgets\": [{\"name\": \"Heatmap\", \"widgetType\": \"heatmap-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span6\", \"id\": \"24833957-e525-2601-ed45-14bd88c57b6d\", \"size\": 6}, {\"name\": \"Map\", \"widgetType\": \"map-widget\", \"hasBeenSelected\": true, \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span6\", \"id\": \"c8b26fb2-7898-0064-1123-b8be45bc4344\", \"size\": 6}], \"id\": \"51f12b36-bd23-0064-29ea-f17a89d3d504\", \"columns\": []}, {\"widgets\": [{\"name\": \"Tree\", \"widgetType\": \"tree-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"68bd1dde-0052-e566-35bc-c032bfeda963\", \"size\": 12}], \"id\": \"3765228e-d9a8-9bd7-77fb-feba10f3c86d\", \"columns\": []}, {\"widgets\": [{\"name\": \"Bar Chart\", \"widgetType\": \"bar-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span3\", \"id\": \"42b6d6ee-a118-cd6e-cbc4-0a8b6b43d8a6\", \"size\": 3}, {\"name\": \"Bar Chart\", \"widgetType\": \"bar-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span3\", \"id\": \"f90b1987-095e-820d-f97a-0f0c76f98e51\", \"size\": 3}, {\"name\": \"Pie Chart\", \"widgetType\": \"pie-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span3\", \"id\": \"d99e5907-73cb-05bf-c9c1-884b2fd8f951\", \"size\": 3}], \"id\": \"48fd4909-8c49-f03a-9e93-dba7ddc1e902\", \"columns\": []}], \"id\": \"b3c66426-4642-dfdc-6c65-4ed15d9e2fd4\", \"drops\": [\"temp\"], \"size\": 10}], \"collection\": {\"autorefreshSeconds\": 60, \"newQDefinitionName\": \"\", \"id\": 6, \"availableFacetFields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"app\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"bytes\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"city\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"client_ip\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_code3\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"device_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"extension\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdouble\", \"name\": \"latitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdouble\", \"name\": \"longitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"method\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"os_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"os_major\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"protocol\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_general\", \"name\": \"record\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"referer\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"region_code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"request\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"subapp\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdate\", \"name\": \"time\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"url\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_general\", \"name\": \"user_agent\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"user_agent_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"user_agent_major\"}], \"timeFilter\": {\"from\": \"\", \"truncate\": true, \"field\": \"time\", \"value\": \"all\", \"to\": \"\", \"type\": \"rolling\"}, \"uuid\": \"993de770-3bd3-47f5-86f8-b9f478f3e99c\", \"suggest\": {\"enabled\": false, \"dictionary\": \"\"}, \"label\": \"Web Logs\", \"selectedDocument\": {}, \"qdefinitions\": [], \"template\": {\"extracode\": \"&lt;style type=&quot;text/css&quot;&gt;\\nem {\\n  font-weight: bold;\\n  background-color: yellow;\\n}&lt;/style&gt;\\n&lt;/script&gt;&lt;/script&gt;\", \"rows\": 40, \"showFieldList\": true, \"template\": \"\\n      <div class=\\\"row-fluid\\\">\\n        <div class=\\\"row-fluid\\\">\\n          <div class=\\\"span12\\\">{{_version_}} {{app}} {{bytes}} {{city}} {{client_ip}} {{code}} {{country_code}} {{country_code3}} {{country_name}} {{device_family}} {{extension}} {{latitude}} {{longitude}} {{method}} {{os_family}} {{os_major}} {{protocol}} {{record}} {{referer}} {{region_code}} {{request}} {{subapp}} {{time}} {{url}} {{user_agent}} {{user_agent_family}} {{user_agent_major}} {{id}}</div>\\n        </div>\\n        <br/>\\n      </div>\", \"fieldsSelected\": [\"code\", \"request\", \"country_name\", \"bytes\", \"app\"], \"showChart\": false, \"showGrid\": true, \"leafletmap\": {\"latitudeField\": \"latitude\", \"longitudeField\": \"longitude\", \"labelField\": \"\"}, \"highlighting\": [\"\"], \"isGridLayout\": true, \"fieldsAttributes\": [{\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"app\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"city\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"client_ip\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"country_code\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"country_code3\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"country_name\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"device_family\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"extension\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"method\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"os_family\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"os_major\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"protocol\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"referer\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"region_code\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"request\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"subapp\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"url\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"user_agent_family\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"user_agent_major\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"string\", \"name\": \"id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"long\", \"name\": \"_version_\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"tint\", \"name\": \"bytes\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"tint\", \"name\": \"code\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"tdouble\", \"name\": \"latitude\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"tdouble\", \"name\": \"longitude\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"text_general\", \"name\": \"record\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"tdate\", \"name\": \"time\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"type\": \"text_general\", \"name\": \"user_agent\"}], \"chartSettings\": {\"chartSorting\": \"none\", \"chartData\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartScatterGroup\": null, \"chartYMulti\": [], \"chartType\": \"bars\"}, \"properties\": {\"highlighting_enabled\": true}}, \"engine\": \"solr\", \"idField\": \"\", \"description\": \"Web Logs\", \"widgetType\": \"resultset-widget\", \"queryResult\": {\"status\": \"running\", \"saveResultsModalVisible\": false, \"hasResultset\": true, \"progress\": 0, \"type\": \"solr\", \"id\": \"accac124-f76f-ba7f-e379-a24dddc05866\"}, \"name\": \"log_analytics_demo\", \"fields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"app\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"bytes\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"city\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"client_ip\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_code3\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"country_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"device_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"extension\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdouble\", \"name\": \"latitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdouble\", \"name\": \"longitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"method\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"os_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"os_major\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"protocol\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_general\", \"name\": \"record\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"referer\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"region_code\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"request\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"subapp\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdate\", \"name\": \"time\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"url\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_general\", \"name\": \"user_agent\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"user_agent_family\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"user_agent_major\"}], \"facets\": [{\"widgetType\": \"map-widget\", \"id\": \"89753738-5329-d49f-dcbf-bf71a48d1e24\", \"field\": \"country_code3\", \"label\": \"country_code3\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"facets\": [], \"facets_form\": {\"mincount\": 1, \"limit\": 5, \"field\": \"\"}, \"limit\": 100, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"mincount\": 1, \"scope\": \"world\", \"canRange\": false}}, {\"widgetType\": \"pie-widget\", \"id\": \"ad8a5a29-fc05-5210-70d1-33dcac4dfd1b\", \"field\": \"extension\", \"label\": \"extension\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"987350ba-6489-ed6d-c90c-514da451505e\", \"field\": \"country_name\", \"label\": \"country_name\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"40d63042-e4cd-27b0-670b-1ef377854293\", \"field\": \"bytes\", \"label\": \"bytes\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"andUp\": false, \"isDate\": false, \"end\": 9045352, \"min\": 0, \"max\": 9045352, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"gap\": 900000, \"start\": 0, \"initial_gap\": 900000, \"limit\": 10, \"stacked\": false, \"initial_end\": 9045352, \"mincount\": 0, \"initial_start\": 0, \"canRange\": true}}, {\"widgetType\": \"pie-widget\", \"id\": \"af13439e-af3d-9c96-6a29-725df22ceb7e\", \"field\": \"app\", \"label\": \"app\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"histogram-widget\", \"id\": \"44a883ac-78df-30fd-5fa8-394120dce6b9\", \"field\": \"time\", \"label\": \"time\", \"type\": \"range\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": true, \"end\": \"2014-05-04T15:14:48Z\", \"enableSelection\": true, \"min\": \"2014-05-04T06:35:49Z\", \"max\": \"2014-05-04T15:14:48Z\", \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"extraSeries\": [], \"gap\": \"+5MINUTES\", \"start\": \"2014-05-04T06:35:49Z\", \"initial_gap\": \"+5MINUTES\", \"limit\": 10, \"timelineChartType\": \"bar\", \"initial_end\": \"2014-05-04T15:14:48Z\", \"mincount\": 0, \"initial_start\": \"2014-05-04T06:35:49Z\", \"canRange\": true, \"stacked\": false}}, {\"widgetType\": \"bar-widget\", \"id\": \"42b6d6ee-a118-cd6e-cbc4-0a8b6b43d8a6\", \"field\": \"device_family\", \"label\": \"device_family\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"bar-widget\", \"id\": \"f90b1987-095e-820d-f97a-0f0c76f98e51\", \"field\": \"method\", \"label\": \"method\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"pie-widget\", \"id\": \"d99e5907-73cb-05bf-c9c1-884b2fd8f951\", \"field\": \"os_family\", \"label\": \"os_family\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"0180e6f0-8d10-6dec-72ff-0697984c4aa5\", \"field\": \"subapp\", \"label\": \"subapp\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"canRange\": false, \"limit\": 10, \"mincount\": 0, \"prevLimit\": 10}}, {\"widgetType\": \"facet-widget\", \"id\": \"ad535c3a-222c-8def-cfa0-d29a7f543e2b\", \"field\": \"protocol\", \"label\": \"protocol\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"map-widget\", \"id\": \"eb93e270-abae-49c9-8684-bd88feb0b9dc\", \"field\": \"region_code\", \"label\": \"region_code\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"facets\": [{\"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}], \"facets_form\": {\"mincount\": 1, \"limit\": 5, \"field\": \"\"}, \"limit\": 100, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"mincount\": 1, \"scope\": [\"usa\"], \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"51415e65-6866-0085-20a8-f7cd08c8c97e\", \"field\": \"code\", \"label\": \"code\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"bar-widget\", \"id\": \"06412dff-523c-0acf-c23c-bb76b3963c97\", \"field\": \"user_agent_family\", \"label\": \"user_agent_family\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"limit\": 3, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"heatmap-widget\", \"id\": \"24833957-e525-2601-ed45-14bd88c57b6d\", \"field\": \"country_code\", \"label\": \"country_code\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": true, \"facets\": [{\"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}], \"facets_form\": {\"mincount\": 1, \"limit\": 5, \"field\": \"\"}, \"limit\": 10, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"scope\": \"stack\", \"mincount\": 1, \"canRange\": false}}, {\"widgetType\": \"tree-widget\", \"id\": \"68bd1dde-0052-e566-35bc-c032bfeda963\", \"field\": \"country_code\", \"label\": \"country_code\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"facets\": [{\"field\": \"app\", \"limit\": 5, \"mincount\": 1}, {\"field\": \"subapp\", \"limit\": 5, \"mincount\": 1}], \"facets_form\": {\"mincount\": 1, \"limit\": 5, \"field\": \"\"}, \"limit\": 10, \"domain\": {\"blockParent\": [], \"blockChildren\": []}, \"scope\": \"tree\", \"mincount\": 1, \"canRange\": false}}, {\"queryResult\": {\"status\": \"running\", \"saveResultsModalVisible\": false, \"hasResultset\": true, \"progress\": 0, \"type\": \"solr\", \"id\": \"6874e378-d4b2-51a3-b022-0ace7f55a138\"}, \"widgetType\": \"map-widget\", \"id\": \"c8b26fb2-7898-0064-1123-b8be45bc4344\", \"field\": \"region_code\", \"template\": {\"rows\": 25, \"fieldsAttributes\": [], \"filteredAttributeFields\": [], \"fields\": [], \"fieldsSelected\": [], \"filteredAttributeFieldsAll\": true, \"showChart\": true, \"showGrid\": false, \"leafletmap\": {\"latitudeField\": null, \"longitudeField\": null, \"labelField\": null}, \"fieldsAttributesFilter\": \"\", \"isGridLayout\": false, \"leafletmapOn\": false, \"showFieldList\": true, \"chartSettings\": {\"chartSorting\": \"none\", \"chartX\": null, \"chartData\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartYMulti\": [], \"chartType\": \"bars\"}, \"hasDataForChart\": true}, \"label\": \"region_code\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"facets_form\": {\"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}, \"stacked\": true, \"facets\": [{\"aggregate\": \"\", \"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}], \"isDate\": false, \"limit\": 100, \"mincount\": 1, \"aggregate\": {\"function\": \"unique\", \"percentiles\": [{\"value\": 50}], \"ops\": []}, \"scope\": [\"chn\"], \"canRange\": false}}, {\"queryResult\": {\"status\": \"running\", \"saveResultsModalVisible\": false, \"hasResultset\": true, \"progress\": 0, \"type\": \"solr\", \"id\": \"e95b048b-54d6-c134-1fe1-841688620f07\"}, \"widgetType\": \"map-widget\", \"id\": \"4ab92797-319f-b9c6-9645-c56e157f5077\", \"field\": \"region_code\", \"template\": {\"rows\": 25, \"fieldsAttributes\": [], \"filteredAttributeFields\": [], \"fields\": [], \"fieldsSelected\": [], \"filteredAttributeFieldsAll\": true, \"showChart\": true, \"showGrid\": false, \"leafletmap\": {\"latitudeField\": null, \"longitudeField\": null, \"labelField\": null}, \"fieldsAttributesFilter\": \"\", \"isGridLayout\": false, \"leafletmapOn\": false, \"showFieldList\": true, \"chartSettings\": {\"chartSorting\": \"none\", \"chartX\": null, \"chartData\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartYMulti\": [], \"chartType\": \"bars\"}, \"hasDataForChart\": true}, \"label\": \"region_code\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"facets_form\": {\"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}, \"stacked\": true, \"facets\": [{\"aggregate\": \"\", \"field\": \"user_agent_family\", \"limit\": 5, \"mincount\": 1}], \"isDate\": false, \"limit\": 100, \"mincount\": 1, \"aggregate\": {\"function\": \"unique\", \"percentiles\": [{\"value\": 50}], \"ops\": []}, \"scope\": [\"aus\"], \"canRange\": false}}], \"enabled\": true, \"nestedNames\": [], \"async\": false}}','','2017-06-29 03:09:44',1,0,5,NULL,0,NULL),(7,1100713,'Twitter','Twitter','20e9604f-fdaa-467b-b194-e85c5e4cafbd','search-dashboard','{\"autocomplete\": false, \"field_order\": [], \"layout\": [{\"size\": 2, \"rows\": [{\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"hasBeenSelected\": true, \"id\": \"f9f99c00-4cc5-0591-1f6d-505e450935fa\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"0be773a0-7206-c263-b7e8-ab2a3aa4398f\", \"columns\": []}, {\"widgets\": [{\"name\": \"Pie Chart\", \"widgetType\": \"pie-widget\", \"id\": \"1c69b68c-7b4d-8928-a0b4-58f17d4d1f39\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"f75a0dab-e587-8dc4-c15d-aaf6eee6b9dc\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"id\": \"f479bde4-e7e2-b835-45e9-da1faa424673\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"46412910-1834-a9a4-c320-c66bb9a8ecc6\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"id\": \"7be3eaf8-d94a-152d-646c-1461981381e6\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"142793e6-765f-ff82-766c-b0b3ff7e6cc0\", \"columns\": []}, {\"widgets\": [{\"name\": \"Bar Chart\", \"widgetType\": \"bar-widget\", \"hasBeenSelected\": true, \"id\": \"cefcdffd-a5a7-1561-e341-71cfbf77ee71\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"3bae6470-d88b-295b-e2ad-bfb66290ee9e\", \"columns\": []}], \"klass\": \"card card-home card-column span2\", \"drops\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"hasBeenSelected\": true, \"id\": \"f9f99c00-4cc5-0591-1f6d-505e450935fa\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}, {\"name\": \"Heatmap\", \"widgetType\": \"heatmap-widget\", \"hasBeenSelected\": true, \"id\": \"f434681c-a737-0046-7015-e71941939ebe\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}, \"temp\"], \"id\": \"80cab0b7-1c10-9f7e-03dc-fc692c2d8ec7\"}, {\"size\": 10, \"rows\": [{\"widgets\": [{\"name\": \"Filter Bar\", \"widgetType\": \"filter-widget\", \"id\": \"49d78608-4e3d-3ff6-a40e-c6ff8d5ea7ab\", \"isLoading\": true, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"cfa997e5-1b87-e7cc-693a-52b10b01172e\", \"columns\": []}, {\"widgets\": [{\"name\": \"Histogram\", \"widgetType\": \"histogram-widget\", \"id\": \"fa4138d0-4d39-0520-c2fb-d78e2bf195be\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"8ccb079a-86e8-69c7-029f-b76c59203e36\", \"columns\": []}, {\"widgets\": [{\"name\": \"HTML Results\", \"widgetType\": \"html-resultset-widget\", \"id\": \"fdbe917a-2d37-7990-4f42-025eea08cc77\", \"isLoading\": true, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}], \"id\": \"97b9d89b-9e57-0ef9-b08e-b522512ea799\", \"columns\": []}], \"klass\": \"card card-home card-column span10\", \"drops\": [{\"name\": \"Map\", \"widgetType\": \"map-widget\", \"id\": \"2ff60141-5d20-c418-ebee-aa36281c12dc\", \"isLoading\": false, \"offset\": 0, \"size\": 12, \"properties\": {}, \"klass\": \"card card-widget span12\"}, \"temp\"], \"id\": \"17d2ea2d-f3e3-1df6-66cd-42549460137f\"}], \"collection\": {\"availableFacetFields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdate\", \"name\": \"created_at\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"expanded_url\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"in_reply_to_status_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"in_reply_to_user_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"media_url_https\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"retweet_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"boolean\", \"name\": \"retweeted\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"lowercase\", \"name\": \"source\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"text\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_description\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_followers_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_friends_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"lowercase\", \"name\": \"user_location\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_screen_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_statuses_count\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}, {\"isDynamic\": true, \"isId\": null, \"type\": \"int\", \"name\": \"test_i\"}], \"idField\": \"id\", \"name\": \"twitter_demo\", \"fields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tdate\", \"name\": \"created_at\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"expanded_url\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"in_reply_to_status_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"in_reply_to_user_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"string\", \"name\": \"media_url_https\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"retweet_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"boolean\", \"name\": \"retweeted\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"lowercase\", \"name\": \"source\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"text\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_description\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_followers_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_friends_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"lowercase\", \"name\": \"user_location\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_screen_name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"user_statuses_count\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}, {\"isDynamic\": true, \"isId\": null, \"type\": \"int\", \"name\": \"test_i\"}], \"facets\": [{\"widgetType\": \"histogram-widget\", \"id\": \"fa4138d0-4d39-0520-c2fb-d78e2bf195be\", \"field\": \"created_at\", \"label\": \"created_at\", \"type\": \"range\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": true, \"end\": \"2014-02-26T04:00:00Z\", \"min\": \"2014-02-25T16:00:00Z\", \"max\": \"2014-02-26T04:00:00Z\", \"stacked\": false, \"gap\": \"+10MINUTES\", \"start\": \"2014-02-25T16:00:00Z\", \"initial_gap\": \"+10MINUTES\", \"limit\": 10, \"initial_end\": \"2014-02-26T04:00:00Z\", \"mincount\": 0, \"initial_start\": \"2014-02-25T16:00:00Z\", \"canRange\": true}}, {\"widgetType\": \"pie-widget\", \"id\": \"1c69b68c-7b4d-8928-a0b4-58f17d4d1f39\", \"field\": \"user_location\", \"label\": \"user_location\", \"type\": \"field\", \"properties\": {\"sort\": \"asc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"limit\": 20, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"f479bde4-e7e2-b835-45e9-da1faa424673\", \"field\": \"user_statuses_count\", \"label\": \"user_statuses_count\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"andUp\": false, \"isDate\": false, \"end\": \"3000000\", \"min\": 0, \"max\": 3000000, \"stacked\": false, \"gap\": \"250000\", \"start\": 0, \"initial_gap\": \"250000\", \"limit\": 10, \"initial_end\": \"3000000\", \"mincount\": 0, \"initial_start\": 0, \"canRange\": true}}, {\"widgetType\": \"facet-widget\", \"id\": \"7be3eaf8-d94a-152d-646c-1461981381e6\", \"field\": \"user_followers_count\", \"label\": \"user_followers_count\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"andUp\": false, \"isDate\": false, \"end\": \"9000000\", \"min\": 0, \"max\": 9000000, \"stacked\": false, \"gap\": \"900000\", \"start\": 0, \"initial_gap\": \"900000\", \"limit\": 10, \"initial_end\": \"9000000\", \"mincount\": 0, \"initial_start\": 0, \"canRange\": true}}, {\"widgetType\": \"facet-widget\", \"id\": \"f9f99c00-4cc5-0591-1f6d-505e450935fa\", \"field\": \"created_at\", \"label\": \"created_at\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"isDate\": true, \"end\": \"2014-02-26T05:00:00Z\", \"min\": \"2014-02-25T16:00:00Z\", \"max\": \"2014-02-26T05:00:00Z\", \"canRange\": true, \"gap\": \"+3HOURS\", \"start\": \"2014-02-25T16:00:00Z\", \"initial_gap\": \"+3HOURS\", \"limit\": 10, \"mincount\": 0, \"stacked\": false, \"initial_start\": \"2014-02-25T16:00:00Z\", \"initial_end\": \"2014-02-26T05:00:00Z\"}}, {\"widgetType\": \"bar-widget\", \"id\": \"cefcdffd-a5a7-1561-e341-71cfbf77ee71\", \"field\": \"user_screen_name\", \"label\": \"user_screen_name\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"isDate\": false, \"stacked\": false, \"limit\": 5, \"mincount\": 0, \"canRange\": false}}], \"enabled\": true, \"label\": \"Twitter\", \"selectedDocument\": {}, \"template\": {\"extracode\": \"&lt;style type=&quot;text/css&quot;&gt;em {\\n  font-weight: bold;\\n  background-color: yellow;\\n}\\n.avatar {\\n  margin: 10px;\\n}\\n.created {\\n  margin-top: 10px;\\n  color: #CCC;\\n}\\n.openTweet {\\n  float: right;\\n  margin: 10px;\\n}\\n&lt;/style&gt;\\n\\n&lt;script&gt;\\n&lt;/script&gt;\", \"rows\": 10, \"showFieldList\": true, \"isGridLayout\": false, \"fieldsSelected\": [\"created_at\", \"retweet_count\", \"retweeted\", \"source\", \"text\", \"media_url_https\", \"in_reply_to_user_id\", \"in_reply_to_status_id\", \"expanded_url\", \"user_screen_name\", \"user_location\", \"user_name\"], \"leafletmap\": {\"latitudeField\": null, \"longitudeField\": null, \"labelField\": null}, \"fieldsAttributes\": [{\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"_version_\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"created_at\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"expanded_url\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"in_reply_to_status_id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"in_reply_to_user_id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"media_url_https\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"retweet_count\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"retweeted\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"source\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"text\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_description\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_followers_count\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_friends_count\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_location\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_name\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_screen_name\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_statuses_count\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": true, \"name\": \"test_i\"}], \"template\": \"\\n\\n<div class=\\\"row-fluid\\\">\\n  <div class=\\\"row-fluid\\\">\\n    <div class=\\\"row-fluid\\\">\\n      <div class=\\\"span1\\\">\\n        <i class=\\\"avatar fa fa-twitter\\\"/>\\n        </div>\\n        <div class=\\\"span11\\\">\\n          <b>{{user_name}}</b>\\n          <br>\\n            <a href=\\\"https://twitter.com/{{user_screen_name}}/status/{{id}}\\\" target=\\\"_blank\\\">\\n              {{text}}\\n            </a>\\n            <br>\\n              <div class=\\\"created\\\">{{#fromnow}}{{created_at}}{{/fromnow}}</div>\\n            </div>\\n          </div>\\n          <br>\\n          </div>\\n        </div>\\n        \\n        \", \"highlighting\": [\"\"], \"properties\": {\"highlighting_enabled\": true}}, \"id\": 20000001, \"uuid\": \"20e9604f-fdaa-467b-b194-e85c5e4cafbd\"}, \"data_type\": \"separated\"}','','2017-06-28 22:58:07',1,0,5,NULL,0,NULL),(8,1100713,'Yelp Reviews','Yelp Reviews','d599955b-60fc-40c9-a410-20159cc59a0e','search-dashboard','{\"autocomplete\": false, \"field_order\": [], \"layout\": [{\"klass\": \"card card-home card-column span2\", \"rows\": [{\"widgets\": [{\"name\": \"Marker Map\", \"widgetType\": \"leafletmap-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"f1d94ecb-9fc3-0d77-7f16-a3282e266537\", \"size\": 12}], \"id\": \"93983a91-f8e9-ba3a-2566-29100f2a0b58\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"ab7ec442-2100-28f6-b693-dd84ec15006d\", \"size\": 12}], \"id\": \"f3fcc166-40f3-8f9f-4230-b823c33f51ba\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"36ba60bc-07d6-fc91-2e75-39c2ea24835b\", \"size\": 12}], \"id\": \"2fa32086-aaaf-3a24-026d-e8d54a3040ae\", \"columns\": []}, {\"widgets\": [{\"name\": \"Pie Chart\", \"widgetType\": \"pie-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"187c76eb-14b8-85f6-a5ad-43395fa985b7\", \"size\": 12}], \"id\": \"732ddd21-29dd-a7cc-ed2c-1f11408e9990\", \"columns\": []}, {\"widgets\": [{\"name\": \"Facet\", \"widgetType\": \"facet-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"ff87cf07-254e-9479-ec41-72c6b6138dbd\", \"size\": 12}], \"id\": \"6da291db-ac43-7eea-b3f0-140a89cd4999\", \"columns\": []}, {\"widgets\": [{\"name\": \"Bar Chart\", \"widgetType\": \"bar-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"0859f124-77c3-0a21-8121-84f7cfa84ec4\", \"size\": 12}], \"id\": \"9ba7a001-3140-d585-2ab2-3f3a12abd8df\", \"columns\": []}], \"id\": \"2ef42082-90c7-a873-fb3e-16fbc6f99b50\", \"drops\": [\"temp\"], \"size\": 2}, {\"klass\": \"card card-home card-column span10\", \"rows\": [{\"widgets\": [{\"name\": \"Filter Bar\", \"widgetType\": \"filter-widget\", \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"4a6b091a-abc2-1dae-934e-d7237ea87423\", \"size\": 12}], \"id\": \"d31dcf30-60b4-fe58-746a-4785392df303\", \"columns\": []}, {\"widgets\": [{\"name\": \"Map\", \"widgetType\": \"map-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span6\", \"id\": \"e18aba4a-85d8-c610-9fb2-80f9aced3f51\", \"size\": 6}, {\"name\": \"Map\", \"widgetType\": \"map-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span6\", \"id\": \"8d827689-c4b1-ed48-399d-010b5e8cfc47\", \"size\": 6}], \"id\": \"4d047293-825a-be31-42ea-f0df8c3a5f30\", \"columns\": []}, {\"widgets\": [{\"name\": \"Grid Results\", \"widgetType\": \"resultset-widget\", \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"52f07188-f30f-1296-2450-f77e02e1a5c0\", \"size\": 12}], \"id\": \"2d34be88-1adf-ba3d-bb9a-eb68ca4cf56b\", \"columns\": []}, {\"widgets\": [{\"name\": \"Heatmap\", \"widgetType\": \"heatmap-widget\", \"properties\": {}, \"isLoading\": false, \"offset\": 0, \"klass\": \"card card-widget span12\", \"id\": \"b0fa6f24-ca28-ebc3-d767-f91e7a2624dd\", \"size\": 12}], \"id\": \"eda164b2-31dc-b03c-2f7f-530e91152bdf\", \"columns\": []}], \"id\": \"fbbc9ed9-dc7f-a445-b04f-8923af8b9574\", \"drops\": [\"temp\"], \"size\": 10}], \"data_type\": \"separated\", \"collection\": {\"availableFacetFields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"business_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"cool\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"date\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"full_address\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"funny\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tfloat\", \"name\": \"latitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tfloat\", \"name\": \"longitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"neighborhoods\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"open\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"review_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"stars\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"state\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"text\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"type\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"useful\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_id\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}], \"idField\": \"id\", \"description\": \"Yelp Reviews\", \"fields\": [{\"isDynamic\": false, \"isId\": null, \"type\": \"long\", \"name\": \"_version_\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"business_id\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"cool\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"date\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"full_address\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"funny\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tfloat\", \"name\": \"latitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tfloat\", \"name\": \"longitude\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"name\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"neighborhoods\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"open\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"review_count\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"stars\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"state\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"text\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"type\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"tint\", \"name\": \"useful\"}, {\"isDynamic\": false, \"isId\": null, \"type\": \"text_en\", \"name\": \"user_id\"}, {\"isDynamic\": false, \"isId\": true, \"type\": \"string\", \"name\": \"id\"}], \"facets\": [{\"widgetType\": \"map-widget\", \"id\": \"8d827689-c4b1-ed48-399d-010b5e8cfc47\", \"field\": \"state\", \"label\": \"state\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"facets\": [{\"field\": \"cool\", \"limit\": 5, \"mincount\": 1}], \"facets_form\": {\"mincount\": 1, \"limit\": 5}, \"limit\": 100, \"mincount\": 1, \"scope\": [\"usa\"], \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"ab7ec442-2100-28f6-b693-dd84ec15006d\", \"field\": \"stars\", \"label\": \"stars\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"andUp\": false, \"isDate\": false, \"end\": 6, \"min\": 1, \"max\": 6, \"stacked\": false, \"gap\": 1, \"start\": 1, \"initial_gap\": 1, \"limit\": 10, \"mincount\": 0, \"initial_end\": 6, \"initial_start\": 1, \"canRange\": true}}, {\"widgetType\": \"pie-widget\", \"id\": \"187c76eb-14b8-85f6-a5ad-43395fa985b7\", \"field\": \"open\", \"label\": \"open\", \"type\": \"field\", \"properties\": {\"sort\": \"desc\", \"andUp\": false, \"isDate\": false, \"stacked\": false, \"limit\": 10, \"mincount\": 0, \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"ff87cf07-254e-9479-ec41-72c6b6138dbd\", \"field\": \"review_count\", \"label\": \"review_count\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"isDate\": false, \"end\": 1000, \"min\": 0, \"max\": 1000, \"gap\": 100, \"start\": 0, \"initial_gap\": 100, \"limit\": 10, \"initial_end\": 1000, \"stacked\": false, \"mincount\": 0, \"canRange\": true, \"initial_start\": 0}}, {\"widgetType\": \"map-widget\", \"id\": \"e18aba4a-85d8-c610-9fb2-80f9aced3f51\", \"field\": \"state\", \"label\": \"state\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"facets_form\": {\"mincount\": 1, \"limit\": 5}, \"stacked\": false, \"facets\": [{\"field\": \"stars\", \"limit\": 5, \"mincount\": 1}], \"isDate\": false, \"limit\": 100, \"mincount\": 1, \"scope\": [\"usa\"], \"canRange\": false}}, {\"widgetType\": \"heatmap-widget\", \"id\": \"b0fa6f24-ca28-ebc3-d767-f91e7a2624dd\", \"field\": \"stars\", \"label\": \"stars\", \"type\": \"pivot\", \"properties\": {\"sort\": \"desc\", \"facets_form\": {\"mincount\": 1, \"limit\": 5}, \"stacked\": true, \"facets\": [{\"field\": \"state\", \"limit\": 5, \"mincount\": 1}], \"isDate\": false, \"limit\": 10, \"mincount\": 1, \"scope\": \"stack\", \"canRange\": false}}, {\"widgetType\": \"facet-widget\", \"id\": \"36ba60bc-07d6-fc91-2e75-39c2ea24835b\", \"field\": \"date\", \"label\": \"date\", \"type\": \"range-up\", \"properties\": {\"sort\": \"asc\", \"isDate\": true, \"end\": \"2013-01-05T09:00:00Z\", \"min\": \"2006-01-11T08:00:00Z\", \"max\": \"2013-01-05T09:00:00Z\", \"gap\": \"+1YEARS\", \"start\": \"2006-01-11T08:00:00Z\", \"initial_gap\": \"+1YEARS\", \"limit\": 10, \"initial_end\": \"2013-01-05T09:00:00Z\", \"stacked\": false, \"mincount\": 0, \"canRange\": true, \"initial_start\": \"2006-01-11T08:00:00Z\"}}, {\"widgetType\": \"bar-widget\", \"id\": \"0859f124-77c3-0a21-8121-84f7cfa84ec4\", \"field\": \"funny\", \"label\": \"funny\", \"type\": \"range\", \"properties\": {\"sort\": \"desc\", \"isDate\": false, \"end\": 5, \"min\": 0, \"max\": 39, \"gap\": 1, \"start\": 0, \"initial_gap\": 1, \"limit\": 10, \"initial_end\": 5, \"stacked\": false, \"mincount\": 0, \"canRange\": true, \"initial_start\": 0}}], \"enabled\": true, \"uuid\": \"d599955b-60fc-40c9-a410-20159cc59a0e\", \"label\": \"Yelp Reviews\", \"selectedDocument\": {}, \"template\": {\"extracode\": \"&lt;style type=&quot;text/css&quot;&gt;em {\\n  font-weight: bold;\\n  background-color: yellow;\\n}\\n&lt;/style&gt;\\n\\n&lt;script&gt;\\n&lt;/script&gt;\", \"rows\": 20, \"showFieldList\": false, \"isGridLayout\": true, \"fieldsSelected\": [\"name\", \"text\", \"date\"], \"leafletmap\": {\"latitudeField\": \"latitude\", \"longitudeField\": \"longitude\", \"labelField\": \"text\"}, \"fieldsAttributes\": [{\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"_version_\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"business_id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"cool\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"date\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"full_address\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"funny\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"latitude\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"longitude\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"name\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"neighborhoods\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"open\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"review_count\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"stars\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"state\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"text\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"type\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"useful\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"user_id\"}, {\"sort\": {\"direction\": null}, \"isDynamic\": false, \"name\": \"id\"}], \"template\": \"\\n      <div class=\\\"row-fluid\\\">\\n        <div class=\\\"row-fluid\\\">\\n          <div class=\\\"span12\\\">{{_version_}} {{business_id}} {{content_type}} {{cool}} {{date}} {{file_download_url}} {{file_group}} {{file_host}} {{file_last_modified}} {{file_length}} {{file_name}} {{file_owner}} {{file_path}} {{file_permissions_group}} {{file_permissions_other}} {{file_permissions_stickybit}} {{file_permissions_user}} {{file_port}} {{file_scheme}} {{file_upload_url}} {{full_address}} {{funny}} {{latitude}} {{longitude}} {{name}} {{neighborhoods}} {{open}} {{review_count}} {{stars}} {{state}} {{text}} {{type}} {{useful}} {{user_id}} {{id}}</div>\\n        </div>\\n        <br/>\\n      </div>\", \"highlighting\": [\"\"], \"properties\": {\"highlighting_enabled\": true}}, \"autorefreshSeconds\": 60, \"id\": 3, \"name\": \"yelp_demo\"}}','','2017-06-28 22:58:07',1,0,5,NULL,0,NULL),(9,1100713,'Sample: Top salary','Top salary 2007 above $100k','0e042910-6bdb-4fe4-b8df-4f46e50621f4','query-impala','{\"showHistory\": true, \"uuid\": \"0e042910-6bdb-4fe4-b8df-4f46e50621f4\", \"sessions\": [{\"type\": \"impala\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Impala configuration properties.\", \"type\": \"settings\", \"options\": [\"debug_action\", \"explain_level\", \"mem_limit\", \"optimize_partition_key_scans\", \"query_timeout_s\", \"request_pool\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Top salary\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"impala\", \"type\": \"query-impala\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Top salary\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"id\": \"22af6652-b1ab-4e87-906f-efaf64d04ab5\", \"result\": {\"handle\": {}}, \"statement\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"type\": \"impala\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Top salary 2007 above $100k\"}','','2017-06-28 22:57:14',1,0,5,NULL,0,NULL),(10,1100713,'Sample: Salary growth','Salary growth (sorted) from 2007-08','961d7615-1130-4d61-8d9a-da666bbe166b','query-impala','{\"showHistory\": true, \"uuid\": \"961d7615-1130-4d61-8d9a-da666bbe166b\", \"sessions\": [{\"type\": \"impala\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Impala configuration properties.\", \"type\": \"settings\", \"options\": [\"debug_action\", \"explain_level\", \"mem_limit\", \"optimize_partition_key_scans\", \"query_timeout_s\", \"request_pool\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Salary growth\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"impala\", \"type\": \"query-impala\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Salary growth\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"id\": \"cc1e6bbb-d4a0-4fc5-913d-c230d665aef1\", \"result\": {\"handle\": {}}, \"statement\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"type\": \"impala\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Salary growth (sorted) from 2007-08\"}','','2017-06-28 22:57:14',1,0,5,NULL,0,NULL),(11,1100713,'Sample: Job loss','Job loss among the top earners 2007-08','6f6685ea-d497-4299-8cb9-06ffa3bc6ccc','query-impala','{\"showHistory\": true, \"uuid\": \"6f6685ea-d497-4299-8cb9-06ffa3bc6ccc\", \"sessions\": [{\"type\": \"impala\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Impala configuration properties.\", \"type\": \"settings\", \"options\": [\"debug_action\", \"explain_level\", \"mem_limit\", \"optimize_partition_key_scans\", \"query_timeout_s\", \"request_pool\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Job loss\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"impala\", \"type\": \"query-impala\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Job loss\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\nLIMIT 1000\", \"id\": \"bb271332-55c1-4f75-b8a4-9b82bb190a7a\", \"result\": {\"handle\": {}}, \"statement\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\nLIMIT 1000\", \"type\": \"impala\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Job loss among the top earners 2007-08\"}','','2017-06-28 22:57:14',1,0,5,NULL,0,NULL),(12,1100713,'Sample: Customers','Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','f9531a37-3a0b-40a0-b6fe-d463361dd8b5','query-impala','{\"showHistory\": true, \"uuid\": \"f9531a37-3a0b-40a0-b6fe-d463361dd8b5\", \"sessions\": [{\"type\": \"impala\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Impala configuration properties.\", \"type\": \"settings\", \"options\": [\"debug_action\", \"explain_level\", \"mem_limit\", \"optimize_partition_key_scans\", \"query_timeout_s\", \"request_pool\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Customers\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"impala\", \"type\": \"query-impala\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Customers\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"-- Get email survey opt-in values for all customers \\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  c.id,\\r\\n  c.name\\r\\nFROM customers c, c.addresses a\\r\\nWHERE a.key = \'shipping\' and a.zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n c.name AS customer_name,\\r\\n  o.order_id,\\r\\n  v.total\\r\\nFROM\\r\\n  customers c,\\r\\n  c.orders o,\\r\\n  (SELECT SUM(price * qty) total FROM o.items) v;\", \"id\": \"776902a7-d539-4add-ac7b-373c503d87e3\", \"result\": {\"handle\": {}}, \"statement\": \"-- Get email survey opt-in values for all customers \\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  c.id,\\r\\n  c.name\\r\\nFROM customers c, c.addresses a\\r\\nWHERE a.key = \'shipping\' and a.zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n c.name AS customer_name,\\r\\n  o.order_id,\\r\\n  v.total\\r\\nFROM\\r\\n  customers c,\\r\\n  c.orders o,\\r\\n  (SELECT SUM(price * qty) total FROM o.items) v;\", \"type\": \"impala\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order\"}','','2017-06-28 22:57:14',1,0,5,NULL,0,NULL),(13,1100713,'Sample Notebook','Run Spark Python, Scala and SQL snippets with graphs','7f2ea775-e067-4fde-8f5f-4d704ab9b002','notebook','{\"uuid\": \"7f2ea775-e067-4fde-8f5f-4d704ab9b002\", \"sessions\": [{\"type\": \"spark\", \"id\": -1, \"properties\": []}, {\"type\": \"impala\", \"id\": null, \"properties\": []}, {\"type\": \"pyspark\", \"id\": -1, \"properties\": []}, {\"type\": \"r\", \"properties\": [], \"id\": 1}], \"description\": \"Run Spark Python, Scala and SQL snippets with graphs\", \"isSaved\": true, \"selectedSnippet\": \"r\", \"creatingSessionLocks\": [], \"snippets\": [{\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results pyspark alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 2}, \"logs\": \"\", \"executionTime\": 242, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"cleanedStringMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"startTime\": \"2015-03-16T17:36:08.959Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:09.201Z\", \"type\": \"text\", \"id\": \"cfe7b910-1e12-0aa6-ff9a-f319910fb153\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"77730348-39cd-e4fd-a29c-c6072dbed21f\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"print 1 + 1 + 1\\t\\n\", \"aceEditorMode\": \"ace/mode/python\", \"statement\": \"print 1 + 1 + 1\\t\\n\", \"aceSize\": 100, \"progress\": 0, \"type\": \"pyspark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Simple Python count\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results pyspark alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 9}, \"logs\": \"\", \"executionTime\": 382, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"cleanedStringMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"startTime\": \"2015-03-16T17:36:09.479Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:09.861Z\", \"type\": \"text\", \"id\": \"9c22a73b-284e-d386-92aa-bb3d4a8f56f5\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"3f4f0226-61bf-3aa9-8582-f9ff4a4cf96f\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nfile = file.flatMap(lambda line: line.split(\\\"\\\\t\\\")).map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)\\n\\nfor row in file.collect()[:5]:\\n  print row\", \"aceEditorMode\": \"ace/mode/python\", \"statement\": \"file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nfile = file.flatMap(lambda line: line.split(\\\"\\\\t\\\")).map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)\\n\\nfor row in file.collect()[:5]:\\n  print row\", \"aceSize\": 100, \"progress\": 0, \"type\": \"pyspark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Use regular Py-spark functions\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results pyspark alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 4}, \"logs\": \"\", \"executionTime\": 222, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"cleanedStringMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"startTime\": \"2015-03-16T17:36:10.080Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:10.302Z\", \"type\": \"text\", \"id\": \"20d976c0-8f89-4389-a25b-b7aead6ecbcc\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"3a767895-9e1b-72c6-a093-50bd8b630cc0\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"from random import random\\n\\nNUM_SAMPLES = 1000\\n\\ndef sample(p):\\n    x, y = random(), random()\\n    return 1 if x*x + y*y < 1 else 0\\n\\ncount = sc.parallelize(xrange(0, NUM_SAMPLES)).map(sample) \\\\\\n             .reduce(lambda a, b: a + b)\\n  \\nprint \\\"Pi is roughly %f\\\" % (4.0 * count / NUM_SAMPLES)\\n\\n\\n\", \"aceEditorMode\": \"ace/mode/python\", \"statement\": \"from random import random\\n\\nNUM_SAMPLES = 1000\\n\\ndef sample(p):\\n    x, y = random(), random()\\n    return 1 if x*x + y*y < 1 else 0\\n\\ncount = sc.parallelize(xrange(0, NUM_SAMPLES)).map(sample) \\\\\\n             .reduce(lambda a, b: a + b)\\n  \\nprint \\\"Pi is roughly %f\\\" % (4.0 * count / NUM_SAMPLES)\\n\\n\\n\", \"aceSize\": 193, \"progress\": 0, \"type\": \"pyspark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"chartX\": \"0\", \"lastExecuted\": 0, \"errorsKlass\": \"results pyspark alert alert-error\", \"variables\": [], \"showChart\": true, \"isResultSettingsVisible\": false, \"showGrid\": false, \"result\": {\"cleanedNumericMeta\": [{\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"0\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"1\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"2\"}], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 1}, \"logs\": \"\", \"executionTime\": 215, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"0\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"1\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"2\"}], \"cleanedStringMeta\": [], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"0\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"1\"}, {\"comment\": \"\", \"type\": \"INT_TYPE\", \"name\": \"2\"}], \"startTime\": \"2015-03-16T17:36:10.521Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:10.736Z\", \"type\": \"table\", \"id\": \"227239df-e14c-a693-0325-a5ba12c935f6\"}, \"showLogs\": false, \"hasDataForChart\": true, \"id\": \"ca15b5c7-bd1a-8f2e-4dca-d030aa06ebda\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]\\n%table a\", \"aceEditorMode\": \"ace/mode/python\", \"statement\": \"a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]\\n%table a\", \"aceSize\": 100, \"progress\": 0, \"type\": \"pyspark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"chartYMulti\": [\"1\", \"2\"], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Introspect variables with the %table keyword\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results spark alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 13}, \"logs\": \"\", \"executionTime\": 216, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"cleanedStringMeta\": [{\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": \"\", \"type\": \"STRING_TYPE\", \"name\": \"Header\"}], \"startTime\": \"2015-03-16T17:36:10.954Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:11.170Z\", \"type\": \"text\", \"id\": \"7fcdffeb-5c22-2904-d111-869611f8ad97\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"d1df6930-8c5d-dae6-1971-10c7a6821c79\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"println(1 + 1 + 1)\", \"aceEditorMode\": \"ace/mode/scala\", \"statement\": \"println(1 + 1 + 1)\", \"aceSize\": 100, \"progress\": 0, \"type\": \"spark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results spark\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Type Scala like in a shell\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results spark alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {\"has_result_set\": true, \"id\": 14}, \"logs\": \"\", \"executionTime\": 359, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [], \"cleanedStringMeta\": [], \"logLines\": 0, \"hasResultset\": true, \"meta\": [], \"startTime\": \"2015-03-16T17:36:11.432Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:11.791Z\", \"type\": \"table\", \"id\": \"060bb624-1d21-bc4a-2bcf-a0bf581f838b\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"a527db12-3b2b-6abf-2859-c99c542163a5\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"val file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nprintln(file.filter(line => line.contains(\\\"teachers\\\")).count())\", \"aceEditorMode\": \"ace/mode/scala\", \"statement\": \"val file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nprintln(file.filter(line => line.contains(\\\"teachers\\\")).count())\", \"aceSize\": 100, \"progress\": 0, \"type\": \"spark\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results spark\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Use Spark Scala functions\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"chartX\": \"os_family\", \"lastExecuted\": 0, \"errorsKlass\": \"results impala alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [{\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"_version_\"}, {\"comment\": null, \"type\": \"SMALLINT_TYPE\", \"name\": \"bytes\"}, {\"comment\": null, \"type\": \"TINYINT_TYPE\", \"name\": \"code\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"latitude\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"longitude\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"region_code\"}], \"cleanedDateTimeMeta\": [], \"handle\": {\"log_context\": null, \"secret\": \"6lMs1ROUQWG7SVNB2rGpdA==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"6lMs1ROUQWG7SVNB2rGpdA==\\n\"}, \"logs\": \"\", \"executionTime\": 227, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"_version_\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}, {\"comment\": null, \"type\": \"SMALLINT_TYPE\", \"name\": \"bytes\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"city\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"client_ip\"}, {\"comment\": null, \"type\": \"TINYINT_TYPE\", \"name\": \"code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_name\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"device_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"extension\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"latitude\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"longitude\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"method\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"record\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"referer\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"region_code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"request\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"subapp\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"time\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"url\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"idstring\"}], \"cleanedStringMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"city\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"client_ip\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_name\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"device_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"extension\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"method\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"record\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"referer\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"request\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"subapp\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"time\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"url\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"idstring\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"_version_\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}, {\"comment\": null, \"type\": \"SMALLINT_TYPE\", \"name\": \"bytes\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"city\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"client_ip\"}, {\"comment\": null, \"type\": \"TINYINT_TYPE\", \"name\": \"code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_name\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"device_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"extension\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"latitude\"}, {\"comment\": null, \"type\": \"FLOAT_TYPE\", \"name\": \"longitude\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"method\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"os_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"record\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"referer\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"region_code\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"request\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"subapp\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"time\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"url\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_family\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"user_agent_major\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"idstring\"}], \"startTime\": \"2015-03-16T17:36:12.013Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:12.240Z\", \"type\": \"table\", \"id\": \"2b945372-12f9-53f3-89a2-86b43f35cbd5\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"12594e87-ad0e-459e-4d80-602710147b0c\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"select * from web_logs\", \"aceEditorMode\": \"ace/mode/impala\", \"statement\": \"select * from web_logs\", \"aceSize\": 100, \"progress\": 0, \"type\": \"impala\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results impala\", \"chartYMulti\": [], \"chartType\": \"pie\", \"properties\": {}, \"name\": \"Tabular view of the result of the query\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"chartX\": \"country_code3\", \"lastExecuted\": 0, \"errorsKlass\": \"results impala alert alert-error\", \"variables\": [], \"showChart\": true, \"isResultSettingsVisible\": false, \"showGrid\": false, \"result\": {\"cleanedNumericMeta\": [{\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"cleanedDateTimeMeta\": [], \"handle\": {\"log_context\": null, \"secret\": \"KHFXqRmMRUyP4Cjj8zzjPQ==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"KHFXqRmMRUyP4Cjj8zzjPQ==\\n\"}, \"logs\": \"\", \"executionTime\": 223, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"cleanedStringMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"country_code3\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"startTime\": \"2015-03-16T17:36:12.465Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:12.688Z\", \"type\": \"table\", \"id\": \"58870c91-24a9-fa13-b03f-39dec1e1e499\"}, \"showLogs\": false, \"hasDataForChart\": true, \"id\": \"8f9c855e-29e6-0985-80ad-9af4703e5945\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"select country_code3, sum(bytes) FROM web_logs group by country_code3\", \"aceEditorMode\": \"ace/mode/impala\", \"statement\": \"select country_code3, sum(bytes) FROM web_logs group by country_code3\", \"aceSize\": 100, \"progress\": 0, \"type\": \"impala\", \"chartYSingle\": \"sum(bytes)\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results impala\", \"chartYMulti\": [], \"chartType\": \"gradientmap\", \"properties\": {}, \"name\": \"SQL is integrated with graphical widgets\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"chartX\": \"protocol\", \"lastExecuted\": 0, \"errorsKlass\": \"results impala alert alert-error\", \"variables\": [], \"showChart\": true, \"isResultSettingsVisible\": false, \"showGrid\": false, \"result\": {\"cleanedNumericMeta\": [{\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"count(*)\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"sum(bytes) / 1024 ^ 2\"}], \"cleanedDateTimeMeta\": [], \"handle\": {\"log_context\": null, \"secret\": \"Noj6odsiShitoZJJ2Khreg==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"Noj6odsiShitoZJJ2Khreg==\\n\"}, \"logs\": \"\", \"executionTime\": 219, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"count(*)\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"sum(bytes) / 1024 ^ 2\"}], \"cleanedStringMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"protocol\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"count(*)\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"sum(bytes) / 1024 ^ 2\"}], \"startTime\": \"2015-03-16T17:36:13.130Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:13.349Z\", \"type\": \"table\", \"id\": \"73fcd92c-78d0-051f-ce8f-dcdaba7f1954\"}, \"showLogs\": false, \"hasDataForChart\": true, \"id\": \"88c35435-d266-62fe-3706-63d0d28361bf\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"select protocol, count(*), sum(bytes) / 1024^2 from web_logs group by protocol\", \"aceEditorMode\": \"ace/mode/impala\", \"statement\": \"select protocol, count(*), sum(bytes) / 1024^2 from web_logs group by protocol\", \"aceSize\": 100, \"progress\": 0, \"type\": \"impala\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results impala\", \"chartYMulti\": [\"total_emp\", \"salary\", \"bytes\", \"count(*)\", \"sum(bytes)\", \"sum(bytes) / 1024 ^ 2\"], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"Multi bar chart\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"chartX\": \"lat\", \"lastExecuted\": 0, \"errorsKlass\": \"results impala alert alert-error\", \"variables\": [], \"showChart\": true, \"isResultSettingsVisible\": false, \"showGrid\": false, \"result\": {\"cleanedNumericMeta\": [{\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"lat\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"long\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"cleanedDateTimeMeta\": [], \"handle\": {\"log_context\": null, \"secret\": \"Ra8tMJVFTGaU4g719thIFA==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"Ra8tMJVFTGaU4g719thIFA==\\n\"}, \"logs\": \"\", \"executionTime\": 217, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [{\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"lat\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"long\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"cleanedStringMeta\": [{\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}], \"logLines\": 0, \"hasResultset\": true, \"meta\": [{\"comment\": null, \"type\": \"INT_TYPE\", \"name\": \"\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"lat\"}, {\"comment\": null, \"type\": \"DOUBLE_TYPE\", \"name\": \"long\"}, {\"comment\": null, \"type\": \"STRING_TYPE\", \"name\": \"app\"}, {\"comment\": null, \"type\": \"BIGINT_TYPE\", \"name\": \"sum(bytes)\"}], \"startTime\": \"2015-03-16T17:36:13.675Z\", \"hasSomeResults\": false, \"endTime\": \"2015-03-16T17:36:13.892Z\", \"type\": \"table\", \"id\": \"ad4aeeac-c594-9f41-6a49-cd2edb0198e0\"}, \"showLogs\": false, \"hasDataForChart\": true, \"id\": \"703a2174-36b8-dc44-4c45-e03faa0ddd47\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"select avg(latitude) as lat, avg(longitude) as long, app, sum(bytes) FROM web_logs group by app having lat < 100 and lat is not NULL\", \"aceEditorMode\": \"ace/mode/impala\", \"statement\": \"select avg(latitude) as lat, avg(longitude) as long, app, sum(bytes) FROM web_logs group by app having lat < 100 and lat is not NULL\", \"aceSize\": 100, \"progress\": 0, \"type\": \"impala\", \"chartYSingle\": \"long\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results impala\", \"chartYMulti\": [], \"chartType\": \"scatter\", \"properties\": {}, \"name\": \"Scatter plot widget\", \"chartScatterSize\": \"sum(bytes)\", \"subtype\": \"\", \"chartScatterGroup\": \"app\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"chartSorting\": \"none\", \"lastExecuted\": 0, \"errorsKlass\": \"results r alert alert-error\", \"variables\": [], \"showChart\": false, \"isResultSettingsVisible\": false, \"showGrid\": true, \"result\": {\"cleanedNumericMeta\": [], \"cleanedDateTimeMeta\": [], \"handle\": {}, \"logs\": \"\", \"executionTime\": 0, \"data\": [], \"fetchedOnce\": false, \"cleanedMeta\": [], \"cleanedStringMeta\": [], \"logLines\": 0, \"hasResultset\": true, \"meta\": [], \"startTime\": \"2015-09-24T00:14:59.025Z\", \"hasSomeResults\": false, \"endTime\": \"2015-09-24T00:14:59.025Z\", \"type\": \"table\", \"id\": \"60b26bcc-3442-9e04-0c18-edc925b1d979\"}, \"showLogs\": false, \"hasDataForChart\": false, \"id\": \"4c6f589b-89a1-418e-24e1-70b782c7ba84\", \"codeVisible\": true, \"errors\": [], \"chartData\": [], \"statement_raw\": \"raw_data <- read.csv(\\\"apps/beeswax/data/web_logs_1.csv\\\", header=FALSE) \\ncolnames(raw_data) <- c(\\\"time\\\", \\\"resource\\\", \\\"size\\\", \\\"city\\\", \\\"ip\\\", \\\"code\\\", \\\"c2\\\", \\\"c3\\\")\\nfiltered_data <- raw_data[!(raw_data$resource==\\\"\\\"),]\\naggergated_data <- aggregate(data.frame(count = filtered_data$resource), list(value = filtered_data$resource), length)\\nsorted_data <- aggergated_data[order(aggergated_data$count),]\\npar(bg=c(\\\"#F5F5F5\\\"), mai=c(3.4,0.7,0.4,0))\\ncolfunc <- colorRampPalette(c(\\\"#205875\\\", \\\"#87bad5\\\"))\\n\\nbarplot(sorted_data$count,names.arg=sorted_data$value, main=\\\"Resource hits\\\", las=2, col=colfunc(nrow(sorted_data)), ylim=c(0,300))\", \"aceEditorMode\": \"ace/mode/r\", \"statement\": \"raw_data <- read.csv(\\\"apps/beeswax/data/web_logs_1.csv\\\", header=FALSE) \\ncolnames(raw_data) <- c(\\\"time\\\", \\\"resource\\\", \\\"size\\\", \\\"city\\\", \\\"ip\\\", \\\"code\\\", \\\"c2\\\", \\\"c3\\\")\\nfiltered_data <- raw_data[!(raw_data$resource==\\\"\\\"),]\\naggergated_data <- aggregate(data.frame(count = filtered_data$resource), list(value = filtered_data$resource), length)\\nsorted_data <- aggergated_data[order(aggergated_data$count),]\\npar(bg=c(\\\"#F5F5F5\\\"), mai=c(3.4,0.7,0.4,0))\\ncolfunc <- colorRampPalette(c(\\\"#205875\\\", \\\"#87bad5\\\"))\\nbarplot(sorted_data$count,names.arg=sorted_data$value, main=\\\"Resource hits\\\", las=2, col=colfunc(nrow(sorted_data)), ylim=c(0,300))\", \"aceSize\": 100, \"progress\": 0, \"type\": \"r\", \"status\": \"ready\", \"previousChartOptions\": {}, \"hasProperties\": false, \"completers\": [], \"variableNames\": [], \"resultsKlass\": \"results r\", \"chartYMulti\": [], \"chartType\": \"bars\", \"properties\": {}, \"name\": \"R with plotting\", \"subtype\": \"\", \"klass\": \"snippet card card-widget\", \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"name\": \"Sample Notebook\"}','','2015-09-23 17:16:54',1,0,5,NULL,0,NULL),(14,1100713,'Sample: Top salary','Top salary 2007 above $100k','17345ceb-db77-4025-adb9-95927e5844c5','query-hive','{\"showHistory\": true, \"uuid\": \"17345ceb-db77-4025-adb9-95927e5844c5\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Top salary\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Top salary\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"id\": \"33d249d9-d897-4505-9e87-51ae3bf3157c\", \"result\": {\"handle\": {}}, \"statement\": \"SELECT sample_07.description, sample_07.salary\\r\\nFROM\\r\\n  sample_07\\r\\nWHERE\\r\\n( sample_07.salary > 100000)\\r\\nORDER BY sample_07.salary DESC\\r\\nLIMIT 1000\", \"type\": \"hive\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Top salary 2007 above $100k\"}','','2017-06-28 22:58:02',1,0,5,NULL,0,NULL),(15,1100713,'Sample: Salary growth','Salary growth (sorted) from 2007-08','71887934-5611-4f9a-ae95-ef356a63a6c8','query-hive','{\"showHistory\": true, \"uuid\": \"71887934-5611-4f9a-ae95-ef356a63a6c8\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Salary growth\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Salary growth\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"id\": \"832e6779-2e70-4fc2-bb8b-a8203b974ef1\", \"result\": {\"handle\": {}}, \"statement\": \"SELECT s07.description, s07.salary, s08.salary,\\r\\n  s08.salary - s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN sample_08 s08\\r\\nON ( s07.code = s08.code)\\r\\nWHERE\\r\\n s07.salary < s08.salary\\r\\nORDER BY s08.salary-s07.salary DESC\\r\\nLIMIT 1000\", \"type\": \"hive\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Salary growth (sorted) from 2007-08\"}','','2017-06-28 22:58:02',1,0,5,NULL,0,NULL),(16,1100713,'Sample: Job loss','Job loss among the top earners 2007-08','48cfd7ed-9937-47dd-87ab-6365ccb71e85','query-hive','{\"parentSavedQueryUuid\": \"48cfd7ed-9937-47dd-87ab-6365ccb71e85\", \"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"id\": 16, \"snippets\": [{\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartMapType\": \"marker\", \"chartX\": \"s07.description\", \"chartYMulti\": [\"s08.total_emp\"], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"create  table aa(id int)\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 8, \"id\": \"addb6fa2-4668-f165-6021-7ddda4138d1c\", \"logs\": \"\", \"statements_count\": 1, \"rows\": \"0\", \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"statements_count\": 1, \"end\": {\"column\": 23, \"row\": 0}, \"statement_id\": 0, \"has_more_statements\": false, \"start\": {\"column\": 0, \"row\": 0}, \"secret\": \"Le05680xRg2ME5wJ/dFniw==\\n\", \"has_result_set\": false, \"session_guid\": \"1o6XNObhTtqml6yYTFoAUQ==\\n\", \"statement\": \"create  table aa(id int)\", \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"ec+j6JQFQR6fj9PyL9OJXw==\\n\", \"previous_statement_hash\": \"25431f82f5859f46bca34684c736a24acecfaf99cd82a5555785083d\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2017-06-29T09:44:37.379Z\", \"data\": [], \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": false, \"endTime\": \"2017-06-29T09:44:37.379Z\"}, \"pinnedContextTabs\": [], \"chartType\": \"bars\", \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"fb0558c3-723c-44f3-b6a2-7e5b85d64e52\", \"ddlNotification\": 0.43816844805851018, \"compatibilityTarget\": \"\", \"errors\": [], \"chartXPivot\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 1498729477366, \"queriesHasErrors\": false, \"showLogs\": true, \"errorsKlass\": \"results hive alert alert-error\", \"isReady\": true, \"statement\": \"create  table aa(id int)\", \"progress\": 0, \"type\": \"hive\", \"variables\": [], \"status\": \"available\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results hive\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"delayedDDLNotification\": 0.43816844805851018, \"showGrid\": true, \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"chartMapHeat\": null, \"name\": \"Sample: Job loss\", \"database\": \"default\", \"statementTypes\": [\"text\", \"file\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": true, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"showLongOperationWarning\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"uuid\": \"99956655-e700-486e-895b-cf07de043fa5\", \"onSuccessUrl\": null, \"historyFilterVisible\": false, \"retryModalConfirm\": null, \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"isHistory\": false, \"historyFilter\": \"\", \"description\": \"Job loss among the top earners 2007-08\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"updateHistoryFailed\": false, \"isBatchable\": true, \"skipHistorify\": false, \"isTask\": false, \"showHistory\": true, \"coordinatorUuid\": null, \"name\": \"Sample: Job loss\", \"loadingScheduler\": false, \"viewSchedulerId\": \"\", \"isSaved\": true, \"creatingSessionLocks\": [], \"directoryUuid\": null, \"unloaded\": false, \"dependentsCoordinator\": []}','','2017-06-29 02:45:37',1,0,5,'create  table aa(id int)',0,NULL),(17,1100713,'Sample: Customers','Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order','699c2990-21cc-4ce0-b094-4db8ea7696f1','query-hive','{\"showHistory\": true, \"uuid\": \"699c2990-21cc-4ce0-b094-4db8ea7696f1\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"onSuccessUrl\": null, \"name\": \"Sample: Customers\", \"skipHistorify\": false, \"isSaved\": true, \"isTask\": false, \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"snippets\": [{\"status\": \"ready\", \"wasBatchExecuted\": false, \"name\": \"Sample: Customers\", \"database\": \"default\", \"variables\": [], \"statement_raw\": \"-- Get email survey opt-in values for all customers\\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  customers.id,\\r\\n  customers.name\\r\\nFROM customers\\r\\nWHERE customers.addresses[\'shipping\'].zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n  c.name AS customer_name,\\r\\n  ords.order_id AS order_id,\\r\\n  SUM(order_items.price * order_items.qty) AS total_amount\\r\\nFROM\\r\\n  customers c\\r\\nLATERAL VIEW EXPLODE(c.orders) o AS ords\\r\\nLATERAL VIEW EXPLODE(ords.items) i AS order_items\\r\\nGROUP BY c.id, c.name, ords.order_id;\", \"id\": \"70a8a2db-9b59-4c02-aa8a-7ef790a9376b\", \"result\": {\"handle\": {}}, \"statement\": \"-- Get email survey opt-in values for all customers\\nSELECT\\r\\n  c.id,\\r\\n  c.name,\\r\\n  c.email_preferences.categories.surveys\\r\\nFROM customers c;\\n\\n\\n\\n-- Select customers for a given shipping ZIP Code\\nSELECT\\r\\n  customers.id,\\r\\n  customers.name\\r\\nFROM customers\\r\\nWHERE customers.addresses[\'shipping\'].zip_code = \'76710\';\\n\\n\\n\\n-- Compute total amount per order for all customers\\nSELECT\\r\\n  c.id AS customer_id,\\r\\n  c.name AS customer_name,\\r\\n  ords.order_id AS order_id,\\r\\n  SUM(order_items.price * order_items.qty) AS total_amount\\r\\nFROM\\r\\n  customers c\\r\\nLATERAL VIEW EXPLODE(c.orders) o AS ords\\r\\nLATERAL VIEW EXPLODE(ords.items) i AS order_items\\r\\nGROUP BY c.id, c.name, ords.order_id;\", \"type\": \"hive\", \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}}], \"description\": \"Email Survey Opt-Ins, Customers for Shipping ZIP Code, Total Amount per Order\"}','','2017-06-28 22:58:02',1,0,5,NULL,0,NULL),(20,1,'Yunchen Notebook','Run Spark Python, Scala and SQL snippets with graphs','eb4c0581-8d91-39b0-4bdd-56c788704215','notebook','{\"parentSavedQueryUuid\": null, \"loadingHistory\": true, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"id\": 20, \"snippets\": [{\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": \"Header\", \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": \"Header\", \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"print 1 + 1 + 1\\t\\n\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"cfe7b910-1e12-0aa6-ff9a-f319910fb153\", \"logs\": \"\", \"statements_count\": 1, \"rows\": \"1\", \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"text\", \"handle\": {\"has_result_set\": true, \"id\": 0}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2017-06-29T06:00:09.603Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2017-06-29T06:00:09.603Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"77730348-39cd-e4fd-a29c-c6072dbed21f\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 1498716009600, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results pyspark alert alert-error\", \"isReady\": true, \"statement\": \"print 1 + 1 + 1\\t\\n\", \"progress\": 0, \"type\": \"pyspark\", \"variables\": [], \"status\": \"loading\", \"currentQueryTab\": \"savedQueries\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 0, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"Simple Python count\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": true}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nfile = file.flatMap(lambda line: line.split(\\\"\\\\t\\\")).map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)\\n\\nfor row in file.collect()[:5]:\\n  print row\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"9c22a73b-284e-d386-92aa-bb3d4a8f56f5\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"text\", \"handle\": {\"has_result_set\": true, \"id\": 9}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:09.479Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 382, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:09.861Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"3f4f0226-61bf-3aa9-8582-f9ff4a4cf96f\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results pyspark alert alert-error\", \"isReady\": true, \"statement\": \"file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nfile = file.flatMap(lambda line: line.split(\\\"\\\\t\\\")).map(lambda word: (word, 1)).reduceByKey(lambda a, b: a + b)\\n\\nfor row in file.collect()[:5]:\\n  print row\", \"progress\": 0, \"type\": \"pyspark\", \"variables\": [], \"status\": \"loading\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"Use regular Py-spark functions\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": true}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"from random import random\\n\\nNUM_SAMPLES = 1000\\n\\ndef sample(p):\\n    x, y = random(), random()\\n    return 1 if x*x + y*y < 1 else 0\\n\\ncount = sc.parallelize(xrange(0, NUM_SAMPLES)).map(sample) \\\\\\n             .reduce(lambda a, b: a + b)\\n  \\nprint \\\"Pi is roughly %f\\\" % (4.0 * count / NUM_SAMPLES)\\n\\n\\n\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"20d976c0-8f89-4389-a25b-b7aead6ecbcc\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"text\", \"handle\": {\"has_result_set\": true, \"id\": 4}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:10.080Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 222, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:10.302Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"3a767895-9e1b-72c6-a093-50bd8b630cc0\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 193, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results pyspark alert alert-error\", \"isReady\": true, \"statement\": \"from random import random\\n\\nNUM_SAMPLES = 1000\\n\\ndef sample(p):\\n    x, y = random(), random()\\n    return 1 if x*x + y*y < 1 else 0\\n\\ncount = sc.parallelize(xrange(0, NUM_SAMPLES)).map(sample) \\\\\\n             .reduce(lambda a, b: a + b)\\n  \\nprint \\\"Pi is roughly %f\\\" % (4.0 * count / NUM_SAMPLES)\\n\\n\\n\", \"progress\": 0, \"type\": \"pyspark\", \"variables\": [], \"status\": \"loading\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": true}, {\"showLongOperationWarning\": false, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [\"1\", \"2\"], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": true, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]\\n%table a\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"227239df-e14c-a693-0325-a5ba12c935f6\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"has_result_set\": true, \"id\": 1}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:10.521Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 215, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:10.736Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"ca15b5c7-bd1a-8f2e-4dca-d030aa06ebda\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results pyspark alert alert-error\", \"isReady\": true, \"statement\": \"a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]\\n%table a\", \"progress\": 0, \"type\": \"pyspark\", \"variables\": [], \"status\": \"loading\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results pyspark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [\"1\", \"2\"], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": false, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"executingBlockingOperation\": null, \"name\": \"Introspect variables with the %table keyword\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": true}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"println(1 + 1 + 1)\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"7fcdffeb-5c22-2904-d111-869611f8ad97\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"text\", \"handle\": {\"has_result_set\": true, \"id\": 13}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:10.954Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 216, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:11.170Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"d1df6930-8c5d-dae6-1971-10c7a6821c79\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results spark alert alert-error\", \"isReady\": true, \"statement\": \"println(1 + 1 + 1)\", \"progress\": 0, \"type\": \"spark\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results spark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"Type Scala like in a shell\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"val file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nprintln(file.filter(line => line.contains(\\\"teachers\\\")).count())\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"060bb624-1d21-bc4a-2bcf-a0bf581f838b\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"has_result_set\": true, \"id\": 14}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:11.432Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 359, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:11.791Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"a527db12-3b2b-6abf-2859-c99c542163a5\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results spark alert alert-error\", \"isReady\": true, \"statement\": \"val file = sc.textFile(\\\"/user/hive/warehouse/sample_08/sample_08\\\")\\n\\nprintln(file.filter(line => line.contains(\\\"teachers\\\")).count())\", \"progress\": 0, \"type\": \"spark\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results spark\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"Use Spark Scala functions\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": \"os_family\", \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": \"os_family\", \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"select * from web_logs\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"2b945372-12f9-53f3-89a2-86b43f35cbd5\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"secret\": \"6lMs1ROUQWG7SVNB2rGpdA==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"6lMs1ROUQWG7SVNB2rGpdA==\\n\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:12.013Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 227, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:12.240Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"12594e87-ad0e-459e-4d80-602710147b0c\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results impala alert alert-error\", \"isReady\": true, \"statement\": \"select * from web_logs\", \"progress\": 0, \"type\": \"impala\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results impala\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"pie\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"Tabular view of the result of the query\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"showLongOperationWarning\": false, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": true, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"select country_code3, sum(bytes) FROM web_logs group by country_code3\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"58870c91-24a9-fa13-b03f-39dec1e1e499\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"secret\": \"KHFXqRmMRUyP4Cjj8zzjPQ==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"KHFXqRmMRUyP4Cjj8zzjPQ==\\n\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:12.465Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 223, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:12.688Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"8f9c855e-29e6-0985-80ad-9af4703e5945\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results impala alert alert-error\", \"isReady\": true, \"statement\": \"select country_code3, sum(bytes) FROM web_logs group by country_code3\", \"progress\": 0, \"type\": \"impala\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results impala\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"gradientmap\", \"showGrid\": false, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"executingBlockingOperation\": null, \"name\": \"SQL is integrated with graphical widgets\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"showLongOperationWarning\": false, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [\"total_emp\", \"salary\", \"bytes\", \"count(*)\", \"sum(bytes)\", \"sum(bytes) / 1024 ^ 2\"], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": true, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"select protocol, count(*), sum(bytes) / 1024^2 from web_logs group by protocol\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"73fcd92c-78d0-051f-ce8f-dcdaba7f1954\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"secret\": \"Noj6odsiShitoZJJ2Khreg==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"Noj6odsiShitoZJJ2Khreg==\\n\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:13.130Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 219, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:13.349Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"88c35435-d266-62fe-3706-63d0d28361bf\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results impala alert alert-error\", \"isReady\": true, \"statement\": \"select protocol, count(*), sum(bytes) / 1024^2 from web_logs group by protocol\", \"progress\": 0, \"type\": \"impala\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results impala\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [\"total_emp\", \"salary\", \"bytes\", \"count(*)\", \"sum(bytes)\", \"sum(bytes) / 1024 ^ 2\"], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": false, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"executingBlockingOperation\": null, \"name\": \"Multi bar chart\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"showLongOperationWarning\": false, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": true, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"select avg(latitude) as lat, avg(longitude) as long, app, sum(bytes) FROM web_logs group by app having lat < 100 and lat is not NULL\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"ad4aeeac-c594-9f41-6a49-cd2edb0198e0\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"secret\": \"Ra8tMJVFTGaU4g719thIFA==\\n\", \"has_result_set\": true, \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"Ra8tMJVFTGaU4g719thIFA==\\n\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-03-16T17:36:13.675Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 217, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-03-16T17:36:13.892Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"703a2174-36b8-dc44-4c45-e03faa0ddd47\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results impala alert alert-error\", \"isReady\": true, \"statement\": \"select avg(latitude) as lat, avg(longitude) as long, app, sum(bytes) FROM web_logs group by app having lat < 100 and lat is not NULL\", \"progress\": 0, \"type\": \"impala\", \"variables\": [], \"status\": \"ready\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results impala\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"scatter\", \"showGrid\": false, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"executingBlockingOperation\": null, \"name\": \"Scatter plot widget\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}, {\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartX\": null, \"chartMapType\": \"marker\", \"chartYMulti\": [], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"raw_data <- read.csv(\\\"apps/beeswax/data/web_logs_1.csv\\\", header=FALSE) \\ncolnames(raw_data) <- c(\\\"time\\\", \\\"resource\\\", \\\"size\\\", \\\"city\\\", \\\"ip\\\", \\\"code\\\", \\\"c2\\\", \\\"c3\\\")\\nfiltered_data <- raw_data[!(raw_data$resource==\\\"\\\"),]\\naggergated_data <- aggregate(data.frame(count = filtered_data$resource), list(value = filtered_data$resource), length)\\nsorted_data <- aggergated_data[order(aggergated_data$count),]\\npar(bg=c(\\\"#F5F5F5\\\"), mai=c(3.4,0.7,0.4,0))\\ncolfunc <- colorRampPalette(c(\\\"#205875\\\", \\\"#87bad5\\\"))\\n\\nbarplot(sorted_data$count,names.arg=sorted_data$value, main=\\\"Resource hits\\\", las=2, col=colfunc(nrow(sorted_data)), ylim=c(0,300))\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"60b26bcc-3442-9e04-0c18-edc925b1d979\", \"logs\": \"\", \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2015-09-24T00:14:59.025Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2015-09-24T00:14:59.025Z\"}, \"pinnedContextTabs\": [], \"chartXPivot\": null, \"viewSettings\": {\"placeHolder\": \"Example: 1 + 1, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"4c6f589b-89a1-418e-24e1-70b782c7ba84\", \"showLongOperationWarning\": false, \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 0, \"queriesHasErrors\": false, \"showLogs\": false, \"errorsKlass\": \"results r alert alert-error\", \"isReady\": true, \"statement\": \"raw_data <- read.csv(\\\"apps/beeswax/data/web_logs_1.csv\\\", header=FALSE) \\ncolnames(raw_data) <- c(\\\"time\\\", \\\"resource\\\", \\\"size\\\", \\\"city\\\", \\\"ip\\\", \\\"code\\\", \\\"c2\\\", \\\"c3\\\")\\nfiltered_data <- raw_data[!(raw_data$resource==\\\"\\\"),]\\naggergated_data <- aggregate(data.frame(count = filtered_data$resource), list(value = filtered_data$resource), length)\\nsorted_data <- aggergated_data[order(aggergated_data$count),]\\npar(bg=c(\\\"#F5F5F5\\\"), mai=c(3.4,0.7,0.4,0))\\ncolfunc <- colorRampPalette(c(\\\"#205875\\\", \\\"#87bad5\\\"))\\n\\nbarplot(sorted_data$count,names.arg=sorted_data$value, main=\\\"Resource hits\\\", las=2, col=colfunc(nrow(sorted_data)), ylim=c(0,300))\", \"progress\": 0, \"type\": \"r\", \"variables\": [], \"status\": \"failed\", \"currentQueryTab\": \"queryHistory\", \"jobs\": [], \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results r\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"showGrid\": true, \"properties\": {}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"name\": \"R with plotting\", \"database\": null, \"statementTypes\": [\"text\", \"file\", \"document\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": false, \"chartYSingle\": null, \"suggestion\": \"\", \"statementPath\": \"\", \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"uuid\": \"eb4c0581-8d91-39b0-4bdd-56c788704215\", \"onSuccessUrl\": null, \"historyFilterVisible\": false, \"retryModalConfirm\": null, \"selectedSnippet\": \"r\", \"type\": \"notebook\", \"historyFilter\": \"\", \"description\": \"Run Spark Python, Scala and SQL snippets with graphs\", \"sessions\": [], \"updateHistoryFailed\": false, \"isBatchable\": false, \"isHistory\": false, \"coordinatorUuid\": null, \"name\": \"Yunchen Notebook\", \"loadingScheduler\": false, \"viewSchedulerId\": \"\", \"isSaved\": true, \"creatingSessionLocks\": [\"pyspark\"], \"directoryUuid\": null, \"unloaded\": false, \"dependentsCoordinator\": []}','','2017-06-28 23:01:00',1,0,1,'print 1 + 1 + 1	\n',0,NULL),(49999,1100713,'MapReduce Sleep jobs','Run a MapReduce job that sleeps for N seconds','9f731852-0b1a-e7dd-1203-cf14778cdf20','oozie-workflow2','{\"layout\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"MapReduce job\", \"widgetType\": \"mapreduce-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"02c65a2e-5487-54d1-af0f-69c70dabbe94\", \"size\": 12}], \"id\": \"7b043639-0456-6fdf-0d03-881120e2128b\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"c0a3956c-f167-0d5d-6e60-b0edf2333496\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"MapReduce job\", \"widgetType\": \"mapreduce-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"02c65a2e-5487-54d1-af0f-69c70dabbe94\", \"size\": 12}], \"id\": \"7b043639-0456-6fdf-0d03-881120e2128b\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"df16edeb-ba59-a9b2-c9c0-5f2ff7b37b19\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"fee3b967-1a61-0eb0-76e2-e526fb084c7a\", \"columns\": []}], \"oozieEndRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"df16edeb-ba59-a9b2-c9c0-5f2ff7b37b19\", \"columns\": []}, \"oozieKillRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"fee3b967-1a61-0eb0-76e2-e526fb084c7a\", \"columns\": []}, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"c0a3956c-f167-0d5d-6e60-b0edf2333496\", \"columns\": []}, \"klass\": \"card card-home card-column span12\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"7d7ce852-61c1-06d8-1bb5-67a881cf7d76\", \"size\": 12}], \"workflow\": {\"properties\": {\"job_xml\": \"\", \"description\": \"Run a MapReduce job that sleeps for N seconds\", \"wf1_id\": null, \"sla_enabled\": false, \"deployment_dir\": \"/user/hue/oozie/workspaces/workflows/sleep\", \"schema_version\": \"uri:oozie:workflow:0.5\", \"properties\": [], \"show_arrows\": true, \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": true}], \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"MapReduce Sleep jobs\", \"versions\": [\"uri:oozie:workflow:0.4\", \"uri:oozie:workflow:0.4.5\", \"uri:oozie:workflow:0.5\"], \"isDirty\": true, \"movedNode\": null, \"linkMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": [], \"3f107997-04cc-8733-60a9-a4bb62cebffc\": [\"02c65a2e-5487-54d1-af0f-69c70dabbe94\"], \"02c65a2e-5487-54d1-af0f-69c70dabbe94\": [\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"], \"17c9c895-5a16-7443-bb81-f34b30b21548\": []}, \"nodeIds\": [\"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"02c65a2e-5487-54d1-af0f-69c70dabbe94\"], \"nodes\": [{\"properties\": {}, \"name\": \"Start\", \"children\": [{\"to\": \"02c65a2e-5487-54d1-af0f-69c70dabbe94\"}], \"actionParametersFetched\": false, \"type\": \"start-widget\", \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"actionParameters\": []}, {\"properties\": {}, \"name\": \"End\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"end-widget\", \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"actionParameters\": []}, {\"properties\": {\"message\": \"Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]\"}, \"name\": \"Kill\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"kill-widget\", \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"actionParameters\": []}, {\"properties\": {\"files\": [], \"job_xml\": \"\", \"jar_path\": \"/user/hue/oozie/workspaces/lib/hadoop-examples.jar\", \"job_properties\": [{\"name\": \"mapred.reduce.tasks\", \"value\": \"1\"}, {\"name\": \"mapred.mapper.class\", \"value\": \"org.apache.hadoop.examples.SleepJob\"}, {\"name\": \"mapred.reducer.class\", \"value\": \"org.apache.hadoop.examples.SleepJob\"}, {\"name\": \"mapred.mapoutput.key.class\", \"value\": \"org.apache.hadoop.io.IntWritable\"}, {\"name\": \"mapred.mapoutput.value.class\", \"value\": \"org.apache.hadoop.io.NullWritable\"}, {\"name\": \"mapred.output.format.class\", \"value\": \"org.apache.hadoop.mapred.lib.NullOutputFormat\"}, {\"name\": \"mapred.input.format.class\", \"value\": \"org.apache.hadoop.examples.SleepJob$SleepInputFormat\"}, {\"name\": \"mapred.partitioner.class\", \"value\": \"org.apache.hadoop.examples.SleepJob\"}, {\"name\": \"mapred.speculative.execution\", \"value\": \"false\"}, {\"name\": \"sleep.job.map.sleep.time\", \"value\": \"0\"}, {\"name\": \"sleep.job.reduce.sleep.time\", \"value\": \"${REDUCER_SLEEP_TIME}\"}], \"archives\": [], \"prepares\": [], \"credentials\": [], \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"mapreduce-02c6\", \"children\": [{\"to\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"}, {\"error\": \"17c9c895-5a16-7443-bb81-f34b30b21548\"}], \"actionParametersFetched\": false, \"type\": \"mapreduce-widget\", \"id\": \"02c65a2e-5487-54d1-af0f-69c70dabbe94\", \"actionParameters\": []}], \"id\": null, \"nodeNamesMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": \"End\", \"3f107997-04cc-8733-60a9-a4bb62cebffc\": \"Start\", \"02c65a2e-5487-54d1-af0f-69c70dabbe94\": \"mapreduce-02c6\", \"17c9c895-5a16-7443-bb81-f34b30b21548\": \"Kill\"}, \"uuid\": \"9f731852-0b1a-e7dd-1203-cf14778cdf20\"}}','','2015-05-13 09:27:05',1,0,5,NULL,0,NULL),(50000,1100713,'Spark','Copy a file by launching a Spark Java program','2d667ab2-70f9-c2bf-0726-abe84fa7130d','oozie-workflow2','{\"layout\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Spark\", \"widgetType\": \"spark-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\", \"size\": 12}], \"id\": \"d078a9c7-96dc-293d-8fb7-d5fa74f57a24\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"e4e4f7c5-939e-e60e-d6a0-380a0b58ff3b\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Spark\", \"widgetType\": \"spark-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\", \"size\": 12}], \"id\": \"d078a9c7-96dc-293d-8fb7-d5fa74f57a24\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"73a5f080-76d0-2f8a-49fc-bf5c75e2a7c1\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"fb5c57ae-85eb-e519-6b95-370d532fa757\", \"columns\": []}], \"oozieEndRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"73a5f080-76d0-2f8a-49fc-bf5c75e2a7c1\", \"columns\": []}, \"oozieKillRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"fb5c57ae-85eb-e519-6b95-370d532fa757\", \"columns\": []}, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"e4e4f7c5-939e-e60e-d6a0-380a0b58ff3b\", \"columns\": []}, \"klass\": \"card card-home card-column span12\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"c844d341-c306-aab2-3a23-bc00d7fe76dc\", \"size\": 12}], \"workflow\": {\"properties\": {\"files\": [{\"value\":\"lib/oozie-examples.jar\"}], \"job_xml\": \"\", \"description\": \"Copy a file by launching a Spark Java program\", \"wf1_id\": null, \"sla_enabled\": false, \"deployment_dir\": \"/user/hue/oozie/workspaces/workflows/spark-scala\", \"schema_version\": \"uri:oozie:workflow:0.5\", \"properties\": [], \"sla_workflow_enabled\": false, \"show_arrows\": true, \"credentials\": [], \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": true}, {\"name\": \"input\", \"value\": \"/user/hue/oozie/workspaces/data/sonnets.txt\"}, {\"name\": \"output\", \"value\": \"here\"}], \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"Spark\", \"versions\": [\"uri:oozie:workflow:0.4\", \"uri:oozie:workflow:0.4.5\", \"uri:oozie:workflow:0.5\"], \"isDirty\": true, \"movedNode\": null, \"linkMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": [], \"3f107997-04cc-8733-60a9-a4bb62cebffc\": [\"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\"], \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\": [\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"], \"17c9c895-5a16-7443-bb81-f34b30b21548\": []}, \"nodeIds\": [\"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\"], \"nodes\": [{\"properties\": {}, \"name\": \"Start\", \"children\": [{\"to\": \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\"}], \"actionParametersFetched\": false, \"type\": \"start-widget\", \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"actionParameters\": []}, {\"properties\": {}, \"name\": \"End\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"end-widget\", \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"actionParameters\": []}, {\"properties\": {\"message\": \"Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]\"}, \"name\": \"Kill\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"kill-widget\", \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"actionParameters\": []}, {\"properties\": {\"job_xml\": [], \"app_name\": \"MySpark\", \"spark_opts\": \"\", \"class\": \"org.apache.oozie.example.SparkFileCopy\", \"job_properties\": [], \"spark_arguments\": [{\"value\": \"${input}\"}, {\"value\": \"${output}\"}], \"spark_master\": \"yarn\", \"mode\": \"client\", \"prepares\": [], \"credentials\": [], \"jars\": \"oozie-examples.jar\", \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"spark-d909\", \"children\": [{\"to\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"}, {\"error\": \"17c9c895-5a16-7443-bb81-f34b30b21548\"}], \"actionParametersFetched\": false, \"type\": \"spark-widget\", \"id\": \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\", \"actionParameters\": []}], \"id\": 50000, \"nodeNamesMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": \"End\", \"3f107997-04cc-8733-60a9-a4bb62cebffc\": \"Start\", \"d909ca7e-b1d9-f8f3-9b57-cddf9a8e75a7\": \"spark-d909\", \"17c9c895-5a16-7443-bb81-f34b30b21548\": \"Kill\"}, \"uuid\": \"2d667ab2-70f9-c2bf-0726-abe84fa7130d\"}}','','2015-03-11 08:19:12',1,0,5,NULL,0,NULL),(50001,1100713,'Hive SQL','Run Hive script with HiveServer2','c1c3cba9-edec-fb6f-a526-9f80b66fe993','oozie-workflow2','{\"layout\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"HiveServer2 Script\", \"widgetType\": \"hive2-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\", \"size\": 12}], \"id\": \"096a3ffa-dc03-6ce3-1811-1b430f695c9e\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"7a1bdb09-b575-3288-185c-ad6fe665cd1c\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"HiveServer2 Script\", \"widgetType\": \"hive2-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\", \"size\": 12}], \"id\": \"096a3ffa-dc03-6ce3-1811-1b430f695c9e\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"0421e5a9-e5c0-77ae-3ff9-b3eba2933ea9\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"4f58390d-276a-fb3e-f37b-85f8a38cb303\", \"columns\": []}], \"oozieEndRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"0421e5a9-e5c0-77ae-3ff9-b3eba2933ea9\", \"columns\": []}, \"oozieKillRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"4f58390d-276a-fb3e-f37b-85f8a38cb303\", \"columns\": []}, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"7a1bdb09-b575-3288-185c-ad6fe665cd1c\", \"columns\": []}, \"klass\": \"card card-home card-column span12\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"ea488c2f-56a6-c5e5-be3c-5c396ad4f877\", \"size\": 12}], \"workflow\": {\"properties\": {\"job_xml\": \"\", \"description\": \"Run Hive script with HiveServer2\", \"wf1_id\": null, \"sla_enabled\": false, \"deployment_dir\": \"/user/hue/oozie/workspaces/workflows/hiveserver2\", \"schema_version\": \"uri:oozie:workflow:0.5\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"${nominal_time}\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"${30 * MINUTES}\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"sla_workflow_enabled\": false, \"show_arrows\": true, \"credentials\": [], \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": true}], \"properties\": []}, \"name\": \"Hive SQL\", \"versions\": [\"uri:oozie:workflow:0.4\", \"uri:oozie:workflow:0.4.5\", \"uri:oozie:workflow:0.5\"], \"isDirty\": true, \"movedNode\": null, \"linkMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": [], \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\": [\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"], \"3f107997-04cc-8733-60a9-a4bb62cebffc\": [\"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\"], \"17c9c895-5a16-7443-bb81-f34b30b21548\": []}, \"nodeIds\": [\"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\"], \"nodes\": [{\"properties\": {}, \"name\": \"Start\", \"children\": [{\"to\": \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\"}], \"actionParametersFetched\": false, \"type\": \"start-widget\", \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"actionParameters\": []}, {\"properties\": {}, \"name\": \"End\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"end-widget\", \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"actionParameters\": []}, {\"properties\": {\"message\": \"Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]\"}, \"name\": \"Kill\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"kill-widget\", \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"actionParameters\": []}, {\"name\": \"hive2-cec1\", \"actionParametersUI\": [], \"children\": [{\"to\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"}, {\"error\": \"17c9c895-5a16-7443-bb81-f34b30b21548\"}], \"properties\": {\"files\": [], \"job_xml\": \"\", \"parameters\": [{\"value\": \"fields=description, salary\"}, {\"value\": \"tablename=sample_07\"}, {\"value\": \"n=10\"}], \"job_properties\": [], \"jdbc_url\": \"\", \"archives\": [], \"prepares\": [], \"credentials\": [], \"script_path\": \"select.sql\", \"password\": \"\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"${nominal_time}\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"${30 * MINUTES}\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}]}, \"actionParametersFetched\": false, \"type\": \"hive2-widget\", \"id\": \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\", \"actionParameters\": []}], \"id\": 50001, \"nodeNamesMapping\": {\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": \"End\", \"cec1af8d-3577-b36e-3bf9-0c5b419a4f92\": \"hive2-cec1\", \"3f107997-04cc-8733-60a9-a4bb62cebffc\": \"Start\", \"17c9c895-5a16-7443-bb81-f34b30b21548\": \"Kill\"}, \"uuid\": \"c1c3cba9-edec-fb6f-a526-9f80b66fe993\"}}','','2015-03-11 11:44:36',1,0,5,NULL,0,NULL),(50003,1100713,'My Coordinator','Copy everyday from files with a Spark job','1d1a9eec-d969-4cd6-c3c4-cb5b78f52f38','oozie-coordinator2','{\"end_date\": {\"name\": \"end_date\", \"value\": \"2013-06-05T00:00Z\"}, \"variables\": [{\"shared_dataset_uuid\": \"\", \"is_advanced_start_instance\": false, \"show_advanced\": false, \"start_instance\": \"0\", \"timezone\": \"America/Los_Angeles\", \"end_instance\": \"0\", \"same_timezone\": true, \"uuid\": \"a96e02cd-70b3-5faf-1633-963d4251ce23\", \"frequency_number\": \"1\", \"dataset_variable\": \"/user/hue/oozie/workspaces/data/${YEAR}${MONTH}${DAY}\", \"start\": \"2015-03-11T20:51:48.374Z\", \"same_frequency\": true, \"advanced_start_instance\": \"${coord:current(0)}\", \"advanced_end_instance\": \"${coord:current(0)}\", \"instance_choice\": \"default\", \"dataset_type\": \"input_path\", \"use_done_flag\": false, \"done_flag\": \"_SUCCESS\", \"same_start\": true, \"frequency_unit\": \"days\", \"workflow_variable\": \"input\", \"is_advanced_end_instance\": false}, {\"shared_dataset_uuid\": \"\", \"is_advanced_start_instance\": false, \"show_advanced\": false, \"start_instance\": \"0\", \"timezone\": \"America/Los_Angeles\", \"end_instance\": \"0\", \"same_timezone\": true, \"uuid\": \"3748a9a6-5889-af8a-41a7-100d85a6d5be\", \"frequency_number\": \"1\", \"dataset_variable\": \"${directory}/${YEAR}${MONTH}${DAY}\", \"start\": \"2015-03-11T20:51:48.421Z\", \"same_frequency\": true, \"advanced_start_instance\": \"${coord:current(0)}\", \"advanced_end_instance\": \"${coord:current(0)}\", \"instance_choice\": \"default\", \"dataset_type\": \"output_path\", \"use_done_flag\": false, \"done_flag\": \"_SUCCESS\", \"same_start\": true, \"frequency_unit\": \"days\", \"workflow_variable\": \"output\", \"is_advanced_end_instance\": false}], \"isDirty\": true, \"showAdvancedFrequencyUI\": true, \"variablesUI\": [\"parameter\", \"input_path\", \"output_path\"], \"workflowParameters\": [{\"name\": \"input\", \"value\": \"/user/hue/oozie/workspaces/data/sonnets.txt\"}, {\"name\": \"output\", \"value\": \"here\"}], \"id\": 50003, \"name\": \"My Coordinator\", \"uuid\": \"1d1a9eec-d969-4cd6-c3c4-cb5b78f52f38\", \"properties\": {\"job_xml\": \"\", \"description\": \"Copy everyday from files with a Spark job\", \"end\": \"${end_date}\", \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": true}, {\"name\": \"start_date\", \"value\": \"2013-06-01T00:00Z\"}, {\"name\": \"end_date\", \"value\": \"2013-06-05T00:00Z\"}, {\"name\": \"directory\", \"value\": \"/tmp/coordinator-output\"}], \"frequency_number\": 1, \"sla_enabled\": false, \"deployment_dir\": \"/user/hue/oozie/workspaces/coordinators/daily-copy\", \"cron_frequency\": \"0 0 * * *\", \"frequency_unit\": \"days\", \"workflow\": \"2d667ab2-70f9-c2bf-0726-abe84fa7130d\", \"cron_advanced\": false, \"start\": \"${start_date}\", \"sla_workflow_enabled\": false, \"schema_version\": \"uri:oozie:coordinator:0.2\", \"timeout\": null, \"timezone\": \"America/Los_Angeles\", \"credentials\": [], \"execution\": \"FIFO\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"${nominal_time}\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"${30 * MINUTES}\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}]}, \"start_date\": {\"name\": \"start_date\", \"value\": \"2013-06-01T00:00Z\"}}','','2015-03-11 13:56:22',1,0,5,NULL,0,NULL),(50004,1100713,'Copy Files','Aggregate two coordinators that copy files and run them together','d1d4507d-fd70-9c44-02f1-548c9cf71364','oozie-bundle2','{\"properties\": {\"deployment_dir\": \"/user/hue/oozie/workspaces/bundles/copy-files\", \"description\": \"Aggregate two coordinators that copy files and run them together\", \"kickoff\": \"2015-03-11T15:22:31\", \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": \"true\"}, {\"name\": \"root_output\", \"value\": \"bundle-example\"}], \"schema_version\": \"uri:oozie:bundle:0.2\"}, \"uuid\": \"d1d4507d-fd70-9c44-02f1-548c9cf71364\", \"isDirty\": true, \"coordinators\": [{\"coordinator\": \"1d1a9eec-d969-4cd6-c3c4-cb5b78f52f38\", \"properties\": [{\"name\": \"directory\", \"value\": \"${root_output}/coordinator1\"}, {\"name\": \"start_date\", \"value\": \"2013-06-01T00:00Z\"}, {\"name\": \"end_date\", \"value\": \"2013-06-05T00:00Z\"}]}, {\"coordinator\": \"1d1a9eec-d969-4cd6-c3c4-cb5b78f52f38\", \"properties\": [{\"name\": \"directory\", \"value\": \"${root_output}/coordinator2\"}, {\"name\": \"start_date\", \"value\": \"2013-06-01T00:00Z\"}, {\"name\": \"end_date\", \"value\": \"2013-06-05T00:00Z\"}]}], \"id\": 50004, \"name\": \"Copy Files\"}','','2015-03-11 15:39:21',1,0,5,NULL,0,NULL),(50006,1100713,'Fork Example','Run a Pig script and a Sub-workflow in parallel','a3b8b8d5-d690-c4b9-5885-9d458a007744','oozie-workflow2','{\"layout\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"fork-0dc5\", \"widgetType\": \"fork-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\", \"size\": 12}], \"id\": \"e9835fe3-85c8-4651-819c-6c60f4e8c980\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": true, \"widgets\": [], \"id\": \"d86070af-80b9-047e-858e-3840d03e7e1d\", \"columns\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Pig Script\", \"widgetType\": \"pig-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"size\": 12}], \"id\": \"57c05732-3ba0-76bd-c39d-1c200b91a60b\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Pig Script\", \"widgetType\": \"pig-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"size\": 12}], \"id\": \"57c05732-3ba0-76bd-c39d-1c200b91a60b\", \"columns\": []}], \"oozieEndRow\": null, \"oozieKillRow\": null, \"percWidth\": 49.5, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": null, \"klass\": \"card card-home card-column span6\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"5de8f75e-1839-428c-e6d2-ac8a1ecc3320\", \"size\": 6}, {\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Sub workflow\", \"widgetType\": \"subworkflow-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"size\": 12}], \"id\": \"c0393c8e-0de6-ed7d-3d88-e1c63801948b\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Sub workflow\", \"widgetType\": \"subworkflow-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"size\": 12}], \"id\": \"c0393c8e-0de6-ed7d-3d88-e1c63801948b\", \"columns\": []}], \"oozieEndRow\": null, \"oozieKillRow\": null, \"percWidth\": 49.5, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": null, \"klass\": \"card card-home card-column span6\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"e522e979-a707-ef3d-a829-b96f35f5604a\", \"size\": 6}]}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"join-9dad\", \"widgetType\": \"join-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\", \"size\": 12}], \"id\": \"aaa444f5-ce38-ff08-fe2b-3ea3c1f7f35d\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"21de5cfa-58bd-e8ca-5b35-eed1dce5ca19\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"fork-0dc5\", \"widgetType\": \"fork-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\", \"size\": 12}], \"id\": \"e9835fe3-85c8-4651-819c-6c60f4e8c980\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": true, \"widgets\": [], \"id\": \"d86070af-80b9-047e-858e-3840d03e7e1d\", \"columns\": [{\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Pig Script\", \"widgetType\": \"pig-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"size\": 12}], \"id\": \"57c05732-3ba0-76bd-c39d-1c200b91a60b\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Pig Script\", \"widgetType\": \"pig-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"size\": 12}], \"id\": \"57c05732-3ba0-76bd-c39d-1c200b91a60b\", \"columns\": []}], \"oozieEndRow\": null, \"oozieKillRow\": null, \"percWidth\": 49.5, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": null, \"klass\": \"card card-home card-column span6\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"5de8f75e-1839-428c-e6d2-ac8a1ecc3320\", \"size\": 6}, {\"oozieRows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Sub workflow\", \"widgetType\": \"subworkflow-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"size\": 12}], \"id\": \"c0393c8e-0de6-ed7d-3d88-e1c63801948b\", \"columns\": []}], \"rows\": [{\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Sub workflow\", \"widgetType\": \"subworkflow-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"size\": 12}], \"id\": \"c0393c8e-0de6-ed7d-3d88-e1c63801948b\", \"columns\": []}], \"oozieEndRow\": null, \"oozieKillRow\": null, \"percWidth\": 49.5, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": null, \"klass\": \"card card-home card-column span6\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"e522e979-a707-ef3d-a829-b96f35f5604a\", \"size\": 6}]}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"join-9dad\", \"widgetType\": \"join-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\", \"size\": 12}], \"id\": \"aaa444f5-ce38-ff08-fe2b-3ea3c1f7f35d\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"35529830-934b-f618-76d5-913a639de36a\", \"columns\": []}, {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"cef39cfa-085b-a44a-d618-bb8258c262f2\", \"columns\": []}], \"oozieEndRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"End\", \"widgetType\": \"end-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"size\": 12}], \"id\": \"35529830-934b-f618-76d5-913a639de36a\", \"columns\": []}, \"oozieKillRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Kill\", \"widgetType\": \"kill-widget\", \"oozieMovable\": true, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"size\": 12}], \"id\": \"cef39cfa-085b-a44a-d618-bb8258c262f2\", \"columns\": []}, \"enableOozieDropOnAfter\": true, \"oozieStartRow\": {\"enableOozieDropOnBefore\": true, \"enableOozieDropOnSide\": true, \"enableOozieDrop\": false, \"widgets\": [{\"status\": \"\", \"logsURL\": \"\", \"name\": \"Start\", \"widgetType\": \"start-widget\", \"oozieMovable\": false, \"ooziePropertiesExpanded\": false, \"properties\": {}, \"isLoading\": true, \"offset\": 0, \"actionURL\": \"\", \"progress\": 0, \"klass\": \"card card-widget span12\", \"oozieExpanded\": false, \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"size\": 12}], \"id\": \"21de5cfa-58bd-e8ca-5b35-eed1dce5ca19\", \"columns\": []}, \"klass\": \"card card-home card-column span12\", \"enableOozieDropOnBefore\": true, \"drops\": [\"temp\"], \"id\": \"c867617a-758e-71d5-47dd-6e47e047e6d8\", \"size\": 12}], \"workflow\": {\"properties\": {\"job_xml\": \"\", \"description\": \"Run a Pig script and a Sub-workflow in parallel\", \"wf1_id\": null, \"sla_enabled\": false, \"deployment_dir\": \"/user/hue/oozie/workspaces/workflows/fork\", \"schema_version\": \"uri:oozie:workflow:0.5\", \"properties\": [], \"sla_workflow_enabled\": false, \"show_arrows\": true, \"credentials\": [], \"parameters\": [{\"name\": \"oozie.use.system.libpath\", \"value\": true}], \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"Fork Example\", \"versions\": [\"uri:oozie:workflow:0.4\", \"uri:oozie:workflow:0.4.5\", \"uri:oozie:workflow:0.5\"], \"isDirty\": false, \"movedNode\": null, \"linkMapping\": {\"9dad1953-bf0b-1fb1-389d-4a2e83574dca\": [\"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"], \"17c9c895-5a16-7443-bb81-f34b30b21548\": [], \"3aebb345-f5db-b76b-559d-e9ec22f543a1\": [\"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"], \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": [], \"3f107997-04cc-8733-60a9-a4bb62cebffc\": [\"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\"], \"f848895a-e4fa-e535-39c4-a94736667266\": [\"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"], \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\": [\"f848895a-e4fa-e535-39c4-a94736667266\", \"3aebb345-f5db-b76b-559d-e9ec22f543a1\"]}, \"nodeIds\": [\"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"f848895a-e4fa-e535-39c4-a94736667266\", \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\", \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"], \"nodes\": [{\"properties\": {}, \"name\": \"Start\", \"children\": [{\"to\": \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\"}], \"actionParametersFetched\": false, \"type\": \"start-widget\", \"id\": \"3f107997-04cc-8733-60a9-a4bb62cebffc\", \"actionParameters\": []}, {\"properties\": {}, \"name\": \"End\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"end-widget\", \"id\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\", \"actionParameters\": []}, {\"properties\": {\"message\": \"Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]\"}, \"name\": \"Kill\", \"children\": [], \"actionParametersFetched\": false, \"type\": \"kill-widget\", \"id\": \"17c9c895-5a16-7443-bb81-f34b30b21548\", \"actionParameters\": []}, {\"properties\": {\"propagate_configuration\": true, \"workflow\": \"2d667ab2-70f9-c2bf-0726-abe84fa7130d\", \"job_properties\": [{\"name\": \"input\", \"value\": \"/user/hue/oozie/workspaces/data/sonnets.txt\"}, {\"name\": \"output\", \"value\": \"${output}\"}], \"sla\": [{\"value\": false, \"key\": \"enabled\"}, {\"value\": \"${nominal_time}\", \"key\": \"nominal-time\"}, {\"value\": \"\", \"key\": \"should-start\"}, {\"value\": \"${30 * MINUTES}\", \"key\": \"should-end\"}, {\"value\": \"\", \"key\": \"max-duration\"}, {\"value\": \"\", \"key\": \"alert-events\"}, {\"value\": \"\", \"key\": \"alert-contact\"}, {\"value\": \"\", \"key\": \"notification-msg\"}, {\"value\": \"\", \"key\": \"upstream-apps\"}]}, \"name\": \"subworkflow-f848\", \"children\": [{\"to\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"}, {\"error\": \"17c9c895-5a16-7443-bb81-f34b30b21548\"}], \"actionParametersFetched\": false, \"type\": \"subworkflow-widget\", \"id\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"actionParameters\": []}, {\"name\": \"pig-3aeb\", \"actionParametersUI\": [], \"children\": [{\"to\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"}, {\"error\": \"17c9c895-5a16-7443-bb81-f34b30b21548\"}], \"properties\": {\"files\": [], \"job_xml\": [], \"parameters\": [{\"value\": \"input=/user/hue/oozie/workspaces/data/sonnets.txt\"}, {\"value\": \"limit=10\"}], \"job_properties\": [], \"arguments\": [], \"prepares\": [], \"credentials\": [], \"script_path\": \"dump.pig\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"${nominal_time}\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"${30 * MINUTES}\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"archives\": []}, \"actionParametersFetched\": false, \"type\": \"pig-widget\", \"id\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"actionParameters\": []}, {\"properties\": {\"join_id\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\"}, \"name\": \"fork-0dc5\", \"children\": [{\"to\": \"f848895a-e4fa-e535-39c4-a94736667266\", \"condition\": \"${ 1 gt 0 }\"}, {\"to\": \"3aebb345-f5db-b76b-559d-e9ec22f543a1\", \"condition\": \"${ 1 gt 0 }\"}], \"actionParametersFetched\": false, \"type\": \"fork-widget\", \"id\": \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\", \"actionParameters\": []}, {\"properties\": {\"fork_id\": \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\"}, \"name\": \"join-9dad\", \"children\": [{\"to\": \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\"}], \"actionParametersFetched\": false, \"type\": \"join-widget\", \"id\": \"9dad1953-bf0b-1fb1-389d-4a2e83574dca\", \"actionParameters\": []}], \"id\": 50006, \"nodeNamesMapping\": {\"9dad1953-bf0b-1fb1-389d-4a2e83574dca\": \"join-9dad\", \"17c9c895-5a16-7443-bb81-f34b30b21548\": \"Kill\", \"3aebb345-f5db-b76b-559d-e9ec22f543a1\": \"pig-3aeb\", \"33430f0f-ebfa-c3ec-f237-3e77efa03d0a\": \"End\", \"3f107997-04cc-8733-60a9-a4bb62cebffc\": \"Start\", \"f848895a-e4fa-e535-39c4-a94736667266\": \"subworkflow-f848\", \"0dc5f76b-95c3-efdb-1b4d-0b13fbad7561\": \"fork-0dc5\"}, \"uuid\": \"a3b8b8d5-d690-c4b9-5885-9d458a007744\"}}','','2015-03-11 17:44:55',1,0,5,NULL,0,NULL),(50007,1100713,'Shell','Example of Shell action','12dfe495-1a9f-4c35-b271-a490651e884a','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 1}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50008,1100713,'Fs','Example of Fs action','3bd2c2e1-ed02-4859-aa2a-30504caf4377','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 2}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50009,1100713,'Sqoop','Example of Sqoop action','ca06a078-3210-422b-bc71-f603e074558e','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 3}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50010,1100713,'Ssh','Example of SSH action','17d7395d-0ab4-414c-89f8-de8e141a21ee','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 4}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50011,1100713,'Hive','Example of Hive action','4f4febdc-0d79-4efa-8583-5191b91526c0','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 5}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50012,1100713,'Email','Example of Email action','850d6401-541c-437f-b863-eb26fbddd234','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 6}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50013,1100713,'DistCp','Example of DistCp action','1dcdc6de-50a8-422d-a110-e1a9b11d659d','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 7}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50014,1100713,'Pig','Example of Pig action','c430cd7c-4b20-40d9-b769-036ca577b395','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 8}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50015,1100713,'MapReduce','Example of MapReduce action that sleeps','2d25d722-4956-4f2a-a1bf-520f78d347f4','link-workflow','{\"credentials\": [], \"content_type\": \"workflow\", \"sla\": [{\"key\": \"enabled\", \"value\": false}, {\"key\": \"nominal-time\", \"value\": \"\"}, {\"key\": \"should-start\", \"value\": \"\"}, {\"key\": \"should-end\", \"value\": \"\"}, {\"key\": \"max-duration\", \"value\": \"\"}, {\"key\": \"alert-events\", \"value\": \"\"}, {\"key\": \"alert-contact\", \"value\": \"\"}, {\"key\": \"notification-msg\", \"value\": \"\"}, {\"key\": \"upstream-apps\", \"value\": \"\"}], \"object_id\": 9}','','2017-06-28 23:03:14',1,0,5,NULL,0,NULL),(50016,1,'Sample: Job loss','','dd9f6476-707b-4e78-a08a-8e06a7e188e8','query-hive','{\"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"id\": 50016, \"retryModalConfirm\": null, \"uuid\": \"dd9f6476-707b-4e78-a08a-8e06a7e188e8\", \"onSuccessUrl\": null, \"is_history\": true, \"historyFilterVisible\": false, \"snippets\": [{\"showLongOperationWarning\": false, \"status\": \"expired\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"lastExecuted\": 1498729361979, \"queriesFilterVisible\": false, \"externalStatementLoaded\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"queriesHasErrors\": false, \"errorsKlass\": \"results hive alert alert-error\", \"result\": {\"logs\": \"\", \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"addb6fa2-4668-f165-6021-7ddda4138d1c\", \"statement_id\": 0, \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"statements_count\": 1, \"end\": {\"column\": 243, \"row\": 0}, \"statement_id\": 0, \"has_more_statements\": false, \"start\": {\"column\": 0, \"row\": 0}, \"secret\": \"/zyZ9vqQQXCHmp07ex8ohw==\\n\", \"has_result_set\": true, \"session_guid\": \"1o6XNObhTtqml6yYTFoAUQ==\\n\", \"statement\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\r\\nLIMIT 1000\", \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"ZFVprGWZTDaaU8G2qZbRyA==\\n\", \"previous_statement_hash\": \"5502ed46e13a520e7046aa45c1012f9c2a424af25c04c70e0598b13c\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2017-06-29T09:42:41.986Z\", \"data\": [], \"previous_statement_hash\": null, \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2017-06-29T09:42:41.986Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"fb0558c3-723c-44f3-b6a2-7e5b85d64e52\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"executingBlockingOperation\": null, \"chartData\": [], \"statementPath\": \"\", \"statement_raw\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\r\\nLIMIT 1000\", \"showLogs\": false, \"chartMapLabel\": null, \"isReady\": true, \"associatedDocumentUuid\": null, \"statement\": \"SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\\r\\nFROM\\r\\n  sample_07 s07 JOIN \\r\\n  sample_08 s08\\r\\nON ( s07.code = s08.code )\\r\\nWHERE\\r\\n( s07.total_emp > s08.total_emp\\r\\n AND s07.salary > 100000 )\\r\\nORDER BY s07.salary DESC\\r\\nLIMIT 1000\", \"progress\": 0, \"type\": \"hive\", \"variables\": [], \"chartSorting\": \"none\", \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartMapType\": \"marker\", \"chartX\": null, \"chartXPivot\": null, \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartYMulti\": []}, \"jobs\": [], \"isSqlDialect\": true, \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results hive\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"currentQueryTab\": \"queryHistory\", \"showGrid\": true, \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}, \"isFetchingData\": false, \"name\": \"Sample: Job loss\", \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"statusForButtons\": \"executing\", \"database\": \"default\", \"statementTypes\": [\"text\", \"file\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"isOptimizing\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"chartScatterGroup\": null, \"isBatchable\": true, \"chartYSingle\": null, \"suggestion\": \"\", \"chartXPivot\": null, \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"isHistory\": false, \"type\": \"query-hive\", \"historyFilter\": \"\", \"description\": \"Job loss among the top earners 2007-08\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"updateHistoryFailed\": false, \"isSaved\": true, \"isBatchable\": true, \"selectedSnippet\": \"hive\", \"coordinatorUuid\": null, \"name\": \"Sample: Job loss\", \"loadingScheduler\": false, \"unloaded\": false, \"viewSchedulerId\": \"\", \"creatingSessionLocks\": [], \"directoryUuid\": null, \"parentSavedQueryUuid\": \"48cfd7ed-9937-47dd-87ab-6365ccb71e85\", \"dependentsCoordinator\": []}','','2017-06-29 19:31:00',1,1,1,'SELECT s07.description, s07.total_emp, s08.total_emp, s07.salary\r\nFROM\r\n  sample_07 s07 JOIN \r\n  sample_08 s08\r\nON ( s07.code = s08.code )\r\nWHERE\r\n( s07.total_emp > s08.total_emp\r\n AND s07.salary > 100000 )\r\nORDER BY s07.salary DESC\r\nLIMIT 1000',0,NULL),(50017,1,'Sample: Job loss','','99956655-e700-486e-895b-cf07de043fa5','query-hive','{\"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"id\": 50017, \"retryModalConfirm\": null, \"uuid\": \"99956655-e700-486e-895b-cf07de043fa5\", \"onSuccessUrl\": null, \"is_history\": true, \"historyFilterVisible\": false, \"snippets\": [{\"showLongOperationWarning\": false, \"status\": \"expired\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": \"s07.description\", \"lastExecuted\": 1498729477366, \"queriesFilterVisible\": false, \"externalStatementLoaded\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"queriesHasErrors\": false, \"errorsKlass\": \"results hive alert alert-error\", \"result\": {\"logs\": \"\", \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 0, \"id\": \"addb6fa2-4668-f165-6021-7ddda4138d1c\", \"statement_id\": 0, \"statements_count\": 1, \"rows\": null, \"hasSomeResults\": true, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"statements_count\": 1, \"end\": {\"column\": 23, \"row\": 0}, \"statement_id\": 0, \"has_more_statements\": false, \"start\": {\"column\": 0, \"row\": 0}, \"secret\": \"Le05680xRg2ME5wJ/dFniw==\\n\", \"has_result_set\": false, \"session_guid\": \"1o6XNObhTtqml6yYTFoAUQ==\\n\", \"statement\": \"create  table aa(id int)\", \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"ec+j6JQFQR6fj9PyL9OJXw==\\n\", \"previous_statement_hash\": \"25431f82f5859f46bca34684c736a24acecfaf99cd82a5555785083d\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2017-06-29T09:44:37.379Z\", \"data\": [], \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": true, \"endTime\": \"2017-06-29T09:44:37.379Z\"}, \"pinnedContextTabs\": [], \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"loadingQueries\": false, \"hasDataForChart\": true, \"id\": \"fb0558c3-723c-44f3-b6a2-7e5b85d64e52\", \"compatibilityTarget\": \"\", \"errors\": [], \"chartMapHeat\": null, \"aceSize\": 100, \"executingBlockingOperation\": null, \"chartData\": [], \"statementPath\": \"\", \"statement_raw\": \"create  table aa(id int)\", \"showLogs\": true, \"chartMapLabel\": null, \"isReady\": true, \"associatedDocumentUuid\": null, \"statement\": \"create  table aa(id int)\", \"progress\": 0, \"type\": \"hive\", \"variables\": [], \"chartSorting\": \"none\", \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartMapType\": \"marker\", \"chartX\": \"s07.description\", \"chartXPivot\": null, \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartYMulti\": [\"s08.total_emp\"]}, \"jobs\": [], \"isSqlDialect\": true, \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results hive\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [\"s08.total_emp\"], \"dbSelectionVisible\": false, \"chartType\": \"bars\", \"currentQueryTab\": \"queryHistory\", \"showGrid\": true, \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}, \"isFetchingData\": false, \"name\": \"Sample: Job loss\", \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"statusForButtons\": \"executing\", \"database\": \"default\", \"statementTypes\": [\"text\", \"file\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"isOptimizing\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"chartScatterGroup\": null, \"isBatchable\": true, \"chartYSingle\": null, \"suggestion\": \"\", \"chartXPivot\": null, \"is_redacted\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"isHistory\": true, \"type\": \"query-hive\", \"historyFilter\": \"\", \"description\": \"Job loss among the top earners 2007-08\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"updateHistoryFailed\": false, \"isSaved\": true, \"isBatchable\": true, \"selectedSnippet\": \"hive\", \"coordinatorUuid\": null, \"name\": \"Sample: Job loss\", \"loadingScheduler\": false, \"unloaded\": false, \"viewSchedulerId\": \"\", \"creatingSessionLocks\": [], \"directoryUuid\": null, \"parentSavedQueryUuid\": \"48cfd7ed-9937-47dd-87ab-6365ccb71e85\", \"dependentsCoordinator\": []}','','2017-06-29 19:31:01',1,1,1,'create  table aa(id int)',0,NULL),(50018,1,'yunchen','xxxxx','1d1f461f-fcd6-f66b-9cde-4e6182554e29','query-hive','{\"parentSavedQueryUuid\": null, \"historyFilter\": \"\", \"description\": \"xxxxx\", \"sessions\": [{\"type\": \"hive\", \"properties\": [{\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Files\", \"key\": \"files\", \"help_text\": \"Add one or more files, jars, or archives to the list of resources.\", \"type\": \"hdfs-files\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Functions\", \"key\": \"functions\", \"help_text\": \"Add one or more registered UDFs (requires function name and fully-qualified class name).\", \"type\": \"functions\"}, {\"multiple\": true, \"defaultValue\": [], \"value\": [], \"nice_name\": \"Settings\", \"key\": \"settings\", \"help_text\": \"Hive and Hadoop configuration properties.\", \"type\": \"settings\", \"options\": [\"hive.map.aggr\", \"hive.exec.compress.output\", \"hive.exec.parallel\", \"hive.execution.engine\", \"mapreduce.job.queuename\"]}], \"id\": null}], \"updateHistoryFailed\": false, \"loadingHistory\": false, \"schedulerViewModel\": null, \"retryModalCancel\": null, \"schedulerViewModelIsLoaded\": false, \"isBatchable\": true, \"isHistory\": false, \"id\": 50018, \"snippets\": [{\"executingBlockingOperation\": null, \"chartSorting\": \"none\", \"wasBatchExecuted\": false, \"chartLimits\": [5, 10, 25, 50, 100], \"chartX\": null, \"previousChartOptions\": {\"chartTimelineType\": \"bar\", \"chartSorting\": \"none\", \"chartLimit\": null, \"chartMapHeat\": null, \"chartMapType\": \"marker\", \"chartX\": \"s07.description\", \"chartYMulti\": [\"s08.total_emp\"], \"chartScatterSize\": null, \"chartScope\": \"world\", \"chartMapLabel\": null, \"chartScatterGroup\": null, \"chartYSingle\": null, \"chartXPivot\": null}, \"queriesFilterVisible\": false, \"isOptimizing\": false, \"associatedDocumentLoading\": true, \"showChart\": false, \"isResultSettingsVisible\": false, \"chartScope\": \"world\", \"statement_raw\": \"create  table aa(id int)\", \"result\": {\"statement_id\": 0, \"isMetaFilterVisible\": false, \"meta\": [], \"logLines\": 8, \"id\": \"addb6fa2-4668-f165-6021-7ddda4138d1c\", \"logs\": \"\", \"statements_count\": 1, \"rows\": \"0\", \"hasSomeResults\": false, \"filteredMetaChecked\": true, \"hasMore\": false, \"filteredMeta\": [], \"type\": \"table\", \"handle\": {\"log_context\": null, \"statements_count\": 1, \"end\": {\"column\": 23, \"row\": 0}, \"statement_id\": 0, \"has_more_statements\": false, \"start\": {\"column\": 0, \"row\": 0}, \"secret\": \"Le05680xRg2ME5wJ/dFniw==\\n\", \"has_result_set\": false, \"session_guid\": \"1o6XNObhTtqml6yYTFoAUQ==\\n\", \"statement\": \"create  table aa(id int)\", \"operation_type\": 0, \"modified_row_count\": null, \"guid\": \"ec+j6JQFQR6fj9PyL9OJXw==\\n\", \"previous_statement_hash\": \"25431f82f5859f46bca34684c736a24acecfaf99cd82a5555785083d\"}, \"metaFilter\": \"\", \"explanation\": \"\", \"statement_range\": {\"start\": {\"column\": 0, \"row\": 0}, \"end\": {\"column\": 0, \"row\": 0}}, \"startTime\": \"2017-06-29T09:44:37.379Z\", \"data\": [], \"executionTime\": 0, \"fetchedOnce\": false, \"hasResultset\": false, \"endTime\": \"2017-06-29T09:44:37.379Z\"}, \"pinnedContextTabs\": [], \"chartType\": \"bars\", \"viewSettings\": {\"sqlDialect\": true, \"placeHolder\": \"Example: SELECT * FROM tablename, or press CTRL + space\"}, \"chartScatterGroup\": null, \"loadingQueries\": false, \"hasDataForChart\": false, \"id\": \"fb0558c3-723c-44f3-b6a2-7e5b85d64e52\", \"ddlNotification\": 0.43816844805851018, \"compatibilityTarget\": \"\", \"errors\": [], \"chartXPivot\": null, \"aceSize\": 100, \"statusForButtons\": \"executed\", \"chartMapLabel\": null, \"chartData\": [], \"lastExecuted\": 1498729477366, \"queriesHasErrors\": false, \"showLogs\": true, \"errorsKlass\": \"results hive alert alert-error\", \"isReady\": true, \"statement\": \"create  table aa(id int)\", \"progress\": 0, \"type\": \"hive\", \"variables\": [], \"status\": \"available\", \"currentQueryTab\": \"savedQueries\", \"jobs\": [], \"suggestion\": \"\", \"chartMapType\": \"marker\", \"warnings\": [], \"statementType\": \"text\", \"queriesFilter\": \"\", \"variableNames\": [], \"resultsKlass\": \"results hive\", \"queriesCurrentPage\": 1, \"isCanceling\": false, \"queriesTotalPages\": 1, \"formatEnabled\": true, \"chartYMulti\": [], \"dbSelectionVisible\": false, \"delayedDDLNotification\": 0.43816844805851018, \"showGrid\": true, \"properties\": {\"files\": [], \"functions\": [], \"settings\": []}, \"isFetchingData\": false, \"chartTimelineType\": \"bar\", \"chartLimit\": null, \"chartMapHeat\": null, \"name\": \"Sample: Job loss\", \"database\": \"default\", \"statementTypes\": [\"text\", \"file\"], \"hasSuggestion\": false, \"complexityCheckActive\": true, \"externalStatementLoaded\": false, \"chartScatterSize\": null, \"compatibilityCheckActive\": true, \"associatedDocumentUuid\": null, \"isBatchable\": true, \"chartYSingle\": null, \"isSqlDialect\": true, \"statementPath\": \"\", \"is_redacted\": false, \"showLongOperationWarning\": false, \"settingsVisible\": false, \"checkStatusTimeout\": null, \"isLoading\": false}], \"name\": \"yunchen\", \"coordinatorUuid\": null, \"uuid\": \"1d1f461f-fcd6-f66b-9cde-4e6182554e29\", \"creatingSessionLocks\": [], \"onSuccessUrl\": null, \"directoryUuid\": null, \"historyFilterVisible\": false, \"loadingScheduler\": false, \"retryModalConfirm\": null, \"viewSchedulerId\": \"\", \"selectedSnippet\": \"hive\", \"type\": \"query-hive\", \"isSaved\": true, \"unloaded\": false, \"dependentsCoordinator\": []}','','2017-06-29 02:46:05',1,0,1,'create  table aa(id int)',0,NULL);
/*!40000 ALTER TABLE `desktop_document2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2_dependencies`
--

DROP TABLE IF EXISTS `desktop_document2_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2_dependencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_document2_id` int(11) NOT NULL,
  `to_document2_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2_depen_from_document2_id_180cf2c525720117_uniq` (`from_document2_id`,`to_document2_id`),
  KEY `desktop_document2_dependencies_5248ab40` (`from_document2_id`),
  KEY `desktop_document2_dependencies_19db1b82` (`to_document2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2_dependencies`
--

LOCK TABLES `desktop_document2_dependencies` WRITE;
/*!40000 ALTER TABLE `desktop_document2_dependencies` DISABLE KEYS */;
INSERT INTO `desktop_document2_dependencies` VALUES (4,50003,50000),(5,50004,50003),(6,50006,50000),(7,50016,16),(8,50017,16);
/*!40000 ALTER TABLE `desktop_document2_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document2permission`
--

DROP TABLE IF EXISTS `desktop_document2permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document2permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_id` int(11) NOT NULL,
  `perms` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document2permission_doc_id_103d6b15a9f268ba_uniq` (`doc_id`,`perms`),
  KEY `desktop_document2permission_fbbb6049` (`doc_id`),
  KEY `desktop_document2permission_148edb5b` (`perms`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document2permission`
--

LOCK TABLES `desktop_document2permission` WRITE;
/*!40000 ALTER TABLE `desktop_document2permission` DISABLE KEYS */;
INSERT INTO `desktop_document2permission` VALUES (1,5,'read'),(2,6,'read'),(4,7,'read'),(3,8,'read'),(5,9,'read'),(6,10,'read'),(7,11,'read'),(8,12,'read'),(9,13,'read'),(10,14,'read'),(11,15,'read'),(12,16,'read'),(13,17,'read'),(14,49999,'read'),(19,50000,'read'),(18,50001,'read'),(17,50003,'read'),(16,50004,'read'),(15,50006,'read'),(20,50007,'read'),(21,50008,'read'),(22,50009,'read'),(23,50010,'read'),(24,50011,'read'),(25,50012,'read'),(26,50013,'read'),(27,50014,'read'),(28,50015,'read');
/*!40000 ALTER TABLE `desktop_document2permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_document_tags`
--

DROP TABLE IF EXISTS `desktop_document_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_document_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `documenttag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_document_tags_document_id_22435f97005dd9b0_uniq` (`document_id`,`documenttag_id`),
  KEY `desktop_document_tags_b7398729` (`document_id`),
  KEY `desktop_document_tags_21e9f328` (`documenttag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_document_tags`
--

LOCK TABLES `desktop_document_tags` WRITE;
/*!40000 ALTER TABLE `desktop_document_tags` DISABLE KEYS */;
INSERT INTO `desktop_document_tags` VALUES (9,1,7),(10,2,7),(11,3,7),(4,4,6),(5,5,6),(12,6,7),(13,7,7),(14,8,7),(23,9,7),(24,10,7),(25,11,7),(26,12,7),(27,13,7),(28,14,7),(29,15,7),(30,16,7),(32,17,7),(41,18,7),(42,19,7),(43,20,7),(44,21,7),(45,22,7),(46,23,7),(47,24,7),(48,25,7),(49,26,6),(74,36,7),(75,37,7),(76,38,7),(77,39,7),(78,40,7),(79,41,7),(80,42,7),(81,43,7),(82,44,7),(83,45,7),(84,46,7),(85,47,7),(86,48,7),(87,49,7),(88,50,7),(98,51,7),(99,52,7),(100,53,7),(101,54,7),(102,55,7),(103,56,7),(104,57,7),(105,58,7),(106,59,7),(107,60,6),(108,61,6),(109,62,6);
/*!40000 ALTER TABLE `desktop_document_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_documentpermission`
--

DROP TABLE IF EXISTS `desktop_documentpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_documentpermission` (
  `perms` varchar(10) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_documentpermission_doc_id_60b132dd84ab9469_uniq` (`doc_id`,`perms`),
  KEY `desktop_documentpermission_fbbb6049` (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_documentpermission`
--

LOCK TABLES `desktop_documentpermission` WRITE;
/*!40000 ALTER TABLE `desktop_documentpermission` DISABLE KEYS */;
INSERT INTO `desktop_documentpermission` VALUES ('read',1,1),('read',2,2),('read',3,3),('read',6,4),('write',6,24),('read',7,5),('write',7,50),('read',8,6),('write',8,49),('read',9,7),('read',10,8),('read',11,9),('read',12,10),('read',13,11),('read',14,12),('read',15,13),('read',16,14),('read',17,15),('read',18,16),('read',19,17),('read',20,18),('read',21,19),('read',22,20),('read',23,21),('read',24,22),('read',25,23),('read',36,25),('read',37,26),('read',38,27),('read',39,28),('read',40,29),('read',41,30),('read',42,31),('read',43,32),('read',44,33),('read',45,34),('read',46,35),('read',47,36),('read',48,37),('read',49,38),('read',50,39),('read',51,40),('read',52,41),('read',53,42),('read',54,43),('read',55,44),('read',56,45),('read',57,46),('read',58,47),('read',59,48);
/*!40000 ALTER TABLE `desktop_documentpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_documenttag`
--

DROP TABLE IF EXISTS `desktop_documenttag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_documenttag` (
  `owner_id` int(11) NOT NULL,
  `tag` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `desktop_documenttag_owner_id_1d5f76680ee9998b_uniq` (`owner_id`,`tag`),
  KEY `desktop_documenttag_cb902d83` (`owner_id`),
  KEY `desktop_documenttag_5659cca2` (`tag`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_documenttag`
--

LOCK TABLES `desktop_documenttag` WRITE;
/*!40000 ALTER TABLE `desktop_documenttag` DISABLE KEYS */;
INSERT INTO `desktop_documenttag` VALUES (1,'default',6),(1,'example',3),(1,'history',4),(1,'imported2',1),(1,'trash',2),(1100713,'default',5),(1100713,'example',7),(1100713,'trash',8);
/*!40000 ALTER TABLE `desktop_documenttag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_settings`
--

DROP TABLE IF EXISTS `desktop_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_settings` (
  `collect_usage` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tours_and_tutorials` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_settings_02d738b3` (`collect_usage`),
  KEY `desktop_settings_73ca4b20` (`tours_and_tutorials`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_settings`
--

LOCK TABLES `desktop_settings` WRITE;
/*!40000 ALTER TABLE `desktop_settings` DISABLE KEYS */;
INSERT INTO `desktop_settings` VALUES (1,1,1);
/*!40000 ALTER TABLE `desktop_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desktop_userpreferences`
--

DROP TABLE IF EXISTS `desktop_userpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desktop_userpreferences` (
  `value` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `desktop_userpreferences_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desktop_userpreferences`
--

LOCK TABLES `desktop_userpreferences` WRITE;
/*!40000 ALTER TABLE `desktop_userpreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `desktop_userpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'nonce','django_openid_auth','nonce'),(5,'association','django_openid_auth','association'),(6,'user open id','django_openid_auth','useropenid'),(7,'content type','contenttypes','contenttype'),(8,'session','sessions','session'),(9,'site','sites','site'),(10,'log entry','admin','logentry'),(11,'migration history','south','migrationhistory'),(12,'access attempt','axes','accessattempt'),(13,'access log','axes','accesslog'),(14,'workflow','oozie','workflow'),(15,'coordinator','oozie','coordinator'),(16,'bundle','oozie','bundle'),(17,'saved query','beeswax','savedquery'),(18,'pig script','pig','pigscript'),(19,'document','pig','document'),(20,'job','oozie','job'),(21,'link','oozie','link'),(22,'node','oozie','node'),(23,'mapreduce','oozie','mapreduce'),(24,'streaming','oozie','streaming'),(25,'java','oozie','java'),(26,'pig','oozie','pig'),(27,'hive','oozie','hive'),(28,'sqoop','oozie','sqoop'),(29,'ssh','oozie','ssh'),(30,'shell','oozie','shell'),(31,'dist cp','oozie','distcp'),(32,'fs','oozie','fs'),(33,'email','oozie','email'),(34,'sub workflow','oozie','subworkflow'),(35,'generic','oozie','generic'),(36,'start','oozie','start'),(37,'end','oozie','end'),(38,'kill','oozie','kill'),(39,'fork','oozie','fork'),(40,'join','oozie','join'),(41,'decision','oozie','decision'),(42,'decision end','oozie','decisionend'),(43,'dataset','oozie','dataset'),(44,'data input','oozie','datainput'),(45,'data output','oozie','dataoutput'),(46,'bundled coordinator','oozie','bundledcoordinator'),(47,'history','oozie','history'),(48,'user preferences','desktop','userpreferences'),(49,'settings','desktop','settings'),(50,'default configuration','desktop','defaultconfiguration'),(51,'document tag','desktop','documenttag'),(52,'document','desktop','document'),(53,'document permission','desktop','documentpermission'),(54,'document2','desktop','document2'),(55,'document2 permission','desktop','document2permission'),(56,'directory','desktop','directory'),(57,'query history','beeswax','queryhistory'),(58,'session','beeswax','session'),(59,'meta install','beeswax','metainstall'),(60,'hive server query history','beeswax','hiveserverqueryhistory'),(61,'job design','jobsub','jobdesign'),(62,'check for setup','jobsub','checkforsetup'),(63,'oozie action','jobsub','oozieaction'),(64,'oozie design','jobsub','ooziedesign'),(65,'oozie mapreduce action','jobsub','ooziemapreduceaction'),(66,'oozie streaming action','jobsub','ooziestreamingaction'),(67,'oozie java action','jobsub','ooziejavaaction'),(68,'job history','jobsub','jobhistory'),(69,'user profile','useradmin','userprofile'),(70,'ldap group','useradmin','ldapgroup'),(71,'group permission','useradmin','grouppermission'),(72,'hue permission','useradmin','huepermission');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_association`
--

DROP TABLE IF EXISTS `django_openid_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` longtext NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` longtext NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_association`
--

LOCK TABLES `django_openid_auth_association` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_nonce`
--

DROP TABLE IF EXISTS `django_openid_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(1000) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_nonce`
--

LOCK TABLES `django_openid_auth_nonce` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_openid_auth_useropenid`
--

DROP TABLE IF EXISTS `django_openid_auth_useropenid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_openid_auth_useropenid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `claimed_id` varchar(255) NOT NULL,
  `display_id` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `claimed_id` (`claimed_id`),
  KEY `django_openid_auth_useropenid_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_openid_auth_useropenid`
--

LOCK TABLES `django_openid_auth_useropenid` WRITE;
/*!40000 ALTER TABLE `django_openid_auth_useropenid` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_openid_auth_useropenid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('609jlsalgwqp1yp7nxblc24kl772x5g9','OGNkYmQyOGYxMjllODZiN2Q4MDI5MDc3ZjgyYThhZmNmZjcyNmU5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-12 23:29:11'),('68778nl6t7kl318djomkk2vszyltqihy','ZGQ5ZGYwNjMxNGRmMDNmMTk0MWMxZDEyNjFlOWY1NWQ1ODYyMGRkODp7InRlc3Rjb29raWUiOiJ3b3JrZWQifQ==','2017-07-13 19:57:06'),('97ytacofq7h6wvxyr7ovmrslhzf91t6r','OGNkYmQyOGYxMjllODZiN2Q4MDI5MDc3ZjgyYThhZmNmZjcyNmU5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-13 07:56:38'),('gdlaa7na1p7zb9rhdmxoujvn32dbcxz6','MGU2Y2FlYmU4Yjg4NWMwZDk0MGQyMDg5ZjI4MzI0OTAyMjIyNGE0YTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-13 19:54:21'),('gjwkjdom1if28vx8ucy7lr3h8sb5lkh8','OGNkYmQyOGYxMjllODZiN2Q4MDI5MDc3ZjgyYThhZmNmZjcyNmU5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-13 18:54:50'),('j7zi3n13303da3bguy1a959gv417j5n7','NTJkOTNlNDg5ZjQxMDVjODQyYTZhNDczMGQ0MjlhMjI3NDhiNjBhODp7InRlc3Rjb29raWUiOiJ3b3JrZWQifQ==','2017-07-12 23:25:10'),('jnggzier8lht8kstchv2zk529ytbhc1r','NDI5ZWYwOTBkNGI0M2YzNTU5YTdlZGY1ODY1ZDZmYWJkMjY4OTM5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-06-26 21:00:06'),('mndm7pb4oftid65qixgepgi7954kmelm','ODdhMTM5NTAzOWMxNzRjMTZkZjJiZjdkN2I4ZGM3MmQ3YzRiMGY0YTp7InRlc3Rjb29raWUiOiJ3b3JrZWQifQ==','2017-07-13 19:40:20'),('uh41pctgu4lnlg9cqpqgirjpcmywvf8w','ZTdmNTBjYWJjYjcxYmFhMDc3MmY0ODhhYmQ1YWY4MzMxYTYzYmJkZjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-12 23:17:25'),('wlfdlh1qg3yiv3gzzoxh3jkfazk5yy85','OGNkYmQyOGYxMjllODZiN2Q4MDI5MDc3ZjgyYThhZmNmZjcyNmU5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-12 23:27:24'),('yen1qbr1zmj59bc35yikhgb85izohit0','OGNkYmQyOGYxMjllODZiN2Q4MDI5MDc3ZjgyYThhZmNmZjcyNmU5Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRlc2t0b3AuYXV0aC5iYWNrZW5kLkFsbG93Rmlyc3RVc2VyRGphbmdvQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9','2017-07-12 23:33:44');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission2_groups`
--

DROP TABLE IF EXISTS `documentpermission2_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission2_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document2permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission_document2permission_id_153e37c3da5a9480_uniq` (`document2permission_id`,`group_id`),
  KEY `documentpermission2_groups_7a114f0f` (`document2permission_id`),
  KEY `documentpermission2_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission2_groups`
--

LOCK TABLES `documentpermission2_groups` WRITE;
/*!40000 ALTER TABLE `documentpermission2_groups` DISABLE KEYS */;
INSERT INTO `documentpermission2_groups` VALUES (138,1,1),(168,2,1),(150,3,1),(148,4,1),(158,5,1),(157,6,1),(156,7,1),(155,8,1),(159,9,1),(154,10,1),(153,11,1),(166,12,1),(151,13,1),(160,14,1),(161,15,1),(162,16,1),(163,17,1),(164,18,1),(165,19,1),(145,20,1),(141,21,1),(146,22,1),(147,23,1),(142,24,1),(140,25,1),(139,26,1),(144,27,1),(143,28,1);
/*!40000 ALTER TABLE `documentpermission2_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission2_users`
--

DROP TABLE IF EXISTS `documentpermission2_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document2permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission_document2permission_id_68f73063f13e5b46_uniq` (`document2permission_id`,`user_id`),
  KEY `documentpermission2_users_7a114f0f` (`document2permission_id`),
  KEY `documentpermission2_users_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission2_users`
--

LOCK TABLES `documentpermission2_users` WRITE;
/*!40000 ALTER TABLE `documentpermission2_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission2_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission_groups`
--

DROP TABLE IF EXISTS `documentpermission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentpermission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission__documentpermission_id_69436afd449228fe_uniq` (`documentpermission_id`,`group_id`),
  KEY `documentpermission_groups_35c59db1` (`documentpermission_id`),
  KEY `documentpermission_groups_5f412f9a` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission_groups`
--

LOCK TABLES `documentpermission_groups` WRITE;
/*!40000 ALTER TABLE `documentpermission_groups` DISABLE KEYS */;
INSERT INTO `documentpermission_groups` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,1),(15,15,1),(16,16,1),(17,17,1),(18,18,1),(19,19,1),(20,20,1),(21,21,1),(22,22,1),(23,23,1),(24,25,1),(25,26,1),(26,27,1),(27,28,1),(28,29,1),(29,30,1),(30,31,1),(31,32,1),(32,33,1),(33,34,1),(34,35,1),(35,36,1),(36,37,1),(37,38,1),(38,39,1),(39,40,1),(40,41,1),(41,42,1),(42,43,1),(43,44,1),(44,45,1),(45,46,1),(46,47,1),(47,48,1);
/*!40000 ALTER TABLE `documentpermission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentpermission_users`
--

DROP TABLE IF EXISTS `documentpermission_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentpermission_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentpermission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentpermission__documentpermission_id_6577517b9e586968_uniq` (`documentpermission_id`,`user_id`),
  KEY `documentpermission_users_35c59db1` (`documentpermission_id`),
  KEY `documentpermission_users_6340c63c` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentpermission_users`
--

LOCK TABLES `documentpermission_users` WRITE;
/*!40000 ALTER TABLE `documentpermission_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentpermission_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_checkforsetup`
--

DROP TABLE IF EXISTS `jobsub_checkforsetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_checkforsetup` (
  `setup_run` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setup_level` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_checkforsetup`
--

LOCK TABLES `jobsub_checkforsetup` WRITE;
/*!40000 ALTER TABLE `jobsub_checkforsetup` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_checkforsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_jobdesign`
--

DROP TABLE IF EXISTS `jobsub_jobdesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_jobdesign` (
  `description` varchar(1024) NOT NULL,
  `data` longtext NOT NULL,
  `last_modified` datetime NOT NULL,
  `owner_id` int(11) NOT NULL,
  `type` varchar(128) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_jobdesign_cb902d83` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_jobdesign`
--

LOCK TABLES `jobsub_jobdesign` WRITE;
/*!40000 ALTER TABLE `jobsub_jobdesign` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_jobdesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_jobhistory`
--

DROP TABLE IF EXISTS `jobsub_jobhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_jobhistory` (
  `owner_id` int(11) NOT NULL,
  `submission_date` datetime NOT NULL,
  `design_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_jobhistory_cb902d83` (`owner_id`),
  KEY `jobsub_jobhistory_38ebade8` (`design_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_jobhistory`
--

LOCK TABLES `jobsub_jobhistory` WRITE;
/*!40000 ALTER TABLE `jobsub_jobhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_jobhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_oozieaction`
--

DROP TABLE IF EXISTS `jobsub_oozieaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_oozieaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_oozieaction`
--

LOCK TABLES `jobsub_oozieaction` WRITE;
/*!40000 ALTER TABLE `jobsub_oozieaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_oozieaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziedesign`
--

DROP TABLE IF EXISTS `jobsub_ooziedesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziedesign` (
  `description` varchar(1024) NOT NULL,
  `last_modified` datetime NOT NULL,
  `owner_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root_action_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobsub_ooziedesign_cb902d83` (`owner_id`),
  KEY `jobsub_ooziedesign_ce106e64` (`root_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziedesign`
--

LOCK TABLES `jobsub_ooziedesign` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziedesign` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziedesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziejavaaction`
--

DROP TABLE IF EXISTS `jobsub_ooziejavaaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziejavaaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `java_opts` varchar(256) NOT NULL,
  `args` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `archives` varchar(512) NOT NULL,
  `main_class` varchar(256) NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziejavaaction`
--

LOCK TABLES `jobsub_ooziejavaaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziejavaaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziejavaaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziemapreduceaction`
--

DROP TABLE IF EXISTS `jobsub_ooziemapreduceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziemapreduceaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `archives` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziemapreduceaction`
--

LOCK TABLES `jobsub_ooziemapreduceaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziemapreduceaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziemapreduceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobsub_ooziestreamingaction`
--

DROP TABLE IF EXISTS `jobsub_ooziestreamingaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobsub_ooziestreamingaction` (
  `oozieaction_ptr_id` int(11) NOT NULL,
  `files` varchar(512) NOT NULL,
  `mapper` varchar(512) NOT NULL,
  `reducer` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `archives` varchar(512) NOT NULL,
  PRIMARY KEY (`oozieaction_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobsub_ooziestreamingaction`
--

LOCK TABLES `jobsub_ooziestreamingaction` WRITE;
/*!40000 ALTER TABLE `jobsub_ooziestreamingaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobsub_ooziestreamingaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_bundle`
--

DROP TABLE IF EXISTS `oozie_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_bundle` (
  `kick_off_time` datetime NOT NULL,
  `job_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`job_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_bundle`
--

LOCK TABLES `oozie_bundle` WRITE;
/*!40000 ALTER TABLE `oozie_bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_bundledcoordinator`
--

DROP TABLE IF EXISTS `oozie_bundledcoordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_bundledcoordinator` (
  `coordinator_id` int(11) NOT NULL,
  `parameters` longtext NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_bundledcoordinator_a376e044` (`coordinator_id`),
  KEY `oozie_bundledcoordinator_2243b87b` (`bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_bundledcoordinator`
--

LOCK TABLES `oozie_bundledcoordinator` WRITE;
/*!40000 ALTER TABLE `oozie_bundledcoordinator` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_bundledcoordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_coordinator`
--

DROP TABLE IF EXISTS `oozie_coordinator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_coordinator` (
  `end` datetime NOT NULL,
  `concurrency` smallint(5) unsigned DEFAULT NULL,
  `frequency_number` smallint(6) NOT NULL,
  `workflow_id` int(11) DEFAULT NULL,
  `job_ptr_id` int(11) NOT NULL,
  `frequency_unit` varchar(20) NOT NULL,
  `start` datetime NOT NULL,
  `timeout` smallint(6) DEFAULT NULL,
  `timezone` varchar(24) NOT NULL,
  `throttle` smallint(5) unsigned DEFAULT NULL,
  `execution` varchar(10) DEFAULT NULL,
  `job_properties` longtext NOT NULL,
  PRIMARY KEY (`job_ptr_id`),
  KEY `oozie_coordinator_17b2fdb1` (`workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_coordinator`
--

LOCK TABLES `oozie_coordinator` WRITE;
/*!40000 ALTER TABLE `oozie_coordinator` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_coordinator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_datainput`
--

DROP TABLE IF EXISTS `oozie_datainput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_datainput` (
  `coordinator_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dataset_id` (`dataset_id`),
  KEY `oozie_datainput_a376e044` (`coordinator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_datainput`
--

LOCK TABLES `oozie_datainput` WRITE;
/*!40000 ALTER TABLE `oozie_datainput` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_datainput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_dataoutput`
--

DROP TABLE IF EXISTS `oozie_dataoutput`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_dataoutput` (
  `coordinator_id` int(11) NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dataset_id` (`dataset_id`),
  KEY `oozie_dataoutput_a376e044` (`coordinator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_dataoutput`
--

LOCK TABLES `oozie_dataoutput` WRITE;
/*!40000 ALTER TABLE `oozie_dataoutput` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_dataoutput` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_dataset`
--

DROP TABLE IF EXISTS `oozie_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_dataset` (
  `description` varchar(1024) NOT NULL,
  `frequency_number` smallint(6) NOT NULL,
  `coordinator_id` int(11) NOT NULL,
  `frequency_unit` varchar(20) NOT NULL,
  `uri` varchar(1024) NOT NULL,
  `start` datetime NOT NULL,
  `timezone` varchar(24) NOT NULL,
  `done_flag` varchar(64) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `advanced_start_instance` varchar(128) NOT NULL,
  `instance_choice` varchar(10) NOT NULL,
  `advanced_end_instance` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_dataset_a376e044` (`coordinator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_dataset`
--

LOCK TABLES `oozie_dataset` WRITE;
/*!40000 ALTER TABLE `oozie_dataset` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_dataset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_decision`
--

DROP TABLE IF EXISTS `oozie_decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_decision` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_decision`
--

LOCK TABLES `oozie_decision` WRITE;
/*!40000 ALTER TABLE `oozie_decision` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_decision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_decisionend`
--

DROP TABLE IF EXISTS `oozie_decisionend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_decisionend` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_decisionend`
--

LOCK TABLES `oozie_decisionend` WRITE;
/*!40000 ALTER TABLE `oozie_decisionend` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_decisionend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_distcp`
--

DROP TABLE IF EXISTS `oozie_distcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_distcp` (
  `prepares` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `params` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_distcp`
--

LOCK TABLES `oozie_distcp` WRITE;
/*!40000 ALTER TABLE `oozie_distcp` DISABLE KEYS */;
INSERT INTO `oozie_distcp` VALUES ('[]','','[{\"type\":\"arg\",\"value\":\"-overwrite\"},{\"type\":\"arg\",\"value\":\"-m\"},{\"type\":\"arg\",\"value\":\"${MAP_NUMBER}\"},{\"type\":\"arg\",\"value\":\"/user/hue/oozie/workspaces/data\"},{\"type\":\"arg\",\"value\":\"${OUTPUT}\"}]','[]',28);
/*!40000 ALTER TABLE `oozie_distcp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_email`
--

DROP TABLE IF EXISTS `oozie_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_email` (
  `cc` longtext NOT NULL,
  `to` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_email`
--

LOCK TABLES `oozie_email` WRITE;
/*!40000 ALTER TABLE `oozie_email` DISABLE KEYS */;
INSERT INTO `oozie_email` VALUES ('','example@example.org','I love','Hue',24);
/*!40000 ALTER TABLE `oozie_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_end`
--

DROP TABLE IF EXISTS `oozie_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_end` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_end`
--

LOCK TABLES `oozie_end` WRITE;
/*!40000 ALTER TABLE `oozie_end` DISABLE KEYS */;
INSERT INTO `oozie_end` VALUES (2),(6),(10),(14),(18),(22),(26),(30),(34);
/*!40000 ALTER TABLE `oozie_end` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_fork`
--

DROP TABLE IF EXISTS `oozie_fork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_fork` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_fork`
--

LOCK TABLES `oozie_fork` WRITE;
/*!40000 ALTER TABLE `oozie_fork` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_fork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_fs`
--

DROP TABLE IF EXISTS `oozie_fs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_fs` (
  `mkdirs` longtext NOT NULL,
  `touchzs` longtext NOT NULL,
  `chmods` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `moves` longtext NOT NULL,
  `deletes` longtext NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_fs`
--

LOCK TABLES `oozie_fs` WRITE;
/*!40000 ALTER TABLE `oozie_fs` DISABLE KEYS */;
INSERT INTO `oozie_fs` VALUES ('[{\"name\":\"${nameNode}${output}/testfs\"},{\"name\":\"${nameNode}${output}/testfs/source\"}]','[{\"name\":\"${nameNode}${output}/testfs/new_file\"}]','[{\"path\":\"${nameNode}${output}/testfs/renamed\",\"permissions\":\"700\",\"recursive\":\"false\"}]',8,'[{\"source\":\"${nameNode}${output}/testfs/source\",\"destination\":\"${nameNode}${output}/testfs/renamed\"}]','[{\"name\":\"${nameNode}${output}/testfs\"}]');
/*!40000 ALTER TABLE `oozie_fs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_generic`
--

DROP TABLE IF EXISTS `oozie_generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_generic` (
  `xml` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_generic`
--

LOCK TABLES `oozie_generic` WRITE;
/*!40000 ALTER TABLE `oozie_generic` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_generic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_history`
--

DROP TABLE IF EXISTS `oozie_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_history` (
  `submission_date` datetime NOT NULL,
  `job_id` int(11) NOT NULL,
  `properties` longtext NOT NULL,
  `oozie_job_id` varchar(128) NOT NULL,
  `submitter_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `oozie_history_0ebd36f3` (`submission_date`),
  KEY `oozie_history_218f3960` (`job_id`),
  KEY `oozie_history_5f7282ee` (`submitter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_history`
--

LOCK TABLES `oozie_history` WRITE;
/*!40000 ALTER TABLE `oozie_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_hive`
--

DROP TABLE IF EXISTS `oozie_hive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_hive` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `params` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `prepares` longtext NOT NULL,
  `script_path` varchar(256) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_hive`
--

LOCK TABLES `oozie_hive` WRITE;
/*!40000 ALTER TABLE `oozie_hive` DISABLE KEYS */;
INSERT INTO `oozie_hive` VALUES ('[\"hive-config.xml#hive-config.xml\"]','hive-config.xml','[]','[]','[]',20,'[]','hive.sql');
/*!40000 ALTER TABLE `oozie_hive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_java`
--

DROP TABLE IF EXISTS `oozie_java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_java` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `java_opts` varchar(256) NOT NULL,
  `args` longtext NOT NULL,
  `job_properties` longtext NOT NULL,
  `prepares` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `main_class` varchar(256) NOT NULL,
  `capture_output` tinyint(1) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_java`
--

LOCK TABLES `oozie_java` WRITE;
/*!40000 ALTER TABLE `oozie_java` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_job`
--

DROP TABLE IF EXISTS `oozie_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_job` (
  `is_shared` tinyint(1) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `parameters` longtext NOT NULL,
  `deployment_dir` varchar(1024) NOT NULL,
  `schema_version` varchar(128) NOT NULL,
  `last_modified` datetime NOT NULL,
  `owner_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_trashed` tinyint(1) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_job_b91b90da` (`is_shared`),
  KEY `oozie_job_5ccb38e5` (`last_modified`),
  KEY `oozie_job_cb902d83` (`owner_id`),
  KEY `oozie_job_863b5435` (`is_trashed`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_job`
--

LOCK TABLES `oozie_job` WRITE;
/*!40000 ALTER TABLE `oozie_job` DISABLE KEYS */;
INSERT INTO `oozie_job` VALUES (1,'Example of Shell action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/shell','uri:oozie:workflow:0.4','2017-06-28 23:03:08',1100713,1,'Shell',0,'{}'),(1,'Example of Fs action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/fs','uri:oozie:workflow:0.4','2017-06-28 23:03:08',1100713,2,'Fs',0,'{}'),(1,'Example of Sqoop action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/sqoop','uri:oozie:workflow:0.4','2017-06-28 23:03:08',1100713,3,'Sqoop',0,'{}'),(1,'Example of SSH action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/ssh','uri:oozie:workflow:0.4','2017-06-28 23:03:09',1100713,4,'Ssh',0,'{}'),(1,'Example of Hive action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/hive','uri:oozie:workflow:0.4','2017-06-28 23:03:09',1100713,5,'Hive',0,'{}'),(1,'Example of Email action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/email','uri:oozie:workflow:0.4','2017-06-28 23:03:09',1100713,6,'Email',0,'{}'),(1,'Example of DistCp action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/distcp','uri:oozie:workflow:0.4','2017-06-28 23:03:09',1100713,7,'DistCp',0,'{}'),(1,'Example of Pig action','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/pig','uri:oozie:workflow:0.4','2017-06-28 23:03:09',1100713,8,'Pig',0,'{}'),(1,'Example of MapReduce action that sleeps','[{\"name\":\"oozie.use.system.libpath\",\"value\":\"true\"}]','/user/hue/oozie/workspaces/managed/sleep','uri:oozie:workflow:0.4','2017-06-28 23:03:10',1100713,9,'MapReduce',0,'{}');
/*!40000 ALTER TABLE `oozie_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_join`
--

DROP TABLE IF EXISTS `oozie_join`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_join` (
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_join`
--

LOCK TABLES `oozie_join` WRITE;
/*!40000 ALTER TABLE `oozie_join` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_join` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_kill`
--

DROP TABLE IF EXISTS `oozie_kill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_kill` (
  `message` varchar(256) NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_kill`
--

LOCK TABLES `oozie_kill` WRITE;
/*!40000 ALTER TABLE `oozie_kill` DISABLE KEYS */;
INSERT INTO `oozie_kill` VALUES ('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',1),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',5),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',9),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',13),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',17),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',21),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',25),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',29),('Action failed, error message[${wf:errorMessage(wf:lastErrorNode())}]',33);
/*!40000 ALTER TABLE `oozie_kill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_link`
--

DROP TABLE IF EXISTS `oozie_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_link` (
  `comment` varchar(1024) NOT NULL,
  `name` varchar(40) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_link_410d0aac` (`parent_id`),
  KEY `oozie_link_0b25fb00` (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_link`
--

LOCK TABLES `oozie_link` WRITE;
/*!40000 ALTER TABLE `oozie_link` DISABLE KEYS */;
INSERT INTO `oozie_link` VALUES ('','to',1,3,4),('','related',2,3,2),('','ok',3,4,2),('','error',4,4,1),('','to',5,7,8),('','related',6,7,6),('','ok',7,8,6),('','error',8,8,5),('','to',9,11,12),('','related',10,11,10),('','ok',11,12,10),('','error',12,12,9),('','to',13,15,16),('','related',14,15,14),('','ok',15,16,14),('','error',16,16,13),('','to',17,19,20),('','related',18,19,18),('','ok',19,20,18),('','error',20,20,17),('','to',21,23,24),('','related',22,23,22),('','ok',23,24,22),('','error',24,24,21),('','to',25,27,28),('','related',26,27,26),('','ok',27,28,26),('','error',28,28,25),('','to',29,31,32),('','related',30,31,30),('','ok',31,32,30),('','error',32,32,29),('','to',33,35,36),('','related',34,35,34),('','ok',35,36,34),('','error',36,36,33);
/*!40000 ALTER TABLE `oozie_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_mapreduce`
--

DROP TABLE IF EXISTS `oozie_mapreduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_mapreduce` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `jar_path` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `prepares` longtext NOT NULL,
  UNIQUE KEY `node_ptr_id` (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_mapreduce`
--

LOCK TABLES `oozie_mapreduce` WRITE;
/*!40000 ALTER TABLE `oozie_mapreduce` DISABLE KEYS */;
INSERT INTO `oozie_mapreduce` VALUES ('[]','','/user/hue/oozie/workspaces/lib/hadoop-examples.jar','[{\"name\":\"mapred.reduce.tasks\",\"value\":\"1\"},{\"name\":\"mapred.mapper.class\",\"value\":\"org.apache.hadoop.examples.SleepJob\"},{\"name\":\"mapred.reducer.class\",\"value\":\"org.apache.hadoop.examples.SleepJob\"},{\"name\":\"mapred.mapoutput.key.class\",\"value\":\"org.apache.hadoop.io.IntWritable\"},{\"name\":\"mapred.mapoutput.value.class\",\"value\":\"org.apache.hadoop.io.NullWritable\"},{\"name\":\"mapred.output.format.class\",\"value\":\"org.apache.hadoop.mapred.lib.NullOutputFormat\"},{\"name\":\"mapred.input.format.class\",\"value\":\"org.apache.hadoop.examples.SleepJob$SleepInputFormat\"},{\"name\":\"mapred.partitioner.class\",\"value\":\"org.apache.hadoop.examples.SleepJob\"},{\"name\":\"mapred.speculative.execution\",\"value\":\"false\"},{\"name\":\"sleep.job.map.sleep.time\",\"value\":\"0\"},{\"name\":\"sleep.job.reduce.sleep.time\",\"value\":\"${REDUCER_SLEEP_TIME}\"}]','[]',36,'[]');
/*!40000 ALTER TABLE `oozie_mapreduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_node`
--

DROP TABLE IF EXISTS `oozie_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_node` (
  `description` varchar(1024) NOT NULL,
  `workflow_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_type` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `oozie_node_17b2fdb1` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_node`
--

LOCK TABLES `oozie_node` WRITE;
/*!40000 ALTER TABLE `oozie_node` DISABLE KEYS */;
INSERT INTO `oozie_node` VALUES ('',1,1,'kill','kill','{}'),('',1,2,'end','end','{}'),('',1,3,'start','start','{}'),('',1,4,'shell','Shell','{}'),('',2,5,'kill','kill','{}'),('',2,6,'end','end','{}'),('',2,7,'start','start','{}'),('',2,8,'fs','Fs','{}'),('',3,9,'kill','kill','{}'),('',3,10,'end','end','{}'),('',3,11,'start','start','{}'),('',3,12,'sqoop','Sqoop','{}'),('',4,13,'kill','kill','{}'),('',4,14,'end','end','{}'),('',4,15,'start','start','{}'),('',4,16,'ssh','Ssh','{}'),('',5,17,'kill','kill','{}'),('',5,18,'end','end','{}'),('',5,19,'start','start','{}'),('',5,20,'hive','Hive','{}'),('',6,21,'kill','kill','{}'),('',6,22,'end','end','{}'),('',6,23,'start','start','{}'),('',6,24,'email','Email','{}'),('',7,25,'kill','kill','{}'),('',7,26,'end','end','{}'),('',7,27,'start','start','{}'),('',7,28,'distcp','DistCp','{}'),('',8,29,'kill','kill','{}'),('',8,30,'end','end','{}'),('',8,31,'start','start','{}'),('',8,32,'pig','Pig','{}'),('',9,33,'kill','kill','{}'),('',9,34,'end','end','{}'),('',9,35,'start','start','{}'),('',9,36,'mapreduce','Sleep','{}');
/*!40000 ALTER TABLE `oozie_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_pig`
--

DROP TABLE IF EXISTS `oozie_pig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_pig` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `params` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `prepares` longtext NOT NULL,
  `script_path` varchar(256) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_pig`
--

LOCK TABLES `oozie_pig` WRITE;
/*!40000 ALTER TABLE `oozie_pig` DISABLE KEYS */;
INSERT INTO `oozie_pig` VALUES ('[]','','[]','[{\"type\":\"argument\",\"value\":\"-param\"},{\"type\":\"argument\",\"value\":\"INPUT=${input}\"},{\"type\":\"argument\",\"value\":\"-param\"},{\"type\":\"argument\",\"value\":\"OUTPUT=${output}\"}]','[]',32,'[{\"type\":\"delete\",\"value\":\"${nameNode}${output}\"}]','aggregate.pig');
/*!40000 ALTER TABLE `oozie_pig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_shell`
--

DROP TABLE IF EXISTS `oozie_shell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_shell` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `capture_output` tinyint(1) NOT NULL,
  `params` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `prepares` longtext NOT NULL,
  `command` varchar(256) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_shell`
--

LOCK TABLES `oozie_shell` WRITE;
/*!40000 ALTER TABLE `oozie_shell` DISABLE KEYS */;
INSERT INTO `oozie_shell` VALUES ('[\"hello.py#hello.py\"]','','[]',1,'[{\"type\":\"argument\",\"value\":\"World!\"}]','[]',4,'[]','hello.py');
/*!40000 ALTER TABLE `oozie_shell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_sqoop`
--

DROP TABLE IF EXISTS `oozie_sqoop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_sqoop` (
  `files` longtext NOT NULL,
  `job_xml` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `params` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `prepares` longtext NOT NULL,
  `script_path` longtext NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_sqoop`
--

LOCK TABLES `oozie_sqoop` WRITE;
/*!40000 ALTER TABLE `oozie_sqoop` DISABLE KEYS */;
INSERT INTO `oozie_sqoop` VALUES ('[\"db.hsqldb.properties#db.hsqldb.properties\",\"db.hsqldb.script#db.hsqldb.script\"]','','[]','[]','[]',12,'[{\"type\":\"delete\",\"value\":\"${nameNode}${output}\"}]','import --connect jdbc:hsqldb:file:db.hsqldb --table TT --target-dir ${output} -m 1');
/*!40000 ALTER TABLE `oozie_sqoop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_ssh`
--

DROP TABLE IF EXISTS `oozie_ssh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_ssh` (
  `capture_output` tinyint(1) NOT NULL,
  `host` varchar(256) NOT NULL,
  `params` longtext NOT NULL,
  `user` varchar(64) NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  `command` varchar(256) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_ssh`
--

LOCK TABLES `oozie_ssh` WRITE;
/*!40000 ALTER TABLE `oozie_ssh` DISABLE KEYS */;
INSERT INTO `oozie_ssh` VALUES (1,'${user}@${host}','[{\"type\":\"args\",\"value\":\"-l\"}]','',16,'ls');
/*!40000 ALTER TABLE `oozie_ssh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_start`
--

DROP TABLE IF EXISTS `oozie_start`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_start` (
  `node_ptr_id` int(11) NOT NULL,
  UNIQUE KEY `node_ptr_id` (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_start`
--

LOCK TABLES `oozie_start` WRITE;
/*!40000 ALTER TABLE `oozie_start` DISABLE KEYS */;
INSERT INTO `oozie_start` VALUES (3),(7),(11),(15),(19),(23),(27),(31),(35);
/*!40000 ALTER TABLE `oozie_start` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_streaming`
--

DROP TABLE IF EXISTS `oozie_streaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_streaming` (
  `files` longtext NOT NULL,
  `mapper` varchar(512) NOT NULL,
  `reducer` varchar(512) NOT NULL,
  `job_properties` longtext NOT NULL,
  `archives` longtext NOT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_streaming`
--

LOCK TABLES `oozie_streaming` WRITE;
/*!40000 ALTER TABLE `oozie_streaming` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_streaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_subworkflow`
--

DROP TABLE IF EXISTS `oozie_subworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_subworkflow` (
  `propagate_configuration` tinyint(1) NOT NULL,
  `job_properties` longtext NOT NULL,
  `sub_workflow_id` int(11) DEFAULT NULL,
  `node_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`node_ptr_id`),
  KEY `oozie_subworkflow_7c14fdc3` (`sub_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_subworkflow`
--

LOCK TABLES `oozie_subworkflow` WRITE;
/*!40000 ALTER TABLE `oozie_subworkflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `oozie_subworkflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oozie_workflow`
--

DROP TABLE IF EXISTS `oozie_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oozie_workflow` (
  `job_xml` varchar(512) NOT NULL,
  `end_id` int(11) DEFAULT NULL,
  `is_single` tinyint(1) NOT NULL,
  `job_ptr_id` int(11) NOT NULL,
  `job_properties` longtext NOT NULL,
  `start_id` int(11) DEFAULT NULL,
  `managed` tinyint(1) NOT NULL,
  PRIMARY KEY (`job_ptr_id`),
  KEY `oozie_workflow_536e023f` (`end_id`),
  KEY `oozie_workflow_6f89268d` (`start_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oozie_workflow`
--

LOCK TABLES `oozie_workflow` WRITE;
/*!40000 ALTER TABLE `oozie_workflow` DISABLE KEYS */;
INSERT INTO `oozie_workflow` VALUES ('',2,0,1,'[]',3,0),('',6,0,2,'[]',7,0),('',10,0,3,'[]',11,0),('',14,0,4,'[]',15,0),('',18,0,5,'[]',19,0),('',22,0,6,'[]',23,0),('',26,0,7,'[]',27,0),('',30,0,8,'[]',31,0),('',34,0,9,'[]',35,0);
/*!40000 ALTER TABLE `oozie_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pig_document`
--

DROP TABLE IF EXISTS `pig_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pig_document` (
  `owner_id` int(11) NOT NULL,
  `is_design` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `pig_document_cb902d83` (`owner_id`),
  KEY `pig_document_63cbf1fe` (`is_design`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pig_document`
--

LOCK TABLES `pig_document` WRITE;
/*!40000 ALTER TABLE `pig_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `pig_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pig_pigscript`
--

DROP TABLE IF EXISTS `pig_pigscript`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pig_pigscript` (
  `document_ptr_id` int(11) NOT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`document_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pig_pigscript`
--

LOCK TABLES `pig_pigscript` WRITE;
/*!40000 ALTER TABLE `pig_pigscript` DISABLE KEYS */;
/*!40000 ALTER TABLE `pig_pigscript` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'django_extensions','0001_empty','2017-06-12 20:45:28'),(2,'pig','0001_initial','2017-06-12 20:45:28'),(3,'oozie','0001_initial','2017-06-12 20:45:30'),(4,'oozie','0002_auto__add_hive','2017-06-12 20:45:30'),(5,'oozie','0003_auto__add_sqoop','2017-06-12 20:45:30'),(6,'oozie','0004_auto__add_ssh','2017-06-12 20:45:30'),(7,'oozie','0005_auto__add_shell','2017-06-12 20:45:30'),(8,'oozie','0006_auto__chg_field_java_files__chg_field_java_archives__chg_field_sqoop_f','2017-06-12 20:45:31'),(9,'oozie','0007_auto__chg_field_sqoop_script_path','2017-06-12 20:45:31'),(10,'oozie','0008_auto__add_distcp','2017-06-12 20:45:31'),(11,'oozie','0009_auto__add_decision','2017-06-12 20:45:31'),(12,'oozie','0010_auto__add_fs','2017-06-12 20:45:31'),(13,'oozie','0011_auto__add_email','2017-06-12 20:45:32'),(14,'oozie','0012_auto__add_subworkflow__chg_field_email_subject__chg_field_email_body','2017-06-12 20:45:32'),(15,'oozie','0013_auto__add_generic','2017-06-12 20:45:32'),(16,'oozie','0014_auto__add_decisionend','2017-06-12 20:45:32'),(17,'oozie','0015_auto__add_field_dataset_advanced_start_instance__add_field_dataset_ins','2017-06-12 20:45:32'),(18,'oozie','0016_auto__add_field_coordinator_job_properties','2017-06-12 20:45:32'),(19,'oozie','0017_auto__add_bundledcoordinator__add_bundle','2017-06-12 20:45:33'),(20,'oozie','0018_auto__add_field_workflow_managed','2017-06-12 20:45:33'),(21,'oozie','0019_auto__add_field_java_capture_output','2017-06-12 20:45:33'),(22,'oozie','0020_chg_large_varchars_to_textfields','2017-06-12 20:45:33'),(23,'oozie','0021_auto__chg_field_java_args__add_field_job_is_trashed','2017-06-12 20:45:33'),(24,'oozie','0022_auto__chg_field_mapreduce_node_ptr__chg_field_start_node_ptr','2017-06-12 20:45:33'),(25,'oozie','0022_change_examples_path_format','2017-06-12 20:45:34'),(26,'oozie','0023_auto__add_field_node_data__add_field_job_data','2017-06-12 20:45:34'),(27,'oozie','0024_auto__chg_field_subworkflow_sub_workflow','2017-06-12 20:45:34'),(28,'oozie','0025_change_examples_path_format','2017-06-12 20:45:34'),(29,'desktop','0001_initial','2017-06-12 20:45:34'),(30,'desktop','0002_add_groups_and_homedirs','2017-06-12 20:45:34'),(31,'desktop','0003_group_permissions','2017-06-12 20:45:34'),(32,'desktop','0004_grouprelations','2017-06-12 20:45:34'),(33,'desktop','0005_settings','2017-06-12 20:45:34'),(34,'desktop','0006_settings_add_tour','2017-06-12 20:45:34'),(35,'beeswax','0001_initial','2017-06-12 20:45:35'),(36,'beeswax','0002_auto__add_field_queryhistory_notify','2017-06-12 20:45:35'),(37,'beeswax','0003_auto__add_field_queryhistory_server_name__add_field_queryhistory_serve','2017-06-12 20:45:35'),(38,'beeswax','0004_auto__add_session__add_field_queryhistory_server_type__add_field_query','2017-06-12 20:45:36'),(39,'beeswax','0005_auto__add_field_queryhistory_statement_number','2017-06-12 20:45:36'),(40,'beeswax','0006_auto__add_field_session_application','2017-06-12 20:45:36'),(41,'beeswax','0007_auto__add_field_savedquery_is_trashed','2017-06-12 20:45:36'),(42,'beeswax','0008_auto__add_field_queryhistory_query_type','2017-06-12 20:45:36'),(43,'beeswax','0009_auto__add_field_savedquery_is_redacted__add_field_queryhistory_is_reda','2017-06-12 20:45:36'),(44,'desktop','0007_auto__add_documentpermission__add_documenttag__add_document','2017-06-12 20:45:37'),(45,'desktop','0008_documentpermission_m2m_tables','2017-06-12 20:45:37'),(46,'desktop','0009_auto__chg_field_document_name','2017-06-12 20:45:37'),(47,'desktop','0010_auto__add_document2__chg_field_userpreferences_key__chg_field_userpref','2017-06-12 20:45:38'),(48,'desktop','0011_auto__chg_field_document2_uuid','2017-06-12 20:45:38'),(49,'desktop','0012_auto__chg_field_documentpermission_perms','2017-06-12 20:45:38'),(50,'desktop','0013_auto__add_unique_documenttag_owner_tag','2017-06-12 20:45:38'),(51,'desktop','0014_auto__add_unique_document_content_type_object_id','2017-06-12 20:45:38'),(52,'desktop','0015_auto__add_unique_documentpermission_doc_perms','2017-06-12 20:45:38'),(53,'desktop','0016_auto__add_unique_document2_uuid_version_is_history','2017-06-12 20:45:39'),(54,'desktop','0017_auto__add_document2permission__add_unique_document2permission_doc_perm','2017-06-12 20:45:39'),(55,'desktop','0018_auto__add_field_document2_parent_directory','2017-06-12 20:45:39'),(56,'desktop','0019_auto','2017-06-12 20:45:39'),(57,'desktop','0020_auto__del_field_document2permission_all','2017-06-12 20:45:39'),(58,'desktop','0021_auto__add_defaultconfiguration__add_unique_defaultconfiguration_app_is','2017-06-12 20:45:40'),(59,'desktop','0022_auto__del_field_defaultconfiguration_group__del_unique_defaultconfigur','2017-06-12 20:45:40'),(60,'desktop','0023_auto__del_unique_defaultconfiguration_app_is_default_user__add_field_d','2017-06-12 20:45:40'),(61,'desktop','0024_auto__add_field_document2_is_managed','2017-06-12 20:45:40'),(62,'desktop','0025_auto__add_field_document2_is_trashed','2017-06-12 20:45:40'),(63,'desktop','0026_change_is_trashed_default_to_false','2017-06-12 20:45:40'),(64,'beeswax','0009_auto__chg_field_queryhistory_server_port','2017-06-12 20:45:41'),(65,'beeswax','0010_merge_database_state','2017-06-12 20:45:41'),(66,'beeswax','0011_auto__chg_field_savedquery_name','2017-06-12 20:45:41'),(67,'beeswax','0012_auto__add_field_queryhistory_extra','2017-06-12 20:45:41'),(68,'beeswax','0013_auto__add_field_session_properties','2017-06-12 20:45:41'),(69,'beeswax','0014_auto__add_field_queryhistory_is_cleared','2017-06-12 20:45:41'),(70,'jobsub','0001_initial','2017-06-12 20:45:42'),(71,'jobsub','0002_auto__add_ooziestreamingaction__add_oozieaction__add_oozieworkflow__ad','2017-06-12 20:45:42'),(72,'jobsub','0003_convertCharFieldtoTextField','2017-06-12 20:45:43'),(73,'jobsub','0004_hue1_to_hue2','2017-06-12 20:45:43'),(74,'jobsub','0005_unify_with_oozie','2017-06-12 20:45:43'),(75,'jobsub','0006_chg_varchars_to_textfields','2017-06-12 20:45:43'),(76,'oozie','0026_set_default_data_values','2017-06-12 20:45:43'),(77,'oozie','0027_auto__chg_field_node_name__chg_field_job_name','2017-06-12 20:45:44'),(78,'useradmin','0001_permissions_and_profiles','2017-06-12 20:45:44'),(79,'useradmin','0002_add_ldap_support','2017-06-12 20:45:44'),(80,'useradmin','0003_remove_metastore_readonly_huepermission','2017-06-12 20:45:44'),(81,'useradmin','0004_add_field_UserProfile_first_login','2017-06-12 20:45:44'),(82,'useradmin','0005_auto__add_field_userprofile_last_activity','2017-06-12 20:45:44'),(83,'useradmin','0006_auto__add_index_userprofile_last_activity','2017-06-12 20:45:45'),(84,'useradmin','0007_remove_s3_access','2017-06-12 20:45:46'),(85,'notebook','0001_initial','2017-06-12 20:45:46');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_grouppermission`
--

DROP TABLE IF EXISTS `useradmin_grouppermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_grouppermission` (
  `hue_permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `useradmin_grouppermission_9dd0e7a9` (`hue_permission_id`),
  KEY `useradmin_grouppermission_5f412f9a` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_grouppermission`
--

LOCK TABLES `useradmin_grouppermission` WRITE;
/*!40000 ALTER TABLE `useradmin_grouppermission` DISABLE KEYS */;
INSERT INTO `useradmin_grouppermission` VALUES (1,1,1),(2,1,2),(3,1,3),(5,1,4),(6,1,5),(7,1,6),(9,1,7),(10,1,8),(11,1,9),(13,1,10),(14,1,11),(15,1,12),(16,1,13),(17,1,14),(19,1,15),(20,1,16),(21,1,17),(22,1,18),(23,1,19);
/*!40000 ALTER TABLE `useradmin_grouppermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_huepermission`
--

DROP TABLE IF EXISTS `useradmin_huepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_huepermission` (
  `action` varchar(100) NOT NULL,
  `app` varchar(30) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_huepermission`
--

LOCK TABLES `useradmin_huepermission` WRITE;
/*!40000 ALTER TABLE `useradmin_huepermission` DISABLE KEYS */;
INSERT INTO `useradmin_huepermission` VALUES ('access','about',1,'Launch this application'),('access','beeswax',2,'Launch this application'),('access','filebrowser',3,'Launch this application'),('s3_access','filebrowser',4,'Access to S3 from filebrowser and filepicker.'),('access','help',5,'Launch this application'),('access','jobbrowser',6,'Launch this application'),('access','jobsub',7,'Launch this application'),('write','metastore',8,'Allow DDL operations. Need the app access too.'),('access','metastore',9,'Launch this application'),('dashboard_jobs_access','oozie',10,'Oozie Dashboard read-only user for all jobs'),('access','oozie',11,'Launch this application'),('disable_editor_access','oozie',12,'Disable Oozie Editor access'),('access','pig',13,'Launch this application'),('access','proxy',14,'Launch this application'),('access','rdbms',15,'Launch this application'),('access_view:useradmin:view_user','useradmin',16,'Access to any profile page on User Admin'),('access_view:useradmin:edit_user','useradmin',17,'Access to profile page on User Admin'),('access','useradmin',18,'Launch this application'),('access','indexer',19,'Launch this application'),('write','metadata',20,'Allow edition of metadata like tags.'),('access','metadata',21,'Launch this application'),('access','notebook',22,'Launch this application'),('access','dashboard',23,'Launch this application');
/*!40000 ALTER TABLE `useradmin_huepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_ldapgroup`
--

DROP TABLE IF EXISTS `useradmin_ldapgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_ldapgroup` (
  `group_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `useradmin_ldapgroup_5f412f9a` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_ldapgroup`
--

LOCK TABLES `useradmin_ldapgroup` WRITE;
/*!40000 ALTER TABLE `useradmin_ldapgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `useradmin_ldapgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useradmin_userprofile`
--

DROP TABLE IF EXISTS `useradmin_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useradmin_userprofile` (
  `home_directory` varchar(1024) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `creation_method` varchar(64) NOT NULL,
  `first_login` tinyint(1) NOT NULL,
  `last_activity` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `useradmin_userprofile_9cf27b62` (`last_activity`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useradmin_userprofile`
--

LOCK TABLES `useradmin_userprofile` WRITE;
/*!40000 ALTER TABLE `useradmin_userprofile` DISABLE KEYS */;
INSERT INTO `useradmin_userprofile` VALUES ('/user/root',1,1,'HUE',0,'2017-06-29 20:00:56');
/*!40000 ALTER TABLE `useradmin_userprofile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-30 11:01:04
