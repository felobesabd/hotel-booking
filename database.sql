-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: archi_riorelax
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'LvDYRjRJlFQpt1NEf1XY7XmDna9pU10U',1,'2025-05-03 11:19:36','2025-05-03 11:19:36','2025-05-03 11:19:36');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General',0,'Labore dolorum itaque et dolorem quis eveniet. Animi dolor qui atque omnis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(2,'Hotel',0,'A excepturi est sit. Debitis est et impedit nulla eum soluta eum dolorem. Quam praesentium eum labore temporibus aliquid. Id aspernatur repellendus ad in.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(3,'Booking',0,'Aspernatur voluptatum quia et porro perspiciatis quam dicta. Optio unde totam voluptatibus ipsam voluptate. Impedit debitis adipisci ut dignissimos.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(4,'Resort',0,'Placeat neque qui tempore. Dolor dignissimos et at sunt laboriosam facere. Sit ut dolorum repellat non velit recusandae tempore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(5,'Travel',0,'Fugit voluptas non veritatis mollitia ipsam doloremque quibusdam consequatur. Illo modi voluptas sit ea quis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-05-03 11:19:21','2025-05-03 11:19:21');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'GENERAL INFORMATION',0,'published','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL),(2,'ACCOMMODATIONS AND AMENITIES',1,'published','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL),(3,'SPECIAL EVENTS',2,'published','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL),(4,'SAFETY AND HEALTH',3,'published','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL),(5,'EXPLORING',4,'published','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What sets Luxury Hotel apart from others area?','Our hotel stands out with its prime coastal location, captivating design that harmonizes with nature, impeccable service dedicated to fulfilling every guest’s desire, and an array of world-class amenities that redefine opulence and sophistication.',1,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(2,'Are pets allowed at your hotel?','Unfortunately, as we strive to maintain an environment of tranquility and luxury for all our guests, we regret to inform you that we do not permit pets in our elegantly appointed rooms and meticulously designed public spaces.',2,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(3,'Is there a service from airport to hotel?','Absolutely! For your convenience, we offer an exclusive airport shuttle service that can be arranged in advance. Our dedicated concierge team will be delighted to provide you with detailed information and assist with reservations.',1,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(4,'What dining options are available at hotel?','Indulge in a culinary journey at our resort with a range of exquisite dining options. From elegantly crafted local and international cuisines to delightful specialty restaurants and inviting bars, every dining experience promises to tantalize your taste buds and elevate your stay to new heights of gastronomic pleasure.',2,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(5,'Is there a spa and wellness center on-site?','Embrace holistic well-being at our luxurious on-site spa and wellness center. Immerse yourself in a world of serenity and rejuvenation with a diverse selection of treatments, therapies, and state-of-the-art facilities that cater to your body, mind, and soul.',2,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(6,'Do you have family-friendly activities?','Families are warmly welcomed to our resort, where we have thoughtfully curated a range of family-friendly amenities and activities. From a dedicated kids’ club to a family pool and a host of engaging recreational options, we ensure a harmonious and enjoyable stay for guests of all ages.',2,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(7,'How can I arrange special at resort?','Celebrate life’s most precious moments in the epitome of luxury and elegance. Our skilled event planning team is committed to orchestrating seamless and memorable celebrations, ensuring every detail is tailored to your vision. Contact our dedicated events department to embark on a journey of crafting extraordinary moments.',3,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(8,'What safety measures do you have for guests?','Your well-being is our paramount concern. We have implemented stringent health and safety protocols to ensure a secure and comfortable environment for all our guests. These measures encompass enhanced cleaning procedures, social distancing guidelines, and a commitment to maintaining the highest standards of hygiene throughout the resort.',4,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(9,'Can I cancel or modify my reservation?','Our reservation policies vary based on the rate type and specific booking conditions. We kindly advise reviewing the terms and details of your reservation or reaching out to our dedicated reservations team for personalized assistance regarding cancellations or modifications. Your comfort and satisfaction remain our utmost priority.',1,'published','2025-05-03 11:19:40','2025-05-03 11:19:40'),(10,'What activities are near your hotel?','Our hotel’s prime location offers easy access to a plethora of attractions. Explore the captivating Adriatic coastline, immerse yourself in historical landmarks, indulge in vibrant local culture, and embark on memorable excursions that our concierge team can readily assist in arranging.',5,'published','2025-05-03 11:19:40','2025-05-03 11:19:40');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Room','Immerse yourself in the epitome of comfort and luxury within our meticulously designed rooms. Each space is a sanctuary where sophistication meets functionality. From plush furnishings to panoramic views, every detail is crafted to ensure an unparalleled stay that leaves a lasting impression.',1,0,'galleries/1.png',1,'published','2025-05-03 11:19:36','2025-05-03 11:19:36'),(2,'Hall','Our event halls are more than spaces; they’re canvases for your imagination. With timeless design and versatile layouts, they’re perfect for weddings, conferences, and gatherings of all kinds. Equipped with state-of-the-art technology and impeccable service, our halls set the stage for unforgettable moments.',1,0,'galleries/2.png',1,'published','2025-05-03 11:19:36','2025-05-03 11:19:36'),(3,'Guardian','Our vigilant team takes your safety and comfort seriously. With unwavering dedication, our guardians ensure every corner of our hotel is secure, clean, and welcoming. From discreet housekeeping to attentive concierge services, their commitment ensures you experience nothing but the finest in hospitality. Your peace of mind is their top priority',1,0,'galleries/3.png',1,'published','2025-05-03 11:19:36','2025-05-03 11:19:36'),(4,'Hotel','Experience opulence redefined at Riorelax. Our meticulously designed rooms and suites offer breathtaking views, plush amenities, and a haven of tranquility. Immerse yourself in sumptuous comfort that sets the stage for an unforgettable stay.',1,0,'galleries/4.png',1,'published','2025-05-03 11:19:36','2025-05-03 11:19:36'),(5,'Event Hall','Celebrate life’s milestones in style with our exceptional event spaces. From weddings to corporate gatherings, our dedicated team crafts experiences that leave a lasting impression. Impeccable service, state-of-the-art facilities, and a picturesque backdrop ensure your event is nothing short of extraordinary.',1,0,'galleries/5.png',1,'published','2025-05-03 11:19:36','2025-05-03 11:19:36');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"galleries\\/4.png\",\"description\":\"Est ipsam quis vitae placeat. Dolore et ut debitis quisquam voluptas. Minus et ad quo cupiditate. Voluptas deleniti eveniet ipsum atque.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"Praesentium ipsum voluptate dolorum hic alias qui distinctio. Id nesciunt facere est sunt ut temporibus. Non laborum omnis iste fugiat alias qui qui.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Harum ut autem dolorem eos qui tempore expedita. Deleniti consectetur soluta debitis. Aperiam est cum omnis eum nihil autem dolorum.\"},{\"img\":\"galleries\\/1.png\",\"description\":\"Adipisci cupiditate nemo ut repellat ut facere mollitia. Nostrum omnis excepturi dignissimos necessitatibus officiis vitae sunt.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Illum voluptatum dolores vel eum vitae praesentium. Nobis labore earum ex ullam. Pariatur velit distinctio quas unde sint quia rem.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"Quo fugiat illo molestiae aut blanditiis asperiores. Ea quibusdam similique temporibus. Veritatis in rerum voluptas totam.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"Nisi ratione iure fugit quos. Aut est sed quidem eveniet amet voluptatem aut. Ut temporibus possimus et quia tempore.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Et ut nemo adipisci vel. Nulla eum qui ea. Repellendus et possimus sunt. Debitis illo est quia labore explicabo beatae.\"},{\"img\":\"galleries\\/10.png\",\"description\":\"Voluptatem omnis autem vel quos eum. A earum neque rerum debitis. Nostrum vel nam quos. Dolor beatae quasi ut voluptas qui magnam eveniet.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"Voluptatibus velit provident doloremque. Laboriosam doloribus explicabo non accusamus. Distinctio accusantium ex ratione ab ex velit.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-05-03 11:19:36','2025-05-03 11:19:36'),(2,'[{\"img\":\"galleries\\/10.png\",\"description\":\"Voluptatem omnis autem vel quos eum. A earum neque rerum debitis. Nostrum vel nam quos. Dolor beatae quasi ut voluptas qui magnam eveniet.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"Voluptatibus velit provident doloremque. Laboriosam doloribus explicabo non accusamus. Distinctio accusantium ex ratione ab ex velit.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Est ipsam quis vitae placeat. Dolore et ut debitis quisquam voluptas. Minus et ad quo cupiditate. Voluptas deleniti eveniet ipsum atque.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"Praesentium ipsum voluptate dolorum hic alias qui distinctio. Id nesciunt facere est sunt ut temporibus. Non laborum omnis iste fugiat alias qui qui.\"},{\"img\":\"galleries\\/1.png\",\"description\":\"Adipisci cupiditate nemo ut repellat ut facere mollitia. Nostrum omnis excepturi dignissimos necessitatibus officiis vitae sunt.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Et ut nemo adipisci vel. Nulla eum qui ea. Repellendus et possimus sunt. Debitis illo est quia labore explicabo beatae.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Harum ut autem dolorem eos qui tempore expedita. Deleniti consectetur soluta debitis. Aperiam est cum omnis eum nihil autem dolorum.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"Nisi ratione iure fugit quos. Aut est sed quidem eveniet amet voluptatem aut. Ut temporibus possimus et quia tempore.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"Quo fugiat illo molestiae aut blanditiis asperiores. Ea quibusdam similique temporibus. Veritatis in rerum voluptas totam.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Illum voluptatum dolores vel eum vitae praesentium. Nobis labore earum ex ullam. Pariatur velit distinctio quas unde sint quia rem.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-05-03 11:19:36','2025-05-03 11:19:36'),(3,'[{\"img\":\"galleries\\/8.png\",\"description\":\"Praesentium ipsum voluptate dolorum hic alias qui distinctio. Id nesciunt facere est sunt ut temporibus. Non laborum omnis iste fugiat alias qui qui.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Et ut nemo adipisci vel. Nulla eum qui ea. Repellendus et possimus sunt. Debitis illo est quia labore explicabo beatae.\"},{\"img\":\"galleries\\/1.png\",\"description\":\"Adipisci cupiditate nemo ut repellat ut facere mollitia. Nostrum omnis excepturi dignissimos necessitatibus officiis vitae sunt.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"Nisi ratione iure fugit quos. Aut est sed quidem eveniet amet voluptatem aut. Ut temporibus possimus et quia tempore.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Est ipsam quis vitae placeat. Dolore et ut debitis quisquam voluptas. Minus et ad quo cupiditate. Voluptas deleniti eveniet ipsum atque.\"},{\"img\":\"galleries\\/10.png\",\"description\":\"Voluptatem omnis autem vel quos eum. A earum neque rerum debitis. Nostrum vel nam quos. Dolor beatae quasi ut voluptas qui magnam eveniet.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"Quo fugiat illo molestiae aut blanditiis asperiores. Ea quibusdam similique temporibus. Veritatis in rerum voluptas totam.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"Voluptatibus velit provident doloremque. Laboriosam doloribus explicabo non accusamus. Distinctio accusantium ex ratione ab ex velit.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Illum voluptatum dolores vel eum vitae praesentium. Nobis labore earum ex ullam. Pariatur velit distinctio quas unde sint quia rem.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Harum ut autem dolorem eos qui tempore expedita. Deleniti consectetur soluta debitis. Aperiam est cum omnis eum nihil autem dolorum.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-05-03 11:19:36','2025-05-03 11:19:36'),(4,'[{\"img\":\"galleries\\/9.png\",\"description\":\"Voluptatibus velit provident doloremque. Laboriosam doloribus explicabo non accusamus. Distinctio accusantium ex ratione ab ex velit.\"},{\"img\":\"galleries\\/1.png\",\"description\":\"Adipisci cupiditate nemo ut repellat ut facere mollitia. Nostrum omnis excepturi dignissimos necessitatibus officiis vitae sunt.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"Nisi ratione iure fugit quos. Aut est sed quidem eveniet amet voluptatem aut. Ut temporibus possimus et quia tempore.\"},{\"img\":\"galleries\\/10.png\",\"description\":\"Voluptatem omnis autem vel quos eum. A earum neque rerum debitis. Nostrum vel nam quos. Dolor beatae quasi ut voluptas qui magnam eveniet.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Est ipsam quis vitae placeat. Dolore et ut debitis quisquam voluptas. Minus et ad quo cupiditate. Voluptas deleniti eveniet ipsum atque.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"Praesentium ipsum voluptate dolorum hic alias qui distinctio. Id nesciunt facere est sunt ut temporibus. Non laborum omnis iste fugiat alias qui qui.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Et ut nemo adipisci vel. Nulla eum qui ea. Repellendus et possimus sunt. Debitis illo est quia labore explicabo beatae.\"},{\"img\":\"galleries\\/5.png\",\"description\":\"Harum ut autem dolorem eos qui tempore expedita. Deleniti consectetur soluta debitis. Aperiam est cum omnis eum nihil autem dolorum.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"Quo fugiat illo molestiae aut blanditiis asperiores. Ea quibusdam similique temporibus. Veritatis in rerum voluptas totam.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Illum voluptatum dolores vel eum vitae praesentium. Nobis labore earum ex ullam. Pariatur velit distinctio quas unde sint quia rem.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-05-03 11:19:36','2025-05-03 11:19:36'),(5,'[{\"img\":\"galleries\\/5.png\",\"description\":\"Harum ut autem dolorem eos qui tempore expedita. Deleniti consectetur soluta debitis. Aperiam est cum omnis eum nihil autem dolorum.\"},{\"img\":\"galleries\\/4.png\",\"description\":\"Est ipsam quis vitae placeat. Dolore et ut debitis quisquam voluptas. Minus et ad quo cupiditate. Voluptas deleniti eveniet ipsum atque.\"},{\"img\":\"galleries\\/2.png\",\"description\":\"Illum voluptatum dolores vel eum vitae praesentium. Nobis labore earum ex ullam. Pariatur velit distinctio quas unde sint quia rem.\"},{\"img\":\"galleries\\/9.png\",\"description\":\"Voluptatibus velit provident doloremque. Laboriosam doloribus explicabo non accusamus. Distinctio accusantium ex ratione ab ex velit.\"},{\"img\":\"galleries\\/8.png\",\"description\":\"Praesentium ipsum voluptate dolorum hic alias qui distinctio. Id nesciunt facere est sunt ut temporibus. Non laborum omnis iste fugiat alias qui qui.\"},{\"img\":\"galleries\\/6.png\",\"description\":\"Et ut nemo adipisci vel. Nulla eum qui ea. Repellendus et possimus sunt. Debitis illo est quia labore explicabo beatae.\"},{\"img\":\"galleries\\/7.png\",\"description\":\"Nisi ratione iure fugit quos. Aut est sed quidem eveniet amet voluptatem aut. Ut temporibus possimus et quia tempore.\"},{\"img\":\"galleries\\/3.png\",\"description\":\"Quo fugiat illo molestiae aut blanditiis asperiores. Ea quibusdam similique temporibus. Veritatis in rerum voluptas totam.\"},{\"img\":\"galleries\\/10.png\",\"description\":\"Voluptatem omnis autem vel quos eum. A earum neque rerum debitis. Nostrum vel nam quos. Dolor beatae quasi ut voluptas qui magnam eveniet.\"},{\"img\":\"galleries\\/1.png\",\"description\":\"Adipisci cupiditate nemo ut repellat ut facere mollitia. Nostrum omnis excepturi dignissimos necessitatibus officiis vitae sunt.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-05-03 11:19:36','2025-05-03 11:19:36');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_amenities`
--

DROP TABLE IF EXISTS `ht_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_amenities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_amenities`
--

LOCK TABLES `ht_amenities` WRITE;
/*!40000 ALTER TABLE `ht_amenities` DISABLE KEYS */;
INSERT INTO `ht_amenities` VALUES (1,'Air conditioner','fal fa-bath','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(2,'High speed WiFi','fal fa-wifi','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(3,'Strong Locker','fal fa-key','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(4,'Breakfast','fal fa-cut','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(5,'Kitchen','fal fa-guitar','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(6,'Smart Security','fal fa-lock','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(7,'Cleaning','fal fa-broom','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(8,'Shower','fal fa-shower','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(9,'24/7 Online Support','fal fa-headphones-alt','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(10,'Grocery','fal fa-shopping-basket','published','2025-05-03 11:19:22','2025-05-03 11:19:22'),(11,'Single bed','fal fa-bed','published','2025-05-03 11:19:23','2025-05-03 11:19:23'),(12,'Expert Team','fal fa-users','published','2025-05-03 11:19:23','2025-05-03 11:19:23'),(13,'Shop near','fal fa-shopping-cart','published','2025-05-03 11:19:23','2025-05-03 11:19:23'),(14,'Towels','fal fa-bus','published','2025-05-03 11:19:23','2025-05-03 11:19:23');
/*!40000 ALTER TABLE `ht_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_amenities_translations`
--

DROP TABLE IF EXISTS `ht_amenities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_amenities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_amenities_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_amenities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_amenities_translations`
--

LOCK TABLES `ht_amenities_translations` WRITE;
/*!40000 ALTER TABLE `ht_amenities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_amenities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_booking_addresses`
--

DROP TABLE IF EXISTS `ht_booking_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_booking_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_booking_addresses`
--

LOCK TABLES `ht_booking_addresses` WRITE;
/*!40000 ALTER TABLE `ht_booking_addresses` DISABLE KEYS */;
INSERT INTO `ht_booking_addresses` VALUES (1,'Ahmad','Rosenbaum','(317) 516-8468','jolie.kunde@example.net','Kiribati','East Hayleefurt','Grantbury','68414-7601','30098 Waelchi Orchard\nNorth Raheemview, MO 84701',1,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(2,'Jose','Parisian','1-360-954-8745','fgottlieb@example.org','Trinidad and Tobago','Hayesstad','Wildermanberg','03665','3509 Turner Extension\nPurdyberg, OR 65004',2,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(3,'Milan','West','1-714-700-6227','kschuster@example.org','Syrian Arab Republic','Arjunberg','South Miahaven','21694-8763','34102 Fahey Field Apt. 023\nDeannaview, MO 31717-3283',3,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,'Kurt','Waelchi','+1 (463) 729-0260','nina40@example.net','Azerbaijan','Port Antonia','East Raquel','19699-8940','33747 Kiehn Forks Apt. 135\nTrevashire, OR 88547-1760',4,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(5,'Daniella','Gleichner','1-267-773-8196','nicolas54@example.com','Norfolk Island','Lillianatown','Annabellemouth','36099-1986','42405 Kiehn Ways Apt. 762\nNew Jaymeside, RI 14346',5,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(6,'Karl','Mayert','520.490.4667','kayla29@example.org','Saint Kitts and Nevis','Murphyburgh','Weberhaven','12859-2656','599 Renee Island\nLake Woodrowport, LA 67905',6,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(7,'Earl','Reichert','1-248-658-8504','omoen@example.com','Bouvet Island (Bouvetoya)','Haleystad','East Fletatown','58437-8555','7171 Pouros Stream Apt. 275\nSouth Sydnieport, HI 61359',7,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(8,'Doyle','Schumm','(240) 753-3608','misty.anderson@example.org','Anguilla','Shawnborough','West Carolanne','28102-8056','2707 Albertha Valley\nRauland, OK 52717-0622',8,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(9,'Veronica','Beatty','1-682-915-1488','devonte.spinka@example.org','Spain','New Frederique','Danielburgh','55034-0569','76647 D\'Amore Plains Apt. 876\nLonnyshire, WY 23954',9,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(10,'Cade','Rempel','940-283-2639','kmertz@example.com','Aruba','New Americoside','New Hyman','83250','718 Wayne Summit Suite 632\nLeorachester, FL 33128-7305',10,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(11,'Chadrick','Davis','973-817-7217','mohr.deborah@example.org','Mali','Gusikowskiborough','Zulaufberg','76278-9607','7474 Juwan Mission Apt. 243\nEast Annetteburgh, NC 06363',11,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(12,'Arnold','Swift','1-419-559-5850','huels.neil@example.org','Uzbekistan','Lake Huberthaven','Zakaryland','59065','4368 Larry Shoal Suite 852\nLake Alfredoton, LA 47502-3573',12,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(13,'Aiyana','Hamill','+19788609021','mohr.mae@example.net','Suriname','Walkerview','South Kylamouth','72481-3814','1879 Waters Dam\nWest Madelyn, UT 74102',13,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(14,'Lillie','Witting','+1-830-900-0875','cbrown@example.net','Spain','Zackview','East Haileemouth','04126-3768','871 Turcotte Meadow Suite 832\nSouth Esther, CA 44436-6647',14,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(15,'Johan','Kassulke','478.624.1660','alessia.nader@example.net','Vietnam','South Abigailport','Venaberg','90068-2368','56554 Alda Vista\nGenesistown, NV 44570-4109',15,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(16,'Leatha','Keeling','+1 (585) 584-3198','cummerata.maybell@example.org','Iraq','East Trisha','West Helena','56551','98477 Priscilla Landing Suite 844\nLake Marina, WI 07091-6696',16,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(17,'Gregoria','Schmeler','(229) 441-1370','jordy01@example.net','Tajikistan','South Gracielastad','Abshireberg','85599-2517','9833 Pagac Village\nHaaghaven, PA 18488-2606',17,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(18,'Mireille','Altenwerth','+16129918350','kfeeney@example.com','Grenada','Emilieberg','West Stewarthaven','27247-7175','4660 Kacie Green\nMartymouth, TX 66708-3891',18,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(19,'Chaz','Murazik','1-479-868-4978','ocruickshank@example.net','Nicaragua','North Faustinochester','Lake Pasquale','87815','7116 Nestor Avenue\nPort Anastacioberg, DE 27974-9605',19,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(20,'Jaida','Price','541.678.6148','wjaskolski@example.net','Northern Mariana Islands','Boganburgh','Reynastad','40052','787 Berta Causeway Apt. 550\nHoppefurt, MN 96441-5496',20,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(21,'Conner','McLaughlin','+1 (737) 322-5712','mcglynn.trey@example.net','Korea','New Erachester','East Kyra','07932-9430','5684 Shields Stream Apt. 745\nFabianside, AR 55903-2014',21,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(22,'Lia','Moen','+1 (419) 203-7551','vward@example.net','Saint Pierre and Miquelon','Zechariahmouth','Lake Aylinstad','74363-6577','2559 Eloisa Inlet\nCiceroshire, SC 61862',22,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(23,'Cloyd','Ziemann','(559) 919-7767','uhaley@example.net','Brunei Darussalam','Mortimerchester','North Carmellabury','78640-9287','59753 Vesta Pass Suite 337\nTrompchester, NH 55451',23,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(24,'Otto','Nikolaus','754-573-1072','kgreenfelder@example.org','Qatar','North Devantetown','Denaton','51233','6551 Autumn Village\nWavabury, UT 06252-4383',24,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(25,'Rory','Beier','1-351-957-5295','casper.quinten@example.com','Cuba','Dachchester','West Marisabury','87455-6415','8620 Isom Walk Suite 846\nLabadieberg, KY 93951',25,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(26,'Van','Christiansen','+1.380.666.1510','estefania22@example.net','Georgia','Osborneshire','Weberside','56933','280 Daugherty Island\nNorth Tamarahaven, NY 85651',26,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(27,'Kendall','Wiegand','+19046811573','alexandrine34@example.org','United Arab Emirates','Lake Kaydenshire','Smithchester','91320','88950 McKenzie Lodge Suite 270\nEast Virgil, NY 42464-5149',27,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(28,'Christian','Gutkowski','(646) 203-9529','gaylord.niko@example.com','Puerto Rico','Konopelskiburgh','North Christineshire','57652-6191','20152 Balistreri Shoals\nNew Gordonchester, MO 14547',28,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(29,'Breanna','Lehner','1-520-333-4902','ileuschke@example.com','Sweden','South Briana','Boylebury','85311','891 Powlowski Haven Suite 834\nPort Coreneport, WV 52200',29,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(30,'Chaya','Kautzer','985.637.5375','ewell11@example.com','Armenia','Abbottside','East Leramouth','79737-6496','748 Hoppe Road Suite 042\nWest Juniusshire, SD 27079-8525',30,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(31,'Alvis','Larkin','+1-804-876-9469','reuben.gislason@example.net','Sweden','Jeffrystad','Helmerton','12291','6331 Quitzon Knolls Suite 672\nNorth Amiya, MA 97586-9585',31,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(32,'Tillman','Daugherty','1-657-852-7548','erdman.anastasia@example.com','Uzbekistan','Reaganhaven','East Dax','59046','416 Elyse Villages\nPort Meaganfurt, OR 85784',32,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(33,'Yadira','Cummerata','(929) 287-7224','schiller.imogene@example.com','Bahrain','Wardtown','Candidachester','51326-4924','65085 Vesta Springs\nCareyport, WY 35547',33,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(34,'Elfrieda','Walsh','1-475-785-4049','abby11@example.com','United Arab Emirates','West Cristian','Port Kamronstad','28702-3008','391 Mraz Brook\nPort Dangelostad, NE 57969',34,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(35,'Gillian','Renner','(641) 527-8082','pagac.roberto@example.com','Saint Helena','Marcelinaton','South Abdielhaven','08859','499 Blanca Row Apt. 989\nSchimmelfort, FL 46267-3016',35,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(36,'Antwan','Schamberger','+1 (423) 208-2931','dannie44@example.net','France','Ceasarport','North Charliefurt','79465-6799','7831 Jensen Fork\nLake June, TX 89601',36,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(37,'Ivy','Kihn','1-689-604-4398','farrell.valerie@example.org','Guatemala','New Simeonborough','New Dale','80518','934 Zieme Lodge Apt. 434\nEast Rosalinda, CA 38696-7311',37,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(38,'Madeline','Ankunding','1-628-687-7936','veichmann@example.net','Seychelles','Port Nick','Aprilmouth','07251-5434','940 Edythe Heights Apt. 798\nMichelleport, FL 27394',38,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(39,'Gaylord','Stamm','+1-202-248-1637','senger.anderson@example.net','Libyan Arab Jamahiriya','Elinorechester','North Tyree','41302-3124','113 Waelchi Branch Apt. 177\nRosalialand, CO 30979-7317',39,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(40,'Elvera','Schamberger','1-828-754-8170','alphonso16@example.com','Tonga','Alannamouth','Elliottbury','80803','8027 Rahsaan Stream\nJarvismouth, OR 52730',40,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(41,'Larissa','Crist','+1-901-488-8267','khalil23@example.com','Germany','Grimesville','Wizaport','98941-3545','260 Muller Shores Suite 423\nKuvalisview, MN 58515',41,'2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_booking_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_booking_foods`
--

DROP TABLE IF EXISTS `ht_booking_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_booking_foods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `food_id` bigint unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ht_booking_foods_booking_id_food_id_unique` (`booking_id`,`food_id`),
  KEY `ht_booking_foods_booking_id_index` (`booking_id`),
  KEY `ht_booking_foods_food_id_index` (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_booking_foods`
--

LOCK TABLES `ht_booking_foods` WRITE;
/*!40000 ALTER TABLE `ht_booking_foods` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_booking_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_booking_rooms`
--

DROP TABLE IF EXISTS `ht_booking_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_booking_rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `room_id` bigint unsigned DEFAULT NULL,
  `room_image` text COLLATE utf8mb4_unicode_ci,
  `room_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `number_of_rooms` int NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_booking_rooms`
--

LOCK TABLES `ht_booking_rooms` WRITE;
/*!40000 ALTER TABLE `ht_booking_rooms` DISABLE KEYS */;
INSERT INTO `ht_booking_rooms` VALUES (1,1,8,'rooms/02.jpg','President Room',148.00,NULL,3,'2025-04-26','2025-04-30','2025-05-03 11:19:42','2025-05-03 11:19:42'),(2,2,8,'rooms/02.jpg','President Room',148.00,NULL,1,'2025-04-27','2025-05-01','2025-05-03 11:19:42','2025-05-03 11:19:42'),(3,3,5,'rooms/05.jpg','Family Suite',142.00,NULL,1,'2025-04-28','2025-04-30','2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,4,1,'rooms/01.jpg','Luxury Hall Of Fame',162.00,NULL,1,'2025-04-29','2025-05-01','2025-05-03 11:19:42','2025-05-03 11:19:42'),(5,5,3,'rooms/03.jpg','Pacific Room',178.00,NULL,1,'2025-04-30','2025-05-04','2025-05-03 11:19:42','2025-05-03 11:19:42'),(6,6,8,'rooms/02.jpg','President Room',148.00,NULL,3,'2025-05-01','2025-05-05','2025-05-03 11:19:43','2025-05-03 11:19:43'),(7,7,6,'rooms/06.jpg','Relax Suite',128.00,NULL,3,'2025-05-02','2025-05-05','2025-05-03 11:19:43','2025-05-03 11:19:43'),(8,8,5,'rooms/05.jpg','Family Suite',142.00,NULL,1,'2025-05-03','2025-05-06','2025-05-03 11:19:43','2025-05-03 11:19:43'),(9,9,5,'rooms/05.jpg','Family Suite',142.00,NULL,3,'2025-05-04','2025-05-07','2025-05-03 11:19:43','2025-05-03 11:19:43'),(10,10,5,'rooms/05.jpg','Family Suite',142.00,NULL,3,'2025-05-05','2025-05-08','2025-05-03 11:19:43','2025-05-03 11:19:43'),(11,11,4,'rooms/04.jpg','Junior Suite',128.00,NULL,2,'2025-05-06','2025-05-09','2025-05-03 11:19:43','2025-05-03 11:19:43'),(12,12,3,'rooms/03.jpg','Pacific Room',178.00,NULL,1,'2025-05-07','2025-05-09','2025-05-03 11:19:43','2025-05-03 11:19:43'),(13,13,5,'rooms/05.jpg','Family Suite',142.00,NULL,1,'2025-05-08','2025-05-12','2025-05-03 11:19:43','2025-05-03 11:19:43'),(14,14,3,'rooms/03.jpg','Pacific Room',178.00,NULL,2,'2025-05-09','2025-05-12','2025-05-03 11:19:43','2025-05-03 11:19:43'),(15,15,1,'rooms/01.jpg','Luxury Hall Of Fame',162.00,NULL,1,'2025-05-10','2025-05-12','2025-05-03 11:19:43','2025-05-03 11:19:43'),(16,16,8,'rooms/02.jpg','President Room',148.00,NULL,3,'2025-05-11','2025-05-13','2025-05-03 11:19:44','2025-05-03 11:19:44'),(17,17,3,'rooms/03.jpg','Pacific Room',178.00,NULL,3,'2025-05-12','2025-05-14','2025-05-03 11:19:44','2025-05-03 11:19:44'),(18,18,6,'rooms/06.jpg','Relax Suite',128.00,NULL,1,'2025-05-13','2025-05-17','2025-05-03 11:19:44','2025-05-03 11:19:44'),(19,19,6,'rooms/06.jpg','Relax Suite',128.00,NULL,3,'2025-05-14','2025-05-18','2025-05-03 11:19:44','2025-05-03 11:19:44'),(20,20,8,'rooms/02.jpg','President Room',148.00,NULL,3,'2025-05-15','2025-05-17','2025-05-03 11:19:44','2025-05-03 11:19:44'),(21,21,3,'rooms/03.jpg','Pacific Room',178.00,NULL,3,'2025-05-16','2025-05-19','2025-05-03 11:19:44','2025-05-03 11:19:44'),(22,22,6,'rooms/06.jpg','Relax Suite',128.00,NULL,1,'2025-05-17','2025-05-21','2025-05-03 11:19:44','2025-05-03 11:19:44'),(23,23,8,'rooms/02.jpg','President Room',148.00,NULL,2,'2025-05-18','2025-05-20','2025-05-03 11:19:44','2025-05-03 11:19:44'),(24,24,4,'rooms/04.jpg','Junior Suite',128.00,NULL,2,'2025-05-19','2025-05-21','2025-05-03 11:19:44','2025-05-03 11:19:44'),(25,25,1,'rooms/01.jpg','Luxury Hall Of Fame',162.00,NULL,1,'2025-05-20','2025-05-24','2025-05-03 11:19:45','2025-05-03 11:19:45'),(26,26,7,'rooms/01.jpg','Luxury Suite',153.00,NULL,2,'2025-05-21','2025-05-23','2025-05-03 11:19:45','2025-05-03 11:19:45'),(27,27,8,'rooms/02.jpg','President Room',148.00,NULL,3,'2025-05-22','2025-05-24','2025-05-03 11:19:45','2025-05-03 11:19:45'),(28,28,4,'rooms/04.jpg','Junior Suite',128.00,NULL,1,'2025-05-23','2025-05-26','2025-05-03 11:19:45','2025-05-03 11:19:45'),(29,29,7,'rooms/01.jpg','Luxury Suite',153.00,NULL,2,'2025-05-24','2025-05-26','2025-05-03 11:19:45','2025-05-03 11:19:45'),(30,30,5,'rooms/05.jpg','Family Suite',142.00,NULL,1,'2025-05-25','2025-05-29','2025-05-03 11:19:45','2025-05-03 11:19:45'),(31,31,4,'rooms/04.jpg','Junior Suite',128.00,NULL,1,'2025-05-26','2025-05-28','2025-05-03 11:19:45','2025-05-03 11:19:45'),(32,32,3,'rooms/03.jpg','Pacific Room',178.00,NULL,3,'2025-05-27','2025-05-31','2025-05-03 11:19:45','2025-05-03 11:19:45'),(33,33,1,'rooms/01.jpg','Luxury Hall Of Fame',162.00,NULL,2,'2025-05-28','2025-05-30','2025-05-03 11:19:45','2025-05-03 11:19:45'),(34,34,2,'rooms/02.jpg','Pendora Fame',145.00,NULL,1,'2025-05-29','2025-06-02','2025-05-03 11:19:45','2025-05-03 11:19:45'),(35,35,2,'rooms/02.jpg','Pendora Fame',145.00,NULL,2,'2025-05-30','2025-06-02','2025-05-03 11:19:46','2025-05-03 11:19:46'),(36,36,3,'rooms/03.jpg','Pacific Room',178.00,NULL,3,'2025-05-31','2025-06-04','2025-05-03 11:19:46','2025-05-03 11:19:46'),(37,37,6,'rooms/06.jpg','Relax Suite',128.00,NULL,1,'2025-06-01','2025-06-05','2025-05-03 11:19:46','2025-05-03 11:19:46'),(38,38,8,'rooms/02.jpg','President Room',148.00,NULL,2,'2025-06-02','2025-06-04','2025-05-03 11:19:46','2025-05-03 11:19:46'),(39,39,7,'rooms/01.jpg','Luxury Suite',153.00,NULL,1,'2025-06-03','2025-06-06','2025-05-03 11:19:46','2025-05-03 11:19:46'),(40,40,5,'rooms/05.jpg','Family Suite',142.00,NULL,2,'2025-06-04','2025-06-08','2025-05-03 11:19:46','2025-05-03 11:19:46'),(41,41,4,'rooms/04.jpg','Junior Suite',128.00,NULL,3,'2025-06-05','2025-06-08','2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_booking_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_booking_services`
--

DROP TABLE IF EXISTS `ht_booking_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_booking_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` bigint unsigned NOT NULL,
  `service_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_booking_services`
--

LOCK TABLES `ht_booking_services` WRITE;
/*!40000 ALTER TABLE `ht_booking_services` DISABLE KEYS */;
INSERT INTO `ht_booking_services` VALUES (1,1,1),(2,2,6),(3,3,4),(4,4,2),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,1),(10,10,4),(11,11,2),(12,12,1),(13,13,3),(14,14,1),(15,15,3),(16,16,2),(17,17,1),(18,18,6),(19,19,6),(20,20,4),(21,21,4),(22,22,2),(23,23,5),(24,24,4),(25,25,4),(26,26,6),(27,27,2),(28,28,2),(29,29,4),(30,30,4),(31,31,6),(32,32,6),(33,33,3),(34,34,3),(35,35,6),(36,36,1),(37,37,1),(38,38,6),(39,39,3),(40,40,1),(41,41,4);
/*!40000 ALTER TABLE `ht_booking_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_bookings`
--

DROP TABLE IF EXISTS `ht_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `booking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `coupon_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `requests` text COLLATE utf8mb4_unicode_ci,
  `arrival_time` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_guests` int DEFAULT NULL,
  `number_of_children` int NOT NULL DEFAULT '0',
  `payment_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `transaction_id` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ht_bookings_booking_number_unique` (`booking_number`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_bookings`
--

LOCK TABLES `ht_bookings` WRITE;
/*!40000 ALTER TABLE `ht_bookings` DISABLE KEYS */;
INSERT INTO `ht_bookings` VALUES (1,NULL,444.00,444.00,0.00,NULL,0.00,NULL,'Aspernatur voluptatem corporis et inventore.',NULL,3,0,1,9,'UZtNy0hVnOmHMEWMy9TU','pending','2025-05-03 11:19:42','2025-05-03 11:19:42'),(2,NULL,148.00,148.00,0.00,NULL,0.00,NULL,'Assumenda esse ducimus ducimus est.',NULL,1,0,2,5,'NFNOefslLgK8rDD6qBDK','pending','2025-05-03 11:19:42','2025-05-03 11:19:42'),(3,NULL,142.00,142.00,0.00,NULL,0.00,NULL,'Qui quas soluta consequuntur consequuntur eaque sint.',NULL,1,0,3,4,'OXMcsmkC7VLh6RPqfCWR','cancelled','2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,NULL,162.00,162.00,0.00,NULL,0.00,NULL,'Qui ad et ipsam qui.',NULL,2,0,4,1,'H8t47MWb7O6oIV18XCuo','completed','2025-05-03 11:19:42','2025-05-03 11:19:42'),(5,NULL,178.00,178.00,0.00,NULL,0.00,NULL,'Quibusdam est est voluptatum quis.',NULL,1,0,5,9,'0upJEzPP7hJYW9DRY18w','completed','2025-05-03 11:19:42','2025-05-03 11:19:42'),(6,NULL,444.00,444.00,0.00,NULL,0.00,NULL,'Saepe porro id qui repudiandae est debitis.',NULL,9,0,6,5,'E0IT9goPdgFwVchxTllP','cancelled','2025-05-03 11:19:43','2025-05-03 11:19:43'),(7,NULL,384.00,384.00,0.00,NULL,0.00,NULL,'Ipsa labore qui facilis fugit sunt.',NULL,9,0,7,9,'cnvo6WvaB27WahoovpoC','cancelled','2025-05-03 11:19:43','2025-05-03 11:19:43'),(8,NULL,142.00,142.00,0.00,NULL,0.00,NULL,'Est facilis veritatis voluptates atque qui vel molestiae fugiat.',NULL,1,0,8,11,'bYQMQnv7HHgVYCgJhHGR','processing','2025-05-03 11:19:43','2025-05-03 11:19:43'),(9,NULL,426.00,426.00,0.00,NULL,0.00,NULL,'Omnis iste porro aliquid sequi quibusdam quam non.',NULL,9,0,9,8,'BDSlqirAiIzJXv10ntPP','completed','2025-05-03 11:19:43','2025-05-03 11:19:43'),(10,NULL,426.00,426.00,0.00,NULL,0.00,NULL,'Animi laudantium vel hic magnam asperiores quis ipsam.',NULL,6,0,10,6,'Ah84F2m0AlQfWH9coCW2','completed','2025-05-03 11:19:43','2025-05-03 11:19:43'),(11,NULL,256.00,256.00,0.00,NULL,0.00,NULL,'Provident quos et enim pariatur rerum.',NULL,4,0,11,3,'AOYnJC5MBEfdbWWnNjqL','processing','2025-05-03 11:19:43','2025-05-03 11:19:43'),(12,NULL,178.00,178.00,0.00,NULL,0.00,NULL,'Eos expedita vero occaecati vel nemo eum.',NULL,1,0,12,6,'XvgqsZJD50SgjVKO6pKW','cancelled','2025-05-03 11:19:43','2025-05-03 11:19:43'),(13,NULL,142.00,142.00,0.00,NULL,0.00,NULL,'Laboriosam aut tempora officia.',NULL,1,0,13,11,'9qcnEZRAzz43XKSLh2ev','completed','2025-05-03 11:19:43','2025-05-03 11:19:43'),(14,NULL,356.00,356.00,0.00,NULL,0.00,NULL,'Tempora ea impedit harum libero.',NULL,2,0,14,9,'HHKdcVzMT6VcVPN2tLNC','processing','2025-05-03 11:19:43','2025-05-03 11:19:43'),(15,NULL,162.00,162.00,0.00,NULL,0.00,NULL,'Enim est officia iusto magni.',NULL,3,0,15,10,'OtEJW3TkPd7fXKf7MuBU','pending','2025-05-03 11:19:43','2025-05-03 11:19:44'),(16,NULL,444.00,444.00,0.00,NULL,0.00,NULL,'Magnam sequi minima praesentium ipsa.',NULL,9,0,16,4,'n4n65J7NgCqZwEqe2l5k','completed','2025-05-03 11:19:44','2025-05-03 11:19:44'),(17,NULL,534.00,534.00,0.00,NULL,0.00,NULL,'Cupiditate delectus aut sint ab qui deserunt omnis.',NULL,6,0,17,4,'XVIfLKeUNvpJkTYfl0jc','cancelled','2025-05-03 11:19:44','2025-05-03 11:19:44'),(18,NULL,128.00,128.00,0.00,NULL,0.00,NULL,'A dicta delectus omnis veritatis.',NULL,3,0,18,9,'rYFZzq2sAx1NlmdFLUq9','pending','2025-05-03 11:19:44','2025-05-03 11:19:44'),(19,NULL,384.00,384.00,0.00,NULL,0.00,NULL,'Non provident voluptatibus blanditiis ipsam.',NULL,6,0,19,11,'30MwjUzEEZEhDfUR1nWA','cancelled','2025-05-03 11:19:44','2025-05-03 11:19:44'),(20,NULL,444.00,444.00,0.00,NULL,0.00,NULL,'Fuga consequatur blanditiis accusamus saepe et voluptatibus consectetur.',NULL,9,0,20,1,'ksuPJlJAXsFfNw9kdRXI','processing','2025-05-03 11:19:44','2025-05-03 11:19:44'),(21,NULL,534.00,534.00,0.00,NULL,0.00,NULL,'Modi debitis incidunt voluptas quo sunt ipsum beatae.',NULL,3,0,21,6,'ii8aeyRbm7DtLxQvC4OT','processing','2025-05-03 11:19:44','2025-05-03 11:19:44'),(22,NULL,128.00,128.00,0.00,NULL,0.00,NULL,'Earum commodi sit sed et tempore enim.',NULL,3,0,22,10,'WzKwi6FwUn17QlpJEd7m','processing','2025-05-03 11:19:44','2025-05-03 11:19:44'),(23,NULL,296.00,296.00,0.00,NULL,0.00,NULL,'Vel molestiae qui est delectus optio rerum.',NULL,6,0,23,9,'ivttbDIvz3HmraJhVuCw','cancelled','2025-05-03 11:19:44','2025-05-03 11:19:44'),(24,NULL,256.00,256.00,0.00,NULL,0.00,NULL,'Id neque sit temporibus.',NULL,4,0,24,5,'ZzUrvI0ht4tHeRMP4Wl2','completed','2025-05-03 11:19:44','2025-05-03 11:19:44'),(25,NULL,162.00,162.00,0.00,NULL,0.00,NULL,'Laudantium autem qui ullam quia magnam id.',NULL,1,0,25,9,'1r6IiJXYYw4pbfg0t9jY','cancelled','2025-05-03 11:19:45','2025-05-03 11:19:45'),(26,NULL,306.00,306.00,0.00,NULL,0.00,NULL,'Possimus perferendis iure ut.',NULL,6,0,26,10,'i6XHrFtUqkXgAnoySZMV','pending','2025-05-03 11:19:45','2025-05-03 11:19:45'),(27,NULL,444.00,444.00,0.00,NULL,0.00,NULL,'Velit earum eius assumenda.',NULL,9,0,27,6,'xhJiftfFjens15odCQXH','processing','2025-05-03 11:19:45','2025-05-03 11:19:45'),(28,NULL,128.00,128.00,0.00,NULL,0.00,NULL,'Quos exercitationem provident quam voluptas rem.',NULL,2,0,28,7,'PnfxdOTxEYNl3Mu0eJoS','processing','2025-05-03 11:19:45','2025-05-03 11:19:45'),(29,NULL,306.00,306.00,0.00,NULL,0.00,NULL,'Ut minima ratione nulla et nemo odio dicta.',NULL,4,0,29,1,'Fxno8IFXJdAaDF9eGLcP','processing','2025-05-03 11:19:45','2025-05-03 11:19:45'),(30,NULL,142.00,142.00,0.00,NULL,0.00,NULL,'Nostrum minima unde enim ut eos.',NULL,1,0,30,8,'9JbZUsrzSWpDTfK5KkhN','processing','2025-05-03 11:19:45','2025-05-03 11:19:45'),(31,NULL,128.00,128.00,0.00,NULL,0.00,NULL,'Quisquam voluptas earum architecto ea.',NULL,2,0,31,4,'tH3sqJ51cEqUsBbauEXo','cancelled','2025-05-03 11:19:45','2025-05-03 11:19:45'),(32,NULL,534.00,534.00,0.00,NULL,0.00,NULL,'Blanditiis nulla minima est non repellat.',NULL,6,0,32,1,'qWoAk0j1k180D5lB05JR','cancelled','2025-05-03 11:19:45','2025-05-03 11:19:45'),(33,NULL,324.00,324.00,0.00,NULL,0.00,NULL,'Quod fugiat quibusdam magnam repudiandae nostrum vel.',NULL,2,0,33,6,'vwW1FhqYOtn9CCSdul1O','processing','2025-05-03 11:19:45','2025-05-03 11:19:45'),(34,NULL,145.00,145.00,0.00,NULL,0.00,NULL,'Sed et voluptatem aut qui.',NULL,3,0,34,5,'SqQ0aw2I8lnomGzSU7JK','pending','2025-05-03 11:19:45','2025-05-03 11:19:45'),(35,NULL,290.00,290.00,0.00,NULL,0.00,NULL,'Id rerum ut qui ea.',NULL,4,0,35,2,'g7FfeCr4oubNRs4vjePr','processing','2025-05-03 11:19:46','2025-05-03 11:19:46'),(36,NULL,534.00,534.00,0.00,NULL,0.00,NULL,'Officia provident harum quisquam in ipsam asperiores totam.',NULL,6,0,36,5,'0QgMCjMCuhRXMlWWGS2B','cancelled','2025-05-03 11:19:46','2025-05-03 11:19:46'),(37,NULL,128.00,128.00,0.00,NULL,0.00,NULL,'Natus animi sequi est voluptatem.',NULL,3,0,37,1,'8qLli7Fx833uR9ApyTZE','processing','2025-05-03 11:19:46','2025-05-03 11:19:46'),(38,NULL,296.00,296.00,0.00,NULL,0.00,NULL,'Expedita et repudiandae aliquam ab.',NULL,4,0,38,10,'owgEZ40aP109SngD9rvN','completed','2025-05-03 11:19:46','2025-05-03 11:19:46'),(39,NULL,153.00,153.00,0.00,NULL,0.00,NULL,'Fuga soluta accusantium repudiandae similique.',NULL,3,0,39,1,'6WkfTXvmYnS8ncB8dL1k','pending','2025-05-03 11:19:46','2025-05-03 11:19:46'),(40,NULL,284.00,284.00,0.00,NULL,0.00,NULL,'Quo a impedit amet necessitatibus.',NULL,4,0,40,1,'7IdRt6OOwjMtkiAFTuNo','pending','2025-05-03 11:19:46','2025-05-03 11:19:46'),(41,NULL,384.00,384.00,0.00,NULL,0.00,NULL,'Voluptatem cumque vel sed magnam fuga.',NULL,3,0,41,1,'ySIRGTpuzHDkoyH6X5IH','pending','2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_coupons`
--

DROP TABLE IF EXISTS `ht_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ht_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_coupons`
--

LOCK TABLES `ht_coupons` WRITE;
/*!40000 ALTER TABLE `ht_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_currencies`
--

DROP TABLE IF EXISTS `ht_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_currencies`
--

LOCK TABLES `ht_currencies` WRITE;
/*!40000 ALTER TABLE `ht_currencies` DISABLE KEYS */;
INSERT INTO `ht_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(2,'EUR','€',0,2,1,0,0.91,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(3,'VND','₫',0,0,2,0,23717.5,'2025-05-03 11:19:21','2025-05-03 11:19:21');
/*!40000 ALTER TABLE `ht_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_customer_password_resets`
--

DROP TABLE IF EXISTS `ht_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_customer_password_resets`
--

LOCK TABLES `ht_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ht_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_customers`
--

DROP TABLE IF EXISTS `ht_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ht_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_customers`
--

LOCK TABLES `ht_customers` WRITE;
/*!40000 ALTER TABLE `ht_customers` DISABLE KEYS */;
INSERT INTO `ht_customers` VALUES (1,'Aimee','Quigley','michele71@example.net','$2y$12$UT7KA0oaxv2vV7cdHeQHF.7PMSO1R7Pt1hRGGtaLlGUqxEWu9USvK','customers/1.jpg',NULL,'+15518054411',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(2,'Bennett','Rolfson','josefina95@example.net','$2y$12$LhpTc3A71y3.jErpnyb5vePTENCXYd7kU6qEwPUDDUsyK.CbQ5ZuW','customers/2.jpg',NULL,'+17814924791',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(3,'Leonard','Beahan','zdickens@example.com','$2y$12$Ay3WmzpLzeVMJlLoRryvMeoLh3mI353X5vPvjjm1N8iYerJ7aPZXy','customers/3.jpg',NULL,'+19716245334',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(4,'Dariana','Kulas','dbaumbach@example.org','$2y$12$ZchOCjBW.kos5yV7VPk1COUNWbNwBlKaEyuIqzKCO3L1Wrcn8FDDC','customers/4.jpg',NULL,'+16782762347',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(5,'Nathan','Murphy','crystel.schuster@example.net','$2y$12$DDXaKR5RSqQh4wE4DT3G8O8MnPXBl1g04iUmlKtRSOeK3ZeaUHfPi','customers/5.jpg',NULL,'+19043415575',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(6,'Simone','Nicolas','delta03@example.org','$2y$12$IHT5a4MoCDTCm1X6ZELuM.ofKyywSRFrdd/bPRcynPu5nt2FgeFna','customers/6.jpg',NULL,'+13324135416',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(7,'Hadley','Runolfsson','caden.marquardt@example.org','$2y$12$IcoNZqoqeXE/i77NOzVkpO/5.CEA14rYbg0jmI0u8YPTxNC2sLF9G','customers/7.jpg',NULL,'+16238285009',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(8,'Dakota','Von','nondricka@example.org','$2y$12$aXDIswPChvHBB.hedbJ49uIjBDMD616JXESnVtqgMPRq7WgiJdNXa','customers/8.jpg',NULL,'+18157163005',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(9,'Nina','Pagac','hoeger.everette@example.org','$2y$12$koupyz0HLTrosRgj4Iv4H.OXsBnian2RgkEolvpEn8n78j7iZme7K','customers/9.jpg',NULL,'+14258043322',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(10,'Korey','Carter','swift.albertha@example.net','$2y$12$RUlF4xip1QaJoH/yJrupJOzZ/qbsY0yPxu50UR0hH6zG2WLrTsJ06','customers/10.jpg',NULL,'+12546365126',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL),(11,'Fredy','Muller','customer@archielite.com','$2y$12$Xy6jM7A5scLxOc7a9VP6zuNy7484doGZQ2MlO.tbZGLieUPta9Nva','customers/6.jpg',NULL,'+16805390772',NULL,NULL,NULL,NULL,NULL,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,NULL);
/*!40000 ALTER TABLE `ht_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_features`
--

DROP TABLE IF EXISTS `ht_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_features`
--

LOCK TABLES `ht_features` WRITE;
/*!40000 ALTER TABLE `ht_features` DISABLE KEYS */;
INSERT INTO `ht_features` VALUES (1,'Have High Rating','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-rating',1,'published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(2,'Quiet Hours','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-clock',1,'published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(3,'Best Locations','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-location-pin',1,'published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(4,'Free Cancellation','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-clock-1',0,'published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(5,'Payment Options','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-credit-card',0,'published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(6,'Special Offers','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','flaticon-discount',0,'published','2025-05-03 11:19:26','2025-05-03 11:19:26');
/*!40000 ALTER TABLE `ht_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_features_translations`
--

DROP TABLE IF EXISTS `ht_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_features_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_features_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_features_translations`
--

LOCK TABLES `ht_features_translations` WRITE;
/*!40000 ALTER TABLE `ht_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_food_types`
--

DROP TABLE IF EXISTS `ht_food_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_food_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_food_types`
--

LOCK TABLES `ht_food_types` WRITE;
/*!40000 ALTER TABLE `ht_food_types` DISABLE KEYS */;
INSERT INTO `ht_food_types` VALUES (1,'Chicken','flaticon-boiled','published','2025-05-03 11:19:24','2025-05-03 11:19:24'),(2,'Italian','flaticon-pizza','published','2025-05-03 11:19:24','2025-05-03 11:19:24'),(3,'Coffee','flaticon-coffee','published','2025-05-03 11:19:24','2025-05-03 11:19:24'),(4,'Bake Cake','flaticon-cake','published','2025-05-03 11:19:24','2025-05-03 11:19:24'),(5,'Cookies','flaticon-cookie','published','2025-05-03 11:19:24','2025-05-03 11:19:24'),(6,'Cocktail','flaticon-cocktail','published','2025-05-03 11:19:24','2025-05-03 11:19:24');
/*!40000 ALTER TABLE `ht_food_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_food_types_translations`
--

DROP TABLE IF EXISTS `ht_food_types_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_food_types_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_food_types_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ht_food_types_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_food_types_translations`
--

LOCK TABLES `ht_food_types_translations` WRITE;
/*!40000 ALTER TABLE `ht_food_types_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_food_types_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_foods`
--

DROP TABLE IF EXISTS `ht_foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_foods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,0) unsigned DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `food_type_id` bigint unsigned NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_foods`
--

LOCK TABLES `ht_foods` WRITE;
/*!40000 ALTER TABLE `ht_foods` DISABLE KEYS */;
INSERT INTO `ht_foods` VALUES (1,'Eggs &amp; Bacon','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,190,NULL,1,'foods/01.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(2,'Tea or Coffee','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,147,NULL,1,'foods/02.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(3,'Chia Oatmeal','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,198,NULL,1,'foods/03.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(4,'Juice','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,195,NULL,1,'foods/04.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(5,'Chia Oatmeal','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,170,NULL,2,'foods/05.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(6,'Fruit Parfait','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,115,NULL,2,'foods/06.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(7,'Marmalade Selection','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,123,NULL,3,'foods/07.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(8,'Cheese Platen','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,107,NULL,4,'foods/08.jpg','published','2025-05-03 11:19:25','2025-05-03 11:19:25'),(9,'Avocado Toast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,142,NULL,5,'foods/09.jpg','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(10,'Avocado Toast','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.',NULL,162,NULL,6,'foods/10.jpg','published','2025-05-03 11:19:26','2025-05-03 11:19:26');
/*!40000 ALTER TABLE `ht_foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_foods_translations`
--

DROP TABLE IF EXISTS `ht_foods_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_foods_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_foods_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_foods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_foods_translations`
--

LOCK TABLES `ht_foods_translations` WRITE;
/*!40000 ALTER TABLE `ht_foods_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_foods_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_invoice_items`
--

DROP TABLE IF EXISTS `ht_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_invoice_items`
--

LOCK TABLES `ht_invoice_items` WRITE;
/*!40000 ALTER TABLE `ht_invoice_items` DISABLE KEYS */;
INSERT INTO `ht_invoice_items` VALUES (1,1,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(2,1,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(3,2,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,2,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(5,3,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(6,3,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(7,4,'Luxury Hall Of Fame','',1,162.00,0.00,0.00,162.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(8,4,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(9,5,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(10,5,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(11,6,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(12,6,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(13,7,'Relax Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(14,7,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(15,8,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(16,8,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(17,9,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(18,9,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(19,10,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(20,10,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(21,11,'Junior Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(22,11,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(23,12,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(24,12,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(25,13,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(26,13,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(27,14,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(28,14,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(29,15,'Luxury Hall Of Fame','',1,162.00,0.00,0.00,162.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(30,15,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(31,16,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(32,16,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(33,17,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(34,17,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(35,18,'Relax Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(36,18,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(37,19,'Relax Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(38,19,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(39,20,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(40,20,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(41,21,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(42,21,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(43,22,'Relax Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(44,22,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(45,23,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(46,23,'Restaurants &amp; Bars (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(47,24,'Junior Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(48,24,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(49,25,'Luxury Hall Of Fame','',1,162.00,0.00,0.00,162.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(50,25,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(51,26,'Luxury Suite','',1,153.00,0.00,0.00,153.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(52,26,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(53,27,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(54,27,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(55,28,'Junior Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(56,28,'Privet Beach (extra service)','',1,30.00,0.00,0.00,30.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(57,29,'Luxury Suite','',1,153.00,0.00,0.00,153.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(58,29,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(59,30,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(60,30,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(61,31,'Junior Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(62,31,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(63,32,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(64,32,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(65,33,'Luxury Hall Of Fame','',1,162.00,0.00,0.00,162.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(66,33,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(67,34,'Pendora Fame','',1,145.00,0.00,0.00,145.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(68,34,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(69,35,'Pendora Fame','',1,145.00,0.00,0.00,145.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(70,35,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(71,36,'Pacific Room','',1,178.00,0.00,0.00,178.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(72,36,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(73,37,'Relax Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(74,37,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(75,38,'President Room','',1,148.00,0.00,0.00,148.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(76,38,'Special Offers (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(77,39,'Luxury Suite','',1,153.00,0.00,0.00,153.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(78,39,'Best Accommodation (extra service)','',1,50.00,0.00,0.00,50.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(79,40,'Family Suite','',1,142.00,0.00,0.00,142.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(80,40,'Quality Room (extra service)','',1,100.00,0.00,0.00,100.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(81,41,'Junior Suite','',1,128.00,0.00,0.00,128.00,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(82,41,'Wellness &amp; Spa (extra service)','',1,10.00,0.00,0.00,10.00,'2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_invoices`
--

DROP TABLE IF EXISTS `ht_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ht_invoices_code_unique` (`code`),
  KEY `ht_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ht_invoices_payment_id_index` (`payment_id`),
  KEY `ht_invoices_status_index` (`status`),
  KEY `ht_invoices_customer_id_index` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_invoices`
--

LOCK TABLES `ht_invoices` WRITE;
/*!40000 ALTER TABLE `ht_invoices` DISABLE KEYS */;
INSERT INTO `ht_invoices` VALUES (1,9,'AhmadRosenbaum','jolie.kunde@example.net','(317) 516-8468','30098 Waelchi Orchard\nNorth Raheemview, MO 84701, Grantbury, East Hayleefurt, Kiribati, 68414-7601, ','Aspernatur voluptatem corporis et inventore.',1,'Botble\\Hotel\\Models\\Booking',1,'INV-1',444.00,0.00,0.00,444.00,'completed',NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(2,5,'JoseParisian','fgottlieb@example.org','1-360-954-8745','3509 Turner Extension\nPurdyberg, OR 65004, Wildermanberg, Hayesstad, Trinidad and Tobago, 03665, ','Assumenda esse ducimus ducimus est.',2,'Botble\\Hotel\\Models\\Booking',2,'INV-2',148.00,0.00,0.00,148.00,'canceled',NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(3,4,'MilanWest','kschuster@example.org','1-714-700-6227','34102 Fahey Field Apt. 023\nDeannaview, MO 31717-3283, South Miahaven, Arjunberg, Syrian Arab Republic, 21694-8763, ','Qui quas soluta consequuntur consequuntur eaque sint.',3,'Botble\\Hotel\\Models\\Booking',3,'INV-3',142.00,0.00,0.00,142.00,'canceled',NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,1,'KurtWaelchi','nina40@example.net','+1 (463) 729-0260','33747 Kiehn Forks Apt. 135\nTrevashire, OR 88547-1760, East Raquel, Port Antonia, Azerbaijan, 19699-8940, ','Qui ad et ipsam qui.',4,'Botble\\Hotel\\Models\\Booking',4,'INV-4',162.00,0.00,0.00,162.00,'completed',NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(5,9,'DaniellaGleichner','nicolas54@example.com','1-267-773-8196','42405 Kiehn Ways Apt. 762\nNew Jaymeside, RI 14346, Annabellemouth, Lillianatown, Norfolk Island, 36099-1986, ','Quibusdam est est voluptatum quis.',5,'Botble\\Hotel\\Models\\Booking',5,'INV-5',178.00,0.00,0.00,178.00,'completed',NULL,'2025-05-03 11:19:42','2025-05-03 11:19:43'),(6,5,'KarlMayert','kayla29@example.org','520.490.4667','599 Renee Island\nLake Woodrowport, LA 67905, Weberhaven, Murphyburgh, Saint Kitts and Nevis, 12859-2656, ','Saepe porro id qui repudiandae est debitis.',6,'Botble\\Hotel\\Models\\Booking',6,'INV-6',444.00,0.00,0.00,444.00,'pending',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(7,9,'EarlReichert','omoen@example.com','1-248-658-8504','7171 Pouros Stream Apt. 275\nSouth Sydnieport, HI 61359, East Fletatown, Haleystad, Bouvet Island (Bouvetoya), 58437-8555, ','Ipsa labore qui facilis fugit sunt.',7,'Botble\\Hotel\\Models\\Booking',7,'INV-7',384.00,0.00,0.00,384.00,'pending',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(8,11,'DoyleSchumm','misty.anderson@example.org','(240) 753-3608','2707 Albertha Valley\nRauland, OK 52717-0622, West Carolanne, Shawnborough, Anguilla, 28102-8056, ','Est facilis veritatis voluptates atque qui vel molestiae fugiat.',8,'Botble\\Hotel\\Models\\Booking',8,'INV-8',142.00,0.00,0.00,142.00,'pending',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(9,8,'VeronicaBeatty','devonte.spinka@example.org','1-682-915-1488','76647 D\'Amore Plains Apt. 876\nLonnyshire, WY 23954, Danielburgh, New Frederique, Spain, 55034-0569, ','Omnis iste porro aliquid sequi quibusdam quam non.',9,'Botble\\Hotel\\Models\\Booking',9,'INV-9',426.00,0.00,0.00,426.00,'completed',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(10,6,'CadeRempel','kmertz@example.com','940-283-2639','718 Wayne Summit Suite 632\nLeorachester, FL 33128-7305, New Hyman, New Americoside, Aruba, 83250, ','Animi laudantium vel hic magnam asperiores quis ipsam.',10,'Botble\\Hotel\\Models\\Booking',10,'INV-10',426.00,0.00,0.00,426.00,'canceled',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(11,3,'ChadrickDavis','mohr.deborah@example.org','973-817-7217','7474 Juwan Mission Apt. 243\nEast Annetteburgh, NC 06363, Zulaufberg, Gusikowskiborough, Mali, 76278-9607, ','Provident quos et enim pariatur rerum.',11,'Botble\\Hotel\\Models\\Booking',11,'INV-11',256.00,0.00,0.00,256.00,'canceled',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(12,6,'ArnoldSwift','huels.neil@example.org','1-419-559-5850','4368 Larry Shoal Suite 852\nLake Alfredoton, LA 47502-3573, Zakaryland, Lake Huberthaven, Uzbekistan, 59065, ','Eos expedita vero occaecati vel nemo eum.',12,'Botble\\Hotel\\Models\\Booking',12,'INV-12',178.00,0.00,0.00,178.00,'completed','2025-05-03 11:19:43','2025-05-03 11:19:43','2025-05-03 11:19:43'),(13,11,'AiyanaHamill','mohr.mae@example.net','+19788609021','1879 Waters Dam\nWest Madelyn, UT 74102, South Kylamouth, Walkerview, Suriname, 72481-3814, ','Laboriosam aut tempora officia.',13,'Botble\\Hotel\\Models\\Booking',13,'INV-13',142.00,0.00,0.00,142.00,'completed',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43'),(14,9,'LillieWitting','cbrown@example.net','+1-830-900-0875','871 Turcotte Meadow Suite 832\nSouth Esther, CA 44436-6647, East Haileemouth, Zackview, Spain, 04126-3768, ','Tempora ea impedit harum libero.',14,'Botble\\Hotel\\Models\\Booking',14,'INV-14',356.00,0.00,0.00,356.00,'completed','2025-05-03 11:19:43','2025-05-03 11:19:43','2025-05-03 11:19:43'),(15,10,'JohanKassulke','alessia.nader@example.net','478.624.1660','56554 Alda Vista\nGenesistown, NV 44570-4109, Venaberg, South Abigailport, Vietnam, 90068-2368, ','Enim est officia iusto magni.',15,'Botble\\Hotel\\Models\\Booking',15,'INV-15',162.00,0.00,0.00,162.00,'completed',NULL,'2025-05-03 11:19:43','2025-05-03 11:19:44'),(16,4,'LeathaKeeling','cummerata.maybell@example.org','+1 (585) 584-3198','98477 Priscilla Landing Suite 844\nLake Marina, WI 07091-6696, West Helena, East Trisha, Iraq, 56551, ','Magnam sequi minima praesentium ipsa.',16,'Botble\\Hotel\\Models\\Booking',16,'INV-16',444.00,0.00,0.00,444.00,'canceled',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(17,4,'GregoriaSchmeler','jordy01@example.net','(229) 441-1370','9833 Pagac Village\nHaaghaven, PA 18488-2606, Abshireberg, South Gracielastad, Tajikistan, 85599-2517, ','Cupiditate delectus aut sint ab qui deserunt omnis.',17,'Botble\\Hotel\\Models\\Booking',17,'INV-17',534.00,0.00,0.00,534.00,'canceled',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(18,9,'MireilleAltenwerth','kfeeney@example.com','+16129918350','4660 Kacie Green\nMartymouth, TX 66708-3891, West Stewarthaven, Emilieberg, Grenada, 27247-7175, ','A dicta delectus omnis veritatis.',18,'Botble\\Hotel\\Models\\Booking',18,'INV-18',128.00,0.00,0.00,128.00,'pending',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(19,11,'ChazMurazik','ocruickshank@example.net','1-479-868-4978','7116 Nestor Avenue\nPort Anastacioberg, DE 27974-9605, Lake Pasquale, North Faustinochester, Nicaragua, 87815, ','Non provident voluptatibus blanditiis ipsam.',19,'Botble\\Hotel\\Models\\Booking',19,'INV-19',384.00,0.00,0.00,384.00,'completed',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(20,1,'JaidaPrice','wjaskolski@example.net','541.678.6148','787 Berta Causeway Apt. 550\nHoppefurt, MN 96441-5496, Reynastad, Boganburgh, Northern Mariana Islands, 40052, ','Fuga consequatur blanditiis accusamus saepe et voluptatibus consectetur.',20,'Botble\\Hotel\\Models\\Booking',20,'INV-20',444.00,0.00,0.00,444.00,'canceled',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(21,6,'ConnerMcLaughlin','mcglynn.trey@example.net','+1 (737) 322-5712','5684 Shields Stream Apt. 745\nFabianside, AR 55903-2014, East Kyra, New Erachester, Korea, 07932-9430, ','Modi debitis incidunt voluptas quo sunt ipsum beatae.',21,'Botble\\Hotel\\Models\\Booking',21,'INV-21',534.00,0.00,0.00,534.00,'completed','2025-05-03 11:19:44','2025-05-03 11:19:44','2025-05-03 11:19:44'),(22,10,'LiaMoen','vward@example.net','+1 (419) 203-7551','2559 Eloisa Inlet\nCiceroshire, SC 61862, Lake Aylinstad, Zechariahmouth, Saint Pierre and Miquelon, 74363-6577, ','Earum commodi sit sed et tempore enim.',22,'Botble\\Hotel\\Models\\Booking',22,'INV-22',128.00,0.00,0.00,128.00,'completed',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(23,9,'CloydZiemann','uhaley@example.net','(559) 919-7767','59753 Vesta Pass Suite 337\nTrompchester, NH 55451, North Carmellabury, Mortimerchester, Brunei Darussalam, 78640-9287, ','Vel molestiae qui est delectus optio rerum.',23,'Botble\\Hotel\\Models\\Booking',23,'INV-23',296.00,0.00,0.00,296.00,'completed',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(24,5,'OttoNikolaus','kgreenfelder@example.org','754-573-1072','6551 Autumn Village\nWavabury, UT 06252-4383, Denaton, North Devantetown, Qatar, 51233, ','Id neque sit temporibus.',24,'Botble\\Hotel\\Models\\Booking',24,'INV-24',256.00,0.00,0.00,256.00,'canceled',NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44'),(25,9,'RoryBeier','casper.quinten@example.com','1-351-957-5295','8620 Isom Walk Suite 846\nLabadieberg, KY 93951, West Marisabury, Dachchester, Cuba, 87455-6415, ','Laudantium autem qui ullam quia magnam id.',25,'Botble\\Hotel\\Models\\Booking',25,'INV-25',162.00,0.00,0.00,162.00,'completed','2025-05-03 11:19:45','2025-05-03 11:19:45','2025-05-03 11:19:45'),(26,10,'VanChristiansen','estefania22@example.net','+1.380.666.1510','280 Daugherty Island\nNorth Tamarahaven, NY 85651, Weberside, Osborneshire, Georgia, 56933, ','Possimus perferendis iure ut.',26,'Botble\\Hotel\\Models\\Booking',26,'INV-26',306.00,0.00,0.00,306.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(27,6,'KendallWiegand','alexandrine34@example.org','+19046811573','88950 McKenzie Lodge Suite 270\nEast Virgil, NY 42464-5149, Smithchester, Lake Kaydenshire, United Arab Emirates, 91320, ','Velit earum eius assumenda.',27,'Botble\\Hotel\\Models\\Booking',27,'INV-27',444.00,0.00,0.00,444.00,'completed',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(28,7,'ChristianGutkowski','gaylord.niko@example.com','(646) 203-9529','20152 Balistreri Shoals\nNew Gordonchester, MO 14547, North Christineshire, Konopelskiburgh, Puerto Rico, 57652-6191, ','Quos exercitationem provident quam voluptas rem.',28,'Botble\\Hotel\\Models\\Booking',28,'INV-28',128.00,0.00,0.00,128.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(29,1,'BreannaLehner','ileuschke@example.com','1-520-333-4902','891 Powlowski Haven Suite 834\nPort Coreneport, WV 52200, Boylebury, South Briana, Sweden, 85311, ','Ut minima ratione nulla et nemo odio dicta.',29,'Botble\\Hotel\\Models\\Booking',29,'INV-29',306.00,0.00,0.00,306.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(30,8,'ChayaKautzer','ewell11@example.com','985.637.5375','748 Hoppe Road Suite 042\nWest Juniusshire, SD 27079-8525, East Leramouth, Abbottside, Armenia, 79737-6496, ','Nostrum minima unde enim ut eos.',30,'Botble\\Hotel\\Models\\Booking',30,'INV-30',142.00,0.00,0.00,142.00,'completed','2025-05-03 11:19:45','2025-05-03 11:19:45','2025-05-03 11:19:45'),(31,4,'AlvisLarkin','reuben.gislason@example.net','+1-804-876-9469','6331 Quitzon Knolls Suite 672\nNorth Amiya, MA 97586-9585, Helmerton, Jeffrystad, Sweden, 12291, ','Quisquam voluptas earum architecto ea.',31,'Botble\\Hotel\\Models\\Booking',31,'INV-31',128.00,0.00,0.00,128.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(32,1,'TillmanDaugherty','erdman.anastasia@example.com','1-657-852-7548','416 Elyse Villages\nPort Meaganfurt, OR 85784, East Dax, Reaganhaven, Uzbekistan, 59046, ','Blanditiis nulla minima est non repellat.',32,'Botble\\Hotel\\Models\\Booking',32,'INV-32',534.00,0.00,0.00,534.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(33,6,'YadiraCummerata','schiller.imogene@example.com','(929) 287-7224','65085 Vesta Springs\nCareyport, WY 35547, Candidachester, Wardtown, Bahrain, 51326-4924, ','Quod fugiat quibusdam magnam repudiandae nostrum vel.',33,'Botble\\Hotel\\Models\\Booking',33,'INV-33',324.00,0.00,0.00,324.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(34,5,'ElfriedaWalsh','abby11@example.com','1-475-785-4049','391 Mraz Brook\nPort Dangelostad, NE 57969, Port Kamronstad, West Cristian, United Arab Emirates, 28702-3008, ','Sed et voluptatem aut qui.',34,'Botble\\Hotel\\Models\\Booking',34,'INV-34',145.00,0.00,0.00,145.00,'canceled',NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45'),(35,2,'GillianRenner','pagac.roberto@example.com','(641) 527-8082','499 Blanca Row Apt. 989\nSchimmelfort, FL 46267-3016, South Abdielhaven, Marcelinaton, Saint Helena, 08859, ','Id rerum ut qui ea.',35,'Botble\\Hotel\\Models\\Booking',35,'INV-35',290.00,0.00,0.00,290.00,'canceled',NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(36,5,'AntwanSchamberger','dannie44@example.net','+1 (423) 208-2931','7831 Jensen Fork\nLake June, TX 89601, North Charliefurt, Ceasarport, France, 79465-6799, ','Officia provident harum quisquam in ipsam asperiores totam.',36,'Botble\\Hotel\\Models\\Booking',36,'INV-36',534.00,0.00,0.00,534.00,'canceled',NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(37,1,'IvyKihn','farrell.valerie@example.org','1-689-604-4398','934 Zieme Lodge Apt. 434\nEast Rosalinda, CA 38696-7311, New Dale, New Simeonborough, Guatemala, 80518, ','Natus animi sequi est voluptatem.',37,'Botble\\Hotel\\Models\\Booking',37,'INV-37',128.00,0.00,0.00,128.00,'completed','2025-05-03 11:19:46','2025-05-03 11:19:46','2025-05-03 11:19:46'),(38,10,'MadelineAnkunding','veichmann@example.net','1-628-687-7936','940 Edythe Heights Apt. 798\nMichelleport, FL 27394, Aprilmouth, Port Nick, Seychelles, 07251-5434, ','Expedita et repudiandae aliquam ab.',38,'Botble\\Hotel\\Models\\Booking',38,'INV-38',296.00,0.00,0.00,296.00,'completed',NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(39,1,'GaylordStamm','senger.anderson@example.net','+1-202-248-1637','113 Waelchi Branch Apt. 177\nRosalialand, CO 30979-7317, North Tyree, Elinorechester, Libyan Arab Jamahiriya, 41302-3124, ','Fuga soluta accusantium repudiandae similique.',39,'Botble\\Hotel\\Models\\Booking',39,'INV-39',153.00,0.00,0.00,153.00,'completed','2025-05-03 11:19:46','2025-05-03 11:19:46','2025-05-03 11:19:46'),(40,1,'ElveraSchamberger','alphonso16@example.com','1-828-754-8170','8027 Rahsaan Stream\nJarvismouth, OR 52730, Elliottbury, Alannamouth, Tonga, 80803, ','Quo a impedit amet necessitatibus.',40,'Botble\\Hotel\\Models\\Booking',40,'INV-40',284.00,0.00,0.00,284.00,'canceled',NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46'),(41,1,'LarissaCrist','khalil23@example.com','+1-901-488-8267','260 Muller Shores Suite 423\nKuvalisview, MN 58515, Wizaport, Grimesville, Germany, 98941-3545, ','Voluptatem cumque vel sed magnam fuga.',41,'Botble\\Hotel\\Models\\Booking',41,'INV-41',384.00,0.00,0.00,384.00,'canceled',NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_places`
--

DROP TABLE IF EXISTS `ht_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_places` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_places`
--

LOCK TABLES `ht_places` WRITE;
/*!40000 ALTER TABLE `ht_places` DISABLE KEYS */;
INSERT INTO `ht_places` VALUES (1,'Duplex Restaurant','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/01.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(2,'Overnight Bars','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/02.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(3,'Beautiful Beach','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/03.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(4,'Beautiful Spa','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/04.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(5,'Duplex Golf','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/05.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(6,'Luxury Restaurant','1,500m | 21 min. Walk',NULL,'<div class=\"nearby-attractions\">\n    <div class=\"content-box\">\n        <h2>Explore the Nearby Attractions</h2>\n        <p>Indulge in the beauty and flavors of the local area, where breathtaking sights and delightful cuisine await you. Allow us to present an overview of the splendid attractions you can experience during your stay.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/01.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/02.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Relax at the Beach</h3>\n\n        <p>Unwind and soak in the serenity of the pristine beach just steps away from our hotel. The soft sand, gentle waves, and stunning horizon create an idyllic setting for you to rejuvenate your senses. Whether you\'re lounging under the sun or taking a leisurely stroll, the beach offers a tranquil escape from the daily hustle and bustle.</p>\n\n        <h3>Dine at the Finest Restaurant</h3>\n\n        <p>Embark on a culinary journey at the finest local restaurant that is a true gem in our neighborhood. Savor a diverse array of mouthwatering dishes meticulously crafted by skilled chefs. From delectable appetizers to sumptuous main courses and decadent desserts, every bite is a celebration of flavor and creativity. The cozy ambiance and attentive service enhance the overall dining experience.</p>\n\n        <p>Whether you\'re a food enthusiast or a nature lover, our hotel\'s location provides you with the best of both worlds. Immerse yourself in the captivating beauty of the beach and treat your taste buds to an unforgettable dining experience. Your stay with us is bound to be filled with wonderful memories that you\'ll cherish for years to come.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/places/03.jpg\" alt=\"RioRelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <p>For those seeking more adventure, a nearby scenic spot offers breathtaking views that will leave you in awe. The harmonious blend of nature\'s grandeur and artistic beauty makes this spot a perfect place to capture stunning photographs and create lasting memories.</p>\n\n        <p>Immerse yourself in the local culture, indulge in the delights of the area, and let your senses guide you as you explore the wonders just beyond our doorstep.</p>\n    </div>\n</div>\n','places/06.jpg','published','2025-05-03 11:19:30','2025-05-03 11:19:30');
/*!40000 ALTER TABLE `ht_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_places_translations`
--

DROP TABLE IF EXISTS `ht_places_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_places_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_places_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_places_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_places_translations`
--

LOCK TABLES `ht_places_translations` WRITE;
/*!40000 ALTER TABLE `ht_places_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_places_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_room_categories`
--

DROP TABLE IF EXISTS `ht_room_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_room_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_room_categories`
--

LOCK TABLES `ht_room_categories` WRITE;
/*!40000 ALTER TABLE `ht_room_categories` DISABLE KEYS */;
INSERT INTO `ht_room_categories` VALUES (1,'Luxury','published','2025-05-03 11:19:23','2025-05-03 11:19:23',0,1),(2,'Family','published','2025-05-03 11:19:23','2025-05-03 11:19:23',0,1),(3,'Double Bed','published','2025-05-03 11:19:23','2025-05-03 11:19:23',0,1),(4,'Relax','published','2025-05-03 11:19:23','2025-05-03 11:19:23',0,1);
/*!40000 ALTER TABLE `ht_room_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_room_categories_translations`
--

DROP TABLE IF EXISTS `ht_room_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_room_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_room_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ht_room_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_room_categories_translations`
--

LOCK TABLES `ht_room_categories_translations` WRITE;
/*!40000 ALTER TABLE `ht_room_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_room_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_room_dates`
--

DROP TABLE IF EXISTS `ht_room_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_room_dates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `room_id` bigint unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `value` decimal(15,2) DEFAULT NULL,
  `value_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `max_guests` tinyint DEFAULT NULL,
  `active` tinyint DEFAULT '0',
  `note_to_customer` text COLLATE utf8mb4_unicode_ci,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci,
  `number_of_rooms` smallint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_room_dates`
--

LOCK TABLES `ht_room_dates` WRITE;
/*!40000 ALTER TABLE `ht_room_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_room_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_room_reviews`
--

DROP TABLE IF EXISTS `ht_room_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_room_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `room_id` int NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_room_reviews`
--

LOCK TABLES `ht_room_reviews` WRITE;
/*!40000 ALTER TABLE `ht_room_reviews` DISABLE KEYS */;
INSERT INTO `ht_room_reviews` VALUES (1,2,4,5,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(2,2,8,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(3,2,8,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(4,7,6,5,'An incredible stay! The room was spacious and beautifully decorated. The amenities provided made me feel right at home. I can’t wait to come back.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(5,6,1,5,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(6,10,2,5,'Five-star experience all the way. The room was meticulously maintained, and the staff was incredibly helpful throughout my stay. I’m already planning my next visit.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(7,11,2,5,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(8,9,2,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(9,8,3,5,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(10,11,2,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(11,9,4,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(12,7,3,4,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(13,7,8,4,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(14,7,6,4,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(15,3,1,4,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(16,8,4,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(17,10,8,4,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(18,1,2,5,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(19,10,3,4,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(20,5,4,4,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(21,3,5,5,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(22,9,3,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(23,8,4,4,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(24,8,6,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(25,3,7,4,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(26,5,2,4,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(27,2,3,5,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(28,5,2,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(29,4,7,4,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(30,6,2,4,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(31,6,7,5,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(32,5,6,4,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(33,3,5,4,'I couldn’t have asked for a better place to stay. The room’s design was elegant, and the comfort level was off the charts. Staying here added a layer of luxury to my trip.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(34,2,8,4,'An incredible stay! The room was spacious and beautifully decorated. The amenities provided made me feel right at home. I can’t wait to come back.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(35,10,3,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(36,8,1,4,'Five-star experience all the way. The room was meticulously maintained, and the staff was incredibly helpful throughout my stay. I’m already planning my next visit.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(37,4,7,5,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(38,9,5,4,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(39,9,2,4,'Five-star experience all the way. The room was meticulously maintained, and the staff was incredibly helpful throughout my stay. I’m already planning my next visit.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(40,5,1,5,'A hidden gem! The room was a haven of tranquility, providing a peaceful escape from the bustling city. I appreciated the little touches that made my stay truly special.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(41,3,4,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(42,6,1,4,'An incredible stay! The room was spacious and beautifully decorated. The amenities provided made me feel right at home. I can’t wait to come back.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(43,5,1,4,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(44,7,4,5,'I was thoroughly impressed with the attention to detail in the room. Everything from the cozy bed to the modern bathroom exceeded my expectations. Highly recommend!','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(45,8,4,5,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(46,10,1,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(47,11,7,4,'Top-notch accommodations! The room was well-appointed and had all the necessary amenities. The staff was incredibly friendly and made my stay even more enjoyable.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(48,10,6,5,'Absolutely loved my experience here! The room was not only clean and comfortable but also offered stunning views of the surrounding area. A perfect choice for a relaxing getaway.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(49,3,2,4,'An incredible stay! The room was spacious and beautifully decorated. The amenities provided made me feel right at home. I can’t wait to come back.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46'),(50,8,1,5,'Exceeded all my hopes! The room was not only comfortable but also surprisingly spacious. I loved the attention to cleanliness and the warm, inviting atmosphere.','approved','2025-05-03 11:19:46','2025-05-03 11:19:46');
/*!40000 ALTER TABLE `ht_room_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_rooms`
--

DROP TABLE IF EXISTS `ht_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,0) unsigned DEFAULT NULL,
  `currency_id` bigint unsigned DEFAULT NULL,
  `number_of_rooms` int unsigned DEFAULT '0',
  `number_of_beds` int unsigned DEFAULT '0',
  `size` int unsigned DEFAULT '0',
  `max_adults` int DEFAULT '0',
  `max_children` int DEFAULT '0',
  `room_category_id` bigint unsigned DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_rooms`
--

LOCK TABLES `ht_rooms` WRITE;
/*!40000 ALTER TABLE `ht_rooms` DISABLE KEYS */;
INSERT INTO `ht_rooms` VALUES (1,'Luxury Hall Of Fame','Our spacious room offers a cozy ambiance, modern amenities, and stunning city views.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',0,'[\"rooms\\/01.jpg\",\"rooms\\/02.jpg\",\"rooms\\/03.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',162,NULL,5,1,117,5,3,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(2,'Pendora Fame','Indulge in comfort with plush furnishings, a private balcony, and personalized service.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/02.jpg\",\"rooms\\/01.jpg\",\"rooms\\/03.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',145,NULL,2,1,169,4,2,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(3,'Pacific Room','Unwind in style amid soothing decor, a king-sized bed, and a rejuvenating rain shower.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/03.jpg\",\"rooms\\/02.jpg\",\"rooms\\/01.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',178,NULL,9,3,184,5,1,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(4,'Junior Suite','Experience coastal charm in a room that overlooks the beach, complete with beach-inspired decor.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/04.jpg\",\"rooms\\/02.jpg\",\"rooms\\/01.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',128,NULL,8,1,106,6,1,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(5,'Family Suite','Enjoy city living at its finest with contemporary design, high-end comforts, and easy access to attractions.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/05.jpg\"]',142,NULL,4,1,136,4,3,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(6,'Relax Suite','A rustic escape featuring wooden accents, a fireplace, and large windows for panoramic views.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/06.jpg\",\"rooms\\/02.jpg\",\"rooms\\/03.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/01.jpg\"]',128,NULL,3,2,181,5,2,3,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(7,'Luxury Suite','Ideal for families, this room boasts interconnected spaces, playful decor, and modern conveniences.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',1,'[\"rooms\\/01.jpg\",\"rooms\\/02.jpg\",\"rooms\\/03.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',153,NULL,5,2,161,4,1,2,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0),(8,'President Room','Ignite romance with a room designed for couples, featuring a four-poster bed and intimate lighting.','<p>Understated seaside elegance, traditional grace, complemented by warm homely touches and pops of modern flair, Rest Detail Hotel Hua Hin\n    invites you to discover our exquisitely designed resort set in a peaceful enclave just out of Hua Hin town. A charming setting, spacious yet incredibly cozy rooms, luxurious two – four bedroom Pavilions with private swimming pools. Recreational facilities to help you relax, delicious local and European dishes delicately plated for you to taste, meticulously put together for you to have the perfect break.</p>\n<p>Experience tranquility by the shore. Our room offers a private balcony for mesmerizing sunsets, a king-sized bed with luxurious linens, a spa-inspired bathroom, and coastal-themed decor. Unwind to the sound of waves and relish in the ultimate seaside escape.</p>\n',0,'[\"rooms\\/02.jpg\",\"rooms\\/01.jpg\",\"rooms\\/03.jpg\",\"rooms\\/04.jpg\",\"rooms\\/05.jpg\",\"rooms\\/06.jpg\"]',148,NULL,3,2,123,2,1,1,1,'published','2025-05-03 11:19:24','2025-05-03 11:19:24',0);
/*!40000 ALTER TABLE `ht_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_rooms_amenities`
--

DROP TABLE IF EXISTS `ht_rooms_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_rooms_amenities` (
  `amenity_id` bigint unsigned NOT NULL,
  `room_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`amenity_id`,`room_id`),
  KEY `ht_rooms_amenities_amenity_id_index` (`amenity_id`),
  KEY `ht_rooms_amenities_room_id_index` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_rooms_amenities`
--

LOCK TABLES `ht_rooms_amenities` WRITE;
/*!40000 ALTER TABLE `ht_rooms_amenities` DISABLE KEYS */;
INSERT INTO `ht_rooms_amenities` VALUES (1,2,NULL,NULL),(1,3,NULL,NULL),(1,5,NULL,NULL),(1,6,NULL,NULL),(2,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,5,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(3,2,NULL,NULL),(3,3,NULL,NULL),(3,4,NULL,NULL),(3,5,NULL,NULL),(3,6,NULL,NULL),(4,1,NULL,NULL),(4,2,NULL,NULL),(4,3,NULL,NULL),(4,5,NULL,NULL),(4,7,NULL,NULL),(5,1,NULL,NULL),(5,2,NULL,NULL),(5,3,NULL,NULL),(5,4,NULL,NULL),(5,5,NULL,NULL),(5,6,NULL,NULL),(5,7,NULL,NULL),(5,8,NULL,NULL),(6,2,NULL,NULL),(6,3,NULL,NULL),(6,4,NULL,NULL),(6,5,NULL,NULL),(6,7,NULL,NULL),(6,8,NULL,NULL),(7,2,NULL,NULL),(7,3,NULL,NULL),(7,7,NULL,NULL),(7,8,NULL,NULL),(8,1,NULL,NULL),(8,2,NULL,NULL),(8,6,NULL,NULL),(8,7,NULL,NULL),(9,1,NULL,NULL),(9,3,NULL,NULL),(9,4,NULL,NULL),(9,5,NULL,NULL),(10,2,NULL,NULL),(10,3,NULL,NULL),(10,5,NULL,NULL),(11,3,NULL,NULL),(11,5,NULL,NULL),(11,8,NULL,NULL),(12,1,NULL,NULL),(12,2,NULL,NULL),(12,3,NULL,NULL),(12,4,NULL,NULL),(12,5,NULL,NULL),(12,6,NULL,NULL),(12,7,NULL,NULL),(12,8,NULL,NULL),(13,1,NULL,NULL),(13,3,NULL,NULL),(13,5,NULL,NULL),(13,8,NULL,NULL),(14,3,NULL,NULL),(14,4,NULL,NULL),(14,8,NULL,NULL);
/*!40000 ALTER TABLE `ht_rooms_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_rooms_translations`
--

DROP TABLE IF EXISTS `ht_rooms_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_rooms_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_rooms_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_rooms_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_rooms_translations`
--

LOCK TABLES `ht_rooms_translations` WRITE;
/*!40000 ALTER TABLE `ht_rooms_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_rooms_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_services`
--

DROP TABLE IF EXISTS `ht_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,0) unsigned DEFAULT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'once',
  `currency_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_services`
--

LOCK TABLES `ht_services` WRITE;
/*!40000 ALTER TABLE `ht_services` DISABLE KEYS */;
INSERT INTO `ht_services` VALUES (1,'Quality Room','Indulge in the epitome of comfort and style with our Quality Room. Immerse yourself in elegant furnishings, unwind in a plush bed, and enjoy modern amenities. From the private ensuite bathroom to the high-speed Wi-Fi, every detail is designed for your relaxation. Choose between city, garden, or pool views, and experience a retreat that embodies luxury and convenience.','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',100,'once',NULL,'amenities/icon-1.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(2,'Privet Beach','Discover a world of exclusivity with our Private Beach Access service. Step onto a pristine shore reserved for our guests, where sun, sand, and waves meet ultimate tranquility. Lounge in comfortable beachside seating, enjoy dedicated service, and bask in the beauty of a secluded paradise.','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',30,'once',NULL,'amenities/icon-2.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(3,'Best Accommodation','Experience the pinnacle of luxury with our Best Accommodation service. Immerse yourself in meticulously designed spaces that combine opulence and comfort. From elegant furnishings to cutting-edge amenities, every detail is curated to exceed your expectations.','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',50,'once',NULL,'amenities/icon-3.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(4,'Wellness &amp; Spa','Embark on a journey of rejuvenation and self-care with our Wellness &amp; Spa service. Immerse yourself in a sanctuary of relaxation, where skilled therapists pamper you with a range of invigorating treatments.','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',10,'once',NULL,'amenities/icon-4.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(5,'Restaurants &amp; Bars','Savor a world of flavors at our Restaurants &amp; Bars. Indulge in culinary delights crafted by talented chefs, offering a diverse range of cuisines to tantalize your taste buds. From elegant dining to vibrant social hubs, our venues provide a gastronomic journey paired with a selection of beverages that cater to every palate. .','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',10,'once',NULL,'amenities/icon-5.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26'),(6,'Special Offers','Unlock unbeatable value with our Special Offers. Experience the luxury of Hotel at exceptional rates, whether you\'re planning a romantic getaway, a family vacation, or a business retreat. Our exclusive packages cater to every traveler\'s needs, providing an unforgettable stay enriched with added perks.','<div class=\"service-detail\">\n    <div class=\"content-box\">\n        <h2> We give the best Services </h2>\n        <p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p>\n\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-3.png\" alt=\"Riorelax\"></figure>\n                </div>\n                <div class=\"text-column col-xl-6 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-2.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n\n        <h3>Why Choose This Service</h3>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely.</p>\n\n        <p>Complete account of the systems and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally.</p>\n        <h3>We guarantee to deliver</h3>\n        <p>Quam parturient mi amet curae augue varius laoreet vehicula non sem aliquet lectus justo litora fames estab phasellus risus ad sollicitudin magna Viverra diam pretium cursus curabitur parturient convallis hymenaeos suspendisse nibh facilisi purus penatibus habitasse mus orcine muscle adipiscing sapien aliquam nulla. Erat parturient auctor facilisis. Nisi cum fringilla hymenaeos ridiculus habitasses augue nullam fringilla. Taciti convallis. Vitae sapien nisi enim vis metus cras fusce lectus sed luctus quis Clas nisl blandit parturient molestie praesent nec</p>\n        <div class=\"two-column\">\n            <div class=\"row\">\n                <div class=\"image-column col-xl-12 col-lg-12 col-md-12\">\n                    <figure class=\"image\"><img src=\"http://localhost/storage/general/portfolio-1.png\" alt=\"Riorelax\"></figure>\n                </div>\n            </div>\n        </div>\n        <p>Phasellus hac phasellus consequat malesuada veler aliquam dictumst amet a phasellus lacinia integer curabitur duis. Urna taciti nisl torquent varius libero dui. Tempus magnis libero pulvinar purus pharetra justo sem curae duis eget tempus erat ornare. Consequat litora a blandit fermentum. Quam taciti site nascetur nunc litora quis tempor metus adipiscing ac quis sodales ultrices cubilia. Arcu in penatibus vestibulum diam. Curabitur platea quam fusce molestie venenatis platea ligula in aenean gravida dolor aptent nostra luctus rutrum morbi porttitor cursus</p>\n    </div>\n</div>\n',10,'once',NULL,'amenities/icon-6.png','published','2025-05-03 11:19:26','2025-05-03 11:19:26');
/*!40000 ALTER TABLE `ht_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_services_translations`
--

DROP TABLE IF EXISTS `ht_services_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_services_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ht_services_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ht_services_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_services_translations`
--

LOCK TABLES `ht_services_translations` WRITE;
/*!40000 ALTER TABLE `ht_services_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ht_services_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ht_taxes`
--

DROP TABLE IF EXISTS `ht_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ht_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ht_taxes`
--

LOCK TABLES `ht_taxes` WRITE;
/*!40000 ALTER TABLE `ht_taxes` DISABLE KEYS */;
INSERT INTO `ht_taxes` VALUES (1,'VAT',10,1,'published','2025-05-03 11:19:30','2025-05-03 11:19:30'),(2,'None',0,2,'published','2025-05-03 11:19:30','2025-05-03 11:19:30');
/*!40000 ALTER TABLE `ht_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','315ca740720a64ffd6a7d875b86e2ad0',1,'Botble\\Testimonial\\Models\\Testimonial'),(2,'en_US','39a1d18f40101d23cad5694d65829883',2,'Botble\\Testimonial\\Models\\Testimonial'),(3,'en_US','2b2df3e398b593874acf872f2112f658',3,'Botble\\Testimonial\\Models\\Testimonial'),(4,'en_US','b4daa8fdab6daeb0f0000a25d14f8653',4,'Botble\\Testimonial\\Models\\Testimonial'),(5,'en_US','a63a44210582173723a149716883d97a',5,'Botble\\Testimonial\\Models\\Testimonial'),(6,'en_US','e7670518dd44de7f3783fd14343eec2a',6,'Botble\\Testimonial\\Models\\Testimonial'),(7,'en_US','478fae131648d82fd7074a19b227396e',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(8,'en_US','9bf8cb03e415d83d4536532fbedcaf58',1,'Botble\\Menu\\Models\\MenuLocation'),(9,'en_US','6e201376e0ae19b8575be934655f1707',1,'Botble\\Menu\\Models\\Menu'),(10,'en_US','ab12b92fd7c0b1ef70898018081bbc19',2,'Botble\\Menu\\Models\\Menu'),(11,'en_US','4199f39531f2c09cadf91d54e5154669',3,'Botble\\Menu\\Models\\Menu'),(12,'en_US','50dcee8a30c2059ef6cfaeb38fc0293f',2,'Botble\\Menu\\Models\\MenuLocation'),(13,'en_US','992b836dedcf0ba5385cc9348e6f23a2',4,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/jpeg',9803,'news/1.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(2,0,'2','2',1,'image/jpeg',9803,'news/2.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(3,0,'3','3',1,'image/jpeg',9803,'news/3.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(4,0,'4','4',1,'image/jpeg',9803,'news/4.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(5,0,'5','5',1,'image/jpeg',9803,'news/5.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(6,0,'6','6',1,'image/jpeg',9803,'news/6.jpg','[]','2025-05-03 11:19:20','2025-05-03 11:19:20',NULL,'public'),(7,0,'7','7',1,'image/jpeg',9803,'news/7.jpg','[]','2025-05-03 11:19:21','2025-05-03 11:19:21',NULL,'public'),(8,0,'8','8',1,'image/jpeg',9803,'news/8.jpg','[]','2025-05-03 11:19:21','2025-05-03 11:19:21',NULL,'public'),(9,0,'icon-1','icon-1',2,'image/png',4963,'amenities/icon-1.png','[]','2025-05-03 11:19:21','2025-05-03 11:19:21',NULL,'public'),(10,0,'icon-2','icon-2',2,'image/png',7875,'amenities/icon-2.png','[]','2025-05-03 11:19:22','2025-05-03 11:19:22',NULL,'public'),(11,0,'icon-3','icon-3',2,'image/png',3358,'amenities/icon-3.png','[]','2025-05-03 11:19:22','2025-05-03 11:19:22',NULL,'public'),(12,0,'icon-4','icon-4',2,'image/png',9266,'amenities/icon-4.png','[]','2025-05-03 11:19:22','2025-05-03 11:19:22',NULL,'public'),(13,0,'icon-5','icon-5',2,'image/png',6771,'amenities/icon-5.png','[]','2025-05-03 11:19:22','2025-05-03 11:19:22',NULL,'public'),(14,0,'icon-6','icon-6',2,'image/png',10671,'amenities/icon-6.png','[]','2025-05-03 11:19:22','2025-05-03 11:19:22',NULL,'public'),(15,0,'01','01',3,'image/jpeg',9803,'rooms/01.jpg','[]','2025-05-03 11:19:23','2025-05-03 11:19:23',NULL,'public'),(16,0,'02','02',3,'image/jpeg',9803,'rooms/02.jpg','[]','2025-05-03 11:19:23','2025-05-03 11:19:23',NULL,'public'),(17,0,'03','03',3,'image/jpeg',9803,'rooms/03.jpg','[]','2025-05-03 11:19:23','2025-05-03 11:19:23',NULL,'public'),(18,0,'04','04',3,'image/jpeg',9803,'rooms/04.jpg','[]','2025-05-03 11:19:23','2025-05-03 11:19:23',NULL,'public'),(19,0,'05','05',3,'image/jpeg',9803,'rooms/05.jpg','[]','2025-05-03 11:19:23','2025-05-03 11:19:23',NULL,'public'),(20,0,'06','06',3,'image/jpeg',9803,'rooms/06.jpg','[]','2025-05-03 11:19:24','2025-05-03 11:19:24',NULL,'public'),(21,0,'01','01',4,'image/jpeg',2100,'foods/01.jpg','[]','2025-05-03 11:19:24','2025-05-03 11:19:24',NULL,'public'),(22,0,'02','02',4,'image/jpeg',2100,'foods/02.jpg','[]','2025-05-03 11:19:24','2025-05-03 11:19:24',NULL,'public'),(23,0,'03','03',4,'image/jpeg',2100,'foods/03.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(24,0,'04','04',4,'image/jpeg',2100,'foods/04.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(25,0,'05','05',4,'image/jpeg',2100,'foods/05.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(26,0,'06','06',4,'image/jpeg',2100,'foods/06.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(27,0,'07','07',4,'image/jpeg',2100,'foods/07.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(28,0,'08','08',4,'image/jpeg',2100,'foods/08.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(29,0,'09','09',4,'image/jpeg',2100,'foods/09.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(30,0,'10','10',4,'image/jpeg',2100,'foods/10.jpg','[]','2025-05-03 11:19:25','2025-05-03 11:19:25',NULL,'public'),(31,0,'1','1',5,'image/jpeg',8581,'customers/1.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(32,0,'10','10',5,'image/jpeg',20004,'customers/10.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(33,0,'2','2',5,'image/jpeg',14257,'customers/2.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(34,0,'3','3',5,'image/jpeg',14702,'customers/3.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(35,0,'4','4',5,'image/jpeg',19699,'customers/4.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(36,0,'5','5',5,'image/jpeg',10260,'customers/5.jpg','[]','2025-05-03 11:19:26','2025-05-03 11:19:26',NULL,'public'),(37,0,'6','6',5,'image/jpeg',8476,'customers/6.jpg','[]','2025-05-03 11:19:27','2025-05-03 11:19:27',NULL,'public'),(38,0,'7','7',5,'image/jpeg',14388,'customers/7.jpg','[]','2025-05-03 11:19:27','2025-05-03 11:19:27',NULL,'public'),(39,0,'8','8',5,'image/jpeg',14340,'customers/8.jpg','[]','2025-05-03 11:19:27','2025-05-03 11:19:27',NULL,'public'),(40,0,'9','9',5,'image/jpeg',4396,'customers/9.jpg','[]','2025-05-03 11:19:27','2025-05-03 11:19:27',NULL,'public'),(41,0,'01','01',6,'image/jpeg',9803,'places/01.jpg','[]','2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,'public'),(42,0,'02','02',6,'image/jpeg',9803,'places/02.jpg','[]','2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,'public'),(43,0,'03','03',6,'image/jpeg',9803,'places/03.jpg','[]','2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,'public'),(44,0,'04','04',6,'image/jpeg',9803,'places/04.jpg','[]','2025-05-03 11:19:29','2025-05-03 11:19:29',NULL,'public'),(45,0,'05','05',6,'image/jpeg',9803,'places/05.jpg','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(46,0,'06','06',6,'image/jpeg',9803,'places/06.jpg','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(47,0,'an-img-01','an-img-01',7,'image/png',20779,'backgrounds/an-img-01.png','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(48,0,'an-img-02','an-img-02',7,'image/png',6874,'backgrounds/an-img-02.png','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(49,0,'an-img-05','an-img-05',7,'image/png',10437,'backgrounds/an-img-05.png','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(50,0,'an-img-07','an-img-07',7,'image/png',7951,'backgrounds/an-img-07.png','[]','2025-05-03 11:19:30','2025-05-03 11:19:30',NULL,'public'),(51,0,'footer-bg','footer-bg',7,'image/png',179660,'backgrounds/footer-bg.png','[]','2025-05-03 11:19:31','2025-05-03 11:19:31',NULL,'public'),(52,0,'testimonial-bg','testimonial-bg',7,'image/png',422738,'backgrounds/testimonial-bg.png','[]','2025-05-03 11:19:31','2025-05-03 11:19:31',NULL,'public'),(53,0,'about_img_02','about_img_02',8,'image/png',10047,'services/about-img-02.png','[]','2025-05-03 11:19:31','2025-05-03 11:19:31',NULL,'public'),(54,0,'about_img_03','about_img_03',8,'image/png',7034,'services/about-img-03.png','[]','2025-05-03 11:19:31','2025-05-03 11:19:31',NULL,'public'),(55,0,'feature','feature',8,'image/png',15928,'services/feature.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(56,0,'icon-1','icon-1',8,'image/png',1169,'services/icon-1.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(57,0,'icon-2','icon-2',8,'image/png',1874,'services/icon-2.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(58,0,'icon-3','icon-3',8,'image/png',1972,'services/icon-3.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(59,0,'icon-4','icon-4',8,'image/png',1913,'services/icon-4.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(60,0,'icon-5','icon-5',8,'image/png',2893,'services/icon-5.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(61,0,'icon-6','icon-6',8,'image/png',2504,'services/icon-6.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(62,0,'skills-img','skills-img',8,'image/png',16333,'services/skills-img.png','[]','2025-05-03 11:19:32','2025-05-03 11:19:32',NULL,'public'),(63,0,'logo-1','logo-1',9,'image/png',757,'brands/logo-1.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(64,0,'logo-2','logo-2',9,'image/png',757,'brands/logo-2.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(65,0,'logo-3','logo-3',9,'image/png',757,'brands/logo-3.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(66,0,'logo-4','logo-4',9,'image/png',757,'brands/logo-4.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(67,0,'logo-5','logo-5',9,'image/png',757,'brands/logo-5.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(68,0,'logo-6','logo-6',9,'image/png',757,'brands/logo-6.png','[]','2025-05-03 11:19:33','2025-05-03 11:19:33',NULL,'public'),(69,0,'01','01',10,'image/png',2100,'testimonials/01.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(70,0,'02','02',10,'image/png',2100,'testimonials/02.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(71,0,'03','03',10,'image/png',2100,'testimonials/03.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(72,0,'04','04',10,'image/png',2100,'testimonials/04.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(73,0,'05','05',10,'image/png',2100,'testimonials/05.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(74,0,'06','06',10,'image/png',2100,'testimonials/06.png','[]','2025-05-03 11:19:34','2025-05-03 11:19:34',NULL,'public'),(75,0,'1','1',11,'image/png',7235,'galleries/1.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(76,0,'10','10',11,'image/png',7235,'galleries/10.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(77,0,'2','2',11,'image/png',7235,'galleries/2.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(78,0,'3','3',11,'image/png',7235,'galleries/3.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(79,0,'4','4',11,'image/png',7235,'galleries/4.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(80,0,'5','5',11,'image/png',7235,'galleries/5.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(81,0,'6','6',11,'image/png',7235,'galleries/6.png','[]','2025-05-03 11:19:35','2025-05-03 11:19:35',NULL,'public'),(82,0,'7','7',11,'image/png',7235,'galleries/7.png','[]','2025-05-03 11:19:36','2025-05-03 11:19:36',NULL,'public'),(83,0,'8','8',11,'image/png',7235,'galleries/8.png','[]','2025-05-03 11:19:36','2025-05-03 11:19:36',NULL,'public'),(84,0,'9','9',11,'image/png',7235,'galleries/9.png','[]','2025-05-03 11:19:36','2025-05-03 11:19:36',NULL,'public'),(85,0,'404','404',12,'image/png',7719,'general/404.png','[]','2025-05-03 11:19:36','2025-05-03 11:19:36',NULL,'public'),(86,0,'booking-img','booking-img',12,'image/png',10558,'general/booking-img.png','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(87,0,'favicon','favicon',12,'image/png',6096,'general/favicon.png','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(88,0,'feature','feature',12,'image/png',15928,'general/feature.png','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(89,0,'logo-dark','logo-dark',12,'image/png',6494,'general/logo-dark.png','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(90,0,'logo','logo',12,'image/png',7533,'general/logo.png','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(91,0,'place-1','place-1',12,'image/jpeg',5575,'general/place-1.jpg','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(92,0,'place-2','place-2',12,'image/jpeg',5575,'general/place-2.jpg','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(93,0,'place-3','place-3',12,'image/jpeg',5575,'general/place-3.jpg','[]','2025-05-03 11:19:37','2025-05-03 11:19:37',NULL,'public'),(94,0,'portfolio-1','portfolio-1',12,'image/png',12879,'general/portfolio-1.png','[]','2025-05-03 11:19:38','2025-05-03 11:19:38',NULL,'public'),(95,0,'portfolio-2','portfolio-2',12,'image/png',6248,'general/portfolio-2.png','[]','2025-05-03 11:19:38','2025-05-03 11:19:38',NULL,'public'),(96,0,'portfolio-3','portfolio-3',12,'image/png',6248,'general/portfolio-3.png','[]','2025-05-03 11:19:38','2025-05-03 11:19:38',NULL,'public'),(97,0,'signature','signature',12,'image/png',825,'general/signature.png','[]','2025-05-03 11:19:38','2025-05-03 11:19:38',NULL,'public'),(98,0,'video-bg','video-bg',12,'image/png',18212,'general/video-bg.png','[]','2025-05-03 11:19:38','2025-05-03 11:19:38',NULL,'public'),(99,0,'slider-1','slider-1',13,'image/png',27228,'banners/slider-1.png','[]','2025-05-03 11:19:39','2025-05-03 11:19:39',NULL,'public'),(100,0,'slider-2','slider-2',13,'image/png',27228,'banners/slider-2.png','[]','2025-05-03 11:19:39','2025-05-03 11:19:39',NULL,'public'),(101,0,'1','1',14,'image/png',9086,'teams/1.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(102,0,'2','2',14,'image/png',9086,'teams/2.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(103,0,'3','3',14,'image/png',9086,'teams/3.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(104,0,'4','4',14,'image/png',9086,'teams/4.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(105,0,'5','5',14,'image/png',9086,'teams/5.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(106,0,'6','6',14,'image/png',9086,'teams/6.png','[]','2025-05-03 11:19:40','2025-05-03 11:19:40',NULL,'public'),(107,0,'7','7',14,'image/png',9086,'teams/7.png','[]','2025-05-03 11:19:41','2025-05-03 11:19:41',NULL,'public'),(108,0,'8','8',14,'image/png',9086,'teams/8.png','[]','2025-05-03 11:19:41','2025-05-03 11:19:41',NULL,'public'),(109,0,'img1','img1',14,'image/png',9086,'teams/img1.png','[]','2025-05-03 11:19:41','2025-05-03 11:19:41',NULL,'public'),(110,0,'img2','img2',14,'image/png',9086,'teams/img2.png','[]','2025-05-03 11:19:41','2025-05-03 11:19:41',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'news',NULL,'news',0,'2025-05-03 11:19:20','2025-05-03 11:19:20',NULL),(2,0,'amenities',NULL,'amenities',0,'2025-05-03 11:19:21','2025-05-03 11:19:21',NULL),(3,0,'rooms',NULL,'rooms',0,'2025-05-03 11:19:23','2025-05-03 11:19:23',NULL),(4,0,'foods',NULL,'foods',0,'2025-05-03 11:19:24','2025-05-03 11:19:24',NULL),(5,0,'customers',NULL,'customers',0,'2025-05-03 11:19:26','2025-05-03 11:19:26',NULL),(6,0,'places',NULL,'places',0,'2025-05-03 11:19:29','2025-05-03 11:19:29',NULL),(7,0,'backgrounds',NULL,'backgrounds',0,'2025-05-03 11:19:30','2025-05-03 11:19:30',NULL),(8,0,'services',NULL,'services',0,'2025-05-03 11:19:31','2025-05-03 11:19:31',NULL),(9,0,'brands',NULL,'brands',0,'2025-05-03 11:19:33','2025-05-03 11:19:33',NULL),(10,0,'testimonials',NULL,'testimonials',0,'2025-05-03 11:19:34','2025-05-03 11:19:34',NULL),(11,0,'galleries',NULL,'galleries',0,'2025-05-03 11:19:35','2025-05-03 11:19:35',NULL),(12,0,'general',NULL,'general',0,'2025-05-03 11:19:36','2025-05-03 11:19:36',NULL),(13,0,'banners',NULL,'banners',0,'2025-05-03 11:19:39','2025-05-03 11:19:39',NULL),(14,0,'teams',NULL,'teams',0,'2025-05-03 11:19:40','2025-05-03 11:19:40',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-05-03 11:19:41','2025-05-03 11:19:41'),(2,4,'sidebar-menu','2025-05-03 11:19:42','2025-05-03 11:19:42');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home',NULL,'_self',1,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(2,1,1,1,'Botble\\Page\\Models\\Page','/',NULL,0,'Home Page 01',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(3,1,1,2,'Botble\\Page\\Models\\Page','/home-page-02',NULL,1,'Home Page 02',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(4,1,1,3,'Botble\\Page\\Models\\Page','/home-page-side-menu',NULL,2,'Home Page Side Menu',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(5,1,1,4,'Botble\\Page\\Models\\Page','/home-page-full-menu',NULL,3,'Home Page Full Menu',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(6,1,0,NULL,NULL,'/rooms',NULL,1,'Our Rooms',NULL,'_self',1,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(7,1,6,NULL,NULL,'/rooms',NULL,0,'Our Rooms',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(8,1,6,NULL,NULL,'',NULL,1,'Room Details',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(9,1,0,NULL,NULL,'',NULL,2,'Pages',NULL,'_self',1,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(10,1,9,NULL,NULL,'/galleries',NULL,0,'Gallery',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(11,1,9,8,'Botble\\Page\\Models\\Page','/faq',NULL,1,'FAQ',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(12,1,9,9,'Botble\\Page\\Models\\Page','/team',NULL,2,'Team',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(13,1,9,NULL,NULL,'',NULL,3,'Team Details',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(14,1,9,6,'Botble\\Page\\Models\\Page','/services',NULL,4,'Services',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(15,1,9,NULL,NULL,'',NULL,5,'Service Details',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(16,1,9,0,'Botble\\Page\\Models\\Page',NULL,NULL,6,'Places',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(17,1,9,NULL,NULL,'',NULL,7,'Place Details',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(18,1,9,5,'Botble\\Page\\Models\\Page','/about-us',NULL,8,'About Us',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(19,1,9,11,'Botble\\Page\\Models\\Page','/contact-us',NULL,9,'Contact Us',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(20,1,0,10,'Botble\\Page\\Models\\Page','/blog',NULL,3,'Blog',NULL,'_self',1,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(21,1,20,10,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:42'),(22,1,20,NULL,NULL,'',NULL,1,'Blog Details',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(23,2,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(24,2,0,NULL,NULL,'/about-us',NULL,1,'About Us',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(25,2,0,6,'Botble\\Page\\Models\\Page','/services',NULL,2,'Services',NULL,'_self',0,'2025-05-03 11:19:41','2025-05-03 11:19:41'),(26,2,0,11,'Botble\\Page\\Models\\Page','/contact-us',NULL,3,'Contact Us',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(27,2,0,10,'Botble\\Page\\Models\\Page','/blog',NULL,4,'Blog',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(28,3,0,8,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(29,3,0,0,'Botble\\Page\\Models\\Page',NULL,NULL,1,'Support',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(30,3,0,12,'Botble\\Page\\Models\\Page','/privacy',NULL,2,'Privacy',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(31,3,0,13,'Botble\\Page\\Models\\Page','/term-and-conditions',NULL,3,'Term & Conditions',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(32,4,0,NULL,NULL,'/home',NULL,0,'Home',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(33,4,0,NULL,NULL,'/about-us',NULL,1,'About Us',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(34,4,0,NULL,NULL,'/services',NULL,2,'Services',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(35,4,0,NULL,NULL,'/pricing',NULL,3,'Pricing',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(36,4,0,NULL,NULL,'/team',NULL,4,'Team',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(37,4,0,NULL,NULL,'/gallery',NULL,5,'Gallery Study',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(38,4,0,NULL,NULL,'/blog',NULL,6,'Blog',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42'),(39,4,0,NULL,NULL,'/contact-us',NULL,7,'Contact',NULL,'_self',0,'2025-05-03 11:19:42','2025-05-03 11:19:42');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-05-03 11:19:41','2025-05-03 11:19:41'),(2,'Our Links','our-links','published','2025-05-03 11:19:41','2025-05-03 11:19:41'),(3,'Our Services','our-services','published','2025-05-03 11:19:42','2025-05-03 11:19:42'),(4,'Sidebar Menu','sidebar-menu','published','2025-05-03 11:19:42','2025-05-03 11:19:42');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon_image','[\"amenities\\/icon-2.png\"]',1,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(2,'description','[\"Sequi voluptate culpa eveniet vel non. Incidunt fugiat cupiditate et quia ad sapiente.\"]',1,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(3,'icon_image','[\"amenities\\/icon-6.png\"]',2,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(4,'description','[\"Nisi necessitatibus id accusamus. Delectus eligendi velit maxime est ut quo. Non impedit natus nisi non.\"]',2,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(5,'icon_image','[\"amenities\\/icon-3.png\"]',3,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(6,'description','[\"Et hic laboriosam eum in similique. Beatae sed velit illo atque. Corporis nobis iusto ea blanditiis repellendus.\"]',3,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(7,'icon_image','[\"amenities\\/icon-1.png\"]',4,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(8,'description','[\"Fuga id aut quia aperiam dolore vitae. Velit ut beatae quo enim.\"]',4,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(9,'icon_image','[\"amenities\\/icon-6.png\"]',5,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(10,'description','[\"Sit ut quas molestiae. Quia est et sit aut vitae. Et sed tempore cumque autem reiciendis rerum.\"]',5,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(11,'icon_image','[\"amenities\\/icon-3.png\"]',6,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(12,'description','[\"Sunt cum et dicta consequatur. Praesentium consequuntur quis animi quia.\"]',6,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(13,'icon_image','[\"amenities\\/icon-6.png\"]',7,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(14,'description','[\"Hic omnis veritatis consectetur fugiat. Veniam quia sit qui ipsa molestias dolor.\"]',7,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(15,'icon_image','[\"amenities\\/icon-2.png\"]',8,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(16,'description','[\"Id est dolor hic. Laborum voluptas et in ex harum in.\"]',8,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(17,'icon_image','[\"amenities\\/icon-5.png\"]',9,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(18,'description','[\"Et laboriosam est temporibus ut est. Officia aut tenetur enim quasi. Corporis quis facilis iste iure.\"]',9,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(19,'icon_image','[\"amenities\\/icon-3.png\"]',10,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(20,'description','[\"Odio ullam iusto excepturi dolores culpa vel. Et est magni suscipit. Aut doloribus voluptas ullam et voluptatem.\"]',10,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:22','2025-05-03 11:19:22'),(21,'icon_image','[\"amenities\\/icon-2.png\"]',11,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(22,'description','[\"Facere in est laborum sapiente et eos. Vitae esse totam ullam porro enim. Libero facilis officia soluta quod sed vel.\"]',11,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(23,'icon_image','[\"amenities\\/icon-4.png\"]',12,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(24,'description','[\"Voluptas dicta ut et. Enim vero facere quidem dolorum.\"]',12,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(25,'icon_image','[\"amenities\\/icon-6.png\"]',13,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(26,'description','[\"Eius voluptatem dignissimos ducimus doloribus. Ut quam possimus eum alias qui et. Nihil totam et reiciendis minus ex.\"]',13,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(27,'icon_image','[\"amenities\\/icon-6.png\"]',14,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(28,'description','[\"Excepturi nostrum numquam suscipit dolore quam quia. Placeat cum iste natus aut. Sit qui harum natus minus quia.\"]',14,'Botble\\Hotel\\Models\\Amenity','2025-05-03 11:19:23','2025-05-03 11:19:23'),(29,'breadcrumb','[0]',1,'Botble\\Page\\Models\\Page','2025-05-03 11:19:33','2025-05-03 11:19:33'),(30,'breadcrumb','[0]',2,'Botble\\Page\\Models\\Page','2025-05-03 11:19:33','2025-05-03 11:19:33'),(31,'breadcrumb','[0]',3,'Botble\\Page\\Models\\Page','2025-05-03 11:19:33','2025-05-03 11:19:33'),(32,'breadcrumb','[0]',4,'Botble\\Page\\Models\\Page','2025-05-03 11:19:33','2025-05-03 11:19:33'),(33,'breadcrumb','[1]',5,'Botble\\Page\\Models\\Page','2025-05-03 11:19:33','2025-05-03 11:19:33'),(34,'breadcrumb','[1]',6,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(35,'breadcrumb','[1]',7,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(36,'breadcrumb','[1]',8,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(37,'breadcrumb','[1]',9,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(38,'breadcrumb','[1]',10,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(39,'breadcrumb','[1]',11,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(40,'breadcrumb','[1]',12,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(41,'breadcrumb','[1]',13,'Botble\\Page\\Models\\Page','2025-05-03 11:19:34','2025-05-03 11:19:34'),(42,'display_name','[\"Rosalina William\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(43,'bio','[\"\\ud83d\\udd8b\\ufe0f Dedicated blog writer \\ud83d\\udcda | Crafting engaging content through the art of words. \\ud83c\\udf0d Passionate about exploring diverse topics and sharing insightful perspectives. \\ud83d\\ude80 Turning ideas into captivating stories. \\u2615 Coffee addict and creativity enthusiast. \\ud83c\\udfa8 Let\\u2019s embark on a journey of discovery through the magic of writing!\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(44,'facebook','[\"https:\\/\\/www.facebook.com\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(45,'twitter','[\"https:\\/\\/twitter.com\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(46,'instagram','[\"https:\\/\\/www.instagram.com\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(47,'behance','[\"https:\\/\\/www.behance.net\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(48,'linkedin','[\"https:\\/\\/www.linkedin.com\"]',1,'Botble\\ACL\\Models\\User','2025-05-03 11:19:36','2025-05-03 11:19:36'),(49,'button_primary_label','[\"Discover More \"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(50,'button_primary_url','[\"\\/contact-us\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(51,'button_play_label','[\"Intro video\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(52,'youtube_url','[\"https:\\/\\/www.youtube.com\\/watch?v=v2qeqkKgw7U\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(53,'button_primary_label','[\"Discover More \"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(54,'button_primary_url','[\"\\/contact-us\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(55,'button_play_label','[\"Intro video\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39'),(56,'youtube_url','[\"https:\\/\\/www.youtube.com\\/watch?v=v2qeqkKgw7U\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-05-03 11:19:39','2025-05-03 11:19:39');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2016_06_10_230148_create_acl_tables',1),(7,'2016_06_14_230857_create_menus_table',1),(8,'2016_06_28_221418_create_pages_table',1),(9,'2016_10_05_074239_create_setting_table',1),(10,'2016_11_28_032840_create_dashboard_widget_tables',1),(11,'2016_12_16_084601_create_widgets_table',1),(12,'2017_05_09_070343_create_media_tables',1),(13,'2017_11_03_070450_create_slug_table',1),(14,'2019_01_05_053554_create_jobs_table',1),(15,'2019_08_19_000000_create_failed_jobs_table',1),(16,'2019_12_14_000001_create_personal_access_tokens_table',1),(17,'2021_08_05_134214_fix_social_link_theme_options',1),(18,'2022_04_20_100851_add_index_to_media_table',1),(19,'2022_04_20_101046_add_index_to_menu_table',1),(20,'2022_07_10_034813_move_lang_folder_to_root',1),(21,'2022_08_04_051940_add_missing_column_expires_at',1),(22,'2022_09_01_000001_create_admin_notifications_tables',1),(23,'2022_10_14_024629_drop_column_is_featured',1),(24,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(25,'2022_12_02_093615_update_slug_index_columns',1),(26,'2023_01_30_024431_add_alt_to_media_table',1),(27,'2023_02_16_042611_drop_table_password_resets',1),(28,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(29,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(30,'2023_08_21_090810_make_page_content_nullable',1),(31,'2023_09_14_021936_update_index_for_slugs_table',1),(32,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(33,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(34,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(35,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(36,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(37,'2024_07_12_100000_change_random_hash_for_media',1),(38,'2024_09_30_024515_create_sessions_table',1),(39,'2024_04_27_100730_improve_analytics_setting',2),(40,'2015_06_29_025744_create_audit_history',3),(41,'2023_11_14_033417_change_request_column_in_table_audit_histories',3),(42,'2025_04_03_000001_add_user_type_to_audit_histories_table',3),(43,'2015_06_18_033822_create_blog_table',4),(44,'2021_02_16_092633_remove_default_value_for_author_type',4),(45,'2021_12_03_030600_create_blog_translations',4),(46,'2022_04_19_113923_add_index_to_table_posts',4),(47,'2023_08_29_074620_make_column_author_id_nullable',4),(48,'2024_07_30_091615_fix_order_column_in_categories_table',4),(49,'2025_01_06_033807_add_default_value_for_categories_author_type',4),(50,'2016_06_17_091537_create_contacts_table',5),(51,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',5),(52,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',5),(53,'2024_03_25_000001_update_captcha_settings_for_contact',5),(54,'2024_04_19_063914_create_custom_fields_table',5),(55,'2018_07_09_221238_create_faq_table',6),(56,'2021_12_03_082134_create_faq_translations',6),(57,'2023_11_17_063408_add_description_column_to_faq_categories_table',6),(58,'2016_10_13_150201_create_galleries_table',7),(59,'2021_12_03_082953_create_gallery_translations',7),(60,'2022_04_30_034048_create_gallery_meta_translations_table',7),(61,'2023_08_29_075308_make_column_user_id_nullable',7),(62,'2020_09_02_033611_hotel_create_table',8),(63,'2021_06_25_084734_fix_theme_options',8),(64,'2021_08_18_011425_add_column_order_into_rooms',8),(65,'2021_08_25_153801_update_table_ht_room_categories',8),(66,'2021_08_29_031421_add_translations_tables_for_hotel',8),(67,'2023_04_09_083713_update_hotel_customers_table',8),(68,'2023_04_17_033111_add_booking_number_of_guests',8),(69,'2023_08_11_090349_add_column_password_customers_table',8),(70,'2023_08_14_090449_create_reset_password_table',8),(71,'2023_08_16_063152_update_ht_booking_room_table',8),(72,'2023_08_18_022454_add_new_field_to_ht_customers_table',8),(73,'2023_08_23_022361_create_ht_invoices_table',8),(74,'2023_08_23_041912_create_hotel_review_table',8),(75,'2023_08_23_443543_add_sub_total_to_booking_table',8),(76,'2023_08_23_904382_update_field_customer_id_to_invoice_table',8),(77,'2023_08_24_534892_add_fields_to_invoice_table',8),(78,'2023_08_24_745332_add_field_description_to_invoice_table',8),(79,'2023_08_25_061510_add_adjust_type_and_amount_column',8),(80,'2023_09_05_083354_create_ht_coupons_table',8),(81,'2023_09_06_062315_add_coupon_columns_to_booking_table',8),(82,'2023_10_18_024658_add_price_type_column_to_services_table',8),(83,'2023_10_24_014726_drop_unique_in_room_name',8),(84,'2024_06_10_000000_add_content_ht_services_translations',8),(85,'2024_07_11_052139_add_number_of_children_column_to_ht_bookings_table',8),(86,'2024_07_16_234051_add_booking_number_into_table_ht_bookings',8),(87,'2024_12_10_140304_fix_wrong_customer_account',8),(88,'2025_01_22_031331_add_field_content_for_ht_foods_table',8),(89,'2025_03_31_111809_create_ht_booking_foods',8),(90,'2016_10_03_032336_create_languages_table',9),(91,'2023_09_14_022423_add_index_for_language_table',9),(92,'2021_10_25_021023_fix-priority-load-for-language-advanced',10),(93,'2021_12_03_075608_create_page_translations',10),(94,'2023_07_06_011444_create_slug_translations_table',10),(95,'2017_10_24_154832_create_newsletter_table',11),(96,'2024_03_25_000001_update_captcha_settings_for_newsletter',11),(97,'2017_05_18_080441_create_payment_tables',12),(98,'2021_03_27_144913_add_customer_type_into_table_payments',12),(99,'2021_05_24_034720_make_column_currency_nullable',12),(100,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(101,'2021_10_19_020859_update_metadata_field',12),(102,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(103,'2022_07_07_153354_update_charge_id_in_table_payments',12),(104,'2024_07_04_083133_create_payment_logs_table',12),(105,'2025_04_12_000003_add_payment_fee_to_payments_table',12),(106,'2025_05_22_000001_add_payment_fee_type_to_settings_table',12),(107,'2017_07_11_140018_create_simple_slider_table',13),(108,'2025_04_08_040931_create_social_logins_table',14),(109,'2022_11_02_092723_team_create_team_table',15),(110,'2023_08_11_094574_update_team_table',15),(111,'2023_11_30_085354_add_missing_description_to_team',15),(112,'2024_10_02_030027_add_more_columns_to_teams_translations_table',15),(113,'2018_07_09_214610_create_testimonial_table',16),(114,'2021_12_03_083642_create_testimonials_translations',16),(115,'2016_10_07_193005_create_translations_table',17),(116,'2023_12_12_105220_drop_translations_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home Page 01','[simple-slider key=\"home-slider\"][/simple-slider][check-availability-form][/check-availability-form][about-us title=&quot;Most Safe &amp; Rated Hotel In London.&quot; subtitle=&quot;About Us&quot; description=&quot;At About Us, we take pride in offering the most secure and top-rated hotels in London. Your safety and comfort are our priorities, which is why our meticulous selection process ensures each hotel meets stringent quality standards. Whether you&rsquo;re visiting for business or leisure, trust us to provide you with a stay that combines the utmost security and exceptional service.&lt;br&gt; &lt;br&gt;Experience London like never before with our curated list of accommodations that boast prime locations and unmatched safety measures. From charming boutique hotels to Luxuryous city-center options, we&rsquo;ve done the groundwork to present you with a variety of choices that guarantee a worry-free stay. Choose About Us for a memorable trip enriched with both the allure of London.&quot; highlights=&quot;Discover the epitome of safe haven in our top-rated London hotels.; Immerse yourself in the heart of London&rsquo;s charm.; Experience the perfect blend of luxury and comfort.&quot; style=&quot;style-1&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot; signature_image=&quot;general/signature.png&quot; signature_author=&quot;Vincent Smith&quot; top_left_image=&quot;services/about-img-02.png&quot; bottom_right_image=&quot;services/about-img-03.png&quot; floating_right_image=&quot;backgrounds/an-img-02.png&quot;][/about-us][featured-amenities title=\"The Hotel\" subtitle=\"Explore\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_color=\"#F7F5F1\" background_image=\"/backgrounds/an-img-01.png\" amenity_ids=\"1,2,3,4,5,6\"][/featured-amenities][featured-rooms title=\"Rooms & Suites\" subtitle=\"The Pleasure Of Luxury\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" room_ids=\"2,3,4,6,7\"][/featured-rooms][feature-area title=\"Pearl Of The Adriatic.\" subtitle=\"Luxury Hotel & Resort\" description=\"Vestibulum non ornare nunc. Maecenas a metus in est iaculis pretium. Aliquam ullamcorper nibh lacus, ac suscipit ipsum consequat porttitor.Aenean vehicula ligula eu rhoncus porttitor. Duis vel lacinia quam. Nunc rutrum porta ex, in imperdiet tortor feugiat at. Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" image=\"general/feature.png\" background_image=\"backgrounds/an-img-02.png\" button_primary_label=\"Discover More\" button_primary_url=\"/contact-us\" background_color=\"#F7F5F1\"][/feature-area][pricing title=\"Extra Services\" subtitle=\"Best Prices\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" background_image_1=\"backgrounds/an-img-01.png\" background_image_2=\"backgrounds/an-img-02.png\" quantity=\"2\" title_1=\"Room cleaning\" description_1=\"Perfect for early-stage startups\" price_1=\"$39.99\" duration_1=\"Monthly\" feature_list_1=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_1=\"Get Started\" button_url_1=\"/contact-us\" title_2=\"Drinks included\" description_2=\"Perfect for early-stage startups\" price_2=\"$59.99\" duration_2=\"Monthly\" feature_list_2=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_2=\"Get Started \" button_url_2=\"/contact-us\"][/pricing][testimonials title=\"What Our Clients Says\" subtitle=\"Testimonial\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"/backgrounds/testimonial-bg.png\" testimonial_ids=\"1,2,3,5,6,4\"][/testimonials][booking-form title=\"Book A Room\" subtitle=\"Make Reservation\" image=\"general/booking-img.png\" background_image=\"backgrounds/an-img-01.png\" button_primary_label=\"Book Table Now\" button_primary_url=\"/contact-us\" style=\"style-2\"][/booking-form][intro-video title=\"Take A Tour Of Luxury\" youtube_url=\"https://www.youtube.com/watch?v=ldusxyoq0Y8\" background_image=\"general/video-bg.png\"][/intro-video][news title=\"Latest Blog & News\" subtitle=\"Our Blog\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"backgrounds/an-img-07.png\" type=\"featured\" limit=\"3\"][/news][brands background_color=\"#F7F5F1\" quantity=\"6\" name_1=\"Ersintat\" image_1=\"brands/logo-1.png\" link_1=\"https://ersintat.com\" name_2=\"Techradar\" image_2=\"brands/logo-2.png\" link_2=\"https://techradar.com\" name_3=\"Turbologo\" image_3=\"brands/logo-3.png\" link_3=\"https://turbologo.com\" name_4=\"Thepeer\" image_4=\"brands/logo-4.png\" link_4=\"https://thepeer.com\" name_5=\"Techi\" image_5=\"brands/logo-5.png\" link_5=\"http://techi.com\" name_6=\"Grapik\" image_6=\"brands/logo-6.png\" link_6=\"https://grapk.com\"][/brands]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(2,'Home Page 02','[hero-banner-with-booking-form title=\"Enjoy A Luxury Experience\" description=\"Donec vitae libero non enim placerat eleifend aliquam erat volutpat. Curabitur diam ex, dapibus purus sapien, cursus sed nisl tristique, commodo gravida lectus non.\" background_image=\"banners/slider-2.png\" background_color=\"#101010\" button_label=\"VISIT OUR SHOP\" button_url=\"/rooms\" form_title=\"Book A Room\" form_button_label=\"Check Availability\" form_button_url=\"/contact-us\"][/hero-banner-with-booking-form][about-us title=&quot;Most Safe &amp; Rated Hotel In London.&quot; subtitle=&quot;About Us&quot; description=&quot;At About Us, we take pride in offering the most secure and top-rated hotels in London. Your safety and comfort are our priorities, which is why our meticulous selection process ensures each hotel meets stringent quality standards. Whether you&rsquo;re visiting for business or leisure, trust us to provide you with a stay that combines the utmost security and exceptional service.&lt;br&gt; &lt;br&gt;Experience London like never before with our curated list of accommodations that boast prime locations and unmatched safety measures. From charming boutique hotels to Luxuryous city-center options, we&rsquo;ve done the groundwork to present you with a variety of choices that guarantee a worry-free stay. Choose About Us for a memorable trip enriched with both the allure of London.&quot; highlights=&quot;Discover the epitome of safe haven in our top-rated London hotels.; Immerse yourself in the heart of London&rsquo;s charm.; Experience the perfect blend of luxury and comfort.&quot; style=&quot;style-1&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot; signature_image=&quot;general/signature.png&quot; signature_author=&quot;Vincent Smith&quot; top_left_image=&quot;services/about-img-02.png&quot; bottom_right_image=&quot;services/about-img-03.png&quot; floating_right_image=&quot;backgrounds/an-img-02.png&quot;][/about-us][featured-amenities title=\"The Hotel\" subtitle=\"Explore\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_color=\"#F7F5F1\" background_image=\"/backgrounds/an-img-01.png\" amenity_ids=\"1,2,3,4,5,6\"][/featured-amenities][featured-rooms title=\"Rooms & Suites\" subtitle=\"The Pleasure Of Luxury\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" room_ids=\"2,3,4,6,7\"][/featured-rooms][feature-area title=\"Pearl Of The Adriatic.\" subtitle=\"Luxury Hotel & Resort\" description=\"Vestibulum non ornare nunc. Maecenas a metus in est iaculis pretium. Aliquam ullamcorper nibh lacus, ac suscipit ipsum consequat porttitor.Aenean vehicula ligula eu rhoncus porttitor. Duis vel lacinia quam. Nunc rutrum porta ex, in imperdiet tortor feugiat at. Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" image=\"general/feature.png\" background_image=\"backgrounds/an-img-02.png\" button_primary_label=\"Discover More\" button_primary_url=\"/contact-us\" background_color=\"#F7F5F1\"][/feature-area][pricing title=\"Extra Services\" subtitle=\"Best Prices\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" background_image_1=\"backgrounds/an-img-01.png\" background_image_2=\"backgrounds/an-img-02.png\" quantity=\"2\" title_1=\"Room cleaning\" description_1=\"Perfect for early-stage startups\" price_1=\"$39.99\" duration_1=\"Monthly\" feature_list_1=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_1=\"Get Started\" button_url_1=\"/contact-us\" title_2=\"Drinks included\" description_2=\"Perfect for early-stage startups\" price_2=\"$59.99\" duration_2=\"Monthly\" feature_list_2=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_2=\"Get Started \" button_url_2=\"/contact-us\"][/pricing][testimonials title=\"What Our Clients Says\" subtitle=\"Testimonial\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"/backgrounds/testimonial-bg.png\" testimonial_ids=\"1,2,3,5,6,4\"][/testimonials][booking-form title=\"Book A Room\" subtitle=\"Make Reservation\" image=\"general/booking-img.png\" background_image=\"backgrounds/an-img-01.png\" button_primary_label=\"Book Table Now\" button_primary_url=\"/contact-us\" style=\"style-2\"][/booking-form][intro-video title=\"Take A Tour Of Luxury\" youtube_url=\"https://www.youtube.com/watch?v=ldusxyoq0Y8\" background_image=\"general/video-bg.png\"][/intro-video][news title=\"Latest Blog & News\" subtitle=\"Our Blog\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"backgrounds/an-img-07.png\" type=\"featured\" limit=\"3\"][/news][brands background_color=\"#F7F5F1\" quantity=\"6\" name_1=\"Ersintat\" image_1=\"brands/logo-1.png\" link_1=\"https://ersintat.com\" name_2=\"Techradar\" image_2=\"brands/logo-2.png\" link_2=\"https://techradar.com\" name_3=\"Turbologo\" image_3=\"brands/logo-3.png\" link_3=\"https://turbologo.com\" name_4=\"Thepeer\" image_4=\"brands/logo-4.png\" link_4=\"https://thepeer.com\" name_5=\"Techi\" image_5=\"brands/logo-5.png\" link_5=\"http://techi.com\" name_6=\"Grapik\" image_6=\"brands/logo-6.png\" link_6=\"https://grapk.com\"][/brands]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(3,'Home Page Side Menu','[simple-slider key=\"home-slider\"][/simple-slider][check-availability-form][/check-availability-form][about-us title=&quot;Most Safe &amp; Rated Hotel In London.&quot; subtitle=&quot;About Us&quot; description=&quot;At About Us, we take pride in offering the most secure and top-rated hotels in London. Your safety and comfort are our priorities, which is why our meticulous selection process ensures each hotel meets stringent quality standards. Whether you&rsquo;re visiting for business or leisure, trust us to provide you with a stay that combines the utmost security and exceptional service.&lt;br&gt; &lt;br&gt;Experience London like never before with our curated list of accommodations that boast prime locations and unmatched safety measures. From charming boutique hotels to Luxuryous city-center options, we&rsquo;ve done the groundwork to present you with a variety of choices that guarantee a worry-free stay. Choose About Us for a memorable trip enriched with both the allure of London.&quot; highlights=&quot;Discover the epitome of safe haven in our top-rated London hotels.; Immerse yourself in the heart of London&rsquo;s charm.; Experience the perfect blend of luxury and comfort.&quot; style=&quot;style-1&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot; signature_image=&quot;general/signature.png&quot; signature_author=&quot;Vincent Smith&quot; top_left_image=&quot;services/about-img-02.png&quot; bottom_right_image=&quot;services/about-img-03.png&quot; floating_right_image=&quot;backgrounds/an-img-02.png&quot;][/about-us][featured-amenities title=\"The Hotel\" subtitle=\"Explore\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_color=\"#F7F5F1\" background_image=\"/backgrounds/an-img-01.png\" amenity_ids=\"1,2,3,4,5,6\"][/featured-amenities][featured-rooms title=\"Rooms & Suites\" subtitle=\"The Pleasure Of Luxury\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" room_ids=\"2,3,4,6,7\"][/featured-rooms][feature-area title=\"Pearl Of The Adriatic.\" subtitle=\"Luxury Hotel & Resort\" description=\"Vestibulum non ornare nunc. Maecenas a metus in est iaculis pretium. Aliquam ullamcorper nibh lacus, ac suscipit ipsum consequat porttitor.Aenean vehicula ligula eu rhoncus porttitor. Duis vel lacinia quam. Nunc rutrum porta ex, in imperdiet tortor feugiat at. Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" image=\"general/feature.png\" background_image=\"backgrounds/an-img-02.png\" button_primary_label=\"Discover More\" button_primary_url=\"/contact-us\" background_color=\"#F7F5F1\"][/feature-area][pricing title=\"Extra Services\" subtitle=\"Best Prices\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" background_image_1=\"backgrounds/an-img-01.png\" background_image_2=\"backgrounds/an-img-02.png\" quantity=\"2\" title_1=\"Room cleaning\" description_1=\"Perfect for early-stage startups\" price_1=\"$39.99\" duration_1=\"Monthly\" feature_list_1=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_1=\"Get Started\" button_url_1=\"/contact-us\" title_2=\"Drinks included\" description_2=\"Perfect for early-stage startups\" price_2=\"$59.99\" duration_2=\"Monthly\" feature_list_2=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_2=\"Get Started \" button_url_2=\"/contact-us\"][/pricing][testimonials title=\"What Our Clients Says\" subtitle=\"Testimonial\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"/backgrounds/testimonial-bg.png\" testimonial_ids=\"1,2,3,5,6,4\"][/testimonials][booking-form title=\"Book A Room\" subtitle=\"Make Reservation\" image=\"general/booking-img.png\" background_image=\"backgrounds/an-img-01.png\" button_primary_label=\"Book Table Now\" button_primary_url=\"/contact-us\" style=\"style-2\"][/booking-form][intro-video title=\"Take A Tour Of Luxury\" youtube_url=\"https://www.youtube.com/watch?v=ldusxyoq0Y8\" background_image=\"general/video-bg.png\"][/intro-video][news title=\"Latest Blog & News\" subtitle=\"Our Blog\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"backgrounds/an-img-07.png\" type=\"featured\" limit=\"3\"][/news][brands background_color=\"#F7F5F1\" quantity=\"6\" name_1=\"Ersintat\" image_1=\"brands/logo-1.png\" link_1=\"https://ersintat.com\" name_2=\"Techradar\" image_2=\"brands/logo-2.png\" link_2=\"https://techradar.com\" name_3=\"Turbologo\" image_3=\"brands/logo-3.png\" link_3=\"https://turbologo.com\" name_4=\"Thepeer\" image_4=\"brands/logo-4.png\" link_4=\"https://thepeer.com\" name_5=\"Techi\" image_5=\"brands/logo-5.png\" link_5=\"http://techi.com\" name_6=\"Grapik\" image_6=\"brands/logo-6.png\" link_6=\"https://grapk.com\"][/brands]',1,NULL,'side-menu',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(4,'Home Page Full Menu','[simple-slider key=\"home-slider\"][/simple-slider][check-availability-form][/check-availability-form][featured-rooms title=\"Rooms & Suites\" subtitle=\"The Pleasure Of Luxury\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" room_ids=\"2,3,4,6,7\"][/featured-rooms][feature-area title=\"Pearl Of The Adriatic.\" subtitle=\"Luxury Hotel & Resort\" description=\"Vestibulum non ornare nunc. Maecenas a metus in est iaculis pretium. Aliquam ullamcorper nibh lacus, ac suscipit ipsum consequat porttitor.Aenean vehicula ligula eu rhoncus porttitor. Duis vel lacinia quam. Nunc rutrum porta ex, in imperdiet tortor feugiat at. Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" image=\"general/feature.png\" background_image=\"backgrounds/an-img-02.png\" button_primary_label=\"Discover More\" button_primary_url=\"/contact-us\" background_color=\"#F7F5F1\"][/feature-area][about-us title=&quot;Most Safe &amp; Rated Hotel In London.&quot; subtitle=&quot;About Us&quot; description=&quot;At About Us, we take pride in offering the most secure and top-rated hotels in London. Your safety and comfort are our priorities, which is why our meticulous selection process ensures each hotel meets stringent quality standards. Whether you&rsquo;re visiting for business or leisure, trust us to provide you with a stay that combines the utmost security and exceptional service.&lt;br&gt; &lt;br&gt;Experience London like never before with our curated list of accommodations that boast prime locations and unmatched safety measures. From charming boutique hotels to Luxuryous city-center options, we&rsquo;ve done the groundwork to present you with a variety of choices that guarantee a worry-free stay. Choose About Us for a memorable trip enriched with both the allure of London.&quot; highlights=&quot;Discover the epitome of safe haven in our top-rated London hotels.; Immerse yourself in the heart of London&rsquo;s charm.; Experience the perfect blend of luxury and comfort.&quot; style=&quot;style-1&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot; signature_image=&quot;general/signature.png&quot; signature_author=&quot;Vincent Smith&quot; top_left_image=&quot;services/about-img-02.png&quot; bottom_right_image=&quot;services/about-img-03.png&quot; floating_right_image=&quot;backgrounds/an-img-02.png&quot;][/about-us][featured-amenities title=\"The Hotel\" subtitle=\"Explore\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_color=\"#F7F5F1\" background_image=\"/backgrounds/an-img-01.png\" amenity_ids=\"1,2,3,4,5,6\"][/featured-amenities][pricing title=\"Extra Services\" subtitle=\"Best Prices\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" background_image_1=\"backgrounds/an-img-01.png\" background_image_2=\"backgrounds/an-img-02.png\" quantity=\"2\" title_1=\"Room cleaning\" description_1=\"Perfect for early-stage startups\" price_1=\"$39.99\" duration_1=\"Monthly\" feature_list_1=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_1=\"Get Started\" button_url_1=\"/contact-us\" title_2=\"Drinks included\" description_2=\"Perfect for early-stage startups\" price_2=\"$59.99\" duration_2=\"Monthly\" feature_list_2=\"Hotel quis justo at lorem, Fusce sodales urna et tempus, Vestibulum blandit lorem quis\" button_label_2=\"Get Started \" button_url_2=\"/contact-us\"][/pricing][testimonials title=\"What Our Clients Says\" subtitle=\"Testimonial\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"/backgrounds/testimonial-bg.png\" testimonial_ids=\"1,2,3,5,6,4\"][/testimonials][booking-form title=\"Book A Room\" subtitle=\"Make Reservation\" image=\"general/booking-img.png\" background_image=\"backgrounds/an-img-01.png\" button_primary_label=\"Book Table Now\" button_primary_url=\"/contact-us\" style=\"style-2\"][/booking-form][intro-video title=\"Take A Tour Of Luxury\" youtube_url=\"https://www.youtube.com/watch?v=ldusxyoq0Y8\" background_image=\"general/video-bg.png\"][/intro-video][news title=\"Latest Blog & News\" subtitle=\"Our Blog\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"backgrounds/an-img-07.png\" type=\"featured\" limit=\"3\"][/news][brands background_color=\"#F7F5F1\" quantity=\"6\" name_1=\"Ersintat\" image_1=\"brands/logo-1.png\" link_1=\"https://ersintat.com\" name_2=\"Techradar\" image_2=\"brands/logo-2.png\" link_2=\"https://techradar.com\" name_3=\"Turbologo\" image_3=\"brands/logo-3.png\" link_3=\"https://turbologo.com\" name_4=\"Thepeer\" image_4=\"brands/logo-4.png\" link_4=\"https://thepeer.com\" name_5=\"Techi\" image_5=\"brands/logo-5.png\" link_5=\"http://techi.com\" name_6=\"Grapik\" image_6=\"brands/logo-6.png\" link_6=\"https://grapk.com\"][/brands]',1,NULL,'full-menu',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(5,'About Us','[about-us title=&quot;Most Safe &amp; Rated Hotel In London.&quot; subtitle=&quot;About Us&quot; description=&quot;At About Us, we take pride in offering the most secure and top-rated hotels in London. Your safety and comfort are our priorities, which is why our meticulous selection process ensures each hotel meets stringent quality standards. Whether you&rsquo;re visiting for business or leisure, trust us to provide you with a stay that combines the utmost security and exceptional service.&lt;br&gt; &lt;br&gt;Experience London like never before with our curated list of accommodations that boast prime locations and unmatched safety measures. From charming boutique hotels to Luxuryous city-center options, we&rsquo;ve done the groundwork to present you with a variety of choices that guarantee a worry-free stay. Choose About Us for a memorable trip enriched with both the allure of London.&quot; highlights=&quot;Discover the epitome of safe haven in our top-rated London hotels.; Immerse yourself in the heart of London&rsquo;s charm.; Experience the perfect blend of luxury and comfort.&quot; style=&quot;style-2&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot; signature_image=&quot;general/signature.png&quot; signature_author=&quot;Vincent Smith&quot; top_left_image=&quot;services/about-img-02.png&quot; bottom_right_image=&quot;services/about-img-03.png&quot; floating_right_image=&quot;backgrounds/an-img-02.png&quot;][/about-us][why-choose-us title=\"We Offer Wide Selection of Hotel\" subtitle=\"Rio We Use\" description=\"Explore a variety of handpicked hotels with Rio We Use. Your ideal stay is just a click away. Book now for an unforgettable experience.\" right_image=\"services/skills-img.png\" background_color=\"#291D16\" background_image=\"backgrounds/an-img-05.png\" quantity=\"3\" title_1=\"Quality Production\" percentage_1=\"80\" title_2=\"Maintenance Services\" percentage_2=\"90\" title_3=\"Product Management\" percentage_3=\"70\"][/why-choose-us][services title=&quot;Pearl Of The Adriatic.&quot; subtitle=&quot;Luxury Hotel &amp; Resort&quot; description=&quot;Indulge in the ultimate lavish escape at our Luxury Hotel &amp; Resort, renowned as the Pearl of the Adriatic. Immerse yourself in unparalleled elegance and breathtaking coastal beauty for an unforgettable retreat. &lt;br&gt;&lt;br&gt;Nestled along the stunning Adriatic coast, our Luxury Hotel &amp; Resort stands as a beacon of opulence and tranquility. With panoramic views of the sparkling waters and world-class amenities at your fingertips, every moment becomes a precious gem. Experience unrivaled hospitality and immerse yourself in the allure of the Pearl of the Adriatic.&quot; left_image=&quot;services/feature.png&quot; right_floating_image=&quot;backgrounds/an-img-02.png&quot; button_label=&quot;DISCOVER MORE&quot; button_url=&quot;/about-us&quot;][/services][news title=\"Latest Blog & News\" subtitle=\"Our Blog\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"backgrounds/an-img-07.png\" type=\"featured\" limit=\"3\"][/news][newsletter title=\"Get Best Offers On The Hotel\" subtitle=\"Newsletter\" description=\"With the subscription, enjoy your favourite Hotels without having to think about it\" background_color=\"#F7F5F1\" left_floating_image=\"backgrounds/an-img-07.png\"][/newsletter]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(6,'Services','[service-list background_image=\"backgrounds/an-img-01.png\" limit=\"6\"][/service-list][feature-area title=\"Pearl Of The Adriatic.\" subtitle=\"Luxury Hotel & Resort\" description=\"Vestibulum non ornare nunc. Maecenas a metus in est iaculis pretium. Aliquam ullamcorper nibh lacus, ac suscipit ipsum consequat porttitor.Aenean vehicula ligula eu rhoncus porttitor. Duis vel lacinia quam. Nunc rutrum porta ex, in imperdiet tortor feugiat at. Cras finibus laoreet felis et hendrerit. Integer ligula lorem, finibus vitae lorem at, egestas consectetur urna. Integer id ultricies elit. Maecenas sodales nibh, quis posuere felis. In commodo mi lectus venenatis metus eget fringilla. Suspendisse varius ante eget.\" image=\"general/feature.png\" background_image=\"backgrounds/an-img-02.png\" button_primary_label=\"Discover More\" button_primary_url=\"/contact-us\" background_color=\"#F7F5F1\"][/feature-area][booking-form title=\"Book A Room\" subtitle=\"Make Reservation\" image=\"general/booking-img.png\" background_image=\"backgrounds/an-img-01.png\" button_primary_label=\"Book Table Now\" button_primary_url=\"/contact-us\" style=\"style-2\"][/booking-form][testimonials title=\"What Our Clients Says\" subtitle=\"Testimonial\" description=\"Proin consectetur non dolor vitae pulvinar. Pellentesque sollicitudin dolor eget neque viverra, sed interdum metus interdum. Cras lobortis pulvinar dolor, sit amet ullamcorper dolor iaculis vel\" background_image=\"/backgrounds/testimonial-bg.png\" testimonial_ids=\"1,2,3,5,6,4\"][/testimonials]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:33','2025-05-03 11:19:33'),(7,'Galleries','[galleries limit=\"10\"][/galleries]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(8,'FAQ','[faqs category_ids=\"1,2,3,4,5\"][/faqs][newsletter title=\"Get Best Offers On The Hotel\" subtitle=\"Newsletter\" description=\"With the subscription, enjoy your favourite Hotels without having to think about it\" background_color=\"#F7F5F1\" left_floating_image=\"backgrounds/an-img-07.png\"][/newsletter][teams title=\"Best Expert Hotel\" subtitle=\"Our Team\" description=\"As a united team, we passionately craft your perfect stay, ensuring every detail reflects our commitment to exceptional hospitality.\" team_ids=\"1,2,3,4,5,6\"][/teams]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(9,'Team','[teams team_ids=\"1,2,3,4,5,6,7,8\" style=\"style-2\"][/teams][why-choose-us title=\"We Offer Wide Selection of Hotel\" subtitle=\"Rio We Use\" description=\"Explore a variety of handpicked hotels with Rio We Use. Your ideal stay is just a click away. Book now for an unforgettable experience.\" right_image=\"services/skills-img.png\" background_color=\"#291D16\" background_image=\"backgrounds/an-img-05.png\" quantity=\"3\" title_1=\"Quality Production\" percentage_1=\"80\" title_2=\"Maintenance Services\" percentage_2=\"90\" title_3=\"Product Management\" percentage_3=\"70\"][/why-choose-us][newsletter title=\"Get Best Offers On The Hotel\" subtitle=\"Newsletter\" description=\"With the subscription, enjoy your favourite Hotels without having to think about it\" background_color=\"#F7F5F1\" left_floating_image=\"backgrounds/an-img-07.png\"][/newsletter]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(10,'Blog','[blog-posts paginate=\"12\"][/blog-posts]',1,NULL,'blog-sidebar',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(11,'Contact Us','[contact-form title=&quot;Get In Touch&quot; title_button=&quot;SUBMIT NOW&quot; address_icon=&quot;far fa-map&quot; address_label=&quot;Office Address&quot; address_detail=&quot;380 St Kilda Road, Melbourne &lt;br&gt;VIC 3004, Australia&quot; email_icon=&quot;far fa-envelope-open&quot; email_label=&quot;Message Us&quot; email_detail=&quot;support@example.com &lt;br&gt;info@example.com&quot; work_time_icon=&quot;far fa-clock&quot; work_time_label=&quot;Working Hours&quot; work_time_detail=&quot;Monday to Friday 09:00 to 18:30 &lt;br&gt;Saturday 15:30&quot; phone_icon=&quot;fa fa-phone&quot; phone_label=&quot;(+1) 123 456 78&quot; phone_detail=&quot; 24/7 Customer Service And Returns Support.&quot;][/contact-form][newsletter title=\"Get Best Offers On The Hotel\" subtitle=\"Newsletter\" description=\"With the subscription, enjoy your favourite Hotels without having to think about it\" background_color=\"#F7F5F1\" left_floating_image=\"backgrounds/an-img-07.png\"][/newsletter]',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(12,'Privacy','<div class=\"about-area5 about-p p-relative\">\n    <div class=\"container pt-60 pb-90\">\n        <div class=\"service-detail\">\n            <div class=\"content-box\">\n                <h2> Privacy Statement </h2>\n                <p>First things first – your privacy is important to us. That might be the kind of thing all these notices say, but we mean it. You place your trust in us by using us services and we value that trust. That means we’re committed to protecting and safeguarding your personal data. We act in our customers’ best interest and we are transparent about the processing of your personal data.</p>\n                <p>If you’ve used us before, you know that us services offers online travel-related services through our own websites and mobile apps, as well as other online platforms such as partners’ websites and social media. We’d like to point out that all the information you are about to read, generally applies to not one, not two, but all of these platforms.</p>\n                <p>If you’ve used us before, you know that us services offers online travel-related services through our own websites and mobile apps, as well as other online platforms such as partners’ websites and social media. We’d like to point out that all the information you are about to read, generally applies to not one, not two, but all of these platforms.</p>\n\n                <h2>Terms we use in this Privacy Statement</h2>\n                <p>\'Trip\' means the various different travel products and services that can be ordered, acquired, purchased, bought, paid, rented, provided, reserved, combined, or consummated by you from the Trip Provider.</p>\n                <p>\'Trip Provider\' means the provider of accommodation (e.g. hotel, motel, apartment, bed & breakfast, landlord), attractions (e.g. (theme) parks, museums, sightseeing tours), transportation provider (e.g. car rentals, cruises, rail, airport rides, coach tours, transfers), tour operators, travel insurances and any other travel or related product or service as from time to time available for Trip Reservation on the platform.</p>\n            </div>\n        </div>\n    </div>\n</div>\n',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(13,'Term and Conditions','<div class=\"about-area5 about-p p-relative\">\n    <div class=\"container pt-60 pb-90\">\n        <div class=\"service-detail\">\n            <div class=\"content-box\">\n                <h3>Definitions</h3>\n                <p>Some of the words you’ll see have very specific meanings, so please check out the ‘RioRelax dictionary’ at the end of these Terms.</p>\n\n                <h3>About these terms</h3>\n                <p>When you complete your Booking, you accept these Terms and any other terms that you’re provided with during the booking process.</p>\n                <p>The English version of these Terms is the original. If there’s any dispute about the Terms, or any mismatch between the Terms in English and in another language, the Terms as they appear in English will apply. (You can change the language at the top of this page.</p>\n\n                <h3>Our Platform</h3>\n                <p> We take reasonable care in providing our Platform, but we can’t guarantee that everything on it is accurate (we get information from the Service Providers). To the extent permitted by law, we can’t be held responsible for any errors, any interruptions, or any missing bits of information - although we will do everything we can to correct/fix them as soon as we can.</p>\n                <P>We will show you the offers that are available to you, in (what we think is) the right language for you. You can change to another language whenever you like.</P>\n\n                <h3>Prices</h3>\n                <p> When you make a Booking, you agree to pay the cost of the Travel Experience, including any charges and taxes that may apply.</p>\n                <p> Some of the prices you see may have been rounded to the nearest whole number. The price you pay will be based on the original, \'non-rounded\' price (although the actual difference will be tiny anyway).</p>\n            </div>\n        </div>\n    </div>\n</div>\n',1,NULL,'full-width',NULL,'published','2025-05-03 11:19:34','2025-05-03 11:19:34');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',9,'VuahrKW5KIAjlnDttHhy','razorpay',NULL,444.00,0.00,1,'canceled','direct',9,NULL,NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42','Botble\\Hotel\\Models\\Customer',NULL),(2,'USD',5,'OUAH5ZbNodkFOlOdWRSV','stripe',NULL,148.00,0.00,2,'failed','direct',5,NULL,NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42','Botble\\Hotel\\Models\\Customer',NULL),(3,'USD',4,'lHTeBsAsQ0lVio7YvUQ8','paypal',NULL,142.00,0.00,3,'fraud','direct',4,NULL,NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42','Botble\\Hotel\\Models\\Customer',NULL),(4,'USD',1,'BrdSsGo15wzdShbdfff7','bank_transfer',NULL,162.00,0.00,4,'canceled','direct',1,NULL,NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42','Botble\\Hotel\\Models\\Customer',NULL),(5,'USD',9,'arXBl3efYd8hYZIoJjlH','paypal',NULL,178.00,0.00,5,'canceled','direct',9,NULL,NULL,'2025-05-03 11:19:42','2025-05-03 11:19:42','Botble\\Hotel\\Models\\Customer',NULL),(6,'USD',5,'fKpAAYeC8MqduJv4tme0','sslcommerz',NULL,444.00,0.00,6,'pending','direct',5,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(7,'USD',9,'Qb6WhemmhMQUoG1jmRin','paypal',NULL,384.00,0.00,7,'pending','direct',9,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(8,'USD',11,'9vORLwqagp3tmlAL9gLM','paypal',NULL,142.00,0.00,8,'pending','direct',11,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(9,'USD',8,'xfUP60Ep29NGX7QypfAz','paystack',NULL,426.00,0.00,9,'canceled','direct',8,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(10,'USD',6,'d1uJs5gTbxiWMN2M7IUE','paystack',NULL,426.00,0.00,10,'refunding','direct',6,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(11,'USD',3,'MBoFS4P77c7cwRCNvV7Y','paystack',NULL,256.00,0.00,11,'fraud','direct',3,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(12,'USD',6,'ircU3Yoh2FzrzILOoKqk','paypal',NULL,178.00,0.00,12,'completed','direct',6,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(13,'USD',11,'0QQAbry6o9nFbwqrOo1t','stripe',NULL,142.00,0.00,13,'canceled','direct',11,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(14,'USD',9,'Jx9slHePeqUlBYdOwJWo','paypal',NULL,356.00,0.00,14,'completed','direct',9,NULL,NULL,'2025-05-03 11:19:43','2025-05-03 11:19:43','Botble\\Hotel\\Models\\Customer',NULL),(15,'USD',10,'Su16OXNhI8QMPu9XeHWd','cod',NULL,162.00,0.00,15,'canceled','direct',10,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(16,'USD',4,'45EfOvegXUDzxSqkv4V6','stripe',NULL,444.00,0.00,16,'refunded','direct',4,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(17,'USD',4,'t9g8Ug79rhQy2zZjjDVp','paystack',NULL,534.00,0.00,17,'refunding','direct',4,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(18,'USD',9,'gE04Yf8J8alG29f1K5FL','cod',NULL,128.00,0.00,18,'pending','direct',9,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(19,'USD',11,'qr4TGMHqyFhPJIYqJ8aU','stripe',NULL,384.00,0.00,19,'canceled','direct',11,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(20,'USD',1,'zHqgOWH90yfpabk0SHfM','stripe',NULL,444.00,0.00,20,'refunded','direct',1,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(21,'USD',6,'n0Umyxp2T1GZzNzeb0fR','paystack',NULL,534.00,0.00,21,'completed','direct',6,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(22,'USD',10,'kOUuF3aYnOhA6N6ri21j','sslcommerz',NULL,128.00,0.00,22,'canceled','direct',10,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(23,'USD',9,'w9TbER4ey2JAgiUCSG7I','bank_transfer',NULL,296.00,0.00,23,'canceled','direct',9,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(24,'USD',5,'MpzIgpIHk6qOl0kq2HAA','stripe',NULL,256.00,0.00,24,'refunded','direct',5,NULL,NULL,'2025-05-03 11:19:44','2025-05-03 11:19:44','Botble\\Hotel\\Models\\Customer',NULL),(25,'USD',9,'Hmim095gsMyaXtfyb5NL','razorpay',NULL,162.00,0.00,25,'completed','direct',9,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(26,'USD',10,'NORQFZJWwWsQWc7Lrcvz','bank_transfer',NULL,306.00,0.00,26,'refunded','direct',10,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(27,'USD',6,'JDQbMa67PQ86jL576pCi','sslcommerz',NULL,444.00,0.00,27,'canceled','direct',6,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(28,'USD',7,'uYbGA0cLdYq78XpswqC9','bank_transfer',NULL,128.00,0.00,28,'fraud','direct',7,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(29,'USD',1,'97nhjRok8oANLCOY1mik','bank_transfer',NULL,306.00,0.00,29,'refunded','direct',1,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(30,'USD',8,'OuZJZvC2bbJ2GxxBnHUe','razorpay',NULL,142.00,0.00,30,'completed','direct',8,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(31,'USD',4,'xqSFXFKux0nDyM6lgZRz','bank_transfer',NULL,128.00,0.00,31,'failed','direct',4,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(32,'USD',1,'9lrV23wlRTJE2QrgAfN7','sslcommerz',NULL,534.00,0.00,32,'fraud','direct',1,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(33,'USD',6,'j4XTv5Uw4rnhljhW6CNn','paypal',NULL,324.00,0.00,33,'fraud','direct',6,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(34,'USD',5,'Od6P2uc3ZASj4pvSpTSu','stripe',NULL,145.00,0.00,34,'refunding','direct',5,NULL,NULL,'2025-05-03 11:19:45','2025-05-03 11:19:45','Botble\\Hotel\\Models\\Customer',NULL),(35,'USD',2,'wtdDhx1cZm0pEbmIolHC','paypal',NULL,290.00,0.00,35,'refunding','direct',2,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(36,'USD',5,'sQq9lM4duODhMAk2UoJz','razorpay',NULL,534.00,0.00,36,'failed','direct',5,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(37,'USD',1,'EK8B9ojNyItT0yPRm7Gx','stripe',NULL,128.00,0.00,37,'completed','direct',1,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(38,'USD',10,'uojPjpa3srEjhDwkAEjk','bank_transfer',NULL,296.00,0.00,38,'canceled','direct',10,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(39,'USD',1,'y50Rmd4lu93qy9r2GjTS','stripe',NULL,153.00,0.00,39,'completed','direct',1,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(40,'USD',1,'SaylMKPGkj8NDGfKnVnw','razorpay',NULL,284.00,0.00,40,'refunded','direct',1,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL),(41,'USD',1,'25z85duePaVCuLCwFEIW','sslcommerz',NULL,384.00,0.00,41,'refunding','direct',1,NULL,NULL,'2025-05-03 11:19:46','2025-05-03 11:19:46','Botble\\Hotel\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(4,1),(2,2),(3,2),(2,3),(3,3),(1,4),(4,4),(1,5),(3,5),(2,6),(4,6);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Each of our 8 double rooms has its own distinct.','Discover a world of unique comfort in our collection of 8 double rooms, each boasting its own distinct charm and character. Immerse yourself in a stay that caters to your individual preferences','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1816,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(2,'Essential Qualities of Highly Successful Music','Delve into the secrets behind the music that resonates deeply with audiences worldwide. Uncover the essential qualities that elevate music from ordinary to extraordinary, as we explore.','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1670,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(3,'9 Things I Love About Shaving My Head','Embark on a personal journey of self-discovery and empowerment as we delve into the unique experience of embracing a bald look. From newfound confidence to a simplified routine, explore the 9 things','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',2197,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(4,'Why Teamwork Really Makes The Dream Work','Unlock the power of collaboration and synergy in achieving your goals. In this exploration of the importance of teamwork, we delve into real-world examples and insights and how combining diverse skills.','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',2190,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(5,'The World Caters to Average People','Unveil the hidden truths behind success in a world that often values conformity. In a thought-provoking analysis, we examine why societal norms tend to cater to the average and breaking boundaries.','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',283,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21'),(6,'The litigants on the screen are not actors','Take a behind-the-scenes look at the reality of courtroom dramas. Contrary to common assumptions, the litigants you see on the screen are not mere actors, but real people with compelling stories.','<p>\n    At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n</p>\n<p>\n    Unlock the Gateway to Opulent Tranquility: Introducing Riorelax\n    Embark on a journey to unparalleled luxury and coastal elegance. Nestled along the Adriatic\'s pristine shoreline, Riorelax stands as a beacon of refined indulgence. Join us as we delve into the enchanting world of bespoke experiences, exquisite accommodations, and personalized service that defines our exceptional hotel. From captivating sea-view rooms to tantalizing gastronomic delights, spa sanctuaries, and curated adventures, our blog takes you behind the scenes of a retreat where every moment is a masterpiece. Uncover the essence of opulence, where your desires are our command and the Adriatic becomes your playground. Stay tuned for a symphony of elegance, artistry, and inspiration in our upcoming series.\n</p>\n<blockquote>\n    <footer>By Rosalina Pong</footer>\n    <h3>Viral dreamcatcher keytar typewriter, aest hetic offal umami. Aesthetic polaroid pug pitchfork post-ironic.</h3>\n</blockquote>\n<p>\n    Step into a realm where luxury is not just a word, but a way of life. Riorelax invites you to explore a world where opulence meets comfort in seamless harmony. Our blog series will unveil the heart and soul of our hotel, from the intricacies of our meticulous design to the intuitive service that anticipates your every need. Join us on a virtual tour that captures the essence of sophistication, a prelude to the unforgettable experience that awaits you at our shores.\n</p>\n<div class=\"details__content-img\">\n    <img src=\"http://localhost/storage/news/1.jpg\" alt=\"\" />\n</div>\n<p>\n    Prepare to tantalize your taste buds as we delve into the culinary symphony orchestrated by our skilled chefs. From gourmet creations that blend local flavors with international finesse to the art of crafting the perfect cocktail, our blog will be your guide to the exceptional dining journey that awaits. Join us in savoring the stories behind each dish, the dedication that goes into every creation, and the joy of experiencing food as an art form within our culinary haven.\n</p>\n<figure>\n    <img src=\"http://localhost/storage/news/2.jpg\" alt=\"\" />\n    <p>\n        At Riorelax, we believe in crafting memories that last a lifetime. Our blog series will unveil the array of experiences we offer, tailored to every kind of traveler. Whether you seek adventure, relaxation, romance, or exploration, our personalized activities and excursions ensure that your stay transcends the ordinary. Join us as we share stories of guests who\'ve embraced the luxury of choice and embarked on journeys that become cherished tales, all within the embrace of our extraordinary hotel.\n    </p>\n</figure>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',358,NULL,'2025-05-03 11:19:21','2025-05-03 11:19:21');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"room.index\":true,\"room.create\":true,\"room.edit\":true,\"room.destroy\":true,\"amenity.index\":true,\"amenity.create\":true,\"amenity.edit\":true,\"amenity.destroy\":true,\"food.index\":true,\"food.create\":true,\"food.edit\":true,\"food.destroy\":true,\"food-type.index\":true,\"food-type.create\":true,\"food-type.edit\":true,\"food-type.destroy\":true,\"booking.index\":true,\"booking.edit\":true,\"booking.destroy\":true,\"invoices.index\":true,\"invoices.edit\":true,\"invoices.destroy\":true,\"booking.reports.index\":true,\"booking.calendar.index\":true,\"booking-address.index\":true,\"booking-address.create\":true,\"booking-address.edit\":true,\"booking-address.destroy\":true,\"booking-room.index\":true,\"booking-room.create\":true,\"booking-room.edit\":true,\"booking-room.destroy\":true,\"customer.index\":true,\"customer.create\":true,\"customer.edit\":true,\"customer.destroy\":true,\"room-category.index\":true,\"room-category.create\":true,\"room-category.edit\":true,\"room-category.destroy\":true,\"feature.index\":true,\"feature.create\":true,\"feature.edit\":true,\"feature.destroy\":true,\"service.index\":true,\"service.create\":true,\"service.edit\":true,\"service.destroy\":true,\"place.index\":true,\"place.create\":true,\"place.edit\":true,\"place.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"invoice.template\":true,\"coupons.index\":true,\"coupons.create\":true,\"coupons.edit\":true,\"coupons.destroy\":true,\"hotel.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"team.index\":true,\"team.create\":true,\"team.edit\":true,\"team.destroy\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-05-03 11:19:36','2025-05-03 11:19:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','efca8fee1a203b0e7d5910c3b9e36b1e',NULL,'2025-05-03 11:19:39'),(2,'api_enabled','0',NULL,'2025-05-03 11:19:39'),(3,'analytics_dashboard_widgets','0','2025-05-03 11:19:15','2025-05-03 11:19:15'),(4,'activated_plugins','[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"faq\",\"gallery\",\"hotel\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"team\",\"testimonial\",\"translation\"]',NULL,'2025-05-03 11:19:39'),(5,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2025-05-03 11:19:16','2025-05-03 11:19:16'),(6,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2025-05-03 11:19:18','2025-05-03 11:19:18'),(7,'payment_cod_fee_type','fixed',NULL,'2025-05-03 11:19:39'),(8,'payment_bank_transfer_fee_type','fixed',NULL,'2025-05-03 11:19:39'),(9,'theme','riorelax',NULL,'2025-05-03 11:19:39'),(10,'show_admin_bar','1',NULL,'2025-05-03 11:19:39'),(11,'language_hide_default','1',NULL,'2025-05-03 11:19:39'),(13,'language_display','all',NULL,'2025-05-03 11:19:39'),(14,'language_hide_languages','[]',NULL,'2025-05-03 11:19:39'),(15,'language_switcher_display','dropdown',NULL,'2025-05-03 11:19:39'),(16,'admin_logo','general/logo.png',NULL,'2025-05-03 11:19:39'),(17,'admin_favicon','general/favicon.png',NULL,'2025-05-03 11:19:39'),(18,'permalink-botble-blog-models-post','news',NULL,'2025-05-03 11:19:39'),(19,'permalink-botble-blog-models-category','news',NULL,'2025-05-03 11:19:39'),(20,'payment_cod_status','1',NULL,'2025-05-03 11:19:39'),(21,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-05-03 11:19:39'),(22,'payment_bank_transfer_status','1',NULL,'2025-05-03 11:19:39'),(23,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-05-03 11:19:39'),(24,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-05-03 11:19:39'),(25,'hotel_company_logo_for_invoicing','general/logo-dark.png',NULL,'2025-05-03 11:19:39'),(26,'hotel_company_address_for_invoicing','123, My Street, Kingston, New York',NULL,'2025-05-03 11:19:39'),(27,'hotel_company_email_for_invoicing','contact@archielite.com',NULL,'2025-05-03 11:19:39'),(28,'hotel_company_phone_for_invoicing','123456789',NULL,'2025-05-03 11:19:39'),(29,'hotel_enable_review_room','1',NULL,'2025-05-03 11:19:39'),(30,'hotel_reviews_per_page','10',NULL,'2025-05-03 11:19:39'),(31,'theme-riorelax-site_title','Hotel Riorelax',NULL,'2025-05-03 11:19:39'),(32,'theme-riorelax-copyright','©2025 Archi Elite JSC. All right reserved.',NULL,'2025-05-03 11:19:39'),(33,'theme-riorelax-primary_color','#644222',NULL,'2025-05-03 11:19:39'),(34,'theme-riorelax-secondary_color','#be9874',NULL,'2025-05-03 11:19:39'),(35,'theme-riorelax-input_border_color','#d7cfc8',NULL,'2025-05-03 11:19:39'),(36,'theme-riorelax-primary_color_hover','#2e1913',NULL,'2025-05-03 11:19:39'),(37,'theme-riorelax-button_text_color_hover','#101010',NULL,'2025-05-03 11:19:39'),(38,'theme-riorelax-primary_font','Roboto',NULL,'2025-05-03 11:19:39'),(39,'theme-riorelax-heading_font','Jost',NULL,'2025-05-03 11:19:39'),(40,'theme-riorelax-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2025-05-03 11:19:39'),(41,'theme-riorelax-cookie_consent_learn_more_url','/cookie-policy',NULL,'2025-05-03 11:19:39'),(42,'theme-riorelax-cookie_consent_learn_more_text','Cookie Policy',NULL,'2025-05-03 11:19:39'),(43,'theme-riorelax-homepage_id','1',NULL,'2025-05-03 11:19:39'),(44,'theme-riorelax-blog_page_id','10',NULL,'2025-05-03 11:19:39'),(45,'theme-riorelax-logo','general/logo.png',NULL,'2025-05-03 11:19:39'),(46,'theme-riorelax-favicon','general/favicon.png',NULL,'2025-05-03 11:19:39'),(47,'theme-riorelax-email','info@webmail.com',NULL,'2025-05-03 11:19:39'),(48,'theme-riorelax-address','14/A, Riorelax City, NYC',NULL,'2025-05-03 11:19:39'),(49,'theme-riorelax-hotline','+908 987 877 09',NULL,'2025-05-03 11:19:39'),(50,'theme-riorelax-preloader_enabled','no',NULL,'2025-05-03 11:19:39'),(51,'theme-riorelax-opening_hours','Mon - Fri: 9:00 - 19:00/ Closed on Weekends',NULL,'2025-05-03 11:19:39'),(52,'theme-riorelax-header_button_url','/contact-us',NULL,'2025-05-03 11:19:39'),(53,'theme-riorelax-header_button_label','Reservation',NULL,'2025-05-03 11:19:39'),(54,'theme-riorelax-background_footer','backgrounds/footer-bg.png',NULL,'2025-05-03 11:19:39'),(55,'theme-riorelax-galleries_limit_images','3',NULL,'2025-05-03 11:19:39'),(56,'theme-riorelax-hotel_rules','<ul><li>No smoking, parties or events.</li><li>Check-in time from 2 PM, check-out by 10 AM.</li><li>Time to time car parking</li><li>Download Our minimal app</li><li>Browse regular our website</li></ul>',NULL,'2025-05-03 11:19:39'),(57,'theme-riorelax-cancellation','<p>We’re pleased to offer a full refund of the booking amount for cancellations made <strong>14 days or more</strong> before the scheduled check-in date. This generous window provides you with the flexibility to adjust your plans without any financial repercussions.<p>',NULL,'2025-05-03 11:19:39'),(58,'theme-riorelax-authentication_login_background_image','general/booking-img.png',NULL,'2025-05-03 11:19:39'),(59,'theme-riorelax-authentication_register_background_image','general/booking-img.png',NULL,'2025-05-03 11:19:39'),(60,'theme-riorelax-authentication_forgot_password_background_image','general/booking-img.png',NULL,'2025-05-03 11:19:39'),(61,'theme-riorelax-authentication_reset_password_background_image','general/booking-img.png',NULL,'2025-05-03 11:19:39'),(62,'theme-riorelax-404_page_image','general/404.png',NULL,'2025-05-03 11:19:39'),(63,'theme-riorelax-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook-f\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\\/\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"fab fa-instagram\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.instagram.com\\/\"}],[{\"key\":\"name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.twitter.com\\/\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/\"}]]',NULL,'2025-05-03 11:19:39'),(64,'simple_slider_using_assets','0',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Enjoy A Luxury Experience','banners/slider-1.png','/contact-us','Donec vitae libero non enim placerat eleifend aliquam erat volutpat. Curabitur diam ex, dapibus purus sapien, cursus sed nisl tristique, commodo gravida lectus non.',1,'2025-05-03 11:19:39','2025-05-03 11:19:39'),(2,1,'Enjoy A Luxury Experience','banners/slider-2.png','/contact-us','Donec vitae libero non enim placerat eleifend aliquam erat volutpat. Curabitur diam ex, dapibus purus sapien, cursus sed nisl tristique, commodo gravida lectus non.',2,'2025-05-03 11:19:39','2025-05-03 11:19:39');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-05-03 11:19:39','2025-05-03 11:19:39');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'general',1,'Botble\\Blog\\Models\\Category','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(2,'hotel',2,'Botble\\Blog\\Models\\Category','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(3,'booking',3,'Botble\\Blog\\Models\\Category','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(4,'resort',4,'Botble\\Blog\\Models\\Category','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(5,'travel',5,'Botble\\Blog\\Models\\Category','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(6,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-05-03 11:19:21','2025-05-03 11:19:21'),(7,'hotel',2,'Botble\\Blog\\Models\\Tag','tag','2025-05-03 11:19:21','2025-05-03 11:19:21'),(8,'booking',3,'Botble\\Blog\\Models\\Tag','tag','2025-05-03 11:19:21','2025-05-03 11:19:21'),(9,'resort',4,'Botble\\Blog\\Models\\Tag','tag','2025-05-03 11:19:21','2025-05-03 11:19:21'),(10,'travel',5,'Botble\\Blog\\Models\\Tag','tag','2025-05-03 11:19:21','2025-05-03 11:19:21'),(11,'each-of-our-8-double-rooms-has-its-own-distinct',1,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(12,'essential-qualities-of-highly-successful-music',2,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(13,'9-things-i-love-about-shaving-my-head',3,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(14,'why-teamwork-really-makes-the-dream-work',4,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(15,'the-world-caters-to-average-people',5,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(16,'the-litigants-on-the-screen-are-not-actors',6,'Botble\\Blog\\Models\\Post','news','2025-05-03 11:19:21','2025-05-03 11:19:36'),(17,'luxury-hall-of-fame',1,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(18,'pendora-fame',2,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(19,'pacific-room',3,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(20,'junior-suite',4,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(21,'family-suite',5,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(22,'relax-suite',6,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(23,'luxury-suite',7,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(24,'president-room',8,'Botble\\Hotel\\Models\\Room','rooms','2025-05-03 11:19:24','2025-05-03 11:19:24'),(25,'quality-room',1,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(26,'privet-beach',2,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(27,'best-accommodation',3,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(28,'wellness-spa',4,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(29,'restaurants-bars',5,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(30,'special-offers',6,'Botble\\Hotel\\Models\\Service','services','2025-05-03 11:19:26','2025-05-03 11:19:26'),(31,'duplex-restaurant',1,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(32,'overnight-bars',2,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(33,'beautiful-beach',3,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(34,'beautiful-spa',4,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(35,'duplex-golf',5,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(36,'luxury-restaurant',6,'Botble\\Hotel\\Models\\Place','places','2025-05-03 11:19:30','2025-05-03 11:19:30'),(37,'home-page-01',1,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:33','2025-05-03 11:19:33'),(38,'home-page-02',2,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:33','2025-05-03 11:19:33'),(39,'home-page-side-menu',3,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:33','2025-05-03 11:19:33'),(40,'home-page-full-menu',4,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:33','2025-05-03 11:19:33'),(41,'about-us',5,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:33','2025-05-03 11:19:33'),(42,'services',6,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(43,'galleries',7,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(44,'faq',8,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(45,'team',9,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(46,'blog',10,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(47,'contact-us',11,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(48,'privacy',12,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(49,'term-and-conditions',13,'Botble\\Page\\Models\\Page','','2025-05-03 11:19:34','2025-05-03 11:19:34'),(50,'room',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-05-03 11:19:36','2025-05-03 11:19:36'),(51,'hall',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-05-03 11:19:36','2025-05-03 11:19:36'),(52,'guardian',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-05-03 11:19:36','2025-05-03 11:19:36'),(53,'hotel',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-05-03 11:19:36','2025-05-03 11:19:36'),(54,'event-hall',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-05-03 11:19:36','2025-05-03 11:19:36'),(55,'howard-holmes',1,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(56,'ella-thompson',2,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(57,'devon-lane',3,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(58,'kate-beckham',4,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(59,'vincent-cooper',5,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(60,'danielle-bryant',6,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(61,'kami-hope',7,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(62,'frankie-musk',8,'Botble\\Team\\Models\\Team','teams','2025-05-03 11:19:41','2025-05-03 11:19:41'),(63,'luxury',1,'Botble\\Hotel\\Models\\RoomCategory','room-categories','2025-05-03 11:19:47','2025-05-03 11:19:47'),(64,'family',2,'Botble\\Hotel\\Models\\RoomCategory','room-categories','2025-05-03 11:19:47','2025-05-03 11:19:47'),(65,'double-bed',3,'Botble\\Hotel\\Models\\RoomCategory','room-categories','2025-05-03 11:19:47','2025-05-03 11:19:47'),(66,'relax',4,'Botble\\Hotel\\Models\\RoomCategory','room-categories','2025-05-03 11:19:47','2025-05-03 11:19:47'),(67,'eggs-bacon',1,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(68,'tea-or-coffee',2,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(69,'chia-oatmeal',3,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(70,'juice',4,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(71,'chia-oatmeal',5,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(72,'fruit-parfait',6,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(73,'marmalade-selection',7,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(74,'cheese-platen',8,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(75,'avocado-toast',9,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47'),(76,'avocado-toast',10,'Botble\\Hotel\\Models\\Food','foods','2025-05-03 11:19:47','2025-05-03 11:19:47');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-05-03 11:19:21','2025-05-03 11:19:21'),(2,'Hotel',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-05-03 11:19:21','2025-05-03 11:19:21'),(3,'Booking',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-05-03 11:19:21','2025-05-03 11:19:21'),(4,'Resort',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-05-03 11:19:21','2025-05-03 11:19:21'),(5,'Travel',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-05-03 11:19:21','2025-05-03 11:19:21');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Howard Holmes','teams/1.png','General Manager','USA','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','12345678','howard@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(2,'Ella Thompson','teams/2.png','Bell Captain','Qatar','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','234324232','thompson@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(3,'Devon Lane','teams/3.png','Executive Chef','India','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','543324322','devon@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(4,'Kate Beckham','teams/4.png','Bartender','Thailand','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','234345432','beckham@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(5,'Vincent Cooper','teams/5.png','Driver','Poland','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','4324234221','cooper@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(6,'Danielle Bryant','teams/6.png','Event Coordinator','Finland','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','4234232321','danielle@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL),(7,'Kami Hope','teams/7.png','Event Coordinator','Thailand','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','123456781','hope@gmail.com','Cecilia Chapman711-2880 Bangkok St.','https://example.com',NULL),(8,'Frankie Musk','teams/8.png','Driver','USA','{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/twitter.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\"}','published','2025-05-03 11:19:41','2025-05-03 11:19:41','<p>Pleasure and praising pain was born and I will give you a complete account of the systems, and expound the actually teachings of the great explorer of the truth, the master-builder of human uts happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally Nor who loves or pursues or desires to obtain pain of itself.</p><p>Tempor nonummy metus lobortis. Sociis velit etiam, dapibus lectus vehicula pele llentesque cras pat fusce pharetra felis sapien varius Integer dis ads se purus sollicitudin dapibus et vivamus pharetra sit integer dictum in dise natoque an mus quis in. Facilisis inceptos nec, potenti nostra aenean lacinia varius semper ant nullam nulla primis placerat facilisis. Netus lorem rutrum arcu dignissim at sit morbi phasellus nascetur eget urna potenti cum vestibulum cras.</p><div>[user-profile image_1=\"teams/img1.png\" image_2=\"teams/img2.png\" quantity=\"3\" title_1=\"Design\" percentage_1=\"80\" title_2=\"Easy Manage\" percentage_2=\"90\" title_3=\"Project Organize\" percentage_3=\"70\"][/user-profile]</div>','1323243242','frankie@gmail.com','Cecilia Chapman711-2880 Nulla St.','https://example.com',NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_translations`
--

DROP TABLE IF EXISTS `teams_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teams_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_translations`
--

LOCK TABLES `teams_translations` WRITE;
/*!40000 ALTER TABLE `teams_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','A true gem! Impeccable service, stunning views, and utmost comfort. Our stay was pure perfection. Planning our return!','testimonials/01.png','CEO Of Microsoft','published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(2,'Retha Deowalim','Exceeded expectations in every way. Elegant rooms, delectable dining. Our stay was pure perfection. 5 stars!\"','testimonials/02.png','CEO Of Apple','published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(3,'Sam J. Wasim','Paradise found. Serene ambiance, exceptional amenities, and warm hospitality. Already planning our return!','testimonials/03.png','Pio Founder','published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(4,'Daniel Rodriguez','An exceptional experience from start to finish. The attention to detail, combined with breathtaking surroundings.','testimonials/04.png','VP Of Google','published','2025-05-03 11:19:34','2025-05-03 11:19:34'),(5,'Daniel Chang','A true haven for relaxation. Every aspect of our stay, from the luxurious rooms to the exquisite dining, was exceptional.','testimonials/05.png','Founder Of SpaceX','published','2025-05-03 11:19:35','2025-05-03 11:19:35'),(6,'Isabella Russo','Indulgence at its finest. The blend of modern luxury and natural beauty exceeded our expectations, was exceptional.','testimonials/06.png','Fashion Designer','published','2025-05-03 11:19:35','2025-05-03 11:19:35');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'raynor.dominic@schiller.com',NULL,'$2y$12$lqRFGHIM7US0EhCdogUSw.ARMh4zIWXp7YukNojDXwMMHbuAfZkLu',NULL,'2025-05-03 11:19:36','2025-05-03 11:19:36','Alfonso','Koch','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'ContactInformationMenuWidget','footer_sidebar','riorelax',0,'{\"phone_number\":\"1800-121-3637\",\"email\":\"info@example.com\",\"address\":\"1247\\/Plot No. 39, 15th Phase,\\nLHB Colony, Kanpur\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(2,'CustomMenuWidget','footer_sidebar','riorelax',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Our Links\",\"menu_id\":\"our-links\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(3,'CustomMenuWidget','footer_sidebar','riorelax',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Our Services\",\"menu_id\":\"our-services\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(4,'NewsletterWidget','footer_sidebar','riorelax',3,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe To Our Newsletter\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(5,'BlogSearchWidget','blog_sidebar','riorelax',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Blog Search\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(6,'BlogSocialsWidget','blog_sidebar','riorelax',2,'{\"id\":\"BlogSocialsWidget\",\"name\":\"Blog Socials\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(7,'BlogCategoriesWidget','blog_sidebar','riorelax',3,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Blog Categories\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(8,'BlogPostsWidget','blog_sidebar','riorelax',4,'{\"id\":\"BlogPostsWidget\",\"name\":\"Blog Posts\",\"type\":\"recent\",\"limit\":5}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(9,'BlogTagsWidget','blog_sidebar','riorelax',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Blog Tags\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(10,'RoomContactWidget','room_sidebar','riorelax',0,'{\"id\":\"RoomContactWidget\",\"title\":\"If You Need Any Help Contact Us\",\"phone\":\"917052101786\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(11,'RoomContactWidget','service_sidebar','riorelax',0,'{\"id\":\"RoomContactWidget\",\"title\":\"If You Need Any Help Contact Us\",\"phone\":\"917052101786\"}','2025-05-03 11:19:38','2025-05-03 11:19:38'),(12,'CheckAvailabilityForm','rooms_sidebar','riorelax',0,'{\"title\":\"Booking form\",\"id\":\"CheckAvailabilityForm\"}','2025-05-03 11:19:39','2025-05-03 11:19:39');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 11:19:48
