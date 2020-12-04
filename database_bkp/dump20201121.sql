-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lawyer_desktop
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

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

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_legal_person` int(11) DEFAULT NULL,
  `client_physical_person` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `client_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,NULL,1,1,1,'2020-11-19 16:32:32','2020-11-19 16:33:35','client1_physical'),(2,1,NULL,1,1,'2020-11-19 16:33:46','2020-11-19 16:33:46','client2_legal'),(3,2,NULL,1,1,'2020-11-20 19:22:23','2020-11-20 19:22:23','test_legal_person2'),(4,NULL,2,1,1,'2020-11-20 19:22:40','2020-11-20 19:22:40','sofia monici'),(5,NULL,3,1,1,'2020-11-20 19:30:39','2020-11-20 19:30:39','zzz');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_address_addresses`
--

DROP TABLE IF EXISTS `components_address_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_address_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address_street` varchar(255) DEFAULT NULL,
  `address_city` varchar(255) DEFAULT NULL,
  `address_region` varchar(255) DEFAULT NULL,
  `address_country` varchar(255) DEFAULT NULL,
  `address_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_address_addresses`
--

LOCK TABLES `components_address_addresses` WRITE;
/*!40000 ALTER TABLE `components_address_addresses` DISABLE KEYS */;
INSERT INTO `components_address_addresses` VALUES (1,'via verdi','milano','lombardia','italy',10),(2,'monte sabotino','sesto s. giovanni','lombardia','italy',5);
/*!40000 ALTER TABLE `components_address_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `components_phone_phonenumbers`
--

DROP TABLE IF EXISTS `components_phone_phonenumbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `components_phone_phonenumbers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `components_phone_phonenumbers`
--

