-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: joomla
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `ua8y4_ak_profiles`
--

DROP TABLE IF EXISTS `ua8y4_ak_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ak_profiles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `configuration` longtext,
  `filters` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ak_profiles`
--

LOCK TABLES `ua8y4_ak_profiles` WRITE;
/*!40000 ALTER TABLE `ua8y4_ak_profiles` DISABLE KEYS */;
INSERT INTO `ua8y4_ak_profiles` VALUES (1,'Default Backup Profile','###CTR128###mlOVVODg4OCJSDhnJ92mvp1qAVfxEgHrfQT45500nVYVGXer00udxj6OvsKM2eZqq+kEVg58tPkruKptxvGnAIrTYToN6JKhMgECECNtKY4Ezgm22BV8ZlcsRb6kYqahd6ZFALSb2UHK/QtzVe9vfVfJyDdWadTYqcduFBSozA/m53OFzwzsegEOT33q7tzMYrdQLZO9D64QVXb42rlttcDC2m6RO7OXIdnzYh94tlp+Q/TeC0uyQv9u9V8Mmv6uFqktgHux+lAmJzftWJsOiHCHqa1bp8FnItrxTZA9XynJuSMOsxV9TzNxLJXP8GMK9PNlUPjNVi3F+v5ZzLYgz/dK5vwGc/BVO4Lt9SoyMQ/jROnEUYHQ87jnEsBrX4WjNo7SiGxBncLqiQzHcAsco9tBFBWyjl/9guAL9ZUyojVgLEaBBz7QrsO+jM89S81T4R3Fbq4f55K8db0rFtT6vZi4JQSM2EL56/OZSqz/puEj+JDtZK0IkC6EbNsVmw0Fh9DkIoA8xRvQt+fiJesxOifriEiPmw/oEfloJJ4LULFNHRgrdzvkghpREopIMrpY0yEBIgL93sPopmYReZSykkTIGlW9eBb7Z33J0EJgV4UU4S7syvht/6DG9ss3SfmWnxHX5ubhlVZXZjWe3xEl/rKxkU0mCouLkKhJkwXATwsZHs5VDopC3osR8+l5nX7N1G3w+kBvUBf0UIPEyYCSBUPgv4XTFb5Kjbc+09HYpnxVGGiu6n0nb96kQV2RP8N9446ZwjuZlKE2g2kYc7iKriWHUXmybviHeA8othxPJ1AMFgcQTcZEVVdIoQdHRWu85F+kq3Un5cavxmPq6q2wgkM7JUhB2wN/k0AlhCGVFDOEGBAb/gk+tU1u3fnW1cGKNvcJatEtx9oJJpAcu/XjyNnp9zYFI3eiTxg84ZDUs9C0+5dqlOExiiJAvSg3hB//inCpswFnQDVrTx3vcN0Aqea5dHUUAct7k86k7ToFxu/hIlrPTz3TS4qr/uEOEDh0UhCyRcrSEQzSr9CVZyeyGX+Z6Qnf4i/TtH3Kht3PG5+6pWSJvsF3VnzKv0GMkFm/jPFcthRNR3D2Lc//meTLbE73r3B0oOQ34Ut8l41byW/V6uK5dYjaXe+lMZarI2geYUtdrxYYd8xyyvwudZ3GeQdURFS6htCmJM4l+220MEC7neYiuUecccDfYdGMwyKlsRNjFK1DrDhqIM3/C3A4obWsHdQ4Ztugh7fu9QW/TYbPqPOZs11VE2KtWKsCeoYAB+CRViFIJikL56zVllv0KDqce2mY2KzzZmZH6Qc3qUuWcADlkSo/LOgwdXWQp8KZvfAUyZJQyyVz76ARa7hRzNGwrJC95sKhqMV1Ukk6nZYYhsDq/brFg6qpl++M3JoQCWxOUpXVYWsdeQSnzOCNetzHy/4iAkUVmr0sYaauzw8VisQ6pCdPxzYBr/kYwtQF/dXptxj+EGodp3bBPcfVftqlBNJrM7MvA+oqDg1UO3da6OOMVbsxClRwlRcjqobimu5kRxm35U5DzUyWHYksMYD5TN1owvcLFSbcmirVpliCc/qVij9gDqNTisBrMw/QNsKD7reHEH1JuRTnUhmK9BLNJVlNcodm/wt/2wKMPe8D4Q1jNTx7GMUm2s3HiHLDBFaCQ1YiK/TwLJ/+AjXPRo96JusgFhJMEe4WYcvzIB8cxiL8e1vKWugJsgF3wgitJtDkoECIEW0p/nj4Nu7mKItGGbCVV0p7MV28fKdE+Pdn8ce4/zSvXfunlJ9Hzr5pe9WClVtkG9Ztz7eo3XKEJw3TfPvcYd1zDBaJG8X5pqjiNp8QSB+2Rs5MNdFSVvvaqD9ZXO1CgxnmntgGWyX0AMFcvxk7j9uu+QUVoa6moIVG2NO78b+C6dyRkF6SzlFiYQB8jn5xSvr0NtHMj6PnJIGwESscNaSVUEp5edGP6fTM7n5OTrQ1d0vWI5YItQ6ChnqyvqzVjTDlE3S0onKXyx22YdvkyTkypM+p3nix/qzSgxkJbsgbFrqyVV+Pz5eOOuNgwIyICB849sHY3vKRUvyOS7JBKAJaZGAysIy/HENCfa0XLjchCsZBHVUlEyz4c5tRXDdekgpfsmPS2BiFYlhwe+KnJHBKRJx4g4/9YYKHJ7kciA+IgshjBU8lj1ZhFPaJty3Rc92l3fPk3uV5maue3ctiu8zjUn6ct5XSPf13IA4LLlWHVC6LFLY7sIuxKBDD8yUknN/YXpztDdQboT4u+Ez0so5xWIpX2JRhLZH8L9OtdrlSiyDbrsbGLNqODcybB9SaYVSJWZ21TFl0TU2BHUlXq8PLtspDXJh/1ieWqScPrmqtdc+cGtzUPBXiB2fVmq09LDHpmbD/4IqG8DU=','');
/*!40000 ALTER TABLE `ua8y4_ak_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_ak_stats`
--

DROP TABLE IF EXISTS `ua8y4_ak_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ak_stats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `comment` longtext,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') NOT NULL DEFAULT 'run',
  `origin` varchar(30) NOT NULL DEFAULT 'backend',
  `type` varchar(30) NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext,
  `absolute_path` longtext,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) DEFAULT NULL,
  `backupid` varchar(255) DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_fullstatus` (`filesexist`,`status`),
  KEY `idx_stale` (`status`,`origin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ak_stats`
--

LOCK TABLES `ua8y4_ak_stats` WRITE;
/*!40000 ALTER TABLE `ua8y4_ak_stats` DISABLE KEYS */;
INSERT INTO `ua8y4_ak_stats` VALUES (1,'Backup taken on Saturday, 20 December 2014 10:47','','2014-12-20 10:47:23','2014-12-20 10:47:49','complete','backend','full',1,'site-mynextrides.com-20141220-104723.jpa','/var/www/html/administrator/components/com_akeeba/backup/site-mynextrides.com-20141220-104723.jpa',1,'backend','id1',1,NULL,26998791),(2,'Backup taken on Wednesday, 24 December 2014 14:45','','2014-12-24 14:45:11','2014-12-24 14:45:33','complete','backend','full',1,'site-mynextride.ca-20141224-144511.jpa','/var/www/html/administrator/components/com_akeeba/backup/site-mynextride.ca-20141224-144511.jpa',1,'backend','id2',1,NULL,28048606);
/*!40000 ALTER TABLE `ua8y4_ak_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_ak_storage`
--

DROP TABLE IF EXISTS `ua8y4_ak_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ak_storage` (
  `tag` varchar(255) NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ak_storage`
--

LOCK TABLES `ua8y4_ak_storage` WRITE;
/*!40000 ALTER TABLE `ua8y4_ak_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_ak_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_akeeba_common`
--

DROP TABLE IF EXISTS `ua8y4_akeeba_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_akeeba_common` (
  `key` varchar(255) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_akeeba_common`
--

LOCK TABLES `ua8y4_akeeba_common` WRITE;
/*!40000 ALTER TABLE `ua8y4_akeeba_common` DISABLE KEYS */;
INSERT INTO `ua8y4_akeeba_common` VALUES ('stats_lastrun','1419431533'),('stats_siteid','338ab88e8931b6cdbdf9e455856c20ef3bfa456c'),('stats_siteurl','07c322156abd1fdfc91da860551ef303');
/*!40000 ALTER TABLE `ua8y4_akeeba_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_assets`
--

DROP TABLE IF EXISTS `ua8y4_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_assets`
--

LOCK TABLES `ua8y4_assets` WRITE;
/*!40000 ALTER TABLE `ua8y4_assets` DISABLE KEYS */;
INSERT INTO `ua8y4_assets` VALUES (1,0,0,157,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,17,28,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,29,30,1,'com_cpanel','com_cpanel','{}'),(10,1,31,32,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,33,34,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,35,36,1,'com_login','com_login','{}'),(13,1,37,38,1,'com_mailto','com_mailto','{}'),(14,1,39,40,1,'com_massmail','com_massmail','{}'),(15,1,41,42,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,43,44,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,45,46,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,47,80,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,81,84,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,85,86,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,87,88,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,89,90,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,91,92,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,93,96,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(25,1,97,100,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(26,1,101,102,1,'com_wrapper','com_wrapper','{}'),(27,8,18,27,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,82,83,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(31,25,98,99,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,94,95,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,103,104,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,105,106,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,107,108,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,109,110,1,'com_contenthistory','com_contenthistory','{}'),(37,1,111,112,1,'com_ajax','com_ajax','{}'),(38,1,113,114,1,'com_postinstall','com_postinstall','{}'),(39,18,48,49,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(40,18,50,51,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,52,53,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,54,55,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,56,57,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,58,59,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,60,61,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,62,63,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,64,65,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,66,67,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,68,69,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(50,18,70,71,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(51,18,72,73,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,74,75,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,76,77,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(55,27,19,20,3,'com_content.article.1','Under Construction','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(56,1,115,116,1,'com_extplorer','extplorer','{}'),(58,1,119,120,1,'com_vehiclemanager','vehiclemanager','{}'),(59,1,121,122,1,'ua8y4_vehiclemanager_main_categories.46','ua8y4_vehiclemanager_main_categories.46',''),(60,1,123,124,1,'ua8y4_vehiclemanager_main_categories.47','ua8y4_vehiclemanager_main_categories.47',''),(61,1,125,126,1,'ua8y4_vehiclemanager_main_categories.48','ua8y4_vehiclemanager_main_categories.48',''),(62,1,127,128,1,'ua8y4_vehiclemanager_main_categories.49','ua8y4_vehiclemanager_main_categories.49',''),(63,1,129,130,1,'ua8y4_vehiclemanager_main_categories.50','ua8y4_vehiclemanager_main_categories.50',''),(64,1,131,132,1,'ua8y4_vehiclemanager_main_categories.51','ua8y4_vehiclemanager_main_categories.51',''),(65,1,133,134,1,'#__vehiclemanager_vehicles.2','#__vehiclemanager_vehicles.2',''),(66,1,135,136,1,'#__vehiclemanager_vehicles.3','#__vehiclemanager_vehicles.3',''),(67,1,137,138,1,'#__vehiclemanager_vehicles.4','#__vehiclemanager_vehicles.4',''),(68,1,139,140,1,'#__vehiclemanager_vehicles.5','#__vehiclemanager_vehicles.5',''),(69,1,141,142,1,'#__vehiclemanager_vehicles.6','#__vehiclemanager_vehicles.6',''),(70,1,143,144,1,'#__vehiclemanager_vehicles.7','#__vehiclemanager_vehicles.7',''),(71,1,145,146,1,'#__vehiclemanager_vehicles.8','#__vehiclemanager_vehicles.8',''),(72,1,147,148,1,'#__vehiclemanager_vehicles.9','#__vehiclemanager_vehicles.9',''),(73,1,149,150,1,'#__vehiclemanager_vehicles.10','#__vehiclemanager_vehicles.10',''),(74,27,21,22,3,'com_content.article.2','hello world','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(78,1,151,152,1,'com_carshopping','com_carshopping','{}'),(79,1,153,154,1,'com_akeeba','akeeba','{}'),(80,18,78,79,2,'com_modules.module.87','Banner','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(81,27,23,24,3,'com_content.article.3','Home','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(82,27,25,26,3,'com_content.article.4','Dilemma','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),(83,1,155,156,1,'#__vehiclemanager_vehicles.11','#__vehiclemanager_vehicles.11','');
/*!40000 ALTER TABLE `ua8y4_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_associations`
--

DROP TABLE IF EXISTS `ua8y4_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_associations`
--

LOCK TABLES `ua8y4_associations` WRITE;
/*!40000 ALTER TABLE `ua8y4_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_banner_clients`
--

DROP TABLE IF EXISTS `ua8y4_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_banner_clients`
--

LOCK TABLES `ua8y4_banner_clients` WRITE;
/*!40000 ALTER TABLE `ua8y4_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_banner_tracks`
--

DROP TABLE IF EXISTS `ua8y4_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_banner_tracks`
--

LOCK TABLES `ua8y4_banner_tracks` WRITE;
/*!40000 ALTER TABLE `ua8y4_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_banners`
--

DROP TABLE IF EXISTS `ua8y4_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_banners`
--

LOCK TABLES `ua8y4_banners` WRITE;
/*!40000 ALTER TABLE `ua8y4_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_carshopping_shoppingprofile`
--

DROP TABLE IF EXISTS `ua8y4_carshopping_shoppingprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_carshopping_shoppingprofile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `q1` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_carshopping_shoppingprofile`
--

LOCK TABLES `ua8y4_carshopping_shoppingprofile` WRITE;
/*!40000 ALTER TABLE `ua8y4_carshopping_shoppingprofile` DISABLE KEYS */;
INSERT INTO `ua8y4_carshopping_shoppingprofile` VALUES (1,1,0,0,'0000-00-00 00:00:00',0,'test shopping profile','2014-12-20 10:35:52'),(2,2,0,0,'0000-00-00 00:00:00',0,'test123','2014-12-21 12:28:09');
/*!40000 ALTER TABLE `ua8y4_carshopping_shoppingprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_carshopping_survey`
--

DROP TABLE IF EXISTS `ua8y4_carshopping_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_carshopping_survey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL,
  `q1` varchar(255) NOT NULL,
  `q11` varchar(255) NOT NULL,
  `q2` varchar(255) NOT NULL,
  `q3` varchar(255) NOT NULL,
  `q4` varchar(255) NOT NULL,
  `q5` varchar(255) NOT NULL,
  `q6` varchar(255) NOT NULL,
  `q7` varchar(255) NOT NULL,
  `q8` text NOT NULL,
  `q9` varchar(255) NOT NULL,
  `q10` varchar(255) NOT NULL,
  `created_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_carshopping_survey`
--

LOCK TABLES `ua8y4_carshopping_survey` WRITE;
/*!40000 ALTER TABLE `ua8y4_carshopping_survey` DISABLE KEYS */;
INSERT INTO `ua8y4_carshopping_survey` VALUES (1,1,0,0,'0000-00-00 00:00:00',0,'used','hatchback','l2.5k','buy','nocar','up','family','brand','[\"cheap\",\"\",\"\",\"\",\"\"]','myself','dprice','2014-12-20 10:36:15'),(2,2,0,0,'0000-00-00 00:00:00',0,'not_sure','truck','g2.5k','','taxi,10','new','sometime','import','[\"cheap\",\"\",\"\",\"\",\"\"]','family','dprice','2014-12-20 10:39:00'),(3,3,0,0,'0000-00-00 00:00:00',0,'not_sure','suv','l2.5k','buy','nocar','new','work','import','[\"cheap\",\"\",\"\",\"\",\"\"]','someone','dprice','2014-12-21 12:28:27');
/*!40000 ALTER TABLE `ua8y4_carshopping_survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_categories`
--

DROP TABLE IF EXISTS `ua8y4_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_categories`
--

LOCK TABLES `ua8y4_categories` WRITE;
/*!40000 ALTER TABLE `ua8y4_categories` DISABLE KEYS */;
INSERT INTO `ua8y4_categories` VALUES (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `ua8y4_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_contact_details`
--

DROP TABLE IF EXISTS `ua8y4_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_contact_details`
--

LOCK TABLES `ua8y4_contact_details` WRITE;
/*!40000 ALTER TABLE `ua8y4_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_content`
--

DROP TABLE IF EXISTS `ua8y4_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_content`
--

LOCK TABLES `ua8y4_content` WRITE;
/*!40000 ALTER TABLE `ua8y4_content` DISABLE KEYS */;
INSERT INTO `ua8y4_content` VALUES (1,55,'Under Construction','under-construction','<p>under construction</p>','',1,2,'2014-12-17 13:56:30',152,'','0000-00-00 00:00:00',0,152,'2014-12-17 16:56:47','2014-12-17 13:56:30','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,8,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,74,'hello world','hello-world','','',1,2,'2014-12-17 17:00:47',152,'','0000-00-00 00:00:00',0,152,'2014-12-17 17:00:47','2014-12-17 17:00:47','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,2,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,81,'Home','home','<h2>MyNextRide.ca</h2>\r\n<p align=\"center\"><img src=\"templates/protostar/images/heresthekey.jpg\" alt=\"\" /></p>\r\n<p align=\"center\"><a href=\"http://twitter.com/MyNextRideCa\" target=\"_blank\"><i class=\"fa fa-twitter\"> </i>Contact us on Twitter</a></p>\r\n<p style=\"text-align: center;\"><a href=\"shopping-profile\">Ready to go? Click here to get started </a></p>\r\n<p><iframe src=\"http://free.timeanddate.com/clock/i29w63pz/n188/tt0/tw1/ts1\" width=\"248\" height=\"18\" frameborder=\"0\"></iframe></p>','',1,2,'2014-12-21 12:16:49',152,'','2014-12-22 12:04:24',152,0,'0000-00-00 00:00:00','2014-12-21 12:16:49','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"0\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,1,'','',1,3,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(4,82,'Dilemma','dilemma','<h2>Welcome to MyNextRide</h2>\r\n<p><a title=\"Thanks for choosing MyNextRide. Everyone has problems right? No worries - we are problem solvers - just give us a clue \" href=\"#\" rel=\"tooltip\"><img src=\"templates/protostar/images/homerun.jpg\" alt=\"\" /></a></p>\r\n<p>hint: hover mouse cursor over the image to see advice</p>\r\n<p><br /><br /><br /></p>\r\n<table border=\"1\" cellpadding=\"10\">\r\n<tbody>\r\n<tr>\r\n<td><a title=\"Would you worry about wasting a doctors time if you were ill? We are professionals and are here to find you something which suits your needs and budget. If there is a real problem you can count on us to be upfront about it. Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I dont want to waste your time </a></td>\r\n<td><a title=\"This is a situation we encounter often. Our financial professionals will go the extra mile to iron out any financial details and will be upfront about what is possible. Ask a sales advisor for further details. Click the button to let us know that you want to discuss this.\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I owe money on my last car </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"Congratulations! It is so nice to be able help people on an important occasion in their lives. We will do our very best to make sure it is a good experience. Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> This is my first car </a></td>\r\n<td><a title=\"There are many reasons why people might pay slightly different prices, such as province of registration or a history of loyalty to a brand or dealership.  Car shoppers have always done some negotiation on the price.  If that is not your thing you may find MyNextRide can smooth out the road. Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Is someone else getting a better price? </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"We understand that you have a busy life, and perhaps you divvy up the chores in your household so that one of you does the advance work.  But shopping for someone else\'s car can be like shopping for someone else\'s shoes.  If they do not fit, you are not doing them a favour. If someone is going to drive the car, it just makes sense to bring them in sooner rather than later. If you can do that we promise that the time and hassle you save will be worth the effort. But click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I\'m shopping for someone else </a></td>\r\n<td><a title=\"The car industry is extremely competitive and modern production techniques are extremely efficient.  The market keeps everyone honest.  The fair price of a vehicle is determined by the quality of the vehicle and the  demand for it.   Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Your car X costs more than car Y </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"Whether you are spending 5 thousand or 50 thousand dollars on a vehicle, it is a big decision.  If you plan to  spend 25 thousand dollars on a car and skip a 10 minute test drive that could save you a bad decision - you are valuing your time at 41  dollars and 65 cents per second. Really? Nice work if you can get it! Take it from us - you will sleep easier if you try it out first. But click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I dont have time to test drive </a></td>\r\n<td><a title=\"No one likes to pay interest. But there are usually a few models available at 0 percent, or low interest rate financing. Otherwise remember to work out what you actually pay. A point or two of interest rate will likely amount to less than you think. Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I dont want to pay any interest </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"We are sorry to hear that and hope everyone was ok.  There may be a period of uncertainty while insurance matters are cleared up. In the meantime you should know that car loans are open and can be paid off at any time. Therefore there is no compelling financial reason to wait for the insurance to clear before getting a replacement car. Click here to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I just wrote my car off </a></td>\r\n<td><a title=\"We understand that customers need to do some due diligence when looking at several models of vehicle. For the most part, those feature by features comparisons already exist on the internet. What a spreadsheet cannot do is represent your feelings about the vehicle.  These are important because it is likely going to be in your driveway for years. Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> We are making a spreadsheet of cars </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"No problem! Lets take the vehicle to your house and try it out. But click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Will this car fit in my garage? </a></td>\r\n<td><a title=\"Would you just drop by your dentist? Buying a vehicle is an even bigger decision! Appointments are not just for the product advisor. They are for the comfort and convenience of other customers like yourself who also deserve excellent wait-free unhurried service. Do product advisors take walk-ins? Sure, but do yourself a favour and give them a heads up before you arrive.  Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Can I drop by next week? </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"New? Probably the vehicle you want is somewhere in the warehouse or in our regional network. Sometimes shortages can develop - but why not let us do the legwork? Come see a human and we will figure it out. Used? Decide what you want, and when you see it, snap it up. Used cars are one of a kind. Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> No one seems to have the vehicle I want </a></td>\r\n<td><a title=\"When you come to a dealership in person, this tells the seller you are ready to do business and are not just fishing. For this reason the best price is always when you come to the dealership. If you prefer to deal online, we suggest you try our chose-a-price service. Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Give me your best price </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"Modern cars have 50000 moving parts and are worth thousands of dollars, so value can only be roughly estimated from books alone. We wish life were simpler, but there is no substitute for having the vehicle examined by an expert, in person. Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Whats my trade worth? </a></td>\r\n<td><a title=\"We are sorry to hear that. Nobody is perfect. Any dealer participating in MyNextRide is committed to the highest levels of customer service. If you had a bad experience we want to hear about it.  Otherwise please contact one of our experienced and friendly product advisors.   Click the button to let us know that you want to discuss this \" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> I had a bad experience with a sales person </a></td>\r\n</tr>\r\n<tr>\r\n<td><a title=\"Even if the car is on the lot it will take about 2 days to get it ready for delivery.  It is a bit more complex than a supermarket checkout, but like a supermarket checkout, cars are queued for delivery in order. Otherwise delays can vary from a week or two if it is in the warehouse, to 3 to 4 months for a factory order. Click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> How long will it take to get the car? </a></td>\r\n<td><a title=\"New cars are usually sold in mint condition with 5 to 125 km on them.  For this to be the case dealers must ship the cars from the factory on a delivery truck and handle them with care.  For full disclosure, this cost is itemized for the customer. If you hate the freight, consider buying a used vehicle. But click the button to let us know that you want to discuss this\" href=\"#\"> <img src=\"templates/protostar/images/info.png\" alt=\"\" /> Why do I have to pay freight? </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p><a href=\"#\"> Did we miss something? Maybe you need to talk to a human</a></p>','',1,2,'2014-12-22 12:57:26',152,'','2014-12-26 01:02:19',152,0,'0000-00-00 00:00:00','2014-12-22 12:57:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,0,'','',1,22,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `ua8y4_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_content_frontpage`
--

DROP TABLE IF EXISTS `ua8y4_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_content_frontpage`
--

LOCK TABLES `ua8y4_content_frontpage` WRITE;
/*!40000 ALTER TABLE `ua8y4_content_frontpage` DISABLE KEYS */;
INSERT INTO `ua8y4_content_frontpage` VALUES (3,1);
/*!40000 ALTER TABLE `ua8y4_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_content_rating`
--

DROP TABLE IF EXISTS `ua8y4_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_content_rating`
--

LOCK TABLES `ua8y4_content_rating` WRITE;
/*!40000 ALTER TABLE `ua8y4_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_content_types`
--

DROP TABLE IF EXISTS `ua8y4_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_content_types`
--

LOCK TABLES `ua8y4_content_types` WRITE;
/*!40000 ALTER TABLE `ua8y4_content_types` DISABLE KEYS */;
INSERT INTO `ua8y4_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `ua8y4_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_contentitem_tag_map`
--

DROP TABLE IF EXISTS `ua8y4_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_contentitem_tag_map`
--

LOCK TABLES `ua8y4_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `ua8y4_contentitem_tag_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_core_log_searches`
--

DROP TABLE IF EXISTS `ua8y4_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_core_log_searches`
--

LOCK TABLES `ua8y4_core_log_searches` WRITE;
/*!40000 ALTER TABLE `ua8y4_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_extensions`
--

DROP TABLE IF EXISTS `ua8y4_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_extensions`
--

LOCK TABLES `ua8y4_extensions` WRITE;
/*!40000 ALTER TABLE `ua8y4_extensions` DISABLE KEYS */;
INSERT INTO `ua8y4_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}','','',0,'0000-00-00 00:00:00',0,0),(12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"f06a6afc2f658082339e5c139b747786\"}','','',0,'0000-00-00 00:00:00',0,0),(104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0),(401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0),(403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0),(408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0),(413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0),(440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0),(446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0),(447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0),(504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.6\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10001,'extplorer','component','com_extplorer','',1,1,0,0,'{\"name\":\"eXtplorer\",\"type\":\"component\",\"creationDate\":\"14.11.2014\",\"author\":\"soeren, QuiX Project\",\"copyright\":\"Soeren Eberhardt-Biermann, QuiX Project\",\"authorEmail\":\"info|-at|-extplorer.net\",\"authorUrl\":\"http:\\/\\/extplorer.net\\/\",\"version\":\"2.1.6\",\"description\":\"\\n\\t<div align=\\\"left\\\"><img src=\\\"components\\/com_extplorer\\/images\\/eXtplorer_logo.png\\\" alt=\\\"eXtplorer Logo\\\" \\/><\\/div>\\n\\t<h2>Successfully installed eXtplorer&nbsp;<\\/h2>\\n\\teXtplorer is a powerful File- and FTP\\/WebDAV Manager script. \\n\\t<br\\/>It allows \\n\\t  <ul><li>Browsing Directories & Files,<\\/li>\\n\\t  <li>Editing, Copying, Moving and Deleting files,<\\/li>\\n\\t  <li>Searching, Uploading and Downloading files,<\\/li>\\n\\t  <li>Creating new Files and Directories,<\\/li>\\n\\t  <li>Creating and Extracting Archives with Files and Directories,<\\/li>\\n\\t  <li>Changing file permissions (chmod)<\\/li><\\/ul><br\\/>and much more.<br\\/><br\\/>\\n\\t  <strong>By default restricted to Superadministrators!<\\/strong>\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10003,'vehiclemanager','component','com_vehiclemanager','',1,1,0,0,'{\"name\":\"VehicleManager\",\"type\":\"component\",\"creationDate\":\"06 August 2014\",\"author\":\"Rob de Cleen, Andrey Kvasnevskiy\",\"copyright\":\"ordasoft - Andrey Kvasnevskiy \",\"authorEmail\":\"rob@decleen.com; akbet@mail.ru; \",\"authorUrl\":\"http:\\/\\/www.ordasoft.com\",\"version\":\"3.3.1 PRO\",\"description\":\"VehicleManager - Joomla component for creating sites for selling or renting vehicles\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10007,'com_carshopping','component','com_carshopping','',1,1,0,0,'{\"name\":\"com_carshopping\",\"type\":\"component\",\"creationDate\":\"2014-12-18\",\"author\":\"aldo\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"aldopraherda@gmail.com\",\"authorUrl\":\"http:\\/\\/www.aldoapp.com\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10008,'akeeba','component','com_akeeba','',1,1,0,0,'{\"name\":\"Akeeba\",\"type\":\"component\",\"creationDate\":\"2014-09-30\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"4.0.5\",\"description\":\"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.\",\"group\":\"\"}','{\"siteurl\":\"http:\\/\\/mynextride.ca\\/\",\"jlibrariesdir\":\"\\/var\\/www\\/html\\/libraries\",\"jversion\":\"1.6\",\"lastversion\":\"4.0.5\"}','','',0,'0000-00-00 00:00:00',0,0),(10009,'F0F (NEW) DO NOT REMOVE','library','lib_f0f','',0,1,1,0,'{\"name\":\"F0F (NEW) DO NOT REMOVE\",\"type\":\"library\",\"creationDate\":\"2014-09-11 16:58:22\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"rev844F136-1410443902\",\"description\":\"Framework-on-Framework (FOF) newer version - DO NOT REMOVE - The rapid component development framework for Joomla!. This package is the newer version of FOF, not the one shipped with Joomla! as the official Joomla! RAD Layer. The Joomla! RAD Layer has ceased development in March 2014. DO NOT UNINSTALL THIS PACKAGE, IT IS *** N O T *** A DUPLICATE OF THE \'FOF\' PACKAGE. REMOVING EITHER FOF PACKAGE WILL BREAK YOUR SITE.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10010,'AkeebaStrapper','file','files_strapper','',0,1,0,0,'{\"name\":\"AkeebaStrapper\",\"type\":\"file\",\"creationDate\":\"2014-09-11 16:58:22\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"(C) 2012-2013 Akeeba Ltd.\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"rev844F136-1410443902\",\"description\":\"Namespaced jQuery, jQuery UI and Bootstrap for Akeeba products.\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `ua8y4_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_filters`
--

DROP TABLE IF EXISTS `ua8y4_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_filters`
--

LOCK TABLES `ua8y4_finder_filters` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links`
--

DROP TABLE IF EXISTS `ua8y4_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links`
--

LOCK TABLES `ua8y4_finder_links` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms0`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms0`
--

LOCK TABLES `ua8y4_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms1`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms1`
--

LOCK TABLES `ua8y4_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms2`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms2`
--

LOCK TABLES `ua8y4_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms3`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms3`
--

LOCK TABLES `ua8y4_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms4`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms4`
--

LOCK TABLES `ua8y4_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms5`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms5`
--

LOCK TABLES `ua8y4_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms6`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms6`
--

LOCK TABLES `ua8y4_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms7`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms7`
--

LOCK TABLES `ua8y4_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms8`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms8`
--

LOCK TABLES `ua8y4_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_terms9`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_terms9`
--

LOCK TABLES `ua8y4_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termsa`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termsa`
--

LOCK TABLES `ua8y4_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termsb`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termsb`
--

LOCK TABLES `ua8y4_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termsc`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termsc`
--

LOCK TABLES `ua8y4_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termsd`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termsd`
--

LOCK TABLES `ua8y4_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termse`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termse`
--

LOCK TABLES `ua8y4_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_links_termsf`
--

DROP TABLE IF EXISTS `ua8y4_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_links_termsf`
--

LOCK TABLES `ua8y4_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_taxonomy`
--

DROP TABLE IF EXISTS `ua8y4_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_taxonomy`
--

LOCK TABLES `ua8y4_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `ua8y4_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `ua8y4_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `ua8y4_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_taxonomy_map`
--

LOCK TABLES `ua8y4_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_terms`
--

DROP TABLE IF EXISTS `ua8y4_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_terms`
--

LOCK TABLES `ua8y4_finder_terms` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_terms_common`
--

DROP TABLE IF EXISTS `ua8y4_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_terms_common`
--

LOCK TABLES `ua8y4_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_terms_common` DISABLE KEYS */;
INSERT INTO `ua8y4_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `ua8y4_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_tokens`
--

DROP TABLE IF EXISTS `ua8y4_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_tokens`
--

LOCK TABLES `ua8y4_finder_tokens` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `ua8y4_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_tokens_aggregate`
--

LOCK TABLES `ua8y4_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_finder_types`
--

DROP TABLE IF EXISTS `ua8y4_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_finder_types`
--

LOCK TABLES `ua8y4_finder_types` WRITE;
/*!40000 ALTER TABLE `ua8y4_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_languages`
--

DROP TABLE IF EXISTS `ua8y4_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_languages`
--

LOCK TABLES `ua8y4_languages` WRITE;
/*!40000 ALTER TABLE `ua8y4_languages` DISABLE KEYS */;
INSERT INTO `ua8y4_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `ua8y4_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_menu`
--

DROP TABLE IF EXISTS `ua8y4_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_menu`
--

LOCK TABLES `ua8y4_menu` WRITE;
/*!40000 ALTER TABLE `ua8y4_menu` DISABLE KEYS */;
INSERT INTO `ua8y4_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,93,0,'*',0),(2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1),(8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1),(9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1),(10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1),(11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1),(12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1),(13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1),(14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1),(15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1),(16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1),(17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1),(18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1),(19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1),(20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1),(21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1),(22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1),(23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',43,44,0,'',1),(24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1),(101,'mainmenu','Home','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',47,48,1,'*',0),(106,'mainmenu','Vehicle Selection','vehicle-selection','','vehicle-selection','index.php?option=com_vehiclemanager&view=all_categories','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"allcategorylayout\":\"\",\"categorylayout\":\"\",\"viewvehiclelayout\":\"\",\"back_button\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',49,50,0,'*',0),(107,'main','eXtplorer','extplorer','','extplorer','index.php?option=com_extplorer&tmpl=component','component',0,1,1,10001,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',51,52,0,'',1),(110,'main','VehicleManager','VehicleManager','','VehicleManager','index.php?option=com_vehiclemanager','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',53,78,0,'',1),(111,'main','Vehicles','Vehicles','','VehicleManager/Vehicles','index.php?option=com_vehiclemanager','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:module',0,'',54,55,0,'',1),(112,'main','Categories','Categories','','VehicleManager/Categories','index.php?option=com_vehiclemanager&section=categories','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',56,57,0,'',1),(113,'main','Reviews','Reviews','','VehicleManager/Reviews','index.php?option=com_vehiclemanager&task=manage_review','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',58,59,0,'',1),(114,'main','Suggestions','Suggestions','','VehicleManager/Suggestions','index.php?option=com_vehiclemanager&task=manage_suggestion','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',60,61,0,'',1),(115,'main','Rent Requests','Rent Requests','','VehicleManager/Rent Requests','index.php?option=com_vehiclemanager&task=rent_requests','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',62,63,0,'',1),(116,'main','Sale Manager','Sale Manager','','VehicleManager/Sale Manager','index.php?option=com_vehiclemanager&task=buying_requests','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',64,65,0,'',1),(117,'main','Features Manager','Features Manager','','VehicleManager/Features Manager','index.php?option=com_vehiclemanager&section=featured_manager','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',66,67,0,'',1),(118,'main','Language Manager','Language Manager','','VehicleManager/Language Manager','index.php?option=com_vehiclemanager&section=language_manager','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',68,69,0,'',1),(119,'main','Import/Export','Import/Export','','VehicleManager/Import/Export','index.php?option=com_vehiclemanager&task=show_import_export','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:config',0,'',70,71,0,'',1),(120,'main','Settings','Settings','','VehicleManager/Settings','index.php?option=com_vehiclemanager&task=config','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:config',0,'',72,73,0,'',1),(121,'main','Orders','orders','','VehicleManager/orders','index.php?option=com_vehiclemanager&task=orders','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:writemess',0,'',74,75,0,'',1),(122,'main','About','About','','VehicleManager/About','index.php?option=com_vehiclemanager&task=about','component',0,110,2,10003,0,'0000-00-00 00:00:00',0,1,'class:info',0,'',76,77,0,'',1),(132,'main','COM_CARSHOPPING','com-carshopping','','com-carshopping','index.php?option=com_carshopping','component',0,1,1,10007,0,'0000-00-00 00:00:00',0,1,'components/com_carshopping/assets/images/s_com_carshopping.png',0,'',79,84,0,'',1),(133,'main','COM_CARSHOPPING_TITLE_SURVEYS','com-carshopping-title-surveys','','com-carshopping/com-carshopping-title-surveys','index.php?option=com_carshopping&view=surveys','component',0,132,2,10007,0,'0000-00-00 00:00:00',0,1,'components/com_carshopping/assets/images/s_surveys.png',0,'',80,81,0,'',1),(134,'main','COM_CARSHOPPING_TITLE_SHOPPINGPROFILES','com-carshopping-title-shoppingprofiles','','com-carshopping/com-carshopping-title-shoppingprofiles','index.php?option=com_carshopping&view=shoppingprofiles','component',0,132,2,10007,0,'0000-00-00 00:00:00',0,1,'components/com_carshopping/assets/images/s_shoppingprofiles.png',0,'',82,83,0,'',1),(135,'mainmenu','Shopping profile','shopping-profile','','shopping-profile','index.php?option=com_carshopping&view=shoppingprofiles','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',85,86,0,'*',0),(136,'mainmenu','Survey','survey','','survey','index.php?option=com_carshopping&view=surveys','component',1,1,1,10007,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',87,88,0,'*',0),(138,'main','COM_AKEEBA','com-akeeba','','com-akeeba','index.php?option=com_akeeba','component',1,1,1,10008,0,'0000-00-00 00:00:00',0,1,'../media/com_akeeba/icons/akeeba-16.png',0,'',89,90,0,'',1),(139,'mainmenu','Dilemma','dilemma','','dilemma','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',91,92,0,'*',0);
/*!40000 ALTER TABLE `ua8y4_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_menu_types`
--

DROP TABLE IF EXISTS `ua8y4_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_menu_types`
--

LOCK TABLES `ua8y4_menu_types` WRITE;
/*!40000 ALTER TABLE `ua8y4_menu_types` DISABLE KEYS */;
INSERT INTO `ua8y4_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
/*!40000 ALTER TABLE `ua8y4_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_messages`
--

DROP TABLE IF EXISTS `ua8y4_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_messages`
--

LOCK TABLES `ua8y4_messages` WRITE;
/*!40000 ALTER TABLE `ua8y4_messages` DISABLE KEYS */;
INSERT INTO `ua8y4_messages` VALUES (1,0,0,0,'2014-12-20 23:48:19',0,0,'Error sending email','An error was encountered when sending the user registration email. The error is: Could not start mail function. The user who attempted to register is: cmah444');
/*!40000 ALTER TABLE `ua8y4_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_messages_cfg`
--

DROP TABLE IF EXISTS `ua8y4_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_messages_cfg`
--

LOCK TABLES `ua8y4_messages_cfg` WRITE;
/*!40000 ALTER TABLE `ua8y4_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_modules`
--

DROP TABLE IF EXISTS `ua8y4_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_modules`
--

LOCK TABLES `ua8y4_modules` WRITE;
/*!40000 ALTER TABLE `ua8y4_modules` DISABLE KEYS */;
INSERT INTO `ua8y4_modules` VALUES (1,39,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*'),(17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,80,'Banner','','<p><img title=\"Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need\" src=\"templates/protostar/images/keylogo.png\" alt=\"\" /></p>',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `ua8y4_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_modules_menu`
--

DROP TABLE IF EXISTS `ua8y4_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_modules_menu`
--

LOCK TABLES `ua8y4_modules_menu` WRITE;
/*!40000 ALTER TABLE `ua8y4_modules_menu` DISABLE KEYS */;
INSERT INTO `ua8y4_modules_menu` VALUES (1,0),(2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(16,0),(17,0),(79,0),(86,0),(87,135),(87,136);
/*!40000 ALTER TABLE `ua8y4_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_newsfeeds`
--

DROP TABLE IF EXISTS `ua8y4_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_newsfeeds`
--

LOCK TABLES `ua8y4_newsfeeds` WRITE;
/*!40000 ALTER TABLE `ua8y4_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_overrider`
--

DROP TABLE IF EXISTS `ua8y4_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_overrider`
--

LOCK TABLES `ua8y4_overrider` WRITE;
/*!40000 ALTER TABLE `ua8y4_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_postinstall_messages`
--

DROP TABLE IF EXISTS `ua8y4_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_postinstall_messages`
--

LOCK TABLES `ua8y4_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `ua8y4_postinstall_messages` DISABLE KEYS */;
INSERT INTO `ua8y4_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1),(2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1),(3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1),(4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1),(5,10008,'AKEEBA_POSTSETUP_LBL_CONFWIZ','AKEEBA_POSTSETUP_DESC_CONFWIZ','AKEEBA_POSTSETUP_BTN_RUN_CONFWIZ','com_akeeba',1,'action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_confwiz_action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_confwiz_condition','4.0.0',1),(6,10008,'AKEEBA_POSTSETUP_LBL_ANGIEUPGRADE','AKEEBA_POSTSETUP_DESC_ANGIEUPGRADE','AKEEBA_POSTSETUP_BTN_ANGIEUPGRADE','com_akeeba',1,'action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_angie_action','admin://components/com_akeeba/helpers/postinstall.php','com_akeeba_postinstall_angie_condition','4.0.0',1),(7,10008,'AKEEBA_POSTSETUP_LBL_ACCEPTLICENSE','AKEEBA_POSTSETUP_DESC_ACCEPTLICENSE','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1),(8,10008,'AKEEBA_POSTSETUP_LBL_ACCEPTSUPPORT','AKEEBA_POSTSETUP_DESC_ACCEPTSUPPORT','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1),(9,10008,'AKEEBA_POSTSETUP_LBL_ACCEPTBACKUPTEST','AKEEBA_POSTSETUP_DESC_ACCEPTBACKUPTEST','AKEEBA_POSTSETUP_BTN_I_CONFIRM_THIS','com_akeeba',1,'message','','','','','4.0.0',1);
/*!40000 ALTER TABLE `ua8y4_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_redirect_links`
--

DROP TABLE IF EXISTS `ua8y4_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_redirect_links`
--

LOCK TABLES `ua8y4_redirect_links` WRITE;
/*!40000 ALTER TABLE `ua8y4_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_schemas`
--

DROP TABLE IF EXISTS `ua8y4_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_schemas`
--

LOCK TABLES `ua8y4_schemas` WRITE;
/*!40000 ALTER TABLE `ua8y4_schemas` DISABLE KEYS */;
INSERT INTO `ua8y4_schemas` VALUES (700,'3.3.6-2014-09-30');
/*!40000 ALTER TABLE `ua8y4_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_session`
--

DROP TABLE IF EXISTS `ua8y4_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_session`
--

LOCK TABLES `ua8y4_session` WRITE;
/*!40000 ALTER TABLE `ua8y4_session` DISABLE KEYS */;
INSERT INTO `ua8y4_session` VALUES ('9dm2mq6ppu5m2aft2karkqq0i5',0,1,'1419569587','__default|a:11:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1419569586;s:18:\"session.timer.last\";i:1419569586;s:17:\"session.timer.now\";i:1419569586;s:22:\"session.client.browser\";s:72:\"Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:5:\"array\";i:1;s:16:\"com_mailto.links\";a:1:{s:40:\"5a683f59c281a5372871dfba3a3a3c8b5a269e34\";O:8:\"stdClass\":2:{s:4:\"link\";s:108:\"http://mynextrides.com/vehicle-selection/106/view_vehicle/49/sport/5/2009-lamborghini-gallardo-lp560-4-coupe\";s:6:\"expiry\";i:1419569587;}}s:17:\"captcha_keystring\";s:6:\"2y2h3e\";s:13:\"session.token\";s:32:\"b19ae57de9ba95dc9f19a5837e4b205a\";}',0,'');
/*!40000 ALTER TABLE `ua8y4_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_tags`
--

DROP TABLE IF EXISTS `ua8y4_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_tags`
--

LOCK TABLES `ua8y4_tags` WRITE;
/*!40000 ALTER TABLE `ua8y4_tags` DISABLE KEYS */;
INSERT INTO `ua8y4_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ua8y4_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_template_styles`
--

DROP TABLE IF EXISTS `ua8y4_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_template_styles`
--

LOCK TABLES `ua8y4_template_styles` WRITE;
/*!40000 ALTER TABLE `ua8y4_template_styles` DISABLE KEYS */;
INSERT INTO `ua8y4_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),(5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(7,'protostar',0,'1','protostar - Default','{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
/*!40000 ALTER TABLE `ua8y4_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_ucm_base`
--

DROP TABLE IF EXISTS `ua8y4_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ucm_base`
--

LOCK TABLES `ua8y4_ucm_base` WRITE;
/*!40000 ALTER TABLE `ua8y4_ucm_base` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_ucm_content`
--

DROP TABLE IF EXISTS `ua8y4_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ucm_content`
--

LOCK TABLES `ua8y4_ucm_content` WRITE;
/*!40000 ALTER TABLE `ua8y4_ucm_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_ucm_history`
--

DROP TABLE IF EXISTS `ua8y4_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_ucm_history`
--

LOCK TABLES `ua8y4_ucm_history` WRITE;
/*!40000 ALTER TABLE `ua8y4_ucm_history` DISABLE KEYS */;
INSERT INTO `ua8y4_ucm_history` VALUES (1,1,1,'','2014-12-17 13:56:30',152,1683,'247b62d68753c681d62d18e1b0372367c35fdc9c','{\"id\":1,\"asset_id\":55,\"title\":\"Under Construction\",\"alias\":\"under-construction\",\"introtext\":\"<p>under construction<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-17 13:56:30\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-12-17 13:56:30\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(2,2,1,'','2014-12-17 17:00:47',152,1643,'7685fde095512ebac2ff3261e25d19635a19c16f','{\"id\":2,\"asset_id\":74,\"title\":\"hello world\",\"alias\":\"hello-world\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-17 17:00:47\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-12-17 17:00:47\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(3,3,1,'','2014-12-21 12:16:49',152,2071,'5ca85d34b79ab6606b1e591e5d9b727c00694282','{\"id\":3,\"asset_id\":81,\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/keylogo.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need;<\\/p>\\r\\n<p><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><br \\/><br \\/><\\/p>\\r\\n<p align=\\\"ceter\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i><a href=\\\"https:\\/\\/twitter.com\\/mynextrides\\\">Follow us<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(4,3,1,'','2014-12-21 12:22:02',152,2307,'4f86dc8dd95fb6971a599701614978be9efc2354','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/keylogo.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/bluecar.jpg\\\" alt=\\\"\\\" width=\\\"120\\\" height=\\\"80\\\" \\/><br \\/><br \\/><\\/p>\\r\\n<p align=\\\"ceter\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i><a href=\\\"https:\\/\\/twitter.com\\/mynextrides\\\">Follow us<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-21 12:22:02\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-21 12:20:34\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(5,3,1,'','2014-12-21 12:23:17',152,2308,'e176040fe09785bbe4b7a2bbce4e4676bced299f','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/keylogo.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/bluecar.jpg\\\" alt=\\\"\\\" width=\\\"120\\\" height=\\\"80\\\" \\/><br \\/><br \\/><\\/p>\\r\\n<p align=\\\"ceter\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i><a href=\\\"https:\\/\\/twitter.com\\/mynextrides\\\">Follow us<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-21 12:23:17\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-21 12:22:02\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(6,3,1,'','2014-12-21 12:27:17',152,2343,'ee8bcf10b1dfd55cf167a8a44c9d5af5602e7e94','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<h2>Welcome to MyNextRide<\\/h2>\\r\\n<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/keylogo.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/bluecar.jpg\\\" alt=\\\"\\\" width=\\\"120\\\" height=\\\"80\\\" \\/><br \\/><br \\/><\\/p>\\r\\n<p align=\\\"ceter\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i><a href=\\\"https:\\/\\/twitter.com\\/mynextrides\\\">Follow us<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-21 12:27:17\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-21 12:23:17\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(7,3,1,'','2014-12-21 12:27:41',152,2373,'e6a3562c94f28ac326787aeecd80444b2cd9e16e','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<h2 style=\\\"text-align: center;\\\">Welcome to MyNextRide<\\/h2>\\r\\n<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/keylogo.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"text-align: center;\\\">Thanks for choosing MyNextRide. Please help us help you by giving us some clues about what you need;<\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><img style=\\\"display: block; margin-left: auto; margin-right: auto;\\\" src=\\\"images\\/bluecar.jpg\\\" alt=\\\"\\\" width=\\\"120\\\" height=\\\"80\\\" \\/><br \\/><br \\/><\\/p>\\r\\n<p align=\\\"ceter\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i><a href=\\\"https:\\/\\/twitter.com\\/mynextrides\\\">Follow us<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-21 12:27:41\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-21 12:27:17\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(8,3,1,'','2014-12-22 11:58:11',152,2064,'da51d0d38749793e5faab8e0fcacb76f467cdaa4','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<h2>MyNextRide.ca<\\/h2>\\r\\n<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/heresthekey.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p align=\\\"center\\\"><a href=\\\"http:\\/\\/twitter.com\\/MyNextRideCa\\\" target=\\\"_blank\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i>Contact us on Twitter<\\/a><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-22 11:58:11\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-22 11:52:57\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(9,3,1,'','2014-12-22 11:59:14',152,2082,'95cbd41eae0bc69a7a458afa943ce55af4660318','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<h2>MyNextRide.ca<\\/h2>\\r\\n<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/heresthekey.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p align=\\\"center\\\"><a href=\\\"http:\\/\\/twitter.com\\/MyNextRideCa\\\" target=\\\"_blank\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i>Contact us on Twitter<\\/a><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-22 11:59:14\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-22 11:58:11\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(10,3,1,'','2014-12-22 12:04:24',152,2216,'d487ddfaf44066737e53b09de8e943b7eab473ea','{\"id\":3,\"asset_id\":\"81\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<h2>MyNextRide.ca<\\/h2>\\r\\n<p align=\\\"center\\\"><img src=\\\"templates\\/protostar\\/images\\/heresthekey.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p align=\\\"center\\\"><a href=\\\"http:\\/\\/twitter.com\\/MyNextRideCa\\\" target=\\\"_blank\\\"><i class=\\\"fa fa-twitter\\\">\\u00a0<\\/i>Contact us on Twitter<\\/a><\\/p>\\r\\n<p style=\\\"text-align: center;\\\"><a href=\\\"shopping-profile\\\">Ready to go? Click here to get started <\\/a><\\/p>\\r\\n<p><iframe src=\\\"http:\\/\\/free.timeanddate.com\\/clock\\/i29w63pz\\/n188\\/tt0\\/tw1\\/ts1\\\" width=\\\"248\\\" height=\\\"18\\\" frameborder=\\\"0\\\"><\\/iframe><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-21 12:16:49\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-22 12:04:24\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-22 12:03:36\",\"publish_up\":\"2014-12-21 12:16:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"0\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(11,4,1,'','2014-12-22 12:57:26',152,11035,'8368df633b2f2f3def3a5f29e01c27b644ed267e','{\"id\":4,\"asset_id\":82,\"title\":\"Dilemma\",\"alias\":\"dilemma\",\"introtext\":\"<p><a title=\\\"Thanks for choosing MyNextRide. Everyone has problems right? No worries - we are problem solvers - just give us a clue \\\" href=\\\"#\\\" rel=\\\"tooltip\\\"><img src=\\\"templates\\/protostar\\/images\\/homerun.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/p>\\r\\n<p>hint: hover mouse cursor over the image to see advice<\\/p>\\r\\n<table border=\\\"1\\\" cellpadding=\\\"10\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><a title=\\\"Would you worry about wasting a doctors time if you were ill? We are professionals and are here to find you something which suits your needs and budget. If there is a real problem you can count on us to be upfront about it. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to waste your time <\\/a><\\/td>\\r\\n<td><a title=\\\"This is a situation we encounter often. Our financial professionals will go the extra mile to iron out any financial details and will be upfront about what is possible. Ask a sales advisor for further details. Click the car icon to let us know that you want to discuss this.\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I owe money on my last car <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Congratulations! It is so nice to be able help people on an important occasion in their lives. We will do our very best to make sure it is a good experience. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> This is my first car <\\/a><\\/td>\\r\\n<td><a title=\\\"There are many reasons why people might pay slightly different prices, such as province of registration or a history of loyalty to a brand or dealership.  Car shoppers have always done some negotiation on the price.  If that is not your thing you may find MyNextRide can smooth out the road. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Is someone else getting a better price? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We understand that you have a busy life, and perhaps you divvy up the chores in your household so that one of you does the advance work.  But shopping for someone else\\\\\'s car can be like shopping for someone else\\\\\'s shoes.  If they do not fit, you are not doing them a favour. If someone is going to drive the car, it just makes sense to bring them in sooner rather than later. If you can do that we promise that the time and hassle you save will be worth the effort. But click the car icon to let us know that you want to discuss this;\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I\'m shopping for someone else <\\/a><\\/td>\\r\\n<td><a title=\\\"The car industry is extremely competitive and modern production techniques are extremely efficient.  The market keeps everyone honest.  The fair price of a vehicle is determined by the quality of the vehicle and the  demand for it.   Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Your car X costs more than car Y <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Whether you are spending 5 thousand or 50 thousand dollars on a vehicle, it is a big decision.  If you plan to  spend 25 thousand dollars on a car and skip a 10 minute test drive that could save you a bad decision - you are valuing your time at 41  dollars and 65 cents per second. Really? Nice work if you can get it! Take it from us - you will sleep easier if you try it out first. But click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont have time to test drive <\\/a><\\/td>\\r\\n<td><a title=\\\"No one likes to pay interest. But there are usually a few models available at 0 percent, or low interest rate financing. Otherwise remember to work out what you actually pay. A point or two of interest rate will likely amount to less than you think. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to pay any interest <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We are sorry to hear that and hope everyone was ok.  There may be a period of uncertainty while insurance matters are cleared up. In the meantime you should know that car loans are open and can be paid off at any time. Therefore there is no compelling financial reason to wait for the insurance to clear before getting a replacement car. Click here to let us know that you want to discuss this  \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I just wrote my car off <\\/a><\\/td>\\r\\n<td><a title=\\\"We understand that customers need to do some due diligence when looking at several models of vehicle. For the most part, those feature by features comparisons already exist on the internet. What a spreadsheet cannot do is represent your feelings about the vehicle.  These are important because it is likely going to be in your driveway for years. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> We are making a spreadsheet of cars <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"No problem! Lets take the vehicle to your house and try it out. But click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Will this car fit in my garage? <\\/a><\\/td>\\r\\n<td><a title=\\\"Would you just drop by your dentist? Buying a vehicle is an even bigger decision! Appointments are not just for the product advisor. They are for the comfort and convenience of other customers like yourself who also deserve excellent wait-free unhurried service. Do product advisors take walk-ins? Sure, but do yourself a favour and give them a heads up before you arrive.  Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Can I drop by next week? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"New? Probably the vehicle you want is somewhere in the warehouse or in our regional network. Sometimes shortages can develop - but why not let us do the legwork? Come see a human and we will figure it out. Used? Decide what you want, and when you see it, snap it up. Used cars are one of a kind. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> No one seems to have the vehicle I want <\\/a><\\/td>\\r\\n<td><a title=\\\"When you come to a dealership in person, this tells the seller you are ready to do business and are not just fishing. For this reason the best price is always when you come to the dealership. If you prefer to deal online, we suggest you try our chose-a-price service. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Give me your best price <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Modern cars have 50000 moving parts and are worth thousands of dollars, so value can only be roughly estimated from books alone. We wish life were simpler, but there is no substitute for having the vehicle examined by an expert, in person. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Whats my trade worth? <\\/a><\\/td>\\r\\n<td><a title=\\\"We are sorry to hear that. Nobody is perfect. Any dealer participating in MyNextRide is committed to the highest levels of customer service. If you had a bad experience we want to hear about it.  Otherwise please contact one of our experienced and friendly product advisors.   Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I had a bad experience with a sales person <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Even if the car is on the lot it will take about 2 days to get it ready for delivery.  It is a bit more complex than a supermarket checkout, but like a supermarket checkout, cars are queued for delivery in order. Otherwise delays can vary from a week or two if it is in the warehouse, to 3 to 4 months for a factory order. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> How long will it take to get the car? <\\/a><\\/td>\\r\\n<td><a title=\\\"New cars are usually sold in mint condition with 5 to 125 km on them.  For this to be the case dealers must ship the cars from the factory on a delivery truck and handle them with care.  For full disclosure, this cost is itemized for the customer. If you hate the freight, consider buying a used vehicle. But click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Why do I have to pay freight? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a href=\\\"#\\\"> Did we miss something? Maybe you need to talk to a human<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-22 12:57:26\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-12-22 12:57:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(12,4,1,'','2014-12-22 13:05:32',152,11141,'d335c69a44e6cd78ce58dd0125bd80f99ea9aad7','{\"id\":4,\"asset_id\":\"82\",\"title\":\"Dilemma\",\"alias\":\"dilemma\",\"introtext\":\"<h2>Welcome to MyNextRide<\\/h2>\\r\\n<p><a title=\\\"Thanks for choosing MyNextRide. Everyone has problems right? No worries - we are problem solvers - just give us a clue \\\" href=\\\"#\\\" rel=\\\"tooltip\\\"><img src=\\\"templates\\/protostar\\/images\\/homerun.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/p>\\r\\n<p>hint: hover mouse cursor over the image to see advice<\\/p>\\r\\n<p><br \\/><br \\/><br \\/><\\/p>\\r\\n<table border=\\\"1\\\" cellpadding=\\\"10\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><a title=\\\"Would you worry about wasting a doctors time if you were ill? We are professionals and are here to find you something which suits your needs and budget. If there is a real problem you can count on us to be upfront about it. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to waste your time <\\/a><\\/td>\\r\\n<td><a title=\\\"This is a situation we encounter often. Our financial professionals will go the extra mile to iron out any financial details and will be upfront about what is possible. Ask a sales advisor for further details. Click the car icon to let us know that you want to discuss this.\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I owe money on my last car <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Congratulations! It is so nice to be able help people on an important occasion in their lives. We will do our very best to make sure it is a good experience. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> This is my first car <\\/a><\\/td>\\r\\n<td><a title=\\\"There are many reasons why people might pay slightly different prices, such as province of registration or a history of loyalty to a brand or dealership.  Car shoppers have always done some negotiation on the price.  If that is not your thing you may find MyNextRide can smooth out the road. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Is someone else getting a better price? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We understand that you have a busy life, and perhaps you divvy up the chores in your household so that one of you does the advance work.  But shopping for someone else\\\\\'s car can be like shopping for someone else\\\\\'s shoes.  If they do not fit, you are not doing them a favour. If someone is going to drive the car, it just makes sense to bring them in sooner rather than later. If you can do that we promise that the time and hassle you save will be worth the effort. But click the car icon to let us know that you want to discuss this;\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I\'m shopping for someone else <\\/a><\\/td>\\r\\n<td><a title=\\\"The car industry is extremely competitive and modern production techniques are extremely efficient.  The market keeps everyone honest.  The fair price of a vehicle is determined by the quality of the vehicle and the  demand for it.   Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Your car X costs more than car Y <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Whether you are spending 5 thousand or 50 thousand dollars on a vehicle, it is a big decision.  If you plan to  spend 25 thousand dollars on a car and skip a 10 minute test drive that could save you a bad decision - you are valuing your time at 41  dollars and 65 cents per second. Really? Nice work if you can get it! Take it from us - you will sleep easier if you try it out first. But click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont have time to test drive <\\/a><\\/td>\\r\\n<td><a title=\\\"No one likes to pay interest. But there are usually a few models available at 0 percent, or low interest rate financing. Otherwise remember to work out what you actually pay. A point or two of interest rate will likely amount to less than you think. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to pay any interest <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We are sorry to hear that and hope everyone was ok.  There may be a period of uncertainty while insurance matters are cleared up. In the meantime you should know that car loans are open and can be paid off at any time. Therefore there is no compelling financial reason to wait for the insurance to clear before getting a replacement car. Click here to let us know that you want to discuss this  \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I just wrote my car off <\\/a><\\/td>\\r\\n<td><a title=\\\"We understand that customers need to do some due diligence when looking at several models of vehicle. For the most part, those feature by features comparisons already exist on the internet. What a spreadsheet cannot do is represent your feelings about the vehicle.  These are important because it is likely going to be in your driveway for years. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> We are making a spreadsheet of cars <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"No problem! Lets take the vehicle to your house and try it out. But click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Will this car fit in my garage? <\\/a><\\/td>\\r\\n<td><a title=\\\"Would you just drop by your dentist? Buying a vehicle is an even bigger decision! Appointments are not just for the product advisor. They are for the comfort and convenience of other customers like yourself who also deserve excellent wait-free unhurried service. Do product advisors take walk-ins? Sure, but do yourself a favour and give them a heads up before you arrive.  Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Can I drop by next week? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"New? Probably the vehicle you want is somewhere in the warehouse or in our regional network. Sometimes shortages can develop - but why not let us do the legwork? Come see a human and we will figure it out. Used? Decide what you want, and when you see it, snap it up. Used cars are one of a kind. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> No one seems to have the vehicle I want <\\/a><\\/td>\\r\\n<td><a title=\\\"When you come to a dealership in person, this tells the seller you are ready to do business and are not just fishing. For this reason the best price is always when you come to the dealership. If you prefer to deal online, we suggest you try our chose-a-price service. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Give me your best price <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Modern cars have 50000 moving parts and are worth thousands of dollars, so value can only be roughly estimated from books alone. We wish life were simpler, but there is no substitute for having the vehicle examined by an expert, in person. Click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Whats my trade worth? <\\/a><\\/td>\\r\\n<td><a title=\\\"We are sorry to hear that. Nobody is perfect. Any dealer participating in MyNextRide is committed to the highest levels of customer service. If you had a bad experience we want to hear about it.  Otherwise please contact one of our experienced and friendly product advisors.   Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I had a bad experience with a sales person <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Even if the car is on the lot it will take about 2 days to get it ready for delivery.  It is a bit more complex than a supermarket checkout, but like a supermarket checkout, cars are queued for delivery in order. Otherwise delays can vary from a week or two if it is in the warehouse, to 3 to 4 months for a factory order. Click the car icon to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> How long will it take to get the car? <\\/a><\\/td>\\r\\n<td><a title=\\\"New cars are usually sold in mint condition with 5 to 125 km on them.  For this to be the case dealers must ship the cars from the factory on a delivery truck and handle them with care.  For full disclosure, this cost is itemized for the customer. If you hate the freight, consider buying a used vehicle. But click the car icon to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Why do I have to pay freight? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a href=\\\"#\\\"> Did we miss something? Maybe you need to talk to a human<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-22 12:57:26\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-22 13:05:32\",\"modified_by\":\"152\",\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-22 13:05:21\",\"publish_up\":\"2014-12-22 12:57:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(13,4,1,'','2014-12-26 01:02:19',152,11099,'d09be038951345550b989b7ed8d83d0f5c3101f5','{\"id\":4,\"asset_id\":\"82\",\"title\":\"Dilemma\",\"alias\":\"dilemma\",\"introtext\":\"<h2>Welcome to MyNextRide<\\/h2>\\r\\n<p><a title=\\\"Thanks for choosing MyNextRide. Everyone has problems right? No worries - we are problem solvers - just give us a clue \\\" href=\\\"#\\\" rel=\\\"tooltip\\\"><img src=\\\"templates\\/protostar\\/images\\/homerun.jpg\\\" alt=\\\"\\\" \\/><\\/a><\\/p>\\r\\n<p>hint: hover mouse cursor over the image to see advice<\\/p>\\r\\n<p><br \\/><br \\/><br \\/><\\/p>\\r\\n<table border=\\\"1\\\" cellpadding=\\\"10\\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td><a title=\\\"Would you worry about wasting a doctors time if you were ill? We are professionals and are here to find you something which suits your needs and budget. If there is a real problem you can count on us to be upfront about it. Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to waste your time <\\/a><\\/td>\\r\\n<td><a title=\\\"This is a situation we encounter often. Our financial professionals will go the extra mile to iron out any financial details and will be upfront about what is possible. Ask a sales advisor for further details. Click the button to let us know that you want to discuss this.\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I owe money on my last car <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Congratulations! It is so nice to be able help people on an important occasion in their lives. We will do our very best to make sure it is a good experience. Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> This is my first car <\\/a><\\/td>\\r\\n<td><a title=\\\"There are many reasons why people might pay slightly different prices, such as province of registration or a history of loyalty to a brand or dealership.  Car shoppers have always done some negotiation on the price.  If that is not your thing you may find MyNextRide can smooth out the road. Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Is someone else getting a better price? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We understand that you have a busy life, and perhaps you divvy up the chores in your household so that one of you does the advance work.  But shopping for someone else\'s car can be like shopping for someone else\'s shoes.  If they do not fit, you are not doing them a favour. If someone is going to drive the car, it just makes sense to bring them in sooner rather than later. If you can do that we promise that the time and hassle you save will be worth the effort. But click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I\'m shopping for someone else <\\/a><\\/td>\\r\\n<td><a title=\\\"The car industry is extremely competitive and modern production techniques are extremely efficient.  The market keeps everyone honest.  The fair price of a vehicle is determined by the quality of the vehicle and the  demand for it.   Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Your car X costs more than car Y <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Whether you are spending 5 thousand or 50 thousand dollars on a vehicle, it is a big decision.  If you plan to  spend 25 thousand dollars on a car and skip a 10 minute test drive that could save you a bad decision - you are valuing your time at 41  dollars and 65 cents per second. Really? Nice work if you can get it! Take it from us - you will sleep easier if you try it out first. But click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont have time to test drive <\\/a><\\/td>\\r\\n<td><a title=\\\"No one likes to pay interest. But there are usually a few models available at 0 percent, or low interest rate financing. Otherwise remember to work out what you actually pay. A point or two of interest rate will likely amount to less than you think. Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I dont want to pay any interest <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"We are sorry to hear that and hope everyone was ok.  There may be a period of uncertainty while insurance matters are cleared up. In the meantime you should know that car loans are open and can be paid off at any time. Therefore there is no compelling financial reason to wait for the insurance to clear before getting a replacement car. Click here to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I just wrote my car off <\\/a><\\/td>\\r\\n<td><a title=\\\"We understand that customers need to do some due diligence when looking at several models of vehicle. For the most part, those feature by features comparisons already exist on the internet. What a spreadsheet cannot do is represent your feelings about the vehicle.  These are important because it is likely going to be in your driveway for years. Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> We are making a spreadsheet of cars <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"No problem! Lets take the vehicle to your house and try it out. But click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Will this car fit in my garage? <\\/a><\\/td>\\r\\n<td><a title=\\\"Would you just drop by your dentist? Buying a vehicle is an even bigger decision! Appointments are not just for the product advisor. They are for the comfort and convenience of other customers like yourself who also deserve excellent wait-free unhurried service. Do product advisors take walk-ins? Sure, but do yourself a favour and give them a heads up before you arrive.  Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Can I drop by next week? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"New? Probably the vehicle you want is somewhere in the warehouse or in our regional network. Sometimes shortages can develop - but why not let us do the legwork? Come see a human and we will figure it out. Used? Decide what you want, and when you see it, snap it up. Used cars are one of a kind. Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> No one seems to have the vehicle I want <\\/a><\\/td>\\r\\n<td><a title=\\\"When you come to a dealership in person, this tells the seller you are ready to do business and are not just fishing. For this reason the best price is always when you come to the dealership. If you prefer to deal online, we suggest you try our chose-a-price service. Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Give me your best price <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Modern cars have 50000 moving parts and are worth thousands of dollars, so value can only be roughly estimated from books alone. We wish life were simpler, but there is no substitute for having the vehicle examined by an expert, in person. Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Whats my trade worth? <\\/a><\\/td>\\r\\n<td><a title=\\\"We are sorry to hear that. Nobody is perfect. Any dealer participating in MyNextRide is committed to the highest levels of customer service. If you had a bad experience we want to hear about it.  Otherwise please contact one of our experienced and friendly product advisors.   Click the button to let us know that you want to discuss this \\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> I had a bad experience with a sales person <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td><a title=\\\"Even if the car is on the lot it will take about 2 days to get it ready for delivery.  It is a bit more complex than a supermarket checkout, but like a supermarket checkout, cars are queued for delivery in order. Otherwise delays can vary from a week or two if it is in the warehouse, to 3 to 4 months for a factory order. Click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> How long will it take to get the car? <\\/a><\\/td>\\r\\n<td><a title=\\\"New cars are usually sold in mint condition with 5 to 125 km on them.  For this to be the case dealers must ship the cars from the factory on a delivery truck and handle them with care.  For full disclosure, this cost is itemized for the customer. If you hate the freight, consider buying a used vehicle. But click the button to let us know that you want to discuss this\\\" href=\\\"#\\\"> <img src=\\\"templates\\/protostar\\/images\\/info.png\\\" alt=\\\"\\\" \\/> Why do I have to pay freight? <\\/a><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a href=\\\"#\\\"> Did we miss something? Maybe you need to talk to a human<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-12-22 12:57:26\",\"created_by\":\"152\",\"created_by_alias\":\"\",\"modified\":\"2014-12-26 01:02:19\",\"modified_by\":152,\"checked_out\":\"152\",\"checked_out_time\":\"2014-12-26 00:46:32\",\"publish_up\":\"2014-12-22 12:57:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"20\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `ua8y4_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_update_sites`
--

DROP TABLE IF EXISTS `ua8y4_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_update_sites`
--

LOCK TABLES `ua8y4_update_sites` WRITE;
/*!40000 ALTER TABLE `ua8y4_update_sites` DISABLE KEYS */;
INSERT INTO `ua8y4_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1419554135,''),(2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1419554135,''),(3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,0,''),(4,'Joomla! Update Component Update Site','extension','http://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,0,''),(5,'Akeeba Backup Core','extension','http://cdn.akeebabackup.com/updates/abcore.xml',1,0,'');
/*!40000 ALTER TABLE `ua8y4_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_update_sites_extensions`
--

DROP TABLE IF EXISTS `ua8y4_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_update_sites_extensions`
--

LOCK TABLES `ua8y4_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `ua8y4_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `ua8y4_update_sites_extensions` VALUES (1,700),(2,700),(3,600),(4,28),(5,10008);
/*!40000 ALTER TABLE `ua8y4_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_updates`
--

DROP TABLE IF EXISTS `ua8y4_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_updates`
--

LOCK TABLES `ua8y4_updates` WRITE;
/*!40000 ALTER TABLE `ua8y4_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_user_keys`
--

DROP TABLE IF EXISTS `ua8y4_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_user_keys`
--

LOCK TABLES `ua8y4_user_keys` WRITE;
/*!40000 ALTER TABLE `ua8y4_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_user_notes`
--

DROP TABLE IF EXISTS `ua8y4_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_user_notes`
--

LOCK TABLES `ua8y4_user_notes` WRITE;
/*!40000 ALTER TABLE `ua8y4_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_user_profiles`
--

DROP TABLE IF EXISTS `ua8y4_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_user_profiles`
--

LOCK TABLES `ua8y4_user_profiles` WRITE;
/*!40000 ALTER TABLE `ua8y4_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_user_usergroup_map`
--

DROP TABLE IF EXISTS `ua8y4_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_user_usergroup_map`
--

LOCK TABLES `ua8y4_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `ua8y4_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `ua8y4_user_usergroup_map` VALUES (152,8),(153,2),(154,2),(154,7),(154,8);
/*!40000 ALTER TABLE `ua8y4_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_usergroups`
--

DROP TABLE IF EXISTS `ua8y4_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_usergroups`
--

LOCK TABLES `ua8y4_usergroups` WRITE;
/*!40000 ALTER TABLE `ua8y4_usergroups` DISABLE KEYS */;
INSERT INTO `ua8y4_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `ua8y4_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_users`
--

DROP TABLE IF EXISTS `ua8y4_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_users`
--

LOCK TABLES `ua8y4_users` WRITE;
/*!40000 ALTER TABLE `ua8y4_users` DISABLE KEYS */;
INSERT INTO `ua8y4_users` VALUES (152,'Super User','admin','aldopraherda@gmail.com','$2y$10$726rVG6VAymtTEwGKDITUup6GGVLVZzUPzHrc4kB7qmpVNmouY/F2',0,1,'2014-12-17 13:42:27','2014-12-26 00:35:30','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(153,'horseman','cmah444','cmah444@gmail.com','$2y$10$HYDJRwAqJx6PebFD.2E4LOEH2nwfV65qczK2JNN7PBXtc0rcNX0AG',1,0,'2014-12-20 23:48:19','0000-00-00 00:00:00','08df827fa7a74fc9af16e59609aebe11','{}','0000-00-00 00:00:00',0,'','',0),(154,'aldo','aldo','aldo_praherda@yahoo.com','$2y$10$CqLxLD0/azhorL.wIjNiMOVOnaKdMrPwKwNtygOGkBOdn6rFHJpLa',0,0,'2014-12-26 00:40:32','0000-00-00 00:00:00','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `ua8y4_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_buying_request`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_buying_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_buying_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) NOT NULL DEFAULT '0',
  `buying_request` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customer_name` varchar(250) DEFAULT '',
  `customer_email` varchar(250) DEFAULT '',
  `customer_phone` varchar(250) DEFAULT '',
  `customer_comment` text,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_vehicleid` (`fk_vehicleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_buying_request`
--

LOCK TABLES `ua8y4_vehiclemanager_buying_request` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_buying_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_buying_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_categories`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `iditem` int(11) NOT NULL DEFAULT '0',
  `idcat` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `iditem` (`iditem`,`idcat`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_categories`
--

LOCK TABLES `ua8y4_vehiclemanager_categories` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_categories` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_categories` VALUES (2,2,46),(3,3,47),(4,4,48),(5,5,49),(6,6,47),(7,7,46),(8,8,49),(9,9,50),(10,10,51),(11,11,47);
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_const`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_const`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_const` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `const` varchar(250) DEFAULT '',
  `sys_type` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=849 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_const`
--

LOCK TABLES `ua8y4_vehiclemanager_const` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_const` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_const` VALUES (2,'_VEHICLE_MANAGER_TITLE','Vehicle Manager'),(3,'_VEHICLE_MANAGER_DESC','Vehicle Manager'),(4,'_VEHICLE_MANAGER_SEARCH_DESC1','Vehicle Manager'),(5,'_VEHICLE_MANAGER_SEARCH_DESC2','Vehicle Manager'),(6,'_VEHICLE_MANAGER_NO_PICTURE','Vehicle Manager'),(7,'_VEHICLE_MANAGER_NOT_AUTHORIZED','Vehicle Manager'),(8,'_VEHICLE_MANAGER_LABEL_OK','Vehicle Manager'),(9,'_VEHICLE_MANAGER_LABEL_STATUS','Vehicle Manager'),(10,'_VEHICLE_MANAGER_ADMIN_IMPEXP','Vehicle Manager'),(11,'_VEHICLE_MANAGER_ADMIN_IMPEXP_ADD','Vehicle Manager'),(12,'_VEHICLE_MANAGER_ADMIN_PLEASE_SEL','Vehicle Manager'),(13,'_VEHICLE_MANAGER_ADMIN_FORMAT_CSV','Vehicle Manager'),(14,'_VEHICLE_MANAGER_ADMIN_FORMAT_XML','Vehicle Manager'),(15,'_VEHICLE_MANAGER_SHOW_IMPEXP_ERR1','Vehicle Manager'),(16,'_VEHICLE_MANAGER_SHOW_IMPEXP_ERR2','Vehicle Manager'),(17,'_VEHICLE_MANAGER_SHOW_IMPEXP_ERR3','Vehicle Manager'),(18,'_VEHICLE_MANAGER_SHOW_IMPEXP_ERR4','Vehicle Manager'),(19,'_VEHICLE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_TYP','Vehicle Manager'),(20,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_TYP','Vehicle Manager'),(21,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_TYP_TT_HEAD','Vehicle Manager'),(22,'_VEHICLE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_CATEGORY','Vehicle Manager'),(23,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_CAT','Vehicle Manager'),(24,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_CAT_TT_HEAD','Vehicle Manager'),(25,'_VEHICLE_MANAGER_SHOW_IMPEXP_LABEL_IMPORT_FILE','Vehicle Manager'),(26,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_FILE','Vehicle Manager'),(27,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_IMPORT_FILE_TT_HEAD','Vehicle Manager'),(28,'_VEHICLE_MANAGER_SHOW_IMPEXP_FORMAT','Vehicle Manager'),(29,'_VEHICLE_MANAGER_SHOW_IMPEXP_LABEL_EXPORT_TYP','Vehicle Manager'),(30,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_TYP','Vehicle Manager'),(31,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_TYP_TT_HEAD','Vehicle Manager'),(32,'_VEHICLE_MANAGER_SHOW_IMPEXP_LABEL_EXPORT_CATEGORY','Vehicle Manager'),(33,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_CAT','Vehicle Manager'),(34,'_VEHICLE_MANAGER_ADMIN_SHOW_IMPEXP_LABEL_EXPORT_CAT_TT_HEAD','Vehicle Manager'),(35,'_VEHICLE_MANAGER_SHOW_IMPEXP_RESULT','Vehicle Manager'),(36,'_VEHICLE_MANAGER_SHOW_IMPEXP_RESULT_DOWNLOAD','Vehicle Manager'),(37,'_VEHICLE_MANAGER_SHOW_IMPEXP_RESULT_REMEMBER','Vehicle Manager'),(38,'_VEHICLE_MANAGER_CATEGORIES_MANAGER','Vehicle Manager'),(39,'_VEHICLE_HEADER_CATEGORY','Vehicle Manager'),(40,'_VEHICLE_HEADER_NUMBER','Vehicle Manager'),(41,'_VEHICLE_HEADER_PUBLISHED','Vehicle Manager'),(42,'_VEHICLE_HEADER_REORDER','Vehicle Manager'),(43,'_VEHICLE_HEADER_ACCESS','Vehicle Manager'),(44,'_VEHICLE_HEADER_CHECKED_OUT','Vehicle Manager'),(45,'_VEHICLE_HEADER_ADD','Vehicle Manager'),(46,'_VEHICLE_HEADER_EDIT','Vehicle Manager'),(47,'_VEHICLE_DML_CAT_MUST_SELECT_NAME','Vehicle Manager'),(48,'_VEHICLE_CATEGORIES_NAME','Vehicle Manager'),(49,'_VEHICLE_A_SELECT_IMAGE','Vehicle Manager'),(50,'_VEHICLE_A_SELECT_TOP','Vehicle Manager'),(51,'_VEHICLE_CATEGORIES_HEADER_TITLE','Vehicle Manager'),(52,'_VEHICLE_CATEGORIES_HEADER_NAME','Vehicle Manager'),(53,'_VEHICLE_CATEGORIES_HEADER_ORDER','Vehicle Manager'),(54,'_VEHICLE_CATEGORIES_HEADER_IMAGE','Vehicle Manager'),(55,'_VEHICLE_CATEGORIES_HEADER_IMAGEPOS','Vehicle Manager'),(56,'_VEHICLE_CATEGORIES__PARENTITEM','Vehicle Manager'),(57,'_VEHICLE_CATEGORIES__IMAGEPREVIEW','Vehicle Manager'),(58,'_VEHICLE_CATEGORIES__DETAILS','Vehicle Manager'),(59,'_VEHICLE_DELETED','Vehicle Manager'),(60,'_VEHICLE_MANAGER_SHOW_RENT_VEHICLES','Vehicle Manager'),(61,'_VEHICLE_MANAGER_SHOW_RENT_RETURN','Vehicle Manager'),(62,'_VEHICLE_MANAGER_ADMIN_IMP','Vehicle Manager'),(63,'_VEHICLE_MANAGER_ADMIN_EXP','Vehicle Manager'),(64,'_VEHICLE_MANAGER_LABEL_SELECT_ALL_CATEGORIES','Vehicle Manager'),(65,'_VEHICLE_MANAGER_LABEL_SELECT_CATEGORIES','Vehicle Manager'),(66,'_VEHICLE_MANAGER_LABEL_SELECT_TO_RENT','Vehicle Manager'),(67,'_VEHICLE_MANAGER_LABEL_SELECT_ALL_RENT','Vehicle Manager'),(68,'_VEHICLE_MANAGER_LABEL_SELECT_RENT','Vehicle Manager'),(69,'_VEHICLE_MANAGER_LABEL_SELECT_NOT_RENT','Vehicle Manager'),(70,'_VEHICLE_MANAGER_LABEL_SELECT_TO_PUBLIC','Vehicle Manager'),(71,'_VEHICLE_MANAGER_LABEL_SELECT_ALL_PUBLIC','Vehicle Manager'),(72,'_VEHICLE_MANAGER_LABEL_SELECT_NOT_PUBLIC','Vehicle Manager'),(73,'_VEHICLE_MANAGER_LABEL_SELECT_PUBLIC','Vehicle Manager'),(74,'_VEHICLE_MANAGER_LABEL_SELECT_ALL_USERS','Vehicle Manager'),(75,'_VEHICLE_MANAGER_LABEL_SEARCH','Vehicle Manager'),(76,'_VEHICLE_MANAGER_LABEL_SEARCH_RESULT','Vehicle Manager'),(77,'_VEHICLE_MANAGER_LABEL_SEARCH_KEYWORD','Vehicle Manager'),(78,'_VEHICLE_MANAGER_LABEL_SEARCH_BUTTON','Vehicle Manager'),(79,'_VEHICLE_MANAGER_LABEL_SEARCH_NOTHING_FOUND','Vehicle Manager'),(80,'_VEHICLE_MANAGER_SHOW','Vehicle Manager'),(81,'_VEHICLE_MANAGER_SHOW_SEARCH','Vehicle Manager'),(82,'_VEHICLE_MANAGER_SHOW_SEARCH_KOM','Vehicle Manager'),(83,'_VEHICLE_MANAGER_LABEL_EXACTLY','Vehicle Manager'),(84,'_VEHICLE_MANAGER_LABEL_ADVANCED_SEARCH','Vehicle Manager'),(85,'_VEHICLE_MANAGER_LABEL_FROM','Vehicle Manager'),(86,'_VEHICLE_MANAGER_LABEL_TO','Vehicle Manager'),(87,'_VEHICLE_MANAGER_LABEL_YEAR','Vehicle Manager'),(88,'_VEHICLE_MANAGER_LABEL_PRICE','Vehicle Manager'),(89,'_VEHICLE_MANAGER_LABEL_LISTING_TYPE','Vehicle Manager'),(90,'_VEHICLE_MANAGER_LABEL_LISTING_STATUS','Vehicle Manager'),(91,'_VEHICLE_MANAGER_LABEL_PRICE_TYPE','Vehicle Manager'),(92,'_VEHICLE_MANAGER_LABEL_MODEL','Vehicle Manager'),(93,'_VEHICLE_MANAGER_LABEL_TITLE','Vehicle Manager'),(94,'_VEHICLE_MANAGER_LABEL_VEHICLEID','Vehicle Manager'),(95,'_VEHICLE_MANAGER_LABEL_RESULT','Vehicle Manager'),(96,'_VEHICLE_MANAGER_LABEL_COMMENT','Vehicle Manager'),(97,'_VEHICLE_MANAGER_LABEL_CATEGORY','Vehicle Manager'),(98,'_VEHICLE_MANAGER_LABEL_VEHICLES','Vehicle Manager'),(99,'_VEHICLE_MANAGER_LABEL_COVER','Vehicle Manager'),(100,'_VEHICLE_MANAGER_LABEL_ADDRESS','Vehicle Manager'),(101,'_VEHICLE_MANAGER_LABEL_COUNTRY','Vehicle Manager'),(102,'_VEHICLE_MANAGER_LABEL_REGION','Vehicle Manager'),(103,'_VEHICLE_MANAGER_LABEL_CITY','Vehicle Manager'),(104,'_VEHICLE_MANAGER_LABEL_DISTRICT','Vehicle Manager'),(105,'_VEHICLE_MANAGER_LABEL_ZIPCODE','Vehicle Manager'),(106,'_VEHICLE_MANAGER_LABEL_LATITUDE','Vehicle Manager'),(107,'_VEHICLE_MANAGER_LABEL_LONGITUDE','Vehicle Manager'),(108,'_VEHICLE_MANAGER_LABEL_NO_LOCATION_AVAILABLE','Vehicle Manager'),(109,'_VEHICLE_MANAGER_LABEL_VEHICLE_TYPE','Vehicle Manager'),(110,'_VEHICLE_MANAGER_LABEL_CONDITION_STATUS','Vehicle Manager'),(111,'_VEHICLE_MANAGER_LABEL_MILEAGE','Vehicle Manager'),(112,'_VEHICLE_MANAGER_LABEL_TRANSMISSION_TYPE','Vehicle Manager'),(113,'_VEHICLE_MANAGER_LABEL_ENGINE_TYPE','Vehicle Manager'),(114,'_VEHICLE_MANAGER_LABEL_ISSUE_YEAR','Vehicle Manager'),(115,'_VEHICLE_MANAGER_LABEL_DRIVE_TYPE','Vehicle Manager'),(116,'_VEHICLE_MANAGER_LABEL_FUEL_TYPE','Vehicle Manager'),(117,'_VEHICLE_MANAGER_LABEL_NUMBER_SPEEDS','Vehicle Manager'),(118,'_VEHICLE_MANAGER_LABEL_NUMBER_CYLINDERS','Vehicle Manager'),(119,'_VEHICLE_MANAGER_LABEL_NUMBER_DOORS','Vehicle Manager'),(120,'_VEHICLE_MANAGER_LABEL_NUMBER_SEATINGS','Vehicle Manager'),(121,'_VEHICLE_MANAGER_LABEL_CITY_FUEL_MPG','Vehicle Manager'),(122,'_VEHICLE_MANAGER_LABEL_HIGHWAY_FUEL_MPG','Vehicle Manager'),(123,'_VEHICLE_MANAGER_LABEL_WHEELBASE','Vehicle Manager'),(124,'_VEHICLE_MANAGER_LABEL_WHEELTYPE','Vehicle Manager'),(125,'_VEHICLE_MANAGER_LABEL_REARAXE_TYPE','Vehicle Manager'),(126,'_VEHICLE_MANAGER_LABEL_BRAKES_TYPE','Vehicle Manager'),(127,'_VEHICLE_MANAGER_LABEL_EXTERIOR_COLORS','Vehicle Manager'),(128,'_VEHICLE_MANAGER_LABEL_EXTERIOR_EXTRAS','Vehicle Manager'),(129,'_VEHICLE_MANAGER_LABEL_INTERIOR_COLORS','Vehicle Manager'),(130,'_VEHICLE_MANAGER_LABEL_DASHBOARD_OPTIONS','Vehicle Manager'),(131,'_VEHICLE_MANAGER_LABEL_INTERIOR_EXTRAS','Vehicle Manager'),(132,'_VEHICLE_MANAGER_LABEL_SAFETY_OPTIONS','Vehicle Manager'),(133,'_VEHICLE_MANAGER_LABEL_WARRANTY_OPTIONS','Vehicle Manager'),(134,'_VEHICLE_MANAGER_LABEL_WARRANTY_BASIC','Vehicle Manager'),(135,'_VEHICLE_MANAGER_LABEL_WARRANTY_DRIVETRAIN','Vehicle Manager'),(136,'_VEHICLE_MANAGER_LABEL_WARRANTY_CORROSION','Vehicle Manager'),(137,'_VEHICLE_MANAGER_LABEL_WARRANTY_ROADSIDE_ASSISTANCE','Vehicle Manager'),(138,'_VEHICLE_MANAGER_REQUEST_PHONE','Vehicle Manager'),(139,'_VEHICLE_MANAGER_LABEL_RATING','Vehicle Manager'),(140,'_VEHICLE_MANAGER_LABEL_PICTURE_URL','Vehicle Manager'),(141,'_VEHICLE_MANAGER_LABEL_PICTURE','Vehicle Manager'),(142,'_VEHICLE_MANAGER_LABEL_URL','Vehicle Manager'),(143,'_VEHICLE_MANAGER_LABEL_RENT_TO','Vehicle Manager'),(144,'_VEHICLE_MANAGER_LABEL_RENT_FROM','Vehicle Manager'),(145,'_VEHICLE_MANAGER_LABEL_RENT_UNTIL','Vehicle Manager'),(146,'_VEHICLE_MANAGER_LABEL_RENT_RETURN','Vehicle Manager'),(147,'_VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL','Vehicle Manager'),(148,'_VEHICLE_MANAGER_LABEL_RENT_FROM_UNTIL_NOT_KNOWN','Vehicle Manager'),(149,'_VEHICLE_MANAGER_LABEL_RENT_USER','Vehicle Manager'),(150,'_VEHICLE_MANAGER_LABEL_RENT_EMAIL','Vehicle Manager'),(151,'_VEHICLE_MANAGER_LABEL_RENT_ADRES','Vehicle Manager'),(152,'_VEHICLE_MANAGER_LABEL_BUYING_ADRES','Vehicle Manager'),(153,'_VEHICLE_MANAGER_LABEL_RENT_TIME','Vehicle Manager'),(154,'_VEHICLE_MANAGER_LABEL_HITS','Vehicle Manager'),(155,'_VEHICLE_MANAGER_LABEL_LINE','Vehicle Manager'),(156,'_VEHICLE_MANAGER_LABEL_RENT','Vehicle Manager'),(157,'_VEHICLE_MANAGER_LABEL_PUBLIC','Vehicle Manager'),(158,'_VEHICLE_MANAGER_LABEL_CONTROL','Vehicle Manager'),(159,'_VEHICLE_MANAGER_SUGGESTION_DATE','Vehicle Manager'),(160,'_VEHICLE_MANAGER_REVIEW_DATE','Vehicle Manager'),(161,'_VEHICLE_MANAGER_LABEL_FETCHED_SUBCATEGORIES','Vehicle Manager'),(162,'_VEHICLE_MANAGER_LABEL_PICTURE_URL_UPLOAD','Vehicle Manager'),(163,'_VEHICLE_MANAGER_LABEL_OTHER_PICTURES_URL_UPLOAD','Vehicle Manager'),(164,'_VEHICLE_MANAGER_LABEL_PICTURE_URL_DESC','Vehicle Manager'),(165,'_VEHICLE_MANAGER_LABEL_PICTURE_URL_UPLOAD_ERROR','Vehicle Manager'),(166,'_VEHICLE_MANAGER_LABEL_RENT_INFORMATIONS','Vehicle Manager'),(167,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_ACTUAL','Vehicle Manager'),(168,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_UPLOAD','Vehicle Manager'),(169,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_DOWNLOAD','Vehicle Manager'),(170,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_DELETE','Vehicle Manager'),(171,'_VEHICLE_MANAGER_LABEL_EDOCUMENT','Vehicle Manager'),(172,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_UPLOAD_ERROR','Vehicle Manager'),(173,'_VEHICLE_MANAGER_LABEL_RENT_CB','Vehicle Manager'),(174,'_VEHICLE_MANAGER_LABEL_REQUIRED','Vehicle Manager'),(175,'_VEHICLE_MANAGER_LABEL_ADDREVIEW','Vehicle Manager'),(176,'_VEHICLE_MANAGER_LABEL_REVIEWS','Vehicle Manager'),(177,'_VEHICLE_MANAGER_LABEL_BUTTON_SAVE','Vehicle Manager'),(178,'_VEHICLE_MANAGER_LABEL_BUTTON_RENT_REQU','Vehicle Manager'),(179,'_VEHICLE_MANAGER_LABEL_BUTTON_RENT_REQU_SAVE','Vehicle Manager'),(180,'_VEHICLE_MANAGER_LABEL_REVIEW','Vehicle Manager'),(181,'_VEHICLE_MANAGER_LABEL_REVIEW_TITLE','Vehicle Manager'),(182,'_VEHICLE_MANAGER_LABEL_REVIEW_RATING','Vehicle Manager'),(183,'_VEHICLE_MANAGER_LABEL_REVIEW_COMMENT','Vehicle Manager'),(184,'_VEHICLE_MANAGER_LABEL_ANONYMOUS','Vehicle Manager'),(185,'_VEHICLE_MANAGER_LABEL_FEATURED_CLICKS','Vehicle Manager'),(186,'_VEHICLE_MANAGER_LABEL_FEATURED_SHOWS','Vehicle Manager'),(187,'_VEHICLE_MANAGER_LABEL_VEHICLE_TITLE','Vehicle Manager'),(188,'_VEHICLE_MANAGER_LABEL_CLICKMAP','Vehicle Manager'),(189,'_VEHICLE_MANAGER_INFOTEXT_JS_REVIEW_TITLE','Vehicle Manager'),(190,'_VEHICLE_MANAGER_INFOTEXT_JS_REVIEW_COMMENT','Vehicle Manager'),(191,'_VEHICLE_MANAGER_INFOTEXT_JS_REVIEW_RATING','Vehicle Manager'),(192,'_VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_NAME','Vehicle Manager'),(193,'_VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_EMAIL','Vehicle Manager'),(194,'_VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_MAILING','Vehicle Manager'),(195,'_VEHICLE_MANAGER_INFOTEXT_JS_RENT_REQ_UNTIL','Vehicle Manager'),(196,'_VEHICLE_MANAGER_INFOTEXT_JS_IMAGEFILE','Vehicle Manager'),(197,'_VEHICLE_MANAGER_LANGUAGE_NOT_USED','Vehicle Manager'),(198,'_VEHICLE_MANAGER_LANGUAGE_AR','Vehicle Manager'),(199,'_VEHICLE_MANAGER_LANGUAGE_PTBR','Vehicle Manager'),(200,'_VEHICLE_MANAGER_LANGUAGE_DK','Vehicle Manager'),(201,'_VEHICLE_MANAGER_LANGUAGE_DUT','Vehicle Manager'),(202,'_VEHICLE_MANAGER_LANGUAGE_ENG','Vehicle Manager'),(203,'_VEHICLE_MANAGER_LANGUAGE_FAR','Vehicle Manager'),(204,'_VEHICLE_MANAGER_LANGUAGE_FRE','Vehicle Manager'),(205,'_VEHICLE_MANAGER_LANGUAGE_GER','Vehicle Manager'),(206,'_VEHICLE_MANAGER_LANGUAGE_HUN','Vehicle Manager'),(207,'_VEHICLE_MANAGER_LANGUAGE_ITA','Vehicle Manager'),(208,'_VEHICLE_MANAGER_LANGUAGE_LI','Vehicle Manager'),(209,'_VEHICLE_MANAGER_LANGUAGE_NR','Vehicle Manager'),(210,'_VEHICLE_MANAGER_LANGUAGE_POL','Vehicle Manager'),(211,'_VEHICLE_MANAGER_LANGUAGE_PR','Vehicle Manager'),(212,'_VEHICLE_MANAGER_LANGUAGE_ROM','Vehicle Manager'),(213,'_VEHICLE_MANAGER_LANGUAGE_RUS','Vehicle Manager'),(214,'_VEHICLE_MANAGER_LANGUAGE_SPA','Vehicle Manager'),(215,'_VEHICLE_MANAGER_LANGUAGE_TUR','Vehicle Manager'),(216,'_VEHICLE_MANAGER_NO','Vehicle Manager'),(217,'_VEHICLE_MANAGER_YES','Vehicle Manager'),(218,'_VEHICLE_MANAGER_IS_EDITED','Vehicle Manager'),(219,'_VEHICLE_MANAGER_ERROR_DEL','Vehicle Manager'),(220,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADDVEHICLE_EMAIL','Vehicle Manager'),(221,'_VEHICLE_MANAGER_ADMIN_CONFIG_FRONTEND','Vehicle Manager'),(222,'_VEHICLE_MANAGER_ADMIN_CONFIG_BACKEND','Vehicle Manager'),(223,'_VEHICLE_MANAGER_ADMIN_CONFIG_VEHICLEID_AUTO_INCREMENT','Vehicle Manager'),(224,'_VEHICLE_MANAGER_ADMIN_CONFIG_VEHICLEID_AUTO_INCREMENT_TT_HEAD','Vehicle Manager'),(225,'_VEHICLE_MANAGER_ADMIN_CONFIG_VEHICLEID_AUTO_INCREMENT_TT_BODY','Vehicle Manager'),(226,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD','Vehicle Manager'),(227,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_TT_HEAD','Vehicle Manager'),(228,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_TT_BODY','Vehicle Manager'),(229,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION','Vehicle Manager'),(230,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION_TT_HEAD','Vehicle Manager'),(231,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_DOWNLOAD_LOCATION_TT_BODY','Vehicle Manager'),(232,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW','Vehicle Manager'),(233,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW_TT_HEAD','Vehicle Manager'),(234,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_SHOW_TT_BODY','Vehicle Manager'),(235,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW','Vehicle Manager'),(236,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW_TT_HEAD','Vehicle Manager'),(237,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_SHOW_TT_BODY','Vehicle Manager'),(238,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL','Vehicle Manager'),(239,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(240,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(241,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW','Vehicle Manager'),(242,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW_TT_HEAD','Vehicle Manager'),(243,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTSTATUS_SHOW_TT_BODY','Vehicle Manager'),(244,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL','Vehicle Manager'),(245,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(246,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENTREQUEST_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(247,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_SHOW','Vehicle Manager'),(248,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_SHOW_TT_HEAD','Vehicle Manager'),(249,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_SHOW_TT_BODY','Vehicle Manager'),(250,'_VEHICLE_MANAGER_ADMIN_CONFIG_ITEM_IN_PAGE','Vehicle Manager'),(251,'_VEHICLE_MANAGER_ADMIN_CONFIG_PAGE_SHOW_TT_BODY','Vehicle Manager'),(252,'_VEHICLE_MANAGER_ADMIN_CONFIG_PAGE_SHOW_TT_HEAD','Vehicle Manager'),(253,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTO_SIZE','Vehicle Manager'),(254,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTO_SIZE_TT_HEAD','Vehicle Manager'),(255,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTO_SIZE_TT_BODY','Vehicle Manager'),(256,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE','Vehicle Manager'),(257,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_BODY','Vehicle Manager'),(258,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOMAIN_SIZE_TT_HEAD','Vehicle Manager'),(259,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE','Vehicle Manager'),(260,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_HEAD','Vehicle Manager'),(261,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGALLERY_SIZE_TT_BODY','Vehicle Manager'),(262,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE','Vehicle Manager'),(263,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_HEAD','Vehicle Manager'),(264,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOUPLOAD_SIZE_TT_BODY','Vehicle Manager'),(265,'_VEHICLE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS','Vehicle Manager'),(266,'_VEHICLE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS_TT_HEAD','Vehicle Manager'),(267,'_VEHICLE_MANAGER_ADMIN_CONFIG_PAGE_ITEMS_TT_BODY','Vehicle Manager'),(268,'_VEHICLE_MANAGER_ADMIN_CONFIG_NEWVEHICLE_EMAIL_TT_HEAD','Vehicle Manager'),(269,'_VEHICLE_MANAGER_ADMIN_CONFIG_NEWVEHICLE_EMAIL_TT_BODY','Vehicle Manager'),(270,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL','Vehicle Manager'),(271,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_TT_HEAD','Vehicle Manager'),(272,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_TT_BODY','Vehicle Manager'),(273,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL','Vehicle Manager'),(274,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_TT_HEAD','Vehicle Manager'),(275,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_TT_BODY','Vehicle Manager'),(276,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL','Vehicle Manager'),(277,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_TT_HEAD','Vehicle Manager'),(278,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_TT_BODY','Vehicle Manager'),(279,'_VEHICLE_MANAGER_ADMIN_REQUEST_RENT','Vehicle Manager'),(280,'_VEHICLE_MANAGER_ADMIN_ABOUT','Vehicle Manager'),(281,'_VEHICLE_MANAGER_ADMIN_ABOUT_ABOUT','Vehicle Manager'),(282,'_VEHICLE_MANAGER_ADMIN_ABOUT_RELEASENOTE','Vehicle Manager'),(283,'_VEHICLE_MANAGER_ADMIN_ABOUT_CHANGELOG','Vehicle Manager'),(284,'_VEHICLE_MANAGER__HTML_ABOUT','Vehicle Manager'),(285,'_VEHICLE_MANAGER__HTML_ABOUT_INTRO','Vehicle Manager'),(286,'_VEHICLE_MANAGER_ADMIN_TEXT_WSINFO_TEXT1','Vehicle Manager'),(287,'_VEHICLE_MANAGER_ADMIN_TEXT_WSINFO_TEXT2','Vehicle Manager'),(288,'_VEHICLE_MANAGER_DESC_TITLE','Vehicle Manager'),(289,'_VEHICLE_MANAGER_DESC_RENT','Vehicle Manager'),(290,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_NAME','Vehicle Manager'),(291,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_EMAIL','Vehicle Manager'),(292,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_MAILING','Vehicle Manager'),(293,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_UNTIL','Vehicle Manager'),(294,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_FROM','Vehicle Manager'),(295,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_THANKS','Vehicle Manager'),(296,'_VEHICLE_MANAGER_LABEL_BUYING_REQUEST_THANKS','Vehicle Manager'),(297,'_VEHICLE_MANAGER_LABEL_SUGGESTION_THANKS','Vehicle Manager'),(298,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_EMAIL_OBJECT','Vehicle Manager'),(299,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_EMAIL_TEXT1','Vehicle Manager'),(300,'_VEHICLE_MANAGER_LABEL_RENT_REQUEST_EMAIL_TEXT2','Vehicle Manager'),(301,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_SAVE','Vehicle Manager'),(302,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_RENT','Vehicle Manager'),(303,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_RETURN','Vehicle Manager'),(304,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_ACCEPT','Vehicle Manager'),(305,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_DECLINE','Vehicle Manager'),(306,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_IMPORT','Vehicle Manager'),(307,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_EXPORT','Vehicle Manager'),(308,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_DELETE_REVIEW','Vehicle Manager'),(309,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_EDIT_REVIEW','Vehicle Manager'),(310,'_VEHICLE_MANAGER_DOC_GENERAL_INFO','Vehicle Manager'),(311,'_VEHICLE_MANAGER_DOC_VERSION','Vehicle Manager'),(312,'_VEHICLE_MANAGER_DOC_RELEASE_DATE','Vehicle Manager'),(313,'_VEHICLE_MANAGER_DOC_PROJECTLINK','Vehicle Manager'),(314,'_VEHICLE_MANAGER_DOC_PROJECT_HOST','Vehicle Manager'),(315,'_VEHICLE_MANAGER_DOC_LICENSE','Vehicle Manager'),(316,'_VEHICLE_MANAGER_DOC_WARRANTY','Vehicle Manager'),(317,'_VEHICLE_MANAGER_DOC_DEVELOP','Vehicle Manager'),(318,'_VEHICLE_MANAGER_DOC_HOMEPAGE','Vehicle Manager'),(319,'_VEHICLE_MANAGER_LABEL_EDOCUMENT_UPLOAD_URL','Vehicle Manager'),(320,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL','Vehicle Manager'),(321,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(322,'_VEHICLE_MANAGER_ADMIN_CONFIG_EDOCUMENTS_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(323,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL','Vehicle Manager'),(324,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(325,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRICE_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(326,'_VEHICLE_MANAGER_SHOW_REVIEW_MANAGER','Vehicle Manager'),(327,'_VEHICLE_MANAGER_LABEL_TITLE_VEHICLE','Vehicle Manager'),(328,'_VEHICLE_MANAGER_LABEL_TITLE_COMMENT','Vehicle Manager'),(329,'_VEHICLE_MANAGER_LABEL_REVIEW_KEYGUEST','Vehicle Manager'),(330,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_PRINT','Vehicle Manager'),(331,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_PRINT_SELECT','Vehicle Manager'),(332,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_PRINT_FONT_SIZE','Vehicle Manager'),(333,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_PRINT_FORMAT','Vehicle Manager'),(334,'_VEHICLE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW','Vehicle Manager'),(335,'_VEHICLE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW_TT_BODY','Vehicle Manager'),(336,'_VEHICLE_MANAGER_ADMIN_CONFIG_LICENSE_ALLOW_TT_HEAD','Vehicle Manager'),(337,'_VEHICLE_MANAGER_LICENSE_AGREEMENT_TITLE','Vehicle Manager'),(338,'_VEHICLE_MANAGER_LICENSE_AGREEMENT_ACCEPT','Vehicle Manager'),(339,'_VEHICLE_MANAGER_LABEL_BUTTON_ADD_REVIEW','Vehicle Manager'),(340,'_VEHICLE_MANAGER_LABEL_BUTTON_REVIEW_HIDE','Vehicle Manager'),(341,'_VEHICLE_MANAGER_LABEL_BUTTON_ADD_SUGGESTION','Vehicle Manager'),(342,'_VEHICLE_MANAGER_LABEL_SUGGESTION','Vehicle Manager'),(343,'_VEHICLE_MANAGER_LABEL_SUGGESTION_TITLE','Vehicle Manager'),(344,'_VEHICLE_MANAGER_LABEL_SUGGESTION_COMMENT','Vehicle Manager'),(345,'_VEHICLE_MANAGER_INFOTEXT_JS_SUGGESTION_TITEL','Vehicle Manager'),(346,'_VEHICLE_MANAGER_INFOTEXT_JS_SUGGESTION_COMMENT','Vehicle Manager'),(347,'_VEHICLE_MANAGER_SHOW_SUGGESTION_MANAGER','Vehicle Manager'),(348,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_DELETE_SUGGESTION','Vehicle Manager'),(349,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_VIEW_SUGGESTION','Vehicle Manager'),(350,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW','Vehicle Manager'),(351,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW_TT_HEAD','Vehicle Manager'),(352,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_SHOW_TT_BODY','Vehicle Manager'),(353,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL','Vehicle Manager'),(354,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(355,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYNOW_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(356,'_VEHICLE_MANAGER_ADMIN_ENTIRE_BU','Vehicle Manager'),(357,'_VEHICLE_MANAGER_ADMIN_ENTIRE_RECOVER','Vehicle Manager'),(358,'_VEHICLE_MANAGER_SHOW_IMPEXP_CONF','Vehicle Manager'),(359,'_VEHICLE_MANAGER_LABEL_BUTTON_SUGGEST_HIDE','Vehicle Manager'),(360,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_SHOW','Vehicle Manager'),(361,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_SHOW_TT_HEAD','Vehicle Manager'),(362,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_SHOW_TT_BODY','Vehicle Manager'),(363,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_REGISTRATIONLEVEL','Vehicle Manager'),(364,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(365,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(366,'_VEHICLE_MANAGER_SHOW_IMPORT_WARNING_MESSAG','Vehicle Manager'),(367,'_VEHICLE_MANAGER_SHOW_EXPORT_WARNING_MESSAG','Vehicle Manager'),(368,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND','Vehicle Manager'),(369,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND_TT_HEAD','Vehicle Manager'),(370,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_SEND_TT_BODY','Vehicle Manager'),(371,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL','Vehicle Manager'),(372,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(373,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEW_EMAIL_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(374,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_SEND','Vehicle Manager'),(375,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_SEND_TT_HEAD','Vehicle Manager'),(376,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_SEND_TT_BODY','Vehicle Manager'),(377,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_REGISTRATIONLEVEL','Vehicle Manager'),(378,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(379,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUGGEST_EMAIL_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(380,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND','Vehicle Manager'),(381,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND_TT_HEAD','Vehicle Manager'),(382,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_SEND_TT_BODY','Vehicle Manager'),(383,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL','Vehicle Manager'),(384,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(385,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_EMAIL_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(386,'_VEHICLE_MANAGER_LABEL_TITLE_REVIEW_COMMENT','Vehicle Manager'),(387,'_VEHICLE_MANAGER_ADMIN_CONFIG_PICTURE_IN_CATEGORY','Vehicle Manager'),(388,'_VEHICLE_MANAGER_ADMIN_CONFIG_PICTURE_IN_CATEGORY_TT_HEAD','Vehicle Manager'),(389,'_VEHICLE_MANAGER_ADMIN_CONFIG_PICTURE_IN_CATEGORY_TT_BODY','Vehicle Manager'),(390,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW','Vehicle Manager'),(391,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW_TT_HEAD','Vehicle Manager'),(392,'_VEHICLE_MANAGER_ADMIN_CONFIG_SUBCATEGORY_SHOW_TT_BODY','Vehicle Manager'),(393,'_VEHICLE_MANAGER_MESSAGE_RETURN_VEHICLES','Vehicle Manager'),(394,'_VEHICLE_MANAGER_TOOLBAR_RENT_VEHICLES','Vehicle Manager'),(395,'_VEHICLE_MANAGER_TOOLBAR_RETURN_VEHICLE','Vehicle Manager'),(396,'_VEHICLE_MANAGER_TOOLBAR_ACCEPT_REQUEST','Vehicle Manager'),(397,'_VEHICLE_MANAGER_TOOLBAR_DECLINE_REQUEST','Vehicle Manager'),(398,'_VEHICLE_MANAGER_TOOLBAR_IMPORT','Vehicle Manager'),(399,'_VEHICLE_MANAGER_TOOLBAR_EXPORT','Vehicle Manager'),(400,'_VEHICLE_MANAGER_TOOLBAR_VIEW_SUGGESTION','Vehicle Manager'),(401,'_VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_TITLE','Vehicle Manager'),(402,'_VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_VEHICLEID_CHECK','Vehicle Manager'),(403,'_VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_VEHICLEID','Vehicle Manager'),(404,'_VEHICLE_MANAGER_ADMIN_INFOTEXT_JS_EDIT_CATEGORY','Vehicle Manager'),(405,'_VEHICLE_MANAGER_INFOTEXT_JS_BUY_REQ_NAME','Vehicle Manager'),(406,'_VEHICLE_MANAGER_INFOTEXT_JS_BUY_REQ_EMAIL','Vehicle Manager'),(407,'_VEHICLE_MANAGER_INFOTEXT_JS_BUY_REQ_PHONE','Vehicle Manager'),(408,'_VEHICLE_MANAGER_HEADER_REQUIREMENT_FIELDS','Vehicle Manager'),(409,'_VEHICLE_MANAGER_HEADER_RECOMMENDED_FIELDS','Vehicle Manager'),(410,'_VEHICLE_MANAGER_HEADER_ADDRESS_FIELDS','Vehicle Manager'),(411,'_VEHICLE_MANAGER_HEADER_TECHNICAL_OPTIONS','Vehicle Manager'),(412,'_VEHICLE_MANAGER_HEADER_EXTERIOR_OPTIONS','Vehicle Manager'),(413,'_VEHICLE_MANAGER_HEADER_INTERIOR_OPTIONS','Vehicle Manager'),(414,'_VEHICLE_MANAGER_HEADER_OTHER_OPTIONS','Vehicle Manager'),(415,'_VEHICLE_MANAGER_HEADER_PHOTO_MANAGE','Vehicle Manager'),(416,'_VEHICLE_MANAGER_HEADER_PHOTOGALERY','Vehicle Manager'),(417,'_VEHICLE_MANAGER_HEADER_ADVERTISMENT','Vehicle Manager'),(418,'_VEHICLE_MANAGER_LABEL_BUYING','Vehicle Manager'),(419,'_VEHICLE_MANAGER_ADMIN_SALE_MANAGER','Vehicle Manager'),(420,'_VEHICLE_MANAGER_LABEL_BUTTON_BUY_VEHICLE','Vehicle Manager'),(421,'_VEHICLE_MANAGER_LABEL_BUTTON_HIDDEN_BUYING','Vehicle Manager'),(422,'_VEHICLE_MANAGER_LABEL_BUTTON_SEND_REQUEST','Vehicle Manager'),(423,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND','Vehicle Manager'),(424,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_HEAD','Vehicle Manager'),(425,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_SEND_TT_BODY','Vehicle Manager'),(426,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL','Vehicle Manager'),(427,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(428,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(429,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL','Vehicle Manager'),(430,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_TT_HEAD','Vehicle Manager'),(431,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_EMAIL_TT_BODY','Vehicle Manager'),(432,'_VEHICLE_MANAGER_ADMIN_CONFIG','Vehicle Manager'),(433,'_VEHICLE_MANAGER_ADMIN_REMOVE_MAIN_PHOTO','Vehicle Manager'),(434,'_VEHICLE_MANAGER_ADMIN_NEW_PHOTO','Vehicle Manager'),(435,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW','Vehicle Manager'),(436,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW_TT_HEAD','Vehicle Manager'),(437,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW_TT_BODY','Vehicle Manager'),(438,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW','Vehicle Manager'),(439,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW_TT_HEAD','Vehicle Manager'),(440,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW_TT_BODY','Vehicle Manager'),(441,'_VEHICLE_MANAGER_LABEL_BUTTON_ADD_VEHICLE','Vehicle Manager'),(442,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_SHOW','Vehicle Manager'),(443,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_SHOW_TT_HEAD','Vehicle Manager'),(444,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_SHOW_TT_BODY','Vehicle Manager'),(445,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_REGISTRATIONLEVEL','Vehicle Manager'),(446,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(447,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_BUTTON_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(448,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW','Vehicle Manager'),(449,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_HEAD','Vehicle Manager'),(450,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_SHOW_TT_BODY','Vehicle Manager'),(451,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL','Vehicle Manager'),(452,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(453,'_VEHICLE_MANAGER_ADMIN_CONFIG_PDF_BUTTON_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(454,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW','Vehicle Manager'),(455,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_HEAD','Vehicle Manager'),(456,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_SHOW_TT_BODY','Vehicle Manager'),(457,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL','Vehicle Manager'),(458,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(459,'_VEHICLE_MANAGER_ADMIN_CONFIG_PRINT_BUTTON_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(460,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW','Vehicle Manager'),(461,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_HEAD','Vehicle Manager'),(462,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_SHOW_TT_BODY','Vehicle Manager'),(463,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL','Vehicle Manager'),(464,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(465,'_VEHICLE_MANAGER_ADMIN_CONFIG_MAILTO_BUTTON_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(466,'_VEHICLE_MANAGER_LABEL_CONTACTS','Vehicle Manager'),(467,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW','Vehicle Manager'),(468,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW_TT_HEAD','Vehicle Manager'),(469,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW_TT_BODY','Vehicle Manager'),(470,'_VEHICLE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION','Vehicle Manager'),(471,'_VEHICLE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_BODY','Vehicle Manager'),(472,'_VEHICLE_MANAGER_ADMIN_CONFIG_PHOTOS_DOWNLOAD_LOCATION_TT_HEAD','Vehicle Manager'),(473,'_VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT_FROM','Vehicle Manager'),(474,'_VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT_UNTIL','Vehicle Manager'),(475,'_VEHICLE_MANAGER_LABEL_UNAVAILABLE_FOR_RENT','Vehicle Manager'),(476,'_VEHICLE_MANAGER_LABEL_AVAILABLE_FOR_RENT','Vehicle Manager'),(477,'_VEHICLE_MANAGER_LABEL_ADD_REQUEST_THANKS','Vehicle Manager'),(478,'_VEHICLE_MANAGER_HEADER_LOCATION','Vehicle Manager'),(479,'_VEHICLE_MANAGER_HEADER_MAIN','Vehicle Manager'),(480,'_VEHICLE_MANAGER_OPTION_SELECT','Vehicle Manager'),(481,'_VEHICLE_MANAGER_OPTION_FOR_RENT','Vehicle Manager'),(482,'_VEHICLE_MANAGER_OPTION_FOR_SALE','Vehicle Manager'),(483,'_VEHICLE_MANAGER_OPTION_PRICE_TYPE','Price Type'),(484,'_VEHICLE_MANAGER_OPTION_VEHICLE_TYPE','Vehicle Type'),(485,'_VEHICLE_MANAGER_OPTION_VEHICLE_CONDITION','Condition Status'),(486,'_VEHICLE_MANAGER_OPTION_TRANSMISSION','Transmission'),(487,'_VEHICLE_MANAGER_OPTION_LISTING_STATUS','Listing Status'),(488,'_VEHICLE_MANAGER_OPTION_DRIVE_TYPE','Drive Type'),(489,'_VEHICLE_MANAGER_OPTION_FUEL_TYPE','Fuel Type'),(490,'_VEHICLE_MANAGER_OPTION_NUMBER_OF_SPEEDS','Number of Speeds'),(491,'_VEHICLE_MANAGER_OPTION_NUMBER_OF_CYLINDERS','Number of Cylinders'),(492,'_VEHICLE_MANAGER_OPTION_NUMBER_OF_DOORS','Number of Doors'),(493,'_VEHICLE_MANAGER_LABEL_EDIT','Vehicle Manager'),(494,'_VEHICLE_MANAGER_LABEL_APPROVED','Vehicle Manager'),(495,'_VEHICLE_MANAGER_LABEL_MAKER','Vehicle Manager'),(496,'_VEHICLE_MANAGER_LABEL_SHOW_MY_CARS','Vehicle Manager'),(497,'_VEHICLE_MANAGER_LABEL_ALL','Vehicle Manager'),(498,'_VEHICLE_MANAGER_LABEL_PRICE_FROM','Vehicle Manager'),(499,'_VEHICLE_MANAGER_LABEL_PRICE_TO','Vehicle Manager'),(500,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE_LIST','Vehicle Manager'),(501,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE_GALLERY','Vehicle Manager'),(502,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE_LIST_GALLERY','Vehicle Manager'),(503,'_VEHICLE_MANAGER_LABEL_OWNER','Vehicle Manager'),(504,'_VEHICLE_MANAGER_ADMIN_FULL_XML','Vehicle Manager'),(505,'_VEHICLE_MANAGER_LABEL_ID','Vehicle Manager'),(506,'_VEHICLE_MANAGER_LABEL_ADD_VEHICLE','Vehicle Manager'),(507,'_VEHICLE_MANAGER_LABEL_PUBLISH','Vehicle Manager'),(508,'_VEHICLE_MANAGER_LABEL_UNPUBLISH','Vehicle Manager'),(509,'_VEHICLE_MANAGER_LABEL_DELETE','Vehicle Manager'),(510,'_VEHICLE_MANAGER_LABEL_BUTTON_RETURN_VEHICLE_FROM_RENT','Vehicle Manager'),(511,'_VEHICLE_MANAGER_LABEL_BUTTON_RENT','Vehicle Manager'),(512,'_VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES','Vehicle Manager'),(513,'_VEHICLE_MANAGER_ERROR_ACCESS_PAGE','Vehicle Manager'),(514,'_VEHICLE_MANAGER_CONFIG_RSS_SHOW','Vehicle Manager'),(515,'_VEHICLE_MANAGER_CONFIG_RSS_SHOW_TT_BODY','Vehicle Manager'),(516,'_VEHICLE_MANAGER_CONFIG_RSS_SHOW_TT_HEAD','Vehicle Manager'),(517,'_VEHICLE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL','Vehicle Manager'),(518,'_VEHICLE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(519,'_VEHICLE_MANAGER_CONFIG_RSS_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(520,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD','Vehicle Manager'),(521,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_HEAD','Vehicle Manager'),(522,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_ON_ADD_TT_BODY','Vehicle Manager'),(523,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_REGISTRATIONLEVEL','Vehicle Manager'),(524,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(525,'_VEHICLE_MANAGER_ADMIN_CONFIG_APPROVE_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(526,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE','Vehicle Manager'),(527,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE_TT_HEAD','Vehicle Manager'),(528,'_VEHICLE_MANAGER_CONFIG_VIEW_TYPE_TT_BODY','Vehicle Manager'),(529,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP','Vehicle Manager'),(530,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_HEAD','Vehicle Manager'),(531,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_LOCATION_MAP_TT_BODY','Vehicle Manager'),(532,'_VEHICLE_MANAGER_ADMIN_UPDATE','Vehicle Manager'),(533,'_VEHICLE_MANAGER_ADMIN_UPDATE_TT_HEAD','Vehicle Manager'),(534,'_VEHICLE_MANAGER_ADMIN_UPDATE_TT_BODY','Vehicle Manager'),(535,'_VEHICLE_MANAGER_CONFIG_OWNER_SHOW','Vehicle Manager'),(536,'_VEHICLE_MANAGER_CONFIG_OWNER_SHOW_TT_HEAD','Vehicle Manager'),(537,'_VEHICLE_MANAGER_CONFIG_OWNER_SHOW_TT_BODY','Vehicle Manager'),(538,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_ANSWER','Vehicle Manager'),(539,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_HEAD','Vehicle Manager'),(540,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_TT_BODY','Vehicle Manager'),(541,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_ACCEPTED','Vehicle Manager'),(542,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_ANSWER_DECLINED','Vehicle Manager'),(543,'_VEHICLE_MANAGER_EMAIL_RENT_ANSWER_SUBJECT','Vehicle Manager'),(544,'_VEHICLE_MANAGER_EMAIL_RENT_ANSWER_PREMESSEGE','Vehicle Manager'),(545,'_VEHICLE_MANAGER_EMAIL_RENT_ANSWER_POSTMESSAGE','Vehicle Manager'),(546,'_VEHICLE_MANAGER_NO_PICTURE_BIG','Vehicle Manager'),(547,'_VEHICLE_MANAGER_LABEL_BUTTON_EDIT_VEHICLE','Vehicle Manager'),(548,'_VEHICLE_MANAGER_LABEL_TITLE_ADD_VEHICLE','Vehicle Manager'),(549,'_VEHICLE_MANAGER_LABEL_TITLE_EDIT_VEHICLE','Vehicle Manager'),(550,'_VEHICLE_MANAGER_LABEL_TITLE_MY_VEHICLES','Vehicle Manager'),(551,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW','Vehicle Manager'),(552,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_HEAD','Vehicle Manager'),(553,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_SHOW_TT_BODY','Vehicle Manager'),(554,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL','Vehicle Manager'),(555,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(556,'_VEHICLE_MANAGER_CONFIG_OWNERSLIST_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(557,'_VEHICLE_MANAGER_LABEL_BUTTON_OWNERSLIST','Vehicle Manager'),(558,'_VEHICLE_MANAGER_LABEL_TITLE_OWNERSLIST','Vehicle Manager'),(559,'_VEHICLE_MANAGER_LABEL_OWNERS','Vehicle Manager'),(560,'_VEHICLE_MANAGER_LABEL_NUMBER_VEHICLES','Vehicle Manager'),(561,'_VEHICLE_MANAGER_LABEL_TITLE_USER_VEHICLES','Vehicle Manager'),(562,'_VEHICLE_MANAGER_ERROR_HAVENOT_VEHICLES_RSS','Vehicle Manager'),(563,'_VEHICLE_MANAGER_WARNING_NO_LOGIN','Vehicle Manager'),(564,'_VEHICLE_MANAGER_LABEL_TITLE_RENT_REQUEST','Vehicle Manager'),(565,'_VEHICLE_MANAGER_ERROR_NO_FIND_ID','Vehicle Manager'),(566,'_VEHICLE_MANAGER_ERROR_VEHICLE_NOT_PUBLISHED','Vehicle Manager'),(567,'_VEHICLE_MANAGER_ERROR_VEHICLE_NOT_APPROVED','Vehicle Manager'),(568,'_VEHICLE_MANAGER_ERROR_CATEGORIES','Vehicle Manager'),(569,'_VEHICLE_MANAGER_DELETE_VEHICLES','Vehicle Manager'),(570,'_VEHICLE_MANAGER_ERROR_NOT_SELECTED','Vehicle Manager'),(571,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_FORM','Vehicle Manager'),(572,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_BODY','Vehicle Manager'),(573,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_FORM_TT_HEAD','Vehicle Manager'),(574,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_FORM_DESCTIPTION','Vehicle Manager'),(575,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_ANSWER','Vehicle Manager'),(576,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_HEAD','Vehicle Manager'),(577,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_TT_BODY','Vehicle Manager'),(578,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_FORM','Vehicle Manager'),(579,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_BODY','Vehicle Manager'),(580,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_FORM_TT_HEAD','Vehicle Manager'),(581,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_FORM_DESCTIPTION','Vehicle Manager'),(582,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_ACCEPTED','Vehicle Manager'),(583,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUY_ANSWER_DECLINED','Vehicle Manager'),(584,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD','Vehicle Manager'),(585,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_HEAD','Vehicle Manager'),(586,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_ON_ADD_TT_BODY','Vehicle Manager'),(587,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_REGISTRATIONLEVEL','Vehicle Manager'),(588,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(589,'_VEHICLE_MANAGER_ADMIN_CONFIG_PUBLISH_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(590,'_VEHICLE_MANAGER_LABEL_DATE','Vehicle Manager'),(591,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY','Vehicle Manager'),(592,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_HEAD','Vehicle Manager'),(593,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_TT_BODY','Vehicle Manager'),(594,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS','Vehicle Manager'),(595,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_HEAD','Vehicle Manager'),(596,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_DAYS_TT_BODY','Vehicle Manager'),(597,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL','Vehicle Manager'),(598,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_HEAD','Vehicle Manager'),(599,'_VEHICLE_MANAGER_ADMIN_CONFIG_RENT_BEFORE_END_NOTIFY_EMAIL_TT_BODY','Vehicle Manager'),(600,'_VEHICLE_MANAGER_TOOLBAR_ADMIN_EDIT_RENT','Vehicle Manager'),(601,'_VEHICLE_MANAGER_SHOW_RENT_EDIT','Vehicle Manager'),(602,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW_REGISTRATIONLEVEL','Vehicle Manager'),(603,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(604,'_VEHICLE_MANAGER_ADMIN_CONFIG_CONTACTS_SHOW_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(605,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW_REGISTRATIONLEVEL','Vehicle Manager'),(606,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(607,'_VEHICLE_MANAGER_ADMIN_CONFIG_LOCATION_TAB_SHOW_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(608,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW_REGISTRATIONLEVEL','Vehicle Manager'),(609,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(610,'_VEHICLE_MANAGER_ADMIN_CONFIG_REVIEWS_TAB_SHOW_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(611,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW','Vehicle Manager'),(612,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_HEAD','Vehicle Manager'),(613,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYSTATUS_SHOW_TT_BODY','Vehicle Manager'),(614,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL','Vehicle Manager'),(615,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(616,'_VEHICLE_MANAGER_ADMIN_CONFIG_BUYREQUEST_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(617,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND','Vehicle Manager'),(618,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND_TT_HEAD','Vehicle Manager'),(619,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND_TT_BODY','Vehicle Manager'),(620,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND_REGISTRATIONLEVEL','Vehicle Manager'),(621,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(622,'_VEHICLE_MANAGER_ADMIN_CONFIG_ADD_VECHICLE_EMAIL_SEND_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(623,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_FIELDS_IN_LIST_VIEW','Vehicle Manager'),(624,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_FIELDS_IN_LIST_VIEW_DETAILS1','Vehicle Manager'),(625,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_FIELDS_IN_LIST_VIEW_DETAILS2','Vehicle Manager'),(626,'_VEHICLE_MANAGER_ADMIN_CONFIG_SHOW_FIELDS_IN_LIST_VIEW_DETAILS3','Vehicle Manager'),(627,'_VEHICLE_MANAGER_LABEL_CBMAIN','Vehicle Manager'),(628,'_VEHICLE_MANAGER_LABEL_CBVEHICLES','Vehicle Manager'),(629,'_VEHICLE_MANAGER_LABEL_CBEDIT','Vehicle Manager'),(630,'_VEHICLE_MANAGER_LABEL_CBRENT','Vehicle Manager'),(631,'_VEHICLE_MANAGER_LABEL_CBBUY','Vehicle Manager'),(632,'_VEHICLE_MANAGER_LABEL_CBHISTORY','Vehicle Manager'),(633,'_VEHICLE_MANAGER_LABEL_CBVEHICLES_TO','Vehicle Manager'),(634,'_VEHICLE_MANAGER_LABEL_CBEDIT_TO','Vehicle Manager'),(635,'_VEHICLE_MANAGER_LABEL_CBRENT_TO','Vehicle Manager'),(636,'_VEHICLE_MANAGER_LABEL_CBBUY_TO','Vehicle Manager'),(637,'_VEHICLE_MANAGER_LABEL_CBHISTORY_TO','Vehicle Manager'),(638,'_VEHICLE_MANAGER_LABEL_CBVEHICLES_TT','Vehicle Manager'),(639,'_VEHICLE_MANAGER_LABEL_CBEDIT_TT','Vehicle Manager'),(640,'_VEHICLE_MANAGER_LABEL_CBRENT_TT','Vehicle Manager'),(641,'_VEHICLE_MANAGER_LABEL_CBBUY_TT','Vehicle Manager'),(642,'_VEHICLE_MANAGER_LABEL_CBHISTORY_TT','Vehicle Manager'),(643,'_VEHICLE_MANAGER_LABEL_CBVEHICLES_RL','Vehicle Manager'),(644,'_VEHICLE_MANAGER_LABEL_CBVEHICLES_ML','Vehicle Manager'),(645,'_VEHICLE_MANAGER_LABEL_CBVEHICLES_ML_BODY','Vehicle Manager'),(646,'_VEHICLE_MANAGER_LABEL_CBEDIT_RL','Vehicle Manager'),(647,'_VEHICLE_MANAGER_LABEL_CBEDIT_ML','Vehicle Manager'),(648,'_VEHICLE_MANAGER_LABEL_CBRENT_RL','Vehicle Manager'),(649,'_VEHICLE_MANAGER_LABEL_CBRENT_ML','Vehicle Manager'),(650,'_VEHICLE_MANAGER_LABEL_CBBUY_RL','Vehicle Manager'),(651,'_VEHICLE_MANAGER_LABEL_CBBUY_ML','Vehicle Manager'),(652,'_VEHICLE_MANAGER_LABEL_CBHISTORY_RL','Vehicle Manager'),(653,'_VEHICLE_MANAGER_LABEL_CBHISTORY_ML','Vehicle Manager'),(654,'_VEHICLE_MANAGER_LABEL_CALENDAR_TITLE','Vehicle Manager'),(655,'_VEHICLE_MANAGER_LABEL_CALENDAR_WEEK','Vehicle Manager'),(656,'_VEHICLE_MANAGER_LABEL_CALENDAR_WEEKEND','Vehicle Manager'),(657,'_VEHICLE_MANAGER_LABEL_CALENDAR_MIDWEEK','Vehicle Manager'),(658,'_VEHICLE_MANAGER_LABEL_CALENDAR_YEAR','Vehicle Manager'),(659,'_VEHICLE_MANAGER_LABEL_CALENDAR_MONTH','Vehicle Manager'),(660,'_VEHICLE_MANAGER_LABEL_CALENDAR_CALENDAR','Vehicle Manager'),(661,'_VEHICLE_MANAGER_LABEL_CALENDAR_ADD_PRICE','Vehicle Manager'),(662,'_VEHICLE_MANAGER_LABEL_CALENDAR_SELECT_DELETE','Vehicle Manager'),(663,'_VEHICLE_MANAGER_LABEL_CALENDAR_AVAILABLE','Vehicle Manager'),(664,'_VEHICLE_MANAGER_LABEL_CALENDAR_NOT_AVAILABLE','Vehicle Manager'),(665,'_VEHICLE_MANAGER_LABEL_CALENDAR_NEW_PRICE','Vehicle Manager'),(666,'_VEHICLE_MANAGER_BUTTON_CALENDAR_ADD_NEW_PRICE','Vehicle Manager'),(667,'_VEHICLE_MANAGER_TAB_CALENDAR','Vehicle Manager'),(668,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL','Vehicle Manager'),(669,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_HEAD','Vehicle Manager'),(670,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_REGISTRATIONLEVEL_TT_BODY','Vehicle Manager'),(671,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_SHOW','Vehicle Manager'),(672,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_HEAD','Vehicle Manager'),(673,'_VEHICLE_MANAGER_CONFIG_CALENDARLIST_SHOW_TT_BODY','Vehicle Manager'),(674,'_VEHICLE_MANAGER_CONFIG_CALENDAR_SHOW','Vehicle Manager'),(675,'_VEHICLE_MANAGER_CONFIG_CALENDAR_SHOW_TT_HEAD','Vehicle Manager'),(676,'_VEHICLE_MANAGER_CONFIG_CALENDAR_SHOW_TT_BODY','Vehicle Manager'),(677,'_VEHICLE_MANAGER_ADMIN_CONFIG_PLACEHOLDER','Vehicle Manager'),(678,'_VEHICLE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_BODY','Vehicle Manager'),(679,'_VEHICLE_MANAGER_ADMIN_CONFIG_PLACEHOLDER_TT_HEAD','Vehicle Manager'),(680,'_VEHICLE_MANAGER_ADMIN_FEATURED_MANAGER','Vehicle Manager'),(681,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE','Vehicle Manager'),(682,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY','Vehicle Manager'),(683,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_PUBLISHED','Vehicle Manager'),(684,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_NAME_ALIAS','Vehicle Manager'),(685,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_CATEGORY_ALIAS','Vehicle Manager'),(686,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_FEATURE_MANAGER','Vehicle Manager'),(687,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_IMAGE','Vehicle Manager'),(688,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_REMOVE','Vehicle Manager'),(689,'_VEHICLE_MANAGER_LABEL_FEATURED_MANAGER_RECOMMENDED_IMAGE','Vehicle Manager'),(690,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES','Vehicle Manager'),(691,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_BODY','Vehicle Manager'),(692,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_TT_HEAD','Vehicle Manager'),(693,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE','Vehicle Manager'),(694,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_BODY','Vehicle Manager'),(695,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_IMAGE_TT_HEAD','Vehicle Manager'),(696,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW','Vehicle Manager'),(697,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_BODY','Vehicle Manager'),(698,'_VEHICLE_MANAGER_ADMIN_CONFIG_MANAGER_FEATURE_CATEGORIES_SHOW_TT_HEAD','Vehicle Manager'),(699,'_VEHICLE_MANAGER_ADMIN_CONFIG_CURRENCY','Vehicle Manager'),(700,'_VEHICLE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_BODY','Vehicle Manager'),(701,'_VEHICLE_MANAGER_ADMIN_CONFIG_CURRENCY_TT_HEAD','Vehicle Manager'),(702,'_VEHICLE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW','Vehicle Manager'),(703,'_VEHICLE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_BODY','Vehicle Manager'),(704,'_VEHICLE_MANAGER_ADMIN_CONFIG_SALE_SEPARATOR_SHOW_TT_HEAD','Vehicle Manager'),(705,'_VEHICLE_MANAGER_LABEL_GEOCOOR','Vehicle Manager'),(706,'_VEHICLE_MANAGER_LABEL_LANGUAGE','Vehicle Manager'),(707,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA1_SHOW','Vehicle Manager'),(708,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA2_SHOW','Vehicle Manager'),(709,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA3_SHOW','Vehicle Manager'),(710,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA4_SHOW','Vehicle Manager'),(711,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA5_SHOW','Vehicle Manager'),(712,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA6_SHOW','Vehicle Manager'),(713,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA7_SHOW','Vehicle Manager'),(714,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA8_SHOW','Vehicle Manager'),(715,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA9_SHOW','Vehicle Manager'),(716,'_VEHICLE_MANAGER_ADMIN_CONFIG_EXTRA10_SHOW','Vehicle Manager'),(717,'_VEHICLE_MANAGER_LABEL_EXTRA','Vehicle Manager'),(718,'_VEHICLE_MANAGER_LABEL_EXTRA1','Vehicle Manager'),(719,'_VEHICLE_MANAGER_LABEL_EXTRA2','Vehicle Manager'),(720,'_VEHICLE_MANAGER_LABEL_EXTRA3','Vehicle Manager'),(721,'_VEHICLE_MANAGER_LABEL_EXTRA4','Vehicle Manager'),(722,'_VEHICLE_MANAGER_LABEL_EXTRA5','Vehicle Manager'),(723,'_VEHICLE_MANAGER_LABEL_EXTRA6','Vehicle Manager'),(724,'_VEHICLE_MANAGER_LABEL_EXTRA7','Vehicle Manager'),(725,'_VEHICLE_MANAGER_LABEL_EXTRA8','Vehicle Manager'),(726,'_VEHICLE_MANAGER_LABEL_EXTRA9','Vehicle Manager'),(727,'_VEHICLE_MANAGER_LABEL_EXTRA10','Vehicle Manager'),(728,'_VEHICLE_MANAGER_EXTRA6_SELECTLIST','Dropdown Field'),(729,'_VEHICLE_MANAGER_EXTRA7_SELECTLIST','Dropdown Field'),(730,'_VEHICLE_MANAGER_EXTRA8_SELECTLIST','Dropdown Field'),(731,'_VEHICLE_MANAGER_EXTRA9_SELECTLIST','Dropdown Field'),(732,'_VEHICLE_MANAGER_EXTRA10_SELECTLIST','Dropdown Field'),(733,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_VEHICLE_PAGE_SETTINGS','Vehicle Manager'),(734,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_CATEGORY_PAGE_SETTINGS','Vehicle Manager'),(735,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_EMAIL_AND_NOTIFICATION_SETTINGS','Vehicle Manager'),(736,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_ADMINISTRATOR_SETTINGS','Vehicle Manager'),(737,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_PLUGINS_SETTINGS','Vehicle Manager'),(738,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_VEHICLE_IMAGE_SETTINGS','Vehicle Manager'),(739,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_TABS_MANAGER','Vehicle Manager'),(740,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_SELLER_CONTACT_SETTINGS','Vehicle Manager'),(741,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_FEATURE_LIST_SETTINGS','Vehicle Manager'),(742,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_EXTRA_FIELDS_MANAGER','Vehicle Manager'),(743,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_RENT_REQUEST_OPTIONS','Vehicle Manager'),(744,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_BUY_REQUEST_OPTIONS','Vehicle Manager'),(745,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_EDOCUMENT_OPTIONS','Vehicle Manager'),(746,'_VEHICLE_MANAGER_SETTINGS_HEADER_LABEL_PRICE_OPTIONS','Vehicle Manager'),(747,'_VEHICLE_MANAGER_BUTTON_SHOW_ADDRESS','Vehicle Manager'),(748,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_GENERAL_INFO','Vehicle Manager'),(749,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_SPECIFICATIONS','Vehicle Manager'),(750,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_PHOTOS_AND_DOCUMENETS','Vehicle Manager'),(751,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_ADDITIONAL_INFO','Vehicle Manager'),(752,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_SELLER_CONTACTS','Vehicle Manager'),(753,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_REQUIRED_FIELDS','Vehicle Manager'),(754,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_VEHICLE_DETAILS','Vehicle Manager'),(755,'_VEHICLE_MANAGER_ADD_VEHICLE_TAB_LABEL_ATTACHMENT_DOCUMENTS','Vehicle Manager'),(756,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGAL_SIZE','Vehicle Manager'),(757,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGAL_SIZE_TT_HEAD','Vehicle Manager'),(758,'_VEHICLE_MANAGER_ADMIN_CONFIG_FOTOGAL_SIZE_TT_BODY','Vehicle Manager'),(759,'_VEHICLE_MANAGER_ADMIN_LANGUAGE_MANAGER','Vehicle Manager'),(760,'_VEHICLE_MANAGER_LABEL_LANGUAGE_MANAGER_LANG_TAG','Vehicle Manager'),(761,'_VEHICLE_MANAGER_ADMIN_LANGUAGE_MANAGER_CONST','Vehicle Manager'),(762,'_VEHICLE_MANAGER_ADMIN_LANGUAGE_MANAGER_VALUE_CONST','Vehicle Manager'),(763,'_VEHICLE_MANAGER_ADMIN_LANGUAGE_MANAGER_SYS_TYPE','Vehicle Manager'),(764,'_VEHICLE_MANAGER_ADMIN_ALL_CATEGORIES_LAYOUT','Vehicle Manager'),(765,'_VEHICLE_MANAGER_ADMIN_SINGLE_CATEGORY_LAYOUT','Vehicle Manager'),(766,'_VEHICLE_MANAGER_ADMIN_VEHICLE_PAGE_LAYOUT','Vehicle Manager'),(767,'_VEHICLE_MANAGER_ADMIN_ALL_VECHICLE_LAYOUT','Vehicle Manager'),(768,'_VEHICLE_MANAGER_SETTINGS_COMMON_SETTINGS','Vehicle Manager'),(769,'_VEHICLE_MANAGER_ALLOWED_EXTS','Vehicle Manager'),(770,'_VEHICLE_MANAGER_ALLOWED_EXTS_IMG','Vehicle Manager'),(771,'_VEHICLE_MANAGER_PRICE_FORMAT','Price Format'),(772,'_VEHICLE_MANAGER_DATE_TIME_FORMAT','Vehicle Manager'),(773,'_VEHICLE_MANAGER_DATE_FORMAT','Vehicle Manager'),(774,'_VEHICLE_MANAGER_TIME_FORMAT','Vehicle Manager'),(775,'_VEHICLE_MANAGER_DATE','Vehicle Manager'),(776,'_VEHICLE_MANAGER_TIME','Vehicle Manager'),(777,'_VEHICLE_MANAGER_PRICE_UNIT_SHOW','Vehicle Manager'),(778,'_VEHICLE_MANAGER_PRICE_UNIT_SHOW_AFTER','Vehicle Manager'),(779,'_VEHICLE_MANAGER_PRICE_UNIT_SHOW_BEFORE','Vehicle Manager'),(780,'_VEHICLE_MANAGER_PRICE_FORMAT_INFO','Vehicle Manager'),(781,'_VEHICLE_MANAGER_PRICE_UNIT_SHOW_INFO','Vehicle Manager'),(782,'_VEHICLE_MANAGER_LABEL_OWNER_CUSTOM_EMAIL','Vehicle Manager'),(783,'_VEHICLE_MANAGER_TEXT_MAIN_IMAGE_ABSENT','Vehicle Manager'),(784,'_VEHICLE_MANAGER_TEXT_PHOTOS_TO_REMOVE','Vehicle Manager'),(785,'_VEHICLE_MANAGER_BUTTON_NEW_PICTURES_UPLOAD','Vehicle Manager'),(786,'_VEHICLE_MANAGER_LABEL_ORDER_BY','Vehicle Manager'),(787,'_VEHICLE_MANAGER_TEXT_NO_REVIEWS_FOR_VEHICLE','Vehicle Manager'),(788,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_ADD_VEHICLE','Email Notification'),(789,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_REVIEW','Email Notification'),(790,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_SUGGESTION','Email Notification'),(791,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST','Email Notification'),(792,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_RENT_REQUEST_ANSWER','Email Notification'),(793,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST','Email Notification'),(794,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_BUYING_REQUEST_ANSWER','Email Notification'),(795,'_VEHICLE_MANAGER_EMAIL_NOTIFICATION_RENT_BEFORE_END','Email Notification'),(796,'_VEHICLE_MANAGER_LABEL_SEARCH_LAYOUT','Vehicle Manager'),(797,'_VEHICLE_MANAGER_ADMIN_CONFIG_INFO_SELECT_LAYOUT','Vehicle Manager'),(798,'_VEHICLE_MANAGER_ADMIN_CONFIG_LICENSE_TEXT','License Text'),(799,'_VEHICLE_MANAGER_ADMIN_SUGGESTIONS','Vehicle Manager'),(800,'_VEHICLE_MANAGER_ADMIN_RENT_REQUESTS','Vehicle Manager'),(801,'_VEHICLE_MANAGER_ADMIN_SALE_MANAGER_MENU','Vehicle Manager'),(802,'_VEHICLE_MANAGER_ADMIN_FEATURES_MANAGER_MENU','Vehicle Manager'),(803,'_VEHICLE_MANAGER_ADMIN_IMPORT_EXPORT','Vehicle Manager'),(804,'_VEHICLE_MANAGER_LABEL_LANGUAGE_MENU','Vehicle Manager'),(805,'_VEHICLE_MANAGER_ADMIN_LABEL_SETTINGS','Vehicle Manager'),(806,'_VEHICLE_MANAGER_ADMIN_GROUP','Group'),(807,'_VEHICLE_MANAGER_ADMIN_COUNT_OF_CARS','Count of cars'),(808,'_VEHICLE_MANAGER_ADMIN_COUNT_OF_CARS_HELP','How many cars users can publish from a specific group.'),(809,'_VEHICLE_MANAGER_ADMIN_SHOW_PAYPAL_BUY','Show PayPal buy'),(810,'_VEHICLE_MANAGER_ADMIN_ALLOW_PAYPAL_BUY','Allow PayPal buy'),(811,'_VEHICLE_MANAGER_ADMIN_SHOW_PAYPAL_RENT','Show PayPal rent'),(812,'_VEHICLE_MANAGER_ADMIN_ALLOW_PAYPAL_RENT','Allow PayPal rent'),(813,'_VEHICLE_MANAGER_ADMIN_YOUR_PAY_PAL_EMAIL','Your PayPal email'),(814,'_VEHICLE_MANAGER_ADMIN_SUCCESSFUL_RETURN','Successful return url'),(815,'_VEHICLE_MANAGER_ADMIN_AFTER_SUCCESSFUL_RETURN','After successful payment returns the buyer on your page.'),(816,'_VEHICLE_MANAGER_ADMIN_IMAGE_URL_PAYPAL','Image url'),(817,'_VEHICLE_MANAGER_ADMIN_AFTER_IMAGE_URL_PAYPAL','Add image to PayPal page.'),(818,'_VEHICLE_MANAGER_ADMIN_CANCEL_RETURN_URL','Cancel return url'),(819,'_VEHICLE_MANAGER_ADMIN_AFTER_CANCEL_RETURN_URL','If buyer press cancel in payment page, returns the buyer on your page.'),(820,'_VEHICLE_MANAGER_ADMIN_REAL_OF_TEST','Real(yes) or a test(no) PayPal account'),(821,'_VEHICLE_MANAGER_ADMIN_REAL_OF_TEST_LABLE','If real go to www.paypal.com else go to www.sandbox.paypal.com'),(822,'_VEHICLE_MANAGER_ADMIN_PAYPAL_LABLE','PayPal Options'),(823,'_VEHICLE_MANAGER_ADMIN_NUMBER_OF_PHOTOS','Number of photos'),(824,'_VEHICLE_MANAGER_ADMIN_NUMBER_OF_PHOTOS_HELP','How many photos in gallery users can publish from a specific group.'),(825,'_VEHICLE_MANAGER_TOTAL_PRICE','Total price: '),(826,'_VEHICLE_MANAGER_RENT_CAR_NOW_BY_PAYPAL','Go now to PayPal'),(827,'_VEHICLE_MANAGER_RENT_SPECIAL_PRICE_PER_DAY','Special price per day'),(828,'_VEHICLE_MANAGER_RENT_SPECIAL_PRICE_PER_NIGHT','Special price per night'),(829,'_VEHICLE_MANAGER_RENT_ADD_SPECIAL_PRICE','Add new special price and save'),(830,'_VEHICLE_MANAGER_FROM','From'),(831,'_VEHICLE_MANAGER_TO','To'),(832,'_VEHICLE_MANAGER_RENT_PRICE_PER_DAY','Price per day'),(833,'_VEHICLE_MANAGER_RENT_CALCULATE','Сalculate'),(834,'_VEHICLE_MANAGER_RENT_SPECIAL_PRICE_AND_RENT_TIME','Special price and rent time'),(835,'_VEHICLE_MANAGER_RENT_SPECIAL_PRICE_YES_NO','Special price per day(\"yes\") or per night(\"no\")'),(836,'_VEHICLE_MANAGER_RENT_SPECIAL_PRICE_YES_NO_HELP','if per day calculation all day(example of 2014-02-10 from 2014-02-16 is 7 days) if per night calculation all night (example of 2014-02-10 from 2014-02-16 is 6 night)'),(837,'_VEHICLE_MANAGER_SETTINGS_TAB_LABEL_PRICE','Pay'),(838,'_VEHICLE_MANAGER_LABEL_LANGUAGE_NAME','Language'),(839,'_VEHICLE_MANAGER_LABEL_SELECT_LANGUAGE','Select Language'),(840,'_VEHICLE_MANAGER_LABEL_CLON_CAR','Clone'),(841,'_VEHICLE_MANAGER_ADMIN_ABOUT_ORDERS','Orders'),(842,'_VEHICLE_MANAGER_CANCEL_URL_TEXT','Message for Cancel URL text'),(843,'_VEHICLE_MANAGER_SUCCESSES_URL_TEXT','Message for Successes URL text'),(844,'_VEHICLE_MANAGER_LOCATION_MARKER','/images/marker-1.png,/images/marker-2.png,/images/marker-3.png,/images/marker-4.png'),(845,'_VEHICLE_MANAGER_HEADER_CATEGORY_OPTIONS','Category Options'),(846,'_VEHICLE_MANAGERHEADER_LABEL_EMAIL_NOTIFICATION_OPTIONS','Email Notification Options'),(847,'_VEHICLE_MANAGERHEADER_LABEL_REVIEW_NOTIFICATION_OPTIONS','Review Notification Options'),(848,'_VEHICLE_MANAGERHEADER_LABEL_SUGGESTION_NOTIFICATION_OPTIONS','Suggestion Notification Options');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_const` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_const_languages`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_const_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_const_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_constid` int(11) NOT NULL DEFAULT '0',
  `fk_languagesid` int(11) NOT NULL DEFAULT '0',
  `value_const` varchar(2000) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_constid` (`fk_constid`,`fk_languagesid`),
  KEY `fk_languagesid` (`fk_languagesid`)
) ENGINE=MyISAM AUTO_INCREMENT=15231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_const_languages`
--

LOCK TABLES `ua8y4_vehiclemanager_const_languages` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_const_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_const_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_feature`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_feature` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT '',
  `categories` varchar(250) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `image_link` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_feature`
--

LOCK TABLES `ua8y4_vehiclemanager_feature` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_feature` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_feature` VALUES (13,'Castle at the checkpoint','Safety',1,''),(12,'Halogen headlights','Safety',1,''),(11,'EBD','Safety',1,''),(10,'ESP','Safety',1,''),(9,'ABS','Safety',1,''),(8,'ABD','Safety',1,''),(14,'Immobilizer','Safety',1,''),(15,'Xenon headlights','Safety',1,''),(16,'Airbag','Safety',1,''),(17,'Servotab','Safety',1,''),(18,'Signaling','Safety',1,''),(19,'Central locking','Safety',1,''),(20,'Fog lights','Safety',1,''),(21,'On-board computer','Comfort',1,''),(22,'Oven','Comfort',1,''),(23,'Light sensor','Comfort',1,''),(24,'Climate control','Comfort',1,''),(25,'Leather interior','Comfort',1,''),(26,'Air conditioning','Comfort',1,''),(27,'Cruise control','Comfort',1,''),(28,'Luke','Comfort',1,''),(29,'Multiwheel','Comfort',1,''),(30,'Headlight washer','Comfort',1,''),(31,'Parktronic','Comfort',1,''),(32,'Heated mirrors','Comfort',1,''),(33,'Heated seats','Comfort',1,''),(34,'Rain sensor','Comfort',1,''),(35,'Power steering','Comfort',1,''),(36,'Power windows','Comfort',1,''),(38,'R-camera','Multimedia',1,''),(39,'Acoustics','Multimedia',1,''),(40,'Subwoofer','Multimedia',1,''),(41,'Tape recorder','Multimedia',1,''),(42,'CD','Multimedia',1,''),(43,'DVD','Multimedia',1,''),(44,'MP3','Multimedia',1,''),(45,'GPS','Multimedia',1,''),(46,'Service book','Other',1,''),(47,'Tuning','Other',1,''),(48,'Toning','Other',1,''),(49,'Hitch','Other',1,'');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_feature_vehicles`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_feature_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_feature_vehicles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) NOT NULL DEFAULT '0',
  `fk_featureid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_featureid` (`fk_featureid`),
  KEY `fk_vehicleid` (`fk_vehicleid`,`fk_featureid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_feature_vehicles`
--

LOCK TABLES `ua8y4_vehiclemanager_feature_vehicles` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_feature_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_feature_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_languages`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) DEFAULT NULL,
  `title` varchar(250) DEFAULT '',
  `sef` char(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_languages`
--

LOCK TABLES `ua8y4_vehiclemanager_languages` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_languages` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_languages` VALUES (2,'ar-AA','Arabic',NULL),(3,'pt-BR','Brazilian',NULL),(4,'da-DK','Danish',NULL),(5,'nl-NL','Dutch',NULL),(6,'en-GB','English',NULL),(7,'fa-IR','Farsi',NULL),(8,'fr-FR','France',NULL),(9,'de-DE','German',NULL),(10,'hu-HU','Hungarian',NULL),(11,'it-IT','Italian',NULL),(12,'lt-LT','Lithuanian',NULL),(13,'nb-NO','Norwegian',NULL),(14,'pl-PL','Polish',NULL),(15,'pt-PT','Portuguese',NULL),(16,'ro-RO','Romanian',NULL),(17,'ru-RU','Russian',NULL),(18,'es-ES','Spanish',NULL),(19,'tr-TR','Turkish',NULL);
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_main_categories`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_main_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_main_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table. Field is reserved for future J versions',
  `associate_category` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL COMMENT 'The language code for the category.',
  `params` text NOT NULL,
  `params2` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_main_categories`
--

LOCK TABLES `ua8y4_vehiclemanager_main_categories` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_main_categories` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_main_categories` VALUES (46,0,59,NULL,'Smart','Smart','','','com_vehiclemanager','','',1,0,'0000-00-00 00:00:00',NULL,4,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}'),(47,0,60,NULL,'Sedan','Sedan','','','com_vehiclemanager','','',1,0,'0000-00-00 00:00:00',NULL,3,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}'),(48,0,61,NULL,'Trucks','Trucks','','','com_vehiclemanager','','',1,0,'0000-00-00 00:00:00',NULL,2,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}'),(49,0,62,NULL,'Sport','Sport','','','com_vehiclemanager','','',1,0,'0000-00-00 00:00:00',NULL,1,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}'),(50,46,63,NULL,'Sale','Sale','','','com_vehiclemanager','','',1,0,'0000-00-00 00:00:00',NULL,2,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}'),(51,46,64,NULL,'Rent','Rent','','','com_vehiclemanager','','',0,0,'0000-00-00 00:00:00',NULL,1,1,0,'*','-2','O:8:\"stdClass\":2:{s:14:\"alone_category\";s:0:\"\";s:12:\"view_vehicle\";s:0:\"\";}');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_main_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_mime_types`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_mime_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_mime_types` (
  `mime_ext` text,
  `mime_type` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_mime_types`
--

LOCK TABLES `ua8y4_vehiclemanager_mime_types` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_mime_types` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_mime_types` VALUES ('ez','application/andrew-inset'),('aw','application/applixware'),('atom','application/atom+xml'),('atomcat','application/atomcat+xml'),('atomsvc','application/atomsvc+xml'),('ccxml','application/ccxml+xml'),('cdmia','application/cdmi-capability'),('cdmic','application/cdmi-container'),('cdmid','application/cdmi-domain'),('cdmio','application/cdmi-object'),('cdmiq','application/cdmi-queue'),('cu','application/cu-seeme'),('davmount','application/davmount+xml'),('dbk','application/docbook+xml'),('dssc','application/dssc+der'),('xdssc','application/dssc+xml'),('ecma','application/ecmascript'),('emma','application/emma+xml'),('epub','application/epub+zip'),('exi','application/exi'),('pfr','application/font-tdpfr'),('gml','application/gml+xml'),('gpx','application/gpx+xml'),('gxf','application/gxf'),('stk','application/hyperstudio'),('ink','application/inkml+xml'),('inkml','application/inkml+xml'),('ipfix','application/ipfix'),('jar','application/java-archive'),('ser','application/java-serialized-object'),('class','application/java-vm'),('js','application/javascript'),('json','application/json'),('jsonml','application/jsonml+json'),('lostxml','application/lost+xml'),('hqx','application/mac-binhex40'),('cpt','application/mac-compactpro'),('mads','application/mads+xml'),('mrc','application/marc'),('mrcx','application/marcxml+xml'),('ma','application/mathematica'),('nb','application/mathematica'),('mb','application/mathematica'),('mathml','application/mathml+xml'),('mbox','application/mbox'),('mscml','application/mediaservercontrol+xml'),('metalink','application/metalink+xml'),('meta4','application/metalink4+xml'),('mets','application/mets+xml'),('mods','application/mods+xml'),('m21','application/mp21'),('mp21','application/mp21'),('mp4s','application/mp4'),('doc','application/msword'),('dot','application/msword'),('mxf','application/mxf'),('bin','application/octet-stream'),('dms','application/octet-stream'),('lrf','application/octet-stream'),('mar','application/octet-stream'),('so','application/octet-stream'),('dist','application/octet-stream'),('distz','application/octet-stream'),('pkg','application/octet-stream'),('bpk','application/octet-stream'),('dump','application/octet-stream'),('elc','application/octet-stream'),('deploy','application/octet-stream'),('oda','application/oda'),('opf','application/oebps-package+xml'),('ogx','application/ogg'),('omdoc','application/omdoc+xml'),('onetoc','application/onenote'),('onetoc2','application/onenote'),('onetmp','application/onenote'),('onepkg','application/onenote'),('oxps','application/oxps'),('xer','application/patch-ops-error+xml'),('pdf','application/pdf'),('pgp','application/pgp-encrypted'),('asc','application/pgp-signature'),('sig','application/pgp-signature'),('prf','application/pics-rules'),('p10','application/pkcs10'),('p7m','application/pkcs7-mime'),('p7c','application/pkcs7-mime'),('p7s','application/pkcs7-signature'),('p8','application/pkcs8'),('ac','application/pkix-attr-cert'),('cer','application/pkix-cert'),('crl','application/pkix-crl'),('pkipath','application/pkix-pkipath'),('pki','application/pkixcmp'),('pls','application/pls+xml'),('ai','application/postscript'),('eps','application/postscript'),('ps','application/postscript'),('cww','application/prs.cww'),('pskcxml','application/pskc+xml'),('rdf','application/rdf+xml'),('rif','application/reginfo+xml'),('rnc','application/relax-ng-compact-syntax'),('rl','application/resource-lists+xml'),('rld','application/resource-lists-diff+xml'),('rs','application/rls-services+xml'),('gbr','application/rpki-ghostbusters'),('mft','application/rpki-manifest'),('roa','application/rpki-roa'),('rsd','application/rsd+xml'),('rss','application/rss+xml'),('rtf','application/rtf'),('sbml','application/sbml+xml'),('scq','application/scvp-cv-request'),('scs','application/scvp-cv-response'),('spq','application/scvp-vp-request'),('spp','application/scvp-vp-response'),('sdp','application/sdp'),('setpay','application/set-payment-initiation'),('setreg','application/set-registration-initiation'),('shf','application/shf+xml'),('smi','application/smil+xml'),('smil','application/smil+xml'),('rq','application/sparql-query'),('srx','application/sparql-results+xml'),('gram','application/srgs'),('grxml','application/srgs+xml'),('sru','application/sru+xml'),('ssdl','application/ssdl+xml'),('ssml','application/ssml+xml'),('tei','application/tei+xml'),('teicorpus','application/tei+xml'),('tfi','application/thraud+xml'),('tsd','application/timestamped-data'),('plb','application/vnd.3gpp.pic-bw-large'),('psb','application/vnd.3gpp.pic-bw-small'),('pvb','application/vnd.3gpp.pic-bw-var'),('tcap','application/vnd.3gpp2.tcap'),('pwn','application/vnd.3m.post-it-notes'),('aso','application/vnd.accpac.simply.aso'),('imp','application/vnd.accpac.simply.imp'),('acu','application/vnd.acucobol'),('atc','application/vnd.acucorp'),('acutc','application/vnd.acucorp'),('air','application/vnd.adobe.air-application-installer-package+zip'),('fcdt','application/vnd.adobe.formscentral.fcdt'),('fxp','application/vnd.adobe.fxp'),('fxpl','application/vnd.adobe.fxp'),('xdp','application/vnd.adobe.xdp+xml'),('xfdf','application/vnd.adobe.xfdf'),('ahead','application/vnd.ahead.space'),('azf','application/vnd.airzip.filesecure.azf'),('azs','application/vnd.airzip.filesecure.azs'),('azw','application/vnd.amazon.ebook'),('acc','application/vnd.americandynamics.acc'),('ami','application/vnd.amiga.ami'),('apk','application/vnd.android.package-archive'),('cii','application/vnd.anser-web-certificate-issue-initiation'),('fti','application/vnd.anser-web-funds-transfer-initiation'),('atx','application/vnd.antix.game-component'),('mpkg','application/vnd.apple.installer+xml'),('m3u8','application/vnd.apple.mpegurl'),('swi','application/vnd.aristanetworks.swi'),('iota','application/vnd.astraea-software.iota'),('aep','application/vnd.audiograph'),('mpm','application/vnd.blueice.multipass'),('bmi','application/vnd.bmi'),('rep','application/vnd.businessobjects'),('cdxml','application/vnd.chemdraw+xml'),('mmd','application/vnd.chipnuts.karaoke-mmd'),('cdy','application/vnd.cinderella'),('cla','application/vnd.claymore'),('rp9','application/vnd.cloanto.rp9'),('c4g','application/vnd.clonk.c4group'),('c4d','application/vnd.clonk.c4group'),('c4f','application/vnd.clonk.c4group'),('c4p','application/vnd.clonk.c4group'),('c4u','application/vnd.clonk.c4group'),('c11amc','application/vnd.cluetrust.cartomobile-config'),('c11amz','application/vnd.cluetrust.cartomobile-config-pkg'),('csp','application/vnd.commonspace'),('cdbcmsg','application/vnd.contact.cmsg'),('cmc','application/vnd.cosmocaller'),('clkx','application/vnd.crick.clicker'),('clkk','application/vnd.crick.clicker.keyboard'),('clkp','application/vnd.crick.clicker.palette'),('clkt','application/vnd.crick.clicker.template'),('clkw','application/vnd.crick.clicker.wordbank'),('wbs','application/vnd.criticaltools.wbs+xml'),('pml','application/vnd.ctc-posml'),('ppd','application/vnd.cups-ppd'),('car','application/vnd.curl.car'),('pcurl','application/vnd.curl.pcurl'),('dart','application/vnd.dart'),('rdz','application/vnd.data-vision.rdz'),('uvf','application/vnd.dece.data'),('uvvf','application/vnd.dece.data'),('uvd','application/vnd.dece.data'),('uvvd','application/vnd.dece.data'),('uvt','application/vnd.dece.ttml+xml'),('uvvt','application/vnd.dece.ttml+xml'),('uvx','application/vnd.dece.unspecified'),('uvvx','application/vnd.dece.unspecified'),('uvz','application/vnd.dece.zip'),('uvvz','application/vnd.dece.zip'),('fe_launch','application/vnd.denovo.fcselayout-link'),('dna','application/vnd.dna'),('mlp','application/vnd.dolby.mlp'),('dpg','application/vnd.dpgraph'),('dfac','application/vnd.dreamfactory'),('kpxx','application/vnd.ds-keypoint'),('ait','application/vnd.dvb.ait'),('svc','application/vnd.dvb.service'),('geo','application/vnd.dynageo'),('mag','application/vnd.ecowin.chart'),('nml','application/vnd.enliven'),('esf','application/vnd.epson.esf'),('msf','application/vnd.epson.msf'),('qam','application/vnd.epson.quickanime'),('slt','application/vnd.epson.salt'),('ssf','application/vnd.epson.ssf'),('es3','application/vnd.eszigno3+xml'),('et3','application/vnd.eszigno3+xml'),('ez2','application/vnd.ezpix-album'),('ez3','application/vnd.ezpix-package'),('fdf','application/vnd.fdf'),('mseed','application/vnd.fdsn.mseed'),('seed','application/vnd.fdsn.seed'),('dataless','application/vnd.fdsn.seed'),('gph','application/vnd.flographit'),('ftc','application/vnd.fluxtime.clip'),('fm','application/vnd.framemaker'),('frame','application/vnd.framemaker'),('maker','application/vnd.framemaker'),('book','application/vnd.framemaker'),('fnc','application/vnd.frogans.fnc'),('ltf','application/vnd.frogans.ltf'),('fsc','application/vnd.fsc.weblaunch'),('oas','application/vnd.fujitsu.oasys'),('oa2','application/vnd.fujitsu.oasys2'),('oa3','application/vnd.fujitsu.oasys3'),('fg5','application/vnd.fujitsu.oasysgp'),('bh2','application/vnd.fujitsu.oasysprs'),('ddd','application/vnd.fujixerox.ddd'),('xdw','application/vnd.fujixerox.docuworks'),('xbd','application/vnd.fujixerox.docuworks.binder'),('fzs','application/vnd.fuzzysheet'),('txd','application/vnd.genomatix.tuxedo'),('ggb','application/vnd.geogebra.file'),('ggt','application/vnd.geogebra.tool'),('gex','application/vnd.geometry-explorer'),('gre','application/vnd.geometry-explorer'),('gxt','application/vnd.geonext'),('g2w','application/vnd.geoplan'),('g3w','application/vnd.geospace'),('gmx','application/vnd.gmx'),('kml','application/vnd.google-earth.kml+xml'),('kmz','application/vnd.google-earth.kmz'),('gqf','application/vnd.grafeq'),('gqs','application/vnd.grafeq'),('gac','application/vnd.groove-account'),('ghf','application/vnd.groove-help'),('gim','application/vnd.groove-identity-message'),('grv','application/vnd.groove-injector'),('gtm','application/vnd.groove-tool-message'),('tpl','application/vnd.groove-tool-template'),('vcg','application/vnd.groove-vcard'),('hal','application/vnd.hal+xml'),('zmm','application/vnd.handheld-entertainment+xml'),('hbci','application/vnd.hbci'),('les','application/vnd.hhe.lesson-player'),('hpgl','application/vnd.hp-hpgl'),('hpid','application/vnd.hp-hpid'),('hps','application/vnd.hp-hps'),('jlt','application/vnd.hp-jlyt'),('pcl','application/vnd.hp-pcl'),('pclxl','application/vnd.hp-pclxl'),('sfd','application/vnd.hydrostatix.sof-data'),('mpy','application/vnd.ibm.minipay'),('afp','application/vnd.ibm.modcap'),('listafp','application/vnd.ibm.modcap'),('list3820','application/vnd.ibm.modcap'),('irm','application/vnd.ibm.rights-management'),('sc','application/vnd.ibm.secure-container'),('icc','application/vnd.iccprofile'),('icm','application/vnd.iccprofile'),('igl','application/vnd.igloader'),('ivp','application/vnd.immervision-ivp'),('ivu','application/vnd.immervision-ivu'),('igm','application/vnd.insors.igm'),('xpw','application/vnd.intercon.formnet'),('xpx','application/vnd.intercon.formnet'),('i2g','application/vnd.intergeo'),('qbo','application/vnd.intu.qbo'),('qfx','application/vnd.intu.qfx'),('rcprofile','application/vnd.ipunplugged.rcprofile'),('irp','application/vnd.irepository.package+xml'),('xpr','application/vnd.is-xpr'),('fcs','application/vnd.isac.fcs'),('jam','application/vnd.jam'),('rms','application/vnd.jcp.javame.midlet-rms'),('jisp','application/vnd.jisp'),('joda','application/vnd.joost.joda-archive'),('ktz','application/vnd.kahootz'),('ktr','application/vnd.kahootz'),('karbon','application/vnd.kde.karbon'),('chrt','application/vnd.kde.kchart'),('kfo','application/vnd.kde.kformula'),('flw','application/vnd.kde.kivio'),('kon','application/vnd.kde.kontour'),('kpr','application/vnd.kde.kpresenter'),('kpt','application/vnd.kde.kpresenter'),('ksp','application/vnd.kde.kspread'),('kwd','application/vnd.kde.kword'),('kwt','application/vnd.kde.kword'),('htke','application/vnd.kenameaapp'),('kia','application/vnd.kidspiration'),('kne','application/vnd.kinar'),('knp','application/vnd.kinar'),('skp','application/vnd.koan'),('skd','application/vnd.koan'),('skt','application/vnd.koan'),('skm','application/vnd.koan'),('sse','application/vnd.kodak-descriptor'),('lasxml','application/vnd.las.las+xml'),('lbd','application/vnd.llamagraphics.life-balance.desktop'),('lbe','application/vnd.llamagraphics.life-balance.exchange+xml'),('123','application/vnd.lotus-1-2-3'),('apr','application/vnd.lotus-approach'),('pre','application/vnd.lotus-freelance'),('nsf','application/vnd.lotus-notes'),('org','application/vnd.lotus-organizer'),('scm','application/vnd.lotus-screencam'),('lwp','application/vnd.lotus-wordpro'),('portpkg','application/vnd.macports.portpkg'),('mcd','application/vnd.mcd'),('mc1','application/vnd.medcalcdata'),('cdkey','application/vnd.mediastation.cdkey'),('mwf','application/vnd.mfer'),('mfm','application/vnd.mfmp'),('flo','application/vnd.micrografx.flo'),('igx','application/vnd.micrografx.igx'),('mif','application/vnd.mif'),('daf','application/vnd.mobius.daf'),('dis','application/vnd.mobius.dis'),('mbk','application/vnd.mobius.mbk'),('mqy','application/vnd.mobius.mqy'),('msl','application/vnd.mobius.msl'),('plc','application/vnd.mobius.plc'),('txf','application/vnd.mobius.txf'),('mpn','application/vnd.mophun.application'),('mpc','application/vnd.mophun.certificate'),('xul','application/vnd.mozilla.xul+xml'),('cil','application/vnd.ms-artgalry'),('cab','application/vnd.ms-cab-compressed'),('xls','application/vnd.ms-excel'),('xlm','application/vnd.ms-excel'),('xla','application/vnd.ms-excel'),('xlc','application/vnd.ms-excel'),('xlt','application/vnd.ms-excel'),('xlw','application/vnd.ms-excel'),('xlam','application/vnd.ms-excel.addin.macroenabled.12'),('xlsb','application/vnd.ms-excel.sheet.binary.macroenabled.12'),('xlsm','application/vnd.ms-excel.sheet.macroenabled.12'),('xltm','application/vnd.ms-excel.template.macroenabled.12'),('eot','application/vnd.ms-fontobject'),('chm','application/vnd.ms-htmlhelp'),('ims','application/vnd.ms-ims'),('lrm','application/vnd.ms-lrm'),('thmx','application/vnd.ms-officetheme'),('cat','application/vnd.ms-pki.seccat'),('stl','application/vnd.ms-pki.stl'),('ppt','application/vnd.ms-powerpoint'),('pps','application/vnd.ms-powerpoint'),('pot','application/vnd.ms-powerpoint'),('ppam','application/vnd.ms-powerpoint.addin.macroenabled.12'),('pptm','application/vnd.ms-powerpoint.presentation.macroenabled.12'),('sldm','application/vnd.ms-powerpoint.slide.macroenabled.12'),('ppsm','application/vnd.ms-powerpoint.slideshow.macroenabled.12'),('potm','application/vnd.ms-powerpoint.template.macroenabled.12'),('mpp','application/vnd.ms-project'),('mpt','application/vnd.ms-project'),('docm','application/vnd.ms-word.document.macroenabled.12'),('dotm','application/vnd.ms-word.template.macroenabled.12'),('wps','application/vnd.ms-works'),('wks','application/vnd.ms-works'),('wcm','application/vnd.ms-works'),('wdb','application/vnd.ms-works'),('wpl','application/vnd.ms-wpl'),('xps','application/vnd.ms-xpsdocument'),('mseq','application/vnd.mseq'),('mus','application/vnd.musician'),('msty','application/vnd.muvee.style'),('taglet','application/vnd.mynfc'),('nlu','application/vnd.neurolanguage.nlu'),('ntf','application/vnd.nitf'),('nitf','application/vnd.nitf'),('nnd','application/vnd.noblenet-directory'),('nns','application/vnd.noblenet-sealer'),('nnw','application/vnd.noblenet-web'),('ngdat','application/vnd.nokia.n-gage.data'),('n','application/vnd.nokia.n-gage.symbian.install'),('rpst','application/vnd.nokia.radio-preset'),('rpss','application/vnd.nokia.radio-presets'),('edm','application/vnd.novadigm.edm'),('edx','application/vnd.novadigm.edx'),('ext','application/vnd.novadigm.ext'),('odc','application/vnd.oasis.opendocument.chart'),('otc','application/vnd.oasis.opendocument.chart-template'),('odb','application/vnd.oasis.opendocument.database'),('odf','application/vnd.oasis.opendocument.formula'),('odft','application/vnd.oasis.opendocument.formula-template'),('odg','application/vnd.oasis.opendocument.graphics'),('otg','application/vnd.oasis.opendocument.graphics-template'),('odi','application/vnd.oasis.opendocument.image'),('oti','application/vnd.oasis.opendocument.image-template'),('odp','application/vnd.oasis.opendocument.presentation'),('otp','application/vnd.oasis.opendocument.presentation-template'),('ods','application/vnd.oasis.opendocument.spreadsheet'),('ots','application/vnd.oasis.opendocument.spreadsheet-template'),('odt','application/vnd.oasis.opendocument.text'),('odm','application/vnd.oasis.opendocument.text-master'),('ott','application/vnd.oasis.opendocument.text-template'),('oth','application/vnd.oasis.opendocument.text-web'),('xo','application/vnd.olpc-sugar'),('dd2','application/vnd.oma.dd2+xml'),('oxt','application/vnd.openofficeorg.extension'),('pptx','application/vnd.openxmlformats-officedocument.presentationml.presentation'),('sldx','application/vnd.openxmlformats-officedocument.presentationml.slide'),('ppsx','application/vnd.openxmlformats-officedocument.presentationml.slideshow'),('potx','application/vnd.openxmlformats-officedocument.presentationml.template'),('xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'),('xltx','application/vnd.openxmlformats-officedocument.spreadsheetml.template'),('docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document'),('dotx','application/vnd.openxmlformats-officedocument.wordprocessingml.template'),('mgp','application/vnd.osgeo.mapguide.package'),('dp','application/vnd.osgi.dp'),('esa','application/vnd.osgi.subsystem'),('pdb','application/vnd.palm'),('pqa','application/vnd.palm'),('oprc','application/vnd.palm'),('paw','application/vnd.pawaafile'),('str','application/vnd.pg.format'),('ei6','application/vnd.pg.osasli'),('efif','application/vnd.picsel'),('wg','application/vnd.pmi.widget'),('plf','application/vnd.pocketlearn'),('pbd','application/vnd.powerbuilder6'),('box','application/vnd.previewsystems.box'),('mgz','application/vnd.proteus.magazine'),('qps','application/vnd.publishare-delta-tree'),('ptid','application/vnd.pvi.ptid1'),('qxd','application/vnd.quark.quarkxpress'),('qxt','application/vnd.quark.quarkxpress'),('qwd','application/vnd.quark.quarkxpress'),('qwt','application/vnd.quark.quarkxpress'),('qxl','application/vnd.quark.quarkxpress'),('qxb','application/vnd.quark.quarkxpress'),('bed','application/vnd.realvnc.bed'),('mxl','application/vnd.recordare.musicxml'),('musicxml','application/vnd.recordare.musicxml+xml'),('cryptonote','application/vnd.rig.cryptonote'),('cod','application/vnd.rim.cod'),('rm','application/vnd.rn-realmedia'),('rmvb','application/vnd.rn-realmedia-vbr'),('link66','application/vnd.route66.link66+xml'),('st','application/vnd.sailingtracker.track'),('see','application/vnd.seemail'),('sema','application/vnd.sema'),('semd','application/vnd.semd'),('semf','application/vnd.semf'),('ifm','application/vnd.shana.informed.formdata'),('itp','application/vnd.shana.informed.formtemplate'),('iif','application/vnd.shana.informed.interchange'),('ipk','application/vnd.shana.informed.package'),('twd','application/vnd.simtech-mindmapper'),('twds','application/vnd.simtech-mindmapper'),('mmf','application/vnd.smaf'),('teacher','application/vnd.smart.teacher'),('sdkm','application/vnd.solent.sdkm+xml'),('sdkd','application/vnd.solent.sdkm+xml'),('dxp','application/vnd.spotfire.dxp'),('sfs','application/vnd.spotfire.sfs'),('sdc','application/vnd.stardivision.calc'),('sda','application/vnd.stardivision.draw'),('sdd','application/vnd.stardivision.impress'),('smf','application/vnd.stardivision.math'),('sdw','application/vnd.stardivision.writer'),('vor','application/vnd.stardivision.writer'),('sgl','application/vnd.stardivision.writer-global'),('smzip','application/vnd.stepmania.package'),('sm','application/vnd.stepmania.stepchart'),('sxc','application/vnd.sun.xml.calc'),('stc','application/vnd.sun.xml.calc.template'),('sxd','application/vnd.sun.xml.draw'),('std','application/vnd.sun.xml.draw.template'),('sxi','application/vnd.sun.xml.impress'),('sti','application/vnd.sun.xml.impress.template'),('sxm','application/vnd.sun.xml.math'),('sxw','application/vnd.sun.xml.writer'),('sxg','application/vnd.sun.xml.writer.global'),('stw','application/vnd.sun.xml.writer.template'),('sus','application/vnd.sus-calendar'),('susp','application/vnd.sus-calendar'),('svd','application/vnd.svd'),('sis','application/vnd.symbian.install'),('sisx','application/vnd.symbian.install'),('xsm','application/vnd.syncml+xml'),('bdm','application/vnd.syncml.dm+wbxml'),('xdm','application/vnd.syncml.dm+xml'),('tao','application/vnd.tao.intent-module-archive'),('pcap','application/vnd.tcpdump.pcap'),('cap','application/vnd.tcpdump.pcap'),('dmp','application/vnd.tcpdump.pcap'),('tmo','application/vnd.tmobile-livetv'),('tpt','application/vnd.trid.tpt'),('mxs','application/vnd.triscape.mxs'),('tra','application/vnd.trueapp'),('ufd','application/vnd.ufdl'),('ufdl','application/vnd.ufdl'),('utz','application/vnd.uiq.theme'),('umj','application/vnd.umajin'),('unityweb','application/vnd.unity'),('uoml','application/vnd.uoml+xml'),('vcx','application/vnd.vcx'),('vsd','application/vnd.visio'),('vst','application/vnd.visio'),('vss','application/vnd.visio'),('vsw','application/vnd.visio'),('vis','application/vnd.visionary'),('vsf','application/vnd.vsf'),('wbxml','application/vnd.wap.wbxml'),('wmlc','application/vnd.wap.wmlc'),('wmlsc','application/vnd.wap.wmlscriptc'),('wtb','application/vnd.webturbo'),('nbp','application/vnd.wolfram.player'),('wpd','application/vnd.wordperfect'),('wqd','application/vnd.wqd'),('stf','application/vnd.wt.stf'),('xar','application/vnd.xara'),('xfdl','application/vnd.xfdl'),('hvd','application/vnd.yamaha.hv-dic'),('hvs','application/vnd.yamaha.hv-script'),('hvp','application/vnd.yamaha.hv-voice'),('osf','application/vnd.yamaha.openscoreformat'),('osfpvg','application/vnd.yamaha.openscoreformat.osfpvg+xml'),('saf','application/vnd.yamaha.smaf-audio'),('spf','application/vnd.yamaha.smaf-phrase'),('cmp','application/vnd.yellowriver-custom-menu'),('zir','application/vnd.zul'),('zirz','application/vnd.zul'),('zaz','application/vnd.zzazz.deck+xml'),('vxml','application/voicexml+xml'),('wgt','application/widget'),('hlp','application/winhlp'),('wsdl','application/wsdl+xml'),('wspolicy','application/wspolicy+xml'),('7z','application/x-7z-compressed'),('abw','application/x-abiword'),('ace','application/x-ace-compressed'),('dmg','application/x-apple-diskimage'),('aab','application/x-authorware-bin'),('x32','application/x-authorware-bin'),('u32','application/x-authorware-bin'),('vox','application/x-authorware-bin'),('aam','application/x-authorware-map'),('aas','application/x-authorware-seg'),('bcpio','application/x-bcpio'),('torrent','application/x-bittorrent'),('blb','application/x-blorb'),('blorb','application/x-blorb'),('bz','application/x-bzip'),('bz2','application/x-bzip2'),('boz','application/x-bzip2'),('cbr','application/x-cbr'),('cba','application/x-cbr'),('cbt','application/x-cbr'),('cbz','application/x-cbr'),('cb7','application/x-cbr'),('vcd','application/x-cdlink'),('cfs','application/x-cfs-compressed'),('chat','application/x-chat'),('pgn','application/x-chess-pgn'),('nsc','application/x-conference'),('cpio','application/x-cpio'),('csh','application/x-csh'),('deb','application/x-debian-package'),('udeb','application/x-debian-package'),('dgc','application/x-dgc-compressed'),('dir','application/x-director'),('dcr','application/x-director'),('dxr','application/x-director'),('cst','application/x-director'),('cct','application/x-director'),('cxt','application/x-director'),('w3d','application/x-director'),('fgd','application/x-director'),('swa','application/x-director'),('wad','application/x-doom'),('ncx','application/x-dtbncx+xml'),('dtb','application/x-dtbook+xml'),('res','application/x-dtbresource+xml'),('dvi','application/x-dvi'),('evy','application/x-envoy'),('eva','application/x-eva'),('bdf','application/x-font-bdf'),('gsf','application/x-font-ghostscript'),('psf','application/x-font-linux-psf'),('otf','application/x-font-otf'),('pcf','application/x-font-pcf'),('snf','application/x-font-snf'),('ttf','application/x-font-ttf'),('ttc','application/x-font-ttf'),('pfa','application/x-font-type1'),('pfb','application/x-font-type1'),('pfm','application/x-font-type1'),('afm','application/x-font-type1'),('woff','application/x-font-woff'),('arc','application/x-freearc'),('spl','application/x-futuresplash'),('gca','application/x-gca-compressed'),('ulx','application/x-glulx'),('gnumeric','application/x-gnumeric'),('gramps','application/x-gramps-xml'),('gtar','application/x-gtar'),('hdf','application/x-hdf'),('install','application/x-install-instructions'),('iso','application/x-iso9660-image'),('jnlp','application/x-java-jnlp-file'),('latex','application/x-latex'),('lzh','application/x-lzh-compressed'),('lha','application/x-lzh-compressed'),('mie','application/x-mie'),('prc','application/x-mobipocket-ebook'),('mobi','application/x-mobipocket-ebook'),('application','application/x-ms-application'),('lnk','application/x-ms-shortcut'),('wmd','application/x-ms-wmd'),('wmz','application/x-msmetafile'),('xbap','application/x-ms-xbap'),('mdb','application/x-msaccess'),('obd','application/x-msbinder'),('crd','application/x-mscardfile'),('clp','application/x-msclip'),('exe','application/x-msdownload'),('dll','application/x-msdownload'),('com','application/x-msdownload'),('bat','application/x-msdownload'),('msi','application/x-msdownload'),('mvb','application/x-msmediaview'),('m13','application/x-msmediaview'),('m14','application/x-msmediaview'),('wmf','application/x-msmetafile'),('emf','application/x-msmetafile'),('emz','application/x-msmetafile'),('mny','application/x-msmoney'),('pub','application/x-mspublisher'),('scd','application/x-msschedule'),('trm','application/x-msterminal'),('wri','application/x-mswrite'),('nc','application/x-netcdf'),('cdf','application/x-netcdf'),('nzb','application/x-nzb'),('p12','application/x-pkcs12'),('pfx','application/x-pkcs12'),('p7b','application/x-pkcs7-certificates'),('spc','application/x-pkcs7-certificates'),('p7r','application/x-pkcs7-certreqresp'),('rar','application/x-rar-compressed'),('ris','application/x-research-info-systems'),('sh','application/x-sh'),('shar','application/x-shar'),('swf','application/x-shockwave-flash'),('xap','application/x-silverlight-app'),('sql','application/x-sql'),('sit','application/x-stuffit'),('sitx','application/x-stuffitx'),('srt','application/x-subrip'),('sv4cpio','application/x-sv4cpio'),('sv4crc','application/x-sv4crc'),('t3','application/x-t3vm-image'),('gam','application/x-tads'),('tar','application/x-tar'),('tcl','application/x-tcl'),('tex','application/x-tex'),('tfm','application/x-tex-tfm'),('texinfo','application/x-texinfo'),('texi','application/x-texinfo'),('obj','application/x-tgif'),('ustar','application/x-ustar'),('src','application/x-wais-source'),('der','application/x-x509-ca-cert'),('crt','application/x-x509-ca-cert'),('fig','application/x-xfig'),('xlf','application/x-xliff+xml'),('xpi','application/x-xpinstall'),('xz','application/x-xz'),('z1','application/x-zmachine'),('z2','application/x-zmachine'),('z3','application/x-zmachine'),('z4','application/x-zmachine'),('z5','application/x-zmachine'),('z6','application/x-zmachine'),('z7','application/x-zmachine'),('z8','application/x-zmachine'),('xaml','application/xaml+xml'),('xdf','application/xcap-diff+xml'),('xenc','application/xenc+xml'),('xhtml','application/xhtml+xml'),('xht','application/xhtml+xml'),('xml','application/xml'),('xsl','application/xml'),('dtd','application/xml-dtd'),('xop','application/xop+xml'),('xpl','application/xproc+xml'),('xslt','application/xslt+xml'),('xspf','application/xspf+xml'),('mxml','application/xv+xml'),('xhvml','application/xv+xml'),('xvml','application/xv+xml'),('xvm','application/xv+xml'),('yang','application/yang'),('yin','application/yin+xml'),('zip','application/x-zip'),('zip','application/zip'),('adp','audio/adpcm'),('au','audio/basic'),('snd','audio/basic'),('mid','audio/midi'),('midi','audio/midi'),('kar','audio/midi'),('rmi','audio/midi'),('mp4a','audio/mp4'),('mpga','audio/mpeg'),('mp2','audio/mpeg'),('mp2a','audio/mpeg'),('mp3','audio/mpeg'),('m2a','audio/mpeg'),('m3a','audio/mpeg'),('oga','audio/ogg'),('ogg','audio/ogg'),('spx','audio/ogg'),('s3m','audio/s3m'),('sil','audio/silk'),('uva','audio/vnd.dece.audio'),('uvva','audio/vnd.dece.audio'),('eol','audio/vnd.digital-winds'),('dra','audio/vnd.dra'),('dts','audio/vnd.dts'),('dtshd','audio/vnd.dts.hd'),('lvp','audio/vnd.lucent.voice'),('pya','audio/vnd.ms-playready.media.pya'),('ecelp4800','audio/vnd.nuera.ecelp4800'),('ecelp7470','audio/vnd.nuera.ecelp7470'),('ecelp9600','audio/vnd.nuera.ecelp9600'),('rip','audio/vnd.rip'),('weba','audio/webm'),('aac','audio/x-aac'),('aif','audio/x-aiff'),('aiff','audio/x-aiff'),('aifc','audio/x-aiff'),('caf','audio/x-caf'),('flac','audio/x-flac'),('mka','audio/x-matroska'),('m3u','audio/x-mpegurl'),('wax','audio/x-ms-wax'),('wma','audio/x-ms-wma'),('ram','audio/x-pn-realaudio'),('ra','audio/x-pn-realaudio'),('rmp','audio/x-pn-realaudio-plugin'),('wav','audio/x-wav'),('xm','audio/xm'),('cdx','chemical/x-cdx'),('cif','chemical/x-cif'),('cmdf','chemical/x-cmdf'),('cml','chemical/x-cml'),('csml','chemical/x-csml'),('xyz','chemical/x-xyz'),('bmp','image/bmp'),('cgm','image/cgm'),('g3','image/g3fax'),('gif','image/gif'),('ief','image/ief'),('jpeg','image/jpeg'),('jpg','image/jpeg'),('jpe','image/jpeg'),('ktx','image/ktx'),('png','image/png'),('btif','image/prs.btif'),('sgi','image/sgi'),('svg','image/svg+xml'),('svgz','image/svg+xml'),('tiff','image/tiff'),('tif','image/tiff'),('psd','image/vnd.adobe.photoshop'),('uvi','image/vnd.dece.graphic'),('uvvi','image/vnd.dece.graphic'),('uvg','image/vnd.dece.graphic'),('uvvg','image/vnd.dece.graphic'),('sub','text/vnd.dvb.subtitle'),('djvu','image/vnd.djvu'),('djv','image/vnd.djvu'),('dwg','image/vnd.dwg'),('dxf','image/vnd.dxf'),('fbs','image/vnd.fastbidsheet'),('fpx','image/vnd.fpx'),('fst','image/vnd.fst'),('mmr','image/vnd.fujixerox.edmics-mmr'),('rlc','image/vnd.fujixerox.edmics-rlc'),('mdi','image/vnd.ms-modi'),('wdp','image/vnd.ms-photo'),('npx','image/vnd.net-fpx'),('wbmp','image/vnd.wap.wbmp'),('xif','image/vnd.xiff'),('webp','image/webp'),('3ds','image/x-3ds'),('ras','image/x-cmu-raster'),('cmx','image/x-cmx'),('fh','image/x-freehand'),('fhc','image/x-freehand'),('fh4','image/x-freehand'),('fh5','image/x-freehand'),('fh7','image/x-freehand'),('ico','image/x-icon'),('sid','image/x-mrsid-image'),('pcx','image/x-pcx'),('pic','image/x-pict'),('pct','image/x-pict'),('pnm','image/x-portable-anymap'),('pbm','image/x-portable-bitmap'),('pgm','image/x-portable-graymap'),('ppm','image/x-portable-pixmap'),('rgb','image/x-rgb'),('tga','image/x-tga'),('xbm','image/x-xbitmap'),('xpm','image/x-xpixmap'),('xwd','image/x-xwindowdump'),('eml','message/rfc822'),('mime','message/rfc822'),('igs','model/iges'),('iges','model/iges'),('msh','model/mesh'),('mesh','model/mesh'),('silo','model/mesh'),('dae','model/vnd.collada+xml'),('dwf','model/vnd.dwf'),('gdl','model/vnd.gdl'),('gtw','model/vnd.gtw'),('mts','model/vnd.mts'),('vtu','model/vnd.vtu'),('wrl','model/vrml'),('vrml','model/vrml'),('x3db','model/x3d+binary'),('x3dbz','model/x3d+binary'),('x3dv','model/x3d+vrml'),('x3dvz','model/x3d+vrml'),('x3d','model/x3d+xml'),('x3dz','model/x3d+xml'),('appcache','text/cache-manifest'),('ics','text/calendar'),('ifb','text/calendar'),('css','text/css'),('csv','text/csv'),('html','text/html'),('htm','text/html'),('n3','text/n3'),('txt','text/plain'),('text','text/plain'),('conf','text/plain'),('def','text/plain'),('list','text/plain'),('log','text/plain'),('in','text/plain'),('dsc','text/prs.lines.tag'),('rtx','text/richtext'),('sgml','text/sgml'),('sgm','text/sgml'),('tsv','text/tab-separated-values'),('t','text/troff'),('tr','text/troff'),('roff','text/troff'),('man','text/troff'),('me','text/troff'),('ms','text/troff'),('ttl','text/turtle'),('uri','text/uri-list'),('uris','text/uri-list'),('urls','text/uri-list'),('vcard','text/vcard'),('curl','text/vnd.curl'),('dcurl','text/vnd.curl.dcurl'),('scurl','text/vnd.curl.scurl'),('mcurl','text/vnd.curl.mcurl'),('fly','text/vnd.fly'),('flx','text/vnd.fmi.flexstor'),('gv','text/vnd.graphviz'),('3dml','text/vnd.in3d.3dml'),('spot','text/vnd.in3d.spot'),('jad','text/vnd.sun.j2me.app-descriptor'),('wml','text/vnd.wap.wml'),('wmls','text/vnd.wap.wmlscript'),('s','text/x-asm'),('asm','text/x-asm'),('c','text/x-c'),('cc','text/x-c'),('cxx','text/x-c'),('cpp','text/x-c'),('h','text/x-c'),('hh','text/x-c'),('dic','text/x-c'),('f','text/x-fortran'),('for','text/x-fortran'),('f77','text/x-fortran'),('f90','text/x-fortran'),('java','text/x-java-source'),('opml','text/x-opml'),('p','text/x-pascal'),('pas','text/x-pascal'),('nfo','text/x-nfo'),('etx','text/x-setext'),('sfv','text/x-sfv'),('uu','text/x-uuencode'),('vcs','text/x-vcalendar'),('vcf','text/x-vcard'),('3gp','video/3gpp'),('3g2','video/3gpp2'),('h261','video/h261'),('h263','video/h263'),('h264','video/h264'),('jpgv','video/jpeg'),('jpm','video/jpm'),('jpgm','video/jpm'),('mj2','video/mj2'),('mjp2','video/mj2'),('mp4','video/mp4'),('mp4v','video/mp4'),('mpg4','video/mp4'),('mpeg','video/mpeg'),('mpg','video/mpeg'),('mpe','video/mpeg'),('m1v','video/mpeg'),('m2v','video/mpeg'),('ogv','video/ogg'),('qt','video/quicktime'),('mov','video/quicktime'),('uvh','video/vnd.dece.hd'),('uvvh','video/vnd.dece.hd'),('uvm','video/vnd.dece.mobile'),('uvvm','video/vnd.dece.mobile'),('uvp','video/vnd.dece.pd'),('uvvp','video/vnd.dece.pd'),('uvs','video/vnd.dece.sd'),('uvvs','video/vnd.dece.sd'),('uvv','video/vnd.dece.video'),('uvvv','video/vnd.dece.video'),('dvb','video/vnd.dvb.file'),('fvt','video/vnd.fvt'),('mxu','video/vnd.mpegurl'),('m4u','video/vnd.mpegurl'),('pyv','video/vnd.ms-playready.media.pyv'),('uvu','video/vnd.uvvu.mp4'),('uvvu','video/vnd.uvvu.mp4'),('viv','video/vnd.vivo'),('webm','video/webm'),('f4v','video/x-f4v'),('fli','video/x-fli'),('flv','video/x-flv'),('m4v','video/x-m4v'),('mkv','video/x-matroska'),('mk3d','video/x-matroska'),('mks','video/x-matroska'),('mng','video/x-mng'),('asf','video/x-ms-asf'),('asx','video/x-ms-asf'),('vob','video/x-ms-vob'),('wm','video/x-ms-wm'),('wmv','video/x-ms-wmv'),('wmx','video/x-ms-wmx'),('wvx','video/x-ms-wvx'),('avi','video/x-msvideo'),('movie','video/x-sgi-movie'),('smv','video/x-smv'),('ice','x-conference/x-cooltalk');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_mime_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_orders`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `data` datetime DEFAULT NULL,
  `fk_vehicle_id` int(11) DEFAULT NULL,
  `txn_type` varchar(255) NOT NULL DEFAULT '',
  `txn_id` varchar(255) NOT NULL DEFAULT '',
  `payer_id` varchar(255) NOT NULL DEFAULT '',
  `payer_status` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_orders`
--

LOCK TABLES `ua8y4_vehiclemanager_orders` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_photos`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_photos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) DEFAULT NULL,
  `thumbnail_img` varchar(250) DEFAULT '',
  `main_img` varchar(250) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fk_vehicleid` (`fk_vehicleid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_photos`
--

LOCK TABLES `ua8y4_vehiclemanager_photos` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_photos` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_photos` VALUES (2,2,'','2FCA1B64-6BF8-C70F-F364-E0D65CA40D9E_Mazda-6.jpg'),(3,2,'','F8777788-B35A-37EC-FB3B-78B03ACB1CB6_Mazda-6.jpg'),(4,3,'','F3B5FCFB-C403-D30F-8E52-5912C6E92EB3_BMW.jpg'),(5,3,'','2CEDF0CA-9704-A82B-0A2F-13A6AFBF9A73_BMW.jpg'),(6,4,'','3D582621-04AB-9005-3E6E-DD346BEFF068_Lamborghini.jpg'),(7,4,'','9D9C7493-AC57-627A-7D0F-846F9EAEC048_Lamborghini.jpg'),(8,5,'','9A59987B-5411-6846-7FA4-2992C7E109C4_mercedes-benz-car1.jpg'),(9,5,'','6F64E89C-5982-CDF5-C7C8-C833E996AC64_mercedes-benz-car1.jpg'),(10,6,'','A2D692F9-FF5D-4F4A-3813-C727BF001C4E_audi_a3.jpg'),(11,6,'','A73E905D-E149-27AC-F215-E3B5EBB53B42_audi_a3.jpg'),(12,7,'','DB858AC6-3770-9597-1638-34D9FC09C4DC_VW R50.jpg'),(13,7,'','9CDAEBE8-065C-003E-5B14-CF16000093FF_VW R50.jpg'),(14,8,'','93E7308A-21A1-B336-565B-0567113D93E9_Bentley.jpg'),(15,8,'','73DA0379-5449-A4B9-8220-134205B0FD23_Bentley.jpg'),(16,9,'','C3D51FED-88FC-F6AA-9D6C-BED080DD5535_Mercedes.jpg'),(17,9,'','A93405FE-1E72-0DDD-3C88-24FD0260A2A7_Mercedes.jpg'),(18,10,'','B250D8C9-F6A4-5A3B-FBF8-B087C7E80E30_Mercedes1.jpg'),(19,10,'','A71AFAD4-67A3-6F16-6643-811F7157262A_Mercedes1.jpg');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_rent`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_rent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `rent_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rent_until` datetime DEFAULT NULL,
  `rent_return` datetime DEFAULT NULL,
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mailing` text,
  PRIMARY KEY (`id`),
  KEY `fk_vehicleid` (`fk_vehicleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_rent`
--

LOCK TABLES `ua8y4_vehiclemanager_rent` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_rent_request`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_rent_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_rent_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) NOT NULL DEFAULT '0',
  `fk_userid` int(11) DEFAULT NULL,
  `rent_from` date NOT NULL DEFAULT '0000-00-00',
  `rent_until` date DEFAULT NULL,
  `rent_request` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mailing` text,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_vehicleid` (`fk_vehicleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_rent_request`
--

LOCK TABLES `ua8y4_vehiclemanager_rent_request` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_rent_sal`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_rent_sal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_rent_sal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehiclesid` int(11) DEFAULT NULL,
  `monthW` int(4) NOT NULL DEFAULT '0',
  `yearW` int(4) NOT NULL DEFAULT '0',
  `week` varchar(1250) DEFAULT '',
  `weekend` varchar(1250) DEFAULT '',
  `midweek` varchar(1250) DEFAULT '',
  `price_from` date NOT NULL,
  `price_to` date NOT NULL,
  `special_price` int(11) NOT NULL,
  `comment_price` varchar(1000) NOT NULL,
  `priceunit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehiclesid` (`fk_vehiclesid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_rent_sal`
--

LOCK TABLES `ua8y4_vehiclemanager_rent_sal` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent_sal` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_rent_sal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_review`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_review` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fk_vehicleid` int(11) NOT NULL DEFAULT '0',
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` int(2) DEFAULT '0',
  `title` varchar(250) DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_vehicleid` (`fk_vehicleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_review`
--

LOCK TABLES `ua8y4_vehiclemanager_review` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_suggestion`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_suggestion` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(150) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(250) DEFAULT '',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_suggestion`
--

LOCK TABLES `ua8y4_vehiclemanager_suggestion` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_suggestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_vehicles`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_vehicles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table. Reserved field for future.',
  `vehicleid` varchar(20) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `fk_rentid` int(11) DEFAULT '0',
  `associate_vehicle` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `link` varchar(250) NOT NULL DEFAULT '',
  `listing_type` varchar(45) NOT NULL DEFAULT '',
  `price` varchar(14) NOT NULL DEFAULT '',
  `priceunit` varchar(14) NOT NULL DEFAULT '',
  `vtitle` varchar(200) NOT NULL DEFAULT '',
  `maker` varchar(15) NOT NULL DEFAULT '',
  `vmodel` varchar(100) NOT NULL DEFAULT '',
  `vtype` varchar(20) NOT NULL DEFAULT '',
  `vlocation` varchar(100) NOT NULL DEFAULT '',
  `vlatitude` varchar(20) NOT NULL DEFAULT '',
  `vlongitude` varchar(20) NOT NULL DEFAULT '',
  `map_zoom` varchar(5) NOT NULL DEFAULT '',
  `contacts` varchar(250) DEFAULT '',
  `year` varchar(4) DEFAULT '',
  `vcondition` varchar(4) DEFAULT '',
  `mileage` varchar(20) DEFAULT '',
  `image_link` varchar(200) DEFAULT '',
  `listing_status` varchar(45) DEFAULT '',
  `price_type` varchar(45) DEFAULT '',
  `transmission` varchar(10) DEFAULT '',
  `num_speed` varchar(5) DEFAULT '',
  `interior_color` varchar(45) DEFAULT '',
  `exterior_color` varchar(45) DEFAULT '',
  `doors` varchar(2) DEFAULT '2',
  `engine` varchar(100) DEFAULT '',
  `fuel_type` varchar(20) DEFAULT '',
  `drive_type` varchar(20) DEFAULT 'Fwd',
  `cylinder` varchar(80) DEFAULT '',
  `wheelbase` varchar(20) DEFAULT '',
  `seating` varchar(4) DEFAULT '',
  `city_fuel_mpg` varchar(5) DEFAULT '',
  `highway_fuel_mpg` varchar(5) DEFAULT '',
  `wheeltype` varchar(80) DEFAULT '',
  `rear_axe_type` varchar(80) DEFAULT '',
  `brakes_type` varchar(80) DEFAULT '',
  `exterior_amenities` text,
  `dashboard_options` text,
  `interior_amenities` text,
  `safety_options` text,
  `w_basic` varchar(30) DEFAULT '',
  `w_drivetrain` varchar(30) DEFAULT '',
  `w_corrosion` varchar(30) DEFAULT '',
  `w_roadside_ass` varchar(30) DEFAULT '',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `edok_link` varchar(200) DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `country` varchar(25) DEFAULT '',
  `region` varchar(25) DEFAULT '',
  `city` varchar(25) DEFAULT '',
  `district` varchar(25) DEFAULT '',
  `zipcode` varchar(25) DEFAULT '',
  `owneremail` varchar(50) DEFAULT '',
  `language` char(7) NOT NULL COMMENT 'The language code for the vehicle.',
  `featured_clicks` varchar(100) DEFAULT '',
  `featured_shows` varchar(100) DEFAULT '',
  `extra1` varchar(250) DEFAULT '',
  `extra2` varchar(250) DEFAULT '',
  `extra3` varchar(250) DEFAULT '',
  `extra4` varchar(250) DEFAULT '',
  `extra5` varchar(250) DEFAULT '',
  `extra6` varchar(250) DEFAULT '',
  `extra7` varchar(250) DEFAULT '',
  `extra8` varchar(250) DEFAULT '',
  `extra9` varchar(250) DEFAULT '',
  `extra10` varchar(250) DEFAULT '',
  `video_link` varchar(250) DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_vehicles`
--

LOCK TABLES `ua8y4_vehiclemanager_vehicles` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_vehicles` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_vehicles` VALUES (2,65,'44',0,0,0,'','<p>The car was introduced on September 11, 1996, as a small and low-cost addition to the Ford range. It was based on the Mark IV Ford Fiesta platform, but with a completely different exterior design.[10] The vehicle was manufactured on the existing Fiesta production line in Almussafes, Valencia, thus minimising new model investment costs for Ford. The Chief Program Engineer was Kevin O’Neill. When the Ka was first introduced to the public it provoked mixed reactions, due to its original and striking New Edge design, overseen by Jack Telnack and executed by Claude Lobo.[11] Besides the fresh styling, the Ka, like its sister cars Fiesta and Puma, was lauded in the motoring press for its nimble handling. Under Richard Parry-Jones\'s supervision, the suspension and steering settings allowed for spirited cornering and high levels of grip, making it one of the best handling small cars. At launch, Ka was produced as a single model, with a number of production options including air conditioning, \npower steering, height-adjustable driver’s seat, adjustable position rear seat with head restraints, passenger airbag, central locking and power windows. An anti-lock braking system option was added in January 1997. The main drawback was the Ka\'s 1300 cc OHV four-cylinder Endura-E engine, a design dating back to the 1960s Kent engine used in the Ford Anglia. Although not very modern, it provided enough torque to allow relaxed if not spirited driving.[12] In 2002, the Endura-E was replaced by the overhead cam Duratec engine, with claims of improved fuel efficiency and increased refinement, mostly caused by taller gearing on the non-air conditioned models. For the first three years of production, all models had black plastic bumpers to minimise parking damage to paintwork in city conditions. These bumpers contained a stabiliser to prevent UV degradation which made them unsuitable for painting because the paint would not adhere properly. However, it became clear that many owners wanted body-coloured bumpers, so \nthey were introduced in 1999 using different bumper mouldings (without the stabiliser) which can be identified by a light styling line over the rear bumper. The Ka has proved highly profitable for Ford despite its low selling price, largely due to its low development costs. In 2006, Ford sold 17,000 examples of the Ka model in the United Kingdom.</p>','1','1','32600','USD','2010 FORD Ka 1.2 Titanium','FORD(Europe)','Ka','1','Minden','52.21837711552592','8.94287109375','6','','2010','1','12','','1','1','1','1','','','1','','1','1','1','','','','','','','','','','','','','','','',0,'0000-00-00 00:00:00',1,'2012-11-30 13:54:49',18,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(3,66,'47',0,0,0,'','<p>2006 BMW 3 SERIES 2.0 320I ES SALOON</p>','2','2','29500','USD','2006 BMW 3 SERIES 2.0 320I ES SALOON','BMW','320','8','Ankara','39.91984763319275','32.9150390625','5','','2006','2','126,800','','1','1','1','1','','','4','','1','1','1','','','','','','','','','','','','','','','',0,'0000-00-00 00:00:00',9,'2012-11-30 14:01:36',25,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(4,67,'51',0,0,0,'','<p>2009 Smart fortwo pure</p>','3','1','11590','USD','1998 CITROEN XSARA 1.8I 16V EXCLUSIVE 5DR','CITROEN','Xsara','1','France/Paris 22 rue Monsieur Le Prince - 75006','48.841582280456464','2.3721313197165728','8','','1998','2','125000','','1','1','1','1','red and black','blue','2','','1','1','1','','2','33 mp',' 41 m','','','','    *  Height, Overall (in): 60.7     * Length, Overall (in): 106.1     * Liftover Height (in): - TBD -     * Min Ground Clearance (in): - TBD -     * Tread Width, Front (in): 50.5     * Tread Width, Rear (in): 54.5     * Wheelbase (in): 73.5     * Width, Max w/o mirrors (in): 61.4','','    *  Front Head Room (in): 39.7     * Front Hip Room (in): 45.4     * Front Leg Room (in): 41.2     * Front Shoulder Room (in): 48.0     * Passenger Capacity: 2     * Passenger Volume (ft³): 45.4','','3 Years/36,000 Miles','5 Years/100,000 Miles','6 Years/100,000 Miles','5 Years/100,000 Miles',0,'0000-00-00 00:00:00',8,'2012-11-30 14:03:04',70,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(5,68,'49',0,0,0,'','<p>2009 Lamborghini Gallardo LP560-4 Coupe</p>','4','1','198000','USD','2009 Lamborghini Gallardo LP560-4 Coupe','LAMBORGHINI','Gallardo','3','San Francisco, CA, 94109, USA','37.759858513184625','-122.39959719590843','9','','2009','2','33','','1','1','1','1','','','2','5.2-Liter, 90 Degree V10, VVT 40-Valve, DOHC,','1','1','1','4-Wheel ABS','2','12 mp',' 20 m','All Wheel Drive','','','# Keyless Entry # Power Door Locks # Heated Mirrors # Power Driver Mirror # Leather Seats # Bucket Seats # Power Steering # Adjustable Steering Wheel # Tires - Front Performance # Tires - Rear Performance # Traction Control # Aluminum Wheels # Power Windows # Intermittent Wipers # MP3 Player # Fog Lamps # Power Passenger Mirror # Heated Exterior Driver Mirror # Heated Exterior Passenger Mirror # Variable Speed Intermittent Wipe','','','','3 Years/36,000 Miles','5 Years/100,000 Miles','6 Years/100,000 Miles','5 Years/100,000 Miles',0,'0000-00-00 00:00:00',7,'2012-11-30 14:02:52',22,'',1,1,'','','','','','','*','','','','','','','','','','','','','',0),(6,69,'43',0,0,0,'','<p>2009 AUDI A3</p>','5','2','62500','USD','2009 AUDI A3','AUDI','A3','8','London','51.45332225816797','-0.05676275119185448','8','','2009','2','10','','1','1','1','1','','Red','4','','2','1','1','','','','','','','','','','','','3 Years/36,000 Miles','5 Years/100,000 Miles','6 Years/100,000 Miles','5 Years/100,000 Miles',0,'0000-00-00 00:00:00',6,'2012-11-30 13:53:46',17,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(7,70,'46',0,0,0,'','','6','1','111','USD','Alfa Romeo 155','ALFA ROMEO','155','1','111','','','1','','1900','1','','','1','1','1','1','','','1','','1','1','1','','','','','','','','','','','','','','','',0,'0000-00-00 00:00:00',5,'2012-11-30 13:57:49',13,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(8,71,'48',0,0,0,'','<p>2008 Chevrolet Corvette 2dr Cpe Z06</p>','7','1','66995','USD','2008 Chevrolet Corvette 2dr Cpe Z06','CHEVROLET','Corvette','3','95 South Main Street, Fredericktown, OH, 43019, USA','40.17299720788816','-82.9248046875','4','','2008','1','79 mile','','1','1','1','4','ebony','red','2','7.0L (427 CI) LS7 V8 SFI with dry sump oil system','1','1','4','2.9 m','2','15 L','24 L','Z06 Silver-painted aluminum, 18 x 9.5 (45.7 cm x 24.1 cm) front and 19 x 12 (48.','3.42 ratio, limited slip','4-wheel antilock, 4-wheel disc','Headlamps, dual projector lamps, Xenon, High-Intensity Discharge (HID) low-beam, tungsten-halogen high-beam with automatic exterior lamp control,Fog lamps, front, integral in front fascia,Mirrors, outside heated power-adjustable and driver-side auto-dimming, body- color,Glass, Solar-Ray light-tinted Wipers, front intermittent','Cruise control, electronic with set and resume speed,Keyless Access, with push button start and 2 remote transmitters that enable automatic door unlock and open by touching door switch','Seats, front bucket with perforated leather seating surfaces, Z06 embroidery and contrasting stitching, Head-Up Display, with dot-matrix readouts for street mode, track mode with g-meter, vehicle speed, engine rpm and readings from key gauges including water temperature and oil pressure, Seat adjuster, driver 6-way power,Air conditioning, dual-zone automatic climate control with individual climate settings for driver and right-front passenger a','Traction control, all-speed, Air bags, frontal, driver and right-front passenger with Passenger Sensing System','3 Years/36,000 Miles','5 Years/100,000 Miles','6 Years/100,000 Miles','5 Years/100,000 Miles',0,'0000-00-00 00:00:00',4,'2012-11-30 14:02:29',62,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(9,72,'50',0,0,0,'','<p>2000 Mercedes-Benz S Class S430</p>','8','2','11999','USD','2000 Mercedes-Benz S Class S430','MERCEDES-BENZ','S 430','1','6315 Church St., Riverdale, Ga 30274','33.72982178196422','-84.39697265625','4','','1900','2','145075 mile','','1','1','2','3','black','silver','4','V8, 4.3L','1','1','4','2.5 m','5','10 L','15 L','Alloy wheels','','Automatic Anti-Lock Brakes','Sunroof Keyless Entry Rear Window Defrost. Interval Wipers Power Locks Power Windows Power Mirrors Power Brakes Power Steering Dual Power Seats Heated Seat(s) Lumbar Memory Seat(s) Power Outlet Auto Head Lamps Auto Rearview Mirror Dimmer Steering Wheel Controls Remote Trunk Release Tachometer','Cruise Control Air Conditioning Tilt Steering Wheel AM/FM CD Wood Dash Dual Airbags Trip Odometer','Leather Interior Front Bucket Seats','Even if vehicles equipped with air bags and the Passenger Sensing System, children are safer when properly secured in a rear seat','','','','',0,'0000-00-00 00:00:00',3,'2012-11-30 14:02:59',35,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(10,73,'34',0,0,0,'','','9','1','126350','USD','2007 HONDA CIVIC HATCHBACK 2.0 I-VTEC TYPE R GT 3DR','HONDA','Civic','1','Washington','38.93633916739402','-77.069091796875','7','','2007','2','20000','','1','1','1','1','','','1','','1','1','1','','','','','','','','','','','','','','','',0,'0000-00-00 00:00:00',2,'2012-11-30 13:59:31',5,'',1,1,'','','','','','','*','','','','','','','','Extra1','Extra1','Extra1','Extra1','Extra1','',0),(11,83,'1',0,0,0,NULL,'<p>Toyota Corolla LE</p>','','2','19725','USD','Toyota Corolla LE','TOYOTA','Corona','1','2500 Palladium Drive','45.2949592','-75.93118199999998','14','','2014','2','','4C57F840-7E5C-663B-CE09-1F438D011D98_car1.jpg','1','2','2','5','','','4','','3','1','1','','','','','','','','','','','','60000','100000','','',0,'0000-00-00 00:00:00',10,'2014-12-24 09:08:20',1,'',1,1,'Canada','Ontario','Ottawa','','K2V 1E2','aldopraherda@gmail.com','en-GB','','','','','','','','','','','','','',152);
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_vehiclemanager_version`
--

DROP TABLE IF EXISTS `ua8y4_vehiclemanager_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_vehiclemanager_version` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(11) NOT NULL DEFAULT '0',
  `number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_vehiclemanager_version`
--

LOCK TABLES `ua8y4_vehiclemanager_version` WRITE;
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_version` DISABLE KEYS */;
INSERT INTO `ua8y4_vehiclemanager_version` VALUES (2,'3.3','PRO');
/*!40000 ALTER TABLE `ua8y4_vehiclemanager_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_viewlevels`
--

DROP TABLE IF EXISTS `ua8y4_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_viewlevels`
--

LOCK TABLES `ua8y4_viewlevels` WRITE;
/*!40000 ALTER TABLE `ua8y4_viewlevels` DISABLE KEYS */;
INSERT INTO `ua8y4_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',1,'[6,2,8]'),(3,'Special',2,'[6,3,8]'),(5,'Guest',0,'[9]'),(6,'Super Users',0,'[8]');
/*!40000 ALTER TABLE `ua8y4_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ua8y4_weblinks`
--

DROP TABLE IF EXISTS `ua8y4_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ua8y4_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ua8y4_weblinks`
--

LOCK TABLES `ua8y4_weblinks` WRITE;
/*!40000 ALTER TABLE `ua8y4_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ua8y4_weblinks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-26  4:57:47