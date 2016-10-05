-- MySQL dump 10.13  Distrib 5.7.15, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: spikr
-- ------------------------------------------------------
-- Server version	5.7.15-0ubuntu0.16.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_21_143743_create_news_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_user_id_foreign` (`user_id`),
  CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,2,'Assumenda qui nihil nesciunt nihil qui quod. Et aut inventore libero fugiat voluptatem ea atque.','numquam-eaque-nam-ex-voluptatem-omnis-odio-quam-id-id-non-aliquid-accusamus-pariatur-libero-culpa-exercitationem-quia-corrupti-eos-iure-veniam-repellat-et-inventore-ut-nihil-et-dolorem','Aut harum qui et et eligendi laudantium. Consectetur voluptas blanditiis nostrum. Tenetur natus magnam at quod.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(2,3,'Facilis quas velit quis quasi. Itaque itaque adipisci sed repellat. Saepe commodi reiciendis ut sed repellendus id reiciendis.','nihil-dolor-sunt-perspiciatis-tempore-vero-quis-aut-iste-doloremque-sint-eum-pariatur-accusantium-laborum-velit-suscipit','Perferendis consequatur vitae architecto voluptate eaque ad voluptatem facere. Ut voluptatibus enim nihil consequatur cum reiciendis.','inactive','2016-09-21 18:32:31','2016-09-21 18:32:31'),(3,4,'Ratione eveniet qui sit minima voluptatem. Quos et odio quod iure voluptatem. Beatae dolores dolor sit sunt.','recusandae-voluptates-et-accusamus-est-animi-et-voluptatum-quo-eveniet-soluta-corrupti-quaerat-dolorem-ut-iure-eveniet-ut-corporis-culpa-rerum-et-et-aut-vero-doloremque-fugiat-blanditiis-qui','Temporibus doloremque praesentium distinctio omnis nemo. Optio molestiae ad ea est facere quod. Sapiente error non deserunt et minima unde dolorem.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(4,5,'Error aliquid autem ratione ipsa alias aut. Et quasi odio odit dicta in dolores alias. Reprehenderit voluptatem explicabo dolor sapiente ullam et.','tenetur-laboriosam-quod-quidem-neque-eaque-eaque-beatae-aut-rem-animi-enim-natus-illo-sit-exercitationem-adipisci-dolorem-accusamus-molestiae-praesentium-accusantium-quia-quae-ipsa-quis','Veritatis ut consequuntur consequatur dolores illo deserunt. Delectus ea et consequatur excepturi aut. Reprehenderit id voluptatum ipsa iste.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(5,6,'Et quia repellat ea sint. Voluptatum enim sunt reprehenderit et ipsa. Occaecati doloremque fugiat et quo quo.','aut-dolor-voluptatem-enim-qui-in-enim-impedit-delectus-doloribus-eligendi-quibusdam-accusantium-quia-quibusdam-atque-aut-sed-voluptatum-voluptate-sed-deserunt','Blanditiis et enim et alias. Sed consequatur officia aut repellendus eos. Optio commodi aliquid perferendis qui ullam doloremque.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(6,7,'Et repellat impedit nihil et laudantium ullam. Rerum velit vel deleniti omnis.','eligendi-laborum-itaque-blanditiis-consequuntur-nihil-sint-sit-eligendi-voluptatem-facere-ipsa-sed-nam-dicta-nihil','Blanditiis voluptas quo omnis id esse. Ullam natus facilis sequi in et id. Quisquam quisquam occaecati eius vel veritatis id. Qui quia molestiae maiores ea. Molestiae quisquam aliquid sunt atque quibusdam ut.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(7,8,'Ab libero ullam aliquid qui quidem cupiditate. Id eligendi cumque perferendis dolores consectetur nulla et. Sint ad inventore nihil quia. Qui vitae non iste quis.','quibusdam-odio-et-earum-quasi-enim-impedit-qui-neque-tenetur-optio-ut-dolor-incidunt-quia-ut-sequi','Voluptates ut illum delectus architecto. Adipisci explicabo accusamus in veniam error ratione. Officia placeat corrupti officia enim velit. Dignissimos adipisci voluptas excepturi quis.','inactive','2016-09-21 18:32:31','2016-09-21 18:32:31'),(8,9,'Error quod numquam in eum tenetur ut. Omnis quam voluptas aperiam iste minus. Culpa qui deserunt cupiditate et commodi sed quae. Vitae ab delectus dolores perferendis fuga expedita.','ipsum-eos-ut-non-et-nemo-vero-explicabo-fugit-quia-non-cum-iusto-vero-eos-non-debitis-voluptates-amet-est-incidunt-quo','Provident magnam quae dolores nemo deleniti enim et. Qui sed cupiditate molestias modi explicabo aut omnis nihil. Distinctio quas rem perferendis sapiente quia cumque similique tempora. Ut culpa in ab consectetur dolorem nisi saepe.','inactive','2016-09-21 18:32:31','2016-09-21 18:32:31'),(9,10,'Occaecati id vel optio sunt quisquam. In a non natus et. Vero molestiae occaecati sit possimus voluptas et. Nobis id ipsam et enim.','eaque-nulla-quidem-possimus-aperiam-sit-necessitatibus-quia-dolores-quis-quas-explicabo-maxime-at-sit-fuga-et-quos-praesentium-velit','Officiis praesentium laudantium voluptas maiores. Facilis quod eos non. Perspiciatis dolorem eos nesciunt non nihil. Id ea deleniti et sunt id.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31'),(10,11,'Ipsa et excepturi voluptatum distinctio ea illum rerum. Assumenda et aut eius necessitatibus ut. Quasi velit est quia itaque odit eos.','veritatis-modi-odio-eum-qui-veniam-eveniet-animi-corrupti-quia-aut-saepe-dolore-unde-quasi-excepturi-sunt-blanditiis-debitis-qui-veniam-inventore-repellat-reprehenderit-ut','Ipsam assumenda quidem sunt commodi magni. Expedita voluptas deleniti et architecto non non fugit temporibus. Harum neque deleniti voluptatibus. Non et ut molestiae quo provident odit asperiores.','posted','2016-09-21 18:32:31','2016-09-21 18:32:31');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Diogo Brito','diogo.brito7@gmail.com','$2y$10$H8AZmaO8IMZkem/q4amSvuO/ZMj5Tblan7hBPkJYiSx39zn1uLSoq','rnPBJOoSAe','2016-09-21 18:32:30','2016-09-21 18:32:30'),(2,'Luz Kertzmann','oschiller@example.net','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','dmj3d7JMBJ','2016-09-21 18:32:31','2016-09-21 18:32:31'),(3,'Hilda Breitenberg','claudia64@example.com','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','tlHrd1awsz','2016-09-21 18:32:31','2016-09-21 18:32:31'),(4,'Pauline Blanda','elinore.swift@example.com','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','M9Y1jcuIYk','2016-09-21 18:32:31','2016-09-21 18:32:31'),(5,'Miss Burdette Ferry','conroy.conrad@example.net','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','2KSEAbwdlW','2016-09-21 18:32:31','2016-09-21 18:32:31'),(6,'Mr. Alphonso Bernier II','kuhic.gunner@example.org','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','NEKG8aZtXI','2016-09-21 18:32:31','2016-09-21 18:32:31'),(7,'Dr. Jevon Cremin IV','eva.schamberger@example.org','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','kfSwGEi6pB','2016-09-21 18:32:31','2016-09-21 18:32:31'),(8,'Adrianna Schimmel V','witting.lane@example.com','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','3M6qITL7dX','2016-09-21 18:32:31','2016-09-21 18:32:31'),(9,'Maryse Ebert','cecilia.pouros@example.net','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','4UZcSplOnJ','2016-09-21 18:32:31','2016-09-21 18:32:31'),(10,'Dylan Kling','van.corwin@example.net','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','BylcrY2zPf','2016-09-21 18:32:31','2016-09-21 18:32:31'),(11,'Dr. Doug Padberg','aurore.lesch@example.net','$2y$10$7jERjYpws/0jc6yVZIiJ7eIDVIHf2sp8VjRFxS6NaQenhYek9wmRK','wxm1OF3EM9','2016-09-21 18:32:31','2016-09-21 18:32:31');
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

-- Dump completed on 2016-10-05 10:22:28
