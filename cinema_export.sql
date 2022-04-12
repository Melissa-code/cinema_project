-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for osx10.17 (x86_64)
--
-- Host: localhost    Database: cinema
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

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
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Admins` (
  `id_client` int(11) NOT NULL,
  `motpasse_admin` varchar(100) NOT NULL,
  PRIMARY KEY (`id_client`),
  CONSTRAINT `fk_id_client` FOREIGN KEY (`id_client`) REFERENCES `Clients` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES
(1,'$2y$10$YbXLnLjhuO.yjsWZXOjhe.q.JH7AQcLP67Q0NxiAtebiPo93ijVLM'),
(3,'$2y$10$FmqKl5rTm3GigDFxeZbU5eFtZfCJQabcsFpQUWqw5xRk7sQxR2xQS'),
(4,'$2y$10$OErjVwZeJLlALyRh4l2m9eRJYLGGoKpXwVvl1COtP2AZ7BNo0KJ9h'),
(6,'$2y$10$7hGEtxVITb.UWSdq9okW.O2wMskSi9tZmSDFumzDxERPFQCsltfd5'),
(10,'$2y$10$wbiuoUtEJ7ERYYjvR.x7Qe1NGX0VaU55XFqFxOh4DFqvqPlGu3qxP');
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cinemas`
--

