-- --------------------------------------------------------
-- Hôte:                         127.0.0.8
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour gestion_abonement
CREATE DATABASE IF NOT EXISTS `gestion_abonement` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `gestion_abonement`;

-- Listage de la structure de la table gestion_abonement. abonement
CREATE TABLE IF NOT EXISTS `abonement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  ` price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gestion_abonement.abonement : ~2 rows (environ)
/*!40000 ALTER TABLE `abonement` DISABLE KEYS */;
INSERT INTO `abonement` (`id`, `nom`, ` price`) VALUES
	(1, 'Inwi 25G', 99),
	(2, 'Orange 44G', 200),
	(3, 'Maroc Telecom 55G 15H', 350);
/*!40000 ALTER TABLE `abonement` ENABLE KEYS */;

-- Listage de la structure de la table gestion_abonement. admin
CREATE TABLE IF NOT EXISTS `admin` (
  `uemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gestion_abonement.admin : ~0 rows (environ)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`uemail`, `upwd`) VALUES
	('admin@admin.com', '1234');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Listage de la structure de la table gestion_abonement. users
CREATE TABLE IF NOT EXISTS `users` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `upwd` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `uemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `umobile` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `montantAbonnement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '200',
  `isPaye` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'no pay',
  PRIMARY KEY (`id_client`) USING BTREE,
  UNIQUE KEY `uemail` (`uemail`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gestion_abonement.users : ~4 rows (environ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_client`, `uname`, `upwd`, `uemail`, `umobile`, `montantAbonnement`, `isPaye`) VALUES
	(23, 'Khdiga El maataoui', '81dc9bdb52d04dc20036dbd8313ed055', 'khadiga.elmaataoui@gmail.com', '0987654321', '99', 'no pay'),
	(24, 'Noha Najmi', '81dc9bdb52d04dc20036dbd8313ed055', 'noha@gmail.com', '08956432567', '200', 'no pay'),
	(25, 'Zohra Boufardi', '81dc9bdb52d04dc20036dbd8313ed055', 'zohra@gmail.com', '0666654327', '350', ' pay'),
	(33, 'Chaimae El maataoui', 'e10adc3949ba59abbe56e057f20f883e', 'chaimae.elmaataoui2002@gmail.com', '0987654321', '200', 'no pay');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
