-- MySQL dump 10.13  Distrib 8.0.0-dmr, for Linux (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

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
-- Current Database: `db1`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db1`;

--
-- Table structure for table `myTable`
--

DROP TABLE IF EXISTS `myTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myTable`
--

LOCK TABLES `myTable` WRITE;
/*!40000 ALTER TABLE `myTable` DISABLE KEYS */;
INSERT INTO `myTable` VALUES (1,'Ullamcorper Incorporated','interdum@nibh.net'),(2,'Ipsum Nunc Foundation','risus.at@indolorFusce.co.uk'),(3,'Tempor Arcu Vestibulum Inc.','posuere.cubilia@feugiat.net'),(4,'Vel Quam Dignissim PC','est.arcu@bibendumullamcorperDuis.com'),(5,'Vel Mauris Integer Consulting','mi.lorem.vehicula@egestas.edu'),(6,'Lobortis Class Aptent LLP','nec.mauris.blandit@Donecfeugiatmetus.com'),(7,'Elit Corporation','pellentesque.Sed@Proinsedturpis.edu'),(8,'Enim Nec Consulting','consectetuer@Donecfelis.org'),(9,'Egestas Fusce Aliquet Limited','ut.nisi@diamdictumsapien.co.uk'),(10,'Fermentum Fermentum Arcu Company','pede@aliquetPhasellusfermentum.ca'),(11,'Fames Ac Associates','sed.libero@turpis.org'),(12,'Velit Corp.','magna.Cras.convallis@Donec.ca'),(13,'Lacus Aliquam Rutrum Institute','montes.nascetur.ridiculus@diamDuismi.org'),(14,'Nulla Aliquet Proin Consulting','nisi.dictum@actellusSuspendisse.com'),(15,'Nisl Sem Consequat Institute','et@in.edu'),(16,'Cum Sociis Natoque PC','eleifend.nunc.risus@eu.net'),(17,'Mi Foundation','vitae.purus.gravida@ametrisusDonec.edu'),(18,'Mi Ac Mattis LLC','ultrices@lorem.edu'),(19,'Donec Nibh Enim Institute','quis.pede@nonummyutmolestie.co.uk'),(20,'Semper Nam PC','interdum.libero.dui@montesnascetur.org'),(21,'Ornare Placerat Orci Limited','quis.pede.Suspendisse@scelerisquesed.co.uk'),(22,'Elit Foundation','fringilla@orci.ca'),(23,'Sem Eget Massa Foundation','eu.sem.Pellentesque@tinciduntnibhPhasellus.co.uk'),(24,'Dictum Associates','a@interdumfeugiat.edu'),(25,'Urna Nec LLP','sed.libero@tempusnonlacinia.co.uk'),(26,'Ipsum Corporation','eget@magnisdisparturient.co.uk'),(27,'Ac Turpis Corp.','erat.neque.non@Nuncquis.org'),(28,'Dignissim Magna A Incorporated','ipsum.dolor.sit@tellus.edu'),(29,'Ut Cursus LLP','erat.semper.rutrum@condimentumDonecat.com'),(30,'Quisque Ornare Industries','molestie.arcu.Sed@laciniamattis.com'),(31,'Laoreet Incorporated','ut.lacus.Nulla@id.co.uk'),(32,'Curabitur Vel Lectus Limited','In@Phasellusataugue.net'),(33,'Senectus Et Netus Associates','adipiscing@afeugiattellus.com'),(34,'Ullamcorper Institute','auctor@porttitor.edu'),(35,'Eget Inc.','Sed.nec@perconubia.edu'),(36,'Lorem Ipsum Institute','ut.quam@dolorelitpellentesque.edu'),(37,'Massa PC','ridiculus.mus.Proin@nuncnullavulputate.co.uk'),(38,'Tincidunt Nibh Phasellus Associates','Integer.tincidunt.aliquam@ipsumsodalespurus.edu'),(39,'Tortor Integer Industries','nec.mollis.vitae@commodotincidunt.com'),(40,'Luctus Aliquet Odio Company','odio.Nam@id.net'),(41,'Cras Ltd','semper.erat.in@vel.org'),(42,'Maecenas PC','id.enim@quis.net'),(43,'Duis Risus Odio PC','ut@molestiein.ca'),(44,'Consectetuer Ltd','pede@Phasellusin.co.uk'),(45,'Eros Non Ltd','eu.eleifend@Donec.org'),(46,'Blandit Incorporated','eu.erat.semper@nuncrisus.org'),(47,'Class PC','nec.orci.Donec@afeugiattellus.co.uk'),(48,'Iaculis Quis Pede LLC','dictum@adipiscingelitAliquam.net'),(49,'Nunc Sollicitudin Corp.','elementum@quamdignissim.net'),(50,'Fermentum Risus Limited','posuere.cubilia@Quisquetincidunt.co.uk'),(51,'Diam LLP','Aenean@pharetrafelis.org'),(52,'Vitae Institute','non.lobortis@nonummy.net'),(53,'Molestie Tellus Foundation','Nullam@diam.net'),(54,'Lacus Industries','auctor@Utnecurna.edu'),(55,'Ullamcorper Nisl Associates','dui@egestasnuncsed.com'),(56,'Ligula Incorporated','pharetra@nec.ca'),(57,'Sit Amet Massa Limited','nisi.nibh@inmolestietortor.net'),(58,'Augue Ltd','Fusce@venenatis.com'),(59,'Vestibulum Inc.','Aliquam@afeugiattellus.net'),(60,'Nascetur Limited','aliquam.arcu.Aliquam@dictumauguemalesuada.ca'),(61,'Ante Bibendum Ullamcorper Inc.','ante@ligulatortordictum.org'),(62,'Elit Dictum Eu LLP','elit.dictum.eu@dictum.co.uk'),(63,'Nulla Integer Institute','est.vitae.sodales@non.org'),(64,'Velit Eu Industries','urna.nec@nequeInornare.ca'),(65,'Litora Torquent Per LLP','mattis@orciDonec.ca'),(66,'Curae; Donec Tincidunt Associates','vel.faucibus@eu.com'),(67,'In Corporation','arcu.vel@elitdictumeu.net'),(68,'Nec Corporation','dignissim.lacus.Aliquam@quisturpis.ca'),(69,'Et Rutrum Eu Limited','libero@in.edu'),(70,'Et Netus Et PC','at.sem.molestie@adlitoratorquent.ca'),(71,'Sit Amet Orci Industries','pede.ultrices@necluctus.com'),(72,'Quisque Varius Nam Corporation','In.scelerisque@pede.co.uk'),(73,'Ipsum Industries','lorem.eget.mollis@nullaInteger.net'),(74,'Morbi Sit Amet Limited','Donec@Sed.com'),(75,'Lacus Varius Et LLC','diam@nullaatsem.com'),(76,'Ut Lacus Incorporated','Proin.nisl.sem@nasceturridiculusmus.co.uk'),(77,'Arcu LLC','Vivamus@in.edu'),(78,'Tempor Bibendum Donec Corp.','nibh.Phasellus.nulla@rutrumnon.ca'),(79,'Vel Pede Blandit Foundation','malesuada.malesuada.Integer@luctusipsumleo.ca'),(80,'Amet Consectetuer PC','Proin.nisl@sem.com'),(81,'Nisi Mauris Consulting','egestas.Duis.ac@temporestac.net'),(82,'Condimentum Donec At PC','commodo@lectus.ca'),(83,'Sit Amet Corporation','ligula@orcitinciduntadipiscing.ca'),(84,'Facilisis Magna Tellus Corp.','urna.Ut.tincidunt@Phasellus.edu'),(85,'Hymenaeos Mauris Company','in.faucibus@Cumsociisnatoque.ca'),(86,'At Sem PC','libero.nec@at.com'),(87,'Varius Et Euismod Company','interdum@Cumsociis.co.uk'),(88,'Quis Lectus Nullam Corporation','inceptos@enimSed.com'),(89,'Nulla Institute','posuere@imperdietornare.com'),(90,'Non Cursus Company','mattis.velit@idmagnaet.edu'),(91,'A Arcu LLP','eget.massa.Suspendisse@urna.edu'),(92,'Sed Foundation','Fusce.mollis@neque.org'),(93,'Quam Quis Diam Industries','nulla.Integer.vulputate@rhoncus.edu'),(94,'Tristique Senectus Ltd','ante.ipsum.primis@ut.edu'),(95,'A Purus Duis Inc.','lorem.vehicula.et@duiCraspellentesque.co.uk'),(96,'Nulla Integer Vulputate Company','ipsum.Suspendisse@liberoProin.com'),(97,'Eu Nulla At Incorporated','posuere.enim@tempordiam.ca'),(98,'Nonummy Limited','accumsan.interdum.libero@semconsequatnec.edu'),(99,'Lectus Nullam Suscipit Corporation','ullamcorper.Duis.cursus@Maecenaslibero.com'),(100,'Varius Industries','fringilla.cursus@vel.org'),(101,'Varius Industries','fringilla.cursus@vel.org'),(102,'Varius Industries','fringilla.cursus@vel.org');
/*!40000 ALTER TABLE `myTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-21  4:55:01