LOCK TABLES `components_phone_phonenumbers` WRITE;
/*!40000 ALTER TABLE `components_phone_phonenumbers` DISABLE KEYS */;
INSERT INTO `components_phone_phonenumbers` VALUES (1,'3331212123'),(2,'0227070000'),(3,'0227070001'),(4,'3333443222'),(5,'0222233344'),(6,'0222233344');
/*!40000 ALTER TABLE `components_phone_phonenumbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]}}','object','',''),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"created_at\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]],\"editRelations\":[\"role\"]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(25,'model_def_application::test.test','{\"uid\":\"application::test.test\",\"collectionName\":\"tests\",\"kind\":\"collectionType\",\"info\":{\"name\":\"test\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"test\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::application::test.test','{\"uid\":\"application::test.test\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"test\",\"defaultSortBy\":\"test\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"test\":{\"edit\":{\"label\":\"Test\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Test\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"test\",\"created_at\"],\"edit\":[[{\"name\":\"test\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(27,'model_def_address.address','{\"uid\":\"address.address\",\"collectionName\":\"components_address_addresses\",\"info\":{\"name\":\"address\",\"icon\":\"home\"},\"options\":{\"timestamps\":false},\"attributes\":{\"address_street\":{\"type\":\"string\"},\"address_city\":{\"type\":\"string\"},\"address_region\":{\"type\":\"string\"},\"address_country\":{\"type\":\"string\"},\"address_number\":{\"type\":\"integer\"}}}','object',NULL,NULL),(28,'plugin_content_manager_configuration_components::address.address','{\"uid\":\"address.address\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"address_street\",\"defaultSortBy\":\"address_street\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"address_street\":{\"edit\":{\"label\":\"Address_street\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_street\",\"searchable\":true,\"sortable\":true}},\"address_city\":{\"edit\":{\"label\":\"Address_city\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_city\",\"searchable\":true,\"sortable\":true}},\"address_region\":{\"edit\":{\"label\":\"Address_region\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_region\",\"searchable\":true,\"sortable\":true}},\"address_country\":{\"edit\":{\"label\":\"Address_country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_country\",\"searchable\":true,\"sortable\":true}},\"address_number\":{\"edit\":{\"label\":\"Address_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Address_number\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"address_street\",\"address_city\",\"address_region\"],\"edit\":[[{\"name\":\"address_street\",\"size\":6},{\"name\":\"address_city\",\"size\":6}],[{\"name\":\"address_region\",\"size\":6},{\"name\":\"address_country\",\"size\":6}],[{\"name\":\"address_number\",\"size\":4}]],\"editRelations\":[]}}','object','',''),(29,'model_def_phone.phonenumber','{\"uid\":\"phone.phonenumber\",\"collectionName\":\"components_phone_phonenumbers\",\"info\":{\"name\":\"Phonenumber\",\"icon\":\"phone\"},\"options\":{\"timestamps\":false},\"attributes\":{\"phone_number\":{\"type\":\"string\",\"regex\":\"^(([+]|00)39)?(([03][1-6][0-9]))(\\\\d{7})$\"}}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_components::phone.phonenumber','{\"uid\":\"phone.phonenumber\",\"isComponent\":true,\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"phone_number\",\"defaultSortBy\":\"phone_number\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":false,\"sortable\":false}},\"phone_number\":{\"edit\":{\"label\":\"Phone_number\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone_number\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"phone_number\"],\"edit\":[[{\"name\":\"phone_number\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(31,'model_def_application::phisical-person.phisical-person','{\"uid\":\"application::phisical-person.phisical-person\",\"collectionName\":\"phisical_people\",\"kind\":\"collectionType\",\"info\":{\"name\":\"physical_person\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"pp_name\":{\"type\":\"string\",\"required\":true},\"pp_surname\":{\"type\":\"string\"},\"pp_fiscalcode\":{\"type\":\"string\"},\"pp_address\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"address.address\"},\"pp_mobilephone\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"phone.phonenumber\"},\"pp_phone\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"phone.phonenumber\"},\"pp_fax\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"phone.phonenumber\"},\"pp_email\":{\"type\":\"email\"},\"pp_pec\":{\"type\":\"email\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(32,'plugin_content_manager_configuration_content_types::application::phisical-person.phisical-person','{\"uid\":\"application::phisical-person.phisical-person\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"pp_name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"pp_name\":{\"edit\":{\"label\":\"Pp_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_name\",\"searchable\":true,\"sortable\":true}},\"pp_surname\":{\"edit\":{\"label\":\"Pp_surname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_surname\",\"searchable\":true,\"sortable\":true}},\"pp_fiscalcode\":{\"edit\":{\"label\":\"Pp_fiscalcode\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_fiscalcode\",\"searchable\":true,\"sortable\":true}},\"pp_address\":{\"edit\":{\"label\":\"Pp_address\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_address\",\"searchable\":false,\"sortable\":false}},\"pp_mobilephone\":{\"edit\":{\"label\":\"Pp_mobilephone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_mobilephone\",\"searchable\":false,\"sortable\":false}},\"pp_phone\":{\"edit\":{\"label\":\"Pp_phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_phone\",\"searchable\":false,\"sortable\":false}},\"pp_fax\":{\"edit\":{\"label\":\"Pp_fax\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_fax\",\"searchable\":false,\"sortable\":false}},\"pp_email\":{\"edit\":{\"label\":\"Pp_email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_email\",\"searchable\":true,\"sortable\":true}},\"pp_pec\":{\"edit\":{\"label\":\"Pp_pec\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Pp_pec\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\"],\"edit\":[[{\"name\":\"pp_name\",\"size\":6},{\"name\":\"pp_surname\",\"size\":6}],[{\"name\":\"pp_fiscalcode\",\"size\":6}],[{\"name\":\"pp_address\",\"size\":12}],[{\"name\":\"pp_mobilephone\",\"size\":12}],[{\"name\":\"pp_phone\",\"size\":12}],[{\"name\":\"pp_fax\",\"size\":12}],[{\"name\":\"pp_email\",\"size\":6},{\"name\":\"pp_pec\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(33,'model_def_application::legal-person.legal-person','{\"uid\":\"application::legal-person.legal-person\",\"collectionName\":\"legal_people\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Legal_person\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"lp_name\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(34,'plugin_content_manager_configuration_content_types::application::legal-person.legal-person','{\"uid\":\"application::legal-person.legal-person\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"lp_name\",\"defaultSortBy\":\"lp_name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"lp_name\":{\"edit\":{\"label\":\"Lp_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lp_name\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"lp_name\",\"created_at\",\"updated_at\"],\"editRelations\":[],\"edit\":[[{\"name\":\"lp_name\",\"size\":6}]]}}','object','',''),(35,'model_def_application::client.client','{\"uid\":\"application::client.client\",\"collectionName\":\"clients\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Client\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":false},\"attributes\":{\"client_legal_person\":{\"model\":\"legal-person\"},\"client_physical_person\":{\"model\":\"phisical-person\"},\"client_name\":{\"type\":\"string\"},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(36,'plugin_content_manager_configuration_content_types::application::client.client','{\"uid\":\"application::client.client\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"client_legal_person\":{\"edit\":{\"label\":\"Client_legal_person\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"lp_name\"},\"list\":{\"label\":\"Client_legal_person\",\"searchable\":false,\"sortable\":false}},\"client_physical_person\":{\"edit\":{\"label\":\"Client_physical_person\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"pp_name\"},\"list\":{\"label\":\"Client_physical_person\",\"searchable\":false,\"sortable\":false}},\"client_name\":{\"edit\":{\"label\":\"Client_name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Client_name\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"created_at\",\"updated_at\",\"client_name\"],\"edit\":[[{\"name\":\"client_name\",\"size\":6}]],\"editRelations\":[\"client_legal_person\",\"client_physical_person\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_people`
--

DROP TABLE IF EXISTS `legal_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_people` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lp_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_people`
--

LOCK TABLES `legal_people` WRITE;
/*!40000 ALTER TABLE `legal_people` DISABLE KEYS */;
INSERT INTO `legal_people` VALUES (1,'test_legal_person',1,1,'2020-11-19 16:29:37','2020-11-19 16:29:51'),(2,'test_legal_person2',1,1,'2020-11-20 19:19:44','2020-11-20 19:19:44');
/*!40000 ALTER TABLE `legal_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phisical_people`
--

DROP TABLE IF EXISTS `phisical_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phisical_people` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `pp_name` varchar(255) DEFAULT NULL,
  `pp_surname` varchar(255) DEFAULT NULL,
  `pp_fiscalcode` varchar(255) DEFAULT NULL,
  `pp_email` varchar(255) DEFAULT NULL,
  `pp_pec` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phisical_people`
--

LOCK TABLES `phisical_people` WRITE;
/*!40000 ALTER TABLE `phisical_people` DISABLE KEYS */;
INSERT INTO `phisical_people` VALUES (1,1,1,'2020-11-19 16:24:52','2020-11-20 19:11:41','test_physical_person','cognome','nmcgn19a33b123c','test1@mail.it','test1@pec.it'),(2,1,1,'2020-11-20 19:22:00','2020-11-20 19:22:00','sofia','monici','mncsfo90a11c123a','sofia.monici@gmail.com','sofia.monici@pec.it'),(3,1,1,'2020-11-20 19:30:21','2020-11-20 19:30:21','zzz','zzz','zzzddd33a12d123f',NULL,NULL);
/*!40000 ALTER TABLE `phisical_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phisical_people_components`
--

DROP TABLE IF EXISTS `phisical_people_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phisical_people_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(255) NOT NULL,
  `order` int(10) unsigned NOT NULL,
  `component_type` varchar(255) NOT NULL,
  `component_id` int(11) NOT NULL,
  `phisical_person_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `phisical_person_id_fk` (`phisical_person_id`),
  CONSTRAINT `phisical_person_id_fk` FOREIGN KEY (`phisical_person_id`) REFERENCES `phisical_people` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phisical_people_components`
--

LOCK TABLES `phisical_people_components` WRITE;
/*!40000 ALTER TABLE `phisical_people_components` DISABLE KEYS */;
INSERT INTO `phisical_people_components` VALUES (1,'pp_address',1,'components_address_addresses',1,1),(2,'pp_mobilephone',1,'components_phone_phonenumbers',1,1),(3,'pp_phone',1,'components_phone_phonenumbers',2,1),(4,'pp_fax',1,'components_phone_phonenumbers',3,1),(5,'pp_address',1,'components_address_addresses',2,2),(6,'pp_mobilephone',1,'components_phone_phonenumbers',4,2),(7,'pp_phone',1,'components_phone_phonenumbers',5,2),(8,'pp_fax',1,'components_phone_phonenumbers',6,2);
/*!40000 ALTER TABLE `phisical_people_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Emanuele','Sardini',NULL,'emanuele.sardini@gmail.com','$2a$10$Mu3dyarB3a4r9l86G1cRCu58d/N/0ofe/mWMqpemEN2ryuOmZSnhC',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext DEFAULT NULL,
  `conditions` longtext DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2020-10-09 14:06:08','2020-10-09 14:06:08'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(42,'admin::users.create',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(43,'admin::users.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(44,'admin::users.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2020-10-09 14:06:09','2020-10-09 14:06:09'),(58,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-01 15:50:34','2020-11-01 15:50:34'),(59,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-01 15:50:34','2020-11-01 15:50:34'),(60,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]','[]',1,'2020-11-01 15:50:34','2020-11-01 15:50:34'),(61,'plugins::content-manager.explorer.create','application::test.test','[\"test\"]','[]',1,'2020-11-07 08:45:45','2020-11-07 08:45:45'),(62,'plugins::content-manager.explorer.read','application::test.test','[\"test\"]','[]',1,'2020-11-07 08:45:45','2020-11-07 08:45:45'),(63,'plugins::content-manager.explorer.update','application::test.test','[\"test\"]','[]',1,'2020-11-07 08:45:45','2020-11-07 08:45:45'),(64,'plugins::content-manager.explorer.delete','application::test.test',NULL,'[]',1,'2020-11-07 08:45:45','2020-11-07 08:45:45'),(69,'plugins::content-manager.explorer.delete','application::phisical-person.phisical-person',NULL,'[]',1,'2020-11-19 16:18:49','2020-11-19 16:18:49'),(71,'plugins::content-manager.explorer.create','application::phisical-person.phisical-person','[\"pp_name\",\"pp_surname\",\"pp_fiscalcode\",\"pp_address.address_street\",\"pp_address.address_city\",\"pp_address.address_region\",\"pp_address.address_country\",\"pp_address.address_number\",\"pp_mobilephone.phone_number\",\"pp_phone.phone_number\",\"pp_fax.phone_number\",\"pp_email\",\"pp_pec\"]','[]',1,'2020-11-19 16:23:10','2020-11-19 16:23:10'),(72,'plugins::content-manager.explorer.read','application::phisical-person.phisical-person','[\"pp_name\",\"pp_surname\",\"pp_fiscalcode\",\"pp_address.address_street\",\"pp_address.address_city\",\"pp_address.address_region\",\"pp_address.address_country\",\"pp_address.address_number\",\"pp_mobilephone.phone_number\",\"pp_phone.phone_number\",\"pp_fax.phone_number\",\"pp_email\",\"pp_pec\"]','[]',1,'2020-11-19 16:23:10','2020-11-19 16:23:10'),(73,'plugins::content-manager.explorer.update','application::phisical-person.phisical-person','[\"pp_name\",\"pp_surname\",\"pp_fiscalcode\",\"pp_address.address_street\",\"pp_address.address_city\",\"pp_address.address_region\",\"pp_address.address_country\",\"pp_address.address_number\",\"pp_mobilephone.phone_number\",\"pp_phone.phone_number\",\"pp_fax.phone_number\",\"pp_email\",\"pp_pec\"]','[]',1,'2020-11-19 16:23:10','2020-11-19 16:23:10'),(74,'plugins::content-manager.explorer.create','application::legal-person.legal-person','[\"lp_name\"]','[]',1,'2020-11-19 16:29:25','2020-11-19 16:29:25'),(75,'plugins::content-manager.explorer.read','application::legal-person.legal-person','[\"lp_name\"]','[]',1,'2020-11-19 16:29:25','2020-11-19 16:29:25'),(76,'plugins::content-manager.explorer.update','application::legal-person.legal-person','[\"lp_name\"]','[]',1,'2020-11-19 16:29:25','2020-11-19 16:29:25'),(77,'plugins::content-manager.explorer.delete','application::legal-person.legal-person',NULL,'[]',1,'2020-11-19 16:29:25','2020-11-19 16:29:25'),(81,'plugins::content-manager.explorer.delete','application::client.client',NULL,'[]',1,'2020-11-19 16:31:46','2020-11-19 16:31:46'),(82,'plugins::content-manager.explorer.create','application::client.client','[\"client_legal_person\",\"client_physical_person\",\"client_name\"]','[]',1,'2020-11-19 16:33:16','2020-11-19 16:33:16'),(83,'plugins::content-manager.explorer.read','application::client.client','[\"client_legal_person\",\"client_physical_person\",\"client_name\"]','[]',1,'2020-11-19 16:33:16','2020-11-19 16:33:16'),(84,'plugins::content-manager.explorer.update','application::client.client','[\"client_legal_person\",\"client_physical_person\",\"client_name\"]','[]',1,'2020-11-19 16:33:16','2020-11-19 16:33:16');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2020-10-09 14:06:08','2020-10-09 14:06:08'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2020-10-09 14:06:08','2020-10-09 14:06:08'),(3,'Author','strapi-author','Authors can manage the content they have created.','2020-10-09 14:06:08','2020-10-09 14:06:08');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext DEFAULT NULL,
  `events` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tests`
--

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` VALUES (1,'test 1',1,1,'2020-11-19 15:49:28','2020-11-19 15:49:37'),(2,'test2',1,1,'2020-11-19 15:50:13','2020-11-19 15:50:13'),(3,'test 3',1,1,'2020-11-19 15:50:23','2020-11-19 15:50:23');
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','components','findcomponent',0,'',1,NULL,NULL),(2,'content-manager','components','findcomponent',0,'',2,NULL,NULL),(3,'content-manager','components','listcomponents',0,'',1,NULL,NULL),(4,'content-manager','components','listcomponents',0,'',2,NULL,NULL),(5,'content-manager','components','updatecomponent',0,'',1,NULL,NULL),(6,'content-manager','components','updatecomponent',0,'',2,NULL,NULL),(7,'content-manager','contentmanager','checkuidavailability',0,'',1,NULL,NULL),(8,'content-manager','contentmanager','checkuidavailability',0,'',2,NULL,NULL),(9,'content-manager','contentmanager','count',0,'',1,NULL,NULL),(10,'content-manager','contentmanager','count',0,'',2,NULL,NULL),(11,'content-manager','contentmanager','create',0,'',1,NULL,NULL),(12,'content-manager','contentmanager','create',0,'',2,NULL,NULL),(13,'content-manager','contentmanager','delete',0,'',1,NULL,NULL),(14,'content-manager','contentmanager','delete',0,'',2,NULL,NULL),(15,'content-manager','contentmanager','deletemany',0,'',1,NULL,NULL),(16,'content-manager','contentmanager','deletemany',0,'',2,NULL,NULL),(17,'content-manager','contentmanager','find',0,'',1,NULL,NULL),(18,'content-manager','contentmanager','find',0,'',2,NULL,NULL),(19,'content-manager','contentmanager','findone',0,'',1,NULL,NULL),(20,'content-manager','contentmanager','findone',0,'',2,NULL,NULL),(21,'content-manager','contentmanager','findrelationlist',0,'',1,NULL,NULL),(22,'content-manager','contentmanager','findrelationlist',0,'',2,NULL,NULL),(23,'content-manager','contentmanager','generateuid',0,'',1,NULL,NULL),(24,'content-manager','contentmanager','generateuid',0,'',2,NULL,NULL),(25,'content-manager','contentmanager','publish',0,'',1,NULL,NULL),(26,'content-manager','contentmanager','publish',0,'',2,NULL,NULL),(27,'content-manager','contentmanager','unpublish',0,'',1,NULL,NULL),(28,'content-manager','contentmanager','unpublish',0,'',2,NULL,NULL),(29,'content-manager','contentmanager','update',0,'',1,NULL,NULL),(30,'content-manager','contentmanager','update',0,'',2,NULL,NULL),(31,'content-manager','contenttypes','findcontenttype',0,'',1,NULL,NULL),(32,'content-manager','contenttypes','findcontenttype',0,'',2,NULL,NULL),(33,'content-manager','contenttypes','listcontenttypes',0,'',1,NULL,NULL),(34,'content-manager','contenttypes','listcontenttypes',0,'',2,NULL,NULL),(35,'content-manager','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(36,'content-manager','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(37,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(38,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(39,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(40,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(41,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(42,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(43,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(44,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(45,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(46,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(47,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(48,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(49,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(50,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(51,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(52,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(53,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(54,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(55,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(56,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(57,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(58,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(59,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(60,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(61,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(62,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(63,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(64,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(65,'email','email','send',0,'',1,NULL,NULL),(66,'email','email','send',0,'',2,NULL,NULL),(69,'upload','upload','count',0,'',1,NULL,NULL),(70,'upload','upload','count',0,'',2,NULL,NULL),(71,'upload','upload','destroy',0,'',1,NULL,NULL),(72,'upload','upload','destroy',0,'',2,NULL,NULL),(73,'upload','upload','find',0,'',1,NULL,NULL),(74,'upload','upload','find',0,'',2,NULL,NULL),(75,'upload','upload','findone',0,'',1,NULL,NULL),(76,'upload','upload','findone',0,'',2,NULL,NULL),(77,'upload','upload','getsettings',0,'',1,NULL,NULL),(78,'upload','upload','getsettings',0,'',2,NULL,NULL),(79,'upload','upload','search',0,'',1,NULL,NULL),(80,'upload','upload','search',0,'',2,NULL,NULL),(81,'upload','upload','updatesettings',0,'',1,NULL,NULL),(82,'upload','upload','updatesettings',0,'',2,NULL,NULL),(83,'upload','upload','upload',0,'',1,NULL,NULL),(84,'upload','upload','upload',0,'',2,NULL,NULL),(85,'users-permissions','auth','callback',0,'',1,NULL,NULL),(86,'users-permissions','auth','callback',1,'',2,NULL,NULL),(87,'users-permissions','auth','connect',1,'',1,NULL,NULL),(88,'users-permissions','auth','connect',1,'',2,NULL,NULL),(89,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(90,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(91,'users-permissions','auth','forgotpassword',0,'',1,NULL,NULL),(92,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(93,'users-permissions','auth','register',0,'',1,NULL,NULL),(94,'users-permissions','auth','register',1,'',2,NULL,NULL),(95,'users-permissions','auth','resetpassword',0,'',1,NULL,NULL),(96,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(97,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(98,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(99,'users-permissions','user','count',1,'',1,NULL,NULL),(100,'users-permissions','user','count',0,'',2,NULL,NULL),(101,'users-permissions','user','create',0,'',1,NULL,NULL),(102,'users-permissions','user','create',0,'',2,NULL,NULL),(103,'users-permissions','user','destroy',0,'',1,NULL,NULL),(104,'users-permissions','user','destroy',0,'',2,NULL,NULL),(105,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(106,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(107,'users-permissions','user','find',1,'',1,NULL,NULL),(108,'users-permissions','user','find',0,'',2,NULL,NULL),(109,'users-permissions','user','findone',0,'',1,NULL,NULL),(110,'users-permissions','user','findone',0,'',2,NULL,NULL),(111,'users-permissions','user','me',1,'',1,NULL,NULL),(112,'users-permissions','user','me',1,'',2,NULL,NULL),(113,'users-permissions','user','update',0,'',1,NULL,NULL),(114,'users-permissions','user','update',0,'',2,NULL,NULL),(115,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(116,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(117,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(118,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(119,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(120,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(121,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(122,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getroles',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getroles',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(140,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(141,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(159,'application','test','count',1,'',1,NULL,NULL),(160,'application','test','count',1,'',2,NULL,NULL),(161,'application','test','create',1,'',1,NULL,NULL),(162,'application','test','create',0,'',2,NULL,NULL),(163,'application','test','delete',1,'',1,NULL,NULL),(164,'application','test','delete',0,'',2,NULL,NULL),(165,'application','test','find',1,'',1,NULL,NULL),(166,'application','test','find',1,'',2,NULL,NULL),(167,'application','test','findone',1,'',1,NULL,NULL),(168,'application','test','findone',1,'',2,NULL,NULL),(169,'application','test','update',1,'',1,NULL,NULL),(170,'application','test','update',0,'',2,NULL,NULL),(171,'application','phisical-person','count',0,'',1,NULL,NULL),(172,'application','phisical-person','count',1,'',2,NULL,NULL),(173,'application','phisical-person','create',0,'',1,NULL,NULL),(174,'application','phisical-person','create',0,'',2,NULL,NULL),(175,'application','phisical-person','delete',0,'',1,NULL,NULL),(176,'application','phisical-person','delete',0,'',2,NULL,NULL),(177,'application','phisical-person','find',0,'',1,NULL,NULL),(178,'application','phisical-person','find',1,'',2,NULL,NULL),(179,'application','phisical-person','findone',0,'',1,NULL,NULL),(180,'application','phisical-person','findone',1,'',2,NULL,NULL),(181,'application','phisical-person','update',0,'',1,NULL,NULL),(182,'application','phisical-person','update',0,'',2,NULL,NULL),(183,'application','legal-person','count',0,'',1,NULL,NULL),(184,'application','legal-person','count',1,'',2,NULL,NULL),(185,'application','legal-person','create',0,'',1,NULL,NULL),(186,'application','legal-person','create',0,'',2,NULL,NULL),(187,'application','legal-person','delete',0,'',1,NULL,NULL),(188,'application','legal-person','delete',0,'',2,NULL,NULL),(189,'application','legal-person','find',0,'',1,NULL,NULL),(190,'application','legal-person','find',1,'',2,NULL,NULL),(191,'application','legal-person','findone',0,'',1,NULL,NULL),(192,'application','legal-person','findone',1,'',2,NULL,NULL),(193,'application','legal-person','update',0,'',1,NULL,NULL),(194,'application','legal-person','update',0,'',2,NULL,NULL),(195,'application','client','count',0,'',1,NULL,NULL),(196,'application','client','count',1,'',2,NULL,NULL),(197,'application','client','create',0,'',1,NULL,NULL),(198,'application','client','create',0,'',2,NULL,NULL),(199,'application','client','delete',0,'',1,NULL,NULL),(200,'application','client','delete',0,'',2,NULL,NULL),(201,'application','client','find',0,'',1,NULL,NULL),(202,'application','client','find',1,'',2,NULL,NULL),(203,'application','client','findone',0,'',1,NULL,NULL),(204,'application','client','findone',1,'',2,NULL,NULL),(205,'application','client','update',0,'',1,NULL,NULL),(206,'application','client','update',0,'',2,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `confirmationToken` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (1,'user1','user1@mail.com','local','$2a$10$1/nqP1jDwuL.I/XVueQ0w.0.zLIoQ6qHdGO6xxEMXSeP7E5bSEX5O',NULL,1,0,1,1,1,'2020-10-25 09:01:34','2020-11-19 15:45:06',NULL),(2,'user2','user2@mail.com','local','$2a$10$F80GpcZmxVtRXDHcfFvqJur0usdZsUo8Os.xoeZYJd5rtBzTYOdUO',NULL,1,0,1,1,1,'2020-10-25 09:01:48','2020-11-19 15:45:25',NULL);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-21 11:21:50
