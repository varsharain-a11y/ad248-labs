-- MySQL dump 10.13  Distrib 5.7.11, for osx10.9 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `Address`
--

DROP DATABASE IF EXISTS `bookstore`;

CREATE DATABASE IF NOT EXISTS `bookstore`;

CREATE USER 'bookstore'@'%' IDENTIFIED BY 'redhat';
GRANT ALL PRIVILEGES ON bookstore.* TO 'bookstore'@'%' identified by 'redhat';

USE `bookstore`;

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `id` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `streetAddress1` varchar(255) DEFAULT NULL,
  `streetAddress2` varchar(255) DEFAULT NULL,
  `streetAddress3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CatalogItem`
--

DROP TABLE IF EXISTS `CatalogItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CatalogItem` (
  `id` int(11) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `imagePath` varchar(255) DEFAULT NULL,
  `newItem` bit(1) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CatalogItem`
--

LOCK TABLES `CatalogItem` WRITE;
/*!40000 ALTER TABLE `CatalogItem` DISABLE KEYS */;
INSERT INTO `CatalogItem` VALUES (1,'Lt. Howard Payson','military','description 1','/images/books/BoyScouts.jpg','',45.00,'ABC123','The Boy Scouts at the Panama-Pacific Exposition'),(2,'Unknown','children','description 2','/images/books/3LittleKittens.jpg','\0',15.00,'DEF456','The 3 Little Kittens'),(3,'Beatrix Potter','children','description 3','/images/books/JemimaPuddleDuck.jpg','',25.00,'GHI789','The Tale of Jemima Puddle Duck'),(4,'Waldemar Bonsels','children','description 4','/images/books/AdventuresOfMayaTheBee.jpg','\0',23.00,'123132','The Adventures of Maya the Bee'),(5,'Sunzi','military','description 5','/images/books/art-of-war-sunzi-lionel-giles.jpg','\0',20.00,'45678','The Art of War'),(6,'Rafael Sabatini','children','description 6','/images/books/CaptainBlood.jpg','\0',22.95,'45679','Captain Blood'),(7,'Robert Brent','crafts','description 7','/images/books/ChemistryExperiments.png','\0',32.95,'45680','The Golden Book of Chemistry Experiments'),(8,'Eleanor M. Ingram','children','description 8','/images/books/coverthingfromthelake.jpg','\0',25.95,'45681','The Thing from the Lake'),(9,'Flora Klickmann','crafts','description 9','/images/books/CraftOfCrochet.jpg','\0',35.95,'45682','The Craft of Crochet Hook'),(10,'Charles Robert Dumas','children','description 10','/images/books/Design-Book-cover-Juvenile-Contes-Mauves.jpg','\0',45.95,'45683','Contes Mauves de ma Mere-Grand'),(11,'Joseph Jacobs','children','description 11','/images/books/EnglishFairyTales.jpg','\0',25.95,'45684','English Fairy Tales'),(12,'Flora Klickmann','crafts','description 12','/images/books/FancyStitchery.jpg','\0',45.95,'45685','The Home Art Book of Fancy Stitchery'),(13,'Lela Nargi','crafts','description 13','/images/books/FarmersWifeCanning.jpg','\0',20.95,'45686','The Farmer\'s Wife Canning and Preserving Cookbook'),(14,'Flora Kickmann','crafts','description 14','/images/books/HomeArtCrochet.jpg','\0',15.95,'45687','The Home Art of Crochet Book'),(15,'Three Initiates','crafts','description 15','/images/books/LeKybalion.jpg','\0',30.95,'45688','Le Kybalion'),(16,'Jane Eayre Fryer','children','description 16','/images/books/MaryFrancesGarden.jpg','\0',40.95,'45689','The Mary Frances Garden Book'),(17,'Jane Eayre Fryer','children','description 17','/images/books/MaryFrancesHousekeeper.jpg','\0',55.95,'45690','The Mary Frances Housekeeper'),(18,'Religious Tract Society','children','description 18','/images/books/NewAlphabet.jpg','\0',22.95,'45691','My New Alphabet Book'),(19,'Beatrix Potter','children','description 19','/images/books/PeterRabbit.png','\0',14.95,'45691','The Tale of Peter Rabbit'),(20,'Unknown','comics','expensive sucker','/images/books/CameraComics.jpg','\0',195.00,'45677','Camera Comics'),(21,'Unknown','comics','expensive sucker','/images/books/PoliceCases.jpg','\0',200.00,'45692','Authentic Police Cases'),(22,'G.Griffin Lewis','crafts','description 20','/images/books/PracticalBookOfOrientalRugs.jpg','\0',205.00,'45693','The Practical Book of Oriental Rugs'),(23,'Priscilla Publishing Co.','crafts','description 21','/images/books/PriscillaCrochetBook.jpg','\0',40.00,'45694','Priscilla Juniors\' Crochet Book'),(24,'Tony Laidig','crafts','description 22','/images/books/PublicDomainCodeBook.jpg','',25.00,'45695','The Public Domain Code Book'),(25,'Thornton W. Burgess','children','description 23','/images/books/ReddyFox.jpg','',10.95,'45696','The Adventures of Reddy Fox'),(26,'Wallace Wattles','crafts','description 24','/images/books/ScienceOfGettingRich.jpg','',5.95,'45697','The Science of Getting Rich'),(27,'Arthur Conan Doyle','children','description 25','/images/books/SherlockHolmes.jpg','',20.95,'45698','The Casebook of Sherlock Holmes'),(28,'Laura Lee Hope','children','description 26','/images/books/StuffedElephant.jpg','',10.95,'45698','The Story of a Stuffed Elephant'),(29,'DC Comics','comics','description 27','/images/books/SuperGirl.jpg','',4.95,'45699','Supergirl'),(30,'Beatrix Potter','children','description 28','/images/books/TaleOfPiglingBland.jpg','',14.95,'45600','The Tale of Pigling Bland'),(31,'Grace McCleen','crafts','description 29','/images/books/The-Offering-lg.jpg','',12.95,'45601','The Offering'),(32,'Brian Fagan','crafts','description 30','/images/books/TimeDetectives.jpg','',22.95,'45602','Time Detectives'),(33,'Starr Flagg','comics','description 31','/images/books/UndercoverGirl.jpg','\0',220.95,'45603','Undercover Girl'),(34,'Andrew Lang','children','description 32','/images/books/YellowFairy.jpg','',22.95,'45604','The Yellow Fairy Book');
/*!40000 ALTER TABLE `CatalogItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact`
--

DROP TABLE IF EXISTS `Contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` longtext,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact`
--

LOCK TABLES `Contact` WRITE;
/*!40000 ALTER TABLE `Contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `id` int(11) NOT NULL,
  `admin` bit(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `bill_addr_id` int(11) DEFAULT NULL,
  `ship_addr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKske2xj9491qc0akvyu1s5hxws` (`bill_addr_id`),
  KEY `FKlhp3kh3a0r3bauqvj4iltl02g` (`ship_addr_id`),
  CONSTRAINT `FKlhp3kh3a0r3bauqvj4iltl02g` FOREIGN KEY (`ship_addr_id`) REFERENCES `Address` (`id`),
  CONSTRAINT `FKske2xj9491qc0akvyu1s5hxws` FOREIGN KEY (`bill_addr_id`) REFERENCES `Address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (35,'\0','jdoe@doe.com','John','Doe','redhat','jdoe',NULL,NULL),(36,'\0','guest@doe.com','Guest','User','user','guest',NULL,NULL),(37,'','admin@bookshop.com','Admin','User','redhat','admin',NULL,NULL);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderItem` (
  `id` int(11) NOT NULL,
  `extPrice` decimal(19,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKou4cftmq63p5vixh36oe2qs9l` (`item_id`),
  KEY `FKs98rdhgjdmy19u813y215ftog` (`order_id`),
  CONSTRAINT `FKou4cftmq63p5vixh36oe2qs9l` FOREIGN KEY (`item_id`) REFERENCES `CatalogItem` (`id`),
  CONSTRAINT `FKs98rdhgjdmy19u813y215ftog` FOREIGN KEY (`order_id`) REFERENCES `order_` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment`
--

DROP TABLE IF EXISTS `Payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment` (
  `id` int(11) NOT NULL,
  `expireMonth` varchar(255) NOT NULL,
  `expireYear` varchar(255) NOT NULL,
  `holderName` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `paymentType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment`
--

LOCK TABLES `Payment` WRITE;
/*!40000 ALTER TABLE `Payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Promotion`
--

DROP TABLE IF EXISTS `Promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promotion` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `valid` bit(1) DEFAULT NULL,
  `promo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg7simxk9h3y0aglxc6u5pd5kj` (`promo_id`),
  CONSTRAINT `FKg7simxk9h3y0aglxc6u5pd5kj` FOREIGN KEY (`promo_id`) REFERENCES `order_` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promotion`
--

LOCK TABLES `Promotion` WRITE;
/*!40000 ALTER TABLE `Promotion` DISABLE KEYS */;
INSERT INTO `Promotion` VALUES (38,'kid10',10,'',NULL),(39,'big61',50,'',NULL);
/*!40000 ALTER TABLE `Promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserToken`
--

DROP TABLE IF EXISTS `UserToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserToken` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK23pdrujn7cha8993aeyfs3dn7` (`customer_id`),
  CONSTRAINT `FK23pdrujn7cha8993aeyfs3dn7` FOREIGN KEY (`customer_id`) REFERENCES `Customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserToken`
--

LOCK TABLES `UserToken` WRITE;
/*!40000 ALTER TABLE `UserToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WishList`
--

DROP TABLE IF EXISTS `WishList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WishList` (
  `id` int(11) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqlntc23o2p69d3chxl32o32p1` (`cust_id`),
  CONSTRAINT `FKqlntc23o2p69d3chxl32o32p1` FOREIGN KEY (`cust_id`) REFERENCES `Customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WishList`
--

LOCK TABLES `WishList` WRITE;
/*!40000 ALTER TABLE `WishList` DISABLE KEYS */;
/*!40000 ALTER TABLE `WishList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WishListItem`
--

DROP TABLE IF EXISTS `WishListItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WishListItem` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `wishitem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8xyncxvyp5bksjarhkw65rd88` (`item_id`),
  KEY `FKmo3d6llbay33wy480yeqwtkxt` (`wishitem_id`),
  CONSTRAINT `FK8xyncxvyp5bksjarhkw65rd88` FOREIGN KEY (`item_id`) REFERENCES `CatalogItem` (`id`),
  CONSTRAINT `FKmo3d6llbay33wy480yeqwtkxt` FOREIGN KEY (`wishitem_id`) REFERENCES `WishList` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WishListItem`
--

LOCK TABLES `WishListItem` WRITE;
/*!40000 ALTER TABLE `WishListItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `WishListItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (40),(40),(40),(40),(40),(40),(40),(40),(40),(40),(40);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_`
--

DROP TABLE IF EXISTS `order_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_` (
  `id` int(11) NOT NULL,
  `delivered` bit(1) DEFAULT NULL,
  `discount` decimal(19,2) DEFAULT NULL,
  `orderDate` datetime DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh4gcrj02iat610i5ypref3xli` (`cust_id`),
  KEY `FKsn4vdi6ft61t27nhjv8beuoax` (`payment_id`),
  CONSTRAINT `FKh4gcrj02iat610i5ypref3xli` FOREIGN KEY (`cust_id`) REFERENCES `Customer` (`id`),
  CONSTRAINT `FKsn4vdi6ft61t27nhjv8beuoax` FOREIGN KEY (`payment_id`) REFERENCES `Payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_`
--

LOCK TABLES `order_` WRITE;
/*!40000 ALTER TABLE `order_` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-11  9:50:19
