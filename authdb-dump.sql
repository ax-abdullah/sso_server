-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: authdb
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.4

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (10,'2014_10_12_000000_create_users_table',1),(11,'2014_10_12_100000_create_password_resets_table',1),(12,'2016_06_01_000001_create_oauth_auth_codes_table',1),(13,'2016_06_01_000002_create_oauth_access_tokens_table',1),(14,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(15,'2016_06_01_000004_create_oauth_clients_table',1),(16,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(17,'2019_08_19_000000_create_failed_jobs_table',1),(18,'2019_12_14_000001_create_personal_access_tokens_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('037387fd0438afa11dc68acdd70704a9e33fe9bb57a5685c73c87ae8741ec95b7e1341ac84a2ff78',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:32:35','2023-08-27 09:32:35','2023-08-28 12:32:35'),('0411521c1d1934ead557f9bfdeb69c8cc306b8904f50a260fd6328929c6b9bc4fe42d68137d17d85',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:25:15','2023-08-26 17:25:15','2023-08-27 20:25:15'),('05f1ff9fce6bd2493d4c267b55757ef8cbf6d060c60818923930f636ee05a037f75c0ec2b1642710',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:41:32','2023-08-26 17:41:32','2023-08-27 20:41:32'),('0945604ac9b83916c931438b8e74b6ec61e76cdb3cb6cc581b5ade56155a96b2364e440f62932dd5',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 16:58:53','2023-08-26 16:58:53','2023-08-27 19:58:53'),('0c5106042fafd9881a5d2149cbeb8cfa27fd84fae65230330917e30eb161cca59ba6d193971e5c0f',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 14:41:36','2023-08-27 14:41:36','2023-08-28 17:41:36'),('0d67c034b629c76e7b97284472ec09f74fca07e5f821c5403197ccd1f3adaeffa3622aa65ca42566',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 15:20:56','2023-08-27 15:20:56','2023-08-28 18:20:56'),('0d70d54d060ccb964415218e336734ffd50174547d7972e6b51e4dee051d87f14ba7ecd8299a0385',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:33:18','2023-08-26 17:33:18','2023-08-27 20:33:18'),('0dbe82a3d15c3ca92695c91b7a254544d4a083a5062ffd6181ca0df5f77dde46dd026396c90c4ddd',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:39:01','2023-08-27 09:39:01','2023-08-28 12:39:01'),('10b565c3da38eab96cdf7610c9d5df92560ef9de2c288dd4f4aebd9a1501e8e1270c1a5fd0a712c7',1,'99fba507-8ef2-436b-9afc-e730f936fb8c','test','[]',0,'2023-08-28 06:29:05','2023-08-28 06:29:05','2024-02-28 09:29:05'),('111f18b6baaa475de376471bf66b123d751ed678c905c6adf16036c8d5250cd03f1ed032b01ade24',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:36:28','2023-08-27 09:36:28','2023-08-28 12:36:28'),('149ccdd39611fcccb86954401a0c287fc4eba3b33eba2aa78d502fc6a70023bb04c119cd83b62a3d',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:36:12','2023-08-27 09:36:12','2023-08-28 12:36:12'),('166093482ecc72f2640a9b1c841b2e42a12d7d5de66fb0863f288649165942ef6c79774c2245fec3',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 05:08:13','2023-08-27 05:08:13','2023-08-28 08:08:13'),('238d7c0fafc8e302386bd7a1ba19ca6b5816a5c37c66f01f00c2652fe033ff6aa73fd48418962321',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 17:03:05','2023-08-26 17:03:05','2023-08-27 20:03:05'),('3604c3f8b5ba83ec76d894e7156481f52b64669f48cf488ecac11b84ffb0245ba4b3b4840ccccfce',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:54:13','2023-08-27 06:54:13','2023-08-28 09:54:13'),('383f32de2cc067da518c2633861d8a6fe01052ccc27e28f6e05f6c63d6600f47dd5d4dace3e5fd38',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:40:36','2023-08-27 04:40:36','2023-08-28 07:40:36'),('3d53308467310211abcc96a4a6b20ea1771bdb6e65384f9bbcd1843ec02db226ca6d405ebc7c0271',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:38:16','2023-08-27 09:38:16','2023-08-28 12:38:16'),('4a936d48ee7c898c899551fc4ff8ed015feffa90c3f78e9b4acae17034386a6b6a1e56a35c7ae38c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 05:30:21','2023-08-27 05:30:21','2023-08-28 08:30:21'),('5109afd8ed931c9a18aae286dd09b28ea516b915215876d15d720df9444fdc74dfe824659125365e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:37:01','2023-08-27 09:37:01','2023-08-28 12:37:01'),('5660d22bcf216ca7286e502177673e687ec0996f95fb43155ea9978afd337f71ff8f7cb55e74aa51',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:56:21','2023-08-27 06:56:21','2023-08-28 09:56:21'),('5ac5da63a61b56c68deaa7bcc04baa7f9eda98529153e33afe2c737a3a63755ac86ebc128e121d8e',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:42:34','2023-08-26 17:42:34','2023-08-27 20:42:34'),('63cc55449e4adc9e6af6f6cfa557f5e91a3b77b6ce164042edd8abc212ddad0bccfa413a662409ad',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:32:42','2023-08-26 17:32:42','2023-08-27 20:32:42'),('6c2789cffb4c874fa3e2a2f122ef09c7f2702a1e70cc89813e8020eadb100e1fad83625d760da141',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:24:25','2023-08-27 04:24:25','2023-08-28 07:24:25'),('6e589c2de727120866641519b7df66b04eac5d9c560f6f9ff99e9104d9e5fb6f225fc130084effef',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:37:59','2023-08-27 09:37:59','2023-08-28 12:37:59'),('70518452d1de310f3cefd73f0c172a7471950bead95b30b631858caee61810c380f1c19fd859fcce',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:41:03','2023-08-27 09:41:03','2023-08-28 12:41:03'),('720c8ffce5cc7f7bdcabd97dfc53b20b1c5a81855c60cfdf895c4dff862121a4184b37ddb8966cc9',1,'99fba507-8ef2-436b-9afc-e730f936fb8c','test','[]',0,'2023-08-28 06:28:44','2023-08-28 06:28:44','2024-02-28 09:28:44'),('77aebb0773c1d9e98edc8afec5deb503d379410da6cf7b2672ffcd6c84dcf171112600f4b75e6efa',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:31:31','2023-08-27 09:31:31','2023-08-28 12:31:31'),('7dcee33b9c19f863fc507a4176d452052d8d19ebf451a1ece6a563847c05d6ca215f267dafd9f286',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 15:33:02','2023-08-26 15:33:02','2023-08-27 18:33:02'),('80afe975beae87bb39aa83ab2da83272ced33fff12058b2a87d09e72762de436b01c0e7d7b42fa2c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 07:00:22','2023-08-27 07:00:22','2023-08-28 10:00:22'),('86b889206e865c77985a11356321f719b1bacbda3a749bf323e4788616924e5522bfb0fbfae4f891',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:40:14','2023-08-27 09:40:14','2023-08-28 12:40:14'),('8d2edc8c64fcb3fcfcdcde2dd27d1b0c337702a0d0a803473181f296e59bdb415846abefd7603a20',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:23:04','2023-08-26 17:23:04','2023-08-27 20:23:04'),('8f12ae16c26c7fd56ee9d1ba6796b28ef148be6d16b942370ea9eae6fad558e598b7e5be89c702af',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:07:51','2023-08-27 06:07:51','2023-08-28 09:07:51'),('8f5f39d8e21e61116bd33dad52cd50245af355b28022e8443361e4b5c623bc819b479f0d6b13378a',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:24:30','2023-08-27 09:24:30','2023-08-28 12:24:30'),('90838b51f227dc0b405696d6ded089b0376f19cca8bbcb45c95ba25d36db482a5d496a52be581672',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 15:36:08','2023-08-26 15:36:08','2023-08-27 18:36:08'),('90cbc19432dc203bd44e388f0b2f9c3b95b7933b86e87c7d972158c20fb186a3a47ddc65c408b4c7',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:43:31','2023-08-27 04:43:31','2023-08-28 07:43:31'),('94d0bee43045a72eb8ccbba9bce2536574f1e035a3355c230b0f79871fd328e110d6bf7f5a50ac61',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:40:15','2023-08-27 09:40:15','2023-08-28 12:40:15'),('977fea1d67cdd4e2091d9daf013d1427a1fc86501ca6f7ac711be8478e84213031961e8652339b9d',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 16:58:00','2023-08-26 16:58:00','2023-08-27 19:58:00'),('9a16ae3fae715cfe35bc8bca0a84cd38fa8b0b76a2973c125f20d9cd55a8aa549a46b9e8175878cd',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:42:53','2023-08-27 04:42:53','2023-08-28 07:42:53'),('9b302b76c059a9defb9285a05776f205f6b8927c52e30ceb5238f6a19202825f4a44c699e626d4c1',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 05:30:52','2023-08-27 05:30:52','2023-08-28 08:30:52'),('a872821310f2c239383f2f84af88040a17e968cb0402ccac54eb70dbfe50cf5cff2da259cb81f16f',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 14:39:12','2023-08-27 14:39:12','2023-08-28 17:39:12'),('aac6a05a8ec4d57a61fedb55d865eb53154247047a0e9ea5aff06a6305fe8ca3737575f81ca1cdf6',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 05:33:01','2023-08-27 05:33:01','2023-08-28 08:33:01'),('b664b0a836bd376aeb36b72087d901a83024b024c2e478b7aba4a08a6041994fdbef1b3ae83be030',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:59:33','2023-08-27 06:59:33','2023-08-28 09:59:33'),('c214437ca4475b625205d65586f1ea2e1667fe46eb3a6adcf95d5aa9f7b050d3dd315c6b7a145ca4',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 02:54:40','2023-08-27 02:54:40','2023-08-28 05:54:40'),('ca668c97f614105a9394f6ebf45081a9a72d95ba9a4468cadb1cbec20e681c301fa6d18e63ee247c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:35:34','2023-08-27 04:35:34','2023-08-28 07:35:34'),('cb79530c336c187e566e2e9462363605066ea9274d6b36e82159a1481134befb15a58d59f3d30f5e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 14:41:40','2023-08-27 14:41:40','2023-08-28 17:41:40'),('cdfe5cf55cc4cecbf1854e889804db90d2f12d0430b0f07078a380f4dc09de3ace823faa0e82c00c',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:40:19','2023-08-27 09:40:19','2023-08-28 12:40:19'),('ce8af746ff6338e53e8f0f383a390ebab70947e3099ff8114bc9e0113df4ad7394cbd50824ee3e5b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-26 17:41:18','2023-08-26 17:41:18','2023-08-27 20:41:18'),('cf8e6b37463c0f3e29f88b3403a2c46bbdb3d525108c3e8236aad3823c2ce50ab9f97eb50e917f31',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:38:39','2023-08-27 09:38:39','2023-08-28 12:38:39'),('d1c3eec854f3ad558427c8e85e69e54ca4757bd99278972d811c5a53700b2f91c64dcf25fd39a599',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:31:58','2023-08-27 09:31:58','2023-08-28 12:31:58'),('d26e75515b5f4dd57ace97570a24ea4381c02ebdb426b92339d2b0b67090fbd63dd2d0ecbdb24bdc',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:40:45','2023-08-27 09:40:45','2023-08-28 12:40:45'),('d33a3388af96f5592b5af664d94e1a9bd62dfdeccb183308fa4fa68d6fde1117f607b9da5cc2346a',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:37:27','2023-08-27 09:37:27','2023-08-28 12:37:27'),('d39e4e6fcd04bf44af0182e314e90c503983c5bf921acf91c71fb9af8049e8e1bd1302262003cfef',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:08:41','2023-08-27 06:08:41','2023-08-28 09:08:41'),('d5f24f07b8fee26bc431e37c9cb0889e592e452d39f8d42bd4ee45e520e5d91ec957569fdd2a2898',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:11:43','2023-08-27 06:11:43','2023-08-28 09:11:43'),('d7776698ce8593d26b4b6086ae1d30d5471a012d316a74cbb92f0a52aee1ed0051f509e625d8167f',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 07:02:00','2023-08-27 07:02:00','2023-08-28 10:02:00'),('dd19323e40ca77558081e1f058dd804ae1e0360144792bbb5b0539b7b70589a322887a42d4fdb56c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:41:09','2023-08-27 04:41:09','2023-08-28 07:41:09'),('e2b63ec89ec7556827a10016ca8fc15a17d79494ef5d4d911143f685915723f0e4666e3fbbca2db6',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-28 07:01:37','2023-08-28 07:01:37','2023-08-29 10:01:37'),('e3d2aa9a9a0b0ca48b8feb4b394dcb7a50dc8d6e23a07c74db8aac8538a8efa6d21d3524f083af23',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:37:45','2023-08-27 09:37:45','2023-08-28 12:37:45'),('e87cad930f84e5ccf4fd244fbf1a5dd594248b28a7a1030b7dce397861b24fe8a6e91c235dea5204',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 17:00:59','2023-08-26 17:00:59','2023-08-27 20:00:59'),('e8dbe60d9037a8cb43211fcfd68ab03ebc7c25bd3d437b9cf6d7ec4795b01a015ad6577fc6e44f41',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 03:51:04','2023-08-27 03:51:04','2023-08-28 06:51:04'),('eb7fee6cb57ccb544e49dcee1c6c721a10fbe260dd053f3165f34b71863f8fdacab5bc14506f6cc7',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[]',0,'2023-08-26 16:51:35','2023-08-26 16:51:35','2023-08-27 19:51:35'),('f325f647057b94994737c6dac48670874928ae3654a5e2a5aac7a82748ca46b85e7145f8d8667172',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:31:42','2023-08-27 09:31:42','2023-08-28 12:31:42'),('f77b94b736d2cb4d1af583e32105259328816a8f37d3bf94acb3224b40b8e29712577d1f77268bf0',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:32:39','2023-08-27 09:32:39','2023-08-28 12:32:39'),('f9771d049e8a572a8f785c1b6b4ccad363cb3fa760a88a78c242d1fd3f05db1d2ef53e6a6dcbf6ec',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 06:10:52','2023-08-27 06:10:52','2023-08-28 09:10:52'),('faeef04f720d55372cc13d02cf982bdcb65df61e33d8431b14753ddea5943487c7e815b1671ee17c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 04:39:58','2023-08-27 04:39:58','2023-08-28 07:39:58'),('fed1077272c967f33b1ad49d5b7336cf3adaac8ca13c0813795194357720ebc9cfcc58fa1b479a0f',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',NULL,'[\"view-user\"]',0,'2023-08-27 09:38:56','2023-08-27 09:38:56','2023-08-28 12:38:56');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
INSERT INTO `oauth_auth_codes` VALUES ('00d8f3544099a70f561959a9a302e2b7450305728479f031ad878c5480e1a49bba34248fece48e9c',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:05:15'),('0353b1c85eeaa2f805e6650f130d8156e44a4d0f91a83efca610d753ebde24af56d53a108826260f',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:49:00'),('03a8d860292e1eb40f34bc37f00d044f3e9a491ba1e2accd04df48e69000ea27df352ef36b4adfde',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:05:49'),('05424f34d7efe854bff337d09049a51b863269e744cf9f3a7b848c7c441e5119bdfded2bac85c0ff',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:21:07'),('05d752aae5388fb13fd0883be730032d279e1d71eecb961592ea6aa2e15a81ce1aa21677c5e586f8',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:47:45'),('064a2100c666fa837df5e2c8960b630b623562903a26deab63787ed331fcd71f9fcb02304390ec2c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:01:04'),('0c27d7d5fb8fdcdd71720860fd34f11fd7661277c5730cb68418df41c89a4c8fdb5ec714ecfd35ab',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:54:10'),('0f92f81b71cfe5c20e46e3b00c761c4ee28e4d29308c42d9d28f808e3780f8cb4d88b829ec54768c',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:55:13'),('11fd3aa02fe80ebc7653052068ab78044b712cdb3d71f3e64bf21ce245236eabd868d8399d223d1b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:51:08'),('146e050dcc0374fa52de3f4e423d64af566b9fb2bceca67d20388aad1af8abbdcf52051c23290873',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:30:56'),('158b8b76ffeae7efba332c034b4856d06b34608dbc8500c043811e4ce66a575437626b883e725049',5,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 09:41:20'),('15e279870b2ce5525e02015e38153a20d09e898a5380e978a7e4c60a1530a4478ae52a5fefd5f979',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:28:21'),('1986cbef928da8cf8a9576849691a7538a7bb22abb12cce4776427936eea29f8d108991ba9a80488',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:41:42'),('1cbe97d1d343685468030ccb1dedc104eced6139acf49180388ff44ab77b481cf5fab2f6570bedac',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:53:30'),('1eaa825fd05f5cd27f3f7c32d82909aa861be086acb9d7dd1f18771662e805956cd3b7dfdd767855',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 20:08:53'),('2b93910911bd65ea7cf4188466d94d73ca668565d1ac0e8c22f3f608292c6432babbc4bad49a9541',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 20:13:05'),('2df430accc190243333c0f3346a25d4ffe73c9b63680f64b5c2a58e2f51cb3455b8dfaf5ad71e84e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:41:58'),('303d0e7a10eef759e2a049fa71743bb37c7131a9652724c2de72017617dea926c55a04a17ac11827',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:55:49'),('30b3922168f2d9e0277c071fb48458acde5dc47200758b3daa182b76c0e75e6d7e880d2b67819935',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 10:04:13'),('32034e2a7f0fc26e458b22617fd7bc51997c659976176bfa46dc580635527a6054d32af3942a22a6',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 08:03:15'),('3223f9b9c501d9f3d2c00ec80400fddb07061f64b421a9587bafce1b97cbd2131c784db6488b2234',5,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 10:11:11'),('33e41c1db6872e7cb23fdfc65410252e1f102313ba55924fb2e192321affe0e436d0c0f78ac224fd',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 08:18:12'),('346e006ef135822e5416d1dbd1a92635e269b3dcd44e039c48c5c4f430eb11289fe70539f8641af0',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 09:21:42'),('372fa1edc6f9153662ccdd38143e27c80afdf0232b846f8c414ea58ce593b2469cdcbeb815621796',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:50:18'),('37d5b46eab260206964b0ca85b2880103bb15a00e883ef6d169f67d59fe06bb6f6dd68df8f698886',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 09:18:41'),('38c42bee16ce17c4801c4a917f7423b10b4fa686ab81d92f771d5aff38737ed4e5169f10840db987',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:43:17'),('3ad9c27825f9bcc0c1b03d5645018710154e16dd386ccd267528a37d1da96e9ea0fef732b92c0e96',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:16:06'),('3f638889d504c74040738e3eea065b577a1c35fb9f186301ca1779cbdb93b042e75f76ac4e6c11e4',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:27:10'),('411466c5fcbb77dcabd9821ed14ac111058c052474df4e8d1c7d604a23bd6cc59934e48d1d2b47d1',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 10:10:21'),('43647933fb11a8ba5a98ea0bf9e79369de5b9ce98471adec3528eb62b9d1e525a1ef77dfcf0f6059',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 18:46:07'),('451b0184e57dcea34e144c3a54103e7ae35ecc829260e122d9420430e61280ccd3190875a79a441d',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:51:03'),('478db3603edab67c6c6d3fb7a9fefd30019306f5c8330b05dedf0ba6a5dc4d0b37cb29a221af6714',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:22:38'),('48c21a1f11c43d38a79d08f454927076572e8a201d9be7a746416ab6267404681e1affcdeece8605',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:41:30'),('4956b57ee7ea53ec715d657660766d84a1c2b62d6c4864e86fe257a94c73bf87c466af5c9b1bf337',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:42:39'),('4ca86c054a36256ff647d5650162b381d97c5b043bf3d3c92c0da041197a1abf7a8cae5a2f309c7f',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 20:10:59'),('531fa8d82dd380c18169504873511df88c7a51a3df2ed535553f90655d039b46c75e9a415d3804f7',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:05:08'),('53b1b660a17a6b742b46b0139a6d4ffd04cabca36da8ce99e71e961729521740e22ccb418b10d6b4',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 08:22:29'),('54bb2cb9a4918b59f3637abccda0efa626dab601171073fec9bda6fcface64d95a367d05472da30e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:00:26'),('54cd653ea60fc5a5f11158f6a3aad26c59b56325ea938ed1b58f4d638da35b22b8b91d91923fd9ee',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:48:39'),('5a4b6ca1b893a9b410a3a9b55442300d9f1ee57c3769a39840369fbc63750711f52b26a257179954',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:30:15'),('5a83777ab53fa5e66b51cbce655046e5cb124795dccef13801f9c5cd78ba901c7d77e16e54aa004b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 09:17:50'),('5d4a7ac7a96ce374d5d77f0f958f12a56e4f59b21e2e186ba0692c7f87680e476dc22d7e5f8004f4',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:24:24'),('5dfa8facdb3282265baea23fbe37542077b95c2359d61c8a46fb329564b1449459a411c86f168749',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:52:52'),('5fe0de0ecbd495352652fe12b8c2fb58124837468f4bca0c3caa84e59da446a988b916c86239fcd0',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:30:10'),('62aec3d21f7ebb4ee0c590ec0f0fa30a0fbdeedd5aa2b733735a2f8aa930e4732bdbd87e9ae6e61c',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:04:38'),('63969d7d51b82e77e797f8b20caf1297f52d4f5ffe356e1ea48adef157c6221008c0dd7abfbee041',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 08:22:06'),('67d06e1243b02ffbe5df797f412eea962f217dec0337ce278ad903b96ceac1d7d7194e3d1c41157c',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:21:25'),('67ff46a185f996e18964f158379c5bb41fcd4bc352db06c80ebe185a898d5cb8b44a6e7f09657adf',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:30:04'),('6927c90268a9836a93410694cc69bd20bd161a1ce790bbfa98b8317dd62f3a1421d3bf3c3f1562d8',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:45:34'),('6b625668dfd87459a46d7bb859fcbc640e3a00a08c1aadce86c720177a0bd8dac874b919de75803c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:09:20'),('704593f60ee7aee89b53a2742953bd7ecd6b66c4e8944d03af04c7851e027a63a02506720a00f98c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:34:25'),('72a9497bd7487fc177065ac76e1906ca980d45138841f959810fe75fbe0632c63e2e50c0c90941ef',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:42:42'),('75c6bdd482dc148420e20955c5ecda2b8591ce16264d6be17e8c35d90ad2bbb9285a34a98323ef9e',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 09:20:51'),('798e00be084d66b9db9834c373cfac065d9674daac58b26d462f3cd7b044ec9ecbe33ceb72c71c31',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 20:01:34'),('7a1a4413f1ef6cbf54e038d4e7be9afcf9491c9d5654d6f16a0f99a25812a2f0e979d6c20ae3a0c1',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:48:16'),('7bcd3e04d5a50a6f830909ba39354bf1166290f7d6150f56d21ce811cfac9c1c8972d2e5a61a9dcc',3,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:04:19'),('7ccb7df8957375cf49a77ee777e4ff4baf363213252c598c876d8b0e896168e78adad2d1869479b0',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:47:58'),('7dc055547c05fe8b737a6e82ec286b4cd614ce4fca054520924c8a12a7d1bf6ee4efd0405e592544',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:53:13'),('7e7ee533bd01d6b39da9f7744efae92abb495de85aeadb017083a1f43e94efc316987c728e594229',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 08:40:52'),('7fa6063fba374927f014fb93337c90c3f06d38a661c942379ccf84530d57cef69cd82478dc1800a5',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 10:09:33'),('7fe7b373d975836ede79670f5785b74f436ad80e57103fee0ccf905aa38044181b8c1b13dbbf5b56',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:35:15'),('816ad9ab5b87467378b64a1b88040abc2d28a6d7c2d6a56d18784e25349683eeefb3354355dcdd68',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:20:28'),('86e8d049ab1a4a2819b0cc4d00db8aaee8704f864c179cb50d156be01cc14d2cc0985a3ccdfbac4d',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:50:36'),('8ca5dffd854edd3779963bd94a6263d7836080775173deb3b9cfb600ff243ac698b686522cd46688',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:47:26'),('94008a669e6e0c4c09d8f4cdf486ad5e4518bdea2680627230b93e833cbd47b70a526e3217c2b99b',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:46:12'),('9460db9f65b45208ec6fe3d02493eb3f9ac9309c3ae64db669a1bdc79b733979db403bca341f59fc',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:42:35'),('96572775f87f76b4b77ea8bc00c1cb95b535b787e22d0c29da6160f81e531fe884ff572aa4f2524f',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:07:45'),('99fcd35169e2c70ff65d88321001996a249c660f511f2adea8bb4cba48ba94816a6a9c27476be9f8',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 10:11:36'),('9bbe46dcadd9f29127f2213e1b9433e7371a37cad0537dc9623904cd7e949191fb871fac17d4b5ce',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:52:34'),('9cf48667740bc43b3a4d98f7b4b8735f58a8aace14672a2f04a905c579ec5ff4e87d3fc358eceb24',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 08:43:01'),('9f3365cf23376da5176d419f08a63a5fbf7a188737954f6ee3eaa02ea6c9d31b987cd320c98da485',5,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 09:22:25'),('a1b16dbfe35eb1c41b1d05f628254f018c87450aa407b427853a8fa149bbf270c7613c85781afc18',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:34:30'),('a21ecfcb7fab42dd8604e4b44dcf1d71d1234fa9feba8aa2cc3297e065f1736189c0b67b17c0597d',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 10:12:00'),('a462be8b376c2621d5b1e0973c4d7330f500d8931552001848d4d44d8b0b30135868e5d62677d98c',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:04:24'),('aa81d11552d1d6f308679681332b098ff78c928ee7729e22ae7d21ad0656fa4520f7390d4860fc3f',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:50:15'),('acd4841376f6253f28d5e3570b49897dcce6baeaa07d708ea15c7dc7c6bc3759d101077e0a8fff05',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 09:21:38'),('ae99c0157a382282fda27614f9117533c810baa0f394028cb2a70c2b3a6241139e8b1a8833589888',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:47:00'),('b027f80c76327532818c11a7dbdc97eb00aef28c290d833ec2605d09218494678d081cbe43b0b67e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:50:45'),('b1d7e04608d5aa678ae8904e06778a94759729d22a5f82c66c7df12dc3bc4af91561e9052d011ec3',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:51:32'),('b582baa5185c8e1656e5972af852ca4b02bfbdeb189ab0de33dd1e088b1f8feea125af9208817285',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:55:27'),('b9ee09f3dbda2552f400d6d9550bc9fa0d5c6e20fe4437c054962a23cafb03355343e376b20727c6',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 06:04:40'),('ba043a8e93b9d1bc6f179496c2560b53612f3bbcf05b1f6ffdf7a4cd0417b784f7a0926aab15b3fb',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:30:26'),('bd026f909b6c50919e344ee54da2b6b3da3ebd45bb991899c8d4829431fe0a3d0352e51172418e2d',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 10:06:20'),('c0b8289ffdc66d9666400c8b956c942f33aa792709ee71ccf57b150b1eff8e016ba80a812b1a2a1b',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:28:31'),('c186c1ffad670bdf50b2939d458c8161dfb99e3e99bcc6fb5a5725017307c2dbe502bc15362f1ff6',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:49:11'),('c3b773fe70799a58284c247c0a40185f5700549b361dbb7b8722ccf6ad87344daee7b5fe5727961f',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:33:04'),('c56fc7d3d15e161c6b7c8245188f81c15f65a7e1899d2bd69b26e00d71a1b95ad3ec076ca31863c0',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:26:46'),('c58280fe4279c07f33b150ca1afa86fe867d55bd3d27c96638d2ca5f4e674cd1ab8c29eacb6c308c',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 18:36:51'),('c8d752b18410ef81dfcb5bf406a71fce8e2d57aabb8497aa8da11f5dea40f0f6eef01e3bd03e6319',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:53:31'),('cbcf0b6dd6a982b49771664c09cd6f98e97f49c0eeecbb005f8acdd5cb5f293b61fbed1d64417f9d',5,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 09:22:20'),('d19eee4cb8cbe2129dbf6042194a85b9380f4566e03711f7e2353f3140622135f5447bc0340d539b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 07:49:58'),('d77af60928ac1e572b3c7b6bd6a85a4dd4daa7ec98e3bbdfb9875576046b8065d1eda2500c8f27f6',5,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 10:00:49'),('d97604b8a1459f877359f2c3aaa156590e5ca35dcb5f27e272587938f30e46e3a075d905d9a0ec8a',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 08:40:20'),('dada943880b310ae86d699f47ece853a00699cc3a9f79f8fef16aef33cb797fe648c059806ccf780',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:50:14'),('db663bd083ef83cd0d0ee982263172d137ebfc2ea9e6ee90d0cfa6ff4b198c6f8d7bec7eff643674',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:53:27'),('dbb7f9bf679e13543c267710c3a50f1bcb51a36d02b14caa7448e7243c4f6d1e5e1d9f96f5397216',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:51:36'),('de53273cd12730488e4b373bf74198b9b114527b0b1cf085a7316e5e1d0fc9b758e2e9ee49849444',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:48:56'),('e1b198860c194c45f681cd99f2f82877f2b2059aa0076cd05cf33f076dba3d1deaaee6647deca538',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 18:00:11'),('e2d9a61f3186c44ddb838573efd6c919cbaffc105209ab2aeefe760ec2100e3fe0b3779d7aec2b9b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',1,'2023-08-26 20:08:00'),('e7adda5df3d2eb31e791b20a14d290d5e33153d8dd30696ad49efb247ea5f5d7b5f00684a45bd679',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:12:21'),('eb089eb431935ef255edd8deee8becb9790155ed83fbdd81c381e0f59a99f441231398e8187d641b',4,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-28 06:05:27'),('eb92a90a521ddedad5c55001aec2b51955a778272a3f206f764a150314460d40a7b2921f0cfcba6b',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-26 20:51:18'),('f40da632aa774ccfe1d2015a9faff5589107220b5de1ba94218bc89c613ae9c61fe404b3b22cc67e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 12:46:27'),('f52c1737e5ff256f8376100b0dd86e82b4c8d355459da2877dafdaaa2ed2b26f863afaaed752cf2f',1,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[]',0,'2023-08-26 18:25:22'),('f6413d7df5d2928e42b3eb50b786bb6c995141f731c46c1a616d18b7fccdfa07c83f3037e495876e',2,'99fbdf7c-77df-46f6-9fb3-45cfb4ec553d','[\"view-user\"]',1,'2023-08-27 17:51:40');
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('99fba507-8ef2-436b-9afc-e730f936fb8c',NULL,'Laravel Personal Access Client','xooNUEIAMbZxlVtCzCwaXsWKNcilI1xXIg5E9vYo',NULL,'http://localhost',1,0,0,'2023-08-26 11:40:45','2023-08-26 11:40:45'),('99fba507-a333-4afe-87e0-71cd1e39697e',NULL,'Laravel Password Grant Client','YCVAX4acfdSdAwIseEIy9qA0Ed6dc6Q6BA36xdVl','users','http://localhost',0,1,0,'2023-08-26 11:40:45','2023-08-26 11:40:45'),('99fbdf7c-77df-46f6-9fb3-45cfb4ec553d',1,'Test Client 1','9tQyteuVbDdsbazIk60qluJ4hXqfQkSrFHcdg5sF',NULL,'http://127.0.0.1:8080/callback',0,0,0,'2023-08-26 14:24:13','2023-08-26 14:24:13');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,'99fba507-8ef2-436b-9afc-e730f936fb8c','2023-08-26 11:40:45','2023-08-26 11:40:45');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('0c51eab65e2999908af0d662f9f65c74e7156a0569250749feb7359010649413c772440abf0f5fd5','80afe975beae87bb39aa83ab2da83272ced33fff12058b2a87d09e72762de436b01c0e7d7b42fa2c',0,'2023-09-26 10:00:22'),('11706ad176c0420965ab60244b74f2ce1bbcb17236aacc562074e7018879768bd1b03dbbe7e29c1c','6c2789cffb4c874fa3e2a2f122ef09c7f2702a1e70cc89813e8020eadb100e1fad83625d760da141',0,'2023-09-26 07:24:25'),('2303b7805ba5da6f0543e9f7f786499d65d7b8c3102c8e6c3741380c67df865cb36e5316a8bf2cf8','86b889206e865c77985a11356321f719b1bacbda3a749bf323e4788616924e5522bfb0fbfae4f891',0,'2023-09-26 12:40:14'),('24e9fd50476fcb01db1bed864fab4c69d11f6472b76c73c5491b16a31524e9bb4f962e05ed6a45ee','90cbc19432dc203bd44e388f0b2f9c3b95b7933b86e87c7d972158c20fb186a3a47ddc65c408b4c7',0,'2023-09-26 07:43:31'),('2667f2bcb88e1c5c058845522a1a8dc7b5bd30da419ef2577df8723189eff7fc2af71911d0645145','0945604ac9b83916c931438b8e74b6ec61e76cdb3cb6cc581b5ade56155a96b2364e440f62932dd5',0,'2023-09-25 19:58:53'),('2eecd0347ac7d520ad22a4e8da6133359fcb096a936f54eeeee2d037eb7c707c1865650540cffc5b','aac6a05a8ec4d57a61fedb55d865eb53154247047a0e9ea5aff06a6305fe8ca3737575f81ca1cdf6',0,'2023-09-26 08:33:01'),('3b830fae87dd547ad20c5cf9868bf858abb695bd9398738a28194f18388e3631c6a80d747ec15d11','5660d22bcf216ca7286e502177673e687ec0996f95fb43155ea9978afd337f71ff8f7cb55e74aa51',0,'2023-09-26 09:56:21'),('49f67a3fad724e848a5a880316f9820670076c596c003ba6f87f408e578977e268f2a542275b9cfd','63cc55449e4adc9e6af6f6cfa557f5e91a3b77b6ce164042edd8abc212ddad0bccfa413a662409ad',0,'2023-09-25 20:32:42'),('4f2f0b2e952409c90d58bc1312cd955cb21982f555aa9315e34608f39d7b25e02935dfe2e34810a2','8f12ae16c26c7fd56ee9d1ba6796b28ef148be6d16b942370ea9eae6fad558e598b7e5be89c702af',0,'2023-09-26 09:07:51'),('5767e651c712a531088552ccda7d7245c324e7c19a5628fa10d2bbf682c1566be7d3455937458808','3604c3f8b5ba83ec76d894e7156481f52b64669f48cf488ecac11b84ffb0245ba4b3b4840ccccfce',0,'2023-09-26 09:54:13'),('588547ba6ebd8d2f121a699c685922f86765248b8b8759d95474ace6483e2d35d243787533216191','0d67c034b629c76e7b97284472ec09f74fca07e5f821c5403197ccd1f3adaeffa3622aa65ca42566',0,'2023-09-26 18:20:56'),('624924c6b0a06ee63aa566ffa99421f26095024453e3f4b76b02d8a32fd3a083bcd8b090501e1770','faeef04f720d55372cc13d02cf982bdcb65df61e33d8431b14753ddea5943487c7e815b1671ee17c',0,'2023-09-26 07:39:58'),('643e2b34e4f46786448dd33f68a65ad57be4380da676098742e70937d31e98f3a6819f1c31e57f0d','b664b0a836bd376aeb36b72087d901a83024b024c2e478b7aba4a08a6041994fdbef1b3ae83be030',0,'2023-09-26 09:59:33'),('69532f2b7b1c803d06d665cf23cf2a598f50d16997cf6e42adff045561891707b6bd321a37561250','e87cad930f84e5ccf4fd244fbf1a5dd594248b28a7a1030b7dce397861b24fe8a6e91c235dea5204',0,'2023-09-25 20:00:59'),('6c08af497d692045a76ce46c45764e2f41c1124ab26f296e8012f029e89a222a350957236303f5db','dd19323e40ca77558081e1f058dd804ae1e0360144792bbb5b0539b7b70589a322887a42d4fdb56c',0,'2023-09-26 07:41:09'),('74bd2734a450b17b6a3c368ba6c5a2b8a93ad1761ed8d841920afe6dbaba70d6693c41cda1ed1992','7dcee33b9c19f863fc507a4176d452052d8d19ebf451a1ece6a563847c05d6ca215f267dafd9f286',0,'2023-09-25 18:33:02'),('77151ede35b1be9f6804bf40102c5790436839b4ebc126f60e78834ea218e45a1701c058ded5bf2a','e8dbe60d9037a8cb43211fcfd68ab03ebc7c25bd3d437b9cf6d7ec4795b01a015ad6577fc6e44f41',0,'2023-09-26 06:51:04'),('84d1ade6d4929cb2744a459bcd9781d7091aeb2b9d74c61909d6ec971d4adac548eee953f7f0eb46','eb7fee6cb57ccb544e49dcee1c6c721a10fbe260dd053f3165f34b71863f8fdacab5bc14506f6cc7',0,'2023-09-25 19:51:35'),('84d2af4be562bdc6e42ea6e8412a5f58b762375108d4230601a6b66fc21cddcb1586117bd7b8d980','d5f24f07b8fee26bc431e37c9cb0889e592e452d39f8d42bd4ee45e520e5d91ec957569fdd2a2898',0,'2023-09-26 09:11:43'),('85c41172c724cab8de5ea855f554dbbff27f12e5b1efc16a0f374728c5a49b9dd881d8ba7cc98467','cf8e6b37463c0f3e29f88b3403a2c46bbdb3d525108c3e8236aad3823c2ce50ab9f97eb50e917f31',0,'2023-09-26 12:38:40'),('87cc2b8b0c41dd9bfe474e4e7708d206b3aa0fe80c66818d7dea47c076e4f17d48e859131cc8faae','166093482ecc72f2640a9b1c841b2e42a12d7d5de66fb0863f288649165942ef6c79774c2245fec3',0,'2023-09-26 08:08:13'),('8c87662011f8601d2653b8b707a104e37758bac2b879051b614f2d34006103a31f7eec70ff8fe5fa','0411521c1d1934ead557f9bfdeb69c8cc306b8904f50a260fd6328929c6b9bc4fe42d68137d17d85',0,'2023-09-25 20:25:15'),('9229cfd9b366e7440b8199ef1d1cc11e3450a9f64d5ba738d057f5aacc1e97a2e9069285963e9b6b','ce8af746ff6338e53e8f0f383a390ebab70947e3099ff8114bc9e0113df4ad7394cbd50824ee3e5b',0,'2023-09-25 20:41:18'),('9c56dfa55ebbdc3475602928e34b085e0e19d3da0b90f7b24aa3c108bc70443093dd2524f1a62ec7','9a16ae3fae715cfe35bc8bca0a84cd38fa8b0b76a2973c125f20d9cd55a8aa549a46b9e8175878cd',0,'2023-09-26 07:42:53'),('a22116d22a73b13e01f29eef438a0538f4068497602d74f6751b4c7322e26a8ac7579c407670802e','8d2edc8c64fcb3fcfcdcde2dd27d1b0c337702a0d0a803473181f296e59bdb415846abefd7603a20',0,'2023-09-25 20:23:04'),('b36b78f4ce9bc9db66718c3f16529f76fe78342bfd09808f5895997d420dc4a04ca9b038f15e4755','f9771d049e8a572a8f785c1b6b4ccad363cb3fa760a88a78c242d1fd3f05db1d2ef53e6a6dcbf6ec',0,'2023-09-26 09:10:52'),('b8b36633e4f7ccc8c8d06be02e17846e6b00f04496acc67e241959956c9e6a4a3afec2d02cccec2d','4a936d48ee7c898c899551fc4ff8ed015feffa90c3f78e9b4acae17034386a6b6a1e56a35c7ae38c',0,'2023-09-26 08:30:21'),('bc97a377fa41bd0d09425a29a15befc5296ae74a0b2bf9df2636f156749d3cd2856b07190a9ff978','0d70d54d060ccb964415218e336734ffd50174547d7972e6b51e4dee051d87f14ba7ecd8299a0385',0,'2023-09-25 20:33:18'),('bd2986066e6e9b02a9a8df7e08ad545bb238dcc5dd706c1720b59fe3ccc4ba679b6c03d3d0dd7add','ca668c97f614105a9394f6ebf45081a9a72d95ba9a4468cadb1cbec20e681c301fa6d18e63ee247c',0,'2023-09-26 07:35:34'),('c0d311fb1d0ff0f1a3af000ffadf31e29da839adec36fbf775b75e60c3dd24db614f9579340a0466','238d7c0fafc8e302386bd7a1ba19ca6b5816a5c37c66f01f00c2652fe033ff6aa73fd48418962321',0,'2023-09-25 20:03:05'),('c65b85abfefa4891eba3af5d793b11dc8d1ea219166de4d740d38758134400d6087e73621ebbe4f3','977fea1d67cdd4e2091d9daf013d1427a1fc86501ca6f7ac711be8478e84213031961e8652339b9d',0,'2023-09-25 19:58:00'),('d0869116ba140b36186310619139266249908b31ea93a132013446012f4306c55cc9496dd9ec259d','05f1ff9fce6bd2493d4c267b55757ef8cbf6d060c60818923930f636ee05a037f75c0ec2b1642710',0,'2023-09-25 20:41:32'),('d841129465740feb432a334debe2805b22c2442a8258c9bc8485f4c89f78b94dc715efa99880c6e3','90838b51f227dc0b405696d6ded089b0376f19cca8bbcb45c95ba25d36db482a5d496a52be581672',0,'2023-09-25 18:36:08'),('df7b95466a1b0f1337ab4721eac116618b7164ce2f14b7248d32b8f6a86493ab1ac60ec8ec248b58','e2b63ec89ec7556827a10016ca8fc15a17d79494ef5d4d911143f685915723f0e4666e3fbbca2db6',0,'2023-09-27 10:01:37'),('e0cfe38fa0ffb173d46d5973f075fbcb6a0467616ef8ca1ec7818f524cec7fbad77856b8000b3eda','9b302b76c059a9defb9285a05776f205f6b8927c52e30ceb5238f6a19202825f4a44c699e626d4c1',0,'2023-09-26 08:30:52'),('e6ccc1526f6b906f4177721f54585876040bf6026eccf55a54404c970d50d9fed21ff2e0b5c6529e','d39e4e6fcd04bf44af0182e314e90c503983c5bf921acf91c71fb9af8049e8e1bd1302262003cfef',0,'2023-09-26 09:08:41'),('f61b5eb6cf5e7ac66b37b7bc675a68b0900837db7e43fe30a9a93b6f510e5df35de0103e56db3263','5ac5da63a61b56c68deaa7bcc04baa7f9eda98529153e33afe2c737a3a63755ac86ebc128e121d8e',0,'2023-09-25 20:42:34'),('f72b92659cf0174ec72dbbfc06cf0835423ae58c7948e608f6fcf78555cd58d7f039cd2540aebe43','c214437ca4475b625205d65586f1ea2e1667fe46eb3a6adcf95d5aa9f7b050d3dd315c6b7a145ca4',0,'2023-09-26 05:54:40'),('fac3c489ac4803f6c50168408fb829f9fbe740df858d9e3190a0d649149c7a8cf5cface0d8b7bf9f','383f32de2cc067da518c2633861d8a6fe01052ccc27e28f6e05f6c63d6600f47dd5d4dace3e5fd38',0,'2023-09-26 07:40:36');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Abdullah Ahmed','abdullah.work06@gmail.com',NULL,'$2y$10$sMpigj11onxOUoSjNB740uWVFQI0.sqiB4/klo0Wbt8UBbrNmWjaS',NULL,'2023-08-26 14:20:37','2023-08-26 14:20:37'),(2,'Abdullah Two','abdullah.ahmed@bevatel.com',NULL,'$2y$10$hALAC7MFJrv884NrY67sY.U2NqRQmmhJGeGal6vdpBxVLg0M3IW7e',NULL,'2023-08-27 09:27:00','2023-08-27 09:27:00'),(3,'Abdullah Three','abdo@example.com',NULL,'$2y$10$rdtifgQH5IcDJ/s9zmSSJOr5mWSgBezz9lbXxuwjU.bqmoR/IlXHu',NULL,'2023-08-27 15:19:27','2023-08-27 15:19:27'),(4,'Test','test@example.com',NULL,'$2y$10$sXN.X.CdCNIeRD8BCUfdA.lUyrk9rKEzf1j/IlscAU35R8jhxSVom',NULL,'2023-08-28 02:55:02','2023-08-28 02:55:02'),(5,'abdullah ahmed','mode44620@gmail.com',NULL,'$2y$10$oRkfqWt1lDom0RN3iMN0K.OKP7cbIjuesGfcQzb6.//TZI9XPr.5m',NULL,'2023-08-28 06:12:15','2023-08-28 06:12:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28 13:08:41
