
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



DROP TABLE IF EXISTS `todos`;
CREATE TABLE IF NOT EXISTS `todos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `todo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `todos` (`id`, `todo`, `completed`, `created_at`, `updated_at`) VALUES
(37, 'a simple todo list', '0', NULL, NULL),
(38, 'I will go to peshawar', '0', NULL, NULL),
(40, 'this is very bad', '0', NULL, NULL),
(41, 'this is very bad', '0', NULL, NULL);
COMMIT;