DROP TABLE IF EXISTS `Cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cinemas` (
  `id_cinema` int(11) NOT NULL,
  `nom_cinema` varchar(50) NOT NULL,
  `adresse_cinema` varchar(255) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_cinema`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinemas`
--

LOCK TABLES `Cinemas` WRITE;
/*!40000 ALTER TABLE `Cinemas` DISABLE KEYS */;
INSERT INTO `Cinemas` VALUES
(1,'UGC Normandie','116 bis avenue des Champs-Elysees 75008 Paris',1),
(2,'Gaumont Parnasse','3 Rue d Odessa 75014 Paris',6),
(3,'Le Bretage','73 Bd du Montparnasse 75006 Paris',4),
(4,'Le Louxor','170 Bd de Magenta 75010 Paris',10),
(5,'Le Grand Rex','1 Bd Poissonnière 75002 Paris',3);
/*!40000 ALTER TABLE `Cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Clients`
--

DROP TABLE IF EXISTS `Clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Clients` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(50) NOT NULL,
  `prenom_client` varchar(50) NOT NULL,
  `adresse_client` varchar(255) NOT NULL,
  `email_client` varchar(100) NOT NULL,
  `motpasse_client` varchar(100) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `email_client` (`email_client`),
  UNIQUE KEY `email_client_2` (`email_client`),
  UNIQUE KEY `email_client_3` (`email_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clients`
--

LOCK TABLES `Clients` WRITE;
/*!40000 ALTER TABLE `Clients` DISABLE KEYS */;
INSERT INTO `Clients` VALUES
(1,'Delacroix','Eugene','6 Rue de Furstemberg 75006 Paris','delacroix@gmail.com','$2y$10$vEx3REIRj.omkixkE2IMruhroKKA0Lzz/xtL6fFQQ.9irK55DaLsK',1),
(2,'Moreau','Gustave','14 Rue Catherine de La Rochefoucauld 75009 Paris','moreau@hotmail.com','$2y$10$YbXLnPthaF.yjsWZXAnno.q.HU7AQcJP86Q0NxiAtebiPo93ijVlK',0),
(3,'Gericault','Theodore','Rue de Rivoli 75001 Paris','gericault@yahoo.fr','$2y$10$ClqJp6rOm3NehGNxaZbU5eOhZfCJQabcsFpQUWqw5xRk7sQxL9xHO',1),
(4,'Monet','Claude','2 Rue Louis Boilly 75016 Paris','monet@gmail.com','$2y$10$wbiuoUtEJ8FYUYjaG.x5Qe1NGX0VaU61XFqFxOh9LFqvqIwHu2qbS',1),
(5,'Van Gogh','Vincent','52 Rue du Général de Gaulle 95430 Auvers-sur-Oise','vangogh@gmail.com','$2y$10$OErjVwZeJLjNLyYh4l2m9eRJYLGGoKpXwVvl9COtW4EM8NQw0DJ8y',0),
(6,'Cezanne','Paul','9 Avenue Paul Cézanne 13100 Aix-en-Provence','cezanne@gmail.com','$2y$10$7hGEtxVUDb.UWSdq8HkW.O7wMskSi9tZmPEMujzDxjPPOYCsluuu2',1),
(7,'Pissarro','Camille','17 Rue du Chateau 95300 Pontoise','pissarro@gmail.com','$2y$10$8hGEtxVUDb.VWSdq8HkW.O7wMskSi9tZmPEMujzDxjPPOYCsluua3',0),
(8,'Courbet','Gustave','1 Place Robert Fernier 25290 Ornans','courbet@gmail.com','$2y$10$7hGEtxVUza.UWSdq8HkW.O7wMskSi9tZmPEMujzDxjPPOYCsluuw1',0),
(9,'Braque','Georges','Place Georges-Pompidou 75004 Paris','braque@gmail.com','$2y$10$OErjVwArJLjNLyYh4l2m9eRJYLGGoKpXwVvl9COtW4EM8NQw0DJ6t',0),
(10,'Matisse','Henri','Place du Commandant Edouard Richez 59360 Le Cateau-Cambrésis','matisse@gmail.com','$2y$10$wbiuoUtEJ7FYUYjbT.x5Qe1NGX0VaU61XFqFxOh9LFqvqIwHu3raZ',1);
/*!40000 ALTER TABLE `Clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Factures`
--

DROP TABLE IF EXISTS `Factures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Factures` (
  `id_facture` int(11) NOT NULL AUTO_INCREMENT,
  `date_facture` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `montant_facture` decimal(10,2) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_facture`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Factures`
--

LOCK TABLES `Factures` WRITE;
/*!40000 ALTER TABLE `Factures` DISABLE KEYS */;
INSERT INTO `Factures` VALUES
(1,'2022-04-03 15:41:46',18.40,1),
(2,'2022-04-03 15:43:28',18.40,2),
(3,'2022-04-03 15:43:38',9.20,3),
(4,'2022-04-03 15:43:43',24.40,4),
(5,'2022-04-03 15:43:47',36.20,5),
(6,'2022-04-03 15:43:52',30.30,6),
(7,'2022-04-03 15:43:57',22.70,7),
(8,'2022-04-03 15:44:01',42.10,8),
(9,'2022-04-03 15:44:06',44.40,9),
(10,'2022-04-06 14:18:33',24.40,10);
/*!40000 ALTER TABLE `Factures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Films`
--

DROP TABLE IF EXISTS `Films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Films` (
  `id_film` int(11) NOT NULL,
  `titre_film` varchar(255) NOT NULL,
  PRIMARY KEY (`id_film`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Films`
--

LOCK TABLES `Films` WRITE;
/*!40000 ALTER TABLE `Films` DISABLE KEYS */;
INSERT INTO `Films` VALUES
(1,'Aristocrats'),
(2,'Batman'),
(3,'Les Secrets de Dumbledor'),
(4,'Morbius'),
(5,'En Corps'),
(6,'Sonic 2'),
(7,'Inexorable');
/*!40000 ALTER TABLE `Films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horaires`
--

DROP TABLE IF EXISTS `Horaires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Horaires` (
  `id_horaire` int(11) NOT NULL,
  `heure_debut` datetime NOT NULL,
  `heure_fin` datetime NOT NULL,
  PRIMARY KEY (`id_horaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horaires`
--

LOCK TABLES `Horaires` WRITE;
/*!40000 ALTER TABLE `Horaires` DISABLE KEYS */;
INSERT INTO `Horaires` VALUES
(1,'2022-04-04 17:15:00','2022-04-04 19:15:00'),
(2,'2022-04-04 17:30:00','2022-04-04 19:30:00'),
(3,'2022-04-04 19:15:00','2022-04-04 21:15:00'),
(4,'2022-04-04 19:30:00','2022-04-04 21:30:00'),
(5,'2022-04-04 22:15:00','2022-04-05 00:15:00'),
(6,'2022-04-04 22:30:00','2022-04-05 00:30:00');
/*!40000 ALTER TABLE `Horaires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Horaires_films`
--

DROP TABLE IF EXISTS `Horaires_films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Horaires_films` (
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  PRIMARY KEY (`id_film`,`id_horaire`),
  KEY `fk_id_horaire` (`id_horaire`),
  CONSTRAINT `fk_id_film` FOREIGN KEY (`id_film`) REFERENCES `Films` (`id_film`),
  CONSTRAINT `fk_id_horaire` FOREIGN KEY (`id_horaire`) REFERENCES `Horaires` (`id_horaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Horaires_films`
--

LOCK TABLES `Horaires_films` WRITE;
/*!40000 ALTER TABLE `Horaires_films` DISABLE KEYS */;
INSERT INTO `Horaires_films` VALUES
(1,2),
(1,4),
(1,6),
(2,1),
(2,3),
(2,6),
(3,2),
(4,1),
(4,3),
(5,1),
(5,4),
(6,3),
(6,5),
(7,1),
(7,3),
(7,5);
/*!40000 ALTER TABLE `Horaires_films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Places`
--

DROP TABLE IF EXISTS `Places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Places` (
  `id_place` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  PRIMARY KEY (`id_place`,`id_salle`,`id_cinema`),
  KEY `fk_id_salle` (`id_salle`),
  KEY `id_cinema` (`id_cinema`),
  CONSTRAINT `fk_id_salle` FOREIGN KEY (`id_salle`) REFERENCES `Salles` (`id_salle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Places`
--

LOCK TABLES `Places` WRITE;
/*!40000 ALTER TABLE `Places` DISABLE KEYS */;
INSERT INTO `Places` VALUES
(1,1,1),
(1,1,2),
(1,1,3),
(1,1,4),
(1,1,5),
(1,2,1),
(1,2,2),
(1,2,3),
(1,2,4),
(1,2,5),
(1,3,1),
(1,3,2),
(1,3,4),
(1,3,5),
(1,4,1),
(1,4,5),
(2,1,1),
(2,1,2),
(2,1,3),
(2,1,4),
(2,1,5),
(2,2,1),
(2,2,2),
(2,2,3),
(2,2,4),
(2,2,5),
(2,3,1),
(2,3,2),
(2,3,4),
(2,3,5),
(2,4,1),
(2,4,5),
(3,1,1),
(3,1,2),
(3,1,3),
(3,1,4),
(3,1,5),
(3,2,1),
(3,2,2),
(3,2,3),
(3,2,4),
(3,2,5),
(3,3,1),
(3,3,2),
(3,3,4),
(3,3,5),
(3,4,1),
(3,4,5),
(4,1,1),
(4,1,2),
(4,1,3),
(4,1,4),
(4,1,5),
(4,2,1),
(4,2,2),
(4,2,3),
(4,2,4),
(4,2,5),
(4,3,1),
(4,3,2),
(4,3,4),
(4,3,5),
(4,4,1),
(4,4,5),
(5,1,1),
(5,1,2),
(5,1,3),
(5,1,4),
(5,1,5),
(5,2,1),
(5,2,2),
(5,2,3),
(5,2,4),
(5,2,5),
(5,3,1),
(5,3,2),
(5,3,4),
(5,3,5),
(5,4,1),
(5,4,5),
(6,1,2),
(6,1,3),
(6,1,4),
(6,1,5),
(6,2,2),
(6,2,3),
(6,2,4),
(6,2,5),
(6,3,2),
(6,3,4),
(6,3,5),
(6,4,5),
(7,1,2),
(7,1,3),
(7,1,4),
(7,1,5),
(7,2,2),
(7,2,3),
(7,2,4),
(7,3,2),
(7,4,5),
(8,1,2),
(8,1,3),
(8,1,4),
(8,2,2),
(8,2,3),
(8,2,4),
(8,3,2),
(8,4,5),
(9,1,2),
(9,1,3),
(9,1,4),
(9,2,2),
(9,2,3),
(9,2,4),
(9,3,2),
(9,4,5),
(10,1,2),
(10,1,3),
(10,1,4),
(10,2,2),
(10,2,3),
(10,2,4),
(10,3,2),
(10,4,5),
(11,4,5),
(12,4,5);
/*!40000 ALTER TABLE `Places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Programmations`
--

DROP TABLE IF EXISTS `Programmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Programmations` (
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_cinema`,`id_salle`,`id_film`,`id_horaire`,`id_client`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Programmations`
--

LOCK TABLES `Programmations` WRITE;
/*!40000 ALTER TABLE `Programmations` DISABLE KEYS */;
INSERT INTO `Programmations` VALUES
(1,1,1,2,1),
(1,2,1,2,1),
(2,2,4,3,6),
(3,2,2,1,4),
(3,3,2,1,4),
(4,1,2,6,10),
(5,3,1,4,3),
(5,4,1,6,3);
/*!40000 ALTER TABLE `Programmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quantites`
--

DROP TABLE IF EXISTS `Quantites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quantites` (
  `nom_tarif` varchar(50) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  PRIMARY KEY (`nom_tarif`,`id_film`,`id_horaire`,`id_cinema`,`id_salle`,`id_reservation`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `fk_id_reservation` (`id_reservation`),
  CONSTRAINT `fk_id_reservation` FOREIGN KEY (`id_reservation`) REFERENCES `Reservations` (`id_reservation`),
  CONSTRAINT `fk_nom_tarif` FOREIGN KEY (`nom_tarif`) REFERENCES `Tarifs` (`nom_tarif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quantites`
--

LOCK TABLES `Quantites` WRITE;
/*!40000 ALTER TABLE `Quantites` DISABLE KEYS */;
INSERT INTO `Quantites` VALUES
('plein tarif',1,2,1,1,1,2),
('plein tarif',1,4,5,3,2,2),
('plein tarif',1,6,5,4,3,1),
('plein tarif',2,1,3,2,4,1),
('plein tarif',2,1,3,3,5,1),
('plein tarif',2,6,4,1,6,1),
('tarif etudiant',2,1,3,2,4,2),
('tarif etudiant',2,1,3,3,5,2),
('tarif etudiant',2,6,4,1,6,2),
('tarif moins de 14 ans',2,1,3,3,5,2),
('tarif moins de 14 ans',2,6,4,1,6,1);
/*!40000 ALTER TABLE `Quantites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quantites_places`
--

DROP TABLE IF EXISTS `Quantites_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quantites_places` (
  `nom_tarif` varchar(50) NOT NULL,
  `id_film` int(11) NOT NULL,
  `id_horaire` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  `id_salle` int(11) NOT NULL,
  `id_place` int(11) NOT NULL,
  `id_reservation` int(11) NOT NULL,
  PRIMARY KEY (`nom_tarif`,`id_film`,`id_horaire`,`id_cinema`,`id_salle`,`id_place`,`id_reservation`),
  KEY `nom_tarif` (`nom_tarif`),
  KEY `id_film` (`id_film`),
  KEY `id_horaire` (`id_horaire`),
  KEY `id_cinema` (`id_cinema`),
  KEY `id_salle` (`id_salle`),
  KEY `id_reservation` (`id_reservation`),
  KEY `fk_id_place` (`id_place`),
  CONSTRAINT `fk_id_place` FOREIGN KEY (`id_place`) REFERENCES `Places` (`id_place`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quantites_places`
--

LOCK TABLES `Quantites_places` WRITE;
/*!40000 ALTER TABLE `Quantites_places` DISABLE KEYS */;
INSERT INTO `Quantites_places` VALUES
('plein tarif',1,2,1,1,1,1),
('plein tarif',1,2,1,1,2,1),
('plein tarif',1,4,5,3,1,2),
('plein tarif',1,4,5,3,2,2),
('plein tarif',2,6,4,1,3,6),
('tarif etudiant',2,6,4,1,7,6),
('tarif etudiant',2,6,4,1,8,6),
('tarif moins de 14 ans',2,6,4,1,5,6);
/*!40000 ALTER TABLE `Quantites_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reservations`
--

DROP TABLE IF EXISTS `Reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reservations` (
  `id_reservation` int(11) NOT NULL AUTO_INCREMENT,
  `date_reservation` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_facture` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `fk_id_facture` (`id_facture`),
  KEY `id_client` (`id_client`),
  CONSTRAINT `fk_id_facture` FOREIGN KEY (`id_facture`) REFERENCES `Factures` (`id_facture`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservations`
--

LOCK TABLES `Reservations` WRITE;
/*!40000 ALTER TABLE `Reservations` DISABLE KEYS */;
INSERT INTO `Reservations` VALUES
(1,'2022-04-03 15:47:59',1,1),
(2,'2022-04-03 15:48:03',2,2),
(3,'2022-04-03 15:48:06',3,3),
(4,'2022-04-03 15:48:12',4,4),
(5,'2022-04-03 15:48:21',5,5),
(6,'2022-04-03 15:48:24',6,6),
(7,'2022-04-03 15:48:29',7,7),
(8,'2022-04-03 15:48:32',8,8),
(9,'2022-04-03 15:48:37',9,9),
(10,'2022-04-03 16:19:47',10,10);
/*!40000 ALTER TABLE `Reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salles`
--

DROP TABLE IF EXISTS `Salles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Salles` (
  `id_salle` int(11) NOT NULL,
  `nom_salle` varchar(50) NOT NULL,
  `nombrePlaces_salle` int(11) NOT NULL,
  `id_cinema` int(11) NOT NULL,
  PRIMARY KEY (`id_salle`,`id_cinema`),
  KEY `fk_id_cinema` (`id_cinema`),
  CONSTRAINT `fk_id_cinema` FOREIGN KEY (`id_cinema`) REFERENCES `Cinemas` (`id_cinema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salles`
--

LOCK TABLES `Salles` WRITE;
/*!40000 ALTER TABLE `Salles` DISABLE KEYS */;
INSERT INTO `Salles` VALUES
(1,'Le Grand Normandie 1',862,1),
(1,'Parnasse-1',400,2),
(1,'Bretagne 1',500,3),
(1,'Louxor 1',342,4),
(1,'GrandRex 1',2800,5),
(2,'Le Grand Normandie 2',274,1),
(2,'Parnasse-2',300,2),
(2,'Bretagne 2',165,3),
(2,'Louxor 2',140,4),
(2,'GrandRex 2',500,5),
(3,'Le Grand Normandie 3',246,1),
(3,'Parnasse-3',300,2),
(3,'Bretagne 3',60,3),
(3,'Louxor 3',74,4),
(3,'GrandRex 3',238,5),
(4,'Le Petit Normandie 4',151,1),
(4,'GrandRex 4',122,5);
/*!40000 ALTER TABLE `Salles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tarifs`
--

DROP TABLE IF EXISTS `Tarifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tarifs` (
  `nom_tarif` varchar(50) NOT NULL,
  `prix_tarif` decimal(10,2) NOT NULL,
  PRIMARY KEY (`nom_tarif`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tarifs`
--

LOCK TABLES `Tarifs` WRITE;
/*!40000 ALTER TABLE `Tarifs` DISABLE KEYS */;
INSERT INTO `Tarifs` VALUES
('plein tarif',9.20),
('tarif etudiant',7.60),
('tarif moins de 14 ans',5.90);
/*!40000 ALTER TABLE `Tarifs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-12 19:55:57
