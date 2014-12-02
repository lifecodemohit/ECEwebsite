-- MySQL dump 10.13  Distrib 5.5.38, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ECE
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.14.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `permission_id_refs_id_6ba0f519` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add homepage',7,'add_homepage'),(20,'Can change homepage',7,'change_homepage'),(21,'Can delete homepage',7,'delete_homepage'),(22,'Can add create group',8,'add_creategroup'),(23,'Can change create group',8,'change_creategroup'),(24,'Can delete create group',8,'delete_creategroup'),(25,'Can add news',9,'add_news'),(26,'Can change news',9,'change_news'),(27,'Can delete news',9,'delete_news'),(28,'Can add news_image',10,'add_news_image'),(29,'Can change news_image',10,'change_news_image'),(30,'Can delete news_image',10,'delete_news_image'),(31,'Can add comingevent',11,'add_comingevent'),(32,'Can change comingevent',11,'change_comingevent'),(33,'Can delete comingevent',11,'delete_comingevent'),(34,'Can add comingevent_image',12,'add_comingevent_image'),(35,'Can change comingevent_image',12,'change_comingevent_image'),(36,'Can delete comingevent_image',12,'delete_comingevent_image'),(37,'Can add publications',13,'add_publications'),(38,'Can change publications',13,'change_publications'),(39,'Can delete publications',13,'delete_publications'),(40,'Can add author',14,'add_author'),(41,'Can change author',14,'change_author'),(42,'Can delete author',14,'delete_author'),(43,'Can add facultymem',15,'add_facultymem'),(44,'Can change facultymem',15,'change_facultymem'),(45,'Can delete facultymem',15,'delete_facultymem'),(46,'Can add facultycoursecode',16,'add_facultycoursecode'),(47,'Can change facultycoursecode',16,'change_facultycoursecode'),(48,'Can delete facultycoursecode',16,'delete_facultycoursecode'),(49,'Can add courses',17,'add_courses'),(50,'Can change courses',17,'change_courses'),(51,'Can delete courses',17,'delete_courses'),(52,'Can add courseprerequisite',18,'add_courseprerequisite'),(53,'Can change courseprerequisite',18,'change_courseprerequisite'),(54,'Can delete courseprerequisite',18,'delete_courseprerequisite'),(55,'Can add lab',19,'add_lab'),(56,'Can change lab',19,'change_lab'),(57,'Can delete lab',19,'delete_lab'),(58,'Can add lab member',20,'add_labmember'),(59,'Can change lab member',20,'change_labmember'),(60,'Can delete lab member',20,'delete_labmember'),(61,'Can add lab publication',21,'add_labpublication'),(62,'Can change lab publication',21,'change_labpublication'),(63,'Can delete lab publication',21,'delete_labpublication'),(64,'Can add lab research',22,'add_labresearch'),(65,'Can change lab research',22,'change_labresearch'),(66,'Can delete lab research',22,'delete_labresearch');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$12000$FSkGmv4p7K3R$ubs+eWSG/9oqKzyfrAhksdNjbjiaCWH0zZvG7PAyOXs=','2014-11-10 13:04:53',1,'lifecodemohit','','','mohit13063@iiitd.ac.in',1,1,'2014-10-28 21:27:28');
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
  KEY `group_id_refs_id_274b862c` (`group_id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `permission_id_refs_id_35d9ac25` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  KEY `user_id_refs_id_c0d12874` (`user_id`),
  KEY `content_type_id_refs_id_93d2d1f8` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2014-10-28 21:31:14',1,7,'1','homepage object',1,''),(2,'2014-10-28 21:39:18',1,7,'1','homepage object',2,'Changed img1, img2, img3, img4, img5 and img6.'),(3,'2014-10-28 21:48:45',1,15,'1','MW100',1,''),(4,'2014-10-28 21:51:10',1,15,'2','ATUL100',1,''),(5,'2014-10-28 21:53:35',1,15,'2','ATUL100',2,'Changed extrainf.'),(6,'2014-10-28 21:53:44',1,15,'1','MW100',2,'Changed extrainf.'),(7,'2014-10-28 21:55:01',1,15,'2','ATUL100',2,'No fields changed.'),(8,'2014-10-28 22:04:22',1,15,'2','ATUL100',2,'Changed extrainf.'),(9,'2014-10-28 22:06:05',1,15,'2','ATUL100',2,'Changed about.'),(10,'2014-10-28 22:06:51',1,15,'2','ATUL100',2,'Changed about.'),(11,'2014-10-28 22:11:03',1,13,'1','kakkcn mabkcn anhc abiugca ,gkkvc ',1,''),(12,'2014-10-28 22:11:15',1,15,'2','ATUL100',2,'No fields changed.'),(13,'2014-10-28 22:16:33',1,13,'1','kakkcn mabkcn anhc abiugca ,gkkvc ',2,'Changed yearofpub.'),(14,'2014-10-28 22:26:29',1,13,'2','kc lbcjkb agc kahgcb agiugcb w,',1,''),(15,'2014-10-28 22:26:39',1,13,'2','kc lbcjkb agc kahgcb agiugcb w,',2,'Changed yearofpub.'),(16,'2014-10-28 22:27:21',1,13,'2','kc lbcjkb agc kahgcb agiugcb w,',2,'Changed authorcode for author \"author object\".'),(17,'2014-10-28 22:33:08',1,17,'1','IE101',1,''),(18,'2014-10-29 09:11:58',1,8,'1','Signal and image processing',1,''),(19,'2014-10-29 09:14:55',1,8,'1','SIP',2,'Changed title and category.'),(20,'2014-10-29 09:17:51',1,8,'1','SIP',2,'Changed about.'),(21,'2014-10-29 09:21:46',1,8,'2','IEA',1,''),(22,'2014-10-29 09:23:47',1,8,'3','DSA',1,''),(23,'2014-10-29 09:26:34',1,9,'1','Two UBC students named Outstanding Young Scientists at MICCAI',1,''),(24,'2014-10-29 09:28:50',1,9,'2','Introducing EERI British Columbia Chapter',1,''),(25,'2014-10-29 09:29:41',1,9,'1','Two UBC students named Outstanding Young Scientists at MICCAI',2,'Changed main_text.'),(26,'2014-10-29 09:35:48',1,11,'1','Open UBC Week',1,''),(27,'2014-10-29 09:36:40',1,11,'2','FIREtalk proposal deadline extended | The Digital Universe',1,''),(28,'2014-10-29 09:37:19',1,13,'2','kc lbcjkb agc kahgcb agiugcb w,',3,''),(29,'2014-10-29 09:37:19',1,13,'1','kakkcn mabkcn anhc abiugca ,gkkvc ',3,''),(30,'2014-10-29 09:39:23',1,11,'3','Engineering Open House',1,''),(31,'2014-10-29 09:41:18',1,13,'3','Conference Paper | Design, Test, Integration and Packaging of MEMS/MOEMS, 2008. MEMS/MOEMS 2008. Symposium on',1,''),(32,'2014-10-29 09:42:54',1,13,'3','PUB100',2,'Changed pubDetail and extra_inf.'),(33,'2014-10-29 09:44:25',1,13,'4','PUB101',1,''),(34,'2014-10-29 09:47:39',1,13,'5','PUB102',1,''),(35,'2014-10-29 09:50:37',1,15,'1','MW100',2,'Added facultycoursecode \"DSA\".'),(36,'2014-10-29 09:52:28',1,15,'1','MW100',2,'Changed extrainf1.'),(37,'2014-10-29 09:53:52',1,15,'2','ATUL100',2,'Changed extrainf1. Changed fcoursecode for facultycoursecode \"IEA\".'),(38,'2014-10-29 09:56:35',1,15,'2','ATUL100',2,'Added facultycoursecode \"DSA\".'),(39,'2014-10-29 09:57:29',1,13,'3','PUB100',2,'Added author \"author object\". Added author \"author object\".'),(40,'2014-10-29 09:57:51',1,13,'4','PUB101',2,'Added author \"author object\".'),(41,'2014-10-29 09:57:59',1,13,'5','PUB102',2,'Added author \"author object\".'),(42,'2014-10-29 09:58:31',1,13,'3','PUB100',2,'Changed yearofpub.'),(43,'2014-10-29 09:58:41',1,13,'4','PUB101',2,'Changed yearofpub.'),(44,'2014-10-29 09:58:51',1,13,'5','PUB102',2,'Changed yearofpub.'),(45,'2014-10-29 10:01:38',1,17,'1','IE101',3,''),(46,'2014-10-29 10:03:48',1,17,'2','COU100',1,''),(47,'2014-10-29 10:11:52',1,17,'2','COU100',2,'Added courseprerequisite \"courseprerequisite object\".'),(48,'2014-10-29 10:12:47',1,17,'3','COU101',1,''),(49,'2014-10-29 10:38:51',1,15,'2','ATUL100',2,'Changed extrainf1.'),(50,'2014-10-29 10:45:28',1,17,'3','COU101',2,'Deleted courseprerequisite \"courseprerequisite object\".'),(51,'2014-10-29 10:45:38',1,17,'2','COU100',3,''),(52,'2014-10-29 10:46:23',1,17,'4','CO100',1,''),(53,'2014-10-29 10:46:31',1,17,'4','COU100',2,'Changed coursecode.'),(54,'2014-10-29 10:47:19',1,15,'1','MW100',2,'Added facultycoursecode \"COU100\".'),(55,'2014-10-29 10:47:43',1,15,'1','MW100',2,'Added facultycoursecode \"COU101\".'),(56,'2014-10-29 10:47:51',1,15,'2','ATUL100',2,'Added facultycoursecode \"COU100\".'),(57,'2014-11-10 13:18:19',1,8,'4','PAR',1,''),(58,'2014-11-10 13:30:55',1,8,'4','PAR',3,''),(59,'2014-11-10 13:32:04',1,19,'1','lab object',1,''),(60,'2014-11-10 13:46:58',1,19,'1','Lab 1',2,'Added lab member \"labMember object\".'),(61,'2014-11-10 14:23:44',1,19,'1','Lab 1',2,'Changed lmem_link for lab member \"labMember object\".'),(62,'2014-11-11 18:14:53',1,19,'1','Lab 1',2,'Added lab research \"labResearch object\".'),(63,'2014-11-12 10:42:36',1,15,'3','ABC100',1,''),(64,'2014-11-12 10:43:19',1,13,'5','PUB102',2,'Added author \"author object\".');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'log entry','admin','logentry'),(2,'permission','auth','permission'),(3,'group','auth','group'),(4,'user','auth','user'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'homepage','ece','homepage'),(8,'create group','ece','creategroup'),(9,'news','ece','news'),(10,'news_image','ece','news_image'),(11,'comingevent','ece','comingevent'),(12,'comingevent_image','ece','comingevent_image'),(13,'publications','ece','publications'),(14,'author','ece','author'),(15,'facultymem','ece','facultymem'),(16,'facultycoursecode','ece','facultycoursecode'),(17,'courses','ece','courses'),(18,'courseprerequisite','ece','courseprerequisite'),(19,'lab','ece','lab'),(20,'lab member','ece','labmember'),(21,'lab publication','ece','labpublication'),(22,'lab research','ece','labresearch');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
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
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('97adez8v1kukcfi6pal1o24fbtzdafv3','MzJiOTU4Y2Y5MTA3OTc4OTQ0YmM0ZGE3YzQ3ODczODg0YmNiNzAxYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-11-24 13:04:53'),('lq3wp0ervt1mlgw784cdz4xkjyd8qt3s','MzJiOTU4Y2Y5MTA3OTc4OTQ0YmM0ZGE3YzQ3ODczODg0YmNiNzAxYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-11-13 06:41:51'),('o7ivqyhkzl3erp16ohj3s35gjay8tono','MzJiOTU4Y2Y5MTA3OTc4OTQ0YmM0ZGE3YzQ3ODczODg0YmNiNzAxYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=','2014-11-13 06:46:40');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_author`
--

DROP TABLE IF EXISTS `ece_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id_id` int(11) NOT NULL,
  `authorcode` varchar(20000) DEFAULT NULL,
  `extrainf` varchar(20000) DEFAULT NULL,
  `extrainf1` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id_id_refs_id_1c232b97` (`author_id_id`),
  CONSTRAINT `author_id_id_refs_id_1c232b97` FOREIGN KEY (`author_id_id`) REFERENCES `ece_publications` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_author`
--

LOCK TABLES `ece_author` WRITE;
/*!40000 ALTER TABLE `ece_author` DISABLE KEYS */;
INSERT INTO `ece_author` VALUES (3,3,'MW100','',''),(4,3,'ATUL100','',''),(5,4,'MW100','',''),(6,5,'ATUL100','',''),(7,5,'ABC100','','');
/*!40000 ALTER TABLE `ece_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_comingevent`
--

DROP TABLE IF EXISTS `ece_comingevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_comingevent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(2000) NOT NULL,
  `category` varchar(2000) NOT NULL,
  `pub_date` datetime NOT NULL,
  `main_text` mediumtext NOT NULL,
  `extra_inf` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_comingevent`
--

LOCK TABLES `ece_comingevent` WRITE;
/*!40000 ALTER TABLE `ece_comingevent` DISABLE KEYS */;
INSERT INTO `ece_comingevent` VALUES (1,'Open UBC Week','SIP','2014-10-29 15:05:23','Open UBC Week will be held on October 28-29, 2014. It will feature open lectures, information sessions, workshops, and more. More information will be...',''),(2,'FIREtalk proposal deadline extended | The Digital Universe','DSA','2014-10-29 15:06:31','WHAT: How does digital media help you create, distribute, or preserve knowledge? Has available technology expanded, or limited, your academic or...',''),(3,'Engineering Open House','IEA','2014-10-29 15:08:59','Engineers save the world – come find out how!  Engineers do more than build bridges and design fast cars; engineers help prevent...','');
/*!40000 ALTER TABLE `ece_comingevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_comingevent_image`
--

DROP TABLE IF EXISTS `ece_comingevent_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_comingevent_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comingevent_id_id` int(11) NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `extra_inf` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comingevent_id_id_refs_id_f58f9c89` (`comingevent_id_id`),
  CONSTRAINT `comingevent_id_id_refs_id_f58f9c89` FOREIGN KEY (`comingevent_id_id`) REFERENCES `ece_comingevent` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_comingevent_image`
--

LOCK TABLES `ece_comingevent_image` WRITE;
/*!40000 ALTER TABLE `ece_comingevent_image` DISABLE KEYS */;
INSERT INTO `ece_comingevent_image` VALUES (1,3,'event_folder/SIP5.jpg','');
/*!40000 ALTER TABLE `ece_comingevent_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_courseprerequisite`
--

DROP TABLE IF EXISTS `ece_courseprerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_courseprerequisite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precourse_id_id` int(11) NOT NULL,
  `coursecodepre` varchar(20000) DEFAULT NULL,
  `extrainf` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ece_courseprerequisite_1845850f` (`precourse_id_id`),
  CONSTRAINT `precourse_id_id_refs_id_b96cd47b` FOREIGN KEY (`precourse_id_id`) REFERENCES `ece_courses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_courseprerequisite`
--

LOCK TABLES `ece_courseprerequisite` WRITE;
/*!40000 ALTER TABLE `ece_courseprerequisite` DISABLE KEYS */;
/*!40000 ALTER TABLE `ece_courseprerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_courses`
--

DROP TABLE IF EXISTS `ece_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(100) DEFAULT NULL,
  `coursecode` varchar(200) DEFAULT NULL,
  `coursename` varchar(200) DEFAULT NULL,
  `about` varchar(5000) DEFAULT NULL,
  `extrainf` varchar(2000) DEFAULT NULL,
  `extrainf1` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_courses`
--

LOCK TABLES `ece_courses` WRITE;
/*!40000 ALTER TABLE `ece_courses` DISABLE KEYS */;
INSERT INTO `ece_courses` VALUES (3,'course_folder/SIP2_48mPP1P.jpg','COU101','Electronics and Computing','The uniqueness of bio signal processing research stems from the tight coupling between the ECE Department, the faculty of Medicine and the UBC hospital. Students are ','',''),(4,'course_folder/SIP4.jpg','COU100','Linear Circuit','Design, implementation, reasoning about software systems: Abstraction and specification of software, testing, verification, abstract data types, object-oriented design, design patterns, type hierarchies, concurrent software design. ','','');
/*!40000 ALTER TABLE `ece_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_creategroup`
--

DROP TABLE IF EXISTS `ece_creategroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_creategroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(2000) NOT NULL,
  `about` mediumtext NOT NULL,
  `category` varchar(2000) DEFAULT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `img5` varchar(100) DEFAULT NULL,
  `img6` varchar(100) DEFAULT NULL,
  `extra_inf` mediumtext,
  `extra_inf1` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_creategroup`
--

LOCK TABLES `ece_creategroup` WRITE;
/*!40000 ALTER TABLE `ece_creategroup` DISABLE KEYS */;
INSERT INTO `ece_creategroup` VALUES (1,'SIP','<br>Our objectives are to create and develop innovative techniques for visualization of biomedical data. These techniques are developed for application in clinically-focused, disease-specific manners.   The uniqueness of bio signal processing research stems from the tight coupling between the ECE Department, the faculty of Medicine and the UBC hospital. Students are exposed to multi-disciplinary research as well as hands on, real world experience both in and outside of the lab.  More information on the Biomedical and Multimedia and Signal Procession group can be found on their website. <br><br>','Signal and image processing','pic_folder/SIP1.jpg','pic_folder/SIP2.jpg','pic_folder/SIP3.JPG','pic_folder/SIP4.jpg','pic_folder/SIP5.jpg','pic_folder/SIP6.jpg','',''),(2,'IEA','<br>The communication systems group is engaged in leading-edge research in many areas of communications and networking. We are driven by their potential impact on our society and environment. Our focus is on the design and evaluation of architectures, algorithms, protocols, and management strategies for communication systems. The applications cover many areas, including the Internet, wireless networks, sensor networks, and other communications systems. The work in our group spans various areas including coding, relaying, channel modelling, interference mitigation, multiple access, scheduling, routing, multimedia, target tracking, sensors, and antenna design. We collaborate with companies, academic institutions and government agencies in British Columbia, Canada and around the world on joint projects.<br><br>','Introduction to Economics and Analysis','pic_folder/SIP3_Bwao2xF.JPG','pic_folder/SIP5_bIvec2x.jpg','pic_folder/SIP2_X9iIvzW.jpg','pic_folder/SIP1_60cPtHw.jpg','pic_folder/SIP4_x8DjuDj.jpg','pic_folder/SIP6_UC9o5Rv.jpg','',''),(3,'DSA','<br>Communication and computing technology is advancing at an accelerated pace. Humans are finding it difficult to keep pace with these changes, and yet these new technologies are supposedly made for the benefit of humans. The Human Communication Technology (HCT) Research Laboratory researches a number of key issues which put people \"back in the loop\" and allow us to communicate experiences to computer systems and each other more effectively. An awareness of people\'s different cognitive, physical and emotional capabilities provides a foundation for acquiring, analyzing, representing, storing, retrieving, transmitting, communicating and ultimately synthesizing human experience. Faster processing machines, bigger data capacity, new algorithms, multimedia and multimodal systems will be combined with developments in medicine psychology, sociology and art to enhance the communication abilities between people and machines.<br><br>','Data Structure and Algorithm','pic_folder/SIP2_Amh9jN9.jpg','pic_folder/SIP3_l8VCS2u.JPG','pic_folder/SIP5_HKKWekF.jpg','pic_folder/SIP4_hvQxCaa.jpg','pic_folder/SIP1_H0t10Sv.jpg','pic_folder/SIP6_pwNH472.jpg','','');
/*!40000 ALTER TABLE `ece_creategroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_facultycoursecode`
--

DROP TABLE IF EXISTS `ece_facultycoursecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_facultycoursecode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facultycourse_id_id` int(11) NOT NULL,
  `fcoursecode` varchar(200) DEFAULT NULL,
  `extrainf` varchar(2000) DEFAULT NULL,
  `extrainf1` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `facultycourse_id_id_refs_id_998dba35` (`facultycourse_id_id`),
  CONSTRAINT `facultycourse_id_id_refs_id_998dba35` FOREIGN KEY (`facultycourse_id_id`) REFERENCES `ece_facultymem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_facultycoursecode`
--

LOCK TABLES `ece_facultycoursecode` WRITE;
/*!40000 ALTER TABLE `ece_facultycoursecode` DISABLE KEYS */;
INSERT INTO `ece_facultycoursecode` VALUES (1,1,'SIP','Professor',''),(2,2,'IEA','Professor',''),(3,1,'DSA','Professor',''),(4,2,'DSA','Programmer',''),(5,1,'COU100','',''),(6,1,'COU101','',''),(7,2,'COU100','',''),(8,3,'SIP','bjbsd bw b ,wc',',dbjv he h en.nv h.e h.e h');
/*!40000 ALTER TABLE `ece_facultycoursecode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_facultymem`
--

DROP TABLE IF EXISTS `ece_facultymem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_facultymem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `about` varchar(5000) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `facultycode` varchar(200) DEFAULT NULL,
  `extrainf` varchar(2000) DEFAULT NULL,
  `extrainf1` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_facultymem`
--

LOCK TABLES `ece_facultymem` WRITE;
/*!40000 ALTER TABLE `ece_facultymem` DISABLE KEYS */;
INSERT INTO `ece_facultymem` VALUES (1,'Mohit Wadhwa','Biomedical Engineering with emphasis on computer-assisted surgery, image-guided therapy and medical image analysis.    Purang Abolmaesumi received his BSc (1995) and MSc (1997) from Sharif University of Technology, Iran, and his PhD (2002) from UBC, all in electrical engineering. From 2002 to 2009, he was a faculty member with the School of Computing, Queen’s University. He then joined the Department of Electrical and Computer Engineering at UBC, where he is a Canada Research Chair, Tier II, in Biomedical Engineering and a Professor, with Associate Membership to the Department of Urologic Sciences.     Dr. Abolmaesumi is internationally recognized and has received numerous awards for his pioneering developments in ultrasound image processing, image registration and image-guided interventions. He is the recepient of the Killam Faculty Research Prize at UBC. He currently serves as an Associate Editor of the IEEE Transactions on Medical Imaging, and has served as an Associate Editor of the IEEE TBME between 2008 and 2012. He is a Board Member of the International Society for Computer Aided Surgery, and serves on the Program Committees of the Medical Image Computing and Computing and Computer Assisted Intervention (MICCAI), International Society for Optics and Photonics (SPIE) Medical Imaging, and the International Conference on Information Processing in Computer Assisted Interventions (IPCAI). Dr. Abolmaesumi is the General Chair of IPCAI 2014 and 2015, and has served as Program Chair of IPCAI 2012 in Pisa and Workshop and Tutorial Chair of MICCAI 2011 in Toronto. He also serves as the Workshop and Tutorial Chair of MICCAI 2015.','faculty_folder/5281.JPG','MW100','Office: KAIS 4052                              Electrical and Computer Engineering The University of British Columbia 4052 - 2332 Main Mall Vancouver BC V6T 1Z4 Canada                              purang@ece.ubc.ca (604) 827-4741 (604) 822-5949                              Website: http://www.ece.ubc.ca/~purang/','Programmer'),(2,'Atul Jain','Adaptive control, predictive control, control of distributed parameters systems, advanced process control, applications of wavelet analysis, biomedical applications of control, pulp and paper process control.<br><br> Guy A. Dumont received his Diplôme d\'Ingénieur from ENSAM, Paris, France in 1973 and his PhD in electrical engineering from McGill University in 1977. In 1973-74, and again from 1977 to 1979, he worked for Tioxide France. From 1979 to 1989, he worked with Paprican, the Pulp and Paper Research Institute of Canada. In 1989, he joined the Department of Electrical and Computer Engineering at UBC where he is a Professor. From 1989 to 1999, he held the Senior NSERC/Paprican Industrial Research Chair in Process Control.  <br><br>Dr. Dumont has won various awards including a 1979 IEEE Transactions on Automatic Control Honorable Paper Award; the IEEE Control Systems Society 1998 Control Systems Technology Award and NSERC Synergy Awards, in 1999 for the development of the technology behind Universal Dynamics’ BrainWave adaptive controller, and in 2002 for the development of Honeywell’s Intellimap cross-directional control loop-shaping technology.  Dr. Dumont\'s current research interests are: adaptive control, distributed parameter system control, control loop performance monitoring, predictive control, with applications to the process industries, mainly pulp and paper. Recently, he has expanded his interests to biomedical engineering, particularly to biomedical signal processing and automatic drug delivery. He is a Fellow of the IEEE and of the BC Advanced Systems Institute and a member of ISA, PAPTAC and TAPPI.','faculty_folder/5163.JPG','ATUL100','Office: KAIS 4052          <br>                 Electrical and Computer Engineering The University of British Columbia 4052 - 2332 <br>Main Mall Vancouver BC V6T 1Z4 Canada                              purang@ece.ubc.ca (604) 827-4741 (604) 822-5949                              Website: http://www.ece.ubc.ca/~purang/','Professor'),(3,'ABCDEFG','BEJMBJVKJBREJ 3LKHKJFV3 E,JBKJ','faculty_folder/Empty-Space-by-Glenn-Rayat.jpg','ABC100','nrejkhlkv njhhvfc e,jkg',',ken,knbkljoij4m kn4lkgou9 ho4n. ');
/*!40000 ALTER TABLE `ece_facultymem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_homepage`
--

DROP TABLE IF EXISTS `ece_homepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_homepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extra_inf` mediumtext,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  `img5` varchar(100) DEFAULT NULL,
  `img6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_homepage`
--

LOCK TABLES `ece_homepage` WRITE;
/*!40000 ALTER TABLE `ece_homepage` DISABLE KEYS */;
INSERT INTO `ece_homepage` VALUES (1,'','home_folder/Empty-Space-by-Glenn-Rayat.jpg','home_folder/Kronach-leuchtet-2014-by-Brian-Fox.jpg','home_folder/Sunny-Autumn-by-Joel-Heaps.jpg','home_folder/Night-Seascape-by-Davor-Dopar.jpg','home_folder/Redes-de-hilo-by-Juan-Pablo-Lauriente.jpg','home_folder/Kronach-leuchtet-2014-by-Brian-Fox_YgJY0qk.jpg');
/*!40000 ALTER TABLE `ece_homepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_lab`
--

DROP TABLE IF EXISTS `ece_lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_code` varchar(2000) NOT NULL,
  `lab_name` varchar(2000) NOT NULL,
  `lab_about` longtext NOT NULL,
  `lab_extra` varchar(2000) NOT NULL,
  `lab_extra1` varchar(2000) NOT NULL,
  `lab_extra2` varchar(2000) NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `img2` varchar(100) DEFAULT NULL,
  `img3` varchar(100) DEFAULT NULL,
  `img4` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_lab`
--

LOCK TABLES `ece_lab` WRITE;
/*!40000 ALTER TABLE `ece_lab` DISABLE KEYS */;
INSERT INTO `ece_lab` VALUES (1,'LAB100','Lab 1','However, the main bottleneck of such algorithms is the computational speed - since all such methods require computing the SVD of the matrix. Currently we are working on techniques to solve these problems without the requirement of SVD. Our techniques should not be confused with matrix factorization based approaches - we still solve the same problem, but without computing the SVD\'s.\r\n\r\nIn some cases, the problem is to solve a system of equations where the solution is sparse and low-rank. In those cases, the optimization problem that needs be solved is:\r\n','caac','cwaf','wsvsev','lab_folder/Night-Seascape-by-Davor-Dopar.jpg','lab_folder/Sunny-Autumn-by-Joel-Heaps.jpg','lab_folder/Redes-de-hilo-by-Juan-Pablo-Lauriente.jpg','lab_folder/Kronach-leuchtet-2014-by-Brian-Fox.jpg');
/*!40000 ALTER TABLE `ece_lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_labmember`
--

DROP TABLE IF EXISTS `ece_labmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_labmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lmem_id_id` int(11) NOT NULL,
  `lmem_name` varchar(200) NOT NULL,
  `lmem_email` varchar(200) NOT NULL,
  `lmem_link` varchar(200) NOT NULL,
  `lmem_about` varchar(5000) NOT NULL,
  `lmem_extra` varchar(5000) NOT NULL,
  `lmem_extra1` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ece_labmember_18cfdf7f` (`lmem_id_id`),
  CONSTRAINT `lmem_id_id_refs_id_8bc865a9` FOREIGN KEY (`lmem_id_id`) REFERENCES `ece_lab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_labmember`
--

LOCK TABLES `ece_labmember` WRITE;
/*!40000 ALTER TABLE `ece_labmember` DISABLE KEYS */;
INSERT INTO `ece_labmember` VALUES (1,1,'Parth Srivastava','parth13111@iiitd.ac.in','http://www.google.com','Hello. Bello. Kello.','kk','kk');
/*!40000 ALTER TABLE `ece_labmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_labpublication`
--

DROP TABLE IF EXISTS `ece_labpublication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_labpublication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lpub_id_id` int(11) NOT NULL,
  `lpub_year` varchar(200) NOT NULL,
  `lpub_about` varchar(4000) NOT NULL,
  `lpub_pdf` varchar(200) NOT NULL,
  `lpub_extra` varchar(2000) NOT NULL,
  `lpub_extra1` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ece_labpublication_b895679d` (`lpub_id_id`),
  CONSTRAINT `lpub_id_id_refs_id_261926fc` FOREIGN KEY (`lpub_id_id`) REFERENCES `ece_lab` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_labpublication`
--

LOCK TABLES `ece_labpublication` WRITE;
/*!40000 ALTER TABLE `ece_labpublication` DISABLE KEYS */;
/*!40000 ALTER TABLE `ece_labpublication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_labresearch`
--

DROP TABLE IF EXISTS `ece_labresearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_labresearch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lresearch_id_id` int(11) NOT NULL,
  `lresearch_title` varchar(200) NOT NULL,
  `lresearch_about` varchar(4000) NOT NULL,
  `lresearch_maintext` longtext NOT NULL,
  `lresearch_extra` varchar(2000) NOT NULL,
  `lresearch_extra1` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ece_labresearch_7975b491` (`lresearch_id_id`),
  CONSTRAINT `lresearch_id_id_refs_id_c3aabfad` FOREIGN KEY (`lresearch_id_id`) REFERENCES `ece_lab` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_labresearch`
--

LOCK TABLES `ece_labresearch` WRITE;
/*!40000 ALTER TABLE `ece_labresearch` DISABLE KEYS */;
INSERT INTO `ece_labresearch` VALUES (2,1,'Algorithms','aas','No human being can write fast enough, or long enough, or small enough† ( †\"smaller and smaller without limit ...you\'d be trying to write on molecules, on atoms, on electrons\") to list all members of an enumerably infinite set by writing out their names, one after another, in some notation. But humans can do something equally useful, in the case of certain enumerably infinite sets: They can give explicit instructions for determining the nth member of the set, for arbitrary finite n. Such instructions are to be given quite explicitly, in a form in which they could be followed by a computing machine, or by a human who is capable of carrying out only very elementary operations on symbols.','aass','aaaas');
/*!40000 ALTER TABLE `ece_labresearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_news`
--

DROP TABLE IF EXISTS `ece_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(2000) NOT NULL,
  `category` varchar(2000) NOT NULL,
  `pub_date` datetime NOT NULL,
  `main_text` mediumtext NOT NULL,
  `extra_inf` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_news`
--

LOCK TABLES `ece_news` WRITE;
/*!40000 ALTER TABLE `ece_news` DISABLE KEYS */;
INSERT INTO `ece_news` VALUES (1,'Two UBC students named Outstanding Young Scientists at MICCAI','SIP','2014-10-29 14:55:40','Philip Edgcumbe and Alborz Amir-Khalili, two graduate students in UBC\'s biomedical engineering program, were recognized for their outstand work at the International Medical Image Computing and Computer Aided Interventions. Philip and Alborz work closely with ECE research teams in the Robotics and Control Laborat...',''),(2,'Introducing EERI British Columbia Chapter','IEA','2014-10-29 14:58:25','Announcing the British Columbia Chapter of the Earthquake Engineering Research Institute!   Are you interested in the latest...','');
/*!40000 ALTER TABLE `ece_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_news_image`
--

DROP TABLE IF EXISTS `ece_news_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_news_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id_id` int(11) NOT NULL,
  `img1` varchar(100) DEFAULT NULL,
  `extra_inf` varchar(20000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id_id_refs_id_459fcd33` (`news_id_id`),
  CONSTRAINT `news_id_id_refs_id_459fcd33` FOREIGN KEY (`news_id_id`) REFERENCES `ece_news` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_news_image`
--

LOCK TABLES `ece_news_image` WRITE;
/*!40000 ALTER TABLE `ece_news_image` DISABLE KEYS */;
INSERT INTO `ece_news_image` VALUES (1,1,'pic_folder/SIP3_Q7tsyGR.JPG','');
/*!40000 ALTER TABLE `ece_news_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ece_publications`
--

DROP TABLE IF EXISTS `ece_publications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ece_publications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(2000) NOT NULL,
  `pubHeading` varchar(20000) NOT NULL,
  `pubDetail` mediumtext NOT NULL,
  `pubDate` datetime NOT NULL,
  `extra_inf` mediumtext,
  `title` mediumtext,
  `pubtype` mediumtext,
  `yearofpub` mediumtext,
  `journal` mediumtext,
  `volume` mediumtext,
  `pagination` mediumtext,
  `abstract` mediumtext,
  `url` mediumtext,
  `doi` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ece_publications`
--

LOCK TABLES `ece_publications` WRITE;
/*!40000 ALTER TABLE `ece_publications` DISABLE KEYS */;
INSERT INTO `ece_publications` VALUES (3,'SIP','Fast feature based multi slice to volume registration using phase congruency','PUB100','2014-10-29 15:11:12','Conference Paper | Design, Test, Integration and Packaging of MEMS/MOEMS, 2008. MEMS/MOEMS 2008. Symposium on','','','2008','','','','','',''),(4,'IEA','Noise-based optimization and noise analysis for resonant MEMS structures','PUB101','2014-10-29 15:13:46','Conference Paper | Computer Vision and Pattern Recognition Workshops, 2008. CVPRW \'08. IEEE Computer Society Conference on','','','2010','','','','','',''),(5,'DSA','Inferring functional connectivity using spatial modulation measures of fMRI signals within brain regions of interest','PUB102','2014-10-29 15:17:30','Conference Paper | Computer Vision and Pattern Recognition Workshops, 2008. CVPRW \'08. IEEE Computer Society Conference on','','','2011','','','','','','');
/*!40000 ALTER TABLE `ece_publications` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-02 20:08:33
