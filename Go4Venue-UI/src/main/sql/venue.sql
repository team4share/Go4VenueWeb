/*
SQLyog Community v11.3 (64 bit)
MySQL - 5.6.27-log : Database - venue
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`venue` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `venue`;

/*Table structure for table `amenities` */

DROP TABLE IF EXISTS `amenities`;

CREATE TABLE `amenities` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `amenities` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`id`,`city_name`) values (1,'Delhi'),(2,'Noida'),(3,'Ghaziabad');

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occasion_id` int(11) DEFAULT NULL,
  `bugget_range` text,
  `guest_count` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `is_flexible_date` tinyint(1) DEFAULT NULL,
  `locality` text,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `event` */

/*Table structure for table `occasion` */

DROP TABLE IF EXISTS `occasion`;

CREATE TABLE `occasion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `occasion_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `occasion` */

insert  into `occasion`(`id`,`occasion_name`) values (1,'Wedding'),(2,'Birthday Party');

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `value` text,
  `description` text,
  `environment` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `property` */

/*Table structure for table `reviews` */

DROP TABLE IF EXISTS `reviews`;

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `review_details` text,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reviews` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `confirm_password` varchar(25) DEFAULT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `contact_number` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`first_name`,`last_name`,`email`,`password`,`confirm_password`,`user_type`,`contact_number`) values (1,'Rohit ','Kumar','rohit.chhonker@gmail.com','12345','123456','seeker','9650064949'),(10,NULL,NULL,'shubham.git@gmail.com','123456','123456','seeker','9650064949'),(11,'Shubham','Khandelwal',NULL,'123456','123456','seeker','123456'),(12,'Shubham','Khandelwal','shubham.git@gmail.com','123456','123456','seeker','123456'),(13,'Rakesh','Kumar','rakesh@impetus.co.in','123456','123456','owner','23456'),(14,'Rakesh','Kumar','rakesh@impetus.co.in','123456','123456','owner','23456'),(15,'Rakesh','Kumar','rakesh@impetus.co.in','123456','123456','owner','23456'),(16,'Anurag','Arya',NULL,'12365','1234','owner','13456'),(17,'Anurag','Arya',NULL,'12365','1234','owner','13456'),(18,'Anurag','Arya',NULL,'12365','1234','owner','13456'),(19,'Anurag','Arya',NULL,'12365','1234','owner','13456'),(20,'Rakesh','Kumar','rakesh.kumar@gmail.com','123456','123456','seeker','9650064949');

/*Table structure for table `venue` */

DROP TABLE IF EXISTS `venue`;

