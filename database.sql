-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: nextcloud
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `oc_accounts`
--

DROP TABLE IF EXISTS `oc_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_accounts` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_accounts`
--

LOCK TABLES `oc_accounts` WRITE;
/*!40000 ALTER TABLE `oc_accounts` DISABLE KEYS */;
INSERT INTO `oc_accounts` VALUES ('user','{\"displayname\":{\"value\":\"user\",\"scope\":\"contacts\"},\"address\":{\"value\":\"\",\"scope\":\"private\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":\"\",\"scope\":\"contacts\",\"verified\":\"1\"},\"avatar\":{\"scope\":\"public\"},\"phone\":{\"value\":\"\",\"scope\":\"private\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}'),('user1','{\"displayname\":{\"value\":\"user1\",\"scope\":\"contacts\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"contacts\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"contacts\"},\"phone\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}'),('user2','{\"displayname\":{\"value\":\"user2\",\"scope\":\"contacts\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"contacts\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"contacts\"},\"phone\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}'),('user3','{\"displayname\":{\"value\":\"user3\",\"scope\":\"contacts\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"contacts\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"contacts\"},\"phone\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}'),('user4','{\"displayname\":{\"value\":\"user4\",\"scope\":\"contacts\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"contacts\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"contacts\"},\"phone\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}'),('user5','{\"displayname\":{\"value\":\"user5\",\"scope\":\"contacts\",\"verified\":\"0\"},\"address\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"website\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"email\":{\"value\":null,\"scope\":\"contacts\",\"verified\":\"0\"},\"avatar\":{\"scope\":\"contacts\"},\"phone\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"},\"twitter\":{\"value\":\"\",\"scope\":\"private\",\"verified\":\"0\"}}');
/*!40000 ALTER TABLE `oc_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity`
--

DROP TABLE IF EXISTS `oc_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `subjectparams` longtext COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `messageparams` longtext COLLATE utf8mb4_bin,
  `file` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activity_id`),
  KEY `activity_user_time` (`affecteduser`,`timestamp`),
  KEY `activity_filter_by` (`affecteduser`,`user`,`timestamp`),
  KEY `activity_filter` (`affecteduser`,`type`,`app`,`timestamp`),
  KEY `activity_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity`
--

LOCK TABLES `oc_activity` WRITE;
/*!40000 ALTER TABLE `oc_activity` DISABLE KEYS */;
INSERT INTO `oc_activity` VALUES (1,1606574338,30,'file_created','user','user','files','created_self','[{\"3\":\"\\/Documents\"}]','','[]','/Documents','http://localhost/index.php/apps/files/?dir=/','files',3),(2,1606574338,30,'file_created','user','user','files','created_self','[{\"4\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','http://localhost/index.php/apps/files/?dir=/Documents','files',4),(3,1606574338,30,'file_created','user','user','files','created_self','[{\"5\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','http://localhost/index.php/apps/files/?dir=/Documents','files',5),(4,1606574338,30,'file_created','user','user','files','created_self','[{\"6\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','http://localhost/index.php/apps/files/?dir=/Documents','files',6),(5,1606574338,30,'file_created','user','user','files','created_self','[{\"7\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','http://localhost/index.php/apps/files/?dir=/Documents','files',7),(6,1606574338,30,'file_created','user','user','files','created_self','[{\"8\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','http://localhost/index.php/apps/files/?dir=/','files',8),(7,1606574339,30,'file_created','user','user','files','created_self','[{\"13\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','http://localhost/index.php/apps/files/?dir=/','files',13),(8,1606574340,30,'file_created','user','user','files','created_self','[{\"14\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','http://localhost/index.php/apps/files/?dir=/','files',14),(9,1606574340,30,'file_created','user','user','files','created_self','[{\"15\":\"\\/Photos\"}]','','[]','/Photos','http://localhost/index.php/apps/files/?dir=/','files',15),(10,1606574340,30,'file_created','user','user','files','created_self','[{\"16\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',16),(11,1606574340,30,'file_created','user','user','files','created_self','[{\"17\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',17),(12,1606574340,30,'file_created','user','user','files','created_self','[{\"18\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',18),(13,1606574340,30,'file_created','user','user','files','created_self','[{\"19\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',19),(14,1606574341,30,'file_created','user','user','files','created_self','[{\"20\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',20),(15,1606574341,30,'file_created','user','user','files','created_self','[{\"21\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','http://localhost/index.php/apps/files/?dir=/Photos','files',21),(16,1606574341,30,'file_created','user','user','files','created_self','[{\"22\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',22),(17,1606574341,30,'file_created','user','user','files','created_self','[{\"23\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',23),(18,1606574341,30,'file_created','user','user','files','created_self','[{\"24\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','http://localhost/index.php/apps/files/?dir=/Photos','files',24),(19,1606574341,30,'file_created','user','user','files','created_self','[{\"25\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','http://localhost/index.php/apps/files/?dir=/','files',25),(20,1606574341,30,'calendar','user','user','dav','calendar_add_self','{\"actor\":\"user\",\"calendar\":{\"id\":1,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',1),(21,1606580308,30,'file_created','user','user','files','created_self','[{\"172\":\"\\/Readme.md\"}]','','[]','/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/','files',172),(22,1606589485,30,'file_deleted','user','user','files','deleted_self','[{\"3\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',3),(23,1606589485,30,'file_deleted','user','user','files','deleted_self','[{\"15\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',15),(24,1606589485,30,'file_deleted','user','user','files','deleted_self','[{\"13\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',13),(25,1606589485,30,'file_deleted','user','user','files','deleted_self','[{\"14\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',14),(26,1606589486,30,'file_deleted','user','user','files','deleted_self','[{\"8\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',8),(27,1606589486,30,'file_deleted','user','user','files','deleted_self','[{\"172\":\"\\/Readme.md\"}]','','[]','/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/','files',172),(28,1606589486,30,'file_deleted','user','user','files','deleted_self','[{\"25\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',25),(29,1606590628,30,'calendar','user','user','dav','calendar_add_self','{\"actor\":\"user\",\"calendar\":{\"id\":2,\"uri\":\"contact_birthdays\",\"name\":\"Contact birthdays\"}}','','[]','','','calendar',2),(30,1606595483,30,'calendar','user','system','dav','calendar_add','{\"actor\":\"user\",\"calendar\":{\"id\":3,\"uri\":\"contact_birthdays\",\"name\":\"Contact birthdays\"}}','','[]','','','calendar',3),(31,1606595843,30,'group_settings','user','user1','settings','group_added','{\"user\":\"user1\",\"group\":\"SBER\",\"actor\":\"user\"}','','[]','','','',0),(32,1606595848,30,'group_settings','user','user2','settings','group_added','{\"user\":\"user2\",\"group\":\"SBER\",\"actor\":\"user\"}','','[]','','','',0),(33,1606595852,30,'group_settings','user','user3','settings','group_added','{\"user\":\"user3\",\"group\":\"SBER\",\"actor\":\"user\"}','','[]','','','',0),(34,1606595856,30,'group_settings','user','user4','settings','group_added','{\"user\":\"user4\",\"group\":\"SBER\",\"actor\":\"user\"}','','[]','','','',0),(35,1606595859,30,'group_settings','user','user5','settings','group_added','{\"user\":\"user5\",\"group\":\"SBER\",\"actor\":\"user\"}','','[]','','','',0),(36,1606597249,30,'file_created','user1','user1','files','created_self','[{\"324\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',324),(37,1606597249,30,'file_created','user1','user1','files','created_self','[{\"325\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',325),(38,1606597250,30,'file_created','user1','user1','files','created_self','[{\"326\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',326),(39,1606597250,30,'file_created','user1','user1','files','created_self','[{\"327\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',327),(40,1606597250,30,'file_created','user1','user1','files','created_self','[{\"328\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',328),(41,1606597250,30,'file_created','user1','user1','files','created_self','[{\"329\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',329),(42,1606597250,30,'file_created','user1','user1','files','created_self','[{\"330\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',330),(43,1606597251,30,'file_created','user1','user1','files','created_self','[{\"331\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',331),(44,1606597251,30,'file_created','user1','user1','files','created_self','[{\"332\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',332),(45,1606597251,30,'file_created','user1','user1','files','created_self','[{\"333\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',333),(46,1606597251,30,'file_created','user1','user1','files','created_self','[{\"334\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',334),(47,1606597251,30,'file_created','user1','user1','files','created_self','[{\"335\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',335),(48,1606597251,30,'file_created','user1','user1','files','created_self','[{\"336\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',336),(49,1606597251,30,'file_created','user1','user1','files','created_self','[{\"337\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',337),(50,1606597251,30,'file_created','user1','user1','files','created_self','[{\"338\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',338),(51,1606597251,30,'file_created','user1','user1','files','created_self','[{\"339\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',339),(52,1606597251,30,'file_created','user1','user1','files','created_self','[{\"340\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',340),(53,1606597251,30,'file_created','user1','user1','files','created_self','[{\"341\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',341),(54,1606597252,30,'file_created','user1','user1','files','created_self','[{\"342\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',342),(55,1606597252,30,'calendar','user1','user1','dav','calendar_add_self','{\"actor\":\"user1\",\"calendar\":{\"id\":4,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',4),(56,1606598344,30,'file_created','user2','user2','files','created_self','[{\"402\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',402),(57,1606598344,30,'file_created','user2','user2','files','created_self','[{\"403\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',403),(58,1606598344,30,'file_created','user2','user2','files','created_self','[{\"404\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',404),(59,1606598344,30,'file_created','user2','user2','files','created_self','[{\"405\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',405),(60,1606598344,30,'file_created','user2','user2','files','created_self','[{\"406\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',406),(61,1606598344,30,'file_created','user2','user2','files','created_self','[{\"407\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',407),(62,1606598345,30,'file_created','user2','user2','files','created_self','[{\"408\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',408),(63,1606598345,30,'file_created','user2','user2','files','created_self','[{\"409\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',409),(64,1606598345,30,'file_created','user2','user2','files','created_self','[{\"410\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',410),(65,1606598345,30,'file_created','user2','user2','files','created_self','[{\"411\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',411),(66,1606598345,30,'file_created','user2','user2','files','created_self','[{\"412\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',412),(67,1606598345,30,'file_created','user2','user2','files','created_self','[{\"413\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',413),(68,1606598345,30,'file_created','user2','user2','files','created_self','[{\"414\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',414),(69,1606598345,30,'file_created','user2','user2','files','created_self','[{\"415\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',415),(70,1606598345,30,'file_created','user2','user2','files','created_self','[{\"416\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',416),(71,1606598345,30,'file_created','user2','user2','files','created_self','[{\"417\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',417),(72,1606598345,30,'file_created','user2','user2','files','created_self','[{\"418\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',418),(73,1606598345,30,'file_created','user2','user2','files','created_self','[{\"419\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',419),(74,1606598346,30,'file_created','user2','user2','files','created_self','[{\"420\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',420),(75,1606598346,30,'calendar','user2','user2','dav','calendar_add_self','{\"actor\":\"user2\",\"calendar\":{\"id\":5,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',5),(76,1606600261,30,'file_created','user3','user3','files','created_self','[{\"465\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',465),(77,1606600261,30,'file_created','user3','user3','files','created_self','[{\"466\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',466),(78,1606600261,30,'file_created','user3','user3','files','created_self','[{\"467\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',467),(79,1606600261,30,'file_created','user3','user3','files','created_self','[{\"468\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',468),(80,1606600261,30,'file_created','user3','user3','files','created_self','[{\"469\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',469),(81,1606600261,30,'file_created','user3','user3','files','created_self','[{\"470\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',470),(82,1606600261,30,'file_created','user3','user3','files','created_self','[{\"471\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',471),(83,1606600261,30,'file_created','user3','user3','files','created_self','[{\"472\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',472),(84,1606600261,30,'file_created','user3','user3','files','created_self','[{\"473\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',473),(85,1606600261,30,'file_created','user3','user3','files','created_self','[{\"474\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',474),(86,1606600261,30,'file_created','user3','user3','files','created_self','[{\"475\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',475),(87,1606600261,30,'file_created','user3','user3','files','created_self','[{\"476\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',476),(88,1606600261,30,'file_created','user3','user3','files','created_self','[{\"477\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',477),(89,1606600261,30,'file_created','user3','user3','files','created_self','[{\"478\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',478),(90,1606600262,30,'file_created','user3','user3','files','created_self','[{\"479\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',479),(91,1606600262,30,'file_created','user3','user3','files','created_self','[{\"480\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',480),(92,1606600262,30,'file_created','user3','user3','files','created_self','[{\"481\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',481),(93,1606600262,30,'file_created','user3','user3','files','created_self','[{\"482\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',482),(94,1606600262,30,'file_created','user3','user3','files','created_self','[{\"483\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',483),(95,1606600262,30,'calendar','user3','user3','dav','calendar_add_self','{\"actor\":\"user3\",\"calendar\":{\"id\":6,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',6),(96,1606600476,30,'file_created','user4','user4','files','created_self','[{\"535\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',535),(97,1606600476,30,'file_created','user4','user4','files','created_self','[{\"536\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',536),(98,1606600476,30,'file_created','user4','user4','files','created_self','[{\"537\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',537),(99,1606600476,30,'file_created','user4','user4','files','created_self','[{\"538\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',538),(100,1606600476,30,'file_created','user4','user4','files','created_self','[{\"539\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',539),(101,1606600476,30,'file_created','user4','user4','files','created_self','[{\"540\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',540),(102,1606600476,30,'file_created','user4','user4','files','created_self','[{\"541\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',541),(103,1606600476,30,'file_created','user4','user4','files','created_self','[{\"542\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',542),(104,1606600476,30,'file_created','user4','user4','files','created_self','[{\"543\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',543),(105,1606600476,30,'file_created','user4','user4','files','created_self','[{\"544\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',544),(106,1606600476,30,'file_created','user4','user4','files','created_self','[{\"545\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',545),(107,1606600476,30,'file_created','user4','user4','files','created_self','[{\"546\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',546),(108,1606600476,30,'file_created','user4','user4','files','created_self','[{\"547\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',547),(109,1606600476,30,'file_created','user4','user4','files','created_self','[{\"548\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',548),(110,1606600477,30,'file_created','user4','user4','files','created_self','[{\"549\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',549),(111,1606600477,30,'file_created','user4','user4','files','created_self','[{\"550\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',550),(112,1606600477,30,'file_created','user4','user4','files','created_self','[{\"551\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',551),(113,1606600477,30,'file_created','user4','user4','files','created_self','[{\"552\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',552),(114,1606600477,30,'file_created','user4','user4','files','created_self','[{\"553\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',553),(115,1606600477,30,'calendar','user4','user4','dav','calendar_add_self','{\"actor\":\"user4\",\"calendar\":{\"id\":7,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',7),(116,1606600697,30,'file_created','user5','user5','files','created_self','[{\"604\":\"\\/Documents\"}]','','[]','/Documents','https://192.168.0.104/index.php/apps/files/?dir=/','files',604),(117,1606600697,30,'file_created','user5','user5','files','created_self','[{\"605\":\"\\/Documents\\/Example.md\"}]','','[]','/Documents/Example.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',605),(118,1606600697,30,'file_created','user5','user5','files','created_self','[{\"606\":\"\\/Documents\\/Nextcloud flyer.pdf\"}]','','[]','/Documents/Nextcloud flyer.pdf','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',606),(119,1606600697,30,'file_created','user5','user5','files','created_self','[{\"607\":\"\\/Documents\\/Readme.md\"}]','','[]','/Documents/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',607),(120,1606600697,30,'file_created','user5','user5','files','created_self','[{\"608\":\"\\/Documents\\/Welcome to Nextcloud Hub.docx\"}]','','[]','/Documents/Welcome to Nextcloud Hub.docx','https://192.168.0.104/index.php/apps/files/?dir=/Documents','files',608),(121,1606600697,30,'file_created','user5','user5','files','created_self','[{\"609\":\"\\/Nextcloud Manual.pdf\"}]','','[]','/Nextcloud Manual.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',609),(122,1606600697,30,'file_created','user5','user5','files','created_self','[{\"610\":\"\\/Nextcloud intro.mp4\"}]','','[]','/Nextcloud intro.mp4','https://192.168.0.104/index.php/apps/files/?dir=/','files',610),(123,1606600697,30,'file_created','user5','user5','files','created_self','[{\"611\":\"\\/Nextcloud.png\"}]','','[]','/Nextcloud.png','https://192.168.0.104/index.php/apps/files/?dir=/','files',611),(124,1606600697,30,'file_created','user5','user5','files','created_self','[{\"612\":\"\\/Photos\"}]','','[]','/Photos','https://192.168.0.104/index.php/apps/files/?dir=/','files',612),(125,1606600697,30,'file_created','user5','user5','files','created_self','[{\"613\":\"\\/Photos\\/Birdie.jpg\"}]','','[]','/Photos/Birdie.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',613),(126,1606600697,30,'file_created','user5','user5','files','created_self','[{\"614\":\"\\/Photos\\/Frog.jpg\"}]','','[]','/Photos/Frog.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',614),(127,1606600697,30,'file_created','user5','user5','files','created_self','[{\"615\":\"\\/Photos\\/Gorilla.jpg\"}]','','[]','/Photos/Gorilla.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',615),(128,1606600697,30,'file_created','user5','user5','files','created_self','[{\"616\":\"\\/Photos\\/Library.jpg\"}]','','[]','/Photos/Library.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',616),(129,1606600697,30,'file_created','user5','user5','files','created_self','[{\"617\":\"\\/Photos\\/Nextcloud community.jpg\"}]','','[]','/Photos/Nextcloud community.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',617),(130,1606600697,30,'file_created','user5','user5','files','created_self','[{\"618\":\"\\/Photos\\/Readme.md\"}]','','[]','/Photos/Readme.md','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',618),(131,1606600697,30,'file_created','user5','user5','files','created_self','[{\"619\":\"\\/Photos\\/Steps.jpg\"}]','','[]','/Photos/Steps.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',619),(132,1606600697,30,'file_created','user5','user5','files','created_self','[{\"620\":\"\\/Photos\\/Toucan.jpg\"}]','','[]','/Photos/Toucan.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',620),(133,1606600697,30,'file_created','user5','user5','files','created_self','[{\"621\":\"\\/Photos\\/Vineyard.jpg\"}]','','[]','/Photos/Vineyard.jpg','https://192.168.0.104/index.php/apps/files/?dir=/Photos','files',621),(134,1606600698,30,'file_created','user5','user5','files','created_self','[{\"622\":\"\\/Reasons to use Nextcloud.pdf\"}]','','[]','/Reasons to use Nextcloud.pdf','https://192.168.0.104/index.php/apps/files/?dir=/','files',622),(135,1606600698,30,'calendar','user5','user5','dav','calendar_add_self','{\"actor\":\"user5\",\"calendar\":{\"id\":8,\"uri\":\"personal\",\"name\":\"Personal\"}}','','[]','','','calendar',8);
/*!40000 ALTER TABLE `oc_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_activity_mq`
--

DROP TABLE IF EXISTS `oc_activity_mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_activity_mq` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amq_timestamp` int(11) NOT NULL DEFAULT '0',
  `amq_latest_send` int(11) NOT NULL DEFAULT '0',
  `amq_type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_affecteduser` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `amq_appid` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `amq_subject` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amq_subjectparams` text COLLATE utf8mb4_bin NOT NULL,
  `object_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `object_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mail_id`),
  KEY `amp_user` (`amq_affecteduser`),
  KEY `amp_latest_send_time` (`amq_latest_send`),
  KEY `amp_timestamp_time` (`amq_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_activity_mq`
--

LOCK TABLES `oc_activity_mq` WRITE;
/*!40000 ALTER TABLE `oc_activity_mq` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_activity_mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbookchanges`
--

DROP TABLE IF EXISTS `oc_addressbookchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_addressbookchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT '1',
  `addressbookid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `addressbookid_synctoken` (`addressbookid`,`synctoken`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbookchanges`
--

LOCK TABLES `oc_addressbookchanges` WRITE;
/*!40000 ALTER TABLE `oc_addressbookchanges` DISABLE KEYS */;
INSERT INTO `oc_addressbookchanges` VALUES (1,'Database:user1.vcf',1,2,1),(2,'Database:user2.vcf',2,2,1),(3,'Database:user2.vcf',3,2,2),(4,'Database:user3.vcf',4,2,1),(5,'Database:user4.vcf',5,2,1),(6,'Database:user5.vcf',6,2,1),(7,'Database:user.vcf',7,2,1);
/*!40000 ALTER TABLE `oc_addressbookchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_addressbooks`
--

DROP TABLE IF EXISTS `oc_addressbooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_addressbooks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `addressbook_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_addressbooks`
--

LOCK TABLES `oc_addressbooks` WRITE;
/*!40000 ALTER TABLE `oc_addressbooks` DISABLE KEYS */;
INSERT INTO `oc_addressbooks` VALUES (1,'principals/users/user','Contacts','contacts',NULL,1),(2,'principals/system/system','system','system','System addressbook which holds all users of this instance',8),(3,'principals/users/user1','Contacts','contacts',NULL,1),(4,'principals/users/user2','Contacts','contacts',NULL,1),(5,'principals/users/user3','Contacts','contacts',NULL,1),(6,'principals/users/user4','Contacts','contacts',NULL,1),(7,'principals/users/user5','Contacts','contacts',NULL,1);
/*!40000 ALTER TABLE `oc_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_appconfig`
--

DROP TABLE IF EXISTS `oc_appconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_appconfig` (
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`),
  KEY `appconfig_appid_key` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_appconfig`
--

LOCK TABLES `oc_appconfig` WRITE;
/*!40000 ALTER TABLE `oc_appconfig` DISABLE KEYS */;
INSERT INTO `oc_appconfig` VALUES ('accessibility','enabled','yes'),('accessibility','installed_version','1.6.0'),('accessibility','types',''),('activity','enabled','yes'),('activity','installed_version','2.13.2'),('activity','types','filesystem'),('auto_mail_accounts','enabled','no'),('auto_mail_accounts','installed_version','0.1.7'),('auto_mail_accounts','types',''),('backgroundjob','lastjob','1'),('cloud_federation_api','enabled','yes'),('cloud_federation_api','installed_version','1.3.0'),('cloud_federation_api','types','filesystem'),('comments','enabled','yes'),('comments','installed_version','1.10.0'),('comments','types','logging'),('contactsinteraction','enabled','yes'),('contactsinteraction','installed_version','1.1.0'),('contactsinteraction','types','dav'),('core','backgroundjobs_mode','cron'),('core','installedat','1606574306.5738'),('core','lastcron','1606603163'),('core','lastupdatedat','1606574306.5788'),('core','public_files','files_sharing/public.php'),('core','public_webdav','dav/appinfo/v1/publicwebdav.php'),('core','theming.variables','d41d8cd98f00b204e9800998ecf8427e'),('core','vendor','nextcloud'),('dashboard','enabled','yes'),('dashboard','installed_version','7.0.0'),('dashboard','types',''),('dav','buildCalendarReminderIndex','yes'),('dav','buildCalendarSearchIndex','yes'),('dav','enabled','yes'),('dav','installed_version','1.16.0'),('dav','regeneratedBirthdayCalendarsForYearFix','yes'),('dav','types','filesystem'),('federatedfilesharing','enabled','yes'),('federatedfilesharing','installed_version','1.10.1'),('federatedfilesharing','types',''),('federation','enabled','yes'),('federation','installed_version','1.10.1'),('federation','types','authentication'),('files','cronjob_scan_files','500'),('files','enabled','yes'),('files','installed_version','1.15.0'),('files','types','filesystem'),('files_pdfviewer','enabled','yes'),('files_pdfviewer','installed_version','2.0.1'),('files_pdfviewer','types',''),('files_rightclick','enabled','yes'),('files_rightclick','installed_version','0.17.0'),('files_rightclick','types',''),('files_sharing','enabled','yes'),('files_sharing','installed_version','1.12.0'),('files_sharing','types','filesystem'),('files_trashbin','enabled','yes'),('files_trashbin','installed_version','1.10.1'),('files_trashbin','types','filesystem,dav'),('files_versions','enabled','yes'),('files_versions','installed_version','1.13.0'),('files_versions','types','filesystem,dav'),('files_videoplayer','enabled','yes'),('files_videoplayer','installed_version','1.9.0'),('files_videoplayer','types',''),('firstrunwizard','enabled','yes'),('firstrunwizard','installed_version','2.9.0'),('firstrunwizard','types','logging'),('logreader','enabled','yes'),('logreader','installed_version','2.5.0'),('logreader','types',''),('lookup_server_connector','enabled','yes'),('lookup_server_connector','installed_version','1.8.0'),('lookup_server_connector','types','authentication'),('mail','enabled','yes'),('mail','installed_version','1.7.0'),('mail','types',''),('nextcloud_announcements','enabled','yes'),('nextcloud_announcements','installed_version','1.9.0'),('nextcloud_announcements','pub_date','Thu, 24 Oct 2019 00:00:00 +0200'),('nextcloud_announcements','types','logging'),('notifications','enabled','yes'),('notifications','installed_version','2.8.0'),('notifications','types','logging'),('oauth2','enabled','yes'),('oauth2','installed_version','1.8.0'),('oauth2','types','authentication'),('password_policy','enabled','yes'),('password_policy','installed_version','1.10.1'),('password_policy','types','authentication'),('photos','enabled','yes'),('photos','installed_version','1.2.0'),('photos','types',''),('privacy','enabled','yes'),('privacy','installed_version','1.4.0'),('privacy','types',''),('provisioning_api','enabled','yes'),('provisioning_api','installed_version','1.10.0'),('provisioning_api','types','prevent_group_restriction'),('recommendations','enabled','yes'),('recommendations','installed_version','0.8.0'),('recommendations','types',''),('serverinfo','enabled','yes'),('serverinfo','installed_version','1.10.0'),('serverinfo','types',''),('settings','enabled','yes'),('settings','installed_version','1.2.0'),('settings','types',''),('sharebymail','enabled','yes'),('sharebymail','installed_version','1.10.0'),('sharebymail','types','filesystem'),('support','SwitchUpdaterServerHasRun','yes'),('support','enabled','yes'),('support','installed_version','1.3.0'),('support','types','session'),('survey_client','enabled','yes'),('survey_client','installed_version','1.8.0'),('survey_client','types',''),('systemtags','enabled','yes'),('systemtags','installed_version','1.10.0'),('systemtags','types','logging'),('text','enabled','yes'),('text','installed_version','3.1.0'),('text','types','dav'),('theming','enabled','no'),('theming','installed_version','1.11.0'),('theming','types','logging'),('twofactor_backupcodes','enabled','yes'),('twofactor_backupcodes','installed_version','1.9.0'),('twofactor_backupcodes','types',''),('user_status','enabled','yes'),('user_status','installed_version','1.0.0'),('user_status','types',''),('viewer','enabled','yes'),('viewer','installed_version','1.4.0'),('viewer','types',''),('weather_status','enabled','yes'),('weather_status','installed_version','1.0.0'),('weather_status','types',''),('workflowengine','enabled','yes'),('workflowengine','installed_version','2.2.0'),('workflowengine','types','filesystem');
/*!40000 ALTER TABLE `oc_appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_authtoken`
--

DROP TABLE IF EXISTS `oc_authtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_authtoken` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `login_name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `password` longtext COLLATE utf8mb4_bin,
  `name` longtext COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `remember` smallint(5) unsigned NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `last_check` int(10) unsigned NOT NULL DEFAULT '0',
  `scope` longtext COLLATE utf8mb4_bin,
  `expires` int(10) unsigned DEFAULT NULL,
  `private_key` longtext COLLATE utf8mb4_bin,
  `public_key` longtext COLLATE utf8mb4_bin,
  `version` smallint(5) unsigned NOT NULL DEFAULT '1',
  `password_invalid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `authtoken_token_index` (`token`),
  KEY `authtoken_last_activity_idx` (`last_activity`),
  KEY `authtoken_uid_index` (`uid`),
  KEY `authtoken_version_index` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_authtoken`
--

LOCK TABLES `oc_authtoken` WRITE;
/*!40000 ALTER TABLE `oc_authtoken` DISABLE KEYS */;
INSERT INTO `oc_authtoken` VALUES (9,'user','user','H/jjaKDmFfPpB5i5T9V9cB8skWEVKctQLBhyfHzDewr2HdlXVgFLtoRt+ssd/1B/fAIjnh8dWwrY3rzq0t0pgvMGrBRwjoOmIGZOJBhuYjgEObmY0cSQx/acTNxXlsB00cJkTsLLh2TWsUrPoWmOtg6UO2CmfSVt/5tTXyoHC7QsBpyb4TQ5o8Lr7CC7kk9d/PkhGkL0GKlGpO/NdeTbkAf4ni0oIx2fhw0Ask7pcDei6X8JrS7Ex7cHtj8O8H4j9QyaPfIjHwCYPrsddFame+S2PbCGGUUw6yOZKcM7dqwGc4iodva9Ebrn+KRZ6avauCYIKXiqrqs2tuh0/5A+ZQ==','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.185 YaBrowser/20.11.2.78 Yowser/2.5 Safari/537.36','d975f78c22edb3f3a67c5935c291f41d516d48c75b960dcd89968a2a9a4e7fc0b013785b17b61d8a87afc6985e6d3ebfdc3af72c2c1a8101de5ce7d389357f30',0,1,1606603347,1606603167,NULL,NULL,'9696bc6ba6dbf190fe8bf7a787204640ed2b4bb40d606782da8528fade4542daa35d3ffca6285985cb4586611852c64837adec2e5191509bfe4c8fc944263246fe7554f6bed846202560dd2aad728642c5972799e60d81daf9f292d9e3fd423d032b1dd9b586e9cf1374909b5b9ecd2b077d0e55ddd9b63160e299ba232c3063c4e5dfc3dd9755c10a65c304822a4606f978b8f13c4ec10fb524497233f86fdd3a5f557ab96f0b28ad4de45d8b07f7effe23a8baa0bf02b59da18da1d8704fb5cad8d25372ae51ad792368e8e65cf4a5052f0452df65de5d3d841e26566152c27c4fbe1bf4e17f29eaa64dece506caada56ed3e90eee3cbec573803a953a60570181906518f34d91376cde8b226f8acb1e0b3c85e2288101471f23c153d97278c456abcd1b5ef800a4e55bfc5d5ee94e9c29f21d572de45fbaa510dd417e191f9ab7ebf3351a8842f780e2255c0abce44fd8f54784722f4eb2efc1d659224c02f87041e5740c27c792d671ccc6a366b1998e0bf40eb2d98bea3fce9e06f237f59b96bb8139f0add59061293bdf389ef78a01017c63ffb7763f19526d4927110f53d124d8d1bdfeb8a6eb829ba38cf824275c594a971a6add1660f6a509f96166a861f92d7e61bc3591218e38e037d3fa061ed814a8eebe57696b8eceee4482b1df0b50298d4a1aca5b5eaaef057b59df0c124479ed967a360b6c1698adf799452e7b037e245f3f2a711303a4b540893d862b87755959d3075d237f7fcd828203c8976a337f1716a29e049b051edd87163296d8f67b613d8b2d4c32c9d0028c7038cc0aea608887983dd7fc31440687a69fa155300a262da6beceac14109dc27f0608156ba36dfcaf99c0be779deed89b6b003273d4d8f48b25e6ad1da2bbffe67935d17f751485200e9aa7066da1d7092e76e86022cdaccaddabdf3d89fabf88bf46a6e00d99fd39705b509796219e78cf69500bb793660803b6cc4f732108945f38b225558b58bdbb507dd9e5edca54e10fe76fd18770371bd5e5ca5f259da80d56cf0e88adca375c77e255a329f218863153856fe00866cc11dab845e0bd64042291218bacc31ee7978a25048476460f4e1d86d795ff8386e6a714ebcdb3522b4e62e5b1a7fac8f9e8a6695c3aec8ec27c179a85c45b4668cc5635a6efa27733157a722003f187b86440d922c8e638deb7963461e78aa223fb0028b0297fbf3cc2fdb1b27a6f06dfebbdeecb8bedc5917592a5d710fe9a035693b744ebd2e6f2be26febae548fed433751f2dd15b3d80b0207e82225490a20580797b9ed7f3241a9c02bab31eb11f5d9ee3947d7cc62499e8c568a3846ee5f481b239d1d78eb1089c6e0fdb9c7225fe7ce89e8c30f1faad2f0504d5cdce6cd9d9f7fa7fb8933d0ed5e4740587defd68a23386077325aa32578b9c43be1926fd3740e19cde49b5912b265f1b7ff3cc2163922f9c7caceaf18451f93fc734b82b44ad46bf75852a3fce278f48aab69328ac0bd413d81246402869c0c70119654e3edd385f092e31f1e8c29b28a52d8dd25a215f82622cc6ba8f43ad42897d3930c2119397dba046c7db64c18f5bd8f17a3c41a4a32255f48d01c7b76a93bac0f74083752a71e3a89758f657b0bb3c9c2acd9fc6d9d50e362ad13cb5f0f633a851361bcdbdcfb7085a306395503f9194452b9f279258586042539d8b6d6e30ba22c7acc7eebb5eb2a60c3b4e3ac12b33310f885579ab951b6abab86dfc54a336740f8c83e8f25e316a3716c30e86e46ee22cf598bb274bca6ec2f78af2078988011e27501505a8d0591895a25fc46ca1b3e84d39905001858231bdca91cc9b0b60f7f983a9807361db7effeb1ed6680cbcf62b7b3fcf608079601a28825f29a0e645ee28efd37894811bd07cb9675282a780e2645c8e53edb60f2bf1af30d6d8a12f491642f3665d32ec60bdd9c45a885e4561c14c513b1f56df3feb641c329b9a9a74488d4fd4c5cf04f6bb59faeb8dc1f4430c61f2ee2b06a955dca711656810d3eff245e4e8ce1da98fdd12ae3e1c06355f9d180a53e7749fbfd5439459b8324aeeb70ceeca38fc94aeb703cbe00c88d5a796fae0457db854b3409d34376ecdb1ef1304cb788a9a601543f76892e3d387a3be41b1e51a9ee9470169897b97e7d82a9932cc0f9d4282343cab70404d325c8147e4cd67e441c8edebe2f7229eb599c50295b19ac3a09f7c67a9de5694fffdc45471575896b6ac1e891d18f97e76d8d6f628bb55d1e12e864798824c253815bb7ed757bd50133d6cc25f413af44b250e58986fa838346ee96014e4d47c70677f23d68fc82367c22680a1379f15cde9fe51e89c9e2d8ede475c6d594ddc72c6c46c9ac45113149706d216fa7c614ab2b8481e9ae6321ee1ac2d2d10606be112874b6c0cdc|537f1184ed9003dde5ac51a97ec6a06c|2ba328a04e084d1fa75683426cbecac94135e84b04c5af8f8d37fcd6cebb0d881745c3f6f94592a841847399da02686734b778c17521ef62b951198df9b2001d|2','-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0iWWifj0gGEWMNtXFc9Q\nYw+kho0PxCKg0tapcwep3xwfZb9Ajm4kN2lR7ispCBAj+83wZ4bQuc+bsgjYuKjL\nfwDUMsJGKrv2wJDP+DQhcd7v4Yy9rcB5W1dsMQJyOF2fGCg5U+Dx7Bsr82Q1Xlj8\n1C4nA4yaIA5w2J9K5yWYA06LmnElAMcMRT9Wb1G/vjCsE9oAf5OLaL3zL80PnMa+\nHyrm2hDVlbmScvwjbZ7gyvqMP9H/X51ZAibS/JKLZH7mXV946ubnN+mzaJKEXCUt\ngrQHBHO5fe9dwrL37l7w2h+p5zp3hyGl5sKEI0zBYxxAVPOqtVuP+CW9Op4FksHb\n3QIDAQAB\n-----END PUBLIC KEY-----\n',2,0);
/*!40000 ALTER TABLE `oc_authtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_bruteforce_attempts`
--

DROP TABLE IF EXISTS `oc_bruteforce_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_bruteforce_attempts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `occurred` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `subnet` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `metadata` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `bruteforce_attempts_ip` (`ip`),
  KEY `bruteforce_attempts_subnet` (`subnet`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_bruteforce_attempts`
--

LOCK TABLES `oc_bruteforce_attempts` WRITE;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_bruteforce_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_invitations`
--

DROP TABLE IF EXISTS `oc_calendar_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrenceid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `attendee` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `organizer` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sequence` bigint(20) unsigned DEFAULT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_invitation_tokens` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_invitations`
--

LOCK TABLES `oc_calendar_invitations` WRITE;
/*!40000 ALTER TABLE `oc_calendar_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_reminders`
--

DROP TABLE IF EXISTS `oc_calendar_reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_reminders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendar_id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `is_recurring` smallint(6) NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `recurrence_id` bigint(20) unsigned DEFAULT NULL,
  `is_recurrence_exception` smallint(6) NOT NULL,
  `event_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `alarm_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_relative` smallint(6) NOT NULL,
  `notification_date` bigint(20) unsigned NOT NULL,
  `is_repeat_based` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_reminder_objid` (`object_id`),
  KEY `calendar_reminder_uidrec` (`uid`,`recurrence_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_reminders`
--

LOCK TABLES `oc_calendar_reminders` WRITE;
/*!40000 ALTER TABLE `oc_calendar_reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources`
--

DROP TABLE IF EXISTS `oc_calendar_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_resources_email` (`email`),
  KEY `calendar_resources_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources`
--

LOCK TABLES `oc_calendar_resources` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_resources_md`
--

DROP TABLE IF EXISTS `oc_calendar_resources_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_resources_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `resource_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_resources_md_idk` (`resource_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_resources_md`
--

LOCK TABLES `oc_calendar_resources_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_resources_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_resources_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms`
--

DROP TABLE IF EXISTS `oc_calendar_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `backend_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `group_restrictions` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_bkdrsc` (`backend_id`,`resource_id`),
  KEY `calendar_rooms_email` (`email`),
  KEY `calendar_rooms_name` (`displayname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms`
--

LOCK TABLES `oc_calendar_rooms` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendar_rooms_md`
--

DROP TABLE IF EXISTS `oc_calendar_rooms_md`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendar_rooms_md` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) unsigned NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `value` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calendar_rooms_md_idk` (`room_id`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendar_rooms_md`
--

LOCK TABLES `oc_calendar_rooms_md` WRITE;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendar_rooms_md` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarchanges`
--

DROP TABLE IF EXISTS `oc_calendarchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarchanges` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT '1',
  `calendarid` bigint(20) NOT NULL,
  `operation` smallint(6) NOT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `calid_type_synctoken` (`calendarid`,`calendartype`,`synctoken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarchanges`
--

LOCK TABLES `oc_calendarchanges` WRITE;
/*!40000 ALTER TABLE `oc_calendarchanges` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects`
--

DROP TABLE IF EXISTS `oc_calendarobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarid` bigint(20) unsigned NOT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `componenttype` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstoccurence` bigint(20) unsigned DEFAULT NULL,
  `lastoccurence` bigint(20) unsigned DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `classification` int(11) DEFAULT '0',
  `calendartype` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `calobjects_index` (`calendarid`,`calendartype`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects`
--

LOCK TABLES `oc_calendarobjects` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarobjects_props`
--

DROP TABLE IF EXISTS `oc_calendarobjects_props`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarobjects_props` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` bigint(20) NOT NULL DEFAULT '0',
  `objectid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parameter` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendartype` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `calendarobject_calid_index` (`calendarid`,`calendartype`),
  KEY `calendarobject_name_index` (`name`,`calendartype`),
  KEY `calendarobject_index` (`objectid`,`calendartype`),
  KEY `calendarobject_value_index` (`value`,`calendartype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarobjects_props`
--

LOCK TABLES `oc_calendarobjects_props` WRITE;
/*!40000 ALTER TABLE `oc_calendarobjects_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarobjects_props` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendars`
--

DROP TABLE IF EXISTS `oc_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT '1',
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timezone` longtext COLLATE utf8mb4_bin,
  `components` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `transparent` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `calendars_index` (`principaluri`,`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendars`
--

LOCK TABLES `oc_calendars` WRITE;
/*!40000 ALTER TABLE `oc_calendars` DISABLE KEYS */;
INSERT INTO `oc_calendars` VALUES (1,'principals/users/user','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0),(2,'principals/users/user','Contact birthdays','contact_birthdays',1,NULL,0,'#E9D859',NULL,'VEVENT',0),(3,'principals/system/system','Contact birthdays','contact_birthdays',1,NULL,0,'#E9D859',NULL,'VEVENT',0),(4,'principals/users/user1','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0),(5,'principals/users/user2','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0),(6,'principals/users/user3','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0),(7,'principals/users/user4','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0),(8,'principals/users/user5','Personal','personal',1,NULL,0,NULL,NULL,'VEVENT,VTODO',0);
/*!40000 ALTER TABLE `oc_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_calendarsubscriptions`
--

DROP TABLE IF EXISTS `oc_calendarsubscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_calendarsubscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `displayname` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `refreshrate` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendarorder` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `striptodos` smallint(6) DEFAULT NULL,
  `stripalarms` smallint(6) DEFAULT NULL,
  `stripattachments` smallint(6) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `synctoken` int(10) unsigned NOT NULL DEFAULT '1',
  `source` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `calsub_index` (`principaluri`,`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_calendarsubscriptions`
--

LOCK TABLES `oc_calendarsubscriptions` WRITE;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_calendarsubscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards`
--

DROP TABLE IF EXISTS `oc_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `carddata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` bigint(20) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cards_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards`
--

LOCK TABLES `oc_cards` WRITE;
/*!40000 ALTER TABLE `oc_cards` DISABLE KEYS */;
INSERT INTO `oc_cards` VALUES (1,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user1\r\nFN:user1\r\nN:user1;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzdd5Sdd33n8e8UzYxGM+rVVnGVLNsgW\r\n XZMcwwssYOB4EAwTnzihBLiJQlZ9gQ2HDaQ5ITd1KU4IcQQQt3ABoceHBeaY0xxt2y5SLZVrTZ\r\n qoxlNn9k/cHwAd88d/e59vq/XOT4S5/DH5w/Nnfu87+95btPyd313IgAAAIBKay49AAAAAJh6A\r\n gAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAA\r\n AJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgA\r\n AAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAAB\r\n AAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICA\r\n AAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAA\r\n kIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAA\r\n AAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEA\r\n CAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAA\r\n AAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQ\r\n gAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAA\r\n ABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAI\r\n CAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAA\r\n AAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCA\r\n AAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAA\r\n EACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgI\r\n AAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAA\r\n CQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAA\r\n AAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQ\r\n AICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgA\r\n AAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJ\r\n CAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAA\r\n AAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAA\r\n gIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAA\r\n AACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkI\r\n AAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAA\r\n AQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACA\r\n gAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAA\r\n AJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgA\r\n AAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAAB\r\n AAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICA\r\n AAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAA\r\n kIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAA\r\n AAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEA\r\n CAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAA\r\n AAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQ\r\n gAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAA\r\n ABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJNBaegAAZX3\r\n ld9bG8fM7S8+YlN/73D1x/cYDpWdAXZvZ0RI3/I/nlZ4xKR+9flv83Xe2lZ4B0LAEAIDkutpbY\r\n 9b0xv510NLcVHoC1L2mpqaG/1lvn+bwKsBkeBUFAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAA\r\n AAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACAB\r\n AQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAA\r\n AAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQ\r\n AAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAA\r\n AgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEB\r\n AAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAA\r\n ASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAA\r\n AAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAAC\r\n ABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEA\r\n AAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAAB\r\n IQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAA\r\n AAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIA\r\n EBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAA\r\n AAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEh\r\n AAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAA\r\n ACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQ\r\n EAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAA\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n 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\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n EhAAADg/7djBwIAAAAAgvytB7kwAgBgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQA\r\n AAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAA\r\n AAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAA\r\n AAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAA\r\n AAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAA\r\n AAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAA\r\n AAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAA\r\n AAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAA\r\n AGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAA\r\n DAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAB\r\n gQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAw\r\n IAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIA\r\n BAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAA\r\n wIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAY\r\n EAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMC\r\n AAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBA\r\n AAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgA\r\n AAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAA\r\n AAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAA\r\n AAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQA\r\n AAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAA\r\n AAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAA\r\n AAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAA\r\n AAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAA\r\n AMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAA\r\n GBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAAD\r\n AgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAg\r\n AEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAQSKWKoXOPm2sAAAAASUVORK5CYII=\r\nCLOUD:user1@192.168.0.104\r\nEND:VCARD\r\n','Database:user1.vcf',1606595483,'120c30eaffbca82e1a02e30a47909e6b',17462,'user1'),(2,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user2\r\nFN:user2\r\nN:user2;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzdeZTfdX3v8fdsmWSSycIkZCEbZCGsA\r\n RSQCC4IbkVaL1axWq222tZze261516vp7f3Wuutp97WHrXbudrWaltb3JeqFbcqGsAAIhAC2UP\r\n 2PZlJZvvNzP0D5boACcxv5jO/7/vxOMczRPnj5TmZme/3+fsuTcvf928jAQAAAFRac+kBAAAAw\r\n NgTAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n AAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAA\r\n SEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAA\r\n AAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACA\r\n BAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAA\r\n AAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAE\r\n BAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAA\r\n AASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhA\r\n AAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAggdbSAwA\r\n o65M3r4mzZ00tPWNU/suX7onbth8sPQMmtM721vjWG59fesaofPiuLfHXd24uPQOgYQkAAMlNa\r\n 2+N6ZPbSs8YlZamptITYMJrbmpq+O/19hYXrwKMhp+iAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAA\r\n JCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAA\r\n AAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJC\r\n AAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAA\r\n AAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAk\r\n IAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAA\r\n ACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIA\r\n AAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAA\r\n AAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQg\r\n AAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAA\r\n JCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAA\r\n AAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAA\r\n AkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAA\r\n AAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAk\r\n IAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAA\r\n AAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAAC\r\n QgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAA\r\n AAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQg\r\n AAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAA\r\n AAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJC\r\n AAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAA\r\n AkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAA\r\n 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\r\n ACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQ\r\n EAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAA\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n ID/144dCAAAAAAI8rce5MJoQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBA\r\n AAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgA\r\n AAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAA\r\n AAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAA\r\n AAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQA\r\n AAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAA\r\n AAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAA\r\n AAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAA\r\n AAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAA\r\n AMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAA\r\n GBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAAD\r\n AgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAg\r\n AEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAA\r\n DAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAAB\r\n gQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAw\r\n IAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYE\r\n AAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCA\r\n AAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAA\r\n AAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAA\r\n AAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBA\r\n AAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgA\r\n AAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAA\r\n AAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAA\r\n AABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAA\r\n AAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAA\r\n AYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAA\r\n MCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAC\r\n AAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAA\r\n AMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAa0JinU\r\n 3Za8JAAAAAElFTkSuQmCC\r\nCLOUD:user2@192.168.0.104\r\nEND:VCARD\r\n','Database:user2.vcf',1606595504,'6b1edd806aba23732e7fe34a6b2ed6db',17489,'user2'),(3,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user3\r\nFN:user3\r\nN:user3;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzdWZCdd33n4V/vLbVaau2rJVmyJdsyl\r\n g3YxhhiMA7BJCaBQEKSghBmUjNVk0oqye1czE3uJhepSTJTGTKTAlKBhAmQIgSbzWAD3vAqYUu\r\n yJVn71pvU+3LOXNi4AraxTZ/uf5/39zxVrsbCF18od/d5P+f/vqflvj/5s3oAAAAAldZaegAAA\r\n AAw/wQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQ\r\n EAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAA\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n EhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAA\r\n AAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAg\r\n AQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAA\r\n AAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAAS\r\n EAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAA\r\n AAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACAB\r\n AQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAA\r\n AAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQ\r\n AAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAA\r\n AgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEB\r\n AAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAA\r\n ASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAA\r\n AAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAAC\r\n ABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEA\r\n AAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAAB\r\n IQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAA\r\n AAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIA\r\n EBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAA\r\n AAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEh\r\n AAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAA\r\n ACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQ\r\n EAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAA\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n EhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAA\r\n AAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAg\r\n AQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAA\r\n AAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAAS\r\n EAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEigvfQ\r\n AAMra+0efiCVrV5WeMSfPfPqLMXTwSOkZsKi1dXfFjf/1v5SeMScnvv1AnPjm90vPAGhaAgBAc\r\n m1dndG+pLv0jDlpaXOgDV5LS0tL03+vt3Z46QowF14xAQAAQAICAAAAACQgAAAAAEACAgAAAAA\r\n kIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAA\r\n AAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEA\r\n CAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAA\r\n AAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQ\r\n gAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAA\r\n ABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAI\r\n CAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAA\r\n AAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCA\r\n AAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAA\r\n EACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgI\r\n AAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAA\r\n CQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAA\r\n AAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQ\r\n AICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgA\r\n AAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJ\r\n CAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAA\r\n AAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAA\r\n gIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAA\r\n AACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkI\r\n AAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAA\r\n AQAICAAAAACQgAAAAAEACAgAAAAAkIAAAAABAAgIAAAAAJCAAAAAAQAICAAAAACQgAAAAAEACA\r\n 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\r\n 5qO2sxMzE698Pcz4xMxOzEZtemZ+fy/AQBSEwAAgJd54UJ9JqZHxkpPAQAapMz5PgAAAGBBCQA\r\n AAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAk\r\n IAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAA\r\n AAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAAC\r\n QgAAAAAkIAAAAAAAAkIAAAAAJCAAAAAAAAJCAAAAACQgAAAAAAACQgAAAAAkIAAAAAA/P927EA\r\n AAAAAQJC/9SAXRsCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABA\r\n QAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwI\r\n AAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEA\r\n AAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAA\r\n AAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAA\r\n AAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n AgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAA\r\n AADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAA\r\n ABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAA\r\n AwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAA\r\n YEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAE\r\n BAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADA\r\n gAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAA\r\n AAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAA\r\n AAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAA\r\n AAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAA\r\n ACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAA\r\n AAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n BgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAA\r\n wIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgKrs8PiG0VcuQAAAABJRU5ErkJggg==\r\nCLOUD:user3@192.168.0.104\r\nEND:VCARD\r\n','Database:user3.vcf',1606595562,'763b19f448511f39bb7e0c37389d43aa',17695,'user3'),(4,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user4\r\nFN:user4\r\nN:user4;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzdeaz9eV3f8fdZ7r787v3ty/xmgVlgE\r\n LHCiCCtQGktBqUlErBFU6utprQ2mGpbjdQNFdvYxKb1j1a01i2gNVJXKiKCIsxEZJ1hGJj1ty9\r\n 3X87eP2YYWWaY5Z57P/d8349HMrmTXwh5QXJ/55zn+Xy/39pnbn/tIAAAAIBKq5ceAAAAAOw+A\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n AAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAA\r\n SEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAA\r\n AAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACA\r\n BAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAA\r\n AAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAE\r\n BAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAA\r\n AASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhA\r\n AAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n AAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAA\r\n SEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAA\r\n AAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACA\r\n BAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAA\r\n AAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEmiWHgBAWSe\r\n f9ZYYmzxZesaOXPzsf4mt1Y+WngH7Wr0xHaef+99Kz9iRlfPvjOXzv116BsDIEgAAkqs3pqPRn\r\n Ck9Y2dqjdILYATUR/53vVYfLz0BYKS5BAAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAE\r\n BAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAA\r\n AASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhA\r\n AAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n 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\r\n AAI8rce5MIIYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n AgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAA\r\n AADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAA\r\n ABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAA\r\n AwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAA\r\n YEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAE\r\n BAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADA\r\n gAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAA\r\n AAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAA\r\n AAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAA\r\n AAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAA\r\n ACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAA\r\n AAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n BgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAA\r\n wIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAY\r\n EAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMC\r\n AAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAA\r\n QEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAAGBAAAAAAMCAAAAAAYCDPZ3bPSDrS5wAAAABJRU5ErkJggg==\r\nCLOUD:user4@192.168.0.104\r\nEND:VCARD\r\n','Database:user4.vcf',1606595575,'7c19bf9105e19acd94b5eb67b6c31d21',17213,'user4'),(5,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user5\r\nFN:user5\r\nN:user5;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzd+Zfd9X3f8ffsizQjjdYRWkACgRYWs\r\n xkwGLzgBNu1szh23DQnaX9Iky6/9cf80v8h6Tk5TdM0J0mb1i2p99gxtsEGYzBYgJCE0IL2kUb\r\n LzGj2uTPTH0yobcCA58585n7fj8c5HM0Rv7zsg3Tv93k/3+9t+pMv/fF8AAAAAJXWXHoAAAAAs\r\n PgEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAA\r\n AAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAAS\r\n EAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAA\r\n AAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACAB\r\n AQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAA\r\n AAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQ\r\n AAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAA\r\n AgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEB\r\n AAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAA\r\n ASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAA\r\n AAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAAC\r\n ABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEA\r\n AAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAAB\r\n IQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAA\r\n AAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIA\r\n EBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAA\r\n AAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEh\r\n AAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAA\r\n ACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQ\r\n EAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAA\r\n ABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n EhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAA\r\n AAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAg\r\n AQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAA\r\n AAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAAS\r\n EAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAA\r\n AAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACAB\r\n AQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAA\r\n AAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQ\r\n AAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAA\r\n AgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEB\r\n AAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAA\r\n ASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAA\r\n AAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIoLX0AAD\r\n K+uwDfxirV64rPWNB/uG5/xmnBo+UngHLWntrZ/z+w/+h9IwFef7I9+O5I4+XngHQsAQAgOTaW\r\n jujo62r9IwFaW5yoA3eSVNTU8P/WW9t8dYVYCG8YwIAAIAEBAAAAABIQAAAAACABAQAAAAASEA\r\n AAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAA\r\n IAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQ\r\n AAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAA\r\n EhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAA\r\n AAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAg\r\n AQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAA\r\n AAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAAS\r\n EAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAA\r\n AAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACAB\r\n AQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAA\r\n AAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQ\r\n AAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAA\r\n AgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEB\r\n AAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAA\r\n ASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAA\r\n AAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAAC\r\n ABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEA\r\n AAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAAB\r\n IQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAA\r\n AAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIA\r\n EBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAA\r\n 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\r\n 5qjuak5mpqbX/+5JZqbW37ye01NERExPz8fc/NzMT8/H/Ov/zo7X4vZ2VrUZmdiZnYmZudqUZu\r\n djtrszBsX/bXZmcX8vwEAUhMAAIA3qc3ORG12Jiamx0pPAQDqxNOCAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAAOD/tWMHAgAAAACC/K0HuTAaEAAAAAAwIAAAA\r\n ABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAA\r\n AwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAA\r\n IABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAA\r\n AAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAA\r\n AYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAA\r\n MCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAG\r\n BAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADA\r\n gAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABA\r\n QAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwI\r\n AAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEA\r\n AAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAA\r\n AAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAA\r\n AAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n AgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAA\r\n AADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAA\r\n ABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAA\r\n AwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAA\r\n YEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAE\r\n BAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADA\r\n gAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAA\r\n AAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAA\r\n AAAYEAAAAAAwIAAAAAAgAEBAAAAAAMBy7TXjbiQ7swAAAAASUVORK5CYII=\r\nCLOUD:user5@192.168.0.104\r\nEND:VCARD\r\n','Database:user5.vcf',1606595589,'8be5035dc84023a29cd2e7b563936b67',17758,'user5'),(6,2,_binary 'BEGIN:VCARD\r\nVERSION:3.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:user\r\nFN:user\r\nN:user;;;;\r\nPHOTO;ENCODING=b;TYPE=image/png:iVBORw0KGgoAAAANSUhEUgAABAAAAAQACAYAAAB/HSu\r\n DAAAACXBIWXMAAA7EAAAOxAGVKw4bAAAgAElEQVR4nOzdeaz9eV3f8fdZ7r787v3ty/xmgVlgE\r\n LHCiCCtQGktBqUlErBFU6utprQ2mGpbjdQNFdvYxKb1j1a01i2gNVJXKiKCIsxEZJ1hGJj1ty9\r\n 3X87eP2YYWWaY5Z57P/d8349HMrmTXwh5QXJ/55zn+Xy/39pnbn/tIAAAAIBKq5ceAAAAAOw+A\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n AAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAA\r\n SEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAA\r\n AAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACA\r\n BAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAA\r\n AAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAE\r\n BAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAA\r\n AASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhA\r\n AAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n AAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAA\r\n SEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAA\r\n AAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACA\r\n BAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAA\r\n AAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEmiWHgBAWSe\r\n f9ZYYmzxZesaOXPzsf4mt1Y+WngH7Wr0xHaef+99Kz9iRlfPvjOXzv116BsDIEgAAkqs3pqPRn\r\n Ck9Y2dqjdILYATUR/53vVYfLz0BYKS5BAAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABI\r\n QAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAA\r\n AAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAE\r\n BAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAA\r\n AASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhA\r\n AAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAA\r\n CABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQE\r\n AAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAA\r\n BIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAA\r\n AAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAI\r\n AEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQA\r\n AAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAE\r\n hAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAA\r\n AACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgA\r\n QEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAA\r\n AABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASE\r\n AAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAA\r\n AIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABA\r\n QAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAA\r\n AEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQA\r\n AAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAA\r\n gAQEAAAAAEhAAAAAAIAEBAAAAABIQAAAAACABAQAAAAASEAAAAAAgAQEAAAAAEhAAAAAAIAEBA\r\n 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\r\n AAI8rce5MIIYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n AgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAA\r\n AADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAA\r\n ABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAA\r\n AwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAA\r\n YEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAE\r\n BAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADA\r\n gAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQ\r\n AAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIA\r\n AAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAA\r\n AAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAA\r\n AAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAA\r\n AAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAA\r\n ACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAA\r\n AAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAA\r\n AAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAA\r\n ADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAA\r\n BgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAA\r\n wIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAY\r\n EAAAAAAwIAAAAAAgAEBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMC\r\n AAAAAAIABAQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAA\r\n QEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAYEAAAAAAwIAAAAAAgAEBAAAAAAM\r\n CAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAAGBAAAAAAMCAAAAAAIABAQAAAAADAgAAAAAGB\r\n AAAAAAMCAAAAAAYEAAAAAAwIAAAAABgQAAAAADAgAAAAACAAQEAAAAAAwIAAAAABgQAAAAADAg\r\n AAAAAGBAAAAAAMCAAAAAAYCDPZ3bPSDrS5wAAAABJRU5ErkJggg==\r\nCLOUD:user@192.168.0.104\r\nEND:VCARD\r\n','Database:user.vcf',1606602825,'40db6a33a83cebad265cd45fcf064f1f',17209,'user');
/*!40000 ALTER TABLE `oc_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_cards_properties`
--

DROP TABLE IF EXISTS `oc_cards_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_cards_properties` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` bigint(20) NOT NULL DEFAULT '0',
  `cardid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `card_contactid_index` (`cardid`),
  KEY `card_name_index` (`name`),
  KEY `card_value_index` (`value`),
  KEY `cards_prop_abid` (`addressbookid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_cards_properties`
--

LOCK TABLES `oc_cards_properties` WRITE;
/*!40000 ALTER TABLE `oc_cards_properties` DISABLE KEYS */;
INSERT INTO `oc_cards_properties` VALUES (1,2,1,'UID','user1',0),(2,2,1,'FN','user1',0),(3,2,1,'N','user1;;;;',0),(4,2,1,'CLOUD','user1@192.168.0.104',0),(9,2,2,'UID','user2',0),(10,2,2,'FN','user2',0),(11,2,2,'N','user2;;;;',0),(12,2,2,'CLOUD','user2@192.168.0.104',0),(13,2,3,'UID','user3',0),(14,2,3,'FN','user3',0),(15,2,3,'N','user3;;;;',0),(16,2,3,'CLOUD','user3@192.168.0.104',0),(17,2,4,'UID','user4',0),(18,2,4,'FN','user4',0),(19,2,4,'N','user4;;;;',0),(20,2,4,'CLOUD','user4@192.168.0.104',0),(21,2,5,'UID','user5',0),(22,2,5,'FN','user5',0),(23,2,5,'N','user5;;;;',0),(24,2,5,'CLOUD','user5@192.168.0.104',0),(25,2,6,'UID','user',0),(26,2,6,'FN','user',0),(27,2,6,'N','user;;;;',0),(28,2,6,'CLOUD','user@192.168.0.104',0);
/*!40000 ALTER TABLE `oc_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_accesscache`
--

DROP TABLE IF EXISTS `oc_collres_accesscache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_accesscache` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `collection_id` bigint(20) DEFAULT '0',
  `resource_type` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `resource_id` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `collres_unique_user` (`user_id`,`collection_id`,`resource_type`,`resource_id`),
  KEY `collres_user_res` (`user_id`,`resource_type`,`resource_id`),
  KEY `collres_user_coll` (`user_id`,`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_accesscache`
--

LOCK TABLES `oc_collres_accesscache` WRITE;
/*!40000 ALTER TABLE `oc_collres_accesscache` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_accesscache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_collections`
--

DROP TABLE IF EXISTS `oc_collres_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_collections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_collections`
--

LOCK TABLES `oc_collres_collections` WRITE;
/*!40000 ALTER TABLE `oc_collres_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_collres_resources`
--

DROP TABLE IF EXISTS `oc_collres_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_collres_resources` (
  `collection_id` bigint(20) NOT NULL,
  `resource_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `resource_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  UNIQUE KEY `collres_unique_res` (`collection_id`,`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_collres_resources`
--

LOCK TABLES `oc_collres_resources` WRITE;
/*!40000 ALTER TABLE `oc_collres_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_collres_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments`
--

DROP TABLE IF EXISTS `oc_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `topmost_parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `children_count` int(10) unsigned NOT NULL DEFAULT '0',
  `actor_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `actor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_bin,
  `verb` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_timestamp` datetime DEFAULT NULL,
  `latest_child_timestamp` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `reference_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_parent_id_index` (`parent_id`),
  KEY `comments_topmost_parent_id_idx` (`topmost_parent_id`),
  KEY `comments_object_index` (`object_type`,`object_id`,`creation_timestamp`),
  KEY `comments_actor_index` (`actor_type`,`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments`
--

LOCK TABLES `oc_comments` WRITE;
/*!40000 ALTER TABLE `oc_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_comments_read_markers`
--

DROP TABLE IF EXISTS `oc_comments_read_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_comments_read_markers` (
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `marker_datetime` datetime DEFAULT NULL,
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  UNIQUE KEY `comments_marker_index` (`user_id`,`object_type`,`object_id`),
  KEY `comments_marker_object_index` (`object_type`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_comments_read_markers`
--

LOCK TABLES `oc_comments_read_markers` WRITE;
/*!40000 ALTER TABLE `oc_comments_read_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_comments_read_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_credentials`
--

DROP TABLE IF EXISTS `oc_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_credentials` (
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `credentials` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`user`,`identifier`),
  KEY `credentials_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_credentials`
--

LOCK TABLES `oc_credentials` WRITE;
/*!40000 ALTER TABLE `oc_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_cal_proxy`
--

DROP TABLE IF EXISTS `oc_dav_cal_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_dav_cal_proxy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `proxy_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `permissions` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_cal_proxy_uidx` (`owner_id`,`proxy_id`,`permissions`),
  KEY `dav_cal_proxy_ioid` (`owner_id`),
  KEY `dav_cal_proxy_ipid` (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_cal_proxy`
--

LOCK TABLES `oc_dav_cal_proxy` WRITE;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_cal_proxy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_dav_shares`
--

DROP TABLE IF EXISTS `oc_dav_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_dav_shares` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `access` smallint(6) DEFAULT NULL,
  `resourceid` bigint(20) unsigned NOT NULL,
  `publicuri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dav_shares_index` (`principaluri`,`resourceid`,`type`,`publicuri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_dav_shares`
--

LOCK TABLES `oc_dav_shares` WRITE;
/*!40000 ALTER TABLE `oc_dav_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_dav_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_direct_edit`
--

DROP TABLE IF EXISTS `oc_direct_edit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_direct_edit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `editor_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `share_id` bigint(20) DEFAULT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `accessed` tinyint(1) NOT NULL DEFAULT '0',
  `file_path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D5AFECA5F37A13B` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_direct_edit`
--

LOCK TABLES `oc_direct_edit` WRITE;
/*!40000 ALTER TABLE `oc_direct_edit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_direct_edit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_directlink`
--

DROP TABLE IF EXISTS `oc_directlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_directlink` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_id` bigint(20) unsigned NOT NULL,
  `token` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `expiration` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `directlink_token_idx` (`token`),
  KEY `directlink_expiration_idx` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_directlink`
--

LOCK TABLES `oc_directlink` WRITE;
/*!40000 ALTER TABLE `oc_directlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_directlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_federated_reshares`
--

DROP TABLE IF EXISTS `oc_federated_reshares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_federated_reshares` (
  `share_id` int(11) NOT NULL,
  `remote_id` int(11) NOT NULL,
  UNIQUE KEY `share_id_index` (`share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_federated_reshares`
--

LOCK TABLES `oc_federated_reshares` WRITE;
/*!40000 ALTER TABLE `oc_federated_reshares` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_federated_reshares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_file_locks`
--

DROP TABLE IF EXISTS `oc_file_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_file_locks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lock` int(11) NOT NULL DEFAULT '0',
  `key` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `ttl` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lock_key_index` (`key`),
  KEY `lock_ttl_index` (`ttl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_file_locks`
--

LOCK TABLES `oc_file_locks` WRITE;
/*!40000 ALTER TABLE `oc_file_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_file_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache`
--

DROP TABLE IF EXISTS `oc_filecache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filecache` (
  `fileid` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage` bigint(20) NOT NULL DEFAULT '0',
  `path` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `path_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `parent` bigint(20) NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8mb4_bin DEFAULT NULL,
  `mimetype` bigint(20) NOT NULL DEFAULT '0',
  `mimepart` bigint(20) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` bigint(20) NOT NULL DEFAULT '0',
  `storage_mtime` bigint(20) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` int(11) DEFAULT '0',
  `checksum` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`),
  KEY `fs_storage_size` (`storage`,`size`,`fileid`),
  KEY `fs_mtime` (`mtime`)
) ENGINE=InnoDB AUTO_INCREMENT=672 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache`
--

LOCK TABLES `oc_filecache` WRITE;
/*!40000 ALTER TABLE `oc_filecache` DISABLE KEYS */;
INSERT INTO `oc_filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608274,1606589486,1606589485,0,0,'5fc29c2e7c90e',23,''),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,0,1606589486,1606589486,0,0,'5fc29c2e7c90e',31,''),(3,1,'files_trashbin/files/Documents.d1606589485','c1154cbf2de56762315fa4db89ef1d2e',180,'Documents.d1606589485',2,1,400389,1606574338,1606574338,0,0,'5fc261029eb3a',31,''),(4,1,'files_trashbin/files/Documents.d1606589485/Example.md','358efe14da2feb2ed01e735038d47ced',3,'Example.md',4,3,1095,1606574338,1606574338,0,0,'fd29fb16429ee26ad62348bab638f2bd',27,''),(5,1,'files_trashbin/files/Documents.d1606589485/Nextcloud flyer.pdf','3301ce439266786a8fd1748de2cd6b2d',3,'Nextcloud flyer.pdf',6,5,374008,1606574338,1606574338,0,0,'cadabdea09a1830869e85c2eed51e297',27,''),(6,1,'files_trashbin/files/Documents.d1606589485/Readme.md','7755e78a49bf03f6ba3bb9faf9ce35b8',3,'Readme.md',4,3,136,1606574338,1606574338,0,0,'246538e86a25925519b0dcffe30218f9',27,''),(7,1,'files_trashbin/files/Documents.d1606589485/Welcome to Nextcloud Hub.docx','3d261476fc05ecf2e4c410280e9537e8',3,'Welcome to Nextcloud Hub.docx',7,5,25150,1606574338,1606574338,0,0,'770e994972075a35c117c2c4b5ffaead',27,''),(8,1,'files_trashbin/files/Nextcloud Manual.pdf.d1606589486','562b6c4d010fbb2aa932ac9050777f2d',180,'Nextcloud Manual.pdf.d1606589486',6,5,5745866,1606574339,1606574339,0,0,'ff01baa765cb1f89eb39111ba7f607ac',27,''),(9,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1606574339,1606574339,0,0,'5fc26103793ce',23,''),(10,2,'appdata_ocvfgh430ow8','690a1b9e12a1d27528730f0f7bb1b3f0',9,'appdata_ocvfgh430ow8',2,1,0,1606602858,1606602858,0,0,'5fc2610378feb',31,''),(11,2,'appdata_ocvfgh430ow8/text','9bde50e223e76fcd345e8c1ef4b82653',10,'text',2,1,0,1606574339,1606574339,0,0,'5fc26103852f2',31,''),(12,2,'appdata_ocvfgh430ow8/text/documents','14e99d59e0e21a63a299c220d3d32149',11,'documents',2,1,0,1606589491,1606589491,0,0,'5fc261038b0c2',31,''),(13,1,'files_trashbin/files/Nextcloud intro.mp4.d1606589485','525c85f341dc542cc79c9fa7e26b2b96',180,'Nextcloud intro.mp4.d1606589485',9,8,3963036,1606574340,1606574340,0,0,'82f045785d12bb12f4b21e857ad9f9d4',27,''),(14,1,'files_trashbin/files/Nextcloud.png.d1606589485','e2137a2805eb8633bf8b9e7921959de8',180,'Nextcloud.png.d1606589485',11,10,50598,1606574340,1606574340,0,0,'3a8637089f66daca70bc9ca32df5ec83',27,''),(15,1,'files_trashbin/files/Photos.d1606589485','bcb2f5b400a33b23ddb2f5821cceaf9f',180,'Photos.d1606589485',2,1,5656463,1606574341,1606574341,0,0,'5fc261058d39f',31,''),(16,1,'files_trashbin/files/Photos.d1606589485/Birdie.jpg','350d64b55f1618b6660eb2a5bf64e64e',15,'Birdie.jpg',12,10,593508,1606574340,1606574340,0,0,'fc812abcc6edeb19c1e1798333e15e76',27,''),(17,1,'files_trashbin/files/Photos.d1606589485/Frog.jpg','450de5d90381ba68a66dfcccdf3282ba',15,'Frog.jpg',12,10,457744,1606574340,1606574340,0,0,'e1b0bee3398837b5b497e4fd231cda50',27,''),(18,1,'files_trashbin/files/Photos.d1606589485/Gorilla.jpg','c2ab6d86d8cdff44492c636a47bbb419',15,'Gorilla.jpg',12,10,474653,1606574340,1606574340,0,0,'3f51b87d72fd4006e6b6e91321c24ca6',27,''),(19,1,'files_trashbin/files/Photos.d1606589485/Library.jpg','e41a0dfe4b6db8d574fb6220cc5cefb9',15,'Library.jpg',12,10,2170375,1606574341,1606574341,0,0,'0b07331b03f48c30d3cd8d266fd12488',27,''),(20,1,'files_trashbin/files/Photos.d1606589485/Nextcloud community.jpg','ca98e15099ee0c99925dfd4c262adb5a',15,'Nextcloud community.jpg',12,10,797325,1606574341,1606574341,0,0,'cac5c2d5069cb316e57fa0a7039480d4',27,''),(21,1,'files_trashbin/files/Photos.d1606589485/Readme.md','b7a608d5c3a32fb4a730a4690f805450',15,'Readme.md',4,3,150,1606574341,1606574341,0,0,'9c2f5f87f2031eb98a28e3f637add03d',27,''),(22,1,'files_trashbin/files/Photos.d1606589485/Steps.jpg','5f98e8a5445e6baba434685478a94400',15,'Steps.jpg',12,10,567689,1606574341,1606574341,0,0,'1f10daedd441ac399272e960e7dd5ad8',27,''),(23,1,'files_trashbin/files/Photos.d1606589485/Toucan.jpg','e9adf89437ccad44f5c541bb91afd33c',15,'Toucan.jpg',12,10,167989,1606574341,1606574341,0,0,'b838d6d95b967da79a8eadbf8df11663',27,''),(24,1,'files_trashbin/files/Photos.d1606589485/Vineyard.jpg','475a20282e25b09a23039680790935d7',15,'Vineyard.jpg',12,10,427030,1606574341,1606574341,0,0,'bf76a98c52f7edc68193a3f222a0074d',27,''),(25,1,'files_trashbin/files/Reasons to use Nextcloud.pdf.d1606589486','60d60a50633be10b20ad37fe0012a816',180,'Reasons to use Nextcloud.pdf.d1606589486',6,5,791921,1606574341,1606574341,0,0,'1098b721b78229ed95fa0cdb3e6f4624',27,''),(26,2,'appdata_ocvfgh430ow8/preview','ad284adaef55750171d72072bc506221',10,'preview',2,1,0,1606574359,1606574359,0,0,'5fc261175c7b4',31,''),(27,2,'appdata_ocvfgh430ow8/js','f0ec18979dd1664e11546a05353f6fa9',10,'js',2,1,0,1606580217,1606580217,0,0,'5fc264e8c0b88',31,''),(28,2,'appdata_ocvfgh430ow8/js/core','02668c1bc9b84e5dd0f6eb69af84d305',27,'core',2,1,0,1606594333,1606594333,0,0,'5fc264e8c50a6',31,''),(32,2,'appdata_ocvfgh430ow8/css','92d3af716df7f35088b71155e907e461',10,'css',2,1,0,1606602700,1606602700,0,0,'5fc264e97db65',31,''),(33,2,'appdata_ocvfgh430ow8/css/icons','b60264e66f329f4a750c09e0e1994f8c',32,'icons',2,1,0,1606594334,1606594334,0,0,'5fc264e988112',31,''),(34,2,'appdata_ocvfgh430ow8/css/core','d676fdc60af4b93f5229e6bb5f97742e',32,'core',2,1,0,1606594334,1606594334,0,0,'5fc264ea1c747',31,''),(51,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1606575404,1606575404,0,0,'5fc2652ceacbc',31,''),(52,2,'appdata_ocvfgh430ow8/dashboard','ded231debd2e7cdffb33066a09db7caa',10,'dashboard',2,1,0,1606600698,1606600698,0,0,'5fc2652d41a02',31,''),(53,2,'appdata_ocvfgh430ow8/dashboard/user','b32066a42321c8d9bafc33689ecce695',52,'user',2,1,0,1606575405,1606575405,0,0,'5fc2652d45a7b',31,''),(54,2,'appdata_ocvfgh430ow8/avatar','701b94cbf8ff19dae789b93e01e3daa8',10,'avatar',2,1,0,1606595589,1606595589,0,0,'5fc2652d76c22',31,''),(55,2,'appdata_ocvfgh430ow8/avatar/user','6efdbfa8f31bfe51dd9b643ca7881dea',54,'user',2,1,0,1606602826,1606602826,0,0,'5fc2652d7c363',31,''),(56,2,'appdata_ocvfgh430ow8/js/activity','9dad76dbe0af542616ddee74b29214ff',27,'activity',2,1,0,1606594333,1606594333,0,0,'5fc2652d86108',31,''),(66,2,'appdata_ocvfgh430ow8/css/notifications','1ef0958f40ba59eb79149669b75b3035',32,'notifications',2,1,0,1606594334,1606594334,0,0,'5fc2652e682fe',31,''),(70,2,'appdata_ocvfgh430ow8/css/dashboard','30d3d0f92cb4f3cf6974ff69b0531ae0',32,'dashboard',2,1,0,1606594335,1606594335,0,0,'5fc2652e80938',31,''),(74,2,'appdata_ocvfgh430ow8/css/activity','2765a87f6198f8f2a96ecd5ec6c9b637',32,'activity',2,1,0,1606597359,1606597359,0,0,'5fc2652e9b1de',31,''),(78,2,'appdata_ocvfgh430ow8/css/text','1b740cb557d6921fda408eb93bbf6935',32,'text',2,1,0,1606594335,1606594335,0,0,'5fc2652eb4efe',31,''),(82,2,'appdata_ocvfgh430ow8/css/user_status','4b8471ca002096784577d168fc95c52c',32,'user_status',2,1,0,1606594335,1606594335,0,0,'5fc2652ed8668',31,''),(86,2,'appdata_ocvfgh430ow8/preview/1','b56f3385d078edef1b4d06999c552244',26,'1',2,1,0,1606575414,1606575414,0,0,'5fc265362101f',31,''),(87,2,'appdata_ocvfgh430ow8/preview/1/f','fb65d0cd055c3495582ba074dcdbd093',86,'f',2,1,0,1606575416,1606575416,0,0,'5fc265cd16db8',31,''),(88,2,'appdata_ocvfgh430ow8/preview/1/f/0','0da07cfb7223e51e4cdfcca9bcc85ad9',87,'0',2,1,0,1606575414,1606575414,0,0,'5fc265361fec4',31,''),(89,2,'appdata_ocvfgh430ow8/preview/1/f/0/e','ba8a7cb31e92cc810f9d32445e33bd5d',88,'e',2,1,0,1606575414,1606575414,0,0,'5fc265361fbf5',31,''),(90,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3','600bf357ecf8ad279bf8cf650e17799a',89,'3',2,1,0,1606575414,1606575414,0,0,'5fc265361f8a0',31,''),(91,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3/d','6c86a4ee855e9f78b15a17aff9e5492e',90,'d',2,1,0,1606575414,1606575414,0,0,'5fc265361f3da',31,''),(92,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3/d/a','882b235607ba388d36e59ec2cb9c828f',91,'a',2,1,0,1606575414,1606575414,0,0,'5fc265361e60a',31,''),(93,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3/d/a/19','580359a03486276dcf3a931f42e047dd',92,'19',2,1,0,1606575416,1606575416,0,0,'5fc265361d9dc',31,''),(94,2,'appdata_ocvfgh430ow8/preview/9','98b081f0420600b7377986ee87b29374',26,'9',2,1,0,1606575414,1606575414,0,0,'5fc2653640827',31,''),(95,2,'appdata_ocvfgh430ow8/preview/9/8','d832cdf5ccd02c8c68230dbf988e142f',94,'8',2,1,0,1606575414,1606575414,0,0,'5fc265363ef2b',31,''),(96,2,'appdata_ocvfgh430ow8/preview/9/8/f','cb54b926ec012a327fdf65944afd274e',95,'f',2,1,0,1606575414,1606575414,0,0,'5fc265363ea95',31,''),(97,2,'appdata_ocvfgh430ow8/preview/9/8/f/1','260ec66c211c08d5d6a7b89275b675d6',96,'1',2,1,0,1606575414,1606575414,0,0,'5fc265363e250',31,''),(98,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3','4b33ecd78177bee38cd5edafe21463c4',97,'3',2,1,0,1606575414,1606575414,0,0,'5fc265363de3a',31,''),(99,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3/7','9353a95fb6f24d71504876f50a08e6ba',98,'7',2,1,0,1606575414,1606575414,0,0,'5fc265363c3e4',31,''),(100,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3/7/0','2e9cc9b86a3b7ef4bd24ef4eab582907',99,'0',2,1,0,1606575414,1606575414,0,0,'5fc265363bfb5',31,''),(101,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3/7/0/20','4913973dd96a8464776a448308a63022',100,'20',2,1,0,1606575418,1606575418,0,0,'5fc265363ba03',31,''),(102,2,'appdata_ocvfgh430ow8/preview/3','53a9f81a32f4eef88ee5dfc7146ec2e2',26,'3',2,1,0,1606575415,1606575415,0,0,'5fc265cce1523',31,''),(103,2,'appdata_ocvfgh430ow8/preview/3/c','448f816fc1382a8dbe11dc5d255edc1f',102,'c',2,1,0,1606575414,1606575414,0,0,'5fc265366edd2',31,''),(104,2,'appdata_ocvfgh430ow8/preview/3/c/5','9fe27d33c369ef5003c64ec68926de42',103,'5',2,1,0,1606575414,1606575414,0,0,'5fc265366e538',31,''),(105,2,'appdata_ocvfgh430ow8/preview/3/c/5/9','ec83403dc18973d2f1ca1cd4c569e61e',104,'9',2,1,0,1606575414,1606575414,0,0,'5fc265366d1ac',31,''),(106,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d','dc2eb20147a2694350da186a29d332ef',105,'d',2,1,0,1606575414,1606575414,0,0,'5fc265366ce2a',31,''),(107,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d/c','c6e1899c8c96fa0ff40b61f712937288',106,'c',2,1,0,1606575414,1606575414,0,0,'5fc265366c6c2',31,''),(108,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d/c/0','140914fdab409601a76f611ebf1affa2',107,'0',2,1,0,1606575414,1606575414,0,0,'5fc2653669992',31,''),(109,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d/c/0/21','a85a9149a029979cc2fb834463d56b70',108,'21',2,1,0,1606575418,1606575418,0,0,'5fc2653668b24',31,''),(110,2,'appdata_ocvfgh430ow8/preview/b','69f307ad1ae2c5923af1d0583966dd75',26,'b',2,1,0,1606575414,1606575414,0,0,'5fc26536c1e2f',31,''),(111,2,'appdata_ocvfgh430ow8/preview/b/6','ec31fc61e06199bc6233765ad1248879',110,'6',2,1,0,1606575414,1606575414,0,0,'5fc26536c1a7b',31,''),(112,2,'appdata_ocvfgh430ow8/preview/b/6/d','f968551efffbddef1d354a93545a8f41',111,'d',2,1,0,1606575414,1606575414,0,0,'5fc26536c1633',31,''),(113,2,'appdata_ocvfgh430ow8/preview/b/6/d/7','e7b36a04b9bca9a755bc95167901f0cf',112,'7',2,1,0,1606575414,1606575414,0,0,'5fc26536bf71e',31,''),(114,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6','f3e0ea25dcc025d687e6a995ecc76823',113,'6',2,1,0,1606575414,1606575414,0,0,'5fc26536bdc3e',31,''),(115,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6/7','58e7b4a7430ec7374276135a7c399e9d',114,'7',2,1,0,1606575414,1606575414,0,0,'5fc26536bba49',31,''),(116,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6/7/d','e1d98e878afdfcbbe23633a45787453a',115,'d',2,1,0,1606575414,1606575414,0,0,'5fc26536ba7f6',31,''),(117,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6/7/d/22','713aec7572a8c6b5fa5d5be7ec656735',116,'22',2,1,0,1606575416,1606575416,0,0,'5fc26536b8a01',31,''),(118,2,'appdata_ocvfgh430ow8/preview/3/7','fe7a7013cb21dc8fd1d5377b249ab737',102,'7',2,1,0,1606575415,1606575415,0,0,'5fc265376d5d1',31,''),(119,2,'appdata_ocvfgh430ow8/preview/3/7/6','c9f2404d7dc1a5abe24d97cc8b0501b6',118,'6',2,1,0,1606575415,1606575415,0,0,'5fc265376bf84',31,''),(120,2,'appdata_ocvfgh430ow8/preview/3/7/6/9','ad1521b963700f6abe7bebdc9f878b5d',119,'9',2,1,0,1606575415,1606575415,0,0,'5fc265376b81c',31,''),(121,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3','334a86725d565eae6446845c0e20df41',120,'3',2,1,0,1606575415,1606575415,0,0,'5fc265376a0e5',31,''),(122,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3/c','b0d5ca38eb2d16f28df473fb64b5bf35',121,'c',2,1,0,1606575415,1606575415,0,0,'5fc2653769ce6',31,''),(123,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3/c/f','fea27d8b867200ea2568b97f8dfaad78',122,'f',2,1,0,1606575415,1606575415,0,0,'5fc2653769914',31,''),(124,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3/c/f/23','f33b1b0bd6a22a8e778db3e9978bf674',123,'23',2,1,0,1606575416,1606575416,0,0,'5fc2653766162',31,''),(125,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6/7/d/22/1200-1800-max.jpg','27c3a3e9bbcf6092f12a2a9529e4451a',117,'1200-1800-max.jpg',12,10,425594,1606575415,1606575415,0,0,'97fb58e02197b116b62029e1eee87d7b',27,''),(126,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3/c/f/23/1600-1067-max.jpg','480aa475cca4b6fac5d2300ac2f800a3',124,'1600-1067-max.jpg',12,10,231870,1606575415,1606575415,0,0,'8af9e51e6d5ae2a2964465e466880a53',27,''),(127,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3/d/a/19/1600-1066-max.jpg','d99f353f8570b7454ff93a16d9cc5e42',93,'1600-1066-max.jpg',12,10,533329,1606575415,1606575415,0,0,'52fe6cc772c3d5460e42a50ce2f2c032',27,''),(128,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3/7/0/20/3000-2000-max.jpg','64c69e787797ab1466b43ffdf4d29179',101,'3000-2000-max.jpg',12,10,1203830,1606575416,1606575416,0,0,'e4526ee7f3d94664d818b023855fcdba',27,''),(129,2,'appdata_ocvfgh430ow8/preview/b/6/d/7/6/7/d/22/64-64-crop.jpg','33858f37b3239b5ab2c171f568b34e82',117,'64-64-crop.jpg',12,10,1792,1606575416,1606575416,0,0,'b0a68e44e0f24b89cbbed71889e4f7e4',27,''),(130,2,'appdata_ocvfgh430ow8/preview/3/7/6/9/3/c/f/23/64-64-crop.jpg','7c2400bbfadcc5ca25e447071271b3b7',124,'64-64-crop.jpg',12,10,2942,1606575416,1606575416,0,0,'6adae2f837fcd1785d3530824ce61785',27,''),(131,2,'appdata_ocvfgh430ow8/preview/1/f/f','a486bae295e05f745d298d17b7fd8694',87,'f',2,1,0,1606575416,1606575416,0,0,'5fc2653894a95',31,''),(132,2,'appdata_ocvfgh430ow8/preview/1/f/f/1','5cba4d1e3a9b077afa834d9d84a14cdd',131,'1',2,1,0,1606575416,1606575416,0,0,'5fc265389118d',31,''),(133,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d','92ce9fb2dbb490359e378edea962c65f',132,'d',2,1,0,1606575416,1606575416,0,0,'5fc2653884757',31,''),(134,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d/e','b4048b18248a2fd661abe828cd1a7704',133,'e',2,1,0,1606575416,1606575416,0,0,'5fc2653884163',31,''),(135,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d/e/7','dc594d2e911cc6274330cdf74c43822d',134,'7',2,1,0,1606575416,1606575416,0,0,'5fc265387ad53',31,''),(136,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d/e/7/24','4966eba73e27957edcfdbc8eb2580d79',135,'24',2,1,0,1606575418,1606575418,0,0,'5fc2653878af3',31,''),(137,2,'appdata_ocvfgh430ow8/preview/1/f/0/e/3/d/a/19/64-64-crop.jpg','e1df812d6059fb912e5e479304dd87bc',93,'64-64-crop.jpg',12,10,2669,1606575416,1606575416,0,0,'ed184688a0ecde75fd682d7730b2cf96',27,''),(138,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d/c/0/21/4096-4096-max.png','86388fb2f0e7ad389e9e13c1256b9b35',109,'4096-4096-max.png',11,10,33843,1606575416,1606575416,0,0,'2a339d7989747d9c8798bc7e9c6da0d6',27,''),(139,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d/e/7/24/1920-1281-max.jpg','deee6b17c14124e0982ea5a41af86b8e',136,'1920-1281-max.jpg',12,10,428184,1606575417,1606575417,0,0,'84fdfd8bc423ed83e31df176eac9b024',27,''),(140,2,'appdata_ocvfgh430ow8/preview/1/f/f/1/d/e/7/24/64-64-crop.jpg','959e0ca2ad4d740e1f4829be35af6b0e',136,'64-64-crop.jpg',12,10,2737,1606575418,1606575418,0,0,'acc23fd49b9abc97b9e5afe610df6ea3',27,''),(141,2,'appdata_ocvfgh430ow8/preview/9/8/f/1/3/7/0/20/64-64-crop.jpg','39a537b82c57d5af088472fc2202ec84',101,'64-64-crop.jpg',12,10,3067,1606575418,1606575418,0,0,'c8f05f6fe1efd0d2afb97f5409c028f0',27,''),(142,2,'appdata_ocvfgh430ow8/preview/3/c/5/9/d/c/0/21/64-64-crop.png','80e80e7674562000ccc4a3506050473a',109,'64-64-crop.png',11,10,868,1606575418,1606575418,0,0,'14463c4634d94f3d63dcea0e5e58c760',27,''),(143,2,'appdata_ocvfgh430ow8/appstore','5b614a2d86ef376d643d79547cc4c63b',10,'appstore',2,1,0,1606575452,1606575452,0,0,'5fc265533df0c',31,''),(144,2,'appdata_ocvfgh430ow8/appstore/apps.json','0734a931e16be02a22b5517bd2220859',143,'apps.json',17,5,1721766,1606597859,1606597859,0,0,'54d6204dd5cfd59e1e8718ab68542e36',27,''),(145,2,'appdata_ocvfgh430ow8/css/settings','802309dc142a340d32bd1d13e6415182',32,'settings',2,1,0,1606595210,1606595210,0,0,'5fc2655a2f3a7',31,''),(149,2,'appdata_ocvfgh430ow8/appstore/categories.json','de0e38145174fca2fea2861505539232',143,'categories.json',17,5,141511,1606596011,1606596011,0,0,'16c717f29e26590dee456669fd3c71d6',27,''),(150,2,'appdata_ocvfgh430ow8/js/files','86a3618483c8325a65377e46ae40beb8',27,'files',2,1,0,1606595177,1606595177,0,0,'5fc277f9c290f',31,''),(154,2,'appdata_ocvfgh430ow8/css/files','b725e4e3804f9b7881a75fa5b8a79242',32,'files',2,1,0,1606595177,1606595177,0,0,'5fc277fa21c51',31,''),(158,2,'appdata_ocvfgh430ow8/css/files_sharing','0e8de62900213bf19587af120efb9640',32,'files_sharing',2,1,0,1606595177,1606595177,0,0,'5fc277fa69b4f',31,''),(162,2,'appdata_ocvfgh430ow8/preview/a','525289c94ca2578d6a0f92278d9576c6',26,'a',2,1,0,1606580222,1606580222,0,0,'5fc277fe55cde',31,''),(163,2,'appdata_ocvfgh430ow8/preview/a/a','22d95a16a88d3536285d9d28c1461aae',162,'a',2,1,0,1606580222,1606580222,0,0,'5fc277fe55998',31,''),(164,2,'appdata_ocvfgh430ow8/preview/a/a/b','2824ad33b3d0f72e3161bd0c250b209d',163,'b',2,1,0,1606580222,1606580222,0,0,'5fc277fe55617',31,''),(165,2,'appdata_ocvfgh430ow8/preview/a/a/b/3','fc3d564b3f2fa115125f890b7e151ced',164,'3',2,1,0,1606580222,1606580222,0,0,'5fc277fe55248',31,''),(166,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2','aaf6b3205771a7583e413421d91b8e34',165,'2',2,1,0,1606580222,1606580222,0,0,'5fc277fe54f2f',31,''),(167,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2/3','b9fc2d3c8b9b62dfa07edd82f7265383',166,'3',2,1,0,1606580222,1606580222,0,0,'5fc277fe54bcd',31,''),(168,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2/3/8','bb44f31d561fb12ed57fba58ee439832',167,'8',2,1,0,1606580222,1606580222,0,0,'5fc277fe54761',31,''),(169,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2/3/8/14','2e20c9a3cec703197dca12d97b2f3f87',168,'14',2,1,0,1606580222,1606580222,0,0,'5fc277fe542e4',31,''),(170,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2/3/8/14/500-500-max.png','d1144573b858b3f210365a3056845a97',169,'500-500-max.png',11,10,50545,1606580222,1606580222,0,0,'6129faddc409fdbf13bd213e935f665c',27,''),(171,2,'appdata_ocvfgh430ow8/preview/a/a/b/3/2/3/8/14/256-256-crop.png','38f6761a729a637db5024ec275b8fdd1',169,'256-256-crop.png',11,10,25434,1606580222,1606580222,0,0,'d6a186c7771c6888fa3e7078a534a93c',27,''),(172,1,'files_trashbin/files/Readme.md.d1606589486','de3890239196a7cbfb334bf42e76af55',180,'Readme.md.d1606589486',4,3,1,1606580308,1606580308,0,0,'77e0c3ab36d845903184755ad9519a3f',27,''),(173,2,'appdata_ocvfgh430ow8/preview/1/f/f/8','129fa4d9d0ce5d52284d71a3a7ffce79',131,'8',2,1,0,1606580309,1606580309,0,0,'5fc278555ee9c',31,''),(174,2,'appdata_ocvfgh430ow8/preview/1/f/f/8/a','ce9e1120b28251c3ff76779c97b111d3',173,'a',2,1,0,1606580309,1606580309,0,0,'5fc278555eb24',31,''),(175,2,'appdata_ocvfgh430ow8/preview/1/f/f/8/a/7','f8c20d2d70e35a4826287d7c4daa8b49',174,'7',2,1,0,1606580309,1606580309,0,0,'5fc278555cfb8',31,''),(176,2,'appdata_ocvfgh430ow8/preview/1/f/f/8/a/7/b','1397e4c918043ab4b3f2df30fa88af5d',175,'b',2,1,0,1606580309,1606580309,0,0,'5fc278555cbb7',31,''),(177,2,'appdata_ocvfgh430ow8/preview/1/f/f/8/a/7/b/172','1d56f531f773fed631f38ebecdfd2d75',176,'172',2,1,0,1606580309,1606580309,0,0,'5fc278555b90a',31,''),(179,1,'files_trashbin','fb66dca5f27af6f15c1d1d81e6f8d28b',1,'files_trashbin',2,1,16608274,1606589486,1606589485,0,0,'5fc29c2e799c4',31,''),(180,1,'files_trashbin/files','3014a771cbe30761f2e9ff3272110dbf',179,'files',2,1,16608274,1606589486,1606589486,0,0,'5fc29c2e799c4',31,''),(181,1,'files_trashbin/versions','c639d144d3f1014051e14a98beac5705',179,'versions',2,1,0,1606589485,1606589485,0,0,'5fc29c2d4abd5',31,''),(182,1,'files_trashbin/keys','9195c7cfc1b867f229ac78cc1b6a0be3',179,'keys',2,1,0,1606589485,1606589485,0,0,'5fc29c2d509ce',31,''),(183,2,'appdata_ocvfgh430ow8/avatar/user/avatar.png','16126c2aef7465e8e6507580d29501cb',55,'avatar.png',11,10,10819,1606589503,1606589503,0,0,'5bf8291a9f57234bc96f3eb4f879de05',27,''),(184,2,'appdata_ocvfgh430ow8/avatar/user/generated','6a9ad70eaa553602428221e55896cb6b',55,'generated',14,5,0,1606589503,1606589503,0,0,'8b218f50d816f6194183715023e91cfe',27,''),(185,2,'appdata_ocvfgh430ow8/avatar/user/avatar.145.png','ea96cce1032f30a93a02f91724700065',55,'avatar.145.png',11,10,1244,1606589503,1606589503,0,0,'854471d3e6b63187cebbe5d42f04913d',27,''),(186,2,'appdata_ocvfgh430ow8/avatar/user/avatar.32.png','fea5e78960c0371b47e4eb5874561515',55,'avatar.32.png',11,10,278,1606589518,1606589518,0,0,'562b5606687c916f2083aafc4ae13ffb',27,''),(190,2,'appdata_ocvfgh430ow8/css/firstrunwizard','a71c182fe68797585f843eb741d12cd7',32,'firstrunwizard',2,1,0,1606595218,1606595218,0,0,'5fc29c565a27b',31,''),(194,2,'appdata_ocvfgh430ow8/css/accessibility','94c0d4ef78d71f494f30d370d29192c2',32,'accessibility',2,1,0,1606597362,1606597362,0,0,'5fc29ce17ceb0',31,''),(198,2,'appdata_ocvfgh430ow8/css/federatedfilesharing','f4edb8985ee0ec0392e64c54072b9ac6',32,'federatedfilesharing',2,1,0,1606602707,1606602707,0,0,'5fc29ceb7d884',31,''),(237,2,'appdata_ocvfgh430ow8/js/core/merged-template-prepend.js','40429178438e186d93bc6ff9c2496ee9',28,'merged-template-prepend.js',13,5,11396,1606594333,1606594333,0,0,'4238ca0c6a73eeff0a65d5abcecabb0e',27,''),(238,2,'appdata_ocvfgh430ow8/js/core/merged-template-prepend.js.deps','f9d7e43a25f5ace41c216729887f1f91',28,'merged-template-prepend.js.deps',14,5,310,1606594333,1606594333,0,0,'5da5b4ab63b63a504cb7fbfad514f847',27,''),(239,2,'appdata_ocvfgh430ow8/js/core/merged-template-prepend.js.gzip','12c99db7eb72e33f6d4a65b30f5d8aff',28,'merged-template-prepend.js.gzip',15,5,2982,1606594333,1606594333,0,0,'267ba3e14f09e5260555dc877e38c252',27,''),(240,2,'appdata_ocvfgh430ow8/js/activity/activity-sidebar.js','7199319168ed66faeb2809e3a7ec3978',56,'activity-sidebar.js',13,5,39092,1606594333,1606594333,0,0,'a64411b71f8a6eb810f1a15ecbe8a796',27,''),(241,2,'appdata_ocvfgh430ow8/js/activity/activity-sidebar.js.deps','7642d2b904868556cab79644c95e9565',56,'activity-sidebar.js.deps',14,5,604,1606594333,1606594333,0,0,'331d70ccd837b14475f1c5561367a4e6',27,''),(242,2,'appdata_ocvfgh430ow8/js/activity/activity-sidebar.js.gzip','07924b1aa79257b444e7bd3ec07cab8d',56,'activity-sidebar.js.gzip',15,5,5776,1606594333,1606594333,0,0,'faca6921ae506d06a442e97664490426',27,''),(243,2,'appdata_ocvfgh430ow8/css/icons/icons-vars.css','f5df777571a0fb3c65ee11348107ee4d',33,'icons-vars.css',16,3,178778,1606602707,1606602707,0,0,'afff6d8e39b7745817f24529d88e98b4',27,''),(244,2,'appdata_ocvfgh430ow8/css/icons/icons-list.template','ec101e7655099445d8bd2c3c7cd954ae',33,'icons-list.template',14,5,20884,1606602707,1606602707,0,0,'a45365186c01a4c2035c075d1d1c66f1',27,''),(245,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-server.css','588070fe51f4900cec85bd18b2259d7c',34,'458e-19e7-server.css',16,3,137147,1606594334,1606594334,0,0,'e5aeff9ce961afe6a375c926ad8532f3',27,''),(246,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-server.css.deps','6991f0f5deb523e25f3111e1a9360f37',34,'458e-19e7-server.css.deps',14,5,983,1606594334,1606594334,0,0,'b238e2b802179a3b26b3d277064c9d87',27,''),(247,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-server.css.gzip','e5e3f76f851feee6a2837b3038c18756',34,'458e-19e7-server.css.gzip',15,5,19536,1606594334,1606594334,0,0,'02980810f24ddbc931a048c2ed232f12',27,''),(248,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-css-variables.css','5ee77a10244988a15cd5cef02daa1eee',34,'458e-19e7-css-variables.css',16,3,1362,1606594334,1606594334,0,0,'a623109072c2df486d39141aa6ced04c',27,''),(249,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-css-variables.css.deps','d619fbb87ba73149cad7f1b16ceab91e',34,'458e-19e7-css-variables.css.deps',14,5,224,1606594334,1606594334,0,0,'3d62260a58cb1dfcf7edf7f251c577b7',27,''),(250,2,'appdata_ocvfgh430ow8/css/core/458e-19e7-css-variables.css.gzip','8c41dc8714ca764f712cd7836c60a91a',34,'458e-19e7-css-variables.css.gzip',15,5,571,1606594334,1606594334,0,0,'acaa194f06b90c69faeeb8edb53921e6',27,''),(251,2,'appdata_ocvfgh430ow8/css/notifications/0577-19e7-styles.css','f7d17b14df009980a79b8cda153b2a45',66,'0577-19e7-styles.css',16,3,3455,1606594334,1606594334,0,0,'12ffc580d9de4bb2c64fb48ee1aea4d0',27,''),(252,2,'appdata_ocvfgh430ow8/css/notifications/0577-19e7-styles.css.deps','fb358bd2265df204440b308fba58de9d',66,'0577-19e7-styles.css.deps',14,5,232,1606594334,1606594334,0,0,'a35a87952d34843a9d32be39796c037e',27,''),(253,2,'appdata_ocvfgh430ow8/css/notifications/0577-19e7-styles.css.gzip','6bc642eae63422863e933344a5083c90',66,'0577-19e7-styles.css.gzip',15,5,846,1606594334,1606594334,0,0,'4861be73531029d3c0d967d34ffc451d',27,''),(254,2,'appdata_ocvfgh430ow8/css/dashboard/d149-19e7-dashboard.css','661dfe685597deb79b8c038648ed2e42',70,'d149-19e7-dashboard.css',16,3,2062,1606594334,1606594334,0,0,'ac7c4b8e7d98c34083577a7c4a9fcca6',27,''),(255,2,'appdata_ocvfgh430ow8/css/dashboard/d149-19e7-dashboard.css.deps','b2c1c8cb71b3fce6d123f6b0c56e3697',70,'d149-19e7-dashboard.css.deps',14,5,231,1606594334,1606594334,0,0,'3aa1bb72239a99ff9d05ccc0862a1f00',27,''),(256,2,'appdata_ocvfgh430ow8/css/dashboard/d149-19e7-dashboard.css.gzip','579216f078e8513ede819fe632446458',70,'d149-19e7-dashboard.css.gzip',15,5,602,1606594335,1606594335,0,0,'014e842aa763f4a03b8ab5c435385365',27,''),(257,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-style.css','d48b249f3d928a93160eb4fe06cdc28f',74,'c4f1-19e7-style.css',16,3,3463,1606594335,1606594335,0,0,'2fa1328ae6a0bf06d2042bb02c36fcce',27,''),(258,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-style.css.deps','9360b25a2ebe98b521f94091d015870f',74,'c4f1-19e7-style.css.deps',14,5,226,1606594335,1606594335,0,0,'d4023cf81b19bfb23c4e5f41e806f9ed',27,''),(259,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-style.css.gzip','bb51fd55c00a325149c0c8198385ffbb',74,'c4f1-19e7-style.css.gzip',15,5,1108,1606594335,1606594335,0,0,'793f900f1a03855d55c7a381162294db',27,''),(260,2,'appdata_ocvfgh430ow8/css/text/232d-19e7-icons.css','6e3797210efae3716a5fd854dc369742',78,'232d-19e7-icons.css',16,3,2710,1606594335,1606594335,0,0,'7ce627afc478661782b3955726abfa12',27,''),(261,2,'appdata_ocvfgh430ow8/css/text/232d-19e7-icons.css.deps','93d00e73bed1af76f5efc00689e0f012',78,'232d-19e7-icons.css.deps',14,5,222,1606594335,1606594335,0,0,'7462e738871d2b7a7745c5e26abc8e9e',27,''),(262,2,'appdata_ocvfgh430ow8/css/text/232d-19e7-icons.css.gzip','2315297237d786bf08852792e223b86a',78,'232d-19e7-icons.css.gzip',15,5,417,1606594335,1606594335,0,0,'0a3f14e8387396ed34c6d8e961570323',27,''),(263,2,'appdata_ocvfgh430ow8/css/user_status/47cd-19e7-user-status-menu.css','2b05fa5f3b91cc840270c09103e98ed8',82,'47cd-19e7-user-status-menu.css',16,3,1039,1606594335,1606594335,0,0,'4ae3c0b592d4d14f5b57039ca05448db',27,''),(264,2,'appdata_ocvfgh430ow8/css/user_status/47cd-19e7-user-status-menu.css.deps','de6e5ba24bc1c3a902b11543592396fd',82,'47cd-19e7-user-status-menu.css.deps',14,5,240,1606594335,1606594335,0,0,'99cd068d28ea6ab2db9b2b4f3794f271',27,''),(265,2,'appdata_ocvfgh430ow8/css/user_status/47cd-19e7-user-status-menu.css.gzip','5a729d27f7f5545cddf8da61b5cbc851',82,'47cd-19e7-user-status-menu.css.gzip',15,5,240,1606594335,1606594335,0,0,'19a4a6ccf68b2e9e4b7f63a0a5a34f5f',27,''),(266,2,'appdata_ocvfgh430ow8/js/files/merged-index.js','55abf98cb6d7a63343a84d366bac184e',150,'merged-index.js',13,5,409814,1606595177,1606595177,0,0,'c646b33f6ee5eee699801072d44502b2',27,''),(267,2,'appdata_ocvfgh430ow8/js/files/merged-index.js.deps','6a98a7d608f4911b77f03a423ad1c75e',150,'merged-index.js.deps',14,5,2520,1606595177,1606595177,0,0,'e98c9858b84e58f7bdd6dcefcc1fb16d',27,''),(268,2,'appdata_ocvfgh430ow8/js/files/merged-index.js.gzip','473e69614193ab5b6383bc971a8323bd',150,'merged-index.js.gzip',15,5,92477,1606595177,1606595177,0,0,'dce229af8ba9f672dfb0774bf7b0d537',27,''),(269,2,'appdata_ocvfgh430ow8/css/files/d71e-19e7-merged.css','b06918d475256893583accfc8efae1d6',154,'d71e-19e7-merged.css',16,3,28447,1606595177,1606595177,0,0,'787f1e7b7a3ca4b1607f231bddb9b4f4',27,''),(270,2,'appdata_ocvfgh430ow8/css/files/d71e-19e7-merged.css.deps','8049bd1f0bd30f0da2fc9c2662aefe40',154,'d71e-19e7-merged.css.deps',14,5,608,1606595177,1606595177,0,0,'be7864f1d371109a891a98402fd3f35a',27,''),(271,2,'appdata_ocvfgh430ow8/css/files/d71e-19e7-merged.css.gzip','d8f4f14b7d17c54228203f9181429d97',154,'d71e-19e7-merged.css.gzip',15,5,5591,1606595177,1606595177,0,0,'039e30985e1619b3923a5ad533243526',27,''),(272,2,'appdata_ocvfgh430ow8/css/files_sharing/4039-19e7-icons.css','00f68d3950f965a43b59f543814d88e9',158,'4039-19e7-icons.css',16,3,174,1606595177,1606595177,0,0,'ff24da3ff6547938883ee5f4f02bf14e',27,''),(273,2,'appdata_ocvfgh430ow8/css/files_sharing/4039-19e7-icons.css.deps','1deb9137d4f41a6cd2981a3c2951398a',158,'4039-19e7-icons.css.deps',14,5,231,1606595177,1606595177,0,0,'9e3c74ca52b941eddfbc1df0f8ecd95b',27,''),(274,2,'appdata_ocvfgh430ow8/css/files_sharing/4039-19e7-icons.css.gzip','0ee54da027a6a731a72d81650a333663',158,'4039-19e7-icons.css.gzip',15,5,102,1606595177,1606595177,0,0,'073affae069386b69cca2a239997a2a9',27,''),(275,2,'appdata_ocvfgh430ow8/css/settings/62ab-19e7-settings.css','f78fc28a70de85bd6549ec6f7542f683',145,'62ab-19e7-settings.css',16,3,33003,1606595210,1606595210,0,0,'b9a93bc67478dd612c28e463559e4f07',27,''),(276,2,'appdata_ocvfgh430ow8/css/settings/62ab-19e7-settings.css.deps','ca37f4733bb667a528acefa3f17062de',145,'62ab-19e7-settings.css.deps',14,5,229,1606595210,1606595210,0,0,'02ddb3fe2c5d6380bbdb12f8e3d687b2',27,''),(277,2,'appdata_ocvfgh430ow8/css/settings/62ab-19e7-settings.css.gzip','724ef35b60b270d5786b1843beeb2d3d',145,'62ab-19e7-settings.css.gzip',15,5,6073,1606595210,1606595210,0,0,'286009b7baafddf0bc64bfebd944e94c',27,''),(278,2,'appdata_ocvfgh430ow8/css/firstrunwizard/0d6f-19e7-personalsettings.css','43c9aaab508ad21d9bcd15f41e32bef8',190,'0d6f-19e7-personalsettings.css',16,3,290,1606595218,1606595218,0,0,'0f907efae63e20012bb28730edcb2e65',27,''),(279,2,'appdata_ocvfgh430ow8/css/firstrunwizard/0d6f-19e7-personalsettings.css.deps','20789accf586c0f32c34fe366e5c2559',190,'0d6f-19e7-personalsettings.css.deps',14,5,243,1606595218,1606595218,0,0,'0676cdc803b905e2c245f8efbf12ae2b',27,''),(280,2,'appdata_ocvfgh430ow8/css/firstrunwizard/0d6f-19e7-personalsettings.css.gzip','cc6ff5c2c1bb268210cc038372eb73a1',190,'0d6f-19e7-personalsettings.css.gzip',15,5,195,1606595218,1606595218,0,0,'71ffd0b51235591f18d5da8c3e63d71c',27,''),(281,2,'appdata_ocvfgh430ow8/css/privacy','dc5f48e885f466752972d6927f31574f',32,'privacy',2,1,0,1606595238,1606595238,0,0,'5fc2b2a60a98d',31,''),(282,2,'appdata_ocvfgh430ow8/css/privacy/1bf6-19e7-privacy.css','35ce044715ad1d85ee9dee828d735b1a',281,'1bf6-19e7-privacy.css',16,3,2444,1606595238,1606595238,0,0,'ff593416ee16137277df711616da69c5',27,''),(283,2,'appdata_ocvfgh430ow8/css/privacy/1bf6-19e7-privacy.css.deps','e7be21cc80bc6b26ab013320c3e72966',281,'1bf6-19e7-privacy.css.deps',14,5,227,1606595238,1606595238,0,0,'53559bfc421944b3213814fa1f463469',27,''),(284,2,'appdata_ocvfgh430ow8/css/privacy/1bf6-19e7-privacy.css.gzip','adffb4984d13c796b630f510838c1526',281,'1bf6-19e7-privacy.css.gzip',15,5,717,1606595238,1606595238,0,0,'e5aa17c401abd09f9620645193d8826b',27,''),(285,2,'appdata_ocvfgh430ow8/avatar/user/avatar.64.png','ff5f9779f8a55ad92978232d089fa160',55,'avatar.64.png',11,10,527,1606595240,1606595240,0,0,'2cf7f9626d2fc24b21ecc6fef51a4a44',27,''),(286,2,'appdata_ocvfgh430ow8/avatar/user1','c2a6925a55d4e8d497e9d1836a60ecf9',54,'user1',2,1,0,1606597344,1606597344,0,0,'5fc2b39b27d7f',31,''),(287,2,'appdata_ocvfgh430ow8/avatar/user1/avatar.png','3ff066ad48753ade02970b8c0376fabe',286,'avatar.png',11,10,11082,1606595483,1606595483,0,0,'62625ae6998062e38c4520d8692255b1',27,''),(288,2,'appdata_ocvfgh430ow8/avatar/user1/generated','168eb655b42e8807b8178a8898e1b4f9',286,'generated',14,5,0,1606595483,1606595483,0,0,'1cab9213c7b20a4065972340f942c29c',27,''),(289,3,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608273,1606597252,1606597249,0,0,'5fc2ba8408ea0',23,''),(290,2,'appdata_ocvfgh430ow8/avatar/user1/avatar.32.png','29831d9b2fe35315b31721362ad9cba0',286,'avatar.32.png',11,10,280,1606595484,1606595484,0,0,'cf70a53f350ec950b9d638a9a0d160a3',27,''),(291,2,'appdata_ocvfgh430ow8/avatar/user2','6e1fb78ff48211aa724f9b8b50d471c7',54,'user2',2,1,0,1606598382,1606598382,0,0,'5fc2b3a8774fa',31,''),(292,2,'appdata_ocvfgh430ow8/avatar/user2/avatar.png','60ea0f2d5fc7846459f4b112392ed050',291,'avatar.png',11,10,11083,1606595496,1606595496,0,0,'252a7e1ad1ef1c720d4ec4f007ffc492',27,''),(293,2,'appdata_ocvfgh430ow8/avatar/user2/generated','d6e9f34a14d73a2102660ea50b86e51c',291,'generated',14,5,0,1606595496,1606595496,0,0,'9b641c83346cdbb17f1c4e10a0e3eebf',27,''),(294,4,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608273,1606598345,1606598344,0,0,'5fc2bec9f3a6c',23,''),(295,2,'appdata_ocvfgh430ow8/avatar/user2/avatar.32.png','ba06590bb5ce3fe2dea1b41d944adb73',291,'avatar.32.png',11,10,274,1606595497,1606595497,0,0,'838e8a84d4a16a9b8fd869d27e732e71',27,''),(296,2,'appdata_ocvfgh430ow8/avatar/user3','db00cb164eaa08ef2a480bf75a3bc6e3',54,'user3',2,1,0,1606600291,1606600291,0,0,'5fc2b3ea6a1d6',31,''),(297,2,'appdata_ocvfgh430ow8/avatar/user3/avatar.png','0a866f0be1ccb2a9b883b075be9d5fa1',296,'avatar.png',11,10,11165,1606595562,1606595562,0,0,'0040f4e23cc363dc8fd7275c17cf5d19',27,''),(298,2,'appdata_ocvfgh430ow8/avatar/user3/generated','55e9201f2e6f2c91bd2844dc67455517',296,'generated',14,5,0,1606595562,1606595562,0,0,'8be11d0d1d4b0b06ba5c6b0ddd361993',27,''),(299,5,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608273,1606600262,1606600261,0,0,'5fc2c646306fe',23,''),(300,2,'appdata_ocvfgh430ow8/avatar/user3/avatar.32.png','45d99ba23d501693b9ca1260cb3c2bde',296,'avatar.32.png',11,10,293,1606595563,1606595563,0,0,'633b8c79f08ec13be912f1bcd7c7d319',27,''),(301,2,'appdata_ocvfgh430ow8/avatar/user4','509381cc7f450f981fd7d0c059d8aaa8',54,'user4',2,1,0,1606600509,1606600509,0,0,'5fc2b3f7a20f7',31,''),(302,2,'appdata_ocvfgh430ow8/avatar/user4/avatar.png','2240e125527c78b71dfc59df0e9013bf',301,'avatar.png',11,10,10819,1606595575,1606595575,0,0,'7cae0ac44170be396f5c934e7875c934',27,''),(303,2,'appdata_ocvfgh430ow8/avatar/user4/generated','49012178cd16b13148761e5c6e71223b',301,'generated',14,5,0,1606595575,1606595575,0,0,'c5f5b47eeac56b184999138457ec7af8',27,''),(304,6,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608273,1606600477,1606600476,0,0,'5fc2c71d332c5',23,''),(305,2,'appdata_ocvfgh430ow8/avatar/user4/avatar.32.png','f1ed1bd202bddfeb8cd9d9ab228fabae',301,'avatar.32.png',11,10,278,1606595576,1606595576,0,0,'1eb9f68dee60e6ebece11f82a08893f0',27,''),(306,2,'appdata_ocvfgh430ow8/avatar/user5','1c11ba3955ddd5d73d44eef04b60d0b9',54,'user5',2,1,0,1606600746,1606600746,0,0,'5fc2b4051f566',31,''),(307,2,'appdata_ocvfgh430ow8/avatar/user5/avatar.png','bc07a2467c054faea2cbc8e97a55d022',306,'avatar.png',11,10,11199,1606595589,1606595589,0,0,'108e632d0e5858e659c1b26517951351',27,''),(308,2,'appdata_ocvfgh430ow8/avatar/user5/generated','e94bc854fc4603457179c403f0d21bb9',306,'generated',14,5,0,1606595589,1606595589,0,0,'f77ff1f86debe6ef8d07312aad695d30',27,''),(309,7,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,16608273,1606600698,1606600697,0,0,'5fc2c7fa02b3a',23,''),(310,2,'appdata_ocvfgh430ow8/avatar/user5/avatar.32.png','7403a96493644e1656482cf69f2b686d',306,'avatar.32.png',11,10,292,1606595589,1606595589,0,0,'a84fdc92a27ba37654640ab61e0b57e1',27,''),(311,2,'appdata_ocvfgh430ow8/css/photos','429b2da6dee5cb83a68e73e65db34693',32,'photos',2,1,0,1606595950,1606595950,0,0,'5fc2b56e49e9a',31,''),(312,2,'appdata_ocvfgh430ow8/css/photos/62ab-19e7-icons.css','8c29ca7cafcb509e105126ab6706e627',311,'62ab-19e7-icons.css',16,3,383,1606595950,1606595950,0,0,'d2628593edf1a82fcfba20e34e53e225',27,''),(313,2,'appdata_ocvfgh430ow8/css/photos/62ab-19e7-icons.css.deps','46e1e5b179b2af3cebe392f66292c050',311,'62ab-19e7-icons.css.deps',14,5,224,1606595950,1606595950,0,0,'aa1afd6e8f395f6b43355b005358f56c',27,''),(314,2,'appdata_ocvfgh430ow8/css/photos/62ab-19e7-icons.css.gzip','93f3074c577beefb0b9072550ee27056',311,'62ab-19e7-icons.css.gzip',15,5,130,1606595950,1606595950,0,0,'36f4f215c24c0588244e278c18ae29a2',27,''),(315,2,'appdata_ocvfgh430ow8/css/mail','1089c1c4301a71b5c0f3ece568137825',32,'mail',2,1,0,1606596232,1606596232,0,0,'5fc2b687ea52a',31,''),(316,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mail.css','d79c707973e3b41ad9ac70ecdf09f64c',315,'6a15-19e7-mail.css',16,3,16486,1606596232,1606596232,0,0,'61932702d07ddff3bb21c75efa89950c',27,''),(317,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mail.css.deps','156f81c66b36b7252617f151c4eff54d',315,'6a15-19e7-mail.css.deps',14,5,235,1606596232,1606596232,0,0,'f0d1a6aba13a0cca0a70982872f7f6d0',27,''),(318,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mail.css.gzip','337fdaa627ff07d7fb6ac4446313a544',315,'6a15-19e7-mail.css.gzip',15,5,2639,1606596232,1606596232,0,0,'1fb04fffea12d8e69abe8a5e7bc13e74',27,''),(319,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mobile.css','a514120b45718ec51c2e23d4ba0d9865',315,'6a15-19e7-mobile.css',16,3,678,1606596232,1606596232,0,0,'16238553bab4aa4ffc1ae2e2338917e9',27,''),(320,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mobile.css.deps','15830d5650b214f09e46dc4c37b602a5',315,'6a15-19e7-mobile.css.deps',14,5,237,1606596232,1606596232,0,0,'8b28dfb9e8e245ca22ccf374d5cd2892',27,''),(321,2,'appdata_ocvfgh430ow8/css/mail/6a15-19e7-mobile.css.gzip','6cf49ef567ca11727df8fb5c4fd28dc7',315,'6a15-19e7-mobile.css.gzip',15,5,366,1606596232,1606596232,0,0,'5dc480a8974c3a1b8ffff57a392a0d55',27,''),(322,3,'cache','0fea6a13c52b4d4725368f24b045ca84',289,'cache',2,1,0,1606597249,1606597249,0,0,'5fc2ba81c5a7f',31,''),(323,3,'files','45b963397aa40d4a0063e0d85e4fe7a1',289,'files',2,1,16608273,1606597252,1606597252,0,0,'5fc2ba8408ea0',31,''),(324,3,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',323,'Documents',2,1,400389,1606597250,1606597250,0,0,'5fc2ba82222e1',31,''),(325,3,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',324,'Example.md',4,3,1095,1606597249,1606597249,0,0,'6c6c9dd037b5b33f3a1df8a35c3c7147',27,''),(326,3,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',324,'Nextcloud flyer.pdf',6,5,374008,1606597250,1606597250,0,0,'c645b6135441b6570a1b5c305f9ab781',27,''),(327,3,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',324,'Readme.md',4,3,136,1606597250,1606597250,0,0,'2df9da48fecd92aa13a26445fd9a0e4f',27,''),(328,3,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',324,'Welcome to Nextcloud Hub.docx',7,5,25150,1606597250,1606597250,0,0,'c0ea68997ef46dbc331899a5d7b51f22',27,''),(329,3,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',323,'Nextcloud Manual.pdf',6,5,5745866,1606597250,1606597250,0,0,'03a23ef234f1c6933f599eb480528b90',27,''),(330,3,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',323,'Nextcloud intro.mp4',9,8,3963036,1606597251,1606597251,0,0,'716327e0c14e62afff29ada9ac8aea6f',27,''),(331,3,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',323,'Nextcloud.png',11,10,50598,1606597251,1606597251,0,0,'0ac0df217c4494063050dc5fed0c40b6',27,''),(332,3,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',323,'Photos',2,1,5656463,1606597251,1606597251,0,0,'5fc2ba83eec47',31,''),(333,3,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',332,'Birdie.jpg',12,10,593508,1606597251,1606597251,0,0,'8a0114e96b50eaca7cf07772cd09da66',27,''),(334,3,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',332,'Frog.jpg',12,10,457744,1606597251,1606597251,0,0,'2b3540392eec2aee84642cfdd672fef3',27,''),(335,3,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',332,'Gorilla.jpg',12,10,474653,1606597251,1606597251,0,0,'3549594de340ca496b41b0752005fd3e',27,''),(336,3,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',332,'Library.jpg',12,10,2170375,1606597251,1606597251,0,0,'601883c48667c12271f67f9cdf982dc1',27,''),(337,3,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',332,'Nextcloud community.jpg',12,10,797325,1606597251,1606597251,0,0,'f85a45c9aca2cb398207f9a1fc619193',27,''),(338,3,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',332,'Readme.md',4,3,150,1606597251,1606597251,0,0,'4ce78352e24dfaee5d85b2db7fa98e4e',27,''),(339,3,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',332,'Steps.jpg',12,10,567689,1606597251,1606597251,0,0,'2a89aaa0f3a7ba83440dc7f733e61034',27,''),(340,3,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',332,'Toucan.jpg',12,10,167989,1606597251,1606597251,0,0,'0395af3e621d3dc14b792a88267e31e7',27,''),(341,3,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',332,'Vineyard.jpg',12,10,427030,1606597252,1606597252,0,0,'1f6fe70da2c94be574cc3202367b5655',27,''),(342,3,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',323,'Reasons to use Nextcloud.pdf',6,5,791921,1606597252,1606597252,0,0,'d93d8663e93294c9383bdde192f6cc01',27,''),(343,2,'appdata_ocvfgh430ow8/dashboard/user1','7307c1b91fc16acd2cc779ac4b486dc5',52,'user1',2,1,0,1606597252,1606597252,0,0,'5fc2ba84762f7',31,''),(344,2,'appdata_ocvfgh430ow8/preview/3/d','128a1b174cffccf865ba94e533b7476d',102,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a223ea',31,''),(345,2,'appdata_ocvfgh430ow8/preview/3/d/d','6661a2c4fca2c4b4018a253dad7a4dcc',344,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a21d5a',31,''),(346,2,'appdata_ocvfgh430ow8/preview/3/d/d/4','a77d2bee1711a958705d1e013761184c',345,'4',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a20c6e',31,''),(347,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8','bb9423aaf2b631615ccaa2a0d3de981b',346,'8',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a207c5',31,''),(348,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8/a','fcce4ef91788ebfaca2f51532e867bea',347,'a',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a1d966',31,''),(349,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8/a/b','e5ad2a07dbd529642717f79f1737b376',348,'b',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a1d562',31,''),(350,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8/a/b/341','1f45515d117c6fb5626ec482a32baf9f',349,'341',2,1,0,1606597259,1606597259,0,0,'5fc2ba8a1b6bc',31,''),(351,2,'appdata_ocvfgh430ow8/preview/6','27e7df06052136250a3eaa31aa509424',26,'6',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a808bb',31,''),(352,2,'appdata_ocvfgh430ow8/preview/6/d','7f169bc17a1e10d064829373397b207a',351,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a804ff',31,''),(353,2,'appdata_ocvfgh430ow8/preview/6/d/a','50185c9e3d4ce447ea229479f1b055c8',352,'a',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7f082',31,''),(354,2,'appdata_ocvfgh430ow8/preview/6/d/a/3','b97208545ae125de69b013607ec90410',353,'3',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7e8e2',31,''),(355,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7','a3eadc85cacffb843f932bca48f75c1d',354,'7',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7e547',31,''),(356,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7/d','d92bdaf18e213e88ab73a60157a58dfe',355,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7e25c',31,''),(357,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7/d/d','2accb803f79a3178523405e02029c839',356,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7df40',31,''),(358,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7/d/d/331','7ad09b75c14c16ce2d43db3a57330900',357,'331',2,1,0,1606597258,1606597258,0,0,'5fc2ba8a7d126',31,''),(359,2,'appdata_ocvfgh430ow8/avatar/user/avatar.16.png','d986b45f4cbf1358a694ec285c2cde62',55,'avatar.16.png',11,10,185,1606597258,1606597258,0,0,'439f3c32932fc0712003162d07436fc2',27,''),(360,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8/a/b/341/1920-1281-max.jpg','460b5dcbb4f022e7e9cac2f85ba764c7',350,'1920-1281-max.jpg',12,10,428184,1606597258,1606597258,0,0,'8d87c98ee4a6071ca2db31bfcb7a363f',27,''),(361,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7/d/d/331/500-500-max.png','e881df3ebe9d3c34d59d2d600bfeae49',358,'500-500-max.png',11,10,50545,1606597258,1606597258,0,0,'58d9b3299bf8e5e9386887d6e5e2fef4',27,''),(362,2,'appdata_ocvfgh430ow8/preview/3/1','47d42ed2a6472c03f148aba5054aceef',102,'1',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae4093',31,''),(363,2,'appdata_ocvfgh430ow8/preview/3/1/0','6559fb829d86f3e74c11864d6ce6ef7d',362,'0',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae3dd5',31,''),(364,2,'appdata_ocvfgh430ow8/preview/3/1/0/d','0781a6e2486fb49cbe438c8dfddcb010',363,'d',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae3acc',31,''),(365,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c','fecc49fcbf23e7168ede19cc9427ac2d',364,'c',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae37d1',31,''),(366,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c/b','98fe9c8f3d6dd93742a1774a0c57f7ce',365,'b',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae27f4',31,''),(367,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c/b/b','a2d7dc41fc1a9c123c24d40d44800621',366,'b',2,1,0,1606597258,1606597258,0,0,'5fc2ba8ae1a44',31,''),(368,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c/b/b/333','8b3876d9d0c9c3337d438b55857a2fdd',367,'333',2,1,0,1606597260,1606597260,0,0,'5fc2ba8ae03df',31,''),(369,2,'appdata_ocvfgh430ow8/preview/6/d/a/3/7/d/d/331/64-64-crop.png','99b92102ebf853fa3a2d306d4ad4371f',358,'64-64-crop.png',11,10,4026,1606597258,1606597258,0,0,'bac2e682610c5ceb02913739c8dc3fd6',27,''),(370,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c/b/b/333/1600-1067-max.jpg','b00bcd542512f39003ff5dc71b20f66a',368,'1600-1067-max.jpg',12,10,253158,1606597259,1606597259,0,0,'8a4493a24d93314861fb655034bd4cfa',27,''),(371,2,'appdata_ocvfgh430ow8/preview/2','c9a99287727d24d0cd85474e10797946',26,'2',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b7917d',31,''),(372,2,'appdata_ocvfgh430ow8/preview/2/f','4bcd5a482b578bf273ff5dd17db417fc',371,'f',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b77219',31,''),(373,2,'appdata_ocvfgh430ow8/preview/2/f/2','a97aeab834eca73b8f0e6e22c3864f82',372,'2',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b763e2',31,''),(374,2,'appdata_ocvfgh430ow8/preview/2/f/2/b','51344692b5a8fc5af86dc640c88f0bea',373,'b',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b75ff9',31,''),(375,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2','d7a702ec537405349eb9b9dace6c82a6',374,'2',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b75c31',31,''),(376,2,'appdata_ocvfgh430ow8/preview/3/d/d/4/8/a/b/341/64-64-crop.jpg','3ec2e1550ea23e1ffa3e8c9c4342dbf0',350,'64-64-crop.jpg',12,10,2737,1606597259,1606597259,0,0,'493e70a1aca76d4e70b057b66bfe369b',27,''),(377,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2/6','b334ea323faf466b41272ad8a5ed0254',375,'6',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b75778',31,''),(378,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2/6/5','8c9313f3b95ca317dd189c1287de5e5b',377,'5',2,1,0,1606597259,1606597259,0,0,'5fc2ba8b753f5',31,''),(379,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2/6/5/334','4e3884936c6c2e243adaa3e0c3d02997',378,'334',2,1,0,1606597260,1606597260,0,0,'5fc2ba8b71ba1',31,''),(380,2,'appdata_ocvfgh430ow8/preview/f','e0a12cdfa076e207ede82f7bf94184d4',26,'f',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc7394',31,''),(381,2,'appdata_ocvfgh430ow8/preview/f/9','ed0725c989f8f61bc849de9a6774fab1',380,'9',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc52bf',31,''),(382,2,'appdata_ocvfgh430ow8/preview/f/9/b','5836032764783be692ba2331cdb28cf3',381,'b',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc4eb3',31,''),(383,2,'appdata_ocvfgh430ow8/preview/f/9/b/9','c5006a1563d8ec806c6eb9e3a6b5170d',382,'9',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc4aa3',31,''),(384,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0','3507147fe79f89402d073baab8d36a62',383,'0',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc4510',31,''),(385,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0/2','3dc3cc6dac8dc8bf2d27b4d9ca22755d',384,'2',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc2fa3',31,''),(386,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0/2/f','3dcb6638f7c2ff858dddaddeb85ef78f',385,'f',2,1,0,1606597259,1606597259,0,0,'5fc2ba8bc2c3b',31,''),(387,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0/2/f/335','bc1f6ed7501727f8867da9d212a3567d',386,'335',2,1,0,1606597260,1606597260,0,0,'5fc2ba8bc2873',31,''),(388,2,'appdata_ocvfgh430ow8/preview/3/1/0/d/c/b/b/333/64-64-crop.jpg','fd531ee352ffdd1cfbe44d1d4c2a16ef',368,'64-64-crop.jpg',12,10,2537,1606597260,1606597260,0,0,'cafe3733dbeec5acd3c55ff1fa75dd14',27,''),(389,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2/6/5/334/1600-1067-max.jpg','23c2a03049ae38a779b8129f205f412a',379,'1600-1067-max.jpg',12,10,349624,1606597260,1606597260,0,0,'6534ad79ea589df7dfea5fbf0b3ad1f1',27,''),(390,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0/2/f/335/1600-1067-max.jpg','c6f590e80448d3be2eb0250bdb35da12',387,'1600-1067-max.jpg',12,10,427204,1606597260,1606597260,0,0,'2e5cdf109cbe4b6e66a305b8e6da21a9',27,''),(391,2,'appdata_ocvfgh430ow8/preview/f/9/b/9/0/2/f/335/64-64-crop.jpg','5c7e2165d5397deb611004393adc7302',387,'64-64-crop.jpg',12,10,2244,1606597260,1606597260,0,0,'9f0579c40b88513c741afac13a4f14c3',27,''),(392,2,'appdata_ocvfgh430ow8/preview/2/f/2/b/2/6/5/334/64-64-crop.jpg','b525d71e8b60e6a92496a5c2fe70f0db',379,'64-64-crop.jpg',12,10,1976,1606597260,1606597260,0,0,'0f04fdcc46526285e7c6a338858f5ad5',27,''),(393,2,'appdata_ocvfgh430ow8/avatar/user1/avatar.145.png','f0b166799b02a38e7032cccc00d2e360',286,'avatar.145.png',11,10,1295,1606597344,1606597344,0,0,'bc7524c23f10ffe29285f74a9ff175fe',27,''),(394,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-settings.css','cd712174420180158ff26dd0307f2856',74,'c4f1-19e7-settings.css',16,3,475,1606597359,1606597359,0,0,'7236b92e5bab59f5e76db4b4f61612a7',27,''),(395,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-settings.css.deps','a4e830e46f9d330c50a6ba224a3606ce',74,'c4f1-19e7-settings.css.deps',14,5,229,1606597359,1606597359,0,0,'b97d68a7c1f74ab5eec71218fdc2855c',27,''),(396,2,'appdata_ocvfgh430ow8/css/activity/c4f1-19e7-settings.css.gzip','107c4197c8b48f2ddbb9143fba30a850',74,'c4f1-19e7-settings.css.gzip',15,5,240,1606597359,1606597359,0,0,'9221e6d852fd6411c981458d5d14ad7a',27,''),(397,2,'appdata_ocvfgh430ow8/css/accessibility/ca9f-19e7-style.css','7a385d89752fcc96745ce96798b141d8',194,'ca9f-19e7-style.css',16,3,687,1606597362,1606597362,0,0,'166a23594311de2efe7c8af2e5720ba8',27,''),(398,2,'appdata_ocvfgh430ow8/css/accessibility/ca9f-19e7-style.css.deps','4993156e5267098e9738f8d669e731bc',194,'ca9f-19e7-style.css.deps',14,5,231,1606597362,1606597362,0,0,'b76103fb091bf353a458e4c19ab36aab',27,''),(399,2,'appdata_ocvfgh430ow8/css/accessibility/ca9f-19e7-style.css.gzip','97a51f99e9631da5e48e2fb89b8e23ea',194,'ca9f-19e7-style.css.gzip',15,5,334,1606597362,1606597362,0,0,'68180f66df1cd4a0e4f171ffbd05397f',27,''),(400,4,'cache','0fea6a13c52b4d4725368f24b045ca84',294,'cache',2,1,0,1606598344,1606598344,0,0,'5fc2bec8924d2',31,''),(401,4,'files','45b963397aa40d4a0063e0d85e4fe7a1',294,'files',2,1,16608273,1606598345,1606598345,0,0,'5fc2bec9f3a6c',31,''),(402,4,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',401,'Documents',2,1,400389,1606598344,1606598344,0,0,'5fc2bec8d7569',31,''),(403,4,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',402,'Example.md',4,3,1095,1606598344,1606598344,0,0,'3ae00b7ebdb365b7955007162a04d901',27,''),(404,4,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',402,'Nextcloud flyer.pdf',6,5,374008,1606598344,1606598344,0,0,'91925a981e83b39f9725521d12bf43f2',27,''),(405,4,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',402,'Readme.md',4,3,136,1606598344,1606598344,0,0,'ba4c5ff3e981ced34d4d51d921348c48',27,''),(406,4,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',402,'Welcome to Nextcloud Hub.docx',7,5,25150,1606598344,1606598344,0,0,'c7079a78a34d2bdadfb14174112f81b9',27,''),(407,4,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',401,'Nextcloud Manual.pdf',6,5,5745866,1606598345,1606598345,0,0,'46c66704f42724067e433e9d955a5333',27,''),(408,4,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',401,'Nextcloud intro.mp4',9,8,3963036,1606598345,1606598345,0,0,'b9428af49994bb1b054523c3d4ca9062',27,''),(409,4,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',401,'Nextcloud.png',11,10,50598,1606598345,1606598345,0,0,'3cd6eb246b7c0aa96a5d615f8666e3cf',27,''),(410,4,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',401,'Photos',2,1,5656463,1606598345,1606598345,0,0,'5fc2bec9e85ec',31,''),(411,4,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',410,'Birdie.jpg',12,10,593508,1606598345,1606598345,0,0,'3c59e9bfb710d01461cbfa0a2d2a810b',27,''),(412,4,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',410,'Frog.jpg',12,10,457744,1606598345,1606598345,0,0,'4691dc785067929c61feeb73e5910e7a',27,''),(413,4,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',410,'Gorilla.jpg',12,10,474653,1606598345,1606598345,0,0,'062581c0c772c09dbe31806b61a64861',27,''),(414,4,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',410,'Library.jpg',12,10,2170375,1606598345,1606598345,0,0,'04aacffdec1e763c2372fdac322dcc46',27,''),(415,4,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',410,'Nextcloud community.jpg',12,10,797325,1606598345,1606598345,0,0,'861d5b2cd35ae9e464ec4f3b8a93afc5',27,''),(416,4,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',410,'Readme.md',4,3,150,1606598345,1606598345,0,0,'8cf97a71381a7d6041877e8db42bae9c',27,''),(417,4,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',410,'Steps.jpg',12,10,567689,1606598345,1606598345,0,0,'fd46fd46aa69d4f8e2ab371a1d7bab7b',27,''),(418,4,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',410,'Toucan.jpg',12,10,167989,1606598345,1606598345,0,0,'036511aff45ad82244ceb9fa93ff1fa9',27,''),(419,4,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',410,'Vineyard.jpg',12,10,427030,1606598345,1606598345,0,0,'24dce1ce539e5453c87d412c6e4c6009',27,''),(420,4,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',401,'Reasons to use Nextcloud.pdf',6,5,791921,1606598346,1606598346,0,0,'15e77039d25cd7ea27aa9434d56c11af',27,''),(421,2,'appdata_ocvfgh430ow8/dashboard/user2','8764bbaf29dbeaa0762183d2a585c333',52,'user2',2,1,0,1606598346,1606598346,0,0,'5fc2beca459eb',31,''),(422,2,'appdata_ocvfgh430ow8/preview/1/7','8e9f989e4cb7ccce9fbabafc7bb81af5',86,'7',2,1,0,1606598352,1606598352,0,0,'5fc2bed09d612',31,''),(423,2,'appdata_ocvfgh430ow8/preview/1/7/d','ce5e676e3ef15549b4b8aa9dcb2dd5b6',422,'d',2,1,0,1606598352,1606598352,0,0,'5fc2bed09d151',31,''),(424,2,'appdata_ocvfgh430ow8/preview/1/7/d/6','0111befbef13e1a5dd510348915623f8',423,'6',2,1,0,1606598352,1606598352,0,0,'5fc2bed09c865',31,''),(425,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3','4b1bdb9af4656faa0efd294397396566',424,'3',2,1,0,1606598352,1606598352,0,0,'5fc2bed09c3fd',31,''),(426,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3/b','af48c1e1d4d3f9375fa329976aa0c462',425,'b',2,1,0,1606598352,1606598352,0,0,'5fc2bed09b322',31,''),(427,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3/b/1','427b934597a9c73f729c8d30a92fc703',426,'1',2,1,0,1606598352,1606598352,0,0,'5fc2bed09ade6',31,''),(428,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3/b/1/411','4286b2ae1dca880c7199c1db946d7f6d',427,'411',2,1,0,1606598353,1606598353,0,0,'5fc2bed09aada',31,''),(429,2,'appdata_ocvfgh430ow8/preview/a/9','6978baa69b6a84f7f2e879e51df8d8d5',162,'9',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c86c0',31,''),(430,2,'appdata_ocvfgh430ow8/preview/a/9/6','9aa3dd7d3a58574ce8b95bb1c3ba5ebe',429,'6',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c7843',31,''),(431,2,'appdata_ocvfgh430ow8/preview/a/9/6/b','ab24ae6391568be2d4280e2ccc7703dc',430,'b',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c7494',31,''),(432,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6','a0a02273f05024472aa1383ad9fc6528',431,'6',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c70cd',31,''),(433,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6/5','c8b932fa90f5e3daddb0de0e63db510a',432,'5',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c55fd',31,''),(434,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6/5/a','33fc3fe967aabfd67c7af737e4f197f9',433,'a',2,1,0,1606598352,1606598352,0,0,'5fc2bed0c48bd',31,''),(435,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6/5/a/409','23ec84495118ae5e31d7444bd6291f21',434,'409',2,1,0,1606598353,1606598353,0,0,'5fc2bed0c42b0',31,''),(436,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3/b/1/411/1600-1067-max.jpg','2fa2f4b50fdd99c4dca4e41e8167522e',428,'1600-1067-max.jpg',12,10,253158,1606598352,1606598352,0,0,'93c57b02dbe53b495294b2e1ea0ca0d2',27,''),(437,2,'appdata_ocvfgh430ow8/preview/b/9','959a2aef10e3a5d61a54c3846346461c',110,'9',2,1,0,1606598353,1606598353,0,0,'5fc2bed10f206',31,''),(438,2,'appdata_ocvfgh430ow8/preview/b/9/2','1cc90c0ffa9b9f6ad61f9ba89c841ad7',437,'2',2,1,0,1606598353,1606598353,0,0,'5fc2bed10ea5e',31,''),(439,2,'appdata_ocvfgh430ow8/preview/b/9/2/2','8596a43e89bceca0f586b152f128e9a5',438,'2',2,1,0,1606598353,1606598353,0,0,'5fc2bed10d88d',31,''),(440,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8','f10e0d35ee785900361812a1a15e1014',439,'8',2,1,0,1606598353,1606598353,0,0,'5fc2bed10caed',31,''),(441,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8/e','184ee1b6bbc1b311e0d30916a2559ac6',440,'e',2,1,0,1606598353,1606598353,0,0,'5fc2bed10b5b8',31,''),(442,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8/e/0','85a4c528b6d35578f35100665488e93c',441,'0',2,1,0,1606598353,1606598353,0,0,'5fc2bed10b0ae',31,''),(443,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8/e/0/412','5a8ce4d191f0ec363b66833045bf1358',442,'412',2,1,0,1606598354,1606598354,0,0,'5fc2bed108ddb',31,''),(444,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6/5/a/409/500-500-max.png','7d1d666701d14980b9efb5f09423228a',435,'500-500-max.png',11,10,50545,1606598353,1606598353,0,0,'d8f9131fe5c7b1fff58cda6fef397c37',27,''),(445,2,'appdata_ocvfgh430ow8/preview/a/9/6/b/6/5/a/409/64-64-crop.png','266496bde34e3c4ebc4bad5207fef92a',435,'64-64-crop.png',11,10,4026,1606598353,1606598353,0,0,'f1be96910388e96fc0e3b8a04e01e1f6',27,''),(446,2,'appdata_ocvfgh430ow8/preview/0','9e9fa918f81e29abd74072890ee805a6',26,'0',2,1,0,1606598353,1606598353,0,0,'5fc2bed145600',31,''),(447,2,'appdata_ocvfgh430ow8/preview/0/d','c79c214a537c65e2904490ab07c0b56f',446,'d',2,1,0,1606598353,1606598353,0,0,'5fc2bed1452c4',31,''),(448,2,'appdata_ocvfgh430ow8/preview/0/d/e','d420b480d2e4748f7100f46b63016de1',447,'e',2,1,0,1606598353,1606598353,0,0,'5fc2bed142a4d',31,''),(449,2,'appdata_ocvfgh430ow8/preview/0/d/e/b','dde131516fa35f82d4fb73f5114776cf',448,'b',2,1,0,1606598353,1606598353,0,0,'5fc2bed13f2f8',31,''),(450,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1','d88d7cc2769f2730affa9a7e34dd22bb',449,'1',2,1,0,1606598353,1606598353,0,0,'5fc2bed13ee78',31,''),(451,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1/c','987a20692c6a1879e545ce6cc86b2c5a',450,'c',2,1,0,1606598353,1606598353,0,0,'5fc2bed13ead8',31,''),(452,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1/c/5','1250f82dbbf8880ac098927a46d102b8',451,'5',2,1,0,1606598353,1606598353,0,0,'5fc2bed13e612',31,''),(453,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1/c/5/413','ef5863ee8a562921fb55f8cb89f0cf6b',452,'413',2,1,0,1606598354,1606598354,0,0,'5fc2bed139dd9',31,''),(454,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8/e/0/412/1600-1067-max.jpg','9bdf095e32673ac3452fa9bbb0f5f4aa',443,'1600-1067-max.jpg',12,10,349624,1606598353,1606598353,0,0,'e1fe118bd59abd257deebf4a9856a3d8',27,''),(455,2,'appdata_ocvfgh430ow8/preview/1/7/d/6/3/b/1/411/64-64-crop.jpg','a70df31a25f077245c5137877af5deeb',428,'64-64-crop.jpg',12,10,2537,1606598353,1606598353,0,0,'08fe843a5da33cf4a6f151f3f95d13b7',27,''),(456,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1/c/5/413/1600-1067-max.jpg','1ecf666c14076e66e81271fc4daac27d',453,'1600-1067-max.jpg',12,10,427204,1606598353,1606598353,0,0,'5046621c0051ad1a1bd1a84b47f7a2f3',27,''),(457,2,'appdata_ocvfgh430ow8/preview/b/9/2/2/8/e/0/412/64-64-crop.jpg','6631c6c7c55ac950f8c2e085e8b29324',443,'64-64-crop.jpg',12,10,1976,1606598354,1606598354,0,0,'79d05b799f787b898398b1c7e658a9cc',27,''),(458,2,'appdata_ocvfgh430ow8/preview/0/d/e/b/1/c/5/413/64-64-crop.jpg','83c95e57b42e42847e2d6597f5366a66',453,'64-64-crop.jpg',12,10,2244,1606598354,1606598354,0,0,'20fe2fed6457a5e4bf73fe86401c7ec8',27,''),(459,2,'appdata_ocvfgh430ow8/avatar/user2/avatar.117.png','d592ab4df8239f67fe424c0abd9ee1ed',291,'avatar.117.png',11,10,1064,1606598382,1606598382,0,0,'19e6684ec039120353a4a54d854e883f',27,''),(460,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-personal.css','d9ea0198b7518f5e7a4c061d92f79142',198,'c5f2-19e7-settings-personal.css',16,3,680,1606598388,1606598388,0,0,'f7bf2fa7eea1fd05079d948bb7b429e9',27,''),(461,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-personal.css.deps','d2690bd8cbc272c50f0eefe30085eb58',198,'c5f2-19e7-settings-personal.css.deps',14,5,250,1606598388,1606598388,0,0,'85c1a9f5ffa29cea12c62a28cf0b9a83',27,''),(462,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-personal.css.gzip','3fb7e5c693a3a900868fe540ce42df4e',198,'c5f2-19e7-settings-personal.css.gzip',15,5,307,1606598388,1606598388,0,0,'43ac6ad1966f1ee0fabc9d270fe9411f',27,''),(463,5,'cache','0fea6a13c52b4d4725368f24b045ca84',299,'cache',2,1,0,1606600261,1606600261,0,0,'5fc2c645427a4',31,''),(464,5,'files','45b963397aa40d4a0063e0d85e4fe7a1',299,'files',2,1,16608273,1606600262,1606600262,0,0,'5fc2c646306fe',31,''),(465,5,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',464,'Documents',2,1,400389,1606600261,1606600261,0,0,'5fc2c6457bc33',31,''),(466,5,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',465,'Example.md',4,3,1095,1606600261,1606600261,0,0,'951a63bd99a49887e4965e6fd6abbc60',27,''),(467,5,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',465,'Nextcloud flyer.pdf',6,5,374008,1606600261,1606600261,0,0,'bb5cc27ba1502fb412460037d8fa336a',27,''),(468,5,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',465,'Readme.md',4,3,136,1606600261,1606600261,0,0,'e1e10b625e1e13c66ee72a2f62e0ff39',27,''),(469,5,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',465,'Welcome to Nextcloud Hub.docx',7,5,25150,1606600261,1606600261,0,0,'ca8f5719f7b84e12cb66acb9caa822c2',27,''),(470,5,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',464,'Nextcloud Manual.pdf',6,5,5745866,1606600261,1606600261,0,0,'e4861b48d51942ab9751981d331fe86f',27,''),(471,5,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',464,'Nextcloud intro.mp4',9,8,3963036,1606600261,1606600261,0,0,'89dd3179f7918aed6c15352bfa79c438',27,''),(472,5,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',464,'Nextcloud.png',11,10,50598,1606600261,1606600261,0,0,'9e303337e25c648576ca86436549b276',27,''),(473,5,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',464,'Photos',2,1,5656463,1606600262,1606600262,0,0,'5fc2c64623804',31,''),(474,5,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',473,'Birdie.jpg',12,10,593508,1606600261,1606600261,0,0,'90dc9ab9c6acc56a407659720958f6b6',27,''),(475,5,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',473,'Frog.jpg',12,10,457744,1606600261,1606600261,0,0,'80d186a52190b4717ebf4534472bd236',27,''),(476,5,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',473,'Gorilla.jpg',12,10,474653,1606600261,1606600261,0,0,'1fe104dc8b9f5aa95d0eb23ede3e30a5',27,''),(477,5,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',473,'Library.jpg',12,10,2170375,1606600261,1606600261,0,0,'297d7ba7953a03386434c7ad67ac88b0',27,''),(478,5,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',473,'Nextcloud community.jpg',12,10,797325,1606600261,1606600261,0,0,'afa13a18b4c3790c27b362cee88ea75d',27,''),(479,5,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',473,'Readme.md',4,3,150,1606600262,1606600262,0,0,'351d0ccd692b39d71854c756ba040d1b',27,''),(480,5,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',473,'Steps.jpg',12,10,567689,1606600262,1606600262,0,0,'9f6c691022fb947d6b2e8c18f0bf0086',27,''),(481,5,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',473,'Toucan.jpg',12,10,167989,1606600262,1606600262,0,0,'455b23ee0d32357a2cab8bd59616fee4',27,''),(482,5,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',473,'Vineyard.jpg',12,10,427030,1606600262,1606600262,0,0,'eef3bca96cbd06f88f9e953edb8ae476',27,''),(483,5,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',464,'Reasons to use Nextcloud.pdf',6,5,791921,1606600262,1606600262,0,0,'3382c2072582a8cf781b34bd1346c760',27,''),(484,2,'appdata_ocvfgh430ow8/dashboard/user3','0e33251c028e1b2954e9a6bdcd8374d9',52,'user3',2,1,0,1606600262,1606600262,0,0,'5fc2c6467b839',31,''),(485,2,'appdata_ocvfgh430ow8/preview/d','731151cc0f89b4704ecd4589110eb425',26,'d',2,1,0,1606600705,1606600705,0,0,'5fc2c805c66e8',31,''),(486,2,'appdata_ocvfgh430ow8/preview/d/1','fa953ec4d429c6fe5346b2503c2896ee',485,'1',2,1,0,1606600268,1606600268,0,0,'5fc2c64c29edb',31,''),(487,2,'appdata_ocvfgh430ow8/preview/d/1/8','560ed4c2b8879b857b5337b3fbe32d02',486,'8',2,1,0,1606600268,1606600268,0,0,'5fc2c64c281ec',31,''),(488,2,'appdata_ocvfgh430ow8/preview/d/1/8/f','3eb8d4d2750477103aecf8d1991a45ae',487,'f',2,1,0,1606600268,1606600268,0,0,'5fc2c64c27713',31,''),(489,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6','92cdce0ee8d7ca5c201577c4262638d6',488,'6',2,1,0,1606600268,1606600268,0,0,'5fc2c64c27204',31,''),(490,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6/5','f4089b584c1e44e598a7f278b855d58c',489,'5',2,1,0,1606600268,1606600268,0,0,'5fc2c64c25ce0',31,''),(491,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6/5/5','3a42634b9e3ac0e44130bb89964e1635',490,'5',2,1,0,1606600268,1606600268,0,0,'5fc2c64c259f8',31,''),(492,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6/5/5/479','b834af5bb85d224540737b6d7738b12d',491,'479',2,1,0,1606600272,1606600272,0,0,'5fc2c64c24df9',31,''),(493,2,'appdata_ocvfgh430ow8/preview/6/e','24de0660e33917d1a19ea890aa81072e',351,'e',2,1,0,1606600268,1606600268,0,0,'5fc2c64c808ea',31,''),(494,2,'appdata_ocvfgh430ow8/preview/6/e/a','e2c156fd39026d1ef01f8ffe6eb19294',493,'a',2,1,0,1606600268,1606600268,0,0,'5fc2c64c80592',31,''),(495,2,'appdata_ocvfgh430ow8/preview/6/e/a/2','7dc23f99a63cc49a5ec5758aa31a8bb7',494,'2',2,1,0,1606600268,1606600268,0,0,'5fc2c64c8027b',31,''),(496,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e','25ad0293e3c2c3b21146ce5da8cf7f2f',495,'e',2,1,0,1606600268,1606600268,0,0,'5fc2c64c7fe82',31,''),(497,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e/f','691cda520876e767c14ed134aa1ba6e6',496,'f',2,1,0,1606600268,1606600268,0,0,'5fc2c64c7df27',31,''),(498,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e/f/7','d0f01ffcb157f324101b588ecf09530f',497,'7',2,1,0,1606600268,1606600268,0,0,'5fc2c64c7d629',31,''),(499,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e/f/7/480','8fdc301766d6eea1d090554906298a02',498,'480',2,1,0,1606600270,1606600270,0,0,'5fc2c64c7c54f',31,''),(500,2,'appdata_ocvfgh430ow8/preview/9/4','8ac3deded58ea7f49e77a3dfc5baf1eb',94,'4',2,1,0,1606600484,1606600484,0,0,'5fc2c805714ed',31,''),(501,2,'appdata_ocvfgh430ow8/preview/9/4/6','dce16ea55e12fd87691394a95c4f9378',500,'6',2,1,0,1606600268,1606600268,0,0,'5fc2c64cb5723',31,''),(502,2,'appdata_ocvfgh430ow8/preview/9/4/6/1','51cb16acbb13ebfca5a001df9a129503',501,'1',2,1,0,1606600268,1606600268,0,0,'5fc2c64cb5447',31,''),(503,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c','7b7f1648ed83139684353df0e55162d9',502,'c',2,1,0,1606600268,1606600268,0,0,'5fc2c64cb50df',31,''),(504,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c/c','adb2607ffc7948fabab9cda37d3ee1fb',503,'c',2,1,0,1606600268,1606600268,0,0,'5fc2c64cb4d74',31,''),(505,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c/c/e','da6b0c947c93cc71aeea1426b5767b3a',504,'e',2,1,0,1606600268,1606600268,0,0,'5fc2c64cb493f',31,''),(506,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c/c/e/481','54533ab2bb292187570846049a81ff7f',505,'481',2,1,0,1606600270,1606600270,0,0,'5fc2c64cb13ba',31,''),(507,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e/f/7/480/1200-1800-max.jpg','8b2b80beed2acc4824499edcba92250a',499,'1200-1800-max.jpg',12,10,425594,1606600268,1606600268,0,0,'1244deffcfb4491c6b2c8edc0765a422',27,''),(508,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c/c/e/481/1600-1067-max.jpg','f441bd1a8af84dcc2efd0cc91bc1a834',506,'1600-1067-max.jpg',12,10,231870,1606600269,1606600269,0,0,'ae72e2edc52b733dc78111f6c0c4a448',27,''),(509,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6/5/5/479/4096-4096-max.png','4a1522ff9c7c3f42e340f12135cb624a',492,'4096-4096-max.png',11,10,33843,1606600269,1606600269,0,0,'612410cd10836812837ca07af5a6b126',27,''),(510,2,'appdata_ocvfgh430ow8/preview/f/7','e5ffc4387faee51e57a52870201ec003',380,'7',2,1,0,1606600269,1606600269,0,0,'5fc2c64d8deb4',31,''),(511,2,'appdata_ocvfgh430ow8/preview/f/7/7','83c5aa6d23961dd0fd800a6c542604da',510,'7',2,1,0,1606600269,1606600269,0,0,'5fc2c64d8d876',31,''),(512,2,'appdata_ocvfgh430ow8/preview/f/7/7/0','e3781f733dc0a485a1c6640393c25190',511,'0',2,1,0,1606600269,1606600269,0,0,'5fc2c64d88e6b',31,''),(513,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b','4d776db8527ab7f3c4a7316ac89393bd',512,'b',2,1,0,1606600269,1606600269,0,0,'5fc2c64d88aee',31,''),(514,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b/6','bb5efb476fece206c1a283914ba15769',513,'6',2,1,0,1606600269,1606600269,0,0,'5fc2c64d88156',31,''),(515,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b/6/2','0f698c7395f8bfada3759ddd8e654e88',514,'2',2,1,0,1606600269,1606600269,0,0,'5fc2c64d87a85',31,''),(516,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b/6/2/482','2cf31f061c5f251293d69f5224647c18',515,'482',2,1,0,1606600271,1606600271,0,0,'5fc2c64d8408d',31,''),(517,2,'appdata_ocvfgh430ow8/preview/9/4/6/1/c/c/e/481/64-64-crop.jpg','3b3bfab673b6727cc94b7573cb4454e9',506,'64-64-crop.jpg',12,10,2942,1606600270,1606600270,0,0,'cfcc67c209d88b44b9d284a43e113c1a',27,''),(518,2,'appdata_ocvfgh430ow8/preview/e','c38dcee8ff2ed6b688060746590f8a63',26,'e',2,1,0,1606600270,1606600270,0,0,'5fc2c64e213eb',31,''),(519,2,'appdata_ocvfgh430ow8/preview/e/8','d2c289f75094052b94eb218ead249571',518,'8',2,1,0,1606600270,1606600270,0,0,'5fc2c64e20788',31,''),(520,2,'appdata_ocvfgh430ow8/preview/e/8/3','f2d1dcc5da1a300efe91e52dc4b62f8e',519,'3',2,1,0,1606600270,1606600270,0,0,'5fc2c64e20366',31,''),(521,2,'appdata_ocvfgh430ow8/preview/e/8/3/6','d1e74677023b5cc51eb5245fde994e68',520,'6',2,1,0,1606600270,1606600270,0,0,'5fc2c64e1f367',31,''),(522,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d','cff80308edabfe32f444888804050ae0',521,'d',2,1,0,1606600270,1606600270,0,0,'5fc2c64e1e3c2',31,''),(523,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d/8','37f6b8cfb71f8db0ba7778e576fbd612',522,'8',2,1,0,1606600270,1606600270,0,0,'5fc2c64e1ba19',31,''),(524,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d/8/1','6d3b08ddcb4e656f24b5610d1b17fd60',523,'1',2,1,0,1606600270,1606600270,0,0,'5fc2c64e1966c',31,''),(525,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d/8/1/466','a9ec923caaf5f1c291cd9e1a1f8002b2',524,'466',2,1,0,1606600273,1606600273,0,0,'5fc2c64e14efb',31,''),(526,2,'appdata_ocvfgh430ow8/preview/6/e/a/2/e/f/7/480/64-64-crop.jpg','cde5cf058e133f33e4a9c2fba12d20ab',499,'64-64-crop.jpg',12,10,1792,1606600270,1606600270,0,0,'5f2cbcc0d70d3bb04949150794091b91',27,''),(527,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b/6/2/482/1920-1281-max.jpg','0a2688cd749d8438570d528e9bef11d8',516,'1920-1281-max.jpg',12,10,428184,1606600270,1606600270,0,0,'20509421a50b89d8758d22528474b9c2',27,''),(528,2,'appdata_ocvfgh430ow8/preview/f/7/7/0/b/6/2/482/64-64-crop.jpg','8e7ba261d64eb9760b560a4a11589fdc',516,'64-64-crop.jpg',12,10,2737,1606600271,1606600271,0,0,'23ac06f2d7a2c91351a22f6e28d63c6b',27,''),(529,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d/8/1/466/4096-4096-max.png','2406c98fe72f5cef15435ded2579685f',525,'4096-4096-max.png',11,10,233423,1606600271,1606600271,0,0,'e4ba1611233b0e19790f3eec76733161',27,''),(530,2,'appdata_ocvfgh430ow8/preview/d/1/8/f/6/5/5/479/64-64-crop.png','ebf9e533beb451bf25a35367a6b915b9',492,'64-64-crop.png',11,10,868,1606600272,1606600272,0,0,'f8be9380c414605fc2ce0b6c9f693b64',27,''),(531,2,'appdata_ocvfgh430ow8/preview/e/8/3/6/d/8/1/466/64-64-crop.png','11d07cf64ca27084efd3ad6b1c35c9d4',525,'64-64-crop.png',11,10,5083,1606600273,1606600273,0,0,'7d6693dce317836436cde2f9535563e5',27,''),(532,2,'appdata_ocvfgh430ow8/avatar/user3/avatar.117.png','dced227eb016890702b3d71b884ebcf7',296,'avatar.117.png',11,10,1056,1606600291,1606600291,0,0,'8c3a0886b43d7eb4ff1340ab9981ef03',27,''),(533,6,'cache','0fea6a13c52b4d4725368f24b045ca84',304,'cache',2,1,0,1606600476,1606600476,0,0,'5fc2c71c40787',31,''),(534,6,'files','45b963397aa40d4a0063e0d85e4fe7a1',304,'files',2,1,16608273,1606600477,1606600477,0,0,'5fc2c71d332c5',31,''),(535,6,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',534,'Documents',2,1,400389,1606600476,1606600476,0,0,'5fc2c71c80587',31,''),(536,6,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',535,'Example.md',4,3,1095,1606600476,1606600476,0,0,'5797d5681e7a51e04ea20b0ae1ddf382',27,''),(537,6,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',535,'Nextcloud flyer.pdf',6,5,374008,1606600476,1606600476,0,0,'0268e49fbdab916a717ef8d073637b9f',27,''),(538,6,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',535,'Readme.md',4,3,136,1606600476,1606600476,0,0,'e42944038ef888f7179758f0a7576dba',27,''),(539,6,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',535,'Welcome to Nextcloud Hub.docx',7,5,25150,1606600476,1606600476,0,0,'a2968c2d064e4001cb2a37a6acda12f8',27,''),(540,6,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',534,'Nextcloud Manual.pdf',6,5,5745866,1606600476,1606600476,0,0,'2031b306e126bed294f98974b5c8fcfe',27,''),(541,6,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',534,'Nextcloud intro.mp4',9,8,3963036,1606600476,1606600476,0,0,'a641dbab8b921329d6dd4f110df4a04b',27,''),(542,6,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',534,'Nextcloud.png',11,10,50598,1606600476,1606600476,0,0,'3d46f5afd39c24dbf5a0a97d79299986',27,''),(543,6,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',534,'Photos',2,1,5656463,1606600477,1606600477,0,0,'5fc2c71d266d8',31,''),(544,6,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',543,'Birdie.jpg',12,10,593508,1606600476,1606600476,0,0,'fc915b267bfe2698381b45f33be057f5',27,''),(545,6,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',543,'Frog.jpg',12,10,457744,1606600476,1606600476,0,0,'0693c54bc637331a4de3f17a9250e313',27,''),(546,6,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',543,'Gorilla.jpg',12,10,474653,1606600476,1606600476,0,0,'63ba36ed46526a8937745c06a52df5dc',27,''),(547,6,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',543,'Library.jpg',12,10,2170375,1606600476,1606600476,0,0,'944e12b967f7a145c6a71431c6598390',27,''),(548,6,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',543,'Nextcloud community.jpg',12,10,797325,1606600476,1606600476,0,0,'2f6fd598d4f43aeec730da464be36cc8',27,''),(549,6,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',543,'Readme.md',4,3,150,1606600477,1606600477,0,0,'e36d4811c812009e110c0ec8bc8f8ef1',27,''),(550,6,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',543,'Steps.jpg',12,10,567689,1606600477,1606600477,0,0,'d1c97390f73805b8e5ba3b865347563f',27,''),(551,6,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',543,'Toucan.jpg',12,10,167989,1606600477,1606600477,0,0,'1182a96ea966600154ae9537e87ac2cf',27,''),(552,6,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',543,'Vineyard.jpg',12,10,427030,1606600477,1606600477,0,0,'070621539ffa82894d65e8c22087df5b',27,''),(553,6,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',534,'Reasons to use Nextcloud.pdf',6,5,791921,1606600477,1606600477,0,0,'48cf99929cd44a6ed622aa5fa37086c8',27,''),(554,2,'appdata_ocvfgh430ow8/dashboard/user4','1f6a031e015f05a16fc17f121de6d184',52,'user4',2,1,0,1606600477,1606600477,0,0,'5fc2c71d962ae',31,''),(555,2,'appdata_ocvfgh430ow8/preview/7','8f7bad23037777c8373db50c66c246ad',26,'7',2,1,0,1606600483,1606600483,0,0,'5fc2c723ae10c',31,''),(556,2,'appdata_ocvfgh430ow8/preview/7/f','9de49ac822b6e16d22d12f62f6a62572',555,'f',2,1,0,1606600483,1606600483,0,0,'5fc2c723a9b2d',31,''),(557,2,'appdata_ocvfgh430ow8/preview/7/f/2','f4aef6f107fb99a074aa36a00afaa6fa',556,'2',2,1,0,1606600483,1606600483,0,0,'5fc2c723a96fc',31,''),(558,2,'appdata_ocvfgh430ow8/preview/7/f/2/4','0343e9c3b8ac1a25f2b695b673d0ae0a',557,'4',2,1,0,1606600483,1606600483,0,0,'5fc2c723a8f7d',31,''),(559,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d','b6db701f33a91b19376502bf82cd9ce4',558,'d',2,1,0,1606600483,1606600483,0,0,'5fc2c723a7cfc',31,''),(560,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d/2','2b3e575761f5664b9dfba4eac9e426e2',559,'2',2,1,0,1606600483,1606600483,0,0,'5fc2c723a710a',31,''),(561,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d/2/4','0d084acd771404950cbe3d19a70a8130',560,'4',2,1,0,1606600483,1606600483,0,0,'5fc2c723a5879',31,''),(562,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d/2/4/551','488443ece5dc8a388cd4091e9a7ccded',561,'551',2,1,0,1606600484,1606600484,0,0,'5fc2c723a4a1d',31,''),(563,2,'appdata_ocvfgh430ow8/preview/0/1','16b665a958293233b7886f3ed128b888',446,'1',2,1,0,1606600483,1606600483,0,0,'5fc2c723e2647',31,''),(564,2,'appdata_ocvfgh430ow8/preview/0/1/f','900d665822f55faf197c558a3d383bed',563,'f',2,1,0,1606600483,1606600483,0,0,'5fc2c723e1f5e',31,''),(565,2,'appdata_ocvfgh430ow8/preview/0/1/f/7','810b3f3847a80e0a8efb227b286df01f',564,'7',2,1,0,1606600483,1606600483,0,0,'5fc2c723e1ae1',31,''),(566,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8','e9a21ec5646e5e073f0dbaaced17fc3b',565,'8',2,1,0,1606600483,1606600483,0,0,'5fc2c723e0541',31,''),(567,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8/b','d8846b7ce183910b239e05695236ab66',566,'b',2,1,0,1606600483,1606600483,0,0,'5fc2c723df350',31,''),(568,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8/b/e','c0004aa6e173018f5459da588c39d205',567,'e',2,1,0,1606600483,1606600483,0,0,'5fc2c723deba3',31,''),(569,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8/b/e/550','6e5c0b0663538e19ec105a30ef8120bd',568,'550',2,1,0,1606600485,1606600485,0,0,'5fc2c723dbf88',31,''),(570,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d/2/4/551/1600-1067-max.jpg','3fa3ef5f8e4159d69a680fc17cec1482',562,'1600-1067-max.jpg',12,10,231870,1606600484,1606600484,0,0,'ea312d1989b03181e51e95e7f275ea31',27,''),(571,2,'appdata_ocvfgh430ow8/preview/c','c2ac368f15681823d6c9154ae64ea4d3',26,'c',2,1,0,1606600706,1606600706,0,0,'5fc2c80458089',31,''),(572,2,'appdata_ocvfgh430ow8/preview/c/c','e0550092b6b224851edbda26e6b76f4d',571,'c',2,1,0,1606600484,1606600484,0,0,'5fc2c7243022a',31,''),(573,2,'appdata_ocvfgh430ow8/preview/c/c/b','843d89a9c9da7a6f096f70185ce34e52',572,'b',2,1,0,1606600484,1606600484,0,0,'5fc2c7242feb7',31,''),(574,2,'appdata_ocvfgh430ow8/preview/c/c/b/1','604a3456f290c9b4e794c7eff2a65211',573,'1',2,1,0,1606600484,1606600484,0,0,'5fc2c7242fb2c',31,''),(575,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d','3514a494b6d3c77e5bb2bf108c23faeb',574,'d',2,1,0,1606600484,1606600484,0,0,'5fc2c7242ecfc',31,''),(576,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d/4','e664544b04daccab9f0c4f0da4fb5031',575,'4',2,1,0,1606600484,1606600484,0,0,'5fc2c7242de6b',31,''),(577,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d/4/5','0d73c8f4304cd5fbae3d6f4526a55f37',576,'5',2,1,0,1606600484,1606600484,0,0,'5fc2c7242d600',31,''),(578,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d/4/5/549','62469f3455700b18943832e31ba96a63',577,'549',2,1,0,1606600488,1606600488,0,0,'5fc2c724250f5',31,''),(579,2,'appdata_ocvfgh430ow8/preview/9/4/c','8036a2b0af931c978f8d55f8a726d742',500,'c',2,1,0,1606600484,1606600484,0,0,'5fc2c7245b82d',31,''),(580,2,'appdata_ocvfgh430ow8/preview/9/4/c/7','f5a3418128ec132e99fae309c4c5812c',579,'7',2,1,0,1606600484,1606600484,0,0,'5fc2c7245ade8',31,''),(581,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b','16c416260c522a7198795a068527a200',580,'b',2,1,0,1606600484,1606600484,0,0,'5fc2c7245aadd',31,''),(582,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b/b','8fd2c45a2d7c94cde2e428b80a330349',581,'b',2,1,0,1606600484,1606600484,0,0,'5fc2c72459e09',31,''),(583,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b/b/5','1ef57b75e548258e51132e47819d52cb',582,'5',2,1,0,1606600484,1606600484,0,0,'5fc2c72457d27',31,''),(584,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b/b/5/552','5305da0ce1362eea309d390103a68506',583,'552',2,1,0,1606600486,1606600486,0,0,'5fc2c72456564',31,''),(585,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8/b/e/550/1200-1800-max.jpg','cbef05835626bf2a8cc003acb4e18d62',569,'1200-1800-max.jpg',12,10,425594,1606600484,1606600484,0,0,'5b6bf5fedf0538ff3a7a5449e7d1b4ca',27,''),(586,2,'appdata_ocvfgh430ow8/preview/7/f/2/4/d/2/4/551/64-64-crop.jpg','8ceb25ae95df4e6c863f8972e61edf8b',562,'64-64-crop.jpg',12,10,2942,1606600484,1606600484,0,0,'d996a7919d598ce2f2c1a37ffec3c321',27,''),(587,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b/b/5/552/1920-1281-max.jpg','92e56b04acf555f1385790fb782775bd',584,'1920-1281-max.jpg',12,10,428184,1606600485,1606600485,0,0,'556edd1bc2152af0810c0b82ecc36e00',27,''),(588,2,'appdata_ocvfgh430ow8/preview/0/1/f/7/8/b/e/550/64-64-crop.jpg','c3ebdc48665c1e1f20f08c8ffa00722d',569,'64-64-crop.jpg',12,10,1792,1606600485,1606600485,0,0,'92f5e9ce56c32754fc1c4b51328695e7',27,''),(589,2,'appdata_ocvfgh430ow8/preview/6/5','535ee8063e43d96cd82e214372c43b93',351,'5',2,1,0,1606600485,1606600485,0,0,'5fc2c725b6101',31,''),(590,2,'appdata_ocvfgh430ow8/preview/6/5/6','bc33ccee51805053e855952089fb55bd',589,'6',2,1,0,1606600485,1606600485,0,0,'5fc2c725b486e',31,''),(591,2,'appdata_ocvfgh430ow8/preview/6/5/6/5','0b450119f8ccaf85b1dc1e925657d72c',590,'5',2,1,0,1606600485,1606600485,0,0,'5fc2c7259b236',31,''),(592,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8','4e8a05ae9b6913d709b49b96bf5016be',591,'8',2,1,0,1606600485,1606600485,0,0,'5fc2c7259401c',31,''),(593,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8/f','3977c4094bfa08c95c3087daf9223ffa',592,'f',2,1,0,1606600485,1606600485,0,0,'5fc2c72593760',31,''),(594,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8/f/d','3ac61832f1b9f99c61d932589eb6bb8c',593,'d',2,1,0,1606600485,1606600485,0,0,'5fc2c7258f18a',31,''),(595,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8/f/d/536','2ad07cdc1e1ec6bfa74c4188729a95ae',594,'536',2,1,0,1606600488,1606600488,0,0,'5fc2c7258c476',31,''),(596,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d/4/5/549/4096-4096-max.png','d3814155aad4709389a2a29aed0125db',578,'4096-4096-max.png',11,10,33843,1606600485,1606600485,0,0,'98724c7a9bee0b35733c6e8cffbf835b',27,''),(597,2,'appdata_ocvfgh430ow8/preview/9/4/c/7/b/b/5/552/64-64-crop.jpg','f7121eb3847e054c88eaa0c11b30790f',584,'64-64-crop.jpg',12,10,2737,1606600486,1606600486,0,0,'4c8e3793748173e25a31a4518a1cfced',27,''),(598,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8/f/d/536/4096-4096-max.png','c4cd22e5ae8cd4cbf3652e6732230cb0',595,'4096-4096-max.png',11,10,233423,1606600487,1606600487,0,0,'19ca9c837e300d44967e7278ef2b474b',27,''),(599,2,'appdata_ocvfgh430ow8/preview/c/c/b/1/d/4/5/549/64-64-crop.png','8f9dcdd4db8df7d17aacb181a3999592',578,'64-64-crop.png',11,10,868,1606600488,1606600488,0,0,'a8c0be56280d101472092bc060ba345d',27,''),(600,2,'appdata_ocvfgh430ow8/preview/6/5/6/5/8/f/d/536/64-64-crop.png','9d929f14f743ae2b4dfe2a1af636ef93',595,'64-64-crop.png',11,10,5083,1606600488,1606600488,0,0,'594e0002ecbb10d8519ce9d9b31007eb',27,''),(601,2,'appdata_ocvfgh430ow8/avatar/user4/avatar.117.png','1c87d19af15ae5ffffc54ceafe800d12',301,'avatar.117.png',11,10,1017,1606600509,1606600509,0,0,'902d566b606ef2f20177c686721a7b43',27,''),(602,7,'cache','0fea6a13c52b4d4725368f24b045ca84',309,'cache',2,1,0,1606600697,1606600697,0,0,'5fc2c7f912101',31,''),(603,7,'files','45b963397aa40d4a0063e0d85e4fe7a1',309,'files',2,1,16608273,1606600698,1606600697,0,0,'5fc2c7fa02b3a',31,''),(604,7,'files/Documents','0ad78ba05b6961d92f7970b2b3922eca',603,'Documents',2,1,400389,1606600697,1606600697,0,0,'5fc2c7f94a3f3',31,''),(605,7,'files/Documents/Example.md','efe0853470dd0663db34818b444328dd',604,'Example.md',4,3,1095,1606600697,1606600697,0,0,'0a13d15f00182d1f0f919bf44a63e2e2',27,''),(606,7,'files/Documents/Nextcloud flyer.pdf','9c5b4dc7182a7435767708ac3e8d126c',604,'Nextcloud flyer.pdf',6,5,374008,1606600697,1606600697,0,0,'fbd50b7f3a718fa5adfbdd29de86d690',27,''),(607,7,'files/Documents/Readme.md','51ec9e44357d147dd5c212b850f6910f',604,'Readme.md',4,3,136,1606600697,1606600697,0,0,'c2325dfea6b3c3c916dd5928ec0f31dd',27,''),(608,7,'files/Documents/Welcome to Nextcloud Hub.docx','b44cb84f22ceddc4ca2826e026038091',604,'Welcome to Nextcloud Hub.docx',7,5,25150,1606600697,1606600697,0,0,'f27d2a5d2e5d86c85a4b2836bbdfd715',27,''),(609,7,'files/Nextcloud Manual.pdf','2bc58a43566a8edde804a4a97a9c7469',603,'Nextcloud Manual.pdf',6,5,5745866,1606600697,1606600697,0,0,'1af59597bc2394a72395596be675e1bf',27,''),(610,7,'files/Nextcloud intro.mp4','e4919345bcc87d4585a5525daaad99c0',603,'Nextcloud intro.mp4',9,8,3963036,1606600697,1606600697,0,0,'5d277255a4b437ed8d2e624dde7044b7',27,''),(611,7,'files/Nextcloud.png','2bcc0ff06465ef1bfc4a868efde1e485',603,'Nextcloud.png',11,10,50598,1606600697,1606600697,0,0,'c46e475f438d2dd8e27dc0322370f327',27,''),(612,7,'files/Photos','d01bb67e7b71dd49fd06bad922f521c9',603,'Photos',2,1,5656463,1606600697,1606600697,0,0,'5fc2c7f9ea321',31,''),(613,7,'files/Photos/Birdie.jpg','cd31c7af3a0ec6e15782b5edd2774549',612,'Birdie.jpg',12,10,593508,1606600697,1606600697,0,0,'507ebe8e58bb8d75d901cc6213859477',27,''),(614,7,'files/Photos/Frog.jpg','d6219add1a9129ed0c1513af985e2081',612,'Frog.jpg',12,10,457744,1606600697,1606600697,0,0,'c62171c84a33bd0690a068fe2a53f31f',27,''),(615,7,'files/Photos/Gorilla.jpg','6d5f5956d8ff76a5f290cebb56402789',612,'Gorilla.jpg',12,10,474653,1606600697,1606600697,0,0,'b4dd33ba6e02d4259abc889f940975bf',27,''),(616,7,'files/Photos/Library.jpg','0b785d02a19fc00979f82f6b54a05805',612,'Library.jpg',12,10,2170375,1606600697,1606600697,0,0,'447e50649e1f89393a83bb8f10f4299f',27,''),(617,7,'files/Photos/Nextcloud community.jpg','b9b3caef83a2a1c20354b98df6bcd9d0',612,'Nextcloud community.jpg',12,10,797325,1606600697,1606600697,0,0,'54112b7b3bbe24572a16543458475a83',27,''),(618,7,'files/Photos/Readme.md','2a4ac36bb841d25d06d164f291ee97db',612,'Readme.md',4,3,150,1606600697,1606600697,0,0,'2018bf740a102d011e6a25cb1ed3fa83',27,''),(619,7,'files/Photos/Steps.jpg','7b2ca8d05bbad97e00cbf5833d43e912',612,'Steps.jpg',12,10,567689,1606600697,1606600697,0,0,'a4f97dd439923c17a35c2f0321bc8d87',27,''),(620,7,'files/Photos/Toucan.jpg','681d1e78f46a233e12ecfa722cbc2aef',612,'Toucan.jpg',12,10,167989,1606600697,1606600697,0,0,'f344ab18ae70a23cab92176def7e9b4e',27,''),(621,7,'files/Photos/Vineyard.jpg','14e5f2670b0817614acd52269d971db8',612,'Vineyard.jpg',12,10,427030,1606600697,1606600697,0,0,'bd2fa5c820a3bd51af75a275b67e7116',27,''),(622,7,'files/Reasons to use Nextcloud.pdf','418b19142a61c5bef296ea56ee144ca3',603,'Reasons to use Nextcloud.pdf',6,5,791921,1606600698,1606600698,0,0,'b34aff31207c2e54d291884f4dbdc552',27,''),(623,2,'appdata_ocvfgh430ow8/dashboard/user5','b469a133dbe8703bf6e7257b68d752ca',52,'user5',2,1,0,1606600698,1606600698,0,0,'5fc2c7fa5c089',31,''),(624,2,'appdata_ocvfgh430ow8/preview/d/c','44a65889ac007dce055dc3e1db818728',485,'c',2,1,0,1606600705,1606600705,0,0,'5fc2c80207cf8',31,''),(625,2,'appdata_ocvfgh430ow8/preview/d/c/8','5d06bdef731fb3aeabcd7eaa31ee9014',624,'8',2,1,0,1606600705,1606600705,0,0,'5fc2c80206a08',31,''),(626,2,'appdata_ocvfgh430ow8/preview/d/c/8/2','e45fa48a284555d6a4b755d7cac44812',625,'2',2,1,0,1606600705,1606600705,0,0,'5fc2c8020664b',31,''),(627,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d','9351b28ec39a0dc5bb65ba96ba8f7632',626,'d',2,1,0,1606600705,1606600705,0,0,'5fc2c8020605b',31,''),(628,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d/6','16a318c5baf09e5923814841158e4f03',627,'6',2,1,0,1606600705,1606600705,0,0,'5fc2c80204f54',31,''),(629,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d/6/3','ca99ff47c3c6ec4c26564de5e9f7fa77',628,'3',2,1,0,1606600705,1606600705,0,0,'5fc2c8020261d',31,''),(630,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d/6/3/607','8540a1f51cfd95eb6fc06c707951eb15',629,'607',2,1,0,1606600711,1606600711,0,0,'5fc2c8020052b',31,''),(631,2,'appdata_ocvfgh430ow8/preview/c/3','ae691a81509f1be74f1ff2bfd31361b7',571,'3',2,1,0,1606600706,1606600706,0,0,'5fc2c8029b3bf',31,''),(632,2,'appdata_ocvfgh430ow8/preview/c/3/6','fb43fb262db6e8ab851751e953ca8cac',631,'6',2,1,0,1606600706,1606600706,0,0,'5fc2c80299939',31,''),(633,2,'appdata_ocvfgh430ow8/preview/c/3/6/1','bd369b5aa472e14433bb0ac3c2d5c95c',632,'1',2,1,0,1606600706,1606600706,0,0,'5fc2c802996c8',31,''),(634,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b','6ad757788eb4596e686784b6d081c370',633,'b',2,1,0,1606600706,1606600706,0,0,'5fc2c802993ed',31,''),(635,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b/c','b0968eae1d8c1da706bbe177871b8af7',634,'c',2,1,0,1606600706,1606600706,0,0,'5fc2c80298418',31,''),(636,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b/c/7','99f9cfa9e3d7dd8c742410b69e79892d',635,'7',2,1,0,1606600706,1606600706,0,0,'5fc2c802980a0',31,''),(637,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b/c/7/605','5d82d01067de7085fd6a1c71bef555df',636,'605',2,1,0,1606600712,1606600712,0,0,'5fc2c80295779',31,''),(638,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d/6/3/607/4096-4096-max.png','afcc52a1c378fb23e2f923298d7c92af',630,'4096-4096-max.png',11,10,33851,1606600707,1606600707,0,0,'1ba073bf462d5a44d54e5046960951e6',27,''),(639,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b/c/7/605/4096-4096-max.png','50180150090d7628aaab4e65078b88af',637,'4096-4096-max.png',11,10,233423,1606600710,1606600710,0,0,'02a51fa9a95639aeeb18ce364a79c00e',27,''),(640,2,'appdata_ocvfgh430ow8/preview/d/c/8/2/d/6/3/607/64-64-crop.png','1c668acf79469193fe45fe3fe5aaaf4f',630,'64-64-crop.png',11,10,868,1606600711,1606600711,0,0,'13f4055519a2ab8756a04ad399d29d28',27,''),(641,2,'appdata_ocvfgh430ow8/preview/c/3/6/1/b/c/7/605/64-64-crop.png','ca6b658f6cdb3075971ddf2d707f5b32',637,'64-64-crop.png',11,10,5083,1606600712,1606600712,0,0,'f52be013d822ecec63b04a3c7f3a00b7',27,''),(642,2,'appdata_ocvfgh430ow8/avatar/user5/avatar.117.png','812d3a627c49b411f82b9646cfd1e617',306,'avatar.117.png',11,10,1058,1606600746,1606600746,0,0,'fa205283ec627a9fec50c74e9ac669dc',27,''),(643,2,'appdata_ocvfgh430ow8/avatar/user/avatar.109.png','e97664f0e8262eed45206ad7357cf45e',55,'avatar.109.png',11,10,981,1606602620,1606602620,0,0,'a26599c08ba627195b157d5f6407e77b',27,''),(644,2,'appdata_ocvfgh430ow8/css/support','9b188b3a44480b451f8e1070f1b605b4',32,'support',2,1,0,1606602700,1606602700,0,0,'5fc2cfcc13b41',31,''),(645,2,'appdata_ocvfgh430ow8/css/support/1980-19e7-support.css','8699b8146a7136c5726f5c0b76ceaafd',644,'1980-19e7-support.css',16,3,1904,1606602700,1606602700,0,0,'8ff2ee6215ae764a3726431f083555f5',27,''),(646,2,'appdata_ocvfgh430ow8/css/support/1980-19e7-support.css.deps','eeaa3a842e7d90a3d8c1f9c45d7065ba',644,'1980-19e7-support.css.deps',14,5,227,1606602700,1606602700,0,0,'e4b1d782f2a6d2280d43e1080b0e48c5',27,''),(647,2,'appdata_ocvfgh430ow8/css/support/1980-19e7-support.css.gzip','6369f151073ad06fb63728f541d1f539',644,'1980-19e7-support.css.gzip',15,5,786,1606602700,1606602700,0,0,'9ab07e1bea04f11ba978b2a8b7e3f7aa',27,''),(648,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-admin.css','968d3cf52027998d8b6cea829c1fb30c',198,'c5f2-19e7-settings-admin.css',16,3,45,1606602707,1606602707,0,0,'274e63980ea3eb4d06d6a0a74d6fb647',27,''),(649,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-admin.css.deps','a9a402d8f5d0311155506095822092fb',198,'c5f2-19e7-settings-admin.css.deps',14,5,247,1606602707,1606602707,0,0,'6aafeecf8888010d1cdd57ae75deb2f2',27,''),(650,2,'appdata_ocvfgh430ow8/css/federatedfilesharing/c5f2-19e7-settings-admin.css.gzip','2dbe92350df9607f44bc625980d6bbf2',198,'c5f2-19e7-settings-admin.css.gzip',15,5,63,1606602707,1606602707,0,0,'5343dda4b0b21f9ac1c835e9823bc938',27,''),(651,2,'appdata_ocvfgh430ow8/dav-photocache','24adc44110d1cd8c8a2d638aea3f0f92',10,'dav-photocache',2,1,0,1606602802,1606602802,0,0,'5fc2d0319611f',31,''),(652,2,'appdata_ocvfgh430ow8/dav-photocache/c61fffd9d5fee7e52975e6d21d5c6886','ae9c92e278d005dac40fe6563ee27fc6',651,'c61fffd9d5fee7e52975e6d21d5c6886',2,1,0,1606602802,1606602802,0,0,'5fc2d0319a5fb',31,''),(653,2,'appdata_ocvfgh430ow8/dav-photocache/c61fffd9d5fee7e52975e6d21d5c6886/photo.png','d23db37936df165c52609f0cf8d74829',652,'photo.png',11,10,12461,1606602801,1606602801,0,0,'313b57af3378ae7c74f447241246f018',27,''),(654,2,'appdata_ocvfgh430ow8/dav-photocache/3a3c5dca20e69dd71acbe38d64c51b0f','f21b841032f278a1f6c7e39ffe9c6810',651,'3a3c5dca20e69dd71acbe38d64c51b0f',2,1,0,1606602802,1606602802,0,0,'5fc2d031abe70',31,''),(655,2,'appdata_ocvfgh430ow8/dav-photocache/3a3c5dca20e69dd71acbe38d64c51b0f/photo.png','4a357ec532545c4cf54d3fc5be24eddd',654,'photo.png',11,10,12628,1606602801,1606602801,0,0,'5b299a6a89f2a5b744b577561f5b9a74',27,''),(656,2,'appdata_ocvfgh430ow8/dav-photocache/d66c4684a94032572af502fed4aeb5e1','06482a159d63cde354adb1e7d93152be',651,'d66c4684a94032572af502fed4aeb5e1',2,1,0,1606602802,1606602802,0,0,'5fc2d031cd60e',31,''),(657,2,'appdata_ocvfgh430ow8/dav-photocache/d66c4684a94032572af502fed4aeb5e1/photo.png','b08e316a5c7cf85e290f0ef12781a8af',656,'photo.png',11,10,12674,1606602801,1606602801,0,0,'4ec5d5d019e5e04898cd843a36eb5f33',27,''),(658,2,'appdata_ocvfgh430ow8/dav-photocache/9f4a7e0a1abcc55521b40576f098e23f','394938dff51773aef010f1a2b8076c3d',651,'9f4a7e0a1abcc55521b40576f098e23f',2,1,0,1606602802,1606602802,0,0,'5fc2d031f193c',31,''),(659,2,'appdata_ocvfgh430ow8/dav-photocache/c61fffd9d5fee7e52975e6d21d5c6886/photo.32.png','c8470f475346fbdca152b6e8f6730ae6',652,'photo.32.png',11,10,345,1606602802,1606602802,0,0,'baebc7beedd1b2f1644cd1d2f250c3ff',27,''),(660,2,'appdata_ocvfgh430ow8/dav-photocache/9f4a7e0a1abcc55521b40576f098e23f/photo.png','c110e5771aa21f25ab8be9f8909ccb36',658,'photo.png',11,10,12280,1606602802,1606602802,0,0,'b8b841286dda78876716e56bc8631c24',27,''),(661,2,'appdata_ocvfgh430ow8/dav-photocache/3a3c5dca20e69dd71acbe38d64c51b0f/photo.32.png','4d981f9932dca435afcf5a7e0d6b901e',654,'photo.32.png',11,10,332,1606602802,1606602802,0,0,'1b90641bdd0b8272c0faad3e66ed69e3',27,''),(662,2,'appdata_ocvfgh430ow8/dav-photocache/7e764f36dd9d0dd4ce248bed613fbae6','01e5e79d5ac923dc8de7631989fe0462',651,'7e764f36dd9d0dd4ce248bed613fbae6',2,1,0,1606602802,1606602802,0,0,'5fc2d0322a542',31,''),(663,2,'appdata_ocvfgh430ow8/dav-photocache/7e764f36dd9d0dd4ce248bed613fbae6/photo.png','92b082deaca7a4e81cf0239738fd3f5b',662,'photo.png',11,10,12480,1606602802,1606602802,0,0,'b82959d3d28b712cf300e832ddb1b4f1',27,''),(664,2,'appdata_ocvfgh430ow8/dav-photocache/d66c4684a94032572af502fed4aeb5e1/photo.32.png','4277d3a52deaaae1cf242958678812f8',656,'photo.32.png',11,10,341,1606602802,1606602802,0,0,'3e4888754cd2be6cb62989f0978879ac',27,''),(665,2,'appdata_ocvfgh430ow8/dav-photocache/9f4a7e0a1abcc55521b40576f098e23f/photo.32.png','a056307c4567a1c851cb3f6f609a9aea',658,'photo.32.png',11,10,335,1606602802,1606602802,0,0,'d545ab0f042b1896f886a61f26a9d8d7',27,''),(666,2,'appdata_ocvfgh430ow8/dav-photocache/7e764f36dd9d0dd4ce248bed613fbae6/photo.32.png','7751a7c63a6d197629eebca94148f014',662,'photo.32.png',11,10,339,1606602802,1606602802,0,0,'c4b03a1005e3465fadb232077deadc5d',27,''),(667,2,'appdata_ocvfgh430ow8/avatar/user/avatar.24.png','afe6440bb3e7796fc6b74ff1c4bdab18',55,'avatar.24.png',11,10,210,1606602826,1606602826,0,0,'73342030c5a65fca2fbf1d53d53f086a',27,''),(668,2,'appdata_ocvfgh430ow8/identityproof','85ac96b6869cca5101423d2f8328c6a6',10,'identityproof',2,1,0,1606602858,1606602858,0,0,'5fc2d06a2bd58',31,''),(669,2,'appdata_ocvfgh430ow8/identityproof/user-user','67dfb31a1e97829ef25f90b562925eff',668,'user-user',2,1,0,1606602858,1606602858,0,0,'5fc2d06a2f56b',31,''),(670,2,'appdata_ocvfgh430ow8/identityproof/user-user/private','17997b46fef9ea25755fdf6c698cfecc',669,'private',14,5,3588,1606602858,1606602858,0,0,'0f8553b44ea8309d3bae4342ab16e741',27,''),(671,2,'appdata_ocvfgh430ow8/identityproof/user-user/public','86f0ac46de73555de49a91372e8ec06e',669,'public',14,5,451,1606602858,1606602858,0,0,'41e10aab1ce9e89f68473fb352f0de8d',27,'');
/*!40000 ALTER TABLE `oc_filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filecache_extended`
--

DROP TABLE IF EXISTS `oc_filecache_extended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filecache_extended` (
  `fileid` bigint(20) unsigned NOT NULL,
  `metadata_etag` varchar(40) COLLATE utf8mb4_bin DEFAULT NULL,
  `creation_time` bigint(20) NOT NULL DEFAULT '0',
  `upload_time` bigint(20) NOT NULL DEFAULT '0',
  UNIQUE KEY `fce_fileid_idx` (`fileid`),
  KEY `fce_ctime_idx` (`creation_time`),
  KEY `fce_utime_idx` (`upload_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filecache_extended`
--

LOCK TABLES `oc_filecache_extended` WRITE;
/*!40000 ALTER TABLE `oc_filecache_extended` DISABLE KEYS */;
INSERT INTO `oc_filecache_extended` VALUES (172,NULL,0,1606580308);
/*!40000 ALTER TABLE `oc_filecache_extended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_files_trash`
--

DROP TABLE IF EXISTS `oc_files_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_files_trash` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(250) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `timestamp` varchar(12) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `location` varchar(512) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_files_trash`
--

LOCK TABLES `oc_files_trash` WRITE;
/*!40000 ALTER TABLE `oc_files_trash` DISABLE KEYS */;
INSERT INTO `oc_files_trash` VALUES (1,'Documents','user','1606589485','.',NULL,NULL),(2,'Photos','user','1606589485','.',NULL,NULL),(3,'Nextcloud intro.mp4','user','1606589485','.',NULL,NULL),(4,'Nextcloud.png','user','1606589485','.',NULL,NULL),(5,'Nextcloud Manual.pdf','user','1606589486','.',NULL,NULL),(6,'Readme.md','user','1606589486','.',NULL,NULL),(7,'Reasons to use Nextcloud.pdf','user','1606589486','.',NULL,NULL);
/*!40000 ALTER TABLE `oc_files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_checks`
--

DROP TABLE IF EXISTS `oc_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `operator` varchar(16) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `value` longtext COLLATE utf8mb4_bin,
  `hash` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_checks`
--

LOCK TABLES `oc_flow_checks` WRITE;
/*!40000 ALTER TABLE `oc_flow_checks` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations`
--

DROP TABLE IF EXISTS `oc_flow_operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `name` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `checks` longtext COLLATE utf8mb4_bin,
  `operation` longtext COLLATE utf8mb4_bin,
  `entity` varchar(256) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `events` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations`
--

LOCK TABLES `oc_flow_operations` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_flow_operations_scope`
--

DROP TABLE IF EXISTS `oc_flow_operations_scope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_flow_operations_scope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `operation_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `value` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flow_unique_scope` (`operation_id`,`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_flow_operations_scope`
--

LOCK TABLES `oc_flow_operations_scope` WRITE;
/*!40000 ALTER TABLE `oc_flow_operations_scope` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_flow_operations_scope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_admin`
--

DROP TABLE IF EXISTS `oc_group_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_group_admin` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `group_admin_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_admin`
--

LOCK TABLES `oc_group_admin` WRITE;
/*!40000 ALTER TABLE `oc_group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_group_user`
--

DROP TABLE IF EXISTS `oc_group_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_group_user` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`gid`,`uid`),
  KEY `gu_uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_group_user`
--

LOCK TABLES `oc_group_user` WRITE;
/*!40000 ALTER TABLE `oc_group_user` DISABLE KEYS */;
INSERT INTO `oc_group_user` VALUES ('admin','user'),('SBER','user1'),('SBER','user2'),('SBER','user3'),('SBER','user4'),('SBER','user5');
/*!40000 ALTER TABLE `oc_group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_groups`
--

DROP TABLE IF EXISTS `oc_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_groups` (
  `gid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT 'name',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_groups`
--

LOCK TABLES `oc_groups` WRITE;
/*!40000 ALTER TABLE `oc_groups` DISABLE KEYS */;
INSERT INTO `oc_groups` VALUES ('SBER','SBER'),('admin','admin');
/*!40000 ALTER TABLE `oc_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_jobs`
--

DROP TABLE IF EXISTS `oc_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `argument` varchar(4000) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_run` int(11) DEFAULT '0',
  `last_checked` int(11) DEFAULT '0',
  `reserved_at` int(11) DEFAULT '0',
  `execution_duration` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `job_class_index` (`class`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_jobs`
--

LOCK TABLES `oc_jobs` WRITE;
/*!40000 ALTER TABLE `oc_jobs` DISABLE KEYS */;
INSERT INTO `oc_jobs` VALUES (1,'OCA\\Activity\\BackgroundJob\\EmailNotification','null',1606602857,1606603163,0,0),(2,'OCA\\Activity\\BackgroundJob\\ExpireActivities','null',1606574358,1606603163,0,0),(3,'OCA\\Activity\\BackgroundJob\\DigestMail','null',1606599797,1606603162,0,0),(4,'OCA\\ContactsInteraction\\BackgroundJob\\CleanupJob','null',1606574358,1606603162,0,0),(5,'OCA\\DAV\\BackgroundJob\\CleanupDirectLinksJob','null',1606574358,1606603162,0,0),(6,'OCA\\DAV\\BackgroundJob\\UpdateCalendarResourcesRoomsBackgroundJob','null',1606599797,1606603162,0,0),(7,'OCA\\DAV\\BackgroundJob\\CleanupInvitationTokenJob','null',1606574358,1606603162,0,0),(8,'OCA\\DAV\\BackgroundJob\\EventReminderJob','null',1606603162,1606603162,0,0),(9,'OCA\\Federation\\SyncJob','null',1606574358,1606603162,0,0),(10,'OCA\\Files\\BackgroundJob\\ScanFiles','null',1606603162,1606603162,0,0),(11,'OCA\\Files\\BackgroundJob\\DeleteOrphanedItems','null',1606599797,1606603162,0,0),(12,'OCA\\Files\\BackgroundJob\\CleanupFileLocks','null',1606603162,1606603162,0,0),(13,'OCA\\Files\\BackgroundJob\\CleanupDirectEditingTokens','null',1606602857,1606603162,0,0),(14,'OCA\\Files_Sharing\\DeleteOrphanedSharesJob','null',1606602857,1606603162,0,0),(15,'OCA\\Files_Sharing\\ExpireSharesJob','null',1606574358,1606603162,0,0),(16,'OCA\\Files_Sharing\\BackgroundJob\\FederatedSharesDiscoverJob','null',1606574358,1606603162,0,0),(17,'OCA\\Files_Trashbin\\BackgroundJob\\ExpireTrash','null',1606601954,1606603162,0,0),(18,'OCA\\Files_Versions\\BackgroundJob\\ExpireVersions','null',1606601954,1606603162,0,0),(19,'OCA\\NextcloudAnnouncements\\Cron\\Crawler','null',1606574358,1606603162,0,1),(20,'OCA\\Support\\BackgroundJobs\\CheckSubscription','null',1606603162,1606603162,0,0),(21,'OCA\\Text\\Cron\\Cleanup','null',1606603162,1606603162,0,0),(22,'OCA\\UserStatus\\BackgroundJob\\ClearOldStatusesBackgroundJob','null',1606603162,1606603162,0,0),(23,'OCA\\WorkflowEngine\\BackgroundJobs\\Rotate','null',1606596124,1606603162,0,0),(24,'OC\\Authentication\\Token\\DefaultTokenCleanupJob','null',1606603162,1606603162,0,1),(25,'OC\\Log\\Rotate','null',1606603163,1606603163,0,0),(26,'OC\\Preview\\BackgroundCleanupJob','null',1606599797,1606603163,0,0),(28,'OC\\Core\\BackgroundJobs\\CleanupLoginFlowV2','null',1606601351,1606603163,0,0),(32,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":1}',1606600710,1606603163,0,34),(33,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":1}',1606600744,1606603163,0,0),(35,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":2}',1606601047,1606603163,0,2),(36,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":2}',1606601049,1606603163,0,0),(38,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":3}',1606600099,1606603163,0,1),(39,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":3}',1606600100,1606603163,0,0),(41,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":4}',1606600402,1606603163,0,1),(42,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":4}',1606600403,1606603163,0,0),(44,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":5}',1606600744,1606603163,0,1),(45,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":5}',1606600745,1606603163,0,0),(47,'OCA\\Mail\\BackgroundJob\\SyncJob','{\"accountId\":6}',1606601049,1606603163,0,1),(48,'OCA\\Mail\\BackgroundJob\\TrainImportanceClassifierJob','{\"accountId\":6}',1606601050,1606603163,0,0),(49,'OCA\\Settings\\BackgroundJobs\\VerifyUserData','{\"verificationCode\":\"\",\"data\":\"\",\"type\":\"email\",\"uid\":\"user\",\"try\":0,\"lastRun\":1606602825}',0,1606603163,0,0),(50,'OCA\\LookupServerConnector\\BackgroundJobs\\RetryJob','{\"userId\":\"user\"}',1606602858,1606603163,0,3);
/*!40000 ALTER TABLE `oc_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_login_flow_v2`
--

DROP TABLE IF EXISTS `oc_login_flow_v2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_login_flow_v2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` bigint(20) unsigned NOT NULL,
  `started` smallint(5) unsigned NOT NULL DEFAULT '0',
  `poll_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_token` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `public_key` text COLLATE utf8mb4_bin NOT NULL,
  `private_key` text COLLATE utf8mb4_bin NOT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `login_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `server` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `app_password` varchar(1024) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_token` (`poll_token`),
  UNIQUE KEY `login_token` (`login_token`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_login_flow_v2`
--

LOCK TABLES `oc_login_flow_v2` WRITE;
/*!40000 ALTER TABLE `oc_login_flow_v2` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_login_flow_v2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_accounts`
--

DROP TABLE IF EXISTS `oc_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_host` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_port` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_user` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `inbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_host` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_port` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_ssl_mode` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_user` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `outbound_password` varchar(2048) COLLATE utf8mb4_bin DEFAULT NULL,
  `signature` text COLLATE utf8mb4_bin,
  `last_mailbox_sync` int(11) NOT NULL DEFAULT '0',
  `editor_mode` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT 'plaintext',
  `provisioned` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `show_subscribed_only` tinyint(1) NOT NULL DEFAULT '0',
  `personal_namespace` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `drafts_mailbox_id` int(11) DEFAULT NULL,
  `sent_mailbox_id` int(11) DEFAULT NULL,
  `trash_mailbox_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_userid_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_accounts`
--

LOCK TABLES `oc_mail_accounts` WRITE;
/*!40000 ALTER TABLE `oc_mail_accounts` DISABLE KEYS */;
INSERT INTO `oc_mail_accounts` VALUES (1,'user','user','sla0119@mail.ru','imap.mail.ru','993','ssl','sla0119@mail.ru','c74fea709eb2985ac0e54ff51cc61461|18ecd7542dc06bfd84b6892e7b140ed4|c343205dbd039764db5a5902495f572881076ec4bbd12dc70c9db79234c7bf644c197fe93e90e8c3af6136d6fb006711133fb5bb7440aa55f43a49c1ae171438|2','smtp.mail.ru','465','ssl','sla0119@mail.ru','0e18636f0ed37b77304dc267a6b76802|c6830394033ccae4fa4493a8a696423d|5b51a47db88d9ee9f2fa00946ed6fa64e0ef38fadaf11b7f294d75976ff5a9f6c1f930dda43d5eaf4288a1a796abb8dce71f0254f7b93fb49abab1e9777dedf2|2',NULL,1606600711,'plaintext',0,1,0,'',4,3,5),(2,'user1','user1','99test990@mail.ru','imap.mail.ru','993','ssl','99test990@mail.ru','92b044f3e9c73d6ffb4bc50b1a5ec093|4e8691f76c36ce0ac49f3beb97c2bd58|a53e8badad4a3710a06e29eeba5e6b3beb91fddcb0127a0389925caadda1ac431dc66327c02a5a8e37bfa060286a68d6418bdba2b2db1bf9267fa5069afc0528|2','smtp.mail.ru','465','ssl','99test990@mail.ru','50020b7981befcf195cb964f802c9976|67f7022f9ac77c1dc03e442e55358b7d|9784fed88422af29a5bc367e00d095d4a5ef0bb6877332d8693df2197ed33d17ceccd9accdc697ab13d914c71f9c706fa4e960721c7cef217969e072846bd1c0|2',NULL,1606601048,'plaintext',0,1,0,'',11,10,12),(3,'user2','user2','user1.user1_user1@mail.ru','imap.mail.ru','993','ssl','user1.user1_user1@mail.ru','cb2210f96a6f99aa9595a84088ab1696d59f17e5081dec4d79605cc97196524d|ebae939cea3529965b72430f878ac10e|2de65cc43027b9e7efb697cbc1e5206972908c8d740ecf8aa95a42ae53d2c1f8cef143d54a328c494225132b9bff6fc84dee93a4c4f35f79ec744bf946564d6c|2','smtp.mail.ru','465','ssl','user1.user1_user1@mail.ru','ac874ddfac37b5f9067f2cdcebdeb2c74caf8903b621485c7cd72ddeac1cfdd4|0a9972a22922d7808ea55dd691824c8e|d6a27099abeee07c8e15bf5c959fcc03d008c100a61ddce062d6ef6303b99b93a0798baccdf9ead8309adff915f24c762dc46c39c3b360035d26be10ee269df4|2',NULL,1606600099,'plaintext',0,1,0,'',19,18,20),(4,'user3','user3','user2.user2_user2@mail.ru','imap.mail.ru','993','ssl','user2.user2_user2@mail.ru','b2454717bc54b97b512e82b5b75330ba2ed5142f045473a920bc1b1c067ed612|c8f6fde19fa375c959304871acb88301|bee2b5316625f1dd40dc1a824ab44dbb78c064ab9d805acbf6f2c5f312e79712077dc6b40f72e32ae5009166d3d6018548ac8f994bcda575417fd99be12c0f3b|2','smtp.mail.ru','465','ssl','user2.user2_user2@mail.ru','1d6c50e6f2e137435fbc2364cdfacdd8ff72209a6238d8a6690187bc32e87b68|edb46441438ab3fabb91ca7bfeda5381|3238b070ab2add8054170ae9c4b19b8205f5f088962a1306d2d4029d43b1bb84ab892a1e0c62fb68e6eb10f5f72757684c8b89d37f6c46fd3d0966c101f0465b|2',NULL,1606600403,'plaintext',0,1,0,'',27,26,28),(5,'user4','user4','user3.user3_user3@mail.ru','imap.mail.ru','993','ssl','user3.user3_user3@mail.ru','97f2cb380609d4a2e43ce2937455d4d4b31261695c3da6d57567a07701709012|cca138f14eff16827fec83266d5e84cc|8c664f659631ca8ca38fae1e29d2e8fe4ac60ce6b1fcea56090742fe3e4e96cb77cfb8a646c7d106280b16ea9a663de09cb24ad56b66fe72e3041b94e44002c8|2','smtp.mail.ru','465','ssl','user3.user3_user3@mail.ru','d2b221c8a946f2dd66582e3bcf458aecacfe292a3c8f96b3cd65e27f2a6a3f51|74e5d6e076b6b4796aedbfb6ed3b52f9|c0d7cac7e3a91e4d6357b59e467a974236f91066ca8c075a8bd2b5a34e92aac45b7b3ffa7d120e9b735b1e5cec88d61c709709de24e7af884c6aa606b900a1cf|2',NULL,1606600745,'plaintext',0,1,0,'',35,34,36),(6,'user5','user5','ktotonetot2020@mail.ru','imap.mail.ru','993','ssl','ktotonetot2020@mail.ru','a3e2d3657000cddcb899841dbba94e61f7f5d723871e8de41f1658e3a3e87e10|0e1dfef0b9033df6fa7c6f89a8865b04|c0c1e0d4db3ed9277ee8916439370f6b7c4c0c1ab2ce2dc4ff00e91aa7ec55bcf32c2e7a762463dd4275e6fdf874b6b11738790ad1ea1ed95df9af9b55ee0a42|2','smtp.mail.ru','465','ssl','ktotonetot2020@mail.ru','a023e5c60742de6759f3c207ea63488b1f93ce98bd5894fdc91747c5463035d6|3996695e960d47a70f1966a46c5780fb|b8ea7a1c25cd7c3fd884159d9f1c658cf58322ad45695859639ae13179ce3ae9eaa809a76548fb64336f2945dd8c6360ff3d11ff813cc2780e4112b373e21774|2',NULL,1606601049,'plaintext',0,1,0,'',43,42,44);
/*!40000 ALTER TABLE `oc_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_aliases`
--

DROP TABLE IF EXISTS `oc_mail_aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_aliases`
--

LOCK TABLES `oc_mail_aliases` WRITE;
/*!40000 ALTER TABLE `oc_mail_aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_attachments`
--

DROP TABLE IF EXISTS `oc_mail_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `file_name` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `mime_type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_attach_userid_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_attachments`
--

LOCK TABLES `oc_mail_attachments` WRITE;
/*!40000 ALTER TABLE `oc_mail_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_classifiers`
--

DROP TABLE IF EXISTS `oc_mail_classifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `estimator` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `app_version` varchar(31) COLLATE utf8mb4_bin NOT NULL,
  `training_set_size` int(11) NOT NULL,
  `validation_set_size` int(11) NOT NULL,
  `recall_important` decimal(10,5) NOT NULL,
  `precision_important` decimal(10,5) NOT NULL,
  `f1_score_important` decimal(10,5) NOT NULL,
  `duration` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_clssfr_accnt_id_type` (`account_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_classifiers`
--

LOCK TABLES `oc_mail_classifiers` WRITE;
/*!40000 ALTER TABLE `oc_mail_classifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_mail_classifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_coll_addresses`
--

DROP TABLE IF EXISTS `oc_mail_coll_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_coll_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_coll_addr_userid_index` (`user_id`),
  KEY `mail_coll_addr_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_coll_addresses`
--

LOCK TABLES `oc_mail_coll_addresses` WRITE;
/*!40000 ALTER TABLE `oc_mail_coll_addresses` DISABLE KEYS */;
INSERT INTO `oc_mail_coll_addresses` VALUES (1,'user1','sla0119@mail.ru',NULL),(2,'user2','sla0119@mail.ru',NULL),(3,'user3','sla0119@mail.ru',NULL),(4,'user4','sla0119@mail.ru',NULL),(5,'user5','sla0119@mail.ru',NULL);
/*!40000 ALTER TABLE `oc_mail_coll_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_mailboxes`
--

DROP TABLE IF EXISTS `oc_mail_mailboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_mailboxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `account_id` int(11) NOT NULL,
  `attributes` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `delimiter` varchar(1) COLLATE utf8mb4_bin NOT NULL,
  `messages` int(11) NOT NULL,
  `unseen` int(11) NOT NULL,
  `selectable` tinyint(1) NOT NULL DEFAULT '1',
  `special_use` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '[]',
  `sync_new_lock` int(11) DEFAULT NULL,
  `sync_changed_lock` int(11) DEFAULT NULL,
  `sync_vanished_lock` int(11) DEFAULT NULL,
  `sync_new_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_changed_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_vanished_token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `sync_in_background` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_22DEBD839B6B5FBA5E237E06` (`account_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_mailboxes`
--

LOCK TABLES `oc_mail_mailboxes` WRITE;
/*!40000 ALTER TABLE `oc_mail_mailboxes` DISABLE KEYS */;
INSERT INTO `oc_mail_mailboxes` VALUES (1,'INBOX',1,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTEwNzA3LFYxNTEzNTIxMzQ3LE0xMDU1','VTEwNzA3LFYxNTEzNTIxMzQ3LE0xMDU1','VTEwNzA3LFYxNTEzNTIxMzQ3LE0xMDU1',0),(2,'Спам',1,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,'VTEwNzAxLFYxNTEzNTIxMzQ3LE01NQ==','VTEwNzAxLFYxNTEzNTIxMzQ3LE01NQ==','VTEwNzAxLFYxNTEzNTIxMzQ3LE01NQ==',0),(3,'Отправленные',1,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,'VTk5NTAsVjE1MTM1MjEzNDcsTTQ4','VTk5NTAsVjE1MTM1MjEzNDcsTTQ4','VTk5NTAsVjE1MTM1MjEzNDcsTTQ4',0),(4,'Черновики',1,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTkyNzgsVjE1MTM1MjEzNDcsTTQ=','VTkyNzgsVjE1MTM1MjEzNDcsTTQ=','VTkyNzgsVjE1MTM1MjEzNDcsTTQ=',0),(5,'Корзина',1,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,'VTkyNzcsVjE1MTM1MjEzNDc=','VTkyNzcsVjE1MTM1MjEzNDc=','VTkyNzcsVjE1MTM1MjEzNDc=',0),(6,'INBOX/Social',1,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(7,'INBOX/Newsletters',1,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(8,'INBOX',2,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTE4LFYxNjA2NTk2OTUxLE01','VTE4LFYxNjA2NTk2OTUxLE01','VTE4LFYxNjA2NTk2OTUxLE01',0),(9,'Спам',2,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(10,'Отправленные',2,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(11,'Черновики',2,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTE2LFYxNjA2NTk2OTUx','VTE2LFYxNjA2NTk2OTUxLE0y','VTE2LFYxNjA2NTk2OTUx',0),(12,'Корзина',2,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(13,'INBOX/Social',2,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(14,'INBOX/Newsletters',2,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(15,'INBOX/ToMyself',2,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(16,'INBOX',3,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTUsVjE2MDY1OTgxNzYsTTQ=','VTUsVjE2MDY1OTgxNzYsTTQ=','VTUsVjE2MDY1OTgxNzYsTTQ=',0),(17,'Спам',3,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(18,'Отправленные',3,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(19,'Черновики',3,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTIyLFYxNjA2NTk4MTc2LE0y','VTIyLFYxNjA2NTk4MTc2LE0y','VTIyLFYxNjA2NTk4MTc2LE0y',0),(20,'Корзина',3,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(21,'INBOX/Social',3,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(22,'INBOX/Newsletters',3,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(23,'INBOX/ToMyself',3,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(24,'INBOX',4,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTMsVjE2MDY1OTkyNTEsTTI=','VTMsVjE2MDY1OTkyNTEsTTI=','VTMsVjE2MDY1OTkyNTEsTTI=',0),(25,'Спам',4,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(26,'Отправленные',4,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(27,'Черновики',4,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTE3LFYxNjA2NTk5MjUxLE0y','VTE3LFYxNjA2NTk5MjUxLE0y','VTE3LFYxNjA2NTk5MjUxLE0y',0),(28,'Корзина',4,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(29,'INBOX/Social',4,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(30,'INBOX/Newsletters',4,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(31,'INBOX/ToMyself',4,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(32,'INBOX',5,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTQsVjE2MDY1OTk3MjIsTTM=','VTQsVjE2MDY1OTk3MjIsTTM=','VTQsVjE2MDY1OTk3MjIsTTM=',0),(33,'Спам',5,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(34,'Отправленные',5,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(35,'Черновики',5,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTE2LFYxNjA2NTk5NzIyLE0y','VTE2LFYxNjA2NTk5NzIyLE0y','VTE2LFYxNjA2NTk5NzIyLE0y',0),(36,'Корзина',5,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(37,'INBOX/Social',5,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(38,'INBOX/Newsletters',5,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(39,'INBOX/ToMyself',5,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(40,'INBOX',6,'[\"\\\\inbox\",\"\\\\subscribed\"]','/',0,0,1,'[\"inbox\"]',NULL,NULL,NULL,'VTQsVjE2MDY1OTg4NTQsTTM=','VTQsVjE2MDY1OTg4NTQsTTM=','VTQsVjE2MDY1OTg4NTQsTTM=',0),(41,'Спам',6,'[\"\\\\spam\",\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(42,'Отправленные',6,'[\"\\\\sent\",\"\\\\subscribed\"]','/',0,0,1,'[\"sent\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(43,'Черновики',6,'[\"\\\\drafts\",\"\\\\subscribed\"]','/',0,0,1,'[\"drafts\"]',NULL,NULL,NULL,'VTcsVjE2MDY1OTg4NTQsTTI=','VTcsVjE2MDY1OTg4NTQsTTI=','VTcsVjE2MDY1OTg4NTQsTTI=',0),(44,'Корзина',6,'[\"\\\\trash\",\"\\\\subscribed\"]','/',0,0,1,'[\"trash\"]',NULL,NULL,NULL,NULL,NULL,NULL,0),(45,'INBOX/Social',6,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(46,'INBOX/Newsletters',6,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0),(47,'INBOX/ToMyself',6,'[\"\\\\subscribed\"]','/',0,0,1,'[]',NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `oc_mail_mailboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_messages`
--

DROP TABLE IF EXISTS `oc_mail_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `message_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `mailbox_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL,
  `flag_answered` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `flag_draft` tinyint(1) NOT NULL DEFAULT '0',
  `flag_flagged` tinyint(1) NOT NULL DEFAULT '0',
  `flag_seen` tinyint(1) NOT NULL DEFAULT '0',
  `flag_forwarded` tinyint(1) NOT NULL DEFAULT '0',
  `flag_junk` tinyint(1) NOT NULL DEFAULT '0',
  `flag_notjunk` tinyint(1) NOT NULL DEFAULT '0',
  `flag_attachments` tinyint(1) DEFAULT NULL,
  `flag_important` tinyint(1) NOT NULL DEFAULT '0',
  `structure_analyzed` tinyint(1) NOT NULL DEFAULT '0',
  `preview_text` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `references` longtext COLLATE utf8mb4_bin,
  `in_reply_to` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  `thread_root_id` varchar(1023) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_msg_mb_uid_idx` (`uid`,`mailbox_id`),
  KEY `mail_msg_sent_idx` (`sent_at`)
) ENGINE=InnoDB AUTO_INCREMENT=1237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_messages`
--

LOCK TABLES `oc_mail_messages` WRITE;
/*!40000 ALTER TABLE `oc_mail_messages` DISABLE KEYS */;
INSERT INTO `oc_mail_messages` VALUES (1,1,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(2,2,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(3,3,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(4,4,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(5,6,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(6,7,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(7,9,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(8,10,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(9,12,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(10,13,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(11,14,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(12,15,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(13,16,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(14,18,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(15,21,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(16,22,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(17,26,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(18,27,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(19,28,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(20,29,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(21,30,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(22,31,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(23,33,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(24,35,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(25,38,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(26,42,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(27,57,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(28,77,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(29,118,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(30,157,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(31,161,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(32,162,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(33,195,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(34,198,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(35,199,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(36,200,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(37,202,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(38,257,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(39,259,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(40,264,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(41,319,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(42,324,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(43,345,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(44,372,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(45,395,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(46,400,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(47,426,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(48,441,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(49,449,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(50,457,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(51,461,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(52,464,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(53,469,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(54,473,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(55,477,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(56,480,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(57,481,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(58,485,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(59,488,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(60,503,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(61,512,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(62,515,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(63,516,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(64,519,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(65,525,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(66,531,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(67,546,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(68,547,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(69,553,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(70,572,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(71,609,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(72,621,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(73,623,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(74,638,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(75,640,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(76,649,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(77,651,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(78,652,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(79,653,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(80,655,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(81,656,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(82,659,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(83,663,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(84,667,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(85,668,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(86,670,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(87,671,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(88,672,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(89,706,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(90,729,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(91,744,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(92,755,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(93,766,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(94,780,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(95,787,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(96,880,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(97,888,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(98,921,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(99,947,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(100,1025,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(101,1056,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(102,1068,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(103,1084,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(104,1109,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(105,1115,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(106,1177,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(107,1196,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(108,1202,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(109,1204,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(110,1224,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(111,1236,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(112,1255,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(113,1282,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(114,1314,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(115,1315,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(116,1317,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(117,1334,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(118,1335,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(119,1361,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(120,1383,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(121,1386,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(122,1394,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(123,1400,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(124,1405,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(125,1413,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(126,1431,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(127,1432,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(128,1436,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(129,1446,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(130,1447,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(131,1449,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(132,1461,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(133,1463,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(134,1464,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(135,1465,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(136,1469,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(137,1471,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(138,1473,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(139,1475,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(140,1491,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(141,1499,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(142,1503,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(143,1521,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(144,1535,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(145,1560,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(146,1576,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(147,1577,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(148,1579,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(149,1592,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(150,1609,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(151,1612,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(152,1613,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(153,1633,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(154,1636,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(155,1726,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(156,1746,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(157,1752,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(158,1766,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(159,1788,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(160,1800,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(161,1814,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(162,1823,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(163,1832,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(164,1838,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(165,1857,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(166,1869,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(167,1879,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(168,1891,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(169,1903,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(170,1921,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(171,1937,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(172,1965,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(173,1966,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(174,1967,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(175,1970,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(176,1971,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(177,1978,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(178,1984,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(179,1985,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(180,2002,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(181,2010,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(182,2019,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(183,2039,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(184,2041,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(185,2049,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(186,2056,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(187,2077,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(188,2078,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(189,2086,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(190,2126,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(191,2132,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(192,2163,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(193,2170,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(194,2180,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(195,2181,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(196,2193,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(197,2212,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(198,2227,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(199,2235,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(200,2258,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(201,2293,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(202,2300,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(203,2339,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(204,2344,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(205,2387,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(206,2404,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(207,2406,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(208,2417,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(209,2422,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(210,2455,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(211,2497,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(212,2507,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(213,2508,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(214,2509,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(215,2510,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(216,2524,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(217,2525,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(218,2550,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(219,2589,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(220,2610,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(221,2616,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(222,2626,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(223,2642,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(224,2643,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(225,2647,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(226,2667,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(227,2668,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(228,2672,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(229,2674,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(230,2676,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(231,2683,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(232,2689,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(233,2690,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(234,2691,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(235,2734,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(236,2735,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(237,2736,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(238,2739,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(239,2740,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(240,2791,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(241,2792,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(242,2793,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(243,2804,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(244,2828,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(245,2829,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(246,2877,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(247,2899,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(248,2900,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(249,2901,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(250,2902,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(251,2903,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(252,2904,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(253,2905,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(254,2922,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(255,2923,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(256,2925,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(257,2926,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(258,2943,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(259,2949,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(260,2950,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(261,2951,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(262,2953,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(263,2959,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(264,2960,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(265,2961,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(266,2962,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(267,2963,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(268,2967,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(269,2973,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(270,2980,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(271,2995,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(272,2998,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(273,2999,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(274,3000,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(275,3009,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(276,3014,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(277,3031,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(278,3034,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(279,3040,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(280,3062,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(281,3063,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(282,3073,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(283,3074,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(284,3079,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(285,3080,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(286,3081,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(287,3083,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(288,3094,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(289,3095,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(290,3098,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(291,3103,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(292,3110,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(293,3111,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(294,3112,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(295,3123,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(296,3135,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(297,3141,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(298,3144,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(299,3166,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(300,3169,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(301,3173,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(302,3174,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(303,3175,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(304,3187,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(305,3189,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(306,3201,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(307,3203,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(308,3209,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(309,3210,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(310,3218,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(311,3219,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(312,3223,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(313,3226,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(314,3235,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(315,3246,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(316,3247,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(317,3253,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(318,3259,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(319,3260,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(320,3263,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(321,3269,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(322,3272,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(323,3274,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(324,3275,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(325,3278,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(326,3282,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(327,3287,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(328,3288,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(329,3291,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(330,3296,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(331,3298,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(332,3299,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(333,3301,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(334,3304,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(335,3305,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(336,3306,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(337,3315,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(338,3316,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(339,3323,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(340,3326,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(341,3330,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(342,3331,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(343,3332,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(344,3336,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(345,3337,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(346,3338,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(347,3341,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(348,3342,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(349,3343,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(350,3345,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(351,3346,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(352,3351,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(353,3352,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(354,3361,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(355,3362,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(356,3368,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(357,3369,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(358,3373,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(359,3374,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(360,3376,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(361,3378,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(362,3379,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(363,3380,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(364,3389,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(365,3391,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(366,3392,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(367,3400,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(368,3405,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(369,3406,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(370,3421,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(371,3422,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(372,3423,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(373,3424,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(374,3430,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(375,3435,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(376,3436,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(377,3443,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(378,3453,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(379,3454,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(380,3457,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(381,3461,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(382,3466,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(383,3468,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(384,3492,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(385,3493,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(386,3496,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(387,3497,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(388,3498,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(389,3502,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(390,3503,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(391,3504,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(392,3506,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(393,3529,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(394,3534,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(395,3537,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(396,3538,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(397,3540,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(398,3543,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(399,3550,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(400,3559,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(401,3560,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(402,3564,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(403,3568,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(404,3570,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(405,3571,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(406,3573,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(407,3575,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(408,3577,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(409,3578,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(410,3584,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(411,3585,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(412,3589,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(413,3597,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(414,3600,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(415,3605,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(416,3606,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(417,3607,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(418,3608,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(419,3609,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(420,3612,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(421,3613,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(422,3614,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(423,3618,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(424,3619,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(425,3629,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(426,3632,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(427,3633,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(428,3635,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(429,3636,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(430,3639,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(431,3646,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(432,3655,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(433,3656,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(434,3657,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(435,3659,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(436,3660,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(437,3666,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(438,3669,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(439,3670,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(440,3671,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(441,3672,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(442,3673,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(443,3676,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(444,3681,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(445,3682,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(446,3687,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(447,3693,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(448,3694,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(449,3695,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(450,3696,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(451,3708,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(452,3712,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(453,3715,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(454,3716,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(455,3720,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(456,3723,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(457,3724,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(458,3727,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(459,3729,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(460,3730,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(461,3731,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(462,3732,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(463,3737,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(464,3738,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(465,3739,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,1,0,1,'',1606600742,'[]',NULL,NULL),(466,3743,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(467,3744,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(468,3748,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(469,3766,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(470,3774,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(471,3775,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(472,3776,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(473,3777,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(474,3778,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(475,3779,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(476,3780,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(477,3782,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(478,3785,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(479,3786,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(480,3788,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(481,3790,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(482,3791,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(483,3793,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(484,3794,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(485,3795,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(486,3800,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(487,3801,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(488,3802,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(489,3804,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(490,3805,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(491,3806,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(492,3810,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(493,3811,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(494,3814,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(495,3818,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(496,3820,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(497,3821,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(498,3824,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(499,3831,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(500,3832,NULL,1,'',1606596819,0,0,0,0,0,0,0,0,0,0,1,'',1606600742,'[]',NULL,NULL),(501,3834,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(502,3838,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(503,3839,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(504,3840,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(505,3842,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(506,3844,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(507,3848,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(508,3849,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(509,3853,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(510,3854,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(511,3880,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(512,3895,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(513,3905,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(514,3924,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(515,3931,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(516,3935,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(517,3939,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(518,3944,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(519,3946,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(520,3947,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(521,3953,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(522,3956,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(523,3972,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(524,3973,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(525,3976,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(526,3998,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(527,4001,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(528,4007,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(529,4008,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(530,4013,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(531,4014,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(532,4025,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(533,4044,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(534,4050,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(535,4051,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(536,4052,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(537,4053,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(538,4054,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(539,4055,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(540,4056,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(541,4057,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(542,4058,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(543,4059,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(544,4062,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(545,4067,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(546,4082,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(547,4084,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(548,4088,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(549,4094,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(550,4095,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(551,4101,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(552,4103,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(553,4111,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(554,4113,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(555,4116,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(556,4124,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(557,4130,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(558,4136,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(559,4146,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(560,4147,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(561,4150,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(562,4151,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(563,4152,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(564,4173,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(565,4174,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(566,4183,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(567,4188,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(568,4189,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(569,4195,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(570,4197,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(571,4201,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(572,4202,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(573,4206,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(574,4212,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(575,4219,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(576,4220,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(577,4221,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(578,4222,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(579,4227,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(580,4232,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(581,4237,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(582,4246,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(583,4248,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(584,4255,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(585,4257,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(586,4258,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(587,4261,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(588,4262,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(589,4267,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(590,4285,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(591,4291,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(592,4293,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(593,4294,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(594,4295,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(595,4296,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(596,4298,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(597,4302,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(598,4303,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(599,4304,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(600,4313,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(601,4315,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(602,4316,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(603,4317,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(604,4324,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(605,4327,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(606,4334,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(607,4336,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(608,4344,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(609,4345,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(610,4351,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(611,4362,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(612,4364,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(613,4366,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(614,4367,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(615,4371,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(616,4381,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(617,4383,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(618,4384,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(619,4387,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(620,4389,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(621,4391,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(622,4393,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(623,4398,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(624,4411,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(625,4428,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(626,4432,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(627,4443,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(628,4449,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(629,4451,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(630,4463,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(631,4468,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(632,4472,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(633,4474,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(634,4481,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(635,4489,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(636,4495,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(637,4499,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(638,4501,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(639,4512,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(640,4514,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(641,4516,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(642,4518,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(643,4519,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(644,4520,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(645,4521,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(646,4524,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(647,4525,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(648,4528,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(649,4529,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(650,4530,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(651,4535,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(652,4539,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(653,4552,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(654,4561,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(655,4563,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(656,4576,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(657,4577,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(658,4579,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(659,4582,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(660,4583,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(661,4589,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(662,4591,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(663,4593,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(664,4594,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(665,4597,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(666,4604,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(667,4606,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(668,4609,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(669,4610,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(670,4611,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(671,4615,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(672,4623,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(673,4632,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(674,4633,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(675,4635,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(676,4639,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(677,4641,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(678,4651,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(679,4652,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(680,4658,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(681,4665,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(682,4676,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(683,4690,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(684,4699,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(685,4704,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(686,4709,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(687,4710,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(688,4711,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(689,4712,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(690,4713,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(691,4722,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(692,4727,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(693,4729,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(694,4731,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(695,4733,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(696,4739,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(697,4743,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(698,4744,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(699,4750,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(700,4751,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(701,4752,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(702,4753,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(703,4757,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(704,4758,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(705,4764,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(706,4770,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(707,4771,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(708,4788,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(709,4796,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(710,4797,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(711,4805,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(712,4809,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(713,4816,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(714,4818,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(715,4827,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(716,4828,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(717,4830,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(718,4831,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(719,4866,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(720,4869,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(721,4887,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(722,4890,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(723,4891,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(724,4893,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(725,4894,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(726,4895,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(727,4901,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(728,4904,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(729,4913,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(730,4914,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(731,4918,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(732,4928,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(733,4943,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(734,4981,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(735,4987,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(736,5007,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(737,5013,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(738,5020,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(739,5022,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(740,5033,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(741,5036,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(742,5037,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(743,5053,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(744,5055,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(745,5056,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(746,5074,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(747,5075,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(748,5084,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(749,5093,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(750,5094,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(751,5095,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(752,5116,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(753,5120,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(754,5122,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(755,5129,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(756,5136,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(757,5150,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(758,5158,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(759,5161,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(760,5164,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(761,5172,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(762,5176,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(763,5184,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(764,5194,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(765,5214,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(766,5220,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(767,5221,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(768,5223,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(769,5234,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(770,5237,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(771,5250,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(772,5251,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(773,5281,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(774,5298,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(775,7589,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(776,7591,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(777,7607,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(778,7637,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(779,7643,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(780,7645,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(781,7659,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(782,7667,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(783,7669,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(784,7707,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(785,7708,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(786,7721,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(787,7722,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(788,7744,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(789,7746,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(790,7761,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(791,7764,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(792,7772,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(793,7787,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(794,7795,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(795,7834,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(796,7838,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(797,7854,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(798,7861,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(799,7876,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(800,7891,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(801,7892,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(802,7897,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(803,7905,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(804,7906,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(805,7916,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(806,7917,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(807,7923,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(808,7925,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(809,7927,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(810,7935,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(811,7948,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(812,7949,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(813,7968,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(814,7970,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(815,7978,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(816,7979,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(817,8060,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(818,8061,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(819,8071,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(820,8072,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(821,8076,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(822,8099,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(823,8135,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(824,8136,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(825,8151,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(826,8157,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(827,8167,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(828,8190,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(829,8202,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(830,8204,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(831,8205,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(832,8213,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(833,8221,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(834,8239,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(835,8240,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(836,8242,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(837,8245,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(838,8257,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(839,8258,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(840,8260,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(841,8261,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(842,8262,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(843,8276,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(844,8288,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(845,8289,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(846,8299,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(847,8302,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(848,8306,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(849,8307,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(850,8310,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(851,8313,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(852,8314,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(853,8323,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(854,8324,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(855,8335,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(856,8336,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(857,8345,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(858,8348,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(859,8361,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(860,8364,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(861,8373,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(862,8382,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(863,8388,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(864,8399,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(865,8400,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(866,8401,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(867,8411,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(868,8413,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(869,8417,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(870,8418,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(871,8433,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(872,8437,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(873,8446,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(874,8449,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(875,8478,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(876,8494,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(877,8508,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(878,8521,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(879,8541,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(880,8549,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(881,8567,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(882,8577,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(883,8578,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(884,8592,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(885,8608,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(886,8610,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(887,8611,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(888,8648,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(889,8678,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(890,8690,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(891,8691,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(892,8692,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(893,8713,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(894,8740,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(895,8783,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(896,8807,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(897,8811,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(898,8825,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(899,8826,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(900,8837,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(901,8842,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(902,8873,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(903,8912,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(904,8946,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(905,8964,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(906,9066,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(907,9067,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(908,9068,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(909,9102,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(910,9163,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(911,9230,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(912,9247,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(913,9278,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(914,9285,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(915,9291,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(916,9335,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(917,9395,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(918,9435,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(919,9436,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(920,9441,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(921,9489,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(922,9519,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(923,9524,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(924,9525,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(925,9542,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(926,9686,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(927,9707,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(928,9710,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(929,9723,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(930,9738,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(931,9837,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(932,9838,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(933,9839,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(934,9840,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(935,9868,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(936,9897,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(937,9910,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(938,9930,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(939,9936,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(940,9947,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(941,9950,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(942,9965,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(943,9974,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(944,9986,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(945,9987,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(946,9992,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(947,9994,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(948,10001,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(949,10002,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(950,10025,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(951,10029,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(952,10031,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(953,10032,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(954,10037,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(955,10044,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,1,0,1,'',1606600743,'[]',NULL,NULL),(956,10050,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(957,10055,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(958,10063,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(959,10074,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(960,10089,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(961,10091,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(962,10119,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(963,10128,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(964,10135,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(965,10136,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(966,10137,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(967,10138,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(968,10139,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(969,10143,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(970,10155,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(971,10166,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(972,10172,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(973,10175,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(974,10184,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(975,10188,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(976,10189,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(977,10194,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(978,10207,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(979,10210,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(980,10229,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(981,10251,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(982,10266,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(983,10267,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(984,10269,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(985,10284,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(986,10314,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(987,10325,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(988,10326,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(989,10327,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(990,10328,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(991,10331,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(992,10332,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(993,10333,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(994,10334,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(995,10335,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(996,10345,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(997,10361,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(998,10362,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(999,10392,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(1000,10464,NULL,1,'',1606596820,0,0,0,0,0,0,0,0,0,0,1,'',1606600743,'[]',NULL,NULL),(1001,10469,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1002,10480,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1003,10484,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1004,10503,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1005,10504,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1006,10508,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1007,10513,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1008,10516,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1009,10525,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1010,10530,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1011,10538,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1012,10558,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1013,10573,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1014,10574,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1015,10576,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1016,10585,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1017,10591,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1018,10593,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1019,10597,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1020,10601,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1021,10615,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1022,10620,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1023,10621,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1024,10622,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1025,10623,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1026,10625,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1027,10626,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1028,10628,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1029,10635,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1030,10636,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1031,10639,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1032,10643,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1033,10645,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1034,10650,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1035,10654,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1036,10657,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1037,10661,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1038,10663,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1039,10665,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1040,10668,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1041,10669,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1042,10672,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1043,10679,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1044,10680,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1045,10681,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1046,10691,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1047,10692,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1048,10694,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1049,10695,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1050,10699,NULL,1,'',1606596821,0,0,0,0,0,0,0,0,0,0,1,'',1606600744,'[]',NULL,NULL),(1051,1191,'<1541885155.558719126@f417.i.mail.ru>',4,'Re: Фотки.zip',1541885155,0,0,0,0,1,0,0,0,0,0,1,'',1606596905,'[]',NULL,'<1541885155.558719126@f417.i.mail.ru>'),(1052,7790,'<1577270745.642959237@f414.i.mail.ru>',4,'',1577270745,0,0,0,0,1,0,0,0,0,0,1,'',1606596905,'[]',NULL,'<1577270745.642959237@f414.i.mail.ru>'),(1053,8347,'<1582015424.953032730@f430.i.mail.ru>',4,'',1582015424,0,0,0,0,1,0,0,0,0,0,1,'',1606596905,'[]',NULL,'<1582015424.953032730@f430.i.mail.ru>'),(1054,9277,'<1592889337.326883760@f525.i.mail.ru>',4,'',1592889337,0,0,0,0,1,0,0,0,0,0,1,'',1606596905,'[]',NULL,'<1592889337.326883760@f525.i.mail.ru>'),(1055,1,'<160659695248.21.12979074018118712241@mlrmr.com>',8,'Добро пожаловать в Почту Mail.ru',1606596953,0,0,0,0,0,0,0,0,0,0,1,'',1606601048,'[]',NULL,'<160659695248.21.12979074018118712241@mlrmr.com>'),(1056,2,'<160659695288.21.3159253795379333988@mlrmr.com>',8,'Mail.ru – больше, чем почта. Познакомьтесь с проектами Mail.ru Group',1606596953,0,0,0,0,0,0,0,0,0,0,1,'',1606601048,'[]',NULL,'<160659695288.21.3159253795379333988@mlrmr.com>'),(1057,3,'<160659695267.21.15079021069842534544@mlrmr.com>',8,'Как воспользоваться почтой с мобильного?',1606596953,0,0,0,0,0,0,0,0,0,0,1,'',1606601048,'[]',NULL,'<160659695267.21.15079021069842534544@mlrmr.com>'),(1058,4,'<160659695514.4625.10853115518025698250@mlrmr.com>',8,'Ваша почта изменится',1606596956,0,0,0,0,1,0,0,0,0,0,1,'',1606601048,'[]',NULL,'<160659695514.4625.10853115518025698250@mlrmr.com>'),(1070,10391,'<235cd2aea3fc1e6d4459b1b47f2e3597@swift.generated>',2,'Вам готовится перевод к отправке',1603936007,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<235cd2aea3fc1e6d4459b1b47f2e3597@swift.generated>'),(1071,10399,'<1kY3p0-000T1U-LG@mx277.sendpulse.me>',2,'На вашу карту 4581-9312-3401-**** отправлен перевод в сумме 82 731 руб',1603986748,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kY3p0-000T1U-LG@mx277.sendpulse.me>'),(1072,10401,'<1kY3p0-000T1U-LG@mx277.sendpulse.me>',2,'На вашу карту 4581-9312-3401-**** отправлен перевод в сумме 82 731 руб',1604008078,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kY3p0-000T1U-LG@mx277.sendpulse.me>'),(1073,10407,'<1kYOic-000X22-5L@mx279.sendpulse.me>',2,'Re: Ответ по вашему запросу #482391',1604044672,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kYOic-000X22-5L@mx279.sendpulse.me>'),(1074,10410,'<1kYSzP-000PKA-Tz@mx222.sendpulse.me>',2,'Вам положена премия',1604063127,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kYSzP-000PKA-Tz@mx222.sendpulse.me>'),(1075,10424,'<01000175690bda3d-f7839e2f-677b-48eb-b88f-dff85885691f-000000@email.amazonses.com>',2,'Registration Received For Congregation Beth Tefillah',1604165692,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<01000175690bda3d-f7839e2f-677b-48eb-b88f-dff85885691f-000000@email.amazonses.com>'),(1076,10425,'<ljwttrmf-6830504-85456805-mhfnl-wqizcjyu-ojahk@ciibot5.ru>',2,'Zennoclub, ждем Вас на воскресном богослужении!',1598416518,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<ljwttrmf-6830504-85456805-mhfnl-wqizcjyu-ojahk@ciibot5.ru>'),(1077,10426,'<wpchvomz-3197251-09853289-bjkuc-okbgbwub-aoqic@ciibot5.ru>',2,'Ободрение от Дэнис Реннер. Бог вчера, сегодня и вовеки Тот же!',1598700652,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<wpchvomz-3197251-09853289-bjkuc-okbgbwub-aoqic@ciibot5.ru>'),(1078,10427,'<ssabbhzz-8364037-94517976-cngkn-mldhlxxs-nosjv@ciibot5.ru>',2,', это исконно русское слово или заимствованное? Тест, который покажет, как хорошо вы знаете родной язык.',1598908718,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<ssabbhzz-8364037-94517976-cngkn-mldhlxxs-nosjv@ciibot5.ru>'),(1079,10428,'<7adqug-68363L-TT@mx89.sarvcr6.anauscatuft.com>',2,'Открыто',1599690919,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<7adqug-68363L-TT@mx89.sarvcr6.anauscatuft.com>'),(1080,10429,'<8ctvbm-51903W-EG@mx29.auo4obocto.com.net>',2,'Специально  для:  sla0119@mail.ru',1602034811,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<8ctvbm-51903W-EG@mx29.auo4obocto.com.net>'),(1081,10430,'<9pqmvc-38754E-NN@mx95.dicuppvsyaco.net>',2,'Личный кабинет для пользователя : sla0119@mail.ru',1602207878,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<9pqmvc-38754E-NN@mx95.dicuppvsyaco.net>'),(1082,10431,'<2pfkep-14565F-MD@mx96.srcupnasopt.net>',2,'Успейте до 14.10.20',1602452573,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<2pfkep-14565F-MD@mx96.srcupnasopt.net>'),(1083,10432,'<8tjjoe-17406G-LU@mx49.srcupnasopt.net>',2,'Успейте до 14.10.20',1602564447,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<8tjjoe-17406G-LU@mx49.srcupnasopt.net>'),(1084,10433,'<9ctwzd-31596W-NN@mx83.pallbiy.net>',2,'У Вас же есть компьютер и интернет?',1603252321,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<9ctwzd-31596W-NN@mx83.pallbiy.net>'),(1085,10434,'<0gppwf-37233M-TU@mx02.newhooosp.net>',2,'Поздравление пользователю : sla0119@mail.ru',1603586352,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<0gppwf-37233M-TU@mx02.newhooosp.net>'),(1086,10435,'<5fhqkm-92445K-GT@mx20.lottusoviyny.net>',2,'sla0119@mail.ru, пожалуйста, используйте до 30.10.2020г.',1603921360,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<5fhqkm-92445K-GT@mx20.lottusoviyny.net>'),(1087,10436,'<6xiedo-08091L-UA@mx63.lovptnocaoy.net>',2,'Уважаемый пользователь, по вашему аккаунту есть результаты выигрыша.',1604095421,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<6xiedo-08091L-UA@mx63.lovptnocaoy.net>'),(1088,10437,'<1zviya-99126G-ZM@mx11.dommyiivsy.net>',2,'По вашему аккаунту есть результаты выигрыша.',1604020063,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1zviya-99126G-ZM@mx11.dommyiivsy.net>'),(1089,10438,'<4hsdfl-87359I-SE@mx17.wkibsd4cto.com.net>',2,'Личный кабинет для пользователя : sla0119@mail.ru',1602120492,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<4hsdfl-87359I-SE@mx17.wkibsd4cto.com.net>'),(1090,10439,'<6ffdkx-69518A-LC@mx18.wuionsdc.com.net>',2,'Вакансия для пользователя sla0119@mail.ru',1600991855,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<6ffdkx-69518A-LC@mx18.wuionsdc.com.net>'),(1091,10440,'<1pntjo-02928S-KL@mx53.sarvcr6.anauscatuft.com>',2,'Мы снова открылись. Ваш логин sla0119@mail.ru',1600120531,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1pntjo-02928S-KL@mx53.sarvcr6.anauscatuft.com>'),(1092,10441,'<aimtfpiw-6646202-32526013-bhyrm-tqqhjypy-gzlgi@ciibot5.ru>',2,'Мода брендов - выпуск №11. ALTERNATIVE APPAREL',1598167145,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<aimtfpiw-6646202-32526013-bhyrm-tqqhjypy-gzlgi@ciibot5.ru>'),(1093,10442,'<cxwnrlfw-3767531-71261024-rzrvf-qsqmbyeh-iasta@ciibot5.ru>',2,'10 дел, которые нужно успеть сделать к Новому году',1598483600,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<cxwnrlfw-3767531-71261024-rzrvf-qsqmbyeh-iasta@ciibot5.ru>'),(1094,10443,'<0leqid-90324V-PN@mx15.pallbiy.net>',2,'У Вас же есть компьютер и интернет?',1603152343,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<0leqid-90324V-PN@mx15.pallbiy.net>'),(1095,10444,'<dtsjpjvm-1119065-15468741-okgad-qfordcoy-fchwy@ciibot5.ru>',2,'Multi-functional Screwdriver Set only $15.47',1599218183,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<dtsjpjvm-1119065-15468741-okgad-qfordcoy-fchwy@ciibot5.ru>'),(1096,10445,'<0wnyxx-99247D-UJ@mx74.ztyicatucarn.com.net>',2,'Подготовлено для:  sla0119@mail.ru',1601336519,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<0wnyxx-99247D-UJ@mx74.ztyicatucarn.com.net>'),(1097,10446,'<vrociedv-5000999-06215160-colyl-wjwmprvj-kpsdd@ciibot5.ru>',2,'Shopping Season Special Offer: Top 10 Hottest Deals, Limited Time!',1599367091,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<vrociedv-5000999-06215160-colyl-wjwmprvj-kpsdd@ciibot5.ru>'),(1098,10447,'<6afbvx-46720Y-MW@mx23.sarvcr6.anauscatuft.com>',2,'Открыто',1599621548,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<6afbvx-46720Y-MW@mx23.sarvcr6.anauscatuft.com>'),(1099,10448,'<0cinid-99672J-YZ@mx37.sarvcr6.anauscatuft.com>',2,'Мы снова открылись. Ваш логин sla0119@mail.ru',1600075860,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<0cinid-99672J-YZ@mx37.sarvcr6.anauscatuft.com>'),(1100,10449,'<5sorhx-83706I-WI@mx01.mcitubso.com.net>',2,'Специально  для:  sla0119@mail.ru',1601934886,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<5sorhx-83706I-WI@mx01.mcitubso.com.net>'),(1101,10450,'<3ogxmk-88658D-NR@mx50.licoyptbu-zorn.com.net>',2,'Вакансия для пользователя sla0119@mail.ru',1601078159,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<3ogxmk-88658D-NR@mx50.licoyptbu-zorn.com.net>'),(1102,10451,'<3wpzyc-71001A-EA@mx41.ztyicatucarn.com.net>',2,'Подготовлено для:  sla0119@mail.ru',1601441997,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<3wpzyc-71001A-EA@mx41.ztyicatucarn.com.net>'),(1103,10452,'<wdaixwbr-9389915-45647958-geggy-ppuockkx-lcvia@ciibot5.ru>',2,'Что произошло с нашей рассылкой? Рассказывает шеф-редактор',1599297477,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<wdaixwbr-9389915-45647958-geggy-ppuockkx-lcvia@ciibot5.ru>'),(1104,10454,'<1kYrfo-0001nt-Ol@mx218.sendpulse.me>',2,'приветик. как дела?)',1604193323,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kYrfo-0001nt-Ol@mx218.sendpulse.me>'),(1105,10456,'<1kZ8Jg-000U88-M6@mx191.sendpulse.me>',2,'привет еще раз. почему не отвечаешь?',1604222282,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<1kZ8Jg-000U88-M6@mx191.sendpulse.me>'),(1106,10458,'<E1kWgbk-LUIOSB-MQ@ucs201-ucs-13.msgpanel.com>',2,'Как зарабатывать на фрилансе [Регистрация на вебинар]',1603636987,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kWgbk-LUIOSB-MQ@ucs201-ucs-13.msgpanel.com>'),(1107,10461,'<6589f2796b15dd4f7bf73047c2ccc9c5@swift.generated>',2,'Вы выиграли 3812 долларов!',1604276384,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<6589f2796b15dd4f7bf73047c2ccc9c5@swift.generated>'),(1108,10487,'<5030b7b5-f35d-4c22@9600-6bc626fbf34f>',2,'Ваше резюме рассмотрено',1604606201,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<5030b7b5-f35d-4c22@9600-6bc626fbf34f>'),(1109,10489,'<010001759be24d92-8031d38d-2d7e-4ab9-bc8e-41a070ad3e3a-000000@email.amazonses.com>',2,'Подтвердите свой адрес электронной почты.',1604645670,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<010001759be24d92-8031d38d-2d7e-4ab9-bc8e-41a070ad3e3a-000000@email.amazonses.com>'),(1110,10497,'<154db3d0633fcb1d14ccfb5b59b9eaf2@justclick.ru>',2,'Мы ждем вас на рабочем месте',1604857830,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<154db3d0633fcb1d14ccfb5b59b9eaf2@justclick.ru>'),(1111,10498,'<r52wiimw-15390-pkxjqo-48149276-tweuyez@anapart.ru>',2,'Наверняка вас достали письма с содержанием \"купи, купи,купи\"',1601609828,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<r52wiimw-15390-pkxjqo-48149276-tweuyez@anapart.ru>'),(1112,10499,'<xrb4v7wn-71972-cuzsyk-01240619-lojoxqe@anapart.ru>',2,'Наверняка вас достали письма с содержанием \"купи, купи,купи\"',1601356576,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<xrb4v7wn-71972-cuzsyk-01240619-lojoxqe@anapart.ru>'),(1113,10529,'<JODmFec-41764A-LH@st15.mi9.Odessa.ua>',2,'Oткрыть свoй интернет-магазин на известных маркетплейсах - легкo',1605081374,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[\"<5543762951.168934982@f087.i.mail.ru>\"]','<1897920177.123495609@f087.i.mail.ru>','<JODmFec-41764A-LH@st15.mi9.Odessa.ua>'),(1114,10545,'<71721241.633458232.2844924725274.JavaMail.root@funsmvsr.ru>',2,'Решили сделать для Вас подарок',1605321199,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<71721241.633458232.2844924725274.JavaMail.root@funsmvsr.ru>'),(1115,10547,'<8456193822497-55sojh72-us8op020-c9s608q6@nbiapapcpi.com>',2,'Хотим поблагодарить Вас',1605337048,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<8456193822497-55sojh72-us8op020-c9s608q6@nbiapapcpi.com>'),(1116,10555,'<f73dac61-d54d-4889@a1b5-b7ad48ee4c6e>',2,'На вашу карту 4190-3459-2391-**** отправлено 50 091 руб',1605432547,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<f73dac61-d54d-4889@a1b5-b7ad48ee4c6e>'),(1117,10595,'<E1kfnM2-DtW0V3-MS@ucs203-ucs-14.msgpanel.com>',2,'Вы будете уволены',1605830230,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kfnM2-DtW0V3-MS@ucs203-ucs-14.msgpanel.com>'),(1118,10600,'<E1kg69o-xwC3uG-MS@ucs201-ucs-2.msgpanel.com>',2,'Уведомление о зачислении',1605877740,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kg69o-xwC3uG-MS@ucs201-ucs-2.msgpanel.com>'),(1119,10611,'<01000175d0772f43-f4abb023-2408-4803-85c4-3f606d4d6708-000000@email.amazonses.com>',2,'417735 — Ваш код безопасности Dropbox',1605957856,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<01000175d0772f43-f4abb023-2408-4803-85c4-3f606d4d6708-000000@email.amazonses.com>'),(1120,10667,'<E1kiAo1-cuDyIp-MS@ucs101-ucs-15.msgpanel.com>',2,'Заявка одобрена | Открыли для Вас достyп!',1606374844,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kiAo1-cuDyIp-MS@ucs101-ucs-15.msgpanel.com>'),(1121,10688,'<E1khW4q-KAMPNj-MS@ucs101-ucs-9.msgpanel.com>',2,'Уведомление о зачислении беспроцентного зaйма',1606215731,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1khW4q-KAMPNj-MS@ucs101-ucs-9.msgpanel.com>'),(1122,10689,'<E1khsgf-RIWbhZ-MS@ucs101-ucs-10.msgpanel.com>',2,'Снoвa нe придeшь или в этoт рaз тeбя пoдoждать?',1606302622,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1khsgf-RIWbhZ-MS@ucs101-ucs-10.msgpanel.com>'),(1123,10690,'<E1kiLG5-OHUbrl-MT@ucs201-ucs-5.msgpanel.com>',2,'Ваша заявка одобрена | Вам одобрен счет!',1606412462,0,0,0,0,0,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kiLG5-OHUbrl-MT@ucs201-ucs-5.msgpanel.com>'),(1124,10700,'<E1kiWwv-Y1Hsww-MT@ucs101-ucs-4.msgpanel.com>',2,'Не могли с Вами связаться по телефону | Информация по Вaшему зaпросу!',1606457417,0,0,0,0,1,0,0,0,0,0,1,'',1606597955,'[]',NULL,'<E1kiWwv-Y1Hsww-MT@ucs101-ucs-4.msgpanel.com>'),(1125,10702,'<20201128210905.Horde.Qjpr525ohAHbKGZygpvbNg-@192.168.0.104>',1,'Важно!',1606597746,0,0,0,0,1,0,0,0,0,1,1,'',1606600744,'[]',NULL,'<20201128210905.Horde.Qjpr525ohAHbKGZygpvbNg-@192.168.0.104>'),(1126,1197,'<1541946759.543512812@f423.i.mail.ru>',3,'Fwd: Документ Microsoft Word.docx',1541946760,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1541946759.543512812@f423.i.mail.ru>'),(1127,1199,'<1541947069.840504406@f395.i.mail.ru>',3,'Новый документ в формате RTF.rtf',1541947069,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1541947069.840504406@f395.i.mail.ru>'),(1128,1201,'<1541947632.958385821@f116.i.mail.ru>',3,'IMGL7958.JPG, IMGL7969.JPG, IMGL7974.JPG и ещё 33 файла',1541947638,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1541947632.958385821@f116.i.mail.ru>'),(1129,1227,'<1542112256.666304221@f427.i.mail.ru>',3,'Fwd: Новый документ в формате RTF.rtf',1542112256,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1542112256.666304221@f427.i.mail.ru>'),(1130,1228,'<1542112315.151308030@f399.i.mail.ru>',3,'Fwd[2]: Документ Microsoft Word.docx',1542112316,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1542112315.151308030@f399.i.mail.ru>'),(1131,1241,'<1542124571.567408827@f451.i.mail.ru>',3,'титульный лист.docx, Документ Microsoft Word.docx',1542124571,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1542124571.567408827@f451.i.mail.ru>'),(1132,1242,'<1542126147.33136623@f538.i.mail.ru>',3,'Re: ФОТКИ ',1542126147,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[\"<1542056260.208277109@f342.i.mail.ru>\"]','<1542056260.208277109@f342.i.mail.ru>','<1542126147.33136623@f538.i.mail.ru>'),(1133,1381,'<1543475952.701587086@f553.i.mail.ru>',3,'',1543475959,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1543475952.701587086@f553.i.mail.ru>'),(1134,1384,'<1543484531.195885582@f107.i.mail.ru>',3,'Re[2]: ',1543484531,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[\"<1543475952.701587086@f553.i.mail.ru>\",\"<1543484269.21968680@f399.i.mail.ru>\"]','<1543484269.21968680@f399.i.mail.ru>','<1543484531.195885582@f107.i.mail.ru>'),(1135,1385,'<1543484621.432199195@f345.i.mail.ru>',3,'Re[2]: ',1543484622,1,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[\"<1543475952.701587086@f553.i.mail.ru>\",\"<1543484269.21968680@f399.i.mail.ru>\"]','<1543484269.21968680@f399.i.mail.ru>','<1543484621.432199195@f345.i.mail.ru>'),(1136,1388,'<1543492837.58942248@f410.i.mail.ru>',3,'Re[3]: ',1543492840,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[\"<1543475952.701587086@f553.i.mail.ru>\",\"<1543484269.21968680@f399.i.mail.ru>\",\"<1543484621.432199195@f345.i.mail.ru>\"]','<1543484621.432199195@f345.i.mail.ru>','<1543484621.432199195@f345.i.mail.ru>'),(1137,1505,'<1544690718.23604738@f458.i.mail.ru>',3,'Работа',1544690718,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[]',NULL,'<1544690718.23604738@f458.i.mail.ru>'),(1138,2535,'<1554811789.209740160@f353.i.mail.ru>',3,'Fwd: ',1554811790,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1554811789.209740160@f353.i.mail.ru>'),(1139,2584,'<1555003549.726727117@f544.i.mail.ru>',3,'отчет по обработке.docx',1555003550,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1555003549.726727117@f544.i.mail.ru>'),(1140,2745,'<1555675062.583616461@f68.i.mail.ru>',3,'дипломная.docx',1555675063,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1555675062.583616461@f68.i.mail.ru>'),(1141,3284,'<1558698421.304331932@f466.i.mail.ru>',3,'дипломная ',1558698422,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1558698421.304331932@f466.i.mail.ru>'),(1142,3501,'<1559910758.548570593@f458.i.mail.ru>',3,'дипломная 123.docx',1559910759,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1559910758.548570593@f458.i.mail.ru>'),(1143,3520,'<1559993502.462368512@f384.i.mail.ru>',3,'ПМ.1.docx',1559993502,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1559993502.462368512@f384.i.mail.ru>'),(1144,3522,'<1559995770.300875398@f455.i.mail.ru>',3,'отчёты',1559995771,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1559995770.300875398@f455.i.mail.ru>'),(1145,3530,'<1560027883.366302539@f142.i.mail.ru>',3,'ПМ.2.docx, ПМ.3.docx, ПМ.4.docx и ещё 2 файла',1560027884,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560027883.366302539@f142.i.mail.ru>'),(1146,3532,'<1560073702.619501682@f40.i.mail.ru>',3,'Fwd: Re: отчёты',1560073703,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560073702.619501682@f40.i.mail.ru>'),(1147,3533,'<1560073825.569866981@f407.i.mail.ru>',3,'Fwd: ПМ.2.docx, ПМ.3.docx, ПМ.4.docx и ещё 2 файла',1560073827,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560073825.569866981@f407.i.mail.ru>'),(1148,3536,'<1560108174.784708888@f238.i.mail.ru>',3,'Fwd: Re: ПМ.2.docx, ПМ.3.docx, ПМ.4.docx и ещё 2 файла',1560108175,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560108174.784708888@f238.i.mail.ru>'),(1149,3552,'<1560172291.148754883@f517.i.mail.ru>',3,'Fwd: Re: ПМ.2.docx, ПМ.3.docx, ПМ.4.docx и ещё 2 файла',1560172292,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560172291.148754883@f517.i.mail.ru>'),(1150,3611,'<1560517593.124301380@f106.i.mail.ru>',3,'Билеты марх (3).docx',1560517594,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560517593.124301380@f106.i.mail.ru>'),(1151,3627,'<1560689472.499220067@f496.i.mail.ru>',3,'дипломная 123.docx',1560689473,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560689472.499220067@f496.i.mail.ru>'),(1152,3631,'<1560712237.751989476@f502.i.mail.ru>',3,'дипломная Лом-Али.docx',1560712239,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1560712237.751989476@f502.i.mail.ru>'),(1153,3705,'<1561128139.528681211@f512.i.mail.ru>',3,'дипломная Лом-Али.docx',1561128142,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1561128139.528681211@f512.i.mail.ru>'),(1154,3740,'<1561408000.256775722@f367.i.mail.ru>',3,'Доклад на диплом.doc, Урус-Мартан.pptx',1561408003,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1561408000.256775722@f367.i.mail.ru>'),(1155,4069,'<1565264733.639562807@f281.i.mail.ru>',3,'',1565264734,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[]',NULL,'<1565264733.639562807@f281.i.mail.ru>'),(1156,4085,'<1565644644.26707879@f136.i.mail.ru>',3,'Re[2]: (Без темы)',1565644644,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[\"<1565264733.639562807@f281.i.mail.ru>\",\"<816771565624101@myt4-5a6ff78822c8.qloud-c.yandex.net>\"]','<816771565624101@myt4-5a6ff78822c8.qloud-c.yandex.net>','<1565644644.26707879@f136.i.mail.ru>'),(1157,4314,'<1569180995.563060878@f550.i.mail.ru>',3,'199930.ppt',1569180997,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569180995.563060878@f550.i.mail.ru>'),(1158,4328,'<1569314242.528553568@f88.i.mail.ru>',3,'Димитриева Л.Л. Методичка по оформлению.doc, Индивидуальное задание 2019_ИБ_1часть.docx, Распределение баллов для оценки индивидуального задания  - 2019.docx и ещё 2 файла',1569314244,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569314242.528553568@f88.i.mail.ru>'),(1159,4380,'<1569871825.329672117@f380.i.mail.ru>',3,'Лабораторная 2.docx',1569871826,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569871825.329672117@f380.i.mail.ru>'),(1160,4382,'<1569872356.904883769@f394.i.mail.ru>',3,'Лабораторная 2.docx',1569872357,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569872356.904883769@f394.i.mail.ru>'),(1161,4388,'<1569914653.472140512@f328.i.mail.ru>',3,'Индивидуальное задание 2019_ИБ_1часть.docx, Методичка по оформлению.doc, Распределение баллов для оценки индивидуального задания  - 2019.docx',1569914655,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569914653.472140512@f328.i.mail.ru>'),(1162,4390,'<1569914707.784469381@f114.i.mail.ru>',3,'Лабораторная работа 3. Кодирование_объемы.docx',1569914707,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569914707.784469381@f114.i.mail.ru>'),(1163,4392,'<1569919197.348394900@f500.i.mail.ru>',3,'Лабораторная 3.docx, Лабораторная работа 3. Кодирование_объемы.docx',1569919198,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1569919197.348394900@f500.i.mail.ru>'),(1164,4867,'<1573372285.832785955@f509.i.mail.ru>',3,'',1573372285,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[]',NULL,'<1573372285.832785955@f509.i.mail.ru>'),(1165,7724,'<1576915490.142538407@f273.i.mail.ru>',3,'Кибератаки ',1576915490,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1576915490.142538407@f273.i.mail.ru>'),(1166,7752,'<1577084800.666597521@f275.i.mail.ru>',3,'Статья',1577084801,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1577084800.666597521@f275.i.mail.ru>'),(1167,7780,'<1577211255.288941737@f349.i.mail.ru>',3,'Statya_po_OIB.docx',1577211255,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1577211255.288941737@f349.i.mail.ru>'),(1168,7793,'<1577270873.554978801@f472.i.mail.ru>',3,'Statya_po_OIB.docx',1577270874,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1577270873.554978801@f472.i.mail.ru>'),(1169,7819,'<1577435129.403604443@f537.i.mail.ru>',3,'Статья',1577435129,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1577435129.403604443@f537.i.mail.ru>'),(1170,8349,'<1582015460.204200237@f430.i.mail.ru>',3,'Self: ',1582015460,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[]',NULL,'<1582015460.204200237@f430.i.mail.ru>'),(1171,8445,'<1582872692.988454298@f406.i.mail.ru>',3,'Self: 1 работа.pkt',1582872693,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1582872692.988454298@f406.i.mail.ru>'),(1172,8841,'<1586950669.697312558@f392.i.mail.ru>',3,'Справка',1586950670,0,0,0,0,1,0,0,0,0,0,1,'',1606598111,'[]',NULL,'<1586950669.697312558@f392.i.mail.ru>'),(1173,9949,'<1600420401.131570082@f520.i.mail.ru>',3,'',1600420401,0,0,0,0,1,0,0,0,1,0,1,'',1606598111,'[]',NULL,'<1600420401.131570082@f520.i.mail.ru>'),(1174,1,'<160659817780.24.10491217401519984809@mlrmr.com>',16,'Добро пожаловать в Почту Mail.ru',1606598178,0,0,0,0,0,0,0,0,0,0,1,'',1606600231,'[]',NULL,'<160659817780.24.10491217401519984809@mlrmr.com>'),(1175,2,'<160659817793.24.8750898880883092478@mlrmr.com>',16,'Как воспользоваться почтой с мобильного?',1606598178,0,0,0,0,0,0,0,0,0,0,1,'',1606600231,'[]',NULL,'<160659817793.24.8750898880883092478@mlrmr.com>'),(1176,3,'<160659817809.24.12373523481723528588@mlrmr.com>',16,'Mail.ru – больше, чем почта. Познакомьтесь с проектами Mail.ru Group',1606598179,0,0,0,0,0,0,0,0,0,0,1,'',1606600231,'[]',NULL,'<160659817809.24.12373523481723528588@mlrmr.com>'),(1177,4,'<160659847675.4822.6408911106256904744@mlrmr.com>',16,'Изменён пароль в аккаунте',1606598477,0,0,0,0,0,0,0,0,0,0,1,'',1606600231,'[]',NULL,'<160659847675.4822.6408911106256904744@mlrmr.com>'),(1178,5,'<20201128214952.Horde.xva9pT6GqsNCoNYh9NVEhkr@192.168.0.104>',19,'Vj;yj=',1606600193,0,0,1,0,1,0,0,0,0,0,1,'',1606600193,'[]',NULL,'<20201128214952.Horde.xva9pT6GqsNCoNYh9NVEhkr@192.168.0.104>'),(1179,6,'<20201128214954.Horde.i6RfL9sI2_UN93ys047y_pc@192.168.0.104>',19,'От',1606600195,0,0,1,0,1,0,0,0,0,0,1,'',1606600195,'[]',NULL,'<20201128214954.Horde.i6RfL9sI2_UN93ys047y_pc@192.168.0.104>'),(1180,7,'<20201128214956.Horde.J-s21FuTx3cBnjyXoi8XvGb@192.168.0.104>',19,'Отпуск',1606600196,0,0,1,0,1,0,0,0,0,0,1,'',1606600197,'[]',NULL,'<20201128214956.Horde.J-s21FuTx3cBnjyXoi8XvGb@192.168.0.104>'),(1181,8,'<20201128214959.Horde.Dx1plcXZ7lu8UFEphKhtYrw@192.168.0.104>',19,'Отпуск!\\',1606600199,0,0,1,0,1,0,0,0,0,0,1,'',1606600200,'[]',NULL,'<20201128214959.Horde.Dx1plcXZ7lu8UFEphKhtYrw@192.168.0.104>'),(1182,9,'<20201128215000.Horde.UeBNGxFYDZbjdui9KUS-FJ8@192.168.0.104>',19,'Отпуск!',1606600201,0,0,1,0,1,0,0,0,0,0,1,'',1606600201,'[]',NULL,'<20201128215000.Horde.UeBNGxFYDZbjdui9KUS-FJ8@192.168.0.104>'),(1183,10,'<20201128215001.Horde.AEXa6ZRUAKgn6PqnEla0wuW@192.168.0.104>',19,'Отпуск!',1606600202,0,0,1,0,1,0,0,0,0,0,1,'',1606600203,'[]',NULL,'<20201128215001.Horde.AEXa6ZRUAKgn6PqnEla0wuW@192.168.0.104>'),(1184,11,'<20201128215005.Horde.6_XchLGFybQadAh4VbYsyOu@192.168.0.104>',19,'Отпуск!',1606600205,0,0,1,0,1,0,0,0,0,0,1,'',1606600206,'[]',NULL,'<20201128215005.Horde.6_XchLGFybQadAh4VbYsyOu@192.168.0.104>'),(1185,12,'<20201128215007.Horde.EXAWorn5enyPFtIFMDnlXO5@192.168.0.104>',19,'Отпуск!',1606600207,0,0,1,0,1,0,0,0,0,0,1,'',1606600208,'[]',NULL,'<20201128215007.Horde.EXAWorn5enyPFtIFMDnlXO5@192.168.0.104>'),(1186,13,'<20201128215012.Horde.uM4-rrvmPSNscoQaJ0Ig_XW@192.168.0.104>',19,'Отпуск!',1606600212,0,0,1,0,1,0,0,0,0,0,1,'',1606600213,'[]',NULL,'<20201128215012.Horde.uM4-rrvmPSNscoQaJ0Ig_XW@192.168.0.104>'),(1187,14,'<20201128215013.Horde.vYjM8gvMFpqde-3jPewjQ3y@192.168.0.104>',19,'Отпуск!',1606600214,0,0,1,0,1,0,0,0,0,0,1,'',1606600214,'[]',NULL,'<20201128215013.Horde.vYjM8gvMFpqde-3jPewjQ3y@192.168.0.104>'),(1188,15,'<20201128215015.Horde.38TEQ6BrzKWHxcJON17437v@192.168.0.104>',19,'Отпуск!',1606600215,0,0,1,0,1,0,0,0,0,0,1,'',1606600216,'[]',NULL,'<20201128215015.Horde.38TEQ6BrzKWHxcJON17437v@192.168.0.104>'),(1189,16,'<20201128215016.Horde.SpoLs4UT22AueEyjM2fZMhP@192.168.0.104>',19,'Отпуск!',1606600216,0,0,1,0,1,0,0,0,0,0,1,'',1606600217,'[]',NULL,'<20201128215016.Horde.SpoLs4UT22AueEyjM2fZMhP@192.168.0.104>'),(1190,17,'<20201128215019.Horde.WtXI-_AiFz80A2riTpwTers@192.168.0.104>',19,'Отпуск!',1606600219,0,0,1,0,1,0,0,0,0,0,1,'',1606600220,'[]',NULL,'<20201128215019.Horde.WtXI-_AiFz80A2riTpwTers@192.168.0.104>'),(1191,18,'<20201128215024.Horde.n8-JP-XCh_8geqbbOuiI5Vn@192.168.0.104>',19,'Отпуск!',1606600225,0,0,1,0,1,0,0,0,0,0,1,'',1606600225,'[]',NULL,'<20201128215024.Horde.n8-JP-XCh_8geqbbOuiI5Vn@192.168.0.104>'),(1192,19,'<20201128215026.Horde.dqPvGy5-gvKUfZevlEW5rXt@192.168.0.104>',19,'Отпуск!',1606600227,0,0,1,0,1,0,0,0,0,0,1,'',1606600228,'[]',NULL,'<20201128215026.Horde.dqPvGy5-gvKUfZevlEW5rXt@192.168.0.104>'),(1193,20,'<20201128215028.Horde.dOVgk9aH_RtfochKI1zvgg6@192.168.0.104>',19,'Отпуск!',1606600229,0,0,1,0,1,0,0,0,0,0,1,'',1606600229,'[]',NULL,'<20201128215028.Horde.dOVgk9aH_RtfochKI1zvgg6@192.168.0.104>'),(1194,21,'<20201128215030.Horde.VaS7Z7Gj9bANl7ChteQ2QW3@192.168.0.104>',19,'Отпуск!',1606600230,0,0,1,0,1,0,0,0,0,0,1,'',1606600231,'[]',NULL,'<20201128215030.Horde.VaS7Z7Gj9bANl7ChteQ2QW3@192.168.0.104>'),(1195,1,'<160659925204.25.12733367438050057972@mlrmr.com>',24,'Добро пожаловать в Почту Mail.ru',1606599252,0,0,0,0,0,0,0,0,0,0,1,'',1606600422,'[]',NULL,'<160659925204.25.12733367438050057972@mlrmr.com>'),(1196,2,'<160659925218.25.8084676696326044208@mlrmr.com>',24,'Как воспользоваться почтой с мобильного?',1606599253,0,0,0,0,0,0,0,0,0,0,1,'',1606600422,'[]',NULL,'<160659925218.25.8084676696326044208@mlrmr.com>'),(1197,3,'<20201128215326.Horde.BDXz2ZY3Nkxd5NJs2eZNdqQ@192.168.0.104>',27,'Rhtlb',1606600407,0,0,1,0,1,0,0,0,0,0,1,'',1606600407,'[]',NULL,'<20201128215326.Horde.BDXz2ZY3Nkxd5NJs2eZNdqQ@192.168.0.104>'),(1198,4,'<20201128215329.Horde.XW06cPLjA8PSUdUD747v7EW@192.168.0.104>',27,'Кредит',1606600410,0,0,1,0,1,0,0,0,0,0,1,'',1606600411,'[]',NULL,'<20201128215329.Horde.XW06cPLjA8PSUdUD747v7EW@192.168.0.104>'),(1199,5,'<20201128215331.Horde.yqpUwNY-gysc1xYPZaXN0cE@192.168.0.104>',27,'Кредит!',1606600412,0,0,1,0,1,0,0,0,0,0,1,'',1606600413,'[]',NULL,'<20201128215331.Horde.yqpUwNY-gysc1xYPZaXN0cE@192.168.0.104>'),(1200,6,'<20201128215348.Horde.RGr1T05I3_ApZ-bmX7qL51K@192.168.0.104>',27,'Кредит!',1606600429,0,0,1,0,1,0,0,0,0,0,1,'',1606600429,'[]',NULL,'<20201128215348.Horde.RGr1T05I3_ApZ-bmX7qL51K@192.168.0.104>'),(1201,7,'<20201128215349.Horde.inl0WkiRDV1h9qlhnTohue3@192.168.0.104>',27,'Кредит!',1606600430,0,0,1,0,1,0,0,0,0,0,1,'',1606600430,'[]',NULL,'<20201128215349.Horde.inl0WkiRDV1h9qlhnTohue3@192.168.0.104>'),(1202,8,'<20201128215350.Horde.Fm23gN6pdulDK7WYh7UvbsI@192.168.0.104>',27,'Кредит!',1606600431,0,0,1,0,1,0,0,0,0,0,1,'',1606600432,'[]',NULL,'<20201128215350.Horde.Fm23gN6pdulDK7WYh7UvbsI@192.168.0.104>'),(1203,9,'<20201128215352.Horde.kJm3GbNjyTtEETsvomKP7vw@192.168.0.104>',27,'Кредит!',1606600432,0,0,1,0,1,0,0,0,0,0,1,'',1606600433,'[]',NULL,'<20201128215352.Horde.kJm3GbNjyTtEETsvomKP7vw@192.168.0.104>'),(1204,10,'<20201128215353.Horde.bjIoWQ0ILBU6z9DMDOaJABn@192.168.0.104>',27,'Кредит!',1606600434,0,0,1,0,1,0,0,0,0,0,1,'',1606600434,'[]',NULL,'<20201128215353.Horde.bjIoWQ0ILBU6z9DMDOaJABn@192.168.0.104>'),(1205,11,'<20201128215354.Horde.7qafdKOzNza1rLZV0emeE20@192.168.0.104>',27,'Кредит!',1606600435,0,0,1,0,1,0,0,0,0,0,1,'',1606600436,'[]',NULL,'<20201128215354.Horde.7qafdKOzNza1rLZV0emeE20@192.168.0.104>'),(1206,12,'<20201128215356.Horde.DTXMjf_t8S1Bgy4iHTJ3zJ6@192.168.0.104>',27,'Кредит!',1606600437,0,0,1,0,1,0,0,0,0,0,1,'',1606600437,'[]',NULL,'<20201128215356.Horde.DTXMjf_t8S1Bgy4iHTJ3zJ6@192.168.0.104>'),(1207,13,'<20201128215358.Horde.K774uexsgZUaFZ7GC7kC-g3@192.168.0.104>',27,'Кредит!',1606600438,0,0,1,0,1,0,0,0,0,0,1,'',1606600439,'[]',NULL,'<20201128215358.Horde.K774uexsgZUaFZ7GC7kC-g3@192.168.0.104>'),(1208,14,'<20201128215400.Horde.nc_oulS4Qx426OWy6udoOXe@192.168.0.104>',27,'Кредит!',1606600440,0,0,1,0,1,0,0,0,0,0,1,'',1606600441,'[]',NULL,'<20201128215400.Horde.nc_oulS4Qx426OWy6udoOXe@192.168.0.104>'),(1209,15,'<20201128215401.Horde.3pifEIOJCVmfvzEwTCQEkhR@192.168.0.104>',27,'Кредит!',1606600441,0,0,1,0,1,0,0,0,0,0,1,'',1606600442,'[]',NULL,'<20201128215401.Horde.3pifEIOJCVmfvzEwTCQEkhR@192.168.0.104>'),(1210,16,'<20201128215402.Horde.pWoWAaWJuV7CaP0KqymXO6Q@192.168.0.104>',27,'Кредит!',1606600443,0,0,1,0,1,0,0,0,0,0,1,'',1606600443,'[]',NULL,'<20201128215402.Horde.pWoWAaWJuV7CaP0KqymXO6Q@192.168.0.104>'),(1211,1,'<160659972313.22.1308044776489796586@mlrmr.com>',32,'Добро пожаловать в Почту Mail.ru',1606599724,0,0,0,0,0,0,0,0,0,0,1,'',1606600745,'[]',NULL,'<160659972313.22.1308044776489796586@mlrmr.com>'),(1212,2,'<160659972326.22.12754615938526355439@mlrmr.com>',32,'Как воспользоваться почтой с мобильного?',1606599724,0,0,0,0,0,0,0,0,0,0,1,'',1606600745,'[]',NULL,'<160659972326.22.12754615938526355439@mlrmr.com>'),(1213,3,'<160659972342.22.14648346618245252264@mlrmr.com>',32,'Mail.ru – больше, чем почта. Познакомьтесь с проектами Mail.ru Group',1606599724,0,0,0,0,0,0,0,0,0,0,1,'',1606600745,'[]',NULL,'<160659972342.22.14648346618245252264@mlrmr.com>'),(1214,4,'<20201128215723.Horde.DvKOGnnTw5okoM8x6up8Jw6@192.168.0.104>',35,'',1606600643,0,0,1,0,1,0,0,0,0,0,1,'',1606600643,'[]',NULL,'<20201128215723.Horde.DvKOGnnTw5okoM8x6up8Jw6@192.168.0.104>'),(1215,5,'<20201128215727.Horde.AKmQlmh3Vt6K-11IjFApMs-@192.168.0.104>',35,'D',1606600647,0,0,1,0,1,0,0,0,0,0,1,'',1606600648,'[]',NULL,'<20201128215727.Horde.AKmQlmh3Vt6K-11IjFApMs-@192.168.0.104>'),(1216,6,'<20201128215730.Horde.5hVKS1gSha_gNZde05PH4Td@192.168.0.104>',35,'Мк',1606600650,0,0,1,0,1,0,0,0,0,0,1,'',1606600651,'[]',NULL,'<20201128215730.Horde.5hVKS1gSha_gNZde05PH4Td@192.168.0.104>'),(1217,7,'<20201128215731.Horde.zVmnUdo70V9OTyrN3dYWOXd@192.168.0.104>',35,'',1606600652,0,0,1,0,1,0,0,0,0,0,1,'',1606600652,'[]',NULL,'<20201128215731.Horde.zVmnUdo70V9OTyrN3dYWOXd@192.168.0.104>'),(1218,8,'<20201128215735.Horde.9Bwwr_bnJDGOtCD169lTTdK@192.168.0.104>',35,'Начальство',1606600655,0,0,1,0,1,0,0,0,0,0,1,'',1606600656,'[]',NULL,'<20201128215735.Horde.9Bwwr_bnJDGOtCD169lTTdK@192.168.0.104>'),(1219,9,'<20201128215736.Horde.a9px-SgrHaP3wx0IuJDkUSC@192.168.0.104>',35,'Начальство',1606600656,0,0,1,0,1,0,0,0,0,0,1,'',1606600657,'[]',NULL,'<20201128215736.Horde.a9px-SgrHaP3wx0IuJDkUSC@192.168.0.104>'),(1220,10,'<20201128215737.Horde.OQ9BvWfHZE9_DewHrPC7Yl8@192.168.0.104>',35,'Начальство!',1606600657,0,0,1,0,1,0,0,0,0,0,1,'',1606600658,'[]',NULL,'<20201128215737.Horde.OQ9BvWfHZE9_DewHrPC7Yl8@192.168.0.104>'),(1221,11,'<20201128215739.Horde.i2-HECqegpIm0yYR3O79yTc@192.168.0.104>',35,'Начальство!',1606600659,0,0,1,0,1,0,0,0,0,0,1,'',1606600660,'[]',NULL,'<20201128215739.Horde.i2-HECqegpIm0yYR3O79yTc@192.168.0.104>'),(1222,12,'<20201128215740.Horde.ADJzo1Q_smCD33KMWMZJAPw@192.168.0.104>',35,'Начальство!',1606600661,0,0,1,0,1,0,0,0,0,0,1,'',1606600661,'[]',NULL,'<20201128215740.Horde.ADJzo1Q_smCD33KMWMZJAPw@192.168.0.104>'),(1223,13,'<20201128215743.Horde.03MIAl50OtTf9PXfOptrz9p@192.168.0.104>',35,'Начальство!',1606600663,0,0,1,0,1,0,0,0,0,0,1,'',1606600664,'[]',NULL,'<20201128215743.Horde.03MIAl50OtTf9PXfOptrz9p@192.168.0.104>'),(1224,14,'<20201128215744.Horde.dY9wuitQ_Q-rtQHzlswMkO3@192.168.0.104>',35,'Начальство!',1606600665,0,0,1,0,1,0,0,0,0,0,1,'',1606600665,'[]',NULL,'<20201128215744.Horde.dY9wuitQ_Q-rtQHzlswMkO3@192.168.0.104>'),(1225,15,'<20201128215746.Horde.lZmVelzLQdB0SaLm83bl9X8@192.168.0.104>',35,'Начальство!',1606600667,0,0,1,0,1,0,0,0,0,0,1,'',1606600668,'[]',NULL,'<20201128215746.Horde.lZmVelzLQdB0SaLm83bl9X8@192.168.0.104>'),(1226,10703,'<mgHOJLHCmwI2A85fwsGnBBcFAQ>',1,'Александр, на вас надвигается ☄️ распродажа стикеров!',1606599080,0,0,0,0,1,0,0,0,0,0,1,'',1606600970,'[]',NULL,'<mgHOJLHCmwI2A85fwsGnBBcFAQ>'),(1227,10704,'<20201128215032.Horde.hhEGDXEmn_7Zgm1nQfSmtas@192.168.0.104>',1,'Отпуск!',1606600233,0,0,0,0,1,0,0,0,0,1,1,'',1606600970,'[]',NULL,'<20201128215032.Horde.hhEGDXEmn_7Zgm1nQfSmtas@192.168.0.104>'),(1228,10705,'<20201128215404.Horde.AXOWOTA_RF2DyMiEArICuG8@192.168.0.104>',1,'Кредит!',1606600445,0,0,0,0,0,0,0,0,0,1,1,'',1606600970,'[]',NULL,'<20201128215404.Horde.AXOWOTA_RF2DyMiEArICuG8@192.168.0.104>'),(1229,10706,'<20201128215748.Horde.ZaYc9fiEgTAqVIsl81DNKYO@192.168.0.104>',1,'Начальство!',1606600669,0,0,0,0,1,0,0,0,0,1,1,'',1606600970,'[]',NULL,'<20201128215748.Horde.ZaYc9fiEgTAqVIsl81DNKYO@192.168.0.104>'),(1230,1,'<160659885500.20.6698658982048772523@mlrmr.com>',40,'Добро пожаловать в Почту Mail.ru',1606598855,0,0,0,0,0,0,0,0,0,0,1,'',1606601050,'[]',NULL,'<160659885500.20.6698658982048772523@mlrmr.com>'),(1231,2,'<160659885531.20.4141932199369476498@mlrmr.com>',40,'Mail.ru – больше, чем почта. Познакомьтесь с проектами Mail.ru Group',1606598856,0,0,0,0,0,0,0,0,0,0,1,'',1606601050,'[]',NULL,'<160659885531.20.4141932199369476498@mlrmr.com>'),(1232,3,'<160659885514.20.6380850196250272305@mlrmr.com>',40,'Как воспользоваться почтой с мобильного?',1606598856,0,0,0,0,0,0,0,0,0,0,1,'',1606601050,'[]',NULL,'<160659885514.20.6380850196250272305@mlrmr.com>'),(1233,4,'<20201128220134.Horde.psamIysPNoG2Du5F10ymj0j@192.168.0.104>',43,'Важно!',1606600895,0,0,1,0,1,0,0,0,0,0,1,'',1606600895,'[]',NULL,'<20201128220134.Horde.psamIysPNoG2Du5F10ymj0j@192.168.0.104>'),(1234,5,'<20201128220137.Horde.VEKj7UtXIrNFVhXm95wvN-7@192.168.0.104>',43,'Важно!',1606600898,0,0,1,0,1,0,0,0,0,0,1,'',1606600898,'[]',NULL,'<20201128220137.Horde.VEKj7UtXIrNFVhXm95wvN-7@192.168.0.104>'),(1235,6,'<20201128220138.Horde.ymSAKfSCVv8aywGb7PrHqUW@192.168.0.104>',43,'Важно!',1606600899,0,0,1,0,1,0,0,0,0,0,1,'',1606600899,'[]',NULL,'<20201128220138.Horde.ymSAKfSCVv8aywGb7PrHqUW@192.168.0.104>'),(1236,17,'<160659802640.4831.2430193699807251253@mlrmr.com>',8,'Вход с нового устройства в аккаунт',1606598027,0,0,0,0,0,0,0,0,NULL,0,0,NULL,NULL,'[]',NULL,'<160659802640.4831.2430193699807251253@mlrmr.com>');
/*!40000 ALTER TABLE `oc_mail_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mail_recipients`
--

DROP TABLE IF EXISTS `oc_mail_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mail_recipients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mail_recipient_msg_id_idx` (`message_id`),
  KEY `mail_recipient_email_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mail_recipients`
--

LOCK TABLES `oc_mail_recipients` WRITE;
/*!40000 ALTER TABLE `oc_mail_recipients` DISABLE KEYS */;
INSERT INTO `oc_mail_recipients` VALUES (1,1051,0,'сэм фен','sla0119@mail.ru'),(2,1052,0,'сэм фен','sla0119@mail.ru'),(3,1053,0,'Саламов Ломали','sla0119@mail.ru'),(4,1053,1,'сэм фен','sla0119@mail.ru'),(5,1054,0,'Саламов Ломали','sla0119@mail.ru'),(6,1055,0,'Почта Mail.ru','welcome@e.mail.ru'),(7,1055,1,'99test990@mail.ru','99test990@mail.ru'),(8,1056,0,'Почта Mail.ru','welcome@e.mail.ru'),(9,1056,1,'99test990@mail.ru','99test990@mail.ru'),(10,1057,0,'Почта Mail.ru','welcome@e.mail.ru'),(11,1057,1,'99test990@mail.ru','99test990@mail.ru'),(12,1058,0,'Почта Mail.ru','info@e.mail.ru'),(13,1058,1,'99test990@mail.ru','99test990@mail.ru'),(14,1059,0,'user1','99test990@mail.ru'),(15,1060,0,'user1','99test990@mail.ru'),(16,1061,0,'user1','99test990@mail.ru'),(17,1062,0,'user1','99test990@mail.ru'),(18,1063,0,'user1','99test990@mail.ru'),(19,1064,0,'user1','99test990@mail.ru'),(20,1065,0,'user1','99test990@mail.ru'),(21,1066,0,'user1','99test990@mail.ru'),(22,1067,0,'user1','99test990@mail.ru'),(23,1068,0,'user1','99test990@mail.ru'),(24,1069,0,'user1','99test990@mail.ru'),(25,1070,0,'Отдел Выплат','vyplatotdel@gmail.com'),(26,1070,1,'Вам','vy.pla.totdel@gmail.com'),(27,1071,0,'Отдел Выплат','vnalivkin33@gmail.com'),(28,1071,1,'vnalivkin33@gmail.com','vnalivkin33@gmail.com'),(29,1072,0,'Отдел Выплат','vnalivkin33@gmail.com'),(30,1072,1,'vnalivkin33@gmail.com','vnalivkin33@gmail.com'),(31,1073,0,'Служба Поддержки','strelc512@gmail.com'),(32,1073,1,'strelc512@gmail.com','strelc512@gmail.com'),(33,1074,0,'Руководство','pavelser87@gmail.com'),(34,1074,1,'pavelser87@gmail.com','pavelser87@gmail.com'),(35,1075,0,'Congregation Beth Tefillah','bookkeeper@bethtefillah.org'),(36,1075,1,'( ,: http://sms.ru/4tY5q ','8!\" <gohedox222@sekris.com'),(37,1076,0,'Благая весть онлайн','info@ciibot5.ru'),(38,1076,1,'sla0119@mail.ru','sla0119@mail.ru'),(39,1077,0,'Дэнис Реннер','marketing@ciibot5.ru'),(40,1077,1,'sla0119@mail.ru','sla0119@mail.ru'),(41,1078,0,'Лексический тест','no-reply@ciibot5.ru'),(42,1078,1,'sla0119@mail.ru','sla0119@mail.ru'),(43,1079,0,'KRRb','widttaeys@ciibot5.ruasgh'),(44,1079,1,'sla0119@mail.ru','sla0119@mail.ru'),(45,1080,0,'YR ParT','roujiks@ureommo.ru'),(46,1080,1,'sla0119@mail.ru','sla0119@mail.ru'),(47,1081,0,'YR ParT','loinems@ureommo.ru'),(48,1081,1,'sla0119@mail.ru','sla0119@mail.ru'),(49,1082,0,'ECo','nunseen@ureommo.ru'),(50,1082,1,'sla0119@mail.ru','sla0119@mail.ru'),(51,1083,0,'Eco','kmepfn@ureommo.ru'),(52,1083,1,'sla0119@mail.ru','sla0119@mail.ru'),(53,1084,0,'Alliance Broc','baiitc@ureommo.ru'),(54,1084,1,'sla0119@mail.ru','sla0119@mail.ru'),(55,1085,0,'NewHo','wriivsty@ureommo.ru'),(56,1085,1,'sla0119@mail.ru','sla0119@mail.ru'),(57,1086,0,'Sppl Lotty','obbmer@ureommo.ru'),(58,1086,1,'sla0119@mail.ru','sla0119@mail.ru'),(59,1087,0,'Tech Answer','boekcit@ureommo.ru'),(60,1087,1,'sla0119@mail.ru','sla0119@mail.ru'),(61,1088,0,'Licen Numb','ticor@ureommo.ru'),(62,1088,1,'sla0119@mail.ru','sla0119@mail.ru'),(63,1089,0,'YR ParT','koiyus@ureommo.ru'),(64,1089,1,'sla0119@mail.ru','sla0119@mail.ru'),(65,1090,0,'Partner','jlbsl@ureommo.ru'),(66,1090,1,'sla0119@mail.ru','sla0119@mail.ru'),(67,1091,0,'KRRb','ribs4dar@ureommo.ru'),(68,1091,1,'sla0119@mail.ru','sla0119@mail.ru'),(69,1092,0,'Интернет-магазин Drez.ru','sender@ciibot5.ru'),(70,1092,1,'sla0119@mail.ru','sla0119@mail.ru'),(71,1093,0,'Deal.by','market@ciibot5.ru'),(72,1093,1,'sla0119@mail.ru','sla0119@mail.ru'),(73,1094,0,'Alliance Broc','baiitc@ureommo.ru'),(74,1094,1,'sla0119@mail.ru','sla0119@mail.ru'),(75,1095,0,'Cesdeals','service@ciibot5.ru'),(76,1095,1,'sla0119@mail.ru','sla0119@mail.ru'),(77,1096,0,'Your Partner','ivcby@ureommo.ru'),(78,1096,1,'sla0119@mail.ru','sla0119@mail.ru'),(79,1097,0,'Coolicool.com','billing@ciibot5.ru'),(80,1097,1,'sla0119@mail.ru','sla0119@mail.ru'),(81,1098,0,'KRRb','widttaeys@ciibot5.ruasgh'),(82,1098,1,'sla0119@mail.ru','sla0119@mail.ru'),(83,1099,0,'KRRb','albpyscr@ureommo.ru'),(84,1099,1,'sla0119@mail.ru','sla0119@mail.ru'),(85,1100,0,'YR ParT','giobprt@ureommo.ru'),(86,1100,1,'sla0119@mail.ru','sla0119@mail.ru'),(87,1101,0,'Partner','dyp4by@ureommo.ru'),(88,1101,1,'sla0119@mail.ru','sla0119@mail.ru'),(89,1102,0,'Your Partner','ivcby@ureommo.ru'),(90,1102,1,'sla0119@mail.ru','sla0119@mail.ru'),(91,1103,0,'МБХ медиа','sender@ciibot5.ru'),(92,1103,1,'sla0119@mail.ru','sla0119@mail.ru'),(93,1104,0,'Вика','victorypav8@gmail.com'),(94,1104,1,'victorypav8@gmail.com','victorypav8@gmail.com'),(95,1105,0,'Вика','victorypav8@gmail.com'),(96,1105,1,'info@neighbor-worry.ru','info@neighbor-worry.ru'),(97,1106,0,'Школа Фриланса','adi@yamaha-piano.ru'),(98,1106,1,'sla0119@mail.ru','sla0119@mail.ru'),(99,1107,0,'Онлайн-Лотерея','oloterea@gmail.com'),(100,1107,1,'Вам','oloterea@gmail.com'),(101,1108,0,'Павел','rabotapavel8@gmail.com'),(102,1108,1,'rabotapavel8@gmail.com','rabotapavel8@gmail.com'),(103,1109,0,'Dropbox','no-reply@dropbox.com'),(104,1109,1,'evipmkozlov@mail.ru','evipmkozlov@mail.ru'),(105,1110,0,'Валерий Директор','valerijdirektor@gmail.com'),(106,1110,1,'Вам','valerijdirektor@gmail.com'),(107,1111,0,'ОФИСМАГ МОСКВА','support@anapart.ru'),(108,1111,1,'sla0119@mail.ru','sla0119@mail.ru'),(109,1112,0,'ОФИСМАГ МОСКВА','store@anapart.ru'),(110,1112,1,'sla0119@mail.ru','sla0119@mail.ru'),(111,1113,0,'Интенсив','sdfkyirb@ingos.ru'),(112,1113,1,'sla0119@mail.ru','sla0119@mail.ru'),(113,1114,0,'Nikolay Litvin','iropa@funsmvsr.ru'),(114,1115,0,'Troem Loa','offics@glasson2.ru'),(115,1115,1,'sla0119@mail.ru','sla0119@mail.ru'),(116,1116,0,'Ваш Банк','redka.basil@yandex.ru'),(117,1116,1,'ds1599.463@gmail.com','ds1599.463@gmail.com'),(118,1117,0,'Начальник','pdedishev@yandex.ru'),(119,1117,1,'pavelserg00.0@gmail.com','pavelserg00.0@gmail.com'),(120,1118,0,'Форум','info@rustuts.ru'),(121,1118,1,'sla0119@mail.ru','sla0119@mail.ru'),(122,1119,0,'Dropbox','no-reply@dropbox.com'),(123,1119,1,'evipmkozlov@mail.ru','evipmkozlov@mail.ru'),(124,1120,0,'Директ','info@art-on-body.ru'),(125,1120,1,'sla0119@mail.ru','sla0119@mail.ru'),(126,1121,0,'Онлайн | Бaнк','info@banya-kzn.ru'),(127,1121,1,'sla0119@mail.ru','sla0119@mail.ru'),(128,1122,0,'Онлайн | Бaнк','info@banya-kzn.ru'),(129,1122,1,'sla0119@mail.ru','sla0119@mail.ru'),(130,1123,0,'Онлайн | Бaнк','info@banya-kzn.ru'),(131,1123,1,'sla0119@mail.ru','sla0119@mail.ru'),(132,1124,0,'Диpект','info@ict-gov.ru'),(133,1124,1,'sla0119@mail.ru','sla0119@mail.ru'),(134,1125,0,'user1','99test990@mail.ru'),(135,1125,1,'sla0119@mail.ru','sla0119@mail.ru'),(136,1126,0,'сэм фен','sla0119@mail.ru'),(137,1126,1,'Таиса Саламова','taisa.taisa.74@mail.ru'),(138,1127,0,'сэм фен','sla0119@mail.ru'),(139,1127,1,'Таиса Саламова','taisa.taisa.74@mail.ru'),(140,1128,0,'сэм фен','sla0119@mail.ru'),(141,1128,1,'Таиса Саламова','taisa.taisa.74@mail.ru'),(142,1129,0,'сэм фен','sla0119@mail.ru'),(143,1129,1,'Mirnina_15@mail.ru','Mirnina_15@mail.ru'),(144,1130,0,'сэм фен','sla0119@mail.ru'),(145,1130,1,'Mirnina_15@mail.ru','Mirnina_15@mail.ru'),(146,1131,0,'сэм фен','sla0119@mail.ru'),(147,1131,1,'Таиса Саламова','taisa.taisa.74@mail.ru'),(148,1132,0,'сэм фен','sla0119@mail.ru'),(149,1132,1,'anzor-ant@mail.ru','anzor-ant@mail.ru'),(150,1133,0,'сэм фен','sla0119@mail.ru'),(151,1133,1,'oknur-russintegral@mail.ru','oknur-russintegral@mail.ru'),(152,1134,0,'сэм фен','sla0119@mail.ru'),(153,1134,1,'Марина Николаевна','oknur-russintegral@mail.ru'),(154,1135,0,'сэм фен','sla0119@mail.ru'),(155,1135,1,'Марина Николаевна','oknur-russintegral@mail.ru'),(156,1136,0,'сэм фен','sla0119@mail.ru'),(157,1136,1,'Марина Николаевна','oknur-russintegral@mail.ru'),(158,1137,0,'сэм фен','sla0119@mail.ru'),(159,1137,1,'oknur-russintegral','oknur-russintegral@mail.ru'),(160,1138,0,'сэм фен','sla0119@mail.ru'),(161,1138,1,'adam-995@bk.ru','adam-995@bk.ru'),(162,1139,0,'сэм фен','sla0119@mail.ru'),(163,1139,1,'Таиса Саламова','taisa.taisa.74@mail.ru'),(164,1140,0,'сэм фен','sla0119@mail.ru'),(165,1140,1,'eldarova.86@mail.ru','eldarova.86@mail.ru'),(166,1141,0,'сэм фен','sla0119@mail.ru'),(167,1141,1,'eldarova.86','eldarova.86@mail.ru'),(168,1142,0,'сэм фен','sla0119@mail.ru'),(169,1142,1,'eldarova.86','eldarova.86@mail.ru'),(170,1143,0,'сэм фен','sla0119@mail.ru'),(171,1143,1,'adam-995','adam-995@bk.ru'),(172,1144,0,'сэм фен','sla0119@mail.ru'),(173,1144,1,'bon.bon94@mail.ru','bon.bon94@mail.ru'),(174,1145,0,'сэм фен','sla0119@mail.ru'),(175,1145,1,'bon.bon94@mail.ru','bon.bon94@mail.ru'),(176,1146,0,'сэм фен','sla0119@mail.ru'),(177,1146,1,'adam-995@bk.ru','adam-995@bk.ru'),(178,1147,0,'сэм фен','sla0119@mail.ru'),(179,1147,1,'adam-995@bk.ru','adam-995@bk.ru'),(180,1148,0,'сэм фен','sla0119@mail.ru'),(181,1148,1,'mirnina_15@mail.ru','mirnina_15@mail.ru'),(182,1149,0,'сэм фен','sla0119@mail.ru'),(183,1149,1,'Goldcarl@mail.ru','Goldcarl@mail.ru'),(184,1150,0,'сэм фен','sla0119@mail.ru'),(185,1150,1,'Lom Ali','31salamov95@gmail.com'),(186,1151,0,'сэм фен','sla0119@mail.ru'),(187,1151,1,'eldarova.86','eldarova.86@mail.ru'),(188,1152,0,'сэм фен','sla0119@mail.ru'),(189,1152,1,'eldarova.86','eldarova.86@mail.ru'),(190,1153,0,'сэм фен','sla0119@mail.ru'),(191,1153,1,'eldarova.86','eldarova.86@mail.ru'),(192,1154,0,'сэм фен','sla0119@mail.ru'),(193,1154,1,'eldarova.86','eldarova.86@mail.ru'),(194,1155,0,'сэм фен','sla0119@mail.ru'),(195,1155,1,'obshezitierinh@yandex.ru','obshezitierinh@yandex.ru'),(196,1156,0,'сэм фен','sla0119@mail.ru'),(197,1156,1,'obshezitierinh@yandex.ru','obshezitierinh@yandex.ru'),(198,1157,0,'сэм фен','sla0119@mail.ru'),(199,1157,1,'sla0119@mail.ru','sla0119@mail.ru'),(200,1158,0,'сэм фен','sla0119@mail.ru'),(201,1158,1,'sla0119','sla0119@mail.ru'),(202,1159,0,'сэм фен','sla0119@mail.ru'),(203,1159,1,'zabara_2001@mail.ru','zabara_2001@mail.ru'),(204,1160,0,'сэм фен','sla0119@mail.ru'),(205,1160,1,'sla0119','sla0119@mail.ru'),(206,1161,0,'сэм фен','sla0119@mail.ru'),(207,1161,1,'sla0119','sla0119@mail.ru'),(208,1162,0,'сэм фен','sla0119@mail.ru'),(209,1162,1,'sla0119','sla0119@mail.ru'),(210,1163,0,'сэм фен','sla0119@mail.ru'),(211,1163,1,'sla0119','sla0119@mail.ru'),(212,1164,0,'сэм фен','sla0119@mail.ru'),(213,1164,1,'sla0119@mail.ru','sla0119@mail.ru'),(214,1165,0,'сэм фен','sla0119@mail.ru'),(215,1165,1,'pro.a.i@ya.ru','pro.a.i@ya.ru'),(216,1166,0,'сэм фен','sla0119@mail.ru'),(217,1166,1,'celt@inbox.ru','celt@inbox.ru'),(218,1167,0,'сэм фен','sla0119@mail.ru'),(219,1167,1,'celt','celt@inbox.ru'),(220,1168,0,'Саламов Ломали','sla0119@mail.ru'),(221,1168,1,'celt','celt@inbox.ru'),(222,1169,0,'Саламов Ломали','sla0119@mail.ru'),(223,1169,1,'celt','celt@inbox.ru'),(224,1170,0,'Саламов Ломали','sla0119@mail.ru'),(225,1170,1,'сэм фен','sla0119@mail.ru'),(226,1171,0,'Саламов Ломали','sla0119@mail.ru'),(227,1171,1,'сэм фен','sla0119@mail.ru'),(228,1172,0,'Саламов Ломали','sla0119@mail.ru'),(229,1172,1,'zapros-rndchr@yandex.ru','zapros-rndchr@yandex.ru'),(230,1173,0,'Саламов Ломали','sla0119@mail.ru'),(231,1173,1,'grigosip70@mail.ru','grigosip70@mail.ru'),(232,1174,0,'Почта Mail.ru','welcome@e.mail.ru'),(233,1174,1,'user1.user1_user1@mail.ru','user1.user1_user1@mail.ru'),(234,1175,0,'Почта Mail.ru','welcome@e.mail.ru'),(235,1175,1,'user1.user1_user1@mail.ru','user1.user1_user1@mail.ru'),(236,1176,0,'Почта Mail.ru','welcome@e.mail.ru'),(237,1176,1,'user1.user1_user1@mail.ru','user1.user1_user1@mail.ru'),(238,1177,0,'Mail.ru','security@id.mail.ru'),(239,1177,1,'user1.user1_user1@mail.ru','user1.user1_user1@mail.ru'),(240,1178,0,'user2','user1.user1_user1@mail.ru'),(241,1179,0,'user2','user1.user1_user1@mail.ru'),(242,1180,0,'user2','user1.user1_user1@mail.ru'),(243,1181,0,'user2','user1.user1_user1@mail.ru'),(244,1182,0,'user2','user1.user1_user1@mail.ru'),(245,1183,0,'user2','user1.user1_user1@mail.ru'),(246,1184,0,'user2','user1.user1_user1@mail.ru'),(247,1185,0,'user2','user1.user1_user1@mail.ru'),(248,1186,0,'user2','user1.user1_user1@mail.ru'),(249,1187,0,'user2','user1.user1_user1@mail.ru'),(250,1188,0,'user2','user1.user1_user1@mail.ru'),(251,1189,0,'user2','user1.user1_user1@mail.ru'),(252,1190,0,'user2','user1.user1_user1@mail.ru'),(253,1191,0,'user2','user1.user1_user1@mail.ru'),(254,1192,0,'user2','user1.user1_user1@mail.ru'),(255,1193,0,'user2','user1.user1_user1@mail.ru'),(256,1194,0,'user2','user1.user1_user1@mail.ru'),(257,1195,0,'Почта Mail.ru','welcome@e.mail.ru'),(258,1195,1,'user2.user2_user2@mail.ru','user2.user2_user2@mail.ru'),(259,1196,0,'Почта Mail.ru','welcome@e.mail.ru'),(260,1196,1,'user2.user2_user2@mail.ru','user2.user2_user2@mail.ru'),(261,1197,0,'user3','user2.user2_user2@mail.ru'),(262,1197,1,'sla0119@mail.ru','sla0119@mail.ru'),(263,1198,0,'user3','user2.user2_user2@mail.ru'),(264,1198,1,'sla0119@mail.ru','sla0119@mail.ru'),(265,1199,0,'user3','user2.user2_user2@mail.ru'),(266,1199,1,'sla0119@mail.ru','sla0119@mail.ru'),(267,1200,0,'user3','user2.user2_user2@mail.ru'),(268,1200,1,'sla0119@mail.ru','sla0119@mail.ru'),(269,1201,0,'user3','user2.user2_user2@mail.ru'),(270,1201,1,'sla0119@mail.ru','sla0119@mail.ru'),(271,1202,0,'user3','user2.user2_user2@mail.ru'),(272,1202,1,'sla0119@mail.ru','sla0119@mail.ru'),(273,1203,0,'user3','user2.user2_user2@mail.ru'),(274,1203,1,'sla0119@mail.ru','sla0119@mail.ru'),(275,1204,0,'user3','user2.user2_user2@mail.ru'),(276,1204,1,'sla0119@mail.ru','sla0119@mail.ru'),(277,1205,0,'user3','user2.user2_user2@mail.ru'),(278,1205,1,'sla0119@mail.ru','sla0119@mail.ru'),(279,1206,0,'user3','user2.user2_user2@mail.ru'),(280,1206,1,'sla0119@mail.ru','sla0119@mail.ru'),(281,1207,0,'user3','user2.user2_user2@mail.ru'),(282,1207,1,'sla0119@mail.ru','sla0119@mail.ru'),(283,1208,0,'user3','user2.user2_user2@mail.ru'),(284,1208,1,'sla0119@mail.ru','sla0119@mail.ru'),(285,1209,0,'user3','user2.user2_user2@mail.ru'),(286,1209,1,'sla0119@mail.ru','sla0119@mail.ru'),(287,1210,0,'user3','user2.user2_user2@mail.ru'),(288,1210,1,'sla0119@mail.ru','sla0119@mail.ru'),(289,1211,0,'Почта Mail.ru','welcome@e.mail.ru'),(290,1211,1,'user3.user3_user3@mail.ru','user3.user3_user3@mail.ru'),(291,1212,0,'Почта Mail.ru','welcome@e.mail.ru'),(292,1212,1,'user3.user3_user3@mail.ru','user3.user3_user3@mail.ru'),(293,1213,0,'Почта Mail.ru','welcome@e.mail.ru'),(294,1213,1,'user3.user3_user3@mail.ru','user3.user3_user3@mail.ru'),(295,1214,0,'user4','user3.user3_user3@mail.ru'),(296,1214,1,'sla0119@mail.ru','sla0119@mail.ru'),(297,1215,0,'user4','user3.user3_user3@mail.ru'),(298,1215,1,'sla0119@mail.ru','sla0119@mail.ru'),(299,1216,0,'user4','user3.user3_user3@mail.ru'),(300,1216,1,'sla0119@mail.ru','sla0119@mail.ru'),(301,1217,0,'user4','user3.user3_user3@mail.ru'),(302,1217,1,'sla0119@mail.ru','sla0119@mail.ru'),(303,1218,0,'user4','user3.user3_user3@mail.ru'),(304,1218,1,'sla0119@mail.ru','sla0119@mail.ru'),(305,1219,0,'user4','user3.user3_user3@mail.ru'),(306,1219,1,'sla0119@mail.ru','sla0119@mail.ru'),(307,1220,0,'user4','user3.user3_user3@mail.ru'),(308,1220,1,'sla0119@mail.ru','sla0119@mail.ru'),(309,1221,0,'user4','user3.user3_user3@mail.ru'),(310,1221,1,'sla0119@mail.ru','sla0119@mail.ru'),(311,1222,0,'user4','user3.user3_user3@mail.ru'),(312,1222,1,'sla0119@mail.ru','sla0119@mail.ru'),(313,1223,0,'user4','user3.user3_user3@mail.ru'),(314,1223,1,'sla0119@mail.ru','sla0119@mail.ru'),(315,1224,0,'user4','user3.user3_user3@mail.ru'),(316,1224,1,'sla0119@mail.ru','sla0119@mail.ru'),(317,1225,0,'user4','user3.user3_user3@mail.ru'),(318,1225,1,'sla0119@mail.ru','sla0119@mail.ru'),(319,1226,0,'ВКонтакте','admin@notify.vk.com'),(320,1226,1,'Александр Новосёлов','sla0119@mail.ru'),(321,1227,0,'user2','user1.user1_user1@mail.ru'),(322,1227,1,'sla0119@mail.ru','sla0119@mail.ru'),(323,1228,0,'user3','user2.user2_user2@mail.ru'),(324,1228,1,'sla0119@mail.ru','sla0119@mail.ru'),(325,1229,0,'user4','user3.user3_user3@mail.ru'),(326,1229,1,'sla0119@mail.ru','sla0119@mail.ru'),(327,1230,0,'Почта Mail.ru','welcome@e.mail.ru'),(328,1230,1,'ktotonetot2020@mail.ru','ktotonetot2020@mail.ru'),(329,1231,0,'Почта Mail.ru','welcome@e.mail.ru'),(330,1231,1,'ktotonetot2020@mail.ru','ktotonetot2020@mail.ru'),(331,1232,0,'Почта Mail.ru','welcome@e.mail.ru'),(332,1232,1,'ktotonetot2020@mail.ru','ktotonetot2020@mail.ru'),(333,1233,0,'user5','ktotonetot2020@mail.ru'),(334,1234,0,'user5','ktotonetot2020@mail.ru'),(335,1235,0,'user5','ktotonetot2020@mail.ru'),(336,1236,0,'Mail.ru','security@id.mail.ru'),(337,1236,1,'99test990@mail.ru','99test990@mail.ru');
/*!40000 ALTER TABLE `oc_mail_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_migrations`
--

DROP TABLE IF EXISTS `oc_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_migrations` (
  `app` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`app`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_migrations`
--

LOCK TABLES `oc_migrations` WRITE;
/*!40000 ALTER TABLE `oc_migrations` DISABLE KEYS */;
INSERT INTO `oc_migrations` VALUES ('activity','2006Date20170808154933'),('activity','2006Date20170808155040'),('activity','2006Date20170919095939'),('activity','2007Date20181107114613'),('activity','2008Date20181011095117'),('activity','2010Date20190416112817'),('activity','2011Date20201006132544'),('contactsinteraction','010000Date20200304152605'),('core','13000Date20170705121758'),('core','13000Date20170718121200'),('core','13000Date20170814074715'),('core','13000Date20170919121250'),('core','13000Date20170926101637'),('core','14000Date20180129121024'),('core','14000Date20180404140050'),('core','14000Date20180516101403'),('core','14000Date20180518120534'),('core','14000Date20180522074438'),('core','14000Date20180626223656'),('core','14000Date20180710092004'),('core','14000Date20180712153140'),('core','15000Date20180926101451'),('core','15000Date20181015062942'),('core','15000Date20181029084625'),('core','16000Date20190207141427'),('core','16000Date20190212081545'),('core','16000Date20190427105638'),('core','16000Date20190428150708'),('core','17000Date20190514105811'),('core','18000Date20190920085628'),('core','18000Date20191014105105'),('core','18000Date20191204114856'),('core','19000Date20200211083441'),('dav','1004Date20170825134824'),('dav','1004Date20170919104507'),('dav','1004Date20170924124212'),('dav','1004Date20170926103422'),('dav','1005Date20180413093149'),('dav','1005Date20180530124431'),('dav','1006Date20180619154313'),('dav','1006Date20180628111625'),('dav','1008Date20181030113700'),('dav','1008Date20181105104826'),('dav','1008Date20181105104833'),('dav','1008Date20181105110300'),('dav','1008Date20181105112049'),('dav','1008Date20181114084440'),('dav','1011Date20190725113607'),('dav','1011Date20190806104428'),('dav','1012Date20190808122342'),('federatedfilesharing','1010Date20200630191755'),('federation','1010Date20200630191302'),('files','11301Date20191205150729'),('files_trashbin','1010Date20200630192639'),('mail','0100Date20180825194217'),('mail','0110Date20180825195812'),('mail','0110Date20180825201241'),('mail','0130Date20190408134101'),('mail','0156Date20190828140357'),('mail','0161Date20190902103559'),('mail','0161Date20190902103701'),('mail','0161Date20190902114635'),('mail','0180Date20190927124207'),('mail','0190Date20191118160843'),('mail','0210Date20191212144925'),('mail','1020Date20191002091034'),('mail','1020Date20191002091035'),('mail','1020Date20200206134751'),('mail','1030Date20200228105714'),('mail','1040Date20200422130220'),('mail','1040Date20200422142920'),('mail','1040Date20200506111214'),('mail','1040Date20200515080614'),('mail','1040Date20200529124657'),('mail','1050Date20200624101359'),('mail','1050Date20200831124954'),('mail','1050Date20200921141700'),('mail','1050Date20200923180030'),('mail','1060Date20201015084952'),('notifications','2004Date20190107135757'),('oauth2','010401Date20181207190718'),('oauth2','010402Date20190107124745'),('privacy','100Date20190217131943'),('text','010000Date20190617184535'),('text','030001Date20200402075029'),('twofactor_backupcodes','1002Date20170607104347'),('twofactor_backupcodes','1002Date20170607113030'),('twofactor_backupcodes','1002Date20170919123342'),('twofactor_backupcodes','1002Date20170926101419'),('twofactor_backupcodes','1002Date20180821043638'),('user_status','0001Date20200602134824'),('user_status','0002Date20200902144824'),('workflowengine','2000Date20190808074233');
/*!40000 ALTER TABLE `oc_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mimetypes`
--

DROP TABLE IF EXISTS `oc_mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mimetypes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mimetypes`
--

LOCK TABLES `oc_mimetypes` WRITE;
/*!40000 ALTER TABLE `oc_mimetypes` DISABLE KEYS */;
INSERT INTO `oc_mimetypes` VALUES (5,'application'),(13,'application/javascript'),(17,'application/json'),(14,'application/octet-stream'),(6,'application/pdf'),(7,'application/vnd.openxmlformats-officedocument.wordprocessingml.document'),(15,'application/x-gzip'),(1,'httpd'),(2,'httpd/unix-directory'),(10,'image'),(18,'image/heic'),(12,'image/jpeg'),(11,'image/png'),(3,'text'),(16,'text/css'),(4,'text/markdown'),(8,'video'),(9,'video/mp4'),(19,'video/quicktime');
/*!40000 ALTER TABLE `oc_mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_mounts`
--

DROP TABLE IF EXISTS `oc_mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_mounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `storage_id` bigint(20) NOT NULL,
  `root_id` bigint(20) NOT NULL,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `mount_point` varchar(4000) COLLATE utf8mb4_bin NOT NULL,
  `mount_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mounts_user_root_index` (`user_id`,`root_id`),
  KEY `mounts_user_index` (`user_id`),
  KEY `mounts_storage_index` (`storage_id`),
  KEY `mounts_root_index` (`root_id`),
  KEY `mounts_mount_id_index` (`mount_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_mounts`
--

LOCK TABLES `oc_mounts` WRITE;
/*!40000 ALTER TABLE `oc_mounts` DISABLE KEYS */;
INSERT INTO `oc_mounts` VALUES (1,1,1,'user','/user/',NULL),(2,3,289,'user1','/user1/',NULL),(3,4,294,'user2','/user2/',NULL),(4,5,299,'user3','/user3/',NULL),(5,6,304,'user4','/user4/',NULL),(6,7,309,'user5','/user5/',NULL);
/*!40000 ALTER TABLE `oc_mounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications`
--

DROP TABLE IF EXISTS `oc_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `object_type` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `object_id` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `subject_parameters` longtext COLLATE utf8mb4_bin,
  `message` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `message_parameters` longtext COLLATE utf8mb4_bin,
  `link` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `icon` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL,
  `actions` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`notification_id`),
  KEY `oc_notifications_app` (`app`),
  KEY `oc_notifications_user` (`user`),
  KEY `oc_notifications_timestamp` (`timestamp`),
  KEY `oc_notifications_object` (`object_type`,`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications`
--

LOCK TABLES `oc_notifications` WRITE;
/*!40000 ALTER TABLE `oc_notifications` DISABLE KEYS */;
INSERT INTO `oc_notifications` VALUES (3,'settings','user1',1606595843,'activity_notification','31','group_added','[]','','[]','','','[]'),(4,'settings','user2',1606595848,'activity_notification','32','group_added','[]','','[]','','','[]'),(5,'settings','user3',1606595852,'activity_notification','33','group_added','[]','','[]','','','[]'),(6,'settings','user4',1606595856,'activity_notification','34','group_added','[]','','[]','','','[]'),(7,'settings','user5',1606595859,'activity_notification','35','group_added','[]','','[]','','','[]'),(8,'firstrunwizard','user1',1606597384,'user','user1','profile','[]','','[]','','','[]'),(9,'firstrunwizard','user2',1606598592,'user','user2','profile','[]','','[]','','','[]'),(10,'firstrunwizard','user3',1606600402,'user','user3','profile','[]','','[]','','','[]'),(11,'firstrunwizard','user4',1606600744,'user','user4','profile','[]','','[]','','','[]'),(12,'firstrunwizard','user5',1606600745,'user','user5','profile','[]','','[]','','','[]');
/*!40000 ALTER TABLE `oc_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_notifications_pushtokens`
--

DROP TABLE IF EXISTS `oc_notifications_pushtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_notifications_pushtokens` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `token` int(11) NOT NULL DEFAULT '0',
  `deviceidentifier` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickey` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `devicepublickeyhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `pushtokenhash` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `proxyserver` varchar(256) COLLATE utf8mb4_bin NOT NULL,
  `apptype` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT 'unknown',
  UNIQUE KEY `oc_notifpushtoken` (`uid`,`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_notifications_pushtokens`
--

LOCK TABLES `oc_notifications_pushtokens` WRITE;
/*!40000 ALTER TABLE `oc_notifications_pushtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_notifications_pushtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_access_tokens`
--

DROP TABLE IF EXISTS `oc_oauth2_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oauth2_access_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `hashed_code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `encrypted_token` varchar(786) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_access_hash_idx` (`hashed_code`),
  KEY `oauth2_access_client_id_idx` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_access_tokens`
--

LOCK TABLES `oc_oauth2_access_tokens` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_oauth2_clients`
--

DROP TABLE IF EXISTS `oc_oauth2_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_oauth2_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `redirect_uri` varchar(2000) COLLATE utf8mb4_bin NOT NULL,
  `client_identifier` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `secret` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth2_client_id_idx` (`client_identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_oauth2_clients`
--

LOCK TABLES `oc_oauth2_clients` WRITE;
/*!40000 ALTER TABLE `oc_oauth2_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_oauth2_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_preferences`
--

DROP TABLE IF EXISTS `oc_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_preferences` (
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `appid` varchar(32) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configkey` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `configvalue` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`userid`,`appid`,`configkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_preferences`
--

LOCK TABLES `oc_preferences` WRITE;
/*!40000 ALTER TABLE `oc_preferences` DISABLE KEYS */;
INSERT INTO `oc_preferences` VALUES ('user','accessibility','icons-css','8e9da6288d7243bde3ef52e7eb280a03'),('user','accessibility','theme','dark'),('user','activity','configured','yes'),('user','avatar','generated','true'),('user','core','lang','ru'),('user','core','timezone','Europe/Moscow'),('user','dashboard','background','eduardo-neves-pedra-azul.jpg'),('user','dashboard','backgroundVersion','12'),('user','dashboard','firstRun','0'),('user','dashboard','layout','mail'),('user','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user','files','show_grid','0'),('user','files_sharing','default_accept','yes'),('user','firstrunwizard','apphint','18'),('user','firstrunwizard','show','0'),('user','login','lastLogin','1606602448'),('user','login_token','Lde56HlSGCDCABU4EzaqNc9FjyiJhpCD','1606602449'),('user','lookup_server_connector','update_retries','1'),('user','password_policy','failedLoginAttempts','0'),('user1','accessibility','icons-css','fae38412d940194a6566d0594104ab3d'),('user1','accessibility','theme','dark'),('user1','activity','configured','yes'),('user1','avatar','generated','true'),('user1','core','lang','en'),('user1','core','timezone','Europe/Moscow'),('user1','dashboard','firstRun','0'),('user1','dashboard','layout','mail'),('user1','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user1','files','quota','1 GB'),('user1','firstrunwizard','show','0'),('user1','login','lastLogin','1606597249'),('user1','password_policy','failedLoginAttempts','0'),('user2','accessibility','icons-css','8e9da6288d7243bde3ef52e7eb280a03'),('user2','accessibility','theme','dark'),('user2','activity','configured','yes'),('user2','avatar','generated','true'),('user2','core','lang','en'),('user2','core','timezone','Europe/Moscow'),('user2','dashboard','background','eduardo-neves-pedra-azul.jpg'),('user2','dashboard','backgroundVersion','2'),('user2','dashboard','firstRun','0'),('user2','dashboard','layout','mail'),('user2','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user2','files','quota','1 GB'),('user2','firstrunwizard','show','0'),('user2','login','lastLogin','1606598344'),('user2','password_policy','failedLoginAttempts','0'),('user3','accessibility','icons-css','8e9da6288d7243bde3ef52e7eb280a03'),('user3','accessibility','theme','dark'),('user3','activity','configured','yes'),('user3','avatar','generated','true'),('user3','core','lang','en'),('user3','core','timezone','Europe/Moscow'),('user3','dashboard','background','eduardo-neves-pedra-azul.jpg'),('user3','dashboard','backgroundVersion','1'),('user3','dashboard','firstRun','0'),('user3','dashboard','layout','mail'),('user3','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user3','files','quota','1 GB'),('user3','firstrunwizard','show','0'),('user3','login','lastLogin','1606600261'),('user3','password_policy','failedLoginAttempts','0'),('user4','accessibility','icons-css','8e9da6288d7243bde3ef52e7eb280a03'),('user4','accessibility','theme','dark'),('user4','activity','configured','yes'),('user4','avatar','generated','true'),('user4','core','lang','en'),('user4','core','timezone','Europe/Moscow'),('user4','dashboard','background','eduardo-neves-pedra-azul.jpg'),('user4','dashboard','backgroundVersion','1'),('user4','dashboard','firstRun','0'),('user4','dashboard','layout','mail'),('user4','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user4','files','quota','1 GB'),('user4','firstrunwizard','show','0'),('user4','login','lastLogin','1606600476'),('user4','password_policy','failedLoginAttempts','0'),('user5','accessibility','icons-css','8e9da6288d7243bde3ef52e7eb280a03'),('user5','accessibility','theme','dark'),('user5','activity','configured','yes'),('user5','avatar','generated','true'),('user5','core','lang','en'),('user5','core','timezone','Europe/Moscow'),('user5','dashboard','background','eduardo-neves-pedra-azul.jpg'),('user5','dashboard','backgroundVersion','1'),('user5','dashboard','firstRun','0'),('user5','dashboard','layout','mail'),('user5','dashboard','statuses','{\"weather\":false,\"status\":false}'),('user5','files','quota','1 GB'),('user5','firstrunwizard','show','0'),('user5','login','lastLogin','1606600697'),('user5','password_policy','failedLoginAttempts','0');
/*!40000 ALTER TABLE `oc_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_privacy_admins`
--

DROP TABLE IF EXISTS `oc_privacy_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_privacy_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayname` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_privacy_admins`
--

LOCK TABLES `oc_privacy_admins` WRITE;
/*!40000 ALTER TABLE `oc_privacy_admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_privacy_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_properties`
--

DROP TABLE IF EXISTS `oc_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertypath` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyname` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `propertyvalue` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_index` (`userid`),
  KEY `properties_path_index` (`userid`,`propertypath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_properties`
--

LOCK TABLES `oc_properties` WRITE;
/*!40000 ALTER TABLE `oc_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recent_contact`
--

DROP TABLE IF EXISTS `oc_recent_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recent_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `federated_cloud_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `card` longblob NOT NULL,
  `last_contact` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `recent_contact_actor_uid` (`actor_uid`),
  KEY `recent_contact_id_uid` (`id`,`actor_uid`),
  KEY `recent_contact_uid` (`uid`),
  KEY `recent_contact_email` (`email`),
  KEY `recent_contact_fed_id` (`federated_cloud_id`),
  KEY `recent_contact_last_contact` (`last_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recent_contact`
--

LOCK TABLES `oc_recent_contact` WRITE;
/*!40000 ALTER TABLE `oc_recent_contact` DISABLE KEYS */;
INSERT INTO `oc_recent_contact` VALUES (1,'user1',NULL,'sla0119@mail.ru',NULL,_binary 'BEGIN:VCARD\r\nVERSION:4.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:sabre-vobject-e4d6f45d-7f37-4b2b-9159-ca84115f74a4\r\nURI:da21a12f-2a3b-41b2-8255-5a93c829fc98\r\nFN:sla0119@mail.ru\r\nCATEGORIES:Recently contacted\r\nEMAIL:sla0119@mail.ru\r\nEND:VCARD\r\n',1606597747),(2,'user2',NULL,'sla0119@mail.ru',NULL,_binary 'BEGIN:VCARD\r\nVERSION:4.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:sabre-vobject-e3fecb01-e83b-4f52-a2b7-ef2e406a8178\r\nURI:3eeaec10-ab65-4a88-84fd-172a2fbf3852\r\nFN:sla0119@mail.ru\r\nCATEGORIES:Recently contacted\r\nEMAIL:sla0119@mail.ru\r\nEND:VCARD\r\n',1606600233),(3,'user3',NULL,'sla0119@mail.ru',NULL,_binary 'BEGIN:VCARD\r\nVERSION:4.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:sabre-vobject-218c1703-e9cd-4bc0-a8a7-143ed42438d3\r\nURI:19e8c424-e869-4a94-8866-3bf03dbbe509\r\nFN:sla0119@mail.ru\r\nCATEGORIES:Recently contacted\r\nEMAIL:sla0119@mail.ru\r\nEND:VCARD\r\n',1606600446),(4,'user4',NULL,'sla0119@mail.ru',NULL,_binary 'BEGIN:VCARD\r\nVERSION:4.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:sabre-vobject-aa048213-ca01-4f4a-abca-60a9c9eaec6c\r\nURI:6ae81edf-3b9a-4705-86ef-a1f0431da7b7\r\nFN:sla0119@mail.ru\r\nCATEGORIES:Recently contacted\r\nEMAIL:sla0119@mail.ru\r\nEND:VCARD\r\n',1606600670),(5,'user5',NULL,'sla0119@mail.ru',NULL,_binary 'BEGIN:VCARD\r\nVERSION:4.0\r\nPRODID:-//Sabre//Sabre VObject 4.3.0//EN\r\nUID:sabre-vobject-0c73d160-5fda-4dbe-8540-e1600717d7d3\r\nURI:090bd1cd-b2a9-400f-bc14-057dba332680\r\nFN:sla0119@mail.ru\r\nCATEGORIES:Recently contacted\r\nEMAIL:sla0119@mail.ru\r\nEND:VCARD\r\n',1606600902);
/*!40000 ALTER TABLE `oc_recent_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_schedulingobjects`
--

DROP TABLE IF EXISTS `oc_schedulingobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_schedulingobjects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `principaluri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `calendardata` longblob,
  `uri` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  `etag` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedulobj_principuri_index` (`principaluri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_schedulingobjects`
--

LOCK TABLES `oc_schedulingobjects` WRITE;
/*!40000 ALTER TABLE `oc_schedulingobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_schedulingobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share`
--

DROP TABLE IF EXISTS `oc_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_share` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `share_type` smallint(6) NOT NULL DEFAULT '0',
  `share_with` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `uid_owner` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_initiator` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `parent` bigint(20) DEFAULT NULL,
  `item_type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `item_source` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_target` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `file_source` bigint(20) DEFAULT NULL,
  `file_target` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `permissions` smallint(6) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` smallint(6) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `mail_send` smallint(6) NOT NULL DEFAULT '0',
  `share_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password_by_talk` tinyint(1) NOT NULL DEFAULT '0',
  `note` longtext COLLATE utf8mb4_bin,
  `hide_download` smallint(6) NOT NULL DEFAULT '0',
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_share_type_index` (`item_type`,`share_type`),
  KEY `file_source_index` (`file_source`),
  KEY `token_index` (`token`),
  KEY `share_with_index` (`share_with`),
  KEY `parent_index` (`parent`),
  KEY `owner_index` (`uid_owner`),
  KEY `initiator_index` (`uid_initiator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share`
--

LOCK TABLES `oc_share` WRITE;
/*!40000 ALTER TABLE `oc_share` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_share_external`
--

DROP TABLE IF EXISTS `oc_share_external`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_share_external` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT '-1',
  `share_type` int(11) DEFAULT NULL,
  `remote` varchar(512) COLLATE utf8mb4_bin NOT NULL COMMENT 'Url of the remove owncloud instance',
  `remote_id` int(11) NOT NULL DEFAULT '-1',
  `share_token` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Public share token',
  `password` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Optional password for the public share',
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Original name on the remote server',
  `owner` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'User that owns the public share on the remote server',
  `user` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT 'Local user which added the external share',
  `mountpoint` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT 'Full path where the share is mounted',
  `mountpoint_hash` varchar(32) COLLATE utf8mb4_bin NOT NULL COMMENT 'md5 hash of the mountpoint',
  `accepted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sh_external_mp` (`user`,`mountpoint_hash`),
  KEY `sh_external_user` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_share_external`
--

LOCK TABLES `oc_share_external` WRITE;
/*!40000 ALTER TABLE `oc_share_external` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_share_external` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_storages`
--

DROP TABLE IF EXISTS `oc_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_storages` (
  `numeric_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `available` int(11) NOT NULL DEFAULT '1',
  `last_checked` int(11) DEFAULT NULL,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_storages`
--

LOCK TABLES `oc_storages` WRITE;
/*!40000 ALTER TABLE `oc_storages` DISABLE KEYS */;
INSERT INTO `oc_storages` VALUES (1,'home::user',1,NULL),(2,'local::/var/snap/nextcloud/common/nextcloud/data/',1,NULL),(3,'home::user1',1,NULL),(4,'home::user2',1,NULL),(5,'home::user3',1,NULL),(6,'home::user4',1,NULL),(7,'home::user5',1,NULL);
/*!40000 ALTER TABLE `oc_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag`
--

DROP TABLE IF EXISTS `oc_systemtag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `visibility` smallint(6) NOT NULL DEFAULT '1',
  `editable` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_ident` (`name`,`visibility`,`editable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag`
--

LOCK TABLES `oc_systemtag` WRITE;
/*!40000 ALTER TABLE `oc_systemtag` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_group`
--

DROP TABLE IF EXISTS `oc_systemtag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag_group` (
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `gid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`gid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_group`
--

LOCK TABLES `oc_systemtag_group` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_systemtag_object_mapping`
--

DROP TABLE IF EXISTS `oc_systemtag_object_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_systemtag_object_mapping` (
  `objectid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `objecttype` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `systemtagid` bigint(20) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `mapping` (`objecttype`,`objectid`,`systemtagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_systemtag_object_mapping`
--

LOCK TABLES `oc_systemtag_object_mapping` WRITE;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_systemtag_object_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_documents`
--

DROP TABLE IF EXISTS `oc_text_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `current_version` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_saved_version` bigint(20) unsigned NOT NULL DEFAULT '0',
  `last_saved_version_time` bigint(20) unsigned NOT NULL,
  `last_saved_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `base_version_etag` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_documents`
--

LOCK TABLES `oc_text_documents` WRITE;
/*!40000 ALTER TABLE `oc_text_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_sessions`
--

DROP TABLE IF EXISTS `oc_text_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `guest_name` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL,
  `token` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `document_id` bigint(20) NOT NULL,
  `last_contact` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rd_session_token_idx` (`token`),
  KEY `ts_docid_lastcontact` (`document_id`,`last_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_sessions`
--

LOCK TABLES `oc_text_sessions` WRITE;
/*!40000 ALTER TABLE `oc_text_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_text_steps`
--

DROP TABLE IF EXISTS `oc_text_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_text_steps` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` bigint(20) unsigned NOT NULL,
  `session_id` bigint(20) unsigned NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  `version` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rd_steps_did_idx` (`document_id`),
  KEY `rd_steps_version_idx` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_text_steps`
--

LOCK TABLES `oc_text_steps` WRITE;
/*!40000 ALTER TABLE `oc_text_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_text_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_trusted_servers`
--

DROP TABLE IF EXISTS `oc_trusted_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_trusted_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `url_hash` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `shared_secret` varchar(256) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `sync_token` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url_hash` (`url_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_trusted_servers`
--

LOCK TABLES `oc_trusted_servers` WRITE;
/*!40000 ALTER TABLE `oc_trusted_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_trusted_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_backupcodes`
--

DROP TABLE IF EXISTS `oc_twofactor_backupcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_twofactor_backupcodes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `code` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  `used` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `twofactor_backupcodes_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_backupcodes`
--

LOCK TABLES `oc_twofactor_backupcodes` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_twofactor_backupcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_twofactor_providers`
--

DROP TABLE IF EXISTS `oc_twofactor_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_twofactor_providers` (
  `provider_id` varchar(32) COLLATE utf8mb4_bin NOT NULL,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `enabled` smallint(6) NOT NULL,
  PRIMARY KEY (`provider_id`,`uid`),
  KEY `twofactor_providers_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_twofactor_providers`
--

LOCK TABLES `oc_twofactor_providers` WRITE;
/*!40000 ALTER TABLE `oc_twofactor_providers` DISABLE KEYS */;
INSERT INTO `oc_twofactor_providers` VALUES ('backup_codes','user',0),('backup_codes','user1',0),('backup_codes','user2',0),('backup_codes','user3',0),('backup_codes','user4',0),('backup_codes','user5',0);
/*!40000 ALTER TABLE `oc_twofactor_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_status`
--

DROP TABLE IF EXISTS `oc_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `status_timestamp` int(10) unsigned NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_icon` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `custom_message` longtext COLLATE utf8mb4_bin,
  `clear_at` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_status_uid_ix` (`user_id`),
  KEY `user_status_clr_ix` (`clear_at`),
  KEY `user_status_tstmp_ix` (`status_timestamp`),
  KEY `user_status_iud_ix` (`is_user_defined`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_status`
--

LOCK TABLES `oc_user_status` WRITE;
/*!40000 ALTER TABLE `oc_user_status` DISABLE KEYS */;
INSERT INTO `oc_user_status` VALUES (1,'user','online',1606603259,0,NULL,NULL,NULL,NULL),(2,'user1','offline',1606602857,0,NULL,NULL,NULL,NULL),(3,'user2','offline',1606602556,0,NULL,NULL,NULL,NULL),(4,'user3','offline',1606603162,0,NULL,NULL,NULL,NULL),(5,'user4','offline',1606602556,0,NULL,NULL,NULL,NULL),(6,'user5','offline',1606602556,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `oc_user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_transfer_owner`
--

DROP TABLE IF EXISTS `oc_user_transfer_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_transfer_owner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `source_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `target_user` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `file_id` bigint(20) NOT NULL,
  `node_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_transfer_owner`
--

LOCK TABLES `oc_user_transfer_owner` WRITE;
/*!40000 ALTER TABLE `oc_user_transfer_owner` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_user_transfer_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_users`
--

DROP TABLE IF EXISTS `oc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_users` (
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `displayname` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `uid_lower` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `user_uid_lower` (`uid_lower`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_users`
--

LOCK TABLES `oc_users` WRITE;
/*!40000 ALTER TABLE `oc_users` DISABLE KEYS */;
INSERT INTO `oc_users` VALUES ('user',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$UmZCdGpuejdGcVdMa3dpMw$xSRrXEXyX50K0ZX76mI/AkpSmRVI1IDdUQlIMsBRSPc','user'),('user1',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$bHY4R2hTc0NrZXZ0bFh5aQ$/dHITcmetk92saQoCYM1KUHXCbC4bZjdzOCGky/JzOs','user1'),('user2',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$SS9oaUczYjFRUEtsM280RA$resKQIyZzd8jN1x3U/ukKAG5sYz5+o4AASuQMoAv084','user2'),('user3',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$Q2lYeXg0ek5wWUwvQmp2Tw$gDWox/UOcXL5v1YS027jCAPptfI1qh6OuTq/2cJFRCA','user3'),('user4',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$T2FWZ2k0aXYyTTlnNjVDdw$GUNXLi1fE61XTlxPqnyvW1nPjzOi2dUylF6SgN78x4Y','user4'),('user5',NULL,'3|$argon2id$v=19$m=65536,t=4,p=1$Z0U0VWdPajhtM1ZSVjNHLw$xmu4iGxrZLQCIb6ss/y3o7F9rpxaTkDqtsY0a3RrDH0','user5');
/*!40000 ALTER TABLE `oc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory`
--

DROP TABLE IF EXISTS `oc_vcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_vcategory` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `category` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory`
--

LOCK TABLES `oc_vcategory` WRITE;
/*!40000 ALTER TABLE `oc_vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_vcategory_to_object`
--

DROP TABLE IF EXISTS `oc_vcategory_to_object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_vcategory_to_object` (
  `objid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `categoryid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`categoryid`,`objid`,`type`),
  KEY `vcategory_objectd_index` (`objid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_vcategory_to_object`
--

LOCK TABLES `oc_vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `oc_vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_webauthn`
--

DROP TABLE IF EXISTS `oc_webauthn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_webauthn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `public_key_credential_id` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webauthn_uid` (`uid`),
  KEY `webauthn_publicKeyCredentialId` (`public_key_credential_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_webauthn`
--

LOCK TABLES `oc_webauthn` WRITE;
/*!40000 ALTER TABLE `oc_webauthn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_webauthn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_whats_new`
--

DROP TABLE IF EXISTS `oc_whats_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_whats_new` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '11',
  `etag` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `last_check` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version` (`version`),
  KEY `version_etag_idx` (`version`,`etag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPRESSED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_whats_new`
--

LOCK TABLES `oc_whats_new` WRITE;
/*!40000 ALTER TABLE `oc_whats_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_whats_new` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-28 22:42:45
