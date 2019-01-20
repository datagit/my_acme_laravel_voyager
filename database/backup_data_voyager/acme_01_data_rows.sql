-- MySQL dump 10.13  Distrib 8.0.13, for macos10.14 (x86_64)
--
-- Host: localhost    Database: acme_01
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'locale','text','Locale',0,1,1,1,1,0,NULL,12),(12,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(13,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(14,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(17,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(18,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(21,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(22,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(23,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(24,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(25,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(26,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(27,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(28,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(29,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(30,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(31,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(32,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(33,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(34,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(35,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(36,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(37,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(38,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(39,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(40,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(41,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(42,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(43,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(44,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(45,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(46,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(47,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(48,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(49,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(50,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(51,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(52,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(53,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(54,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(55,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(56,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(57,7,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(58,7,'deleted_at','timestamp','Deleted At',0,0,1,0,0,0,'{}',5),(59,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(60,7,'name','text','Name',1,1,1,1,1,1,'{}',2),(61,7,'order','text','Order',1,1,1,1,1,1,'{}',3),(62,7,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',4),(63,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(90,13,'brief','text','Brief',0,1,1,1,1,1,'{\"default\":\"Default text\"}',2),(92,13,'code','text','Code',0,1,1,1,1,1,'{}',4),(93,13,'color','select_multiple','Color',0,1,1,1,1,1,'{\"default\":\"option1\",\"options\":{\"option1\":\"Option 1 Text\",\"option2\":\"Option 2 Text\"}}',5),(94,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(95,13,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(96,13,'description','text','Description',0,1,1,1,1,1,'{}',8),(97,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(98,13,'name','text','Name',0,1,1,1,1,1,'{}',9),(99,13,'order','text','Order',0,1,1,1,1,1,'{}',10),(100,13,'price','text','Price',0,1,1,1,1,1,'{}',11),(101,13,'size','select_multiple','Size',0,1,1,1,1,1,'{\"default\":\"option1\",\"options\":{\"option1\":\"Option 1 Text\",\"option2\":\"Option 2 Text\"}}',12),(102,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(104,13,'product_belongstomany_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\ProductCategory\",\"table\":\"product_categories\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_category_relations\",\"pivot\":\"1\",\"taggable\":\"on\"}',15);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-20 16:49:08