CREATE TABLE `venue` (
  `id` int(11) NOT NULL,
  `venue_name` varchar(25) DEFAULT NULL,
  `venue_capacity` int(11) DEFAULT NULL,
  `venue_price` decimal(10,0) DEFAULT NULL,
  `venue_type` varchar(25) DEFAULT NULL,
  `venue_contract_id` int(11) DEFAULT NULL,
  `venue_description` text,
  `venue_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `venue` */

/*Table structure for table `venue_images` */

DROP TABLE IF EXISTS `venue_images`;

CREATE TABLE `venue_images` (
  `id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `remarks` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `venue_images` */

/*Table structure for table `venue_location` */

DROP TABLE IF EXISTS `venue_location`;

CREATE TABLE `venue_location` (
  `id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `venue_city` varchar(100) DEFAULT NULL,
  `venue_pincode` int(11) DEFAULT NULL,
  `venue_latitude` decimal(10,0) DEFAULT NULL,
  `venue_longitude` decimal(10,0) DEFAULT NULL,
  `distance_from BusStand` int(11) DEFAULT NULL,
  `distance_from railway` int(11) DEFAULT NULL,
  `distance_from_airport` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `venue_location` */

/*Table structure for table `venue_url` */

DROP TABLE IF EXISTS `venue_url`;

CREATE TABLE `venue_url` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `url` text,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

/*Data for the table `venue_url` */

insert  into `venue_url`(`sno`,`url`) values (1,'http://www.venuelook.com/Gurgaon/Regency-Ballroom-of-Hyatt-Regency-Gurgaon-in-Sector-83'),(2,'http://www.venuelook.com/Delhi/The-Jehan-in-GT-Karnal-Road'),(3,'http://www.venuelook.com/Gurgaon/Imperial-II-of-Hotel-Haut.Monde-in-Sector-15'),(4,'http://www.venuelook.com/Delhi/Imperial-Garden-of-Golden-Tulip-in-Chhatarpur'),(5,'http://www.venuelook.com/Delhi/Golden-Crown-in-Mathura-Road'),(6,'http://www.venuelook.com/Ghaziabad/Royal-Palace-Banquet-in-Vasundhara'),(7,'http://www.venuelook.com/Delhi/Eden-Front-Lawn-of-Country-Inn-&-Suites-by-Carlson--Satbari,-Delhi-in-Chhatarpur'),(8,'http://www.venuelook.com/Delhi/Lajawab-Banquet-&-Catering-Services-in-Preet-Vihar'),(9,'http://www.venuelook.com/Ghaziabad/Gravity-Banquet-in-Vasundhara'),(10,'http://www.venuelook.com/Delhi/Plutos-in-Vasant-Kunj'),(11,'http://www.venuelook.com/Faridabad/Express-Gardens-of-Express-Sarovar-Portico-in-SurajKund'),(12,'http://www.venuelook.com/Ghaziabad/Hotel-The-Vaishali-Inn-in-Vaishali'),(13,'http://www.venuelook.com/Delhi/The-Imperial-Ballroom-of-Golden-Tulip-in-Chhatarpur'),(14,'http://www.venuelook.com/Ghaziabad/Satyam-Farms-in-Indirapuram'),(15,'http://www.venuelook.com/Gurgaon/Hotel-Haut.Monde-in-Sector-15'),(16,'http://www.venuelook.com/Delhi/Legend-Banquet-&-Restaurant-in-Rohini'),(17,'http://www.venuelook.com/Noida/Olive-Garden-Restaurant-&-Banquets-in-Sector-52'),(18,'http://www.venuelook.com/Delhi/Lagoona-Banquet-in-Saket'),(19,'http://www.venuelook.com/Ghaziabad/Yojna-Lawn-of-Yojna-The-Party-Lawn-in-Indirapuram'),(20,'http://www.venuelook.com/Delhi/Golden-Fiesta-in-East-Of-Kailash'),(21,'http://www.venuelook.com/Ghaziabad/Exotic-Garden-in-Indirapuram'),(22,'http://www.venuelook.com/Delhi/Country-Inn-&-Suites-by-Carlson--Satbari,-Delhi-in-Chhatarpur'),(23,'http://www.venuelook.com/Noida/Banquet-Hall-of-Noida-Golf-Course-in-Sector-38'),(24,'http://www.venuelook.com/Delhi/The-Golden-Palms-in-Patparganj'),(25,'http://www.venuelook.com/Delhi/Shreyans-Inn-in-Safdarjung-Enclave'),(26,'http://www.venuelook.com/Gurgaon/Aapno-Ghar-Resort-in-43rd-Milestone'),(27,'http://www.venuelook.com/Faridabad/Crystal-I-&-II-of-The-Atrium-Hotel-in-SurajKund'),(28,'http://www.venuelook.com/Delhi/Royal-Ballroom-of-Eros-Hotel-in-Nehru-Place'),(29,'http://www.venuelook.com/Delhi/Crystal-Ballroom-of-The-Lalit-Hotel-in-Connaught-Place'),(30,'http://www.venuelook.com/Delhi/Sara-Greens-in-Vasant-Kunj'),(31,'http://www.venuelook.com/Gurgaon/Regency-Ballroom-of-Hyatt-Regency-Gurgaon-in-Sector-83'),(32,'http://www.venuelook.com/Delhi/The-Jehan-in-GT-Karnal-Road'),(33,'http://www.venuelook.com/Gurgaon/Imperial-II-of-Hotel-Haut.Monde-in-Sector-15'),(34,'http://www.venuelook.com/Delhi/Imperial-Garden-of-Golden-Tulip-in-Chhatarpur'),(35,'http://www.venuelook.com/Delhi/Golden-Crown-in-Mathura-Road'),(36,'http://www.venuelook.com/Ghaziabad/Royal-Palace-Banquet-in-Vasundhara'),(37,'http://www.venuelook.com/Delhi/Eden-Front-Lawn-of-Country-Inn-&-Suites-by-Carlson--Satbari,-Delhi-in-Chhatarpur'),(38,'http://www.venuelook.com/Delhi/Lajawab-Banquet-&-Catering-Services-in-Preet-Vihar'),(39,'http://www.venuelook.com/Ghaziabad/Gravity-Banquet-in-Vasundhara'),(40,'http://www.venuelook.com/Delhi/Plutos-in-Vasant-Kunj'),(41,'http://www.venuelook.com/Delhi/White-Pearl-in-Rohini'),(42,'http://www.venuelook.com/Delhi/White-Pearl-in-Pitampura'),(43,'http://www.venuelook.com/Delhi/La-Cordiall-Party-Hall-in-Shahdara'),(44,'http://www.venuelook.com/Delhi/The-Crystal-in-Nirman-Vihar'),(45,'http://www.venuelook.com/Delhi/Kangna-Grand-Banquet-in-Uttam-Nagar'),(46,'http://www.venuelook.com/Noida/Orchid-of-Silver-Leaf-in-Sector-51'),(47,'http://www.venuelook.com/Delhi/Tarang-Banquets-&-Guest-House-in-Gazipur'),(48,'http://www.venuelook.com/Delhi/Opulent-Motel-in-Chhatarpur'),(49,'http://www.venuelook.com/Delhi/Karnation-in-Chhatarpur'),(50,'http://www.venuelook.com/Noida/Terrace-of-Noida-Golf-Course-in-Sector-38'),(51,'http://www.venuelook.com/Ghaziabad/Asian-Hotel-in-Kavi-Nagar'),(52,'http://www.venuelook.com/Delhi/Party-Lawn-of-E-Club-&-Resorts-in-Chhatarpur'),(53,'http://www.venuelook.com/Noida/Shaurya-Royal-in-Sector-72'),(54,'http://www.venuelook.com/Ghaziabad/Imperial-Banquet-of-Mahagun-Sarovar-Portico-Hotel-in-Vaishali'),(55,'http://www.venuelook.com/Ghaziabad/Regal-Banquet-of-Mahagun-Sarovar-Portico-Hotel-in-Vaishali'),(56,'http://www.venuelook.com/Faridabad/Awesome-Farms-and-Resorts-in-Other');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
