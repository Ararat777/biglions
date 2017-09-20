-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: duginn_ruby
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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) DEFAULT NULL,
  `body` text,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$11$sUG5sMyeUqaEfJv44i0nnu.xy3dbtDArCGhkH.6YqpQzYEgfacpNa',NULL,NULL,NULL,17,'2017-08-30 13:38:37','2017-08-28 15:40:10','127.0.0.1','127.0.0.1','2017-08-01 19:50:31','2017-08-30 13:38:37');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2017-07-21 00:27:43','2017-08-25 14:39:33');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (20,'main','Главная',NULL,NULL,NULL,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(21,'about','Компания',NULL,NULL,NULL,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(22,'services','Услуги',NULL,NULL,NULL,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(23,'webdevelopment','Веб-разработка',NULL,NULL,22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(24,'promo_sites','Разработка сайтов визиток','','',23,'2017-08-01 19:50:30','2017-08-23 12:13:05'),(25,'internet_shop','Интернет магазины',NULL,NULL,23,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(26,'landing_page','Лендинг пейдж',NULL,NULL,23,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(27,'support_site','Поддержка сайтов',NULL,NULL,23,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(28,'non-standart_solutions','Нестандартные решения',NULL,NULL,23,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(29,'marketing','Маркетинг',NULL,NULL,22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(30,'SEO','СЕО',NULL,NULL,29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(31,'ppc','Контекстная реклама','','',29,'2017-08-01 19:50:30','2017-08-17 09:36:21'),(32,'smm','СММ','','',29,'2017-08-01 19:50:30','2017-08-26 12:11:38'),(33,'auditing','Аудит рекламных компаний','','',29,'2017-08-01 19:50:30','2017-08-27 18:33:53'),(34,'design','Дизайн',NULL,NULL,22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(35,'prototyping','Прототипирование интерфейсов','','',34,'2017-08-01 19:50:30','2017-08-15 09:21:03'),(36,'redesign','Дизайн / редизайн сайтов','','',34,'2017-08-01 19:50:30','2017-08-15 09:21:27'),(37,'branding','Брендинг и дизайн рекламы','','',34,'2017-08-01 19:50:30','2017-08-15 09:21:47'),(38,'out_advertising','Наружная реклама',NULL,NULL,34,'2017-08-01 19:50:30','2017-08-01 19:50:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indents`
--

DROP TABLE IF EXISTS `indents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `body` text,
  `page_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_indents_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indents`
--

LOCK TABLES `indents` WRITE;
/*!40000 ALTER TABLE `indents` DISABLE KEYS */;
INSERT INTO `indents` VALUES (65,'Рецепт по-настоящему мощного сайта состоит из множества ингридиентов и должен быть заправлен особенным соусом.','','Ингредиенты знают все, соус - только мы.',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(66,'13','','Не совсем адекватных, но крутых программистов',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(67,'15','','Охваченных сфер при реализации проектов',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(68,'50','','Тысячи часов проведенных в разработке \"вкусных\" проектов',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(69,'100+','','Созданных проектов и точка.',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(70,'Реклама которая принесет вам деньги','','',22,'2017-08-01 19:50:30','2017-08-08 11:56:01'),(71,'53','','Текущих проектов контекстной рекламы',22,'2017-08-01 19:50:30','2017-08-08 11:56:22'),(72,'2837','','Ключевых слов находящихся в ТОП-3 органической выдачи',22,'2017-08-01 19:50:30','2017-08-08 11:56:43'),(73,'337','','Настроенных таргетированных рекламных кампаний',22,'2017-08-01 19:50:30','2017-08-08 11:57:05'),(74,'70000+','','Собранных ключевых слов в SEO и PPC',22,'2017-08-01 19:50:30','2017-08-08 11:57:32'),(75,'Дизайн который расширяет границы.','','Идеального дизайна не существует,но в каждом проекте мы делаем дизайн максимально приближенный к идеалу.',23,'2017-08-01 19:50:30','2017-08-08 11:58:10'),(76,'567','','Проанализированных сайтов конкурентов',23,'2017-08-01 19:50:30','2017-08-08 11:59:24'),(77,'34','','Пачки бумаги использованных на этапе прототипирования',23,'2017-08-01 19:50:30','2017-08-08 11:59:46'),(78,'2734','','Кв. м. разработанной наружной рекламы',23,'2017-08-01 19:50:30','2017-08-08 12:00:09'),(79,'279','','Креативных проектов',23,'2017-08-01 19:50:30','2017-08-08 12:00:31'),(80,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',24,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(81,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',24,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(82,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',24,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(83,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',24,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(84,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',25,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(85,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',25,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(86,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(87,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(88,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(89,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(90,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(91,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',26,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(92,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(93,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(94,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(95,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(96,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(97,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(98,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(99,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(100,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(101,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(102,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(103,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(104,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(105,NULL,'/assets/tick.svg',NULL,27,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(106,NULL,'/assets/tick.svg',NULL,29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(107,NULL,'/assets/tick.svg',NULL,29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(108,NULL,'/assets/tick.svg',NULL,29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(109,NULL,'/assets/tick.svg',NULL,29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(110,NULL,NULL,'Мы предоставляем широкий спектр услуг в сфере Digital',32,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(111,NULL,'/assets/webdevelopment-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',33,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(112,NULL,'/assets/marketing-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',34,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(113,NULL,'/assets/design-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',35,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(114,NULL,'/assets/marketing-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',36,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(115,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',37,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(116,'Увеличение прибыли','/assets/marketing-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',38,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(117,'Уменьшение стоимости привлечения клиента','/assets/face-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',38,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(118,'Большой охват аудитории','/assets/graphic-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',38,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(119,'Повышение узнаваемости','/assets/fire-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',38,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(120,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',39,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(121,'Проффесионализм','/assets/shield-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',39,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(122,'Креативность','/assets/eye-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',39,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(123,'100 выполненых проектов','/assets/bag-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',39,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(124,'Работа на результат','/assets/like-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',39,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(125,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',40,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(126,'Аудит сайта',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',40,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(127,'SEO-продвижение сайта',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',40,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(128,'Контекстная реклама',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',40,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(129,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',41,'2017-08-03 17:58:51','2017-08-03 17:58:51'),(130,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',46,'2017-08-03 18:09:30','2017-08-03 18:09:30'),(131,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',47,'2017-08-03 18:09:41','2017-08-03 18:09:41'),(132,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',47,'2017-08-03 18:09:46','2017-08-03 18:09:46'),(133,'Google','/assets/google-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',48,'2017-08-03 18:09:55','2017-08-03 18:09:55'),(134,'Яндекс','/assets/yandex-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',48,'2017-08-03 18:10:05','2017-08-03 18:10:05'),(135,'Bing','/assets/bing-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',48,'2017-08-03 18:10:14','2017-08-03 18:10:14'),(136,'Instagram + Facebook','/assets/insta-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',49,'2017-08-03 18:10:24','2017-08-03 18:16:14'),(137,'ВК','/assets/vk-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',49,'2017-08-03 18:10:33','2017-08-03 18:10:33'),(138,'MyTarget','/assets/mytarget-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',49,'2017-08-03 18:10:50','2017-08-03 18:10:50'),(139,'Скорость настройки','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',50,'2017-08-03 18:11:07','2017-08-03 18:11:07'),(140,'Гибкий бюджет','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',50,'2017-08-03 18:11:18','2017-08-03 18:11:18'),(141,'Точно','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',50,'2017-08-03 18:11:27','2017-08-03 18:11:27'),(142,'Эффективно','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',50,'2017-08-03 18:11:39','2017-08-03 18:11:39'),(143,'Вы платите только за целевые переходы на сайт','/assets/fire-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',51,'2017-08-03 18:12:13','2017-08-03 18:12:13'),(144,'В контекстной рекламе результат зависит от качества компании','/assets/graphic-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',51,'2017-08-03 18:12:36','2017-08-03 18:12:36'),(145,'Семантическое ядро','/assets/core-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',52,'2017-08-03 18:13:06','2017-08-03 18:13:06'),(146,'Минус слова','/assets/close.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',52,'2017-08-03 18:13:27','2017-08-03 18:13:27'),(147,'Релевантные заголовки','/assets/heads-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',52,'2017-08-03 18:13:44','2017-08-03 18:13:44'),(148,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',53,'2017-08-03 18:14:10','2017-08-03 18:14:10'),(149,'Первый месяц от $150','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',53,'2017-08-03 18:14:30','2017-08-03 18:14:30'),(150,'Второй и следующие от $100','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',53,'2017-08-03 18:14:40','2017-08-03 18:14:40'),(151,'','/assets/webdevelopment-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',57,'2017-08-07 15:41:04','2017-08-07 15:41:04'),(152,'Интернет магазин','/assets/shop-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',58,'2017-08-07 15:41:37','2017-08-07 15:41:37'),(153,'Нестандартные решения','/assets/solutions-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',58,'2017-08-07 15:41:56','2017-08-07 15:41:56'),(154,'Корпоративные сайты','/assets/corp-sites-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',58,'2017-08-07 15:42:12','2017-08-07 15:42:12'),(155,'Landing Page','/assets/landing-page-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',58,'2017-08-07 15:42:28','2017-08-07 15:42:28'),(156,'Промо сайты','/assets/promo-sites-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',58,'2017-08-07 15:42:45','2017-08-07 15:43:46'),(157,'150','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',60,'2017-08-07 15:43:12','2017-08-07 15:43:12'),(158,'150','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',60,'2017-08-07 15:43:22','2017-08-07 15:43:22'),(159,'150','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',60,'2017-08-07 15:43:30','2017-08-07 15:43:30'),(160,'150','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',60,'2017-08-07 15:43:57','2017-08-07 15:43:57'),(161,'','/assets/design-item.png','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',75,'2017-08-15 09:31:56','2017-08-15 09:31:56'),(162,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',76,'2017-08-15 09:33:17','2017-08-15 09:33:17'),(163,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',76,'2017-08-15 09:33:23','2017-08-15 09:33:23'),(164,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',76,'2017-08-15 09:33:29','2017-08-15 09:33:29'),(165,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',76,'2017-08-15 09:33:37','2017-08-15 09:33:37'),(166,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',67,'2017-08-15 09:34:12','2017-08-15 09:34:12'),(167,'Определить необходимый функционал','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',67,'2017-08-15 09:34:29','2017-08-15 09:34:29'),(168,'Расположить блоки на странице в соответствии с маркетинговым исследованием','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',67,'2017-08-15 09:34:42','2017-08-15 09:34:42'),(169,'Учесть все особенности вашего будущего сайта','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',67,'2017-08-15 09:34:56','2017-08-15 09:34:56'),(170,'Какие экраны будут у системы','','',68,'2017-08-15 09:35:34','2017-08-15 09:35:34'),(171,'Какие экраны будут у системы','','',68,'2017-08-15 09:35:42','2017-08-15 09:35:42'),(172,'Какие экраны будут у системы','','',68,'2017-08-15 09:35:47','2017-08-15 09:35:47'),(173,'Какие экраны будут у системы','','',68,'2017-08-15 09:35:59','2017-08-15 09:35:59'),(174,'Какие экраны будут у системы','','',68,'2017-08-15 09:36:05','2017-08-15 09:36:05'),(175,'Какие экраны будут у системы','','',68,'2017-08-15 09:36:11','2017-08-15 09:36:11'),(176,'Спецификации','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',69,'2017-08-15 09:36:40','2017-08-15 09:36:40'),(177,'Изображения','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',69,'2017-08-15 09:36:52','2017-08-15 09:36:52'),(178,'Логика страниц','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',69,'2017-08-15 09:37:10','2017-08-15 09:37:10'),(179,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',71,'2017-08-15 09:37:52','2017-08-15 09:37:52'),(180,'Дизайн','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',81,'2017-08-15 09:43:39','2017-08-15 09:43:39'),(181,'Поддержка','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',81,'2017-08-15 09:43:50','2017-08-15 09:43:50'),(182,'Нейминг','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',86,'2017-08-15 09:44:11','2017-08-15 09:44:11'),(183,'Бренд-бук','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',86,'2017-08-15 09:44:21','2017-08-15 09:44:21'),(184,'Логотип','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',86,'2017-08-15 09:44:35','2017-08-15 09:44:35'),(185,'Упаковка и этикетка','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',86,'2017-08-15 09:44:48','2017-08-15 09:44:48'),(186,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',90,'2017-08-23 12:26:43','2017-08-23 12:26:43'),(187,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate d',91,'2017-08-23 12:27:03','2017-08-23 12:27:03'),(188,'Промо сайты','/assets/promo-sites-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:28:33','2017-08-23 12:28:33'),(189,'Landing Page','/assets/landing-page-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:29:02','2017-08-23 12:29:02'),(190,'Интернет магазин','/assets/shop-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:29:33','2017-08-23 12:29:33'),(191,'Корпоративные сайты','/assets/corp-sites-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:30:01','2017-08-23 12:30:01'),(192,'Нестандартные решения','/assets/solutions-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:30:32','2017-08-23 12:30:32'),(193,'Интернет магазин','/assets/shop-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',92,'2017-08-23 12:31:01','2017-08-23 12:31:01'),(194,'Какие экраны будут у системы','','',93,'2017-08-23 12:31:25','2017-08-23 12:31:25'),(195,'Какие экраны будут у системы','','',93,'2017-08-23 12:31:32','2017-08-23 12:31:32'),(196,'Какие экраны будут у системы','','',93,'2017-08-23 12:31:54','2017-08-23 12:31:54'),(197,'Какие экраны будут у системы','','',93,'2017-08-23 12:32:03','2017-08-23 12:32:03'),(198,'Какие экраны будут у системы','','',93,'2017-08-23 12:32:09','2017-08-23 12:32:15'),(199,'Какие экраны будут у системы','','',93,'2017-08-23 12:32:22','2017-08-23 12:32:22'),(200,'','/assets/pages-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:44:03','2017-08-23 12:44:03'),(201,'','/assets/uniq-design-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:44:33','2017-08-23 12:44:33'),(202,'','/assets/lan-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:44:53','2017-08-23 12:44:53'),(203,'','/assets/adaptive.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:45:24','2017-08-23 12:45:24'),(204,'','/assets/cms-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:45:44','2017-08-23 12:45:44'),(205,'','/assets/content-icon.svg','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',95,'2017-08-23 12:46:16','2017-08-23 12:46:16'),(206,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',99,'2017-08-26 12:24:12','2017-08-26 12:24:12'),(207,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',100,'2017-08-26 12:24:26','2017-08-26 12:24:26'),(208,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:53','2017-08-26 12:27:53'),(209,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:53','2017-08-26 12:27:53'),(210,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:53','2017-08-26 12:27:53'),(211,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:54','2017-08-26 12:27:54'),(212,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:54','2017-08-26 12:27:54'),(213,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:54','2017-08-26 12:27:54'),(214,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:54','2017-08-26 12:27:54'),(215,NULL,NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',101,'2017-08-26 12:27:54','2017-08-26 12:27:54'),(216,'Зачем','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',102,'2017-08-26 12:28:41','2017-08-26 12:28:41'),(217,'Что вы получаете','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',102,'2017-08-26 12:28:57','2017-08-26 12:28:57'),(218,'Зачем','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',103,'2017-08-26 12:29:43','2017-08-26 12:29:43'),(219,'Что вы получаете','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',103,'2017-08-26 12:29:55','2017-08-26 12:29:55'),(220,'Пример контента','/assets/tick.svg','',103,'2017-08-26 12:30:42','2017-08-26 12:30:42'),(221,'Зачем','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',104,'2017-08-26 12:31:04','2017-08-26 12:31:04'),(222,'Что вы получаете','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',104,'2017-08-26 12:31:17','2017-08-26 13:05:30'),(223,'Промо сайты',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',105,'2017-08-26 12:33:52','2017-08-26 12:33:52'),(224,'Промо сайты',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',105,'2017-08-26 12:33:52','2017-08-26 12:33:52'),(225,'Промо сайты',NULL,'Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',105,'2017-08-26 12:33:52','2017-08-26 12:33:52'),(226,'Промо сайты ','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',106,'2017-08-26 12:34:11','2017-08-26 13:08:54'),(227,' Промо сайты','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',106,'2017-08-26 12:34:11','2017-08-26 13:08:59'),(228,' Промо сайты','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',106,'2017-08-26 12:34:11','2017-08-26 13:09:04'),(229,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',107,'2017-08-26 12:34:54','2017-08-26 12:34:54'),(230,'','','	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',113,'2017-08-27 19:29:40','2017-08-27 19:29:40'),(231,'','','	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor	Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',114,'2017-08-27 19:29:58','2017-08-27 19:29:58'),(232,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',115,'2017-08-27 19:30:28','2017-08-27 19:31:15'),(233,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',115,'2017-08-27 19:30:42','2017-08-27 19:31:22'),(234,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',115,'2017-08-27 19:30:45','2017-08-27 19:31:28'),(235,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',115,'2017-08-27 19:31:37','2017-08-27 19:31:37'),(236,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:00','2017-08-27 19:32:00'),(237,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:03','2017-08-27 19:32:03'),(238,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:06','2017-08-27 19:32:06'),(239,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:09','2017-08-27 19:32:09'),(240,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:13','2017-08-27 19:32:13'),(241,'Какие экраны будут у системы','','',117,'2017-08-27 19:32:15','2017-08-27 19:32:15'),(242,'','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',118,'2017-08-27 19:32:38','2017-08-27 19:32:38'),(243,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:24','2017-08-30 13:50:18'),(244,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:27','2017-08-30 13:50:11'),(245,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:29','2017-08-30 13:50:05'),(246,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:32','2017-08-30 13:49:47'),(247,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:35','2017-08-30 13:49:59'),(248,'Заголовок','','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',116,'2017-08-30 13:39:37','2017-08-30 13:48:18');
/*!40000 ALTER TABLE `indents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nav_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (21,'intro-development','Мощная разработка сайтов',NULL,20,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(22,'intro-marketing','Digital маркетинг',NULL,20,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(23,'intro-design','Креативный дизайн',NULL,20,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(24,'team','Команда','Команда',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(25,'mission','Наша миссия','Наша миссия',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(26,'work','Как мы работаем','Как мы работаем',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(27,'client','Наши клиенты','Наши клиенты',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(28,'ourteam','Наша команда','Наша команда',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(29,'certificates','Сертификаты','Сертификаты',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(30,'reviews','Отзывы','Отзывы',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(31,'vacantions','Работать с нами','Работать с нами',21,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(32,'services','Услуги','Услуги',22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(33,'webdevelopment','Веб-разработка','Веб-разработка',22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(34,'marketing','Маркетинг','Маркетинг',22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(35,'design','Дизайн','Дизайн',22,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(36,'marketing','Маркетинг','Маркетинг',29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(37,'advancement','PROдвигаем ваш маркетинг','Продвижение',29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(38,'why_advancement','Зачем нужно продвигать сайт','Зачем продвижение',29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(39,'why_us','Почему нужно доверится нам','Почему мы',29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(40,'internet_marketing','Комплексный интернет маркетинг','Инет маркетинг',29,'2017-08-01 19:50:30','2017-08-01 19:50:30'),(41,'price','Стоимость комплексного интернет маркетинга','Стоимость',29,'2017-08-03 17:56:52','2017-08-03 17:56:52'),(42,'client','Нам доверяют','Нам доверяют',29,'2017-08-03 17:57:16','2017-08-03 17:57:16'),(43,'our_work','Что мы делали','Что мы делали',29,'2017-08-03 17:57:39','2017-08-03 17:57:39'),(44,'reviews','Отзывы','Отзывы',29,'2017-08-03 17:57:55','2017-08-03 17:57:55'),(45,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',29,'2017-08-03 17:58:10','2017-08-03 17:58:10'),(46,'ppc','Контекстная реклама','Контекстная реклама',31,'2017-08-03 18:01:54','2017-08-17 09:44:38'),(47,'what_is_ppc','Что такое контекстная реклама','Что это',31,'2017-08-03 18:02:12','2017-08-17 09:44:56'),(48,'system','Системы контекстной рекламы	','Системы рекламы',31,'2017-08-03 18:02:32','2017-08-03 18:02:32'),(49,'social','Реклама в социальных сетях','Соц. сети',31,'2017-08-03 18:02:58','2017-08-03 18:02:58'),(50,'why_ppc','Зачем нужна контекстная реклама','Зачем',31,'2017-08-03 18:03:16','2017-08-17 09:45:08'),(51,'how_work','Как это работает','Как это работает',31,'2017-08-03 18:03:37','2017-08-03 18:03:37'),(52,'methods','Методы настройки влияющие на результат','Методы',31,'2017-08-03 18:03:56','2017-08-03 18:03:56'),(53,'price','Стоимость наших услуг','Стоимость',31,'2017-08-03 18:04:17','2017-08-03 18:04:17'),(54,'our_work','Что мы делали','Что мы делали',31,'2017-08-03 18:04:34','2017-08-03 18:04:34'),(55,'reviews','Отзывы','Отзывы',31,'2017-08-03 18:04:49','2017-08-03 18:04:49'),(56,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',31,'2017-08-03 18:05:05','2017-08-03 18:05:05'),(57,'webdevelopment','Веб-разработка','Веб-разработка',23,'2017-08-07 15:38:08','2017-08-07 15:38:08'),(58,'sites','Какие сайты?','Какие сайты?',23,'2017-08-07 15:38:24','2017-08-07 15:38:24'),(59,'stages','Этапы работы','Этапы работы',23,'2017-08-07 15:38:41','2017-08-07 15:38:41'),(60,'adaptive','Адаптивность','Адаптивность',23,'2017-08-07 15:38:58','2017-08-07 15:38:58'),(61,'frameworks','На чем делаем сайты','На чем делаем сайты',23,'2017-08-07 15:39:13','2017-08-07 15:39:13'),(62,'our_work','Что мы делали','Что мы делали',23,'2017-08-07 15:39:35','2017-08-07 15:39:35'),(63,'reviews','Отзывы','Отзывы',23,'2017-08-07 15:39:47','2017-08-07 15:39:47'),(64,'questions','Частые вопросы','Частые вопросы',23,'2017-08-07 15:40:13','2017-08-07 15:40:13'),(65,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',23,'2017-08-07 15:40:22','2017-08-07 15:40:22'),(66,'prototyping','Прототипирование интерфейсов','Прототипирование',35,'2017-08-15 09:23:35','2017-08-15 09:23:35'),(67,'why_prototype','Зачем нужен прототип','Зачем',35,'2017-08-15 09:24:04','2017-08-15 09:24:04'),(68,'site_prototype','Какие задачи решает прототип сайта','Какие задачи',35,'2017-08-15 09:24:53','2017-08-15 09:24:53'),(69,'what_is_prototype','Что собой представляет прототип','Что это',35,'2017-08-15 09:26:13','2017-08-15 09:26:13'),(70,'order_prototype','В чём выгода заказать прототип','Выгода',35,'2017-08-15 09:26:41','2017-08-15 09:26:41'),(71,'price','Сколько стоит прототипирование','Стоимость',35,'2017-08-15 09:27:12','2017-08-15 09:27:12'),(72,'our_work','Что мы делали','Что мы делали',35,'2017-08-15 09:27:23','2017-08-15 09:27:23'),(73,'reviews','Отзывы','Отзывы',35,'2017-08-15 09:27:43','2017-08-15 09:27:43'),(74,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',35,'2017-08-15 09:27:54','2017-08-15 09:27:54'),(75,'design','Дизайн','Дизайн',34,'2017-08-15 09:29:43','2017-08-15 09:29:43'),(76,'why_us','Почему стоить доверить проект нам?','Почему мы',34,'2017-08-15 09:30:05','2017-08-15 09:30:05'),(77,'our_work','Что мы делали','Что мы делали',34,'2017-08-15 09:30:15','2017-08-15 09:30:15'),(78,'reviews','Отзывы','Отзывы',34,'2017-08-15 09:30:23','2017-08-15 09:30:23'),(79,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',34,'2017-08-15 09:30:35','2017-08-15 09:30:35'),(80,'redesign','Дизайн / редизайн сайтов и лендингов','Редизайн',36,'2017-08-15 09:39:22','2017-08-15 09:39:22'),(81,'supporting','Поддержка','Поддержка',36,'2017-08-15 09:39:45','2017-08-15 09:39:45'),(82,'our_work','Что мы делали','Что мы делали',36,'2017-08-15 09:40:03','2017-08-15 09:40:03'),(83,'reviews','Отзывы','Отзывы',36,'2017-08-15 09:40:22','2017-08-15 09:40:22'),(84,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',36,'2017-08-15 09:40:41','2017-08-15 09:40:41'),(85,'branding','Брендинг и дизайн рекламы','Брендинг',37,'2017-08-15 09:41:27','2017-08-15 09:41:27'),(86,'directions','Направления','Направления',37,'2017-08-15 09:41:53','2017-08-15 09:41:53'),(87,'our_work','Что мы делали','Что мы делали',37,'2017-08-15 09:42:03','2017-08-15 09:42:03'),(88,'reviews','Отзывы','Отзывы',37,'2017-08-15 09:42:12','2017-08-15 09:42:12'),(89,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',37,'2017-08-15 09:42:23','2017-08-15 09:42:23'),(90,'promo_sites','Разработка сайта визитки','Визитка',24,'2017-08-23 12:19:38','2017-08-23 12:19:38'),(91,'what_is_prototype','Что собой представляет прототип','прототип',24,'2017-08-23 12:20:07','2017-08-23 12:20:07'),(92,'tasks_promo','Какие задачи выполняет визитка','Задачи',24,'2017-08-23 12:22:36','2017-08-23 12:22:36'),(93,'why_us','Почему стоит довериться нам','Почему мы',24,'2017-08-23 12:23:33','2017-08-23 12:23:33'),(94,'price','Цены','Стоимость',24,'2017-08-23 12:24:09','2017-08-23 12:24:09'),(95,'price_contain','Что входит в стоимость','Что входит',24,'2017-08-23 12:25:40','2017-08-23 12:25:40'),(96,'our_work','Что мы делали','Что мы делали',24,'2017-08-23 12:25:55','2017-08-23 12:25:55'),(97,'reviews','Отзывы','Отзывы',24,'2017-08-23 12:26:07','2017-08-23 12:26:07'),(98,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',24,'2017-08-23 12:26:22','2017-08-23 12:26:22'),(99,'smm','Эффективное продвижение в соц сетях','СММ',32,'2017-08-25 15:28:39','2017-08-25 15:28:39'),(100,'what_is_smm','Что такое smm','Что это',32,'2017-08-25 15:29:08','2017-08-25 15:29:08'),(101,'what_we_do','Что мы делаем при продвижении','Что мы делаем',32,'2017-08-25 15:29:50','2017-08-25 15:29:50'),(102,'content_plan','Создание контент плана','Контент план',32,'2017-08-25 15:30:18','2017-08-25 15:30:18'),(103,'content_visual','Визуализация контента','Визуализация',32,'2017-08-25 15:30:50','2017-08-25 15:30:50'),(104,'write_text','Написания текстов','Текст',32,'2017-08-25 15:31:27','2017-08-25 15:31:27'),(105,'standart_system','Внедрение стандартных механик','Стандартная механика',32,'2017-08-25 15:32:34','2017-08-25 15:32:34'),(106,'nonstandart_system','Внедрение нестандартных механик','Нестандартная механика',32,'2017-08-25 15:33:11','2017-08-25 15:33:11'),(107,'analyz','Анализ и улучшение','Анализ',32,'2017-08-25 15:33:32','2017-08-25 15:33:32'),(108,'price','Тарифы','Тарифы',32,'2017-08-25 15:33:54','2017-08-25 15:33:54'),(109,'our_work','Что мы делали','Что мы делали',32,'2017-08-25 15:36:24','2017-08-25 15:36:24'),(110,'reviews','Отзывы','Отзывы',32,'2017-08-25 15:36:38','2017-08-25 15:36:38'),(111,'questions','Частые вопросы','Вопросы',32,'2017-08-25 15:37:44','2017-08-25 15:37:44'),(112,'form','Просто заполните форму дальше мы все сделаем','Форма',32,'2017-08-25 15:39:22','2017-08-25 15:39:22'),(113,'auditing','Аудит рекламных кампаний','Аудит',33,'2017-08-27 19:11:57','2017-08-27 19:11:57'),(114,'what_is_auditing','Что собой представляет аудит','Что это',33,'2017-08-27 19:12:26','2017-08-27 19:12:26'),(115,'why_auditing','В каких ситуациях необходим аудит рекламной кампании','Зачем',33,'2017-08-27 19:13:20','2017-08-27 19:13:20'),(116,'work','Этапы работы','Этапы работы',33,'2017-08-27 19:13:56','2017-08-27 19:13:56'),(117,'what_you_get','Что вы получите в итоге','Что вы получите',33,'2017-08-27 19:15:21','2017-08-27 19:15:21'),(118,'price','Стоимость наших услуг','Стоимость',33,'2017-08-27 19:16:33','2017-08-27 19:16:33'),(119,'reviews','Отзывы','Отзывы',33,'2017-08-27 19:16:50','2017-08-27 19:16:50'),(120,'form','За каждое заполненное поле,мы дарим вам 100 грн','Форма',33,'2017-08-27 19:17:10','2017-08-27 19:17:10');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_category_id` (`category_id`),
  CONSTRAINT `fk_rails_2ad2693164` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Эзотерика',31,'2017-08-03 17:59:53','2017-08-03 17:59:53'),(2,'Эзотерика',31,'2017-08-03 18:00:11','2017-08-03 18:00:11'),(3,'Эзотерика',31,'2017-08-03 18:00:19','2017-08-03 18:00:19');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `answer` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:13','2017-08-11 15:08:13'),(2,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:19','2017-08-11 15:08:19'),(3,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:24','2017-08-11 15:08:24'),(4,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:28','2017-08-11 15:08:28'),(5,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:33','2017-08-11 15:08:33'),(6,'Как ничего не делать и рубить дохера бабок?','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-11 15:08:38','2017-08-11 15:08:38');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,'Александр Рыбаков','www.brazzers.com','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-01 19:50:30','2017-08-01 19:50:30'),(6,'Александр Рыбаков','www.brazzers.com','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-01 19:50:30','2017-08-01 19:50:30'),(7,'Александр Рыбаков','www.brazzers.com','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-01 19:50:30','2017-08-01 19:50:30'),(8,'Александр Рыбаков','www.brazzers.com','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor','2017-08-01 19:50:30','2017-08-01 19:50:30');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170720093256'),('20170720093433'),('20170727125658'),('20170730184225'),('20170801190503'),('20170801190506'),('20170803124401'),('20170811134643'),('20170825094436'),('20170826135930');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffs`
--

DROP TABLE IF EXISTS `tariffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tariffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `price` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tariffs_on_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffs`
--

LOCK TABLES `tariffs` WRITE;
/*!40000 ALTER TABLE `tariffs` DISABLE KEYS */;
INSERT INTO `tariffs` VALUES (1,'Стандарт','Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br>Пункт пункт пункт<br>',1200,24,'2017-08-25 15:01:58','2017-08-25 15:01:58'),(2,'Стандарт','Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br>Пункт пункт пункт<br>',1200,24,'2017-08-25 15:02:18','2017-08-25 15:02:18'),(3,'Стандарт','Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br>Пункт пункт пункт<br>',1200,24,'2017-08-25 15:02:28','2017-08-25 15:02:28'),(4,'Стандарт','Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br> Пункт пункт пункт<br>Пункт пункт пункт<br>',1200,24,'2017-08-25 15:02:37','2017-08-25 15:02:37'),(5,'Стандарт','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',1200,32,'2017-08-26 13:11:46','2017-08-26 13:11:46'),(6,'Медиум','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolor',1200,32,'2017-08-26 13:11:57','2017-08-26 14:09:58'),(7,'Фулл пакет','Occaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate dOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate do eiusmod dolorOccaecat in excepteur tempor commodo anim id anim id in aliquip voluptate dOccaecat in excepteur tempor ',1200,32,'2017-08-26 13:12:15','2017-08-26 14:06:55'),(8,'Тариф 1','',100,33,'2017-08-28 15:40:49','2017-08-28 15:40:49'),(9,'Тариф 2','',200,33,'2017-08-28 15:40:59','2017-08-28 15:40:59'),(10,'Тариф 3','',300,33,'2017-08-28 15:41:08','2017-08-28 15:41:08');
/*!40000 ALTER TABLE `tariffs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-03 21:19:01
