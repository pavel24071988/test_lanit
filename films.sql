-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.7.23-0ubuntu0.16.04.1 - (Ubuntu)
-- Операционная система:         Linux
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных test_films
CREATE DATABASE IF NOT EXISTS `test_films` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `test_films`;

-- Дамп структуры для таблица test_films.actors
CREATE TABLE IF NOT EXISTS `actors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица test_films.films
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица test_films.genres
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Экспортируемые данные не выделены.
-- Дамп структуры для таблица test_films.links_fag
CREATE TABLE IF NOT EXISTS `links_fag` (
  `filmId` int(11) NOT NULL,
  `genreId` int(11) NOT NULL,
  `actorId` int(11) NOT NULL,
  UNIQUE KEY `fagId` (`filmId`,`genreId`,`actorId`),
  KEY `FK_links_fag_genres` (`genreId`),
  KEY `FK_links_fag_actors` (`actorId`),
  CONSTRAINT `FK_links_fag_actors` FOREIGN KEY (`actorId`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_links_fag_films` FOREIGN KEY (`filmId`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_links_fag_genres` FOREIGN KEY (`genreId`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Экспортируемые данные не выделены.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
