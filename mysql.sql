-- MySQL dump 10.13  Distrib 5.7.42-46, for debian-linux-gnu (x86_64)
--
-- Host: pod-216044.pod-216044.svc.cluster.local    Database: wp_atswebsitedev
-- ------------------------------------------------------
-- Server version	5.7.42-46-log

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
/*!50717 SELECT COUNT(*) INTO @rocksdb_has_p_s_session_variables FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'performance_schema' AND TABLE_NAME = 'session_variables' */;
/*!50717 SET @rocksdb_get_is_supported = IF (@rocksdb_has_p_s_session_variables, 'SELECT COUNT(*) INTO @rocksdb_is_supported FROM performance_schema.session_variables WHERE VARIABLE_NAME=\'rocksdb_bulk_load\'', 'SELECT 0') */;
/*!50717 PREPARE s FROM @rocksdb_get_is_supported */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;
/*!50717 SET @rocksdb_enable_bulk_load = IF (@rocksdb_is_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @rocksdb_dummy_bulk_load = 0') */;
/*!50717 PREPARE s FROM @rocksdb_enable_bulk_load */;
/*!50717 EXECUTE s */;
/*!50717 DEALLOCATE PREPARE s */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wpengine.com/','','2023-07-06 23:05:19','2023-07-06 23:05:19','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://atswebsitedev.wpengine.com','yes'),(2,'home','https://atswebsitedev.wpengine.com','yes'),(3,'blogname','Mureed Nazir Site','yes'),(4,'blogdescription','Your SUPER-powered WP Engine Site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','mureed.nazir@ats.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','0','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:3:{i:0;s:27:\"autoupdater/autoupdater.php\";i:1;s:37:\"content-exporter/content-exporter.php\";i:2;s:33:\"genesis-blocks/genesis-blocks.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','ats','yes'),(41,'stylesheet','ats','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','53496','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','0','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','posts','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:0:{}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:1:{s:27:\"autoupdater/autoupdater.php\";a:2:{i:0;s:21:\"AutoUpdater_Installer\";i:1;s:13:\"hookUninstall\";}}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','0','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1704236719','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'initial_db_version','53496','yes'),(100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:13:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(101,'fresh_site','0','yes'),(102,'user_count','4','no'),(103,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(104,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),(105,'cron','a:10:{i:1689764720;a:5:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1689764737;a:1:{s:39:\"WPEngineSecurityAuditor_Scans_scheduler\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1689765395;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1689772765;a:1:{s:48:\"WPEngineSecurityAuditor_Scans_fingerprint_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1689773469;a:1:{s:49:\"WPEngineSecurityAuditor_Scans_fingerprint_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1689807920;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1689808595;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1689808596;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1689980720;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(106,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(118,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(119,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(121,'widget_wpe_powered_by_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(122,'recovery_keys','a:1:{s:22:\"7gyp9t9r7AWiCR20n4p0Fj\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B20qeie7LxzJgbz9ccp0dgNwv9M5AV1\";s:10:\"created_at\";i:1689661843;}}','yes'),(123,'theme_mods_twentytwentythree','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1688684758;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes'),(124,'https_detection_errors','a:0:{}','yes'),(127,'current_theme','ats','yes'),(128,'theme_switched','','yes'),(129,'theme_mods_genesis-block-theme','a:3:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689330595;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}','yes'),(130,'wpe_template','Genesis Blocks Free','yes'),(131,'genesis_blocks_has_content_to_migrate','0','yes'),(132,'can_compress_scripts','0','no'),(133,'recently_activated','a:0:{}','yes'),(134,'wpe_cache_config','a:16:{s:20:\"sanitized_post_types\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:28:\"sanitized_builtin_post_types\";a:2:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";}s:21:\"smarter_cache_enabled\";s:1:\"0\";s:21:\"last_modified_enabled\";s:1:\"0\";s:27:\"wpe_ac_global_last_modified\";s:10:\"1262304000\";s:24:\"post_cache_expires_value\";s:2:\"-1\";s:24:\"page_cache_expires_value\";s:2:\"-1\";s:10:\"namespaces\";a:8:{i:0;s:10:\"oembed/1.0\";i:1;s:19:\"wpe/cache-plugin/v1\";i:2;s:21:\"wpe_sign_on_plugin/v1\";i:3;s:16:\"genesisblocks/v1\";i:4;s:14:\"genesis-blocks\";i:5;s:5:\"wp/v2\";i:6;s:17:\"wp-site-health/v1\";i:7;s:18:\"wp-block-editor/v1\";}s:30:\"oembed/1.0_cache_expires_value\";s:2:\"-1\";s:39:\"wpe/cache-plugin/v1_cache_expires_value\";s:2:\"-1\";s:41:\"wpe_sign_on_plugin/v1_cache_expires_value\";s:2:\"-1\";s:36:\"genesisblocks/v1_cache_expires_value\";s:2:\"-1\";s:34:\"genesis-blocks_cache_expires_value\";s:2:\"-1\";s:25:\"wp/v2_cache_expires_value\";s:2:\"-1\";s:37:\"wp-site-health/v1_cache_expires_value\";s:2:\"-1\";s:38:\"wp-block-editor/v1_cache_expires_value\";s:2:\"-1\";}','yes'),(136,'finished_updating_comment_type','1','yes'),(138,'autoupdater_version','5.17.7','yes'),(139,'autoupdater_worker_token','qVb18pUBEMMUQznHNwzANnqn3O9Fh50o','yes'),(140,'autoupdater_aes_key','lnIFXa0xrPrNm9XI4JPHAverKTJUiisC','yes'),(141,'autoupdater_site_id','1298790','yes'),(142,'autoupdater_ping','1689097682','yes'),(143,'autoupdater_update_themes','0','yes'),(144,'autoupdater_maintenance_started_at','','yes'),(145,'wpe-health-check-site-status-result','{\"good\":16,\"recommended\":3,\"critical\":1}','yes'),(148,'theme_mods_ats','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(150,'recovery_mode_email_last_sent','1689661843','yes'),(159,'category_children','a:0:{}','yes'),(160,'content_export_domain','https://atswebsitestg.wpengine.com/wp-json/content-importer/v1/approve/','yes'),(161,'content_export_approve_endpoint','https://atswebsitestg.wpengine.com/wp-json/content-importer/v1/approve/','yes'),(162,'content_export_decline_endpoint','https://atswebsitestg.wpengine.com/wp-json/content-importer/v1/decline/','yes'),(164,'wp_calendar_block_has_published_posts','1','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(3,6,'_edit_lock','1689681132:2'),(4,7,'_edit_lock','1689663020:3'),(5,9,'_wp_attached_file','2023/07/hd-wallpaper-g0aa3edc27_1920.jpg'),(6,9,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:40:\"2023/07/hd-wallpaper-g0aa3edc27_1920.jpg\";s:8:\"filesize\";i:943576;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g0aa3edc27_1920-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11602;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"hd-wallpaper-g0aa3edc27_1920-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:128235;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g0aa3edc27_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5712;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g0aa3edc27_1920-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:67422;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"hd-wallpaper-g0aa3edc27_1920-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:320807;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g0aa3edc27_1920-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44831;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g0aa3edc27_1920-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76089;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(7,10,'_wp_attached_file','2023/07/hd-wallpaper-gd40ca544f_1920.jpg'),(8,10,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1358;s:4:\"file\";s:40:\"2023/07/hd-wallpaper-gd40ca544f_1920.jpg\";s:8:\"filesize\";i:615441;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gd40ca544f_1920-300x212.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13382;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"hd-wallpaper-gd40ca544f_1920-1024x724.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104447;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gd40ca544f_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5779;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gd40ca544f_1920-768x543.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62164;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"hd-wallpaper-gd40ca544f_1920-1536x1086.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1086;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:218872;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gd40ca544f_1920-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38702;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gd40ca544f_1920-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55093;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(9,11,'_wp_attached_file','2023/07/hd-wallpaper-gc8c904e23_1920.jpg'),(10,11,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1276;s:4:\"file\";s:40:\"2023/07/hd-wallpaper-gc8c904e23_1920.jpg\";s:8:\"filesize\";i:425452;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gc8c904e23_1920-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8140;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"hd-wallpaper-gc8c904e23_1920-1024x681.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:681;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76755;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gc8c904e23_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4575;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gc8c904e23_1920-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:43293;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"hd-wallpaper-gc8c904e23_1920-1536x1021.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1021;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:164772;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gc8c904e23_1920-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27347;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-gc8c904e23_1920-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:54363;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(11,12,'_wp_attached_file','2023/07/hd-wallpaper-g98253e533_1920.jpg'),(12,12,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:40:\"2023/07/hd-wallpaper-g98253e533_1920.jpg\";s:8:\"filesize\";i:962970;s:5:\"sizes\";a:7:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g98253e533_1920-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19480;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"hd-wallpaper-g98253e533_1920-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:214294;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g98253e533_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7918;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g98253e533_1920-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:118291;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:42:\"hd-wallpaper-g98253e533_1920-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:485602;}s:28:\"gb-block-post-grid-landscape\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g98253e533_1920-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72880;}s:25:\"gb-block-post-grid-square\";a:5:{s:4:\"file\";s:40:\"hd-wallpaper-g98253e533_1920-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:112419;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(13,7,'_thumbnail_id','12'),(14,8,'_edit_lock','1689679900:4'),(15,8,'_thumbnail_id','10'),(16,14,'_edit_lock','1689667706:3'),(17,15,'_edit_lock','1689668707:4'),(18,15,'_thumbnail_id','9'),(27,16,'_edit_lock','1689681542:4'),(28,16,'_thumbnail_id','11'),(31,18,'_edit_lock','1689764337:3'),(32,18,'_remote_id','91');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2023-07-06 23:05:19','2023-07-06 23:05:19','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2023-07-06 23:05:19','2023-07-06 23:05:19','',0,'https://atswebsitedev.wpengine.com/?p=1',0,'post','',1),(2,1,'2023-07-06 23:05:19','2023-07-06 23:05:19','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://atswebsitedev.wpengine.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2023-07-06 23:05:19','2023-07-06 23:05:19','',0,'https://atswebsitedev.wpengine.com/?page_id=2',0,'page','',0),(3,1,'2023-07-06 23:05:19','2023-07-06 23:05:19','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://atswebsitedev.wpengine.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2023-07-06 23:05:19','2023-07-06 23:05:19','',0,'https://atswebsitedev.wpengine.com/?page_id=3',0,'page','',0),(5,2,'2023-07-14 10:04:28','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-07-14 10:04:28','0000-00-00 00:00:00','',0,'https://atswebsitedev.wpengine.com/?p=5',0,'post','',0),(6,2,'2023-07-14 10:32:16','2023-07-14 10:32:16','','Home Page - Prototype','','publish','closed','closed','','home-page-prototype','','','2023-07-14 10:32:16','2023-07-14 10:32:16','',0,'https://atswebsitedev.wpengine.com/?page_id=6',0,'page','',0),(7,3,'2023-07-18 06:50:24','2023-07-18 06:50:24','<!-- wp:paragraph -->\n<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five</p>\n<!-- /wp:paragraph -->','Test post 1','','pending','open','open','','test-post-1','','','2023-07-18 06:50:24','2023-07-18 06:50:24','',0,'https://atswebsitedev.wpengine.com/?p=7',0,'post','',0),(8,3,'2023-07-18 06:51:37','2023-07-18 06:51:37','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making</p>\n<!-- /wp:paragraph -->','Test Post 2','','pending','open','open','','test-post-2','','','2023-07-18 11:25:53','2023-07-18 11:25:53','',0,'https://atswebsitedev.wpengine.com/?p=8',0,'post','',0),(9,3,'2023-07-18 06:50:02','2023-07-18 06:50:02','','hd-wallpaper-g0aa3edc27_1920','','inherit','open','closed','','hd-wallpaper-g0aa3edc27_1920','','','2023-07-18 06:50:02','2023-07-18 06:50:02','',7,'https://atswebsitedev.wpengine.com/wp-content/uploads/2023/07/hd-wallpaper-g0aa3edc27_1920.jpg',0,'attachment','image/jpeg',0),(10,3,'2023-07-18 06:50:05','2023-07-18 06:50:05','','hd-wallpaper-gd40ca544f_1920','','inherit','open','closed','','hd-wallpaper-gd40ca544f_1920','','','2023-07-18 06:50:05','2023-07-18 06:50:05','',7,'https://atswebsitedev.wpengine.com/wp-content/uploads/2023/07/hd-wallpaper-gd40ca544f_1920.jpg',0,'attachment','image/jpeg',0),(11,3,'2023-07-18 06:50:07','2023-07-18 06:50:07','','hd-wallpaper-gc8c904e23_1920','','inherit','open','closed','','hd-wallpaper-gc8c904e23_1920','','','2023-07-18 06:50:07','2023-07-18 06:50:07','',7,'https://atswebsitedev.wpengine.com/wp-content/uploads/2023/07/hd-wallpaper-gc8c904e23_1920.jpg',0,'attachment','image/jpeg',0),(12,3,'2023-07-18 06:50:09','2023-07-18 06:50:09','','hd-wallpaper-g98253e533_1920','','inherit','open','closed','','hd-wallpaper-g98253e533_1920','','','2023-07-18 06:50:09','2023-07-18 06:50:09','',7,'https://atswebsitedev.wpengine.com/wp-content/uploads/2023/07/hd-wallpaper-g98253e533_1920.jpg',0,'attachment','image/jpeg',0),(13,3,'2023-07-18 06:50:20','2023-07-18 06:50:20','<!-- wp:paragraph -->\n<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five</p>\n<!-- /wp:paragraph -->','Test post 1','','pending','closed','closed','','7-autosave-v1','','','2023-07-18 06:50:20','2023-07-18 06:50:20','',7,'https://atswebsitedev.wpengine.com/?p=13',0,'revision','',0),(14,3,'2023-07-18 08:10:44','0000-00-00 00:00:00','','Auto Draft','','pending','open','open','','','','','2023-07-18 08:10:44','0000-00-00 00:00:00','',0,'https://atswebsitedev.wpengine.com/?p=14',0,'post','',0),(15,3,'2023-07-18 08:11:45','2023-07-18 08:11:45','<!-- wp:paragraph -->\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>\n<!-- /wp:paragraph -->','Test Post 3','','pending','open','open','','test-post-3','','','2023-07-18 08:11:45','2023-07-18 08:11:45','',0,'https://atswebsitedev.wpengine.com/?p=15',0,'post','',0),(16,3,'2023-07-18 11:34:45','2023-07-18 11:34:45','<!-- wp:paragraph -->\n<p>It\'s me DIP</p>\n<!-- /wp:paragraph -->','Test post 4','','pending','open','open','','test-post-4','','','2023-07-18 11:35:55','2023-07-18 11:35:55','',0,'https://atswebsitedev.wpengine.com/?p=16',0,'post','',0),(17,3,'2023-07-18 11:58:59','0000-00-00 00:00:00','','Auto Draft','','pending','open','open','','','','','2023-07-18 11:58:59','0000-00-00 00:00:00','',0,'https://atswebsitedev.wpengine.com/?p=17',0,'post','',0),(18,3,'2023-07-18 12:25:02','2023-07-18 12:25:02','','Meeting','','publish','closed','closed','','meeting','','','2023-07-18 12:34:19','2023-07-18 12:34:19','',0,'https://atswebsitedev.wpengine.com/?page_id=18',0,'page','',0),(19,4,'2023-07-18 12:25:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2023-07-18 12:25:42','0000-00-00 00:00:00','',0,'https://atswebsitedev.wpengine.com/?p=19',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(7,4,0),(7,6,0),(8,5,0),(8,7,0),(14,1,0),(15,4,0),(15,6,0),(16,1,0),(16,5,0),(16,6,0),(17,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(4,4,'category','',0,0),(5,5,'category','',0,0),(6,6,'post_tag','',0,0),(7,7,'post_tag','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(4,'Test cat 1','test-cat-1',0),(5,'Test cat 2','test-cat-2',0),(6,'Test tag 1','test-tag-1',0),(7,'Test tag 2','test-tag-2',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','atswebsite1'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(17,1,'session_tokens','a:1:{s:64:\"383d78f9ca48fafec8df58aaaabf60924af8fd3a84770760b4fe422210fafeaa\";a:4:{s:10:\"expiration\";i:1689894995;s:2:\"ip\";s:13:\"71.179.100.55\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1688685395;}}'),(18,1,'WPE_LAST_LOGIN_TIME','1688685395'),(19,1,'WPE_LOGGED_REQUEST_IDS','a:0:{}'),(20,1,'wp_dashboard_quick_press_last_post_id','4'),(21,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"71.179.100.0\";}'),(22,2,'nickname','dipankar.pal@capitalnumbers.com'),(23,2,'first_name','Capital'),(24,2,'last_name','Numbers'),(25,2,'description',''),(26,2,'rich_editing','true'),(27,2,'syntax_highlighting','true'),(28,2,'comment_shortcuts','false'),(29,2,'admin_color','fresh'),(30,2,'use_ssl','0'),(31,2,'show_admin_bar_front','true'),(32,2,'locale',''),(33,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(34,2,'wp_user_level','10'),(35,2,'dismissed_wp_pointers',''),(36,2,'WPE_USER_CREATED_TIME','1689329067'),(38,2,'session_tokens','a:4:{s:64:\"83d4d67128abe43d6a982273f3ef2a8928e2f32cfd41aa9af9d8670d3ef68eb8\";a:4:{s:10:\"expiration\";i:1690538668;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1689329068;}s:64:\"6e07a73d2c093efb3e0e3386ac9284627bdad3f59d99ebc74dcc1b07bb202f43\";a:4:{s:10:\"expiration\";i:1690538736;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1689329136;}s:64:\"87ae9aa04c15117ed5b0fa91cc73f5212bb2e0001ada67d6af1a8370081d4492\";a:4:{s:10:\"expiration\";i:1690540170;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1689330570;}s:64:\"11946fb29a232a35855fd1c1e65f889125606130b177ebe2fe1da57082f01d0c\";a:4:{s:10:\"expiration\";i:1689834455;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1689661655;}}'),(39,2,'WPE_LAST_LOGIN_TIME','1689653948'),(40,2,'WPE_LOGGED_REQUEST_IDS','a:0:{}'),(41,2,'wp_dashboard_quick_press_last_post_id','5'),(42,2,'community-events-location','a:1:{s:2:\"ip\";s:12:\"111.93.173.0\";}'),(44,2,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-07-14T10:32:00.216Z\";}'),(46,3,'nickname','author'),(47,3,'first_name','Author'),(48,3,'last_name','Author'),(49,3,'description',''),(50,3,'rich_editing','true'),(51,3,'syntax_highlighting','true'),(52,3,'comment_shortcuts','false'),(53,3,'admin_color','fresh'),(54,3,'use_ssl','0'),(55,3,'show_admin_bar_front','true'),(56,3,'locale',''),(57,3,'wp_capabilities','a:1:{s:6:\"author\";b:1;}'),(58,3,'wp_user_level','2'),(59,3,'dismissed_wp_pointers',''),(60,3,'facebook_url',''),(61,3,'twitter_url',''),(62,3,'linkedn_url',''),(63,4,'nickname','editor'),(64,4,'first_name','Editor'),(65,4,'last_name','Editor'),(66,4,'description',''),(67,4,'rich_editing','true'),(68,4,'syntax_highlighting','true'),(69,4,'comment_shortcuts','false'),(70,4,'admin_color','fresh'),(71,4,'use_ssl','0'),(72,4,'show_admin_bar_front','true'),(73,4,'locale',''),(74,4,'wp_capabilities','a:1:{s:6:\"editor\";b:1;}'),(75,4,'wp_user_level','7'),(76,4,'dismissed_wp_pointers',''),(77,4,'facebook_url',''),(78,4,'twitter_url',''),(79,4,'linkedn_url',''),(80,3,'session_tokens','a:2:{s:64:\"3c286b05cab653775e3795a1750a37212f7e012fc151c9be469dc022f151d80e\";a:4:{s:10:\"expiration\";i:1689835544;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36\";s:5:\"login\";i:1689662744;}s:64:\"5a5d8b25c4f5668f5062dbff15594b63b7ba0abc31e4c413aa8f56dfc29aa161\";a:4:{s:10:\"expiration\";i:1689854339;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1689681539;}}'),(81,3,'wp_dashboard_quick_press_last_post_id','17'),(82,3,'community-events-location','a:1:{s:2:\"ip\";s:12:\"111.93.173.0\";}'),(83,3,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:23:\"taxonomy-panel-post_tag\";i:3;s:14:\"featured-image\";}}s:9:\"_modified\";s:24:\"2023-07-18T06:49:50.880Z\";}'),(84,3,'wp_user-settings','libraryContent=browse'),(85,3,'wp_user-settings-time','1689663023'),(86,4,'session_tokens','a:2:{s:64:\"a3b483f24e975c9545be808b568d21f5eeb08eba33e6c616d4915ab9e17c5a77\";a:4:{s:10:\"expiration\";i:1689836265;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0\";s:5:\"login\";i:1689663465;}s:64:\"2a3173dc48a4eaf3cc6fa8e895df08e4eb54ed9d31632ba2fc047115b0167376\";a:4:{s:10:\"expiration\";i:1689855942;s:2:\"ip\";s:14:\"111.93.173.178\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1689683142;}}'),(87,4,'wp_persisted_preferences','a:2:{s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:14:\"fullscreenMode\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:23:\"taxonomy-panel-post_tag\";i:3;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-07-18T08:05:31.452Z\";}'),(88,4,'wp_dashboard_quick_press_last_post_id','19'),(89,4,'community-events-location','a:1:{s:2:\"ip\";s:12:\"111.93.173.0\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'atswebsite1','$P$B65o0snxQcgj99VzyOYO3uEOstitJj/','atswebsite1','mureed.nazir@ats.com','https://atswebsitedev.wpengine.com','2023-07-06 23:05:19','',0,'atswebsite1'),(2,'dipankar.pal@capitalnumbers.com','$P$Bs8Pdx60YDHu200Ubl00xDDmXkJuVP/','dipankar-palcapitalnumbers-com','dipankar.pal@capitalnumbers.com','','2023-07-14 10:04:27','',0,'Capital Numbers'),(3,'author','$P$BisEzTr144xEMGc/ogAp7vt3oMWkpB1','author','author@mailinator.com','','2023-07-18 06:43:21','',0,'Author Author'),(4,'editor','$P$BfaQA/kG.g7tpOiQmCmSX3YF9PUD.q.','editor','editor@mailinator.com','','2023-07-18 06:43:57','',0,'Editor Editor');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'wp_atswebsitedev'
--

--
-- Dumping routines for database 'wp_atswebsitedev'
--
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
