/*
SQLyog Community v12.2.4 (64 bit)
MySQL - 10.1.13-MariaDB : Database - dbwinmycaseapp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbwinmycaseapp` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dbwinmycaseapp`;

/*Table structure for table `accepted_job_proposal` */

DROP TABLE IF EXISTS `accepted_job_proposal`;

CREATE TABLE `accepted_job_proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobid` int(11) DEFAULT NULL,
  `clientId` int(11) DEFAULT NULL,
  `lawyerId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `accepted_job_proposal` */

insert  into `accepted_job_proposal`(`id`,`jobid`,`clientId`,`lawyerId`,`created_at`) values 
(1,1,222,223,'2016-07-21 08:58:23'),
(2,2,222,223,'2016-07-21 09:41:04'),
(3,5,222,223,'2016-07-21 11:44:06'),
(4,6,222,223,'2016-07-21 11:44:30'),
(5,12,222,223,'2016-07-21 13:46:03'),
(6,11,222,223,'2016-07-21 13:46:12'),
(7,10,222,223,'2016-07-21 13:46:19'),
(8,9,222,223,'2016-07-21 13:46:27'),
(9,8,222,223,'2016-07-21 13:46:36'),
(10,4,222,223,'2016-07-21 13:49:23'),
(11,13,222,223,'2016-07-21 13:53:10'),
(12,14,222,223,'2016-07-21 16:25:24');

/*Table structure for table `app_version` */

DROP TABLE IF EXISTS `app_version`;

CREATE TABLE `app_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `v_code` int(11) NOT NULL,
  `v_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `app_version` */

insert  into `app_version`(`id`,`v_code`,`v_name`) values 
(1,22,'3.2');

/*Table structure for table `availability_time` */

DROP TABLE IF EXISTS `availability_time`;

CREATE TABLE `availability_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `availability_time` */

insert  into `availability_time`(`id`,`time`) values 
(1,'09:AM'),
(2,'10:AM'),
(3,'11:AM'),
(4,'12:AM'),
(5,'01:PM'),
(6,'02:PM'),
(7,'03:PM'),
(8,'04:PM'),
(9,'05:PM'),
(10,'06:PM'),
(11,'07:PM'),
(12,'08:PM'),
(13,'09:PM'),
(14,'10:PM'),
(15,'11:PM'),
(16,'12:PM');

/*Table structure for table `book_gcm` */

DROP TABLE IF EXISTS `book_gcm`;

CREATE TABLE `book_gcm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `from_to_time` varchar(250) DEFAULT NULL,
  `accept` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_gcm` */

/*Table structure for table `book_message` */

DROP TABLE IF EXISTS `book_message`;

CREATE TABLE `book_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` varchar(150) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_message` */

/*Table structure for table `book_tokens` */

DROP TABLE IF EXISTS `book_tokens`;

CREATE TABLE `book_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_phone` int(11) DEFAULT NULL,
  `to_phone` int(11) DEFAULT NULL,
  `call_pending` int(11) DEFAULT '0',
  `get_token` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `book_tokens` */

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `categories` */

insert  into `categories`(`id`,`categoryname`) values 
(1,'Family'),
(2,'Service'),
(3,'Insurance Law'),
(4,'Intellectual Property Law'),
(5,'International Law'),
(6,'Inmigration Law'),
(7,'Wills/Trusts'),
(8,'Writs'),
(9,'Administrative Law'),
(10,'Arbitration and Conciliation'),
(11,'Business Law'),
(12,'Labour and Employment Law'),
(13,'Landlord / Tenant'),
(14,'Child Custody'),
(15,'Civil Litigation'),
(16,'Company Law'),
(17,'Constitutional Law'),
(18,'Consumer Protection'),
(19,'Copyright Patent and Tm'),
(20,'Corporate Law'),
(21,'Criminal Law'),
(22,'Custom and Central Excise'),
(23,'Cyber Crime'),
(24,'Marriages and Matrimonial Disputes'),
(25,'Media and Entertainment'),
(26,'Medical Malpractice'),
(27,'Motor Accident'),
(28,'Muslim Law'),
(29,'Documentation'),
(30,'Environmental Law'),
(31,'Property Law'),
(32,'R.T.I'),
(33,'Real Estate Law'),
(34,'Recovery and Debt'),
(35,'Revenue Law'),
(36,'Securities Law'),
(37,'Service and Employment'),
(38,'Tax Law');

/*Table structure for table `chat_messages` */

DROP TABLE IF EXISTS `chat_messages`;

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserFromId` int(11) DEFAULT NULL,
  `UserToId` int(11) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Message` text,
  `ClientGuid` varchar(255) DEFAULT NULL,
  `DateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_messages` */

/*Table structure for table `chat_rooms` */

DROP TABLE IF EXISTS `chat_rooms`;

CREATE TABLE `chat_rooms` (
  `chat_room_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat_rooms` */

/*Table structure for table `cities` */

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(200) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

/*Data for the table `cities` */

insert  into `cities`(`city_id`,`city_name`) values 
(1,'Chandigarh'),
(2,'Dehradun'),
(3,'Delhi'),
(4,'Gurgaon'),
(5,'Jaipur'),
(6,'Lucknow'),
(7,'Shimla'),
(8,'Ludhiana'),
(9,'Srinagar'),
(10,'Jalandhar'),
(11,'Sangrur'),
(12,'Allahabad'),
(13,'Ahmedabad'),
(14,'Mumbai'),
(15,'Goa'),
(16,'Indore'),
(17,'Bhopal'),
(18,'Nagpur'),
(19,'Pune'),
(20,'Thane'),
(21,'Raipur'),
(22,'Ghaziabad'),
(23,'Noida'),
(24,'Jammu'),
(25,'Jabalpur'),
(26,'Mysore'),
(27,'Madurai'),
(28,'Bengaluru'),
(29,'Chennai'),
(30,'Mangalore'),
(31,'Coimbatore'),
(32,'Hyderabad'),
(33,'Thiruvananthapuram'),
(34,'Kolkata'),
(35,'Patna'),
(36,'Ranchi'),
(37,'Bhubaneswar'),
(38,'Cuttack');

/*Table structure for table `convr_ques` */

DROP TABLE IF EXISTS `convr_ques`;

CREATE TABLE `convr_ques` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `ques_id` int(20) DEFAULT NULL,
  `msg` text,
  `u_id` int(11) DEFAULT NULL,
  `send_time` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `convr_ques` */

insert  into `convr_ques`(`id`,`ques_id`,`msg`,`u_id`,`send_time`) values 
(1,1,'You can file a complaint before consumer forum of your district. The consumer forum will direct the service provider to resolve the issue. You can also claim compensation,  damages and the legal fees.',10,'05 May 04:21 pm'),
(10,2,'You can file a criminal complaint under section 26 9.and section 27 8 of indian penal code against your neighbour. Furthermore you can also file a civil suit for granting injuction and restraining your neighbour from doing so.',10,'11 May 04:59 pm'),
(20,16,'Sabse phele plz check policies of Punjab educational recruitment board. You can file Writ application under Section 226 before the High Court. So that order ho recruitment board ko ki voh sahi action le.',10,'12 May 06:24 pm'),
(21,17,'A person is entitled to claim interest in a case of default. If the proceeds from the concerned property does not satisfy the principal amount and the interests, costs etc; decreed by the court,  the decree holder can get it satisfied from other assets of judgment debtor. \nYou may elaborate the facts in order to get clarity.',10,'12 May 06:37 pm'),
(22,18,'RTI promote karta hai transparency sarkari daftars ki working mein. Koi bhi admi request kar sakta hai jankari ke liye kisi bhi sarkari daftar se. Aur sarkari daftar ko 30 din ke andar jawab dena hota hai. Har sarkari daftar ka ek Public Information Officer hota hai jiske pass RTI ki request de sakte hain. RTI file karne ki fees 10rs hoti hai aur 2rs per page dena padta hai. Aap online bhi RTI file kar sakte Ho.',10,'12 May 06:39 pm'),
(23,19,'RTI promote karta hai transparency sarkari daftars ki working mein. Koi bhi admi request kar sakta hai jankari ke liye kisi bhi sarkari daftar se. Aur sarkari daftar ko 30 din ke andar jawab dena hota hai. Har sarkari daftar ka ek Public Information Officer hota hai jiske pass RTI ki request de sakte hain. RTI file karne ki fees 10rs hoti hai aur 2rs per page dena padta hai. Aap online bhi RTI file kar sakte Ho.',10,'12 May 06:39 pm'),
(24,22,'Generally its a rule that complaint of contempt can be filed with the senior authority of whose contempt is done. But you need to elaborate the facts to get a clearer picture. Like the high court has the power to try the contempt of lower courts.',10,'13 May 09:55 pm'),
(25,23,'You can connect with me through personal chat to clear all your queries. I am having experience of 35 plus years.',21,'14 May 05:20 pm'),
(27,22,'Contempt can only be filed whose order is not complied.',109,'15 May 07:48 AM'),
(28,24,'Insurance company ki right hoti hai ki woh death ki investigation kar sake. \nWoh dekhte hai ki jis ki death hui hai usne suicide to nahi kari ya homicide  ka  case na ho. Aap insurance policy check kro ki wo suicide ya murder case mein claim dete hai ki nahi?\nAap unko legal notice bhejiye ki apko claim nahi mila.\nAgar reply aapko unka reply theek na lage, toh consumer court mein complaint kijiye. Aap mujhse personal chat pe  baat karke apne doubts pooch sakte hai.',10,'16 May 05:05 pm'),
(34,25,'You are not under any obligation; unless they have got easementary rights. Under limitation act, 1963 there is provision of easement i.e. use of other\'s property. It states that if a person is using a property of some other person for 20 years continuously without any interruption and peacefully, the court may make this right absolute. \nBut you need to see that is there any order of court against your property.',10,'26 May 03:01 pm'),
(36,25,'Sir you are not under any obligation but If there is a Co sharer in the property then he can demand his share and partition will take place otherwise if you are using the property for more then 20 yrs you are protected under limitation act otherwise not . For more enquiry kindly contact',190,'28 May 05:14 PM'),
(37,22,'Contempt case can be filed with superior authority of whose contempt is done like if a contempt is done in lower district it can be filed in superior on,with complete facts.',190,'04 Jun 06:41 PM'),
(38,2,'In this u can file both civil and criminal case .its ur choice what u want to file . Civil injunction can be filed and in criminal under sections 26 9 and 27 8 ipc.',190,'04 Jun 06:43 PM'),
(39,1,'Under this u can file a complaint  under consumer forum of ur jurisdiction. For help kindly book and to get speedy solution',190,'04 Jun 06:44 PM'),
(40,17,'Yes a financial institution can even after taking over and selling off the property can charge interest and penal interest if the amount after the taking over and selling off is not sufficient ,then it can charge at the nominal rates and can compound it on compromise or if the value received is equillant to the loan.',190,'04 Jun 06:50 PM'),
(41,26,'First yo can send a legal notice to the company for the recovery of your salary within a specified time , on the failure of which u can take a legal action and if after the receiving of notice the company does not release your salary you can file cases with the labour comissioner of the area against the company for the recovery of your salary. For more details you can elborate the facts. You can also contact me for more help.',190,'05 Jun 05:01 AM'),
(42,16,'Hi... I agree with your concern and it is right.. Assuming that the criteria is exam only.. I say being sports quota reservation no if concession like age etc was taken then you r eligible for general category but if there is any concession availed by you in that category then the question regarding that has not been settled by any court till date. Please feel free to contact for any advice.',163,'06 Jun 08:07 PM'),
(43,26,'After sending a legal notice to your employer and on his failure to pay your salary, you may proceed to file a criminal complaint against him for playing fraud on you. And also you can to file a civil case to recover your salary,  plus damages for inconvenience caused to you.',10,'07 Jun 04:40 pm');

/*Table structure for table `discover_types` */

DROP TABLE IF EXISTS `discover_types`;

CREATE TABLE `discover_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discover_names` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `discover_types` */

insert  into `discover_types`(`id`,`discover_names`) values 
(3,'Insurance Law'),
(4,'Intellectual Property Law'),
(5,'International Law'),
(6,'Labour and Employment Law'),
(7,'Landlord/ Tenant'),
(8,'Marriages and Matrimonial Disputes'),
(9,'Media and Entertainment'),
(10,'Medical Malpractice'),
(11,'Motor Accident'),
(12,'Muslim Law'),
(13,'Property Law'),
(14,'R.T.I'),
(15,'Real Estate Law'),
(16,'Recovery and Debt'),
(17,'Revenue Law'),
(18,'Securities Law'),
(19,'Service and Employment'),
(20,'Tax Law'),
(21,'Wills/Trusts'),
(22,'Writs'),
(23,'Immigration Law'),
(24,'Administrative Law'),
(25,'Arbitration and Conciliation'),
(26,'Business Law'),
(27,'Child Custody'),
(28,'Civil Litigation'),
(29,'Company Law'),
(30,'Constitutional Law'),
(31,'Consumer Protection'),
(32,'Copyright Patent and Tm'),
(33,'Corporate Law'),
(34,'Criminal Law'),
(35,'Custom and Central Excise'),
(36,'Cyber Crime'),
(37,'Documentation'),
(38,'Environmental Law'),
(39,'Others');

/*Table structure for table `experience` */

DROP TABLE IF EXISTS `experience`;

CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `experience` */

insert  into `experience`(`id`,`exp`) values 
(1,'1-5 years'),
(2,'6-10 years'),
(3,'11-15 years'),
(4,'16-20 years'),
(5,'21-25 years'),
(6,'26-30 years'),
(7,'30-35 years');

/*Table structure for table `gcm_accept` */

DROP TABLE IF EXISTS `gcm_accept`;

CREATE TABLE `gcm_accept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) DEFAULT NULL,
  `from_to_time` varchar(150) NOT NULL,
  `accept` tinyint(4) DEFAULT '0',
  `from_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gcm_accept` */

/*Table structure for table `gcmusers` */

DROP TABLE IF EXISTS `gcmusers`;

CREATE TABLE `gcmusers` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gcm_registration_id` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `gcmusers` */

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gendername` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `gender` */

insert  into `gender`(`id`,`gendername`) values 
(1,'Male'),
(2,'Female\r\n');

/*Table structure for table `job_proposal` */

DROP TABLE IF EXISTS `job_proposal`;

CREATE TABLE `job_proposal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `jobid` int(11) DEFAULT NULL,
  `proposalamt` double DEFAULT NULL,
  `coverletter` blob,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `job_proposal` */

insert  into `job_proposal`(`id`,`userId`,`jobid`,`proposalamt`,`coverletter`,`created_at`) values 
(1,223,1,5000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce sit amet auctor est, eu porttitor metus. Sed non erat suscipit, tempor magna in, luctus lacus. Praesent eu ornare felis. Mauris tortor ligula, hendrerit id mollis non, gravida placerat risus. Praesent venenatis mattis leo aliquet dapibus. Quisque a accumsan risus. Etiam tincidunt consequat enim, non ullamcorper nisi dapibus ut. Duis maximus ante non enim ornare iaculis. Curabitur sagittis mauris sed sodales fermentum. Donec sagittis ante nec eleifend aliquam. Vestibulum pharetra enim id sapien vehicula vehicula. Integer rhoncus ultrices turpis, quis pellentesque est euismod vel.\r\n\r\nInteger sed felis eleifend, tempor nisl et, pretium orci. Etiam sit amet quam est. Proin imperdiet mollis accumsan. Proin ultricies placerat sem, vel molestie nisl commodo sit amet. Praesent ac purus mi. Pellentesque eget venenatis augue. Mauris ex enim, mollis quis orci at, suscipit dapibus ante. Donec viverra nec magna at sodales. Etiam non sapien nec justo dictum consequat sed quis ante. Suspendisse potenti. Donec non ornare massa. In accumsan, mauris sed suscipit tempus, urna nibh lobortis nunc, at finibus nulla nulla aliquet justo. Cras dignissim lacinia felis id mollis. Fusce sapien massa, tincidunt malesuada posuere sit amet, congue ultrices odio. Donec ut nibh nisl. Nunc cursus feugiat velit non feugiat.\r\n\r\nPraesent imperdiet et diam sed mattis. Sed maximus dui est, in fermentum tellus pellentesque vitae. Praesent facilisis est id congue aliquet. Nam varius ultrices ligula id condimentum. Sed quis tempus diam, eget maximus ex. Proin accumsan est at efficitur aliquam. Donec ut placerat nibh. Sed quis urna eu leo scelerisque tempus. In facilisis, mauris sed ornare tristique, lacus urna euismod ipsum, eget venenatis erat augue sit amet dui. Nam convallis lectus sapien, in fringilla purus vehicula id. Curabitur ut orci vitae massa iaculis volutpat ultrices aliquet elit. Morbi sollicitudin ante vel nisi ultricies, non dignissim urna tristique. Proin malesuada viverra mollis. Sed interdum est eget orci venenatis mattis.\r\n\r\nMaecenas consectetur arcu nec rutrum elementum. Praesent nec volutpat mauris. Integer eu malesuada est, a eleifend libero. Vestibulum ornare placerat neque, nec pharetra enim. Curabitur pretium consequat velit, et imperdiet neque blandit a. Mauris bibendum feugiat diam quis fringilla. Aenean ac enim in ante dictum imperdiet. Vivamus ut quam leo. Nullam in erat magna. Quisque vitae viverra erat, vel porttitor nisl. Morbi suscipit consequat sem sit amet molestie. Ut molestie sodales massa, ut sodales elit lacinia vel. Vestibulum libero turpis, aliquam ut sodales et, lobortis vel nisl. Fusce tincidunt nulla congue eros auctor tincidunt. Maecenas sit amet leo vulputate, dignissim nunc ut, iaculis tellus. Maecenas quis porttitor odio.\r\n\r\nNam sagittis arcu ut mattis iaculis. Mauris eu est vel turpis efficitur luctus vitae dapibus lorem. Integer congue aliquam facilisis. Fusce sagittis ipsum eget dolor fermentum, vel vehicula eros lobortis. Praesent dictum diam at egestas porta. Praesent eget enim at ante posuere scelerisque quis tempor arcu. Aenean efficitur augue tellus, vitae vehicula mauris posuere vel. Nullam finibus eleifend eleifend. Nunc vel dapibus nibh. Ut mattis libero at massa aliquam molestie. Donec hendrerit bibendum eleifend. Aenean non pellentesque risus.\r\n\r\nSed eleifend neque dignissim, sagittis purus at, blandit mi. Curabitur imperdiet pharetra congue. Nunc viverra volutpat diam, ut ultricies orci. Nam mollis, elit vel cursus congue, ex ipsum interdum ante, vitae condimentum velit augue sit amet eros. Sed non nisi quam. In pulvinar vehicula nisl. Nunc tempor ultricies sapien eget lacinia. Fusce eleifend tincidunt tortor at sagittis. Donec massa diam, semper sit amet suscipit a, bibendum aliquet magna. Fusce ac massa eget orci mollis accumsan. Ut placerat pharetra massa, eu aliquam lorem interdum sit amet. Pellentesque ornare diam in ultrices accumsan. Donec non auctor nisi. Praesent urna ex, pulvinar ac dictum nec, hendrerit congue tortor. Integer metus nisl, facilisis et aliquam ut, fermentum ut enim. Aenean consequat finibus ante in dignissim.','2016-07-21 08:47:45'),
(2,223,2,45000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nNullam cursus ex ut nulla dapibus auctor.\r\nSuspendisse eu nibh vel est lacinia fermentum.\r\nMaecenas eu dolor maximus, rhoncus enim et, egestas dolor.\r\nDuis non urna aliquet, vulputate dui vestibulum, iaculis erat.\r\nNulla convallis ipsum id malesuada aliquam.\r\nInteger at diam sit amet nibh laoreet convallis.\r\nPellentesque vulputate magna sed viverra varius.\r\nIn suscipit lorem vitae arcu elementum, ut vulputate purus ultricies.\r\nCras eu justo molestie, euismod tortor ac, sodales ligula.\r\nQuisque consectetur mi at elementum mollis.\r\nDonec ultrices ante ut turpis consequat, vel vestibulum risus ultrices.\r\nMorbi ut velit eget urna molestie interdum.\r\nSed volutpat ipsum eu sem viverra, vel iaculis leo sollicitudin.\r\nSed porta leo et sem pretium, vel auctor nunc pellentesque.\r\nNulla mattis est ac blandit porttitor.','2016-07-21 09:40:14'),
(3,223,3,10000,'<hr style=\"margin: 0px; padding: 0px; clear: both; border: 0px; height: 1px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.74902), rgba(0, 0, 0, 0)); background-color: rgb(255, 255, 255);\"><p class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><p id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit elit convallis, lobortis massa a, sagittis magna. Vestibulum viverra auctor lorem, sed suscipit magna. Nulla ullamcorper ante ligula. Morbi in sapien euismod mi lacinia finibus. Vivamus quis sagittis nisl. Suspendisse sit amet dolor pulvinar, ultricies justo ut, convallis odio. Vestibulum auctor purus nisi, et tristique urna imperdiet sit amet. Aliquam eleifend purus ac augue faucibus fringilla. Curabitur faucibus tincidunt elit nec euismod. Nullam consectetur nunc ac sapien fermentum, non blandit libero lacinia. Vestibulum at ex vestibulum, hendrerit risus et, vestibulum sem. Integer condimentum nunc eu lectus efficitur elementum. Nullam id ex congue nulla auctor congue ac eget urna. Aliquam eget consequat orci, ac posuere mauris. Nunc et lorem quis ante finibus pulvinar in venenatis velit. Cras pulvinar euismod ligula, vitae ultricies lectus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Duis vehicula libero facilisis urna congue, at pharetra neque maximus. Pellentesque placerat orci est, a elementum velit tincidunt at. Pellentesque dictum dapibus justo, a blandit tortor pulvinar ac. Suspendisse faucibus vel dolor vitae maximus. Nunc eu ex sed augue bibendum ultricies. Quisque porttitor odio vitae interdum ullamcorper. Quisque non pretium ante. Proin viverra at odio eu posuere. Nunc feugiat sem et lacus eleifend maximus. Nullam molestie arcu purus, vel tincidunt mauris consectetur vitae. Etiam suscipit erat tellus, nec pretium lorem rutrum vel. Integer a augue vitae odio finibus elementum sed eget purus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Cras tortor nulla, semper id ex ac, finibus cursus sapien. In hac habitasse platea dictumst. Nullam vestibulum eros ligula, at venenatis enim scelerisque vel. Maecenas arcu neque, pretium eget leo gravida, condimentum suscipit ante. Duis condimentum felis quis purus pulvinar congue. Integer mi nulla, dignissim et finibus et, pretium nec mauris. Suspendisse posuere maximus pretium. Proin sagittis ligula a dignissim pulvinar. Integer urna turpis, finibus sit amet neque a, sagittis consectetur sem. In elementum faucibus purus eget mattis. Duis mollis nec odio eu fermentum.</p></p></p>','2016-07-21 11:40:31'),
(4,223,6,56000,'<hr style=\"margin: 0px; padding: 0px; clear: both; border: 0px; height: 1px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.74902), rgba(0, 0, 0, 0)); background-color: rgb(255, 255, 255);\"><p class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><p id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit elit convallis, lobortis massa a, sagittis magna. Vestibulum viverra auctor lorem, sed suscipit magna. Nulla ullamcorper ante ligula. Morbi in sapien euismod mi lacinia finibus. Vivamus quis sagittis nisl. Suspendisse sit amet dolor pulvinar, ultricies justo ut, convallis odio. Vestibulum auctor purus nisi, et tristique urna imperdiet sit amet. Aliquam eleifend purus ac augue faucibus fringilla. Curabitur faucibus tincidunt elit nec euismod. Nullam consectetur nunc ac sapien fermentum, non blandit libero lacinia. Vestibulum at ex vestibulum, hendrerit risus et, vestibulum sem. Integer condimentum nunc eu lectus efficitur elementum. Nullam id ex congue nulla auctor congue ac eget urna. Aliquam eget consequat orci, ac posuere mauris. Nunc et lorem quis ante finibus pulvinar in venenatis velit. Cras pulvinar euismod ligula, vitae ultricies lectus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Duis vehicula libero facilisis urna congue, at pharetra neque maximus. Pellentesque placerat orci est, a elementum velit tincidunt at. Pellentesque dictum dapibus justo, a blandit tortor pulvinar ac. Suspendisse faucibus vel dolor vitae maximus. Nunc eu ex sed augue bibendum ultricies. Quisque porttitor odio vitae interdum ullamcorper. Quisque non pretium ante. Proin viverra at odio eu posuere. Nunc feugiat sem et lacus eleifend maximus. Nullam molestie arcu purus, vel tincidunt mauris consectetur vitae. Etiam suscipit erat tellus, nec pretium lorem rutrum vel. Integer a augue vitae odio finibus elementum sed eget purus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Cras tortor nulla, semper id ex ac, finibus cursus sapien. In hac habitasse platea dictumst. Nullam vestibulum eros ligula, at venenatis enim scelerisque vel. Maecenas arcu neque, pretium eget leo gravida, condimentum suscipit ante. Duis condimentum felis quis purus pulvinar congue. Integer mi nulla, dignissim et finibus et, pretium nec mauris. Suspendisse posuere maximus pretium. Proin sagittis ligula a dignissim pulvinar. Integer urna turpis, finibus sit amet neque a, sagittis consectetur sem. In elementum faucibus purus eget mattis. Duis mollis nec odio eu fermentum.</p></p></p>','2016-07-21 11:41:34'),
(5,223,5,86666,'<hr style=\"margin: 0px; padding: 0px; clear: both; border: 0px; height: 1px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.74902), rgba(0, 0, 0, 0)); background-color: rgb(255, 255, 255);\"><p class=\"boxed\" style=\"margin: 10px 28.7969px; padding: 0px; clear: both; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\"><p id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit elit convallis, lobortis massa a, sagittis magna. Vestibulum viverra auctor lorem, sed suscipit magna. Nulla ullamcorper ante ligula. Morbi in sapien euismod mi lacinia finibus. Vivamus quis sagittis nisl. Suspendisse sit amet dolor pulvinar, ultricies justo ut, convallis odio. Vestibulum auctor purus nisi, et tristique urna imperdiet sit amet. Aliquam eleifend purus ac augue faucibus fringilla. Curabitur faucibus tincidunt elit nec euismod. Nullam consectetur nunc ac sapien fermentum, non blandit libero lacinia. Vestibulum at ex vestibulum, hendrerit risus et, vestibulum sem. Integer condimentum nunc eu lectus efficitur elementum. Nullam id ex congue nulla auctor congue ac eget urna. Aliquam eget consequat orci, ac posuere mauris. Nunc et lorem quis ante finibus pulvinar in venenatis velit. Cras pulvinar euismod ligula, vitae ultricies lectus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Duis vehicula libero facilisis urna congue, at pharetra neque maximus. Pellentesque placerat orci est, a elementum velit tincidunt at. Pellentesque dictum dapibus justo, a blandit tortor pulvinar ac. Suspendisse faucibus vel dolor vitae maximus. Nunc eu ex sed augue bibendum ultricies. Quisque porttitor odio vitae interdum ullamcorper. Quisque non pretium ante. Proin viverra at odio eu posuere. Nunc feugiat sem et lacus eleifend maximus. Nullam molestie arcu purus, vel tincidunt mauris consectetur vitae. Etiam suscipit erat tellus, nec pretium lorem rutrum vel. Integer a augue vitae odio finibus elementum sed eget purus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify;\">Cras tortor nulla, semper id ex ac, finibus cursus sapien. In hac habitasse platea dictumst. Nullam vestibulum eros ligula, at venenatis enim scelerisque vel. Maecenas arcu neque, pretium eget leo gravida, condimentum suscipit ante. Duis condimentum felis quis purus pulvinar congue. Integer mi nulla, dignissim et finibus et, pretium nec mauris. Suspendisse posuere maximus pretium. Proin sagittis ligula a dignissim pulvinar. Integer urna turpis, finibus sit amet neque a, sagittis consectetur sem. In elementum faucibus purus eget mattis. Duis mollis nec odio eu fermentum.</p></p></p>','2016-07-21 11:41:50'),
(6,223,12,4000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:44:09'),
(7,223,11,8000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:44:46'),
(8,223,10,6000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:44:56'),
(9,223,9,900,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:45:05'),
(10,223,8,1000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:45:14'),
(11,223,7,6000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:45:33'),
(12,223,4,4000,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">Sed eros velit, tempor vel rhoncus vel, suscipit et tortor. Integer nec quam ac lacus vestibulum aliquet eget vitae mauris. Cras a leo velit. Vestibulum dui lectus, elementum quis nunc tempor, viverra efficitur neque. Cras porta felis sed sem volutpat, vel ullamcorper tortor vestibulum. Vivamus mi dui, sodales eu egestas in, molestie vel dui. Duis malesuada, dolor et vulputate sagittis, metus tortor viverra ligula, nec gravida metus turpis eget ligula. Vivamus efficitur cursus hendrerit. Quisque pharetra tristique commodo. Suspendisse ac imperdiet nulla. Vivamus ac interdum nunc, eleifend mollis lorem. Aliquam ultricies quam vel accumsan tincidunt. Praesent et pharetra ipsum. Vivamus lobortis neque eget nisl aliquet lobortis.</span>','2016-07-21 13:48:36'),
(13,223,13,202020,'<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</span>','2016-07-21 13:52:42'),
(14,223,14,121212,'Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','2016-07-21 16:15:21');

/*Table structure for table `lawyer_availability_time` */

DROP TABLE IF EXISTS `lawyer_availability_time`;

CREATE TABLE `lawyer_availability_time` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `monday` varchar(255) DEFAULT NULL,
  `tuesday` varchar(255) DEFAULT NULL,
  `wednesday` varchar(255) DEFAULT NULL,
  `thursday` varchar(255) DEFAULT NULL,
  `friday` varchar(255) DEFAULT NULL,
  `saturday` varchar(255) DEFAULT NULL,
  `sunday` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `lawyer_availability_time` */

insert  into `lawyer_availability_time`(`id`,`monday`,`tuesday`,`wednesday`,`thursday`,`friday`,`saturday`,`sunday`,`userId`,`created_on`,`modified_on`,`status`) values 
(1,'09:AM','09:AM','09:AM','09:AM','09:AM','09:AM','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(2,'10:AM','10:AM','10:AM','10:AM','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(3,'','11:AM','11:AM','11:AM','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(4,'','12:AM','12:AM','12:AM','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(5,'','01:PM','01:PM','01:PM','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(6,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(7,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(8,'','','','','','','04:PM',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(9,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(10,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(11,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(12,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(13,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(14,'','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(15,'11:PM','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0),
(16,'12:PM','','','','','','',223,'2016-07-15 00:00:00','2016-08-05 00:00:00',0);

/*Table structure for table `lh_abstract_auto_responder` */

DROP TABLE IF EXISTS `lh_abstract_auto_responder`;

CREATE TABLE `lh_abstract_auto_responder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteaccess` varchar(3) NOT NULL,
  `wait_message` varchar(250) NOT NULL,
  `wait_timeout` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `repeat_number` int(11) NOT NULL DEFAULT '1',
  `timeout_message` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteaccess_position` (`siteaccess`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_auto_responder` */

/*Table structure for table `lh_abstract_browse_offer_invitation` */

DROP TABLE IF EXISTS `lh_abstract_browse_offer_invitation`;

CREATE TABLE `lh_abstract_browse_offer_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteaccess` varchar(10) NOT NULL,
  `time_on_site` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `callback_content` longtext NOT NULL,
  `lhc_iframe_content` tinyint(4) NOT NULL,
  `custom_iframe_url` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `executed_times` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `active` int(11) NOT NULL,
  `has_url` int(11) NOT NULL,
  `is_wildcard` int(11) NOT NULL,
  `referrer` varchar(250) NOT NULL,
  `priority` varchar(250) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_browse_offer_invitation` */

/*Table structure for table `lh_abstract_email_template` */

DROP TABLE IF EXISTS `lh_abstract_email_template`;

CREATE TABLE `lh_abstract_email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `from_name` varchar(150) NOT NULL,
  `from_name_ac` tinyint(4) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `from_email_ac` tinyint(4) NOT NULL,
  `user_mail_as_sender` tinyint(4) NOT NULL,
  `content` text NOT NULL,
  `subject` varchar(250) NOT NULL,
  `bcc_recipients` varchar(200) NOT NULL,
  `subject_ac` tinyint(4) NOT NULL,
  `reply_to` varchar(150) NOT NULL,
  `reply_to_ac` tinyint(4) NOT NULL,
  `recipient` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_email_template` */

insert  into `lh_abstract_email_template`(`id`,`name`,`from_name`,`from_name_ac`,`from_email`,`from_email_ac`,`user_mail_as_sender`,`content`,`subject`,`bcc_recipients`,`subject_ac`,`reply_to`,`reply_to_ac`,`recipient`) values 
(1,'Send mail to user','Live Helper Chat',0,'',0,0,'Dear {user_chat_nick},\r\n\r\n{additional_message}\r\n\r\nLive Support response:\r\n{messages_content}\r\n\r\nSincerely,\r\nLive Support Team\r\n','{name_surname} has responded to your request','',1,'',1,''),
(2,'Support request from user','',0,'',0,0,'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nAdditional data, if any:\r\n{additional_data}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nLink to chat if any:\r\n{prefillchat}\r\n\r\nSincerely,\r\nLive Support Team','Support request from user','',0,'',0,'roshansingh9450@gmail.com'),
(3,'User mail for himself','Live Helper Chat',0,'',0,0,'Dear {user_chat_nick},\r\n\r\nTranscript:\r\n{messages_content}\r\n\r\nSincerely,\r\nLive Support Team\r\n','Chat transcript','',0,'',0,''),
(4,'New chat request','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSincerely,\r\nLive Support Team','New chat request','',0,'',0,'roshansingh9450@gmail.com'),
(5,'Chat was closed','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\n{operator} has closed a chat\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nAdditional data, if any:\r\n{additional_data}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nSincerely,\r\nLive Support Team','Chat was closed','',0,'',0,''),
(6,'New FAQ question','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nNew FAQ question\r\nEmail: {email}\r\n\r\nQuestion:\r\n{question}\r\n\r\nQuestion URL:\r\n{url_question}\r\n\r\nURL to answer a question:\r\n{url_request}\r\n\r\nSincerely,\r\nLive Support Team','New FAQ question','',0,'',0,''),
(7,'New unread message','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSincerely,\r\nLive Support Team','New chat request','',0,'',0,'roshansingh9450@gmail.com'),
(8,'Filled form','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nUser has filled a form\r\nForm name - {form_name}\r\nUser IP - {ip}\r\nDownload filled data - {url_download}\r\nIdentifier - {identifier}\r\nView filled data - {url_view}\r\n\r\n {content} \r\n\r\nSincerely,\r\nLive Support Team','Filled form - {form_name}','',0,'',0,'roshansingh9450@gmail.com'),
(9,'Chat was accepted','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nOperator {user_name} has accepted a chat [{chat_id}]\r\n\r\nUser request data:\r\nName: {name}\r\nEmail: {email}\r\nPhone: {phone}\r\nDepartment: {department}\r\nCountry: {country}\r\nCity: {city}\r\nIP: {ip}\r\n\r\nMessage:\r\n{message}\r\n\r\nURL of page from which user has send request:\r\n{url_request}\r\n\r\nClick to accept chat automatically\r\n{url_accept}\r\n\r\nSincerely,\r\nLive Support Team','Chat was accepted [{chat_id}]','',0,'',0,'roshansingh9450@gmail.com'),
(10,'Permission request','Live Helper Chat',0,'',0,0,'Hello,\r\n\r\nOperator {user} has requested these permissions\n\r\n{permissions}\r\n\r\nSincerely,\r\nLive Support Team','Permission request from {user}','',0,'',0,'roshansingh9450@gmail.com');

/*Table structure for table `lh_abstract_form` */

DROP TABLE IF EXISTS `lh_abstract_form`;

CREATE TABLE `lh_abstract_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `recipient` varchar(250) NOT NULL,
  `active` int(11) NOT NULL,
  `name_attr` varchar(250) NOT NULL,
  `intro_attr` varchar(250) NOT NULL,
  `xls_columns` text NOT NULL,
  `pagelayout` varchar(200) NOT NULL,
  `post_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_form` */

insert  into `lh_abstract_form`(`id`,`name`,`content`,`recipient`,`active`,`name_attr`,`intro_attr`,`xls_columns`,`pagelayout`,`post_content`) values 
(1,'ab','ab','ab',1,'ab','ab','ab','ab','ab');

/*Table structure for table `lh_abstract_form_collected` */

DROP TABLE IF EXISTS `lh_abstract_form_collected`;

CREATE TABLE `lh_abstract_form_collected` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  `ip` varchar(250) NOT NULL,
  `identifier` varchar(250) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_form_collected` */

/*Table structure for table `lh_abstract_proactive_chat_invitation` */

DROP TABLE IF EXISTS `lh_abstract_proactive_chat_invitation`;

CREATE TABLE `lh_abstract_proactive_chat_invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteaccess` varchar(10) NOT NULL,
  `time_on_site` int(11) NOT NULL,
  `pageviews` int(11) NOT NULL,
  `message` text NOT NULL,
  `message_returning` text NOT NULL,
  `executed_times` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `hide_after_ntimes` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `operator_ids` varchar(100) NOT NULL,
  `wait_message` varchar(250) NOT NULL,
  `timeout_message` varchar(250) NOT NULL,
  `message_returning_nick` varchar(250) NOT NULL,
  `referrer` varchar(250) NOT NULL,
  `wait_timeout` int(11) NOT NULL,
  `show_random_operator` int(11) NOT NULL,
  `operator_name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `requires_email` int(11) NOT NULL,
  `requires_username` int(11) NOT NULL,
  `requires_phone` int(11) NOT NULL,
  `repeat_number` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `time_on_site_pageviews_siteaccess_position` (`time_on_site`,`pageviews`,`siteaccess`,`identifier`,`position`),
  KEY `identifier` (`identifier`),
  KEY `dep_id` (`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_proactive_chat_invitation` */

/*Table structure for table `lh_abstract_product` */

DROP TABLE IF EXISTS `lh_abstract_product`;

CREATE TABLE `lh_abstract_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `disabled` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `departament_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `departament_id` (`departament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_product` */

/*Table structure for table `lh_abstract_rest_api_key` */

DROP TABLE IF EXISTS `lh_abstract_rest_api_key`;

CREATE TABLE `lh_abstract_rest_api_key` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `api_key` (`api_key`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_rest_api_key` */

/*Table structure for table `lh_abstract_survey` */

DROP TABLE IF EXISTS `lh_abstract_survey`;

CREATE TABLE `lh_abstract_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `max_stars` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_survey` */

/*Table structure for table `lh_abstract_survey_item` */

DROP TABLE IF EXISTS `lh_abstract_survey_item`;

CREATE TABLE `lh_abstract_survey_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ftime` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_id` (`survey_id`),
  KEY `chat_id` (`chat_id`),
  KEY `user_id` (`user_id`),
  KEY `dep_id` (`dep_id`),
  KEY `ftime` (`ftime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_survey_item` */

/*Table structure for table `lh_abstract_widget_theme` */

DROP TABLE IF EXISTS `lh_abstract_widget_theme`;

CREATE TABLE `lh_abstract_widget_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_company` varchar(250) NOT NULL,
  `onl_bcolor` varchar(10) NOT NULL,
  `bor_bcolor` varchar(10) NOT NULL DEFAULT 'e3e3e3',
  `text_color` varchar(10) NOT NULL,
  `online_image` varchar(250) NOT NULL,
  `online_image_path` varchar(250) NOT NULL,
  `offline_image` varchar(250) NOT NULL,
  `offline_image_path` varchar(250) NOT NULL,
  `logo_image` varchar(250) NOT NULL,
  `logo_image_path` varchar(250) NOT NULL,
  `need_help_image` varchar(250) NOT NULL,
  `header_background` varchar(10) NOT NULL,
  `need_help_tcolor` varchar(10) NOT NULL,
  `need_help_bcolor` varchar(10) NOT NULL,
  `need_help_border` varchar(10) NOT NULL,
  `need_help_close_bg` varchar(10) NOT NULL,
  `need_help_hover_bg` varchar(10) NOT NULL,
  `need_help_close_hover_bg` varchar(10) NOT NULL,
  `need_help_image_path` varchar(250) NOT NULL,
  `custom_status_css` text NOT NULL,
  `custom_container_css` text NOT NULL,
  `custom_widget_css` text NOT NULL,
  `need_help_header` varchar(250) NOT NULL,
  `need_help_text` varchar(250) NOT NULL,
  `online_text` varchar(250) NOT NULL,
  `offline_text` varchar(250) NOT NULL,
  `widget_border_color` varchar(10) NOT NULL,
  `copyright_image` varchar(250) NOT NULL,
  `copyright_image_path` varchar(250) NOT NULL,
  `widget_copyright_url` varchar(250) NOT NULL,
  `show_copyright` int(11) NOT NULL DEFAULT '1',
  `explain_text` text NOT NULL,
  `intro_operator_text` varchar(250) NOT NULL,
  `operator_image` varchar(250) NOT NULL,
  `operator_image_path` varchar(250) NOT NULL,
  `minimize_image` varchar(250) NOT NULL,
  `minimize_image_path` varchar(250) NOT NULL,
  `restore_image` varchar(250) NOT NULL,
  `restore_image_path` varchar(250) NOT NULL,
  `close_image` varchar(250) NOT NULL,
  `close_image_path` varchar(250) NOT NULL,
  `popup_image` varchar(250) NOT NULL,
  `popup_image_path` varchar(250) NOT NULL,
  `support_joined` varchar(250) NOT NULL,
  `support_closed` varchar(250) NOT NULL,
  `pending_join` varchar(250) NOT NULL,
  `noonline_operators` varchar(250) NOT NULL,
  `noonline_operators_offline` varchar(250) NOT NULL,
  `hide_close` int(11) NOT NULL,
  `hide_popup` int(11) NOT NULL,
  `show_need_help` int(11) NOT NULL DEFAULT '1',
  `show_need_help_timeout` int(11) NOT NULL DEFAULT '24',
  `header_height` int(11) NOT NULL,
  `header_padding` int(11) NOT NULL,
  `widget_border_width` int(11) NOT NULL,
  `show_voting` tinyint(1) NOT NULL DEFAULT '1',
  `department_title` varchar(250) NOT NULL,
  `department_select` varchar(250) NOT NULL,
  `buble_visitor_background` varchar(250) NOT NULL,
  `buble_visitor_title_color` varchar(250) NOT NULL,
  `buble_visitor_text_color` varchar(250) NOT NULL,
  `buble_operator_background` varchar(250) NOT NULL,
  `buble_operator_title_color` varchar(250) NOT NULL,
  `buble_operator_text_color` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_abstract_widget_theme` */

/*Table structure for table `lh_admin_theme` */

DROP TABLE IF EXISTS `lh_admin_theme`;

CREATE TABLE `lh_admin_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `static_content` longtext NOT NULL,
  `static_js_content` longtext NOT NULL,
  `static_css_content` longtext NOT NULL,
  `header_content` text NOT NULL,
  `header_css` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_admin_theme` */

/*Table structure for table `lh_canned_msg` */

DROP TABLE IF EXISTS `lh_canned_msg`;

CREATE TABLE `lh_canned_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `fallback_msg` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `explain` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `delay` int(11) NOT NULL,
  `auto_send` tinyint(1) NOT NULL,
  `attr_int_1` int(11) NOT NULL,
  `attr_int_2` int(11) NOT NULL,
  `attr_int_3` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  KEY `attr_int_1` (`attr_int_1`),
  KEY `attr_int_2` (`attr_int_2`),
  KEY `attr_int_3` (`attr_int_3`),
  KEY `position_title` (`position`,`title`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_canned_msg` */

/*Table structure for table `lh_chat` */

DROP TABLE IF EXISTS `lh_chat`;

CREATE TABLE `lh_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `status_sub` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `referrer` text NOT NULL,
  `session_referrer` text NOT NULL,
  `chat_variables` text NOT NULL,
  `remarks` text NOT NULL,
  `ip` varchar(100) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0',
  `user_closed_ts` int(11) NOT NULL DEFAULT '0',
  `support_informed` int(11) NOT NULL DEFAULT '0',
  `unread_messages_informed` int(11) NOT NULL DEFAULT '0',
  `reinform_timeout` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `unanswered_chat` int(11) NOT NULL,
  `user_typing` int(11) NOT NULL,
  `user_typing_txt` varchar(50) NOT NULL,
  `operator_typing` int(11) NOT NULL,
  `operator_typing_id` int(11) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `has_unread_messages` int(11) NOT NULL,
  `last_user_msg_time` int(11) NOT NULL,
  `fbst` tinyint(1) NOT NULL,
  `online_user_id` int(11) NOT NULL,
  `last_msg_id` int(11) NOT NULL,
  `additional_data` text NOT NULL,
  `timeout_message` varchar(250) NOT NULL,
  `user_tz_identifier` varchar(50) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `lon` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `operation` text NOT NULL,
  `operation_admin` varchar(200) NOT NULL,
  `chat_locale` varchar(10) NOT NULL,
  `chat_locale_to` varchar(10) NOT NULL,
  `mail_send` int(11) NOT NULL,
  `screenshot_id` int(11) NOT NULL,
  `wait_time` int(11) NOT NULL,
  `wait_timeout` int(11) NOT NULL,
  `wait_timeout_send` int(11) NOT NULL,
  `wait_timeout_repeat` int(11) NOT NULL,
  `chat_duration` int(11) NOT NULL,
  `tslasign` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `chat_initiator` int(11) NOT NULL,
  `transfer_timeout_ts` int(11) NOT NULL,
  `transfer_timeout_ac` int(11) NOT NULL,
  `transfer_if_na` int(11) NOT NULL,
  `na_cb_executed` int(11) NOT NULL,
  `nc_cb_executed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_user_id` (`status`,`user_id`),
  KEY `user_id` (`user_id`),
  KEY `unanswered_chat` (`unanswered_chat`),
  KEY `online_user_id` (`online_user_id`),
  KEY `dep_id` (`dep_id`),
  KEY `product_id` (`product_id`),
  KEY `has_unread_messages_dep_id_id` (`has_unread_messages`,`dep_id`,`id`),
  KEY `status_dep_id_id` (`status`,`dep_id`,`id`),
  KEY `status_dep_id_priority_id` (`status`,`dep_id`,`priority`,`id`),
  KEY `status_priority_id` (`status`,`priority`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat` */

insert  into `lh_chat`(`id`,`nick`,`status`,`status_sub`,`time`,`user_id`,`hash`,`referrer`,`session_referrer`,`chat_variables`,`remarks`,`ip`,`dep_id`,`product_id`,`user_status`,`user_closed_ts`,`support_informed`,`unread_messages_informed`,`reinform_timeout`,`email`,`country_code`,`country_name`,`unanswered_chat`,`user_typing`,`user_typing_txt`,`operator_typing`,`operator_typing_id`,`phone`,`has_unread_messages`,`last_user_msg_time`,`fbst`,`online_user_id`,`last_msg_id`,`additional_data`,`timeout_message`,`user_tz_identifier`,`lat`,`lon`,`city`,`operation`,`operation_admin`,`chat_locale`,`chat_locale_to`,`mail_send`,`screenshot_id`,`wait_time`,`wait_timeout`,`wait_timeout_send`,`wait_timeout_repeat`,`chat_duration`,`tslasign`,`priority`,`chat_initiator`,`transfer_timeout_ts`,`transfer_timeout_ac`,`transfer_if_na`,`na_cb_executed`,`nc_cb_executed`) values 
(1,'sadasd',0,0,1469598274,0,'267c9b8c1bbedf1f498ee215f2aa634037c94cfe','','','','','127.0.0.1',1,0,1,1469598741,1,0,0,'','','',1,1469598736,'Visitor has left the chat!',0,0,'',0,0,0,0,1,'','','','0','0','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(2,'Visitor',0,0,1469602921,0,'9a69761045fda6919546ef7552e8c5ad7c5771b2','//localhost/winci/clients','','','','127.0.0.1',1,0,1,1469602935,1,0,0,'','','',1,1469602930,'Visitor has left the chat!',0,0,'',1,1469602929,0,1,6,'','','','0','0','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(3,'Visitor',0,0,1469602935,0,'0b84374a665f0b4027b364849969aef6c3502062','//localhost/winci/clients','','','','127.0.0.1',1,0,1,1469603439,1,0,0,'','','',1,1469603434,'Visitor has left the chat!',0,0,'',0,0,0,1,7,'','','','0','0','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);

/*Table structure for table `lh_chat_accept` */

DROP TABLE IF EXISTS `lh_chat_accept`;

CREATE TABLE `lh_chat_accept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `ctime` int(11) NOT NULL,
  `wused` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_accept` */

/*Table structure for table `lh_chat_archive_range` */

DROP TABLE IF EXISTS `lh_chat_archive_range`;

CREATE TABLE `lh_chat_archive_range` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `range_from` int(11) NOT NULL,
  `range_to` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_archive_range` */

/*Table structure for table `lh_chat_blocked_user` */

DROP TABLE IF EXISTS `lh_chat_blocked_user`;

CREATE TABLE `lh_chat_blocked_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `datets` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_blocked_user` */

/*Table structure for table `lh_chat_config` */

DROP TABLE IF EXISTS `lh_chat_config`;

CREATE TABLE `lh_chat_config` (
  `identifier` varchar(50) NOT NULL,
  `value` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `explain` varchar(250) NOT NULL,
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_config` */

insert  into `lh_chat_config`(`identifier`,`value`,`type`,`explain`,`hidden`) values 
('accept_chat_link_timeout','300',0,'How many seconds chat accept link is valid. Set 0 to force login all the time manually.',0),
('accept_tos_link','#',0,'Change to your site Terms of Service',0),
('allow_reopen_closed','1',0,'Allow user to reopen closed chats?',0),
('application_name','a:6:{s:3:\"eng\";s:31:\"Live Helper Chat - live support\";s:3:\"lit\";s:26:\"Live Helper Chat - pagalba\";s:3:\"hrv\";s:0:\"\";s:3:\"esp\";s:0:\"\";s:3:\"por\";s:0:\"\";s:10:\"site_admin\";s:31:\"Live Helper Chat - live support\";}',1,'Support application name, visible in browser title.',0),
('autoclose_timeout','0',0,'Automatic chats closing. 0 - disabled, n > 0 time in minutes before chat is automatically closed',0),
('autologin_data','a:3:{i:0;b:0;s:11:\"secret_hash\";s:16:\"please_change_me\";s:7:\"enabled\";i:0;}',0,'Autologin configuration data',1),
('automatically_reopen_chat','1',0,'Automatically reopen chat on widget open',0),
('autopurge_timeout','0',0,'Automatic chats purging. 0 - disabled, n > 0 time in minutes before chat is automatically deleted',0),
('banned_ip_range','',0,'Which ip should not be allowed to chat',0),
('bbc_button_visible','1',0,'Show BB Code button',0),
('chatbox_data','a:6:{i:0;b:0;s:20:\"chatbox_auto_enabled\";i:0;s:19:\"chatbox_secret_hash\";s:9:\"t5oluoe1t\";s:20:\"chatbox_default_name\";s:7:\"Chatbox\";s:17:\"chatbox_msg_limit\";i:50;s:22:\"chatbox_default_opname\";s:7:\"Manager\";}',0,'Chatbox configuration',1),
('checkstatus_timeout','0',0,'Interval between chat status checks in seconds, 0 disabled.',0),
('customer_company_name','Live Helper Chat',0,'Your company name - visible in bottom left corner',0),
('customer_site_url','http://livehelperchat.com',0,'Your site URL address',0),
('dashboard_order','online_operators,departments_stats|pending_chats,unread_chats,transfered_chats|active_chats,closed_chats',0,'Home page dashboard widgets order',0),
('default_admin_theme_id','0',0,'Default admin theme ID',1),
('default_theme_id','0',0,'Default theme ID.',1),
('disable_html5_storage','1',0,'Disable HMTL5 storage, check it if your site is switching between http and https',0),
('disable_iframe_sharing','1',0,'Disable iframes in sharing mode',0),
('disable_js_execution','1',0,'Disable JS execution in Co-Browsing operator window',0),
('disable_popup_restore','0',0,'Disable option in widget to open new window. Restore icon will be hidden',0),
('disable_print','0',0,'Disable chat print',0),
('disable_send','0',0,'Disable chat transcript send',0),
('explicit_http_mode','',0,'Please enter explicit http mode. Either http: or https:, do not forget : at the end.',0),
('export_hash','t5oluoe1t',0,'Chats export secret hash',0),
('faq_email_required','0',0,'Is visitor e-mail required for FAQ',0),
('file_configuration','a:7:{i:0;b:0;s:5:\"ft_op\";s:43:\"gif|jpe?g|png|zip|rar|xls|doc|docx|xlsx|pdf\";s:5:\"ft_us\";s:26:\"gif|jpe?g|png|doc|docx|pdf\";s:6:\"fs_max\";i:2048;s:18:\"active_user_upload\";b:0;s:16:\"active_op_upload\";b:1;s:19:\"active_admin_upload\";b:1;}',0,'Files configuration item',1),
('front_tabs','dashboard,online_users,online_map',0,'Home page tabs order',0),
('geoadjustment_data','a:8:{i:0;b:0;s:18:\"use_geo_adjustment\";b:0;s:13:\"available_for\";s:0:\"\";s:15:\"other_countries\";s:6:\"custom\";s:8:\"hide_for\";s:0:\"\";s:12:\"other_status\";s:7:\"offline\";s:11:\"rest_status\";s:6:\"hidden\";s:12:\"apply_widget\";i:0;}',0,'Geo adjustment settings',1),
('geo_data','a:5:{i:0;b:0;s:21:\"geo_detection_enabled\";i:1;s:22:\"geo_service_identifier\";s:8:\"max_mind\";s:23:\"max_mind_detection_type\";s:7:\"country\";s:22:\"max_mind_city_location\";s:37:\"var/external/geoip/GeoLite2-City.mmdb\";}',0,'',1),
('geo_location_data','a:3:{s:4:\"zoom\";i:4;s:3:\"lat\";s:7:\"49.8211\";s:3:\"lng\";s:7:\"11.7835\";}',0,'',1),
('hide_button_dropdown','0',0,'Hide close button in dropdown',0),
('hide_disabled_department','1',0,'Hide disabled department widget',0),
('hide_right_column_frontpage','0',0,'Hide right column in frontpage',0),
('ignorable_ip','',0,'Which ip should be ignored in online users list, separate by comma',0),
('ignore_user_status','0',0,'Ignore users online statuses and use departments online hours',0),
('list_online_operators','0',0,'List online operators.',0),
('max_message_length','500',0,'Maximum message length in characters',0),
('message_seen_timeout','24',0,'Proactive message timeout in hours. After how many hours proactive chat mesasge should be shown again.',0),
('mheight','',0,'Messages box height',0),
('min_phone_length','8',0,'Minimum phone number length',0),
('need_help_tip','1',0,'Show need help tooltip?',0),
('need_help_tip_timeout','24',0,'Need help tooltip timeout, after how many hours show again tooltip?',0),
('online_if','0',0,'',0),
('on_close_exit_chat','0',0,'On chat close exit chat',0),
('paidchat_data','',0,'Paid chat configuration',1),
('product_enabled_module','0',0,'Product module is enabled',1),
('pro_active_invite','1',0,'Is pro active chat invitation active. Online users tracking also has to be enabled',0),
('pro_active_limitation','-1',0,'Pro active chats invitations limitation based on pending chats, (-1) do not limit, (0,1,n+1) number of pending chats can be for invitation to be shown.',0),
('pro_active_show_if_offline','0',0,'Should invitation logic be executed if there is no online operators',0),
('reopen_as_new','1',0,'Reopen closed chat as new? Otherwise it will be reopened as active.',0),
('reopen_chat_enabled','1',0,'Reopen chat functionality enabled',0),
('run_departments_workflow','0',0,'Should cronjob run departments transfer workflow, even if user leaves a chat',0),
('run_unaswered_chat_workflow','0',0,'Should cronjob run unanswered chats workflow and execute unaswered chats callback, 0 - no, any other number bigger than 0 is a minits how long chat have to be not accepted before executing callback.',0),
('session_captcha','0',0,'Use session captcha. LHC have to be installed on the same domain or subdomain.',0),
('sharing_auto_allow','0',0,'Do not ask permission for users to see their screen',0),
('sharing_nodejs_enabled','0',0,'NodeJs support enabled',0),
('sharing_nodejs_path','',0,'socket.io path, optional',0),
('sharing_nodejs_secure','0',0,'Connect to NodeJs in https mode',0),
('sharing_nodejs_sllocation','https://cdn.socket.io/socket.io-1.1.0.js',0,'Location of SocketIO JS library',0),
('sharing_nodejs_socket_host','',0,'Host where NodeJs is running',0),
('show_languages','eng,lit,hrv,esp,por,nld,ara,ger,pol,rus,ita,fre,chn,cse,nor,tur,vnm,idn,sve,per,ell,dnk,rou,bgr,tha,geo,fin,alb',0,'Between what languages user should be able to switch',0),
('show_language_switcher','0',0,'Show users option to switch language at widget',0),
('smtp_data','a:5:{s:4:\"host\";s:0:\"\";s:4:\"port\";s:2:\"25\";s:8:\"use_smtp\";i:0;s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";}',0,'SMTP configuration',1),
('sound_invitation','1',0,'Play sound on invitation to chat.',0),
('speech_data','a:3:{i:0;b:0;s:8:\"language\";i:7;s:7:\"dialect\";s:5:\"en-US\";}',1,'',1),
('start_chat_data','a:49:{i:0;b:0;s:21:\"name_visible_in_popup\";b:0;s:27:\"name_visible_in_page_widget\";b:0;s:19:\"name_require_option\";s:8:\"required\";s:22:\"email_visible_in_popup\";b:0;s:28:\"email_visible_in_page_widget\";b:0;s:20:\"email_require_option\";s:8:\"required\";s:24:\"message_visible_in_popup\";b:1;s:30:\"message_visible_in_page_widget\";b:1;s:22:\"message_require_option\";s:8:\"required\";s:22:\"phone_visible_in_popup\";b:0;s:28:\"phone_visible_in_page_widget\";b:0;s:20:\"phone_require_option\";s:8:\"required\";s:21:\"force_leave_a_message\";b:0;s:29:\"offline_name_visible_in_popup\";b:0;s:35:\"offline_name_visible_in_page_widget\";b:0;s:27:\"offline_name_require_option\";s:8:\"required\";s:30:\"offline_phone_visible_in_popup\";b:0;s:36:\"offline_phone_visible_in_page_widget\";b:0;s:28:\"offline_phone_require_option\";s:8:\"required\";s:32:\"offline_message_visible_in_popup\";b:1;s:38:\"offline_message_visible_in_page_widget\";b:1;s:30:\"offline_message_require_option\";s:8:\"required\";s:20:\"tos_visible_in_popup\";b:1;s:17:\"show_messages_box\";b:0;s:26:\"tos_visible_in_page_widget\";b:1;s:19:\"tos_checked_offline\";b:0;s:18:\"tos_checked_online\";b:1;s:28:\"offline_tos_visible_in_popup\";b:0;s:34:\"offline_tos_visible_in_page_widget\";b:0;s:35:\"offline_file_visible_in_page_widget\";b:0;s:29:\"offline_file_visible_in_popup\";b:0;s:11:\"name_hidden\";b:0;s:24:\"custom_fields_encryption\";s:0:\"\";s:29:\"custom_fields_encryption_hmac\";s:0:\"\";s:19:\"offline_name_hidden\";b:0;s:12:\"email_hidden\";b:0;s:20:\"offline_email_hidden\";b:0;s:15:\"user_msg_height\";s:0:\"\";s:12:\"phone_hidden\";b:0;s:20:\"offline_phone_hidden\";b:0;s:14:\"message_hidden\";b:0;s:18:\"message_auto_start\";b:0;s:28:\"message_auto_start_key_press\";b:0;s:22:\"offline_message_hidden\";b:0;s:21:\"show_operator_profile\";b:0;s:21:\"remove_operator_space\";b:0;s:18:\"hide_message_label\";b:0;s:13:\"custom_fields\";s:0:\"\";}',0,'',1),
('suggest_leave_msg','1',0,'Suggest user to leave a message then user chooses offline department',0),
('sync_sound_settings','a:16:{i:0;b:0;s:12:\"repeat_sound\";i:1;s:18:\"repeat_sound_delay\";i:5;s:10:\"show_alert\";b:0;s:22:\"new_chat_sound_enabled\";b:1;s:31:\"new_message_sound_admin_enabled\";b:1;s:30:\"new_message_sound_user_enabled\";b:1;s:14:\"online_timeout\";d:300;s:22:\"check_for_operator_msg\";d:10;s:21:\"back_office_sinterval\";d:10;s:22:\"chat_message_sinterval\";d:3.5;s:20:\"long_polling_enabled\";b:0;s:30:\"polling_chat_message_sinterval\";d:1.5;s:29:\"polling_back_office_sinterval\";d:5;s:18:\"connection_timeout\";i:30;s:28:\"browser_notification_message\";b:0;}',0,'',1),
('tracked_users_cleanup','160',0,'How many days keep records of online users.',0),
('track_activity','0',0,'Track users activity on site?',0),
('track_domain','',0,'Set your domain to enable user tracking across different domain subdomains.',0),
('track_footprint','0',0,'Track users footprint. For this also online visitors tracking should be enabled',0),
('track_if_offline','0',0,'Track online visitors even if there is no online operators',0),
('track_is_online','0',0,'Track is user still on site, chat status checks also has to be enabled',0),
('track_mouse_activity','0',0,'Should mouse movement be tracked as activity measure, if not checked only basic events would be tracked',0),
('track_online_visitors','1',0,'Enable online site visitors tracking',0),
('translation_data','a:6:{i:0;b:0;s:19:\"translation_handler\";s:4:\"bing\";s:19:\"enable_translations\";b:0;s:14:\"bing_client_id\";s:0:\"\";s:18:\"bing_client_secret\";s:0:\"\";s:14:\"google_api_key\";s:0:\"\";}',0,'Translation data',1),
('update_ip','127.0.0.1',0,'Which ip should be allowed to update DB by executing http request, separate by comma?',0),
('use_secure_cookie','0',0,'Use secure cookie, check this if you want to force SSL all the time',0),
('voting_days_limit','7',0,'How many days voting widget should not be expanded after last show',0),
('xmp_data','a:14:{i:0;b:0;s:4:\"host\";s:15:\"talk.google.com\";s:6:\"server\";s:9:\"gmail.com\";s:8:\"resource\";s:6:\"xmpphp\";s:4:\"port\";s:4:\"5222\";s:7:\"use_xmp\";i:0;s:8:\"username\";s:0:\"\";s:8:\"password\";s:0:\"\";s:11:\"xmp_message\";s:78:\"New chat request [{chat_id}]\r\n{messages}\r\nClick to accept a chat\r\n{url_accept}\";s:10:\"recipients\";s:0:\"\";s:20:\"xmp_accepted_message\";s:69:\"{user_name} has accepted a chat [{chat_id}]\r\n{messages}\r\n{url_accept}\";s:16:\"use_standard_xmp\";i:0;s:15:\"test_recipients\";s:0:\"\";s:21:\"test_group_recipients\";s:0:\"\";}',0,'XMP data',1);

/*Table structure for table `lh_chat_file` */

DROP TABLE IF EXISTS `lh_chat_file`;

CREATE TABLE `lh_chat_file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `upload_name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `extension` varchar(255) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `online_user_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_id` (`chat_id`),
  KEY `online_user_id` (`online_user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_file` */

/*Table structure for table `lh_chat_online_user` */

DROP TABLE IF EXISTS `lh_chat_online_user`;

CREATE TABLE `lh_chat_online_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `current_page` text NOT NULL,
  `page_title` varchar(250) NOT NULL,
  `referrer` text NOT NULL,
  `chat_id` int(11) NOT NULL,
  `invitation_seen_count` int(11) NOT NULL,
  `invitation_id` int(11) NOT NULL,
  `last_visit` int(11) NOT NULL,
  `first_visit` int(11) NOT NULL,
  `total_visits` int(11) NOT NULL,
  `pages_count` int(11) NOT NULL,
  `tt_pages_count` int(11) NOT NULL,
  `invitation_count` int(11) NOT NULL,
  `last_check_time` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `user_agent` varchar(250) NOT NULL,
  `notes` varchar(250) NOT NULL,
  `user_country_code` varchar(50) NOT NULL,
  `user_country_name` varchar(50) NOT NULL,
  `visitor_tz` varchar(50) NOT NULL,
  `operator_message` text NOT NULL,
  `operator_user_proactive` varchar(100) NOT NULL,
  `operator_user_id` int(11) NOT NULL,
  `message_seen` int(11) NOT NULL,
  `message_seen_ts` int(11) NOT NULL,
  `user_active` int(11) NOT NULL,
  `lat` varchar(10) NOT NULL,
  `lon` varchar(10) NOT NULL,
  `city` varchar(100) NOT NULL,
  `reopen_chat` int(11) NOT NULL,
  `time_on_site` int(11) NOT NULL,
  `tt_time_on_site` int(11) NOT NULL,
  `requires_email` int(11) NOT NULL,
  `requires_username` int(11) NOT NULL,
  `requires_phone` int(11) NOT NULL,
  `screenshot_id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `operation` text NOT NULL,
  `online_attr_system` text NOT NULL,
  `operation_chat` text NOT NULL,
  `online_attr` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `vid` (`vid`),
  KEY `dep_id` (`dep_id`),
  KEY `last_visit_dep_id` (`last_visit`,`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_online_user` */

insert  into `lh_chat_online_user`(`id`,`vid`,`ip`,`current_page`,`page_title`,`referrer`,`chat_id`,`invitation_seen_count`,`invitation_id`,`last_visit`,`first_visit`,`total_visits`,`pages_count`,`tt_pages_count`,`invitation_count`,`last_check_time`,`dep_id`,`user_agent`,`notes`,`user_country_code`,`user_country_name`,`visitor_tz`,`operator_message`,`operator_user_proactive`,`operator_user_id`,`message_seen`,`message_seen_ts`,`user_active`,`lat`,`lon`,`city`,`reopen_chat`,`time_on_site`,`tt_time_on_site`,`requires_email`,`requires_username`,`requires_phone`,`screenshot_id`,`identifier`,`operation`,`online_attr_system`,`operation_chat`,`online_attr`) values 
(1,'zvl3vq064e89jqw3gnc','127.0.0.1','http://localhost/winci/clients','Clients','',3,0,0,1469603701,1469600635,1,4,4,0,1469603701,1,'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:47.0) Gecko/20100101 Firefox/47.0','','','','Asia/Yekaterinburg','','',0,1,1469602935,1,'0','0','',0,4725,4725,0,0,0,0,'','','','','');

/*Table structure for table `lh_chat_online_user_footprint` */

DROP TABLE IF EXISTS `lh_chat_online_user_footprint`;

CREATE TABLE `lh_chat_online_user_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `online_user_id` int(11) NOT NULL,
  `page` varchar(250) NOT NULL,
  `vtime` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_id_vtime` (`chat_id`,`vtime`),
  KEY `online_user_id` (`online_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_online_user_footprint` */

/*Table structure for table `lh_chat_paid` */

DROP TABLE IF EXISTS `lh_chat_paid`;

CREATE TABLE `lh_chat_paid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(250) NOT NULL,
  `chat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`),
  KEY `chat_id` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chat_paid` */

/*Table structure for table `lh_chatbox` */

DROP TABLE IF EXISTS `lh_chatbox`;

CREATE TABLE `lh_chatbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `chat_id` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_chatbox` */

/*Table structure for table `lh_cobrowse` */

DROP TABLE IF EXISTS `lh_cobrowse`;

CREATE TABLE `lh_cobrowse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `online_user_id` int(11) NOT NULL,
  `mtime` int(11) NOT NULL,
  `url` varchar(250) NOT NULL,
  `initialize` longtext NOT NULL,
  `modifications` longtext NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `w` int(11) NOT NULL,
  `wh` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_id` (`chat_id`),
  KEY `online_user_id` (`online_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_cobrowse` */

/*Table structure for table `lh_departament` */

DROP TABLE IF EXISTS `lh_departament`;

CREATE TABLE `lh_departament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `xmpp_recipients` text NOT NULL,
  `xmpp_group_recipients` text NOT NULL,
  `priority` int(11) NOT NULL,
  `sort_priority` int(11) NOT NULL,
  `department_transfer_id` int(11) NOT NULL,
  `transfer_timeout` int(11) NOT NULL,
  `disabled` int(11) NOT NULL,
  `hidden` int(11) NOT NULL,
  `delay_lm` int(11) NOT NULL,
  `max_active_chats` int(11) NOT NULL,
  `max_timeout_seconds` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `mod` tinyint(1) NOT NULL,
  `tud` tinyint(1) NOT NULL,
  `wed` tinyint(1) NOT NULL,
  `thd` tinyint(1) NOT NULL,
  `frd` tinyint(1) NOT NULL,
  `sad` tinyint(1) NOT NULL,
  `sud` tinyint(1) NOT NULL,
  `nc_cb_execute` tinyint(1) NOT NULL,
  `na_cb_execute` tinyint(1) NOT NULL,
  `inform_unread` tinyint(1) NOT NULL,
  `active_balancing` tinyint(1) NOT NULL,
  `visible_if_online` tinyint(1) NOT NULL,
  `start_hour` int(2) NOT NULL,
  `end_hour` int(2) NOT NULL,
  `inform_close` int(11) NOT NULL,
  `inform_unread_delay` int(11) NOT NULL,
  `inform_options` varchar(250) NOT NULL,
  `online_hours_active` tinyint(1) NOT NULL,
  `inform_delay` int(11) NOT NULL,
  `attr_int_1` int(11) NOT NULL,
  `attr_int_2` int(11) NOT NULL,
  `attr_int_3` int(11) NOT NULL,
  `active_chats_counter` int(11) NOT NULL,
  `pending_chats_counter` int(11) NOT NULL,
  `closed_chats_counter` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `identifier` (`identifier`),
  KEY `attr_int_1` (`attr_int_1`),
  KEY `attr_int_2` (`attr_int_2`),
  KEY `attr_int_3` (`attr_int_3`),
  KEY `disabled_hidden` (`disabled`,`hidden`),
  KEY `sort_priority_name` (`sort_priority`,`name`),
  KEY `oha_sh_eh` (`online_hours_active`,`start_hour`,`end_hour`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lh_departament` */

insert  into `lh_departament`(`id`,`name`,`email`,`xmpp_recipients`,`xmpp_group_recipients`,`priority`,`sort_priority`,`department_transfer_id`,`transfer_timeout`,`disabled`,`hidden`,`delay_lm`,`max_active_chats`,`max_timeout_seconds`,`identifier`,`mod`,`tud`,`wed`,`thd`,`frd`,`sad`,`sud`,`nc_cb_execute`,`na_cb_execute`,`inform_unread`,`active_balancing`,`visible_if_online`,`start_hour`,`end_hour`,`inform_close`,`inform_unread_delay`,`inform_options`,`online_hours_active`,`inform_delay`,`attr_int_1`,`attr_int_2`,`attr_int_3`,`active_chats_counter`,`pending_chats_counter`,`closed_chats_counter`) values 
(1,'IT','','','',0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,3,0);

/*Table structure for table `lh_faq` */

DROP TABLE IF EXISTS `lh_faq`;

CREATE TABLE `lh_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `answer` text NOT NULL,
  `url` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `identifier` varchar(10) NOT NULL,
  `active` int(11) NOT NULL,
  `has_url` tinyint(1) NOT NULL,
  `is_wildcard` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `active_url` (`active`,`url`),
  KEY `has_url` (`has_url`),
  KEY `identifier` (`identifier`),
  KEY `is_wildcard` (`is_wildcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_faq` */

/*Table structure for table `lh_forgotpasswordhash` */

DROP TABLE IF EXISTS `lh_forgotpasswordhash`;

CREATE TABLE `lh_forgotpasswordhash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_forgotpasswordhash` */

/*Table structure for table `lh_group` */

DROP TABLE IF EXISTS `lh_group`;

CREATE TABLE `lh_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `disabled` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lh_group` */

insert  into `lh_group`(`id`,`name`,`disabled`) values 
(1,'Administrators',0),
(2,'Operators',0);

/*Table structure for table `lh_grouprole` */

DROP TABLE IF EXISTS `lh_grouprole`;

CREATE TABLE `lh_grouprole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`,`group_id`),
  KEY `group_id_primary` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lh_grouprole` */

insert  into `lh_grouprole`(`id`,`group_id`,`role_id`) values 
(1,1,1),
(2,2,2);

/*Table structure for table `lh_groupuser` */

DROP TABLE IF EXISTS `lh_groupuser`;

CREATE TABLE `lh_groupuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_id_2` (`group_id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lh_groupuser` */

insert  into `lh_groupuser`(`id`,`group_id`,`user_id`) values 
(1,1,1);

/*Table structure for table `lh_msg` */

DROP TABLE IF EXISTS `lh_msg`;

CREATE TABLE `lh_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` text NOT NULL,
  `time` int(11) NOT NULL,
  `chat_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name_support` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_id_id` (`chat_id`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `lh_msg` */

insert  into `lh_msg`(`id`,`msg`,`time`,`chat_id`,`user_id`,`name_support`) values 
(1,'asasdas',1469598274,1,0,''),
(2,'asdas',1469602922,2,0,''),
(3,'asdasd',1469602925,2,0,''),
(4,'asdkhnaskjd',1469602927,2,0,''),
(5,'asldhjk',1469602928,2,0,''),
(6,'asdhljk',1469602929,2,0,''),
(7,'asdas',1469602935,3,0,'');

/*Table structure for table `lh_question` */

DROP TABLE IF EXISTS `lh_question`;

CREATE TABLE `lh_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `active` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `is_voting` int(11) NOT NULL,
  `question_intro` text NOT NULL,
  `revote` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `priority` (`priority`),
  KEY `active_priority` (`active`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_question` */

/*Table structure for table `lh_question_answer` */

DROP TABLE IF EXISTS `lh_question_answer`;

CREATE TABLE `lh_question_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` bigint(20) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `ctime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_question_answer` */

/*Table structure for table `lh_question_option` */

DROP TABLE IF EXISTS `lh_question_option`;

CREATE TABLE `lh_question_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option_name` varchar(250) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_question_option` */

/*Table structure for table `lh_question_option_answer` */

DROP TABLE IF EXISTS `lh_question_option_answer`;

CREATE TABLE `lh_question_option_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `ctime` int(11) NOT NULL,
  `ip` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_question_option_answer` */

/*Table structure for table `lh_role` */

DROP TABLE IF EXISTS `lh_role`;

CREATE TABLE `lh_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `lh_role` */

insert  into `lh_role`(`id`,`name`) values 
(1,'Administrators'),
(2,'Operators');

/*Table structure for table `lh_rolefunction` */

DROP TABLE IF EXISTS `lh_rolefunction`;

CREATE TABLE `lh_rolefunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `function` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `lh_rolefunction` */

insert  into `lh_rolefunction`(`id`,`role_id`,`module`,`function`) values 
(1,1,'*','*'),
(2,2,'lhuser','selfedit'),
(3,2,'lhuser','changeonlinestatus'),
(4,2,'lhuser','changeskypenick'),
(5,2,'lhuser','personalcannedmsg'),
(6,2,'lhuser','change_visibility_list'),
(7,2,'lhuser','see_assigned_departments'),
(8,2,'lhuser','canseedepartmentstats'),
(9,2,'lhchat','use'),
(10,2,'lhchat','chattabschrome'),
(11,2,'lhchat','singlechatwindow'),
(12,2,'lhchat','allowopenremotechat'),
(13,2,'lhchat','allowchattabs'),
(14,2,'lhchat','use_onlineusers'),
(15,2,'lhchat','take_screenshot'),
(16,2,'lhfront','use'),
(17,2,'lhsystem','use'),
(18,2,'lhtranslation','use'),
(19,2,'lhchat','allowblockusers'),
(20,2,'lhsystem','generatejs'),
(21,2,'lhsystem','changelanguage'),
(22,2,'lhchat','allowredirect'),
(23,2,'lhchat','allowtransfer'),
(24,2,'lhchat','administratecannedmsg'),
(25,2,'lhchat','sees_all_online_visitors'),
(26,2,'lhpermission','see_permissions'),
(27,2,'lhquestionary','manage_questionary'),
(28,2,'lhfaq','manage_faq'),
(29,2,'lhchatbox','manage_chatbox'),
(30,2,'lhbrowseoffer','manage_bo'),
(31,2,'lhxml','*'),
(32,2,'lhcobrowse','browse'),
(33,2,'lhfile','use_operator'),
(34,2,'lhfile','file_delete_chat'),
(35,2,'lhstatistic','use'),
(36,2,'lhspeech','changedefaultlanguage'),
(37,2,'lhspeech','use'),
(38,2,'lhspeech','change_chat_recognition');

/*Table structure for table `lh_speech_chat_language` */

DROP TABLE IF EXISTS `lh_speech_chat_language`;

CREATE TABLE `lh_speech_chat_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `dialect` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chat_id` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_speech_chat_language` */

/*Table structure for table `lh_speech_language` */

DROP TABLE IF EXISTS `lh_speech_language`;

CREATE TABLE `lh_speech_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Data for the table `lh_speech_language` */

insert  into `lh_speech_language`(`id`,`name`) values 
(1,'Afrikaans'),
(2,'Bahasa Indonesia'),
(3,'Bahasa Melayu'),
(4,'Catal√†'),
(5,'ƒåe≈°tina'),
(6,'Deutsch'),
(7,'English'),
(8,'Espa√±ol'),
(9,'Euskara'),
(10,'Fran√ßais'),
(11,'Galego'),
(12,'Hrvatski'),
(13,'IsiZulu'),
(14,'√çslenska'),
(15,'Italiano'),
(16,'Magyar'),
(17,'Nederlands'),
(18,'Norsk bokm√•l'),
(19,'Polski'),
(20,'Portugu√™s'),
(21,'Rom√¢nƒÉ'),
(22,'Slovenƒçina'),
(23,'Suomi'),
(24,'Svenska'),
(25,'T√ºrk√ße'),
(26,'–±—ä–ª–≥–∞—Ä—Å–∫–∏'),
(27,'P—É—Å—Å–∫–∏–π'),
(28,'–°—Ä–ø—Å–∫–∏'),
(29,'ÌïúÍµ≠Ïñ¥'),
(30,'‰∏≠Êñá'),
(31,'Êó•Êú¨Ë™û'),
(32,'Lingua latƒ´na');

/*Table structure for table `lh_speech_language_dialect` */

DROP TABLE IF EXISTS `lh_speech_language_dialect`;

CREATE TABLE `lh_speech_language_dialect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `lang_name` varchar(100) NOT NULL,
  `lang_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

/*Data for the table `lh_speech_language_dialect` */

insert  into `lh_speech_language_dialect`(`id`,`language_id`,`lang_name`,`lang_code`) values 
(1,1,'Afrikaans','af-ZA'),
(2,2,'Bahasa Indonesia','id-ID'),
(3,3,'Bahasa Melayu','ms-MY'),
(4,4,'Catal√†','ca-ES'),
(5,5,'ƒåe≈°tina','cs-CZ'),
(6,6,'Deutsch','de-DE'),
(7,7,'Australia','en-AU'),
(8,7,'Canada','en-CA'),
(9,7,'India','en-IN'),
(10,7,'New Zealand','en-NZ'),
(11,7,'South Africa','en-ZA'),
(12,7,'United Kingdom','en-GB'),
(13,7,'United States','en-US'),
(14,8,'Argentina','es-AR'),
(15,8,'Bolivia','es-BO'),
(16,8,'Chile','es-CL'),
(17,8,'Colombia','es-CO'),
(18,8,'Costa Rica','es-CR'),
(19,8,'Ecuador','es-EC'),
(20,8,'El Salvador','es-SV'),
(21,8,'Espa√±a','es-ES'),
(22,8,'Estados Unidos','es-US'),
(23,8,'Guatemala','es-GT'),
(24,8,'Honduras','es-HN'),
(25,8,'M√©xico','es-MX'),
(26,8,'Nicaragua','es-NI'),
(27,8,'Panam√°','es-PA'),
(28,8,'Paraguay','es-PY'),
(29,8,'Per√∫','es-PE'),
(30,8,'Puerto Rico','es-PR'),
(31,8,'Rep√∫blica Dominicana','es-DO'),
(32,8,'Uruguay','es-UY'),
(33,8,'Venezuela','es-VE'),
(34,9,'Euskara','eu-ES'),
(35,10,'Fran√ßais','fr-FR'),
(36,11,'Galego','gl-ES'),
(37,12,'Hrvatski','hr_HR'),
(38,13,'IsiZulu','zu-ZA'),
(39,14,'√çslenska','is-IS'),
(40,15,'Italia','it-IT'),
(41,15,'Svizzera','it-CH'),
(42,16,'Magyar','hu-HU'),
(43,17,'Nederlands','nl-NL'),
(44,18,'Norsk bokm√•l','nb-NO'),
(45,19,'Polski','pl-PL'),
(46,20,'Brasil','pt-BR'),
(47,20,'Portugal','pt-PT'),
(48,21,'Rom√¢nƒÉ','ro-RO'),
(49,22,'Slovenƒçina','sk-SK'),
(50,23,'Suomi','fi-FI'),
(51,24,'Svenska','sv-SE'),
(52,25,'T√ºrk√ße','tr-TR'),
(53,26,'–±—ä–ª–≥–∞—Ä—Å–∫–∏','bg-BG'),
(54,27,'P—É—Å—Å–∫–∏–π','ru-RU'),
(55,28,'–°—Ä–ø—Å–∫–∏','sr-RS'),
(56,29,'ÌïúÍµ≠Ïñ¥','ko-KR'),
(57,30,'ÊôÆÈÄöËØù (‰∏≠ÂõΩÂ§ßÈôÜ)','cmn-Hans-CN'),
(58,30,'ÊôÆÈÄöËØù (È¶ôÊ∏Ø)','cmn-Hans-HK'),
(59,30,'‰∏≠Êñá (Âè∞ÁÅ£)','cmn-Hant-TW'),
(60,30,'Á≤µË™û (È¶ôÊ∏Ø)','yue-Hant-HK'),
(61,31,'Êó•Êú¨Ë™û','ja-JP'),
(62,32,'Lingua latƒ´na','la');

/*Table structure for table `lh_transfer` */

DROP TABLE IF EXISTS `lh_transfer`;

CREATE TABLE `lh_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `transfer_user_id` int(11) NOT NULL,
  `from_dep_id` int(11) NOT NULL,
  `transfer_to_user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dep_id` (`dep_id`),
  KEY `transfer_user_id_dep_id` (`transfer_user_id`,`dep_id`),
  KEY `transfer_to_user_id` (`transfer_to_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_transfer` */

/*Table structure for table `lh_userdep` */

DROP TABLE IF EXISTS `lh_userdep`;

CREATE TABLE `lh_userdep` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `last_activity` int(11) NOT NULL,
  `hide_online` int(11) NOT NULL,
  `last_accepted` int(11) NOT NULL,
  `active_chats` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `last_activity_hide_online_dep_id` (`last_activity`,`hide_online`,`dep_id`),
  KEY `dep_id` (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `lh_userdep` */

insert  into `lh_userdep`(`id`,`user_id`,`dep_id`,`last_activity`,`hide_online`,`last_accepted`,`active_chats`) values 
(2,1,1,1469605093,0,0,0),
(3,1,0,1469605093,0,0,0);

/*Table structure for table `lh_users` */

DROP TABLE IF EXISTS `lh_users`;

CREATE TABLE `lh_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `time_zone` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `filepath` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `departments_ids` varchar(100) NOT NULL,
  `chat_nickname` varchar(100) NOT NULL,
  `xmpp_username` varchar(200) NOT NULL,
  `session_id` varchar(40) NOT NULL,
  `skype` varchar(50) NOT NULL,
  `disabled` tinyint(4) NOT NULL,
  `hide_online` tinyint(1) NOT NULL,
  `all_departments` tinyint(1) NOT NULL,
  `invisible_mode` tinyint(1) NOT NULL,
  `rec_per_req` tinyint(1) NOT NULL,
  `active_chats_counter` int(11) NOT NULL,
  `closed_chats_counter` int(11) NOT NULL,
  `pending_chats_counter` int(11) NOT NULL,
  `attr_int_1` int(11) NOT NULL,
  `attr_int_2` int(11) NOT NULL,
  `attr_int_3` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hide_online` (`hide_online`),
  KEY `rec_per_req` (`rec_per_req`),
  KEY `email` (`email`),
  KEY `xmpp_username` (`xmpp_username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `lh_users` */

insert  into `lh_users`(`id`,`username`,`password`,`email`,`time_zone`,`name`,`surname`,`filepath`,`filename`,`job_title`,`departments_ids`,`chat_nickname`,`xmpp_username`,`session_id`,`skype`,`disabled`,`hide_online`,`all_departments`,`invisible_mode`,`rec_per_req`,`active_chats_counter`,`closed_chats_counter`,`pending_chats_counter`,`attr_int_1`,`attr_int_2`,`attr_int_3`) values 
(1,'admin','$2y$10$wcpAZUODPXlgQbWQwmIL4e9F1pFKnxBN9NeM9m/1n0vxIcjqjQdBW','roshansingh9450@gmail.com','','Roshan ','Singh','','','','1,0','','','','',0,0,1,1,1,0,0,0,0,0,0);

/*Table structure for table `lh_users_remember` */

DROP TABLE IF EXISTS `lh_users_remember`;

CREATE TABLE `lh_users_remember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_users_remember` */

/*Table structure for table `lh_users_setting` */

DROP TABLE IF EXISTS `lh_users_setting`;

CREATE TABLE `lh_users_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `identifier` varchar(50) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `lh_users_setting` */

insert  into `lh_users_setting`(`id`,`user_id`,`identifier`,`value`) values 
(1,1,'user_language','en_EN'),
(2,1,'enable_pending_list','1'),
(3,1,'enable_active_list','1'),
(4,1,'enable_close_list','1'),
(5,1,'enable_unread_list','1'),
(6,1,'new_user_bn','1'),
(7,1,'new_user_sound','1'),
(8,1,'o_department','1'),
(9,1,'ouser_timeout','60'),
(10,1,'oupdate_timeout','3'),
(11,1,'omax_rows','200'),
(12,1,'ogroup_by','none'),
(13,1,'omap_depid','1'),
(14,1,'omap_mtimeout','30'),
(15,1,'dwo',''),
(16,1,'new_chat_sound','1'),
(17,1,'chat_message','0'),
(18,1,'show_all_pending','1'),
(19,1,'speech_language','7'),
(20,1,'speech_dialect','en-US');

/*Table structure for table `lh_users_setting_option` */

DROP TABLE IF EXISTS `lh_users_setting_option`;

CREATE TABLE `lh_users_setting_option` (
  `identifier` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `attribute` varchar(40) NOT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lh_users_setting_option` */

insert  into `lh_users_setting_option`(`identifier`,`class`,`attribute`) values 
('chat_message','',''),
('dwo','',''),
('enable_active_list','',''),
('enable_close_list','',''),
('enable_pending_list','',''),
('enable_unread_list','',''),
('new_chat_sound','',''),
('new_user_bn','',''),
('new_user_sound','',''),
('ogroup_by','',''),
('omap_depid','',''),
('omap_mtimeout','',''),
('omax_rows','',''),
('oupdate_timeout','',''),
('ouser_timeout','',''),
('o_department','','');

/*Table structure for table `licence` */

DROP TABLE IF EXISTS `licence`;

CREATE TABLE `licence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `lic_pic` varchar(150) DEFAULT NULL,
  `verify` tinyint(4) NOT NULL DEFAULT '0',
  `validornot` int(11) NOT NULL DEFAULT '0',
  `remove_or_not` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

/*Data for the table `licence` */

insert  into `licence`(`id`,`u_id`,`lic_pic`,`verify`,`validornot`,`remove_or_not`) values 
(1,10,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1219840687.png',1,1,0),
(2,15,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-226220662.png',1,1,0),
(3,16,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-2139649271.png',1,1,0),
(4,11,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC2086791621.png',1,1,0),
(5,21,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC2098433986.png',1,1,0),
(6,66,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1952792191.png',1,1,0),
(7,65,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1952528880.png',1,1,0),
(8,68,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1950102196.png',0,2,1),
(10,56,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1942862659.png',1,1,0),
(11,72,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1906112243.png',0,2,1),
(12,74,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1890860370.png',0,2,1),
(13,73,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1864173843.png',1,1,0),
(14,61,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1806819697.png',1,1,0),
(15,76,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1791508738.png',1,1,0),
(16,77,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1778080359.png',1,1,0),
(17,79,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1782469668.png',1,1,0),
(18,80,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1776496778.png',0,0,0),
(19,81,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1697450601.png',1,1,0),
(20,87,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1641926992.png',1,1,0),
(21,90,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1563325796.png',1,1,0),
(22,106,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1193986274.png',1,1,0),
(23,109,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1529742670.png',1,1,0),
(24,114,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1522583775.png',1,1,0),
(25,123,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1275367978.png',1,1,0),
(26,126,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1204013547.png',1,1,0),
(27,130,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1472643413.png',1,1,0),
(28,157,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1366559944.png',1,1,0),
(29,158,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1354720020.png',1,1,0),
(30,159,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1350963843.png',1,1,0),
(33,163,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1349084100.png',1,1,0),
(34,164,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1348700831.png',1,1,0),
(35,160,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1348413632.png',1,1,0),
(36,83,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-1159761408.png',0,0,0),
(37,186,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-232511459.png',1,1,0),
(38,189,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-223946817.png',1,1,0),
(39,190,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC-211744753.png',1,1,0),
(40,175,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC275764868.png',1,1,0),
(41,198,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC463526956.png',1,1,0),
(42,204,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC693115607.png',1,1,0),
(43,201,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC818627519.png',1,1,0),
(44,41,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC878871029.png',1,1,0),
(45,48,'http://winmycase.org/task_manager/v1/licence/IMG_WIN_MY_CASE_LIC1306097882.png',1,1,0);

/*Table structure for table `likes` */

DROP TABLE IF EXISTS `likes`;

CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `likes` tinyint(1) DEFAULT '0',
  `fromuser_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

/*Data for the table `likes` */

insert  into `likes`(`id`,`u_id`,`likes`,`fromuser_id`) values 
(1,4,1,6),
(2,4,1,3),
(3,8,0,1),
(4,4,1,1),
(5,8,1,6),
(6,9,1,3),
(7,10,1,3),
(8,10,0,7),
(9,9,0,7),
(10,4,0,7),
(11,9,1,10),
(12,4,1,10),
(13,8,1,18),
(14,18,0,7),
(15,20,1,6),
(16,21,0,14),
(17,21,1,15),
(18,10,1,14),
(19,10,0,16),
(20,10,0,31),
(21,87,0,31),
(22,77,1,6),
(23,11,1,6),
(24,10,1,6),
(25,21,1,6),
(26,79,1,6),
(27,76,1,6),
(28,87,1,6),
(29,21,0,79),
(30,76,1,15),
(31,15,1,6),
(32,157,1,15),
(33,157,1,6),
(34,159,0,6),
(35,10,1,185),
(36,10,1,1),
(37,106,1,165),
(38,159,1,165),
(39,130,1,165),
(40,126,1,165),
(41,90,1,165),
(42,109,1,165),
(43,123,1,165),
(44,190,1,165),
(45,79,1,165),
(46,15,1,165),
(47,21,1,165),
(48,87,1,165),
(49,159,1,1),
(50,190,1,1),
(51,21,1,56),
(52,76,0,41),
(53,190,1,212),
(54,15,1,175);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(11) DEFAULT NULL,
  `topic` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

insert  into `messages`(`message_id`,`question_id`,`from_user_id`,`to_user_id`,`message`,`created_at`,`phone`,`topic`) values 
(28,1,223,222,'You should check the textarea is null before you use val() otherwise, you will get undefined error.','2016-07-08 08:44:00',NULL,NULL),
(29,1,223,222,'You should check the textarea is null before you use val() otherwise, you will get undefined error.','2016-07-08 08:44:00',NULL,NULL),
(30,1,223,222,'You should check the textarea is null before you use val() otherwise, you will get undefined error.','2016-07-08 08:45:00',NULL,NULL),
(31,3,223,222,'You don\'t need to use var message = $(\'textarea#message\').val();','2016-07-08 12:23:23',NULL,NULL),
(38,3,223,222,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500','2016-07-08 16:09:00',NULL,NULL),
(39,3,223,222,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500','2016-07-08 16:10:00',NULL,NULL),
(40,3,223,222,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500','2016-07-08 16:10:00',NULL,NULL),
(41,3,223,222,'sadasdasdasd','2016-07-08 17:16:00',NULL,NULL),
(49,11,223,222,'asdasdas','2016-08-09 09:31:00',NULL,NULL),
(50,11,223,222,'asdasd','2016-08-09 09:31:00',NULL,NULL),
(51,11,223,222,'sadasd','2016-08-09 09:31:00',NULL,NULL),
(52,17,223,222,'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum','2016-08-09 09:53:00',NULL,NULL),
(53,17,223,222,'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum','2016-08-09 09:53:00',NULL,NULL),
(54,17,223,222,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi','2016-08-09 09:54:00',NULL,NULL),
(55,18,223,222,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi','2016-08-09 09:54:00',NULL,NULL),
(56,18,223,222,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi','2016-08-09 09:54:00',NULL,NULL),
(57,23,223,222,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi','2016-08-09 09:54:00',NULL,NULL),
(58,23,223,222,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomi','2016-08-09 09:54:00',NULL,NULL),
(59,23,223,222,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem ','2016-08-09 09:54:00',NULL,NULL),
(60,23,223,222,'seddfsdf','2016-08-09 09:55:00',NULL,NULL),
(61,23,223,222,'roshan\r\n','2016-08-09 09:55:00',NULL,NULL);

/*Table structure for table `notification_status` */

DROP TABLE IF EXISTS `notification_status`;

CREATE TABLE `notification_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_name` varchar(150) DEFAULT NULL,
  `from_user_message` varchar(300) DEFAULT NULL,
  `token` int(11) DEFAULT NULL,
  `request_time` varchar(150) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `topic` varchar(150) DEFAULT NULL,
  `from_to_time` varchar(150) DEFAULT NULL,
  `response_time` varchar(150) DEFAULT NULL,
  `from_lawyer_message` varchar(300) DEFAULT NULL,
  `to_name` varchar(150) DEFAULT NULL,
  `client_read_status` tinyint(4) DEFAULT '0',
  `lawyer_read_status` tinyint(4) DEFAULT '0',
  `topic_for_lawyer` varchar(150) DEFAULT NULL,
  `n_activeor_not` varchar(50) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notification_status` */

/*Table structure for table `ofconparticipant` */

DROP TABLE IF EXISTS `ofconparticipant`;

CREATE TABLE `ofconparticipant` (
  `conversationID` bigint(20) NOT NULL,
  `joinedDate` bigint(20) NOT NULL,
  `leftDate` bigint(20) DEFAULT NULL,
  `bareJID` varchar(200) NOT NULL,
  `jidResource` varchar(100) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  KEY `ofConParticipant_conv_idx` (`conversationID`,`bareJID`,`jidResource`,`joinedDate`),
  KEY `ofConParticipant_jid_idx` (`bareJID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofconparticipant` */

insert  into `ofconparticipant`(`conversationID`,`joinedDate`,`leftDate`,`bareJID`,`jidResource`,`nickname`) values 
(1,1464158257966,NULL,'rohit@ip-172-31-27-1','8da8rhjaj9',NULL),
(1,1464158257966,NULL,'rko@winmycase.org','',NULL),
(2,1464158330206,NULL,'rohit@winmycase.org','',NULL),
(2,1464158330206,NULL,'rko@ip-172-31-27-1','Spark',NULL),
(3,1464158820841,1464158929251,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(3,1464158820841,1464158929251,'7835981999@winmycase.org','',NULL),
(4,1464158826119,1464159556036,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(4,1464158826119,1464159556036,'7835981999@winmycase.org','',NULL),
(5,1464159550457,1464161356035,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(5,1464159550457,1464161356035,'7835981999@winmycase.org','',NULL),
(6,1464160358587,1464161056035,'9646198438@winmycase.org','SmackAndroidTestClient',NULL),
(6,1464160358587,1464161056035,'7835981999@winmycase.org','',NULL),
(7,1464160473871,1464161356035,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(7,1464160473871,1464161356035,'7835981999@winmycase.org','',NULL),
(8,1464162255640,1464163292503,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(8,1464162255640,1464163292503,'8800869428@winmycase.org','',NULL),
(9,1464163360006,1464164492503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(9,1464163360006,1464164492503,'7835981999@winmycase.org','',NULL),
(10,1464164121633,1464165992503,'9646198438@winmycase.org','SmackAndroidTestClient',NULL),
(10,1464164121633,1464165992503,'7835981999@winmycase.org','',NULL),
(11,1464164259220,1464165092503,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(11,1464164259220,1464165092503,'7835981999@winmycase.org','',NULL),
(12,1464165334537,1464165992503,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(12,1464165334537,1464165992503,'7835981999@winmycase.org','',NULL),
(13,1464167331254,1464168692503,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(13,1464167331254,1464168692503,'8800869428@winmycase.org','',NULL),
(14,1464168132362,1464169292503,'9646198438@winmycase.org','',NULL),
(14,1464168132362,1464169292503,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(15,1464169649632,1464170492503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(15,1464169649632,1464170492503,'7835981999@winmycase.org','',NULL),
(16,1464172522811,1464173792503,'7835981999@winmycase.org','',NULL),
(16,1464172522811,1464173792503,'7508789139@winmycase.org','SmackAndroidTestClient',NULL),
(17,1464172938396,1464173792503,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(17,1464172938396,1464173792503,'9138181087@winmycase.org','',NULL),
(18,1464178180404,1464178892503,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(18,1464178180404,1464178892503,'8800869428@winmycase.org','',NULL),
(19,1464178914513,1464179792504,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(19,1464178914513,1464179792504,'8800869428@winmycase.org','',NULL),
(20,1464179122275,1464179520134,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(20,1464179122275,1464179520134,'7835981999@winmycase.org','',NULL),
(21,1464180149220,1464180992503,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(21,1464180149220,1464180992503,'7835981999@winmycase.org','',NULL),
(22,1464180647097,1464181292503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(22,1464180647097,1464181292503,'9138181087@winmycase.org','',NULL),
(23,1464180698844,1464181592503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(23,1464180698844,1464181592503,'7835981999@winmycase.org','',NULL),
(24,1464181502538,1464182192503,'7835981999@winmycase.org','',NULL),
(24,1464181502538,1464182192503,'9814272836@winmycase.org','SmackAndroidTestClient',NULL),
(25,1464183185415,1464183185416,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(25,1464183185415,1464183185416,'8800869428@winmycase.org','',NULL),
(26,1464183970927,1464184592504,'9138181087@winmycase.org','SmackAndroidTestClient',NULL),
(26,1464183970927,1464184592504,'8800869428@winmycase.org','',NULL),
(27,1464187304075,1464188192503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(27,1464187304075,1464188192503,'7835981999@winmycase.org','',NULL),
(28,1464236235484,1464237092503,'9780054161@winmycase.org','SmackAndroidTestClient',NULL),
(28,1464236235484,1464237092503,'9988950007@winmycase.org','',NULL),
(29,1464239704329,1464241292503,'9988950007@winmycase.org','',NULL),
(29,1464239704329,1464241292503,'7508789139@winmycase.org','SmackAndroidTestClient',NULL),
(30,1464255233940,1464255992503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(30,1464255233940,1464255992503,'7835981999@winmycase.org','',NULL),
(31,1464259800189,1464260492503,'7835981999@winmycase.org','',NULL),
(31,1464259800189,1464260492503,'7508789139@winmycase.org','SmackAndroidTestClient',NULL),
(32,1464261754423,1464262592503,'7835981999@winmycase.org','',NULL),
(32,1464261754423,1464262592503,'9814272836@winmycase.org','SmackAndroidTestClient',NULL),
(33,1464263164398,1464263526930,'7835981999@winmycase.org','',NULL),
(33,1464263164398,1464263526930,'9814272836@winmycase.org','SmackAndroidTestClient',NULL),
(34,1464264161599,1464264992503,'9814272836@winmycase.org','',NULL),
(34,1464264161599,1464264992503,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(35,1464265108829,1464266492503,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(35,1464265108829,1464266492503,'8800869428@winmycase.org','',NULL),
(36,1464269234183,1464270092503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(36,1464269234183,1464270092503,'7835981999@winmycase.org','',NULL),
(37,1464269338854,1464270092503,'7835981999@winmycase.org','',NULL),
(37,1464269338854,1464270092503,'7508789139@winmycase.org','SmackAndroidTestClient',NULL),
(38,1464269382194,1464270092503,'7835981999@winmycase.org','',NULL),
(38,1464269382194,1464270092503,'9814272836@winmycase.org','SmackAndroidTestClient',NULL),
(39,1464271670664,1464273092503,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(39,1464271670664,1464273092503,'7835981999@winmycase.org','',NULL),
(40,1464336654107,NULL,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(40,1464336654107,NULL,'8800869428@winmycase.org','',NULL),
(41,1464337068848,1464337882263,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(41,1464337068848,1464337882263,'7835981999@winmycase.org','',NULL),
(42,1464341513355,1464342382262,'9646198438@winmycase.org','SmackAndroidTestClient',NULL),
(42,1464341513355,1464342382262,'7835981999@winmycase.org','',NULL),
(43,1464344916610,1464345682263,'7835981999@winmycase.org','',NULL),
(43,1464344916610,1464345682263,'9805500241@winmycase.org','SmackAndroidTestClient',NULL),
(44,1464346116380,1464346125363,'9805500241@winmycase.org','',NULL),
(44,1464346116380,1464346125363,'7835981999@winmycase.org','SmackAndroidTestClient',NULL),
(45,1464346817631,1464346817632,'7835981999@winmycase.org','',NULL),
(45,1464346817631,1464346817632,'9805500241@winmycase.org','SmackAndroidTestClient',NULL),
(46,1464347446427,1464348682262,'7835981999@winmycase.org','',NULL),
(46,1464347446427,1464348682262,'9805500241@winmycase.org','SmackAndroidTestClient',NULL),
(47,1464351228138,1464351982262,'8289098909@winmycase.org','SmackAndroidTestClient',NULL),
(47,1464351228138,1464351982262,'9988950007@winmycase.org','',NULL),
(48,1464355566120,1464356182263,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(48,1464355566120,1464356182263,'7835981999@winmycase.org','',NULL),
(49,1464428651522,1464429382262,'8800869428@winmycase.org','SmackAndroidTestClient',NULL),
(49,1464428651522,1464429382262,'7835981999@winmycase.org','',NULL),
(50,1464702894043,1464704065350,'7835981999@winmycase.org','',NULL),
(50,1464702894043,1464704065350,'8800869428@54.169.4.205','SmackAndroidClient',NULL),
(51,1464704521399,1464705265349,'7835981999@winmycase.org','',NULL),
(51,1464704521399,1464705265349,'8800869428@54.169.4.205','SmackAndroidClient',NULL),
(52,1464705687979,NULL,'7835981999@winmycase.org','',NULL),
(52,1464705687979,NULL,'8800869428@54.169.4.205','SmackAndroidClient',NULL),
(53,1464705844064,1464706662765,'7835981999@winmycase.org','',NULL),
(53,1464705844064,1464706662765,'8800869428@winmycase.org','SmackAndroidClient',NULL),
(54,1464775848213,1464776562764,'7835981999@winmycase.org','SmackAndroidClient',NULL),
(54,1464775848213,1464776562764,'8800869428@winmycase.org','',NULL),
(55,1465291900746,1465292607462,'7508789139@winmycase.org','SmackAndroidClient',NULL),
(55,1465291900746,1465292607462,'7835981999@winmycase.org','',NULL),
(56,1465295295619,1465296207462,'7508789139@winmycase.org','',NULL),
(56,1465295295619,1465296207462,'7835981999@winmycase.org','SmackAndroidClient',NULL),
(57,1465298940128,1465299807461,'7508789139@winmycase.org','',NULL),
(57,1465298940128,1465299807461,'7835981999@winmycase.org','SmackAndroidClient',NULL),
(58,1465299957996,1465300707461,'7508789139@winmycase.org','SmackAndroidClient',NULL),
(58,1465299957996,1465300707461,'7835981999@winmycase.org','',NULL),
(59,1465385054005,1465386052593,'7835981999@winmycase.org','',NULL),
(59,1465385054005,1465386052593,'8800869428@winmycase.org','SmackAndroidClient',NULL),
(60,1465388243141,1465389052593,'9988950007@winmycase.org','',NULL),
(60,1465388243141,1465389052593,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(61,1465388334376,1465389052593,'7835981999@winmycase.org','',NULL),
(61,1465388334376,1465389052593,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(62,1465390587026,1465392052594,'7835981999@winmycase.org','',NULL),
(62,1465390587026,1465392052594,'8800869428@winmycase.org','SmackAndroidClient',NULL),
(63,1465393803608,1465395352593,'7835981999@winmycase.org','SmackAndroidClient',NULL),
(63,1465393803608,1465395352593,'8800869428@winmycase.org','',NULL),
(64,1465472886070,1465473652594,'7835981999@winmycase.org','SmackAndroidClient',NULL),
(64,1465472886070,1465473652594,'8800869428@winmycase.org','',NULL),
(65,1465667528550,1465668352593,'8289098909@winmycase.org','',NULL),
(65,1465667528550,1465668352593,'9988950007@winmycase.org','SmackAndroidClient',NULL),
(66,1465732029928,1465732852593,'9882970900@winmycase.org','SmackAndroidClient',NULL),
(66,1465732029928,1465732852593,'7696956545@winmycase.org','',NULL),
(67,1466084373490,1466085352593,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(67,1466084373490,1466085352593,'9041414100@winmycase.org','',NULL),
(68,1466084697713,1466085352593,'9988950007@winmycase.org','',NULL),
(68,1466084697713,1466085352593,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(69,1466085568458,1466085568459,'7835981999@winmycase.org','',NULL),
(69,1466085568458,1466085568459,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(70,1466085906206,1466087452593,'9988950007@winmycase.org','',NULL),
(70,1466085906206,1466087452593,'8289098909@winmycase.org','SmackAndroidClient',NULL),
(71,1466086055563,1466087752593,'8289098909@winmycase.org','',NULL),
(71,1466086055563,1466087752593,'9041414100@winmycase.org','SmackAndroidClient',NULL),
(72,1466086198818,1466087452593,'8289098909@winmycase.org','',NULL),
(72,1466086198818,1466087452593,'7835981999@winmycase.org','SmackAndroidClient',NULL);

/*Table structure for table `ofconversation` */

DROP TABLE IF EXISTS `ofconversation`;

CREATE TABLE `ofconversation` (
  `conversationID` bigint(20) NOT NULL,
  `room` varchar(255) DEFAULT NULL,
  `isExternal` tinyint(4) NOT NULL,
  `startDate` bigint(20) NOT NULL,
  `lastActivity` bigint(20) NOT NULL,
  `messageCount` int(11) NOT NULL,
  PRIMARY KEY (`conversationID`),
  KEY `ofConversation_ext_idx` (`isExternal`),
  KEY `ofConversation_start_idx` (`startDate`),
  KEY `ofConversation_last_idx` (`lastActivity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofconversation` */

insert  into `ofconversation`(`conversationID`,`room`,`isExternal`,`startDate`,`lastActivity`,`messageCount`) values 
(1,NULL,1,1464158257966,1464158257967,1),
(2,NULL,1,1464158330206,1464158330207,1),
(3,NULL,0,1464158820841,1464158929251,2),
(4,NULL,0,1464158826119,1464158940986,2),
(5,NULL,0,1464159550457,1464160460644,14),
(6,NULL,0,1464160358587,1464160358588,1),
(7,NULL,0,1464160473871,1464160583165,11),
(8,NULL,0,1464162255640,1464162556066,7),
(9,NULL,0,1464163360006,1464163807984,22),
(10,NULL,0,1464164121633,1464165227697,7),
(11,NULL,0,1464164259220,1464164259221,1),
(12,NULL,0,1464165334537,1464165334538,1),
(13,NULL,0,1464167331254,1464167887425,15),
(14,NULL,0,1464168132362,1464168481807,11),
(15,NULL,0,1464169649632,1464169710855,2),
(16,NULL,0,1464172522811,1464172906838,8),
(17,NULL,0,1464172938396,1464172938397,1),
(18,NULL,0,1464178180404,1464178197382,2),
(19,NULL,0,1464178914513,1464178914514,1),
(20,NULL,0,1464179122275,1464179520134,4),
(21,NULL,0,1464180149220,1464180321705,2),
(22,NULL,0,1464180647097,1464180686042,3),
(23,NULL,0,1464180698844,1464180718927,4),
(24,NULL,0,1464181502538,1464181512901,2),
(25,NULL,0,1464183185415,1464183185416,1),
(26,NULL,0,1464183970927,1464183970928,1),
(27,NULL,0,1464187304075,1464187405329,2),
(28,NULL,0,1464236235484,1464236235485,1),
(29,NULL,0,1464239704329,1464240515830,6),
(30,NULL,0,1464255233940,1464255262974,3),
(31,NULL,0,1464259800189,1464259803934,2),
(32,NULL,0,1464261754423,1464261754424,1),
(33,NULL,0,1464263164398,1464263526930,5),
(34,NULL,0,1464264161599,1464264161600,1),
(35,NULL,0,1464265108829,1464265824663,8),
(36,NULL,0,1464269234183,1464269234184,1),
(37,NULL,0,1464269338854,1464269338855,1),
(38,NULL,0,1464269382194,1464269382195,1),
(39,NULL,0,1464271670664,1464272311862,6),
(40,NULL,0,1464336654107,1464336950463,29),
(41,NULL,0,1464337068848,1464337071816,2),
(42,NULL,0,1464341513355,1464341513356,1),
(43,NULL,0,1464344916610,1464344916611,1),
(44,NULL,0,1464346116380,1464346125363,2),
(45,NULL,0,1464346817631,1464346817632,1),
(46,NULL,0,1464347446427,1464347848504,5),
(47,NULL,0,1464351228138,1464351236167,2),
(48,NULL,0,1464355566120,1464355566121,1),
(49,NULL,0,1464428651522,1464428651523,1),
(50,NULL,1,1464702894043,1464703189752,6),
(51,NULL,1,1464704521399,1464704521400,1),
(52,NULL,1,1464705687979,1464705687980,1),
(53,NULL,0,1464705844064,1464705930104,10),
(54,NULL,0,1464775848213,1464775848214,1),
(55,NULL,0,1465291900746,1465291900747,1),
(56,NULL,0,1465295295619,1465295312298,3),
(57,NULL,0,1465298940128,1465298947008,3),
(58,NULL,0,1465299957996,1465300090507,5),
(59,NULL,0,1465385054005,1465385283598,8),
(60,NULL,0,1465388243141,1465388243142,1),
(61,NULL,0,1465388334376,1465388373267,3),
(62,NULL,0,1465390587026,1465391326569,39),
(63,NULL,0,1465393803608,1465394530689,94),
(64,NULL,0,1465472886070,1465472886071,1),
(65,NULL,0,1465667528550,1465667528551,1),
(66,NULL,0,1465732029928,1465732029929,1),
(67,NULL,0,1466084373490,1466084567519,2),
(68,NULL,0,1466084697713,1466084697714,1),
(69,NULL,0,1466085568458,1466085568459,1),
(70,NULL,0,1466085906206,1466086577107,6),
(71,NULL,0,1466086055563,1466086893627,9),
(72,NULL,0,1466086198818,1466086611020,3);

/*Table structure for table `ofextcomponentconf` */

DROP TABLE IF EXISTS `ofextcomponentconf`;

CREATE TABLE `ofextcomponentconf` (
  `subdomain` varchar(255) NOT NULL,
  `wildcard` tinyint(4) NOT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `permission` varchar(10) NOT NULL,
  PRIMARY KEY (`subdomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofextcomponentconf` */

/*Table structure for table `ofgroup` */

DROP TABLE IF EXISTS `ofgroup`;

CREATE TABLE `ofgroup` (
  `groupName` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofgroup` */

/*Table structure for table `ofgroupprop` */

DROP TABLE IF EXISTS `ofgroupprop`;

CREATE TABLE `ofgroupprop` (
  `groupName` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY (`groupName`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofgroupprop` */

/*Table structure for table `ofgroupuser` */

DROP TABLE IF EXISTS `ofgroupuser`;

CREATE TABLE `ofgroupuser` (
  `groupName` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `administrator` tinyint(4) NOT NULL,
  PRIMARY KEY (`groupName`,`username`,`administrator`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofgroupuser` */

/*Table structure for table `ofid` */

DROP TABLE IF EXISTS `ofid`;

CREATE TABLE `ofid` (
  `idType` int(11) NOT NULL,
  `id` bigint(20) NOT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofid` */

insert  into `ofid`(`idType`,`id`) values 
(18,96),
(19,91),
(23,1),
(25,183),
(26,2),
(50,73);

/*Table structure for table `ofmessagearchive` */

DROP TABLE IF EXISTS `ofmessagearchive`;

CREATE TABLE `ofmessagearchive` (
  `messageID` bigint(20) DEFAULT NULL,
  `conversationID` bigint(20) NOT NULL,
  `fromJID` varchar(255) NOT NULL,
  `fromJIDResource` varchar(100) DEFAULT NULL,
  `toJID` varchar(255) NOT NULL,
  `toJIDResource` varchar(100) DEFAULT NULL,
  `sentDate` bigint(20) NOT NULL,
  `stanza` text,
  `body` text,
  KEY `ofMessageArchive_con_idx` (`conversationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmessagearchive` */

insert  into `ofmessagearchive`(`messageID`,`conversationID`,`fromJID`,`fromJIDResource`,`toJID`,`toJIDResource`,`sentDate`,`stanza`,`body`) values 
(1,56,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465295295620,'<message to=\"7508789139@winmycase.org\" id=\"1440J-18\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii how are you</body><thread>4af60e34-ffcb-4629-8d00-0c43973a7769</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465295293</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','Hii how are you'),
(2,56,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465295310291,'<message to=\"7508789139@winmycase.org\" id=\"1440J-19\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>4af60e34-ffcb-4629-8d00-0c43973a7769</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465295308</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','Hello'),
(3,56,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465295312298,'<message to=\"7508789139@winmycase.org\" id=\"1440J-20\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>4af60e34-ffcb-4629-8d00-0c43973a7769</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465295310</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','Hii'),
(4,57,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465298940129,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-23\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>f435569b-4fe6-42e3-8e28-6c6b30d16b84</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465298937</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','Hiii'),
(5,57,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465298943010,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-24\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>f435569b-4fe6-42e3-8e28-6c6b30d16b84</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465298940</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','Hello'),
(6,57,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465298947008,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-25\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>f435569b-4fe6-42e3-8e28-6c6b30d16b84</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465298944</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>1</gcm></extra></message>','How are you'),
(7,58,'7508789139@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465299957997,'<message to=\"7835981999@winmycase.org\" id=\"33ScY-18\" type=\"chat\" from=\"7508789139@winmycase.org/SmackAndroidClient\"><body>Hanji sir</body><thread>c3cda356-ad9c-4756-ab5c-33b45a68b5d4</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465299955</date><name>Vivek Sharma</name><opponent>Vijay Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE610569269.png</profile><gcm>0</gcm></extra></message>','Hanji sir'),
(8,58,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465300028726,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-55\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>afccde00-05a7-4be8-96d7-2a45a9ae6b31</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465300026</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hii'),
(9,58,'7508789139@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465300072701,'<message to=\"7835981999@winmycase.org\" id=\"33ScY-25\" type=\"chat\" from=\"7508789139@winmycase.org/SmackAndroidClient\"><body>Jxjdjxhdbbnsjsjsbis sjsjsjdjsn  shssbdbdjbdnndjsjss hbbhis shbdddd sjdjdibd  sbbeibsbb bsbdbbsjd</body><thread>c3cda356-ad9c-4756-ab5c-33b45a68b5d4</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465300070</date><name>Vivek Sharma</name><opponent>Vijay Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE610569269.png</profile><gcm>0</gcm></extra></message>','Jxjdjxhdbbnsjsjsbis sjsjsjdjsn  shssbdbdjbdnndjsjss hbbhis shbdddd sjdjdibd  sbbeibsbb bsbdbbsjd'),
(10,58,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465300072919,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-62\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are youHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are you</body><thread>d729859d-e702-41c0-a27a-944824787b5b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465300070</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are youHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are you'),
(11,58,'7835981999@winmycase.org','SmackAndroidClient','7508789139@winmycase.org',NULL,1465300090507,'<message to=\"7508789139@winmycase.org\" id=\"GK2RS-63\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are youHow are youHow are youHow are youHow are youHow are youHow areHow are youHow are youHow are youHow are youHow are youHow are youHow areHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are you youHow are youHow are you youHow are youHow are you</body><thread>d729859d-e702-41c0-a27a-944824787b5b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465300088</date><name>Vijay Kumar</name><opponent>Vivek Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are youHow are youHow are youHow are youHow are youHow are youHow areHow are youHow are youHow are youHow are youHow are youHow are youHow areHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are youHow are you youHow are youHow are you youHow are youHow are you'),
(12,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385054006,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-25\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385051</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hiii'),
(13,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385073894,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-26\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hello how are you ,</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385071</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hello how are you ,'),
(14,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385084262,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-27\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Naveen Kumar</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385081</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Naveen Kumar'),
(15,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385166704,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-29\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385164</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hiii'),
(16,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385247737,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-38\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385245</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hiii'),
(17,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385272046,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-39\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiiii</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385269</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hiiii'),
(18,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385275539,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-40\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Tyuui</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385272</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Tyuui'),
(19,59,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465385283598,'<message to=\"7835981999@winmycase.org\" id=\"39BS5-41\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Ddff</body><thread>c9e91c82-1fbb-484c-b975-48b3102c7874</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465385281</date><name>Naveen Kumar</name><opponent>Ajay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Ddff'),
(20,60,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1465388243142,'<message to=\"9988950007@winmycase.org\" id=\"Ft91D-41\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>36380ab1-1e8b-457f-8eb4-c22e30600949</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465388243</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>1</gcm></extra></message>','Hii'),
(21,61,'8289098909@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465388334377,'<message to=\"7835981999@winmycase.org\" id=\"Ft91D-98\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>925ae90e-9691-4b8a-bbd1-6e64571b743f</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465388334</date><name>Pankaj Sharma</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hello'),
(22,61,'8289098909@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465388366761,'<message to=\"7835981999@winmycase.org\" id=\"Ft91D-103\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>925ae90e-9691-4b8a-bbd1-6e64571b743f</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465388367</date><name>Pankaj Sharma</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','How are you'),
(23,61,'8289098909@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465388373267,'<message to=\"7835981999@winmycase.org\" id=\"Ft91D-104\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Gvnvxnfxccccvvvvcccv</body><thread>925ae90e-9691-4b8a-bbd1-6e64571b743f</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465388373</date><name>Pankaj Sharma</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Gvnvxnfxccccvvvvcccv'),
(24,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390587027,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-15\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390584</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Hii'),
(25,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390600193,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-16\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390597</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Hiii'),
(26,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390604178,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-17\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390601</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Hello'),
(27,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465390609564,'<message to=\"8800869428@winmycase.org\" id=\"NDWu8-19\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>a2f48c92-b39b-497e-b2f8-d2f652bdc112</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390606</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are you'),
(28,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465390615374,'<message to=\"8800869428@winmycase.org\" id=\"NDWu8-20\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>I am fine</body><thread>a2f48c92-b39b-497e-b2f8-d2f652bdc112</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390612</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','I am fine'),
(29,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465390621296,'<message to=\"8800869428@winmycase.org\" id=\"NDWu8-21\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>This is naveen</body><thread>a2f48c92-b39b-497e-b2f8-d2f652bdc112</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390618</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','This is naveen'),
(30,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390624391,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-21\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Fbjnk</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390621</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Fbjnk'),
(31,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390625690,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-22\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Dsxv</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390623</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Dsxv'),
(32,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390627073,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-23\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Czzcb</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390624</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Czzcb'),
(33,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390628959,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-24\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Dsadgi</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390626</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Dsadgi'),
(34,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465390630670,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-25\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Xfgh</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465390628</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Xfgh'),
(35,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391153088,'<message to=\"8800869428@winmycase.org\" id=\"NDWu8-32\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>16700627-caae-4e90-a455-67e2372d2fe9</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391150</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hii'),
(36,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391157699,'<message to=\"8800869428@winmycase.org\" id=\"NDWu8-33\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>16700627-caae-4e90-a455-67e2372d2fe9</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391154</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are you'),
(37,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391165586,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-29\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Chjj</body><thread>76891c10-49d1-4305-ac79-f75c4350f76b</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391162</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Chjj'),
(38,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391184289,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-37\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>67692761-5d4a-4f17-a845-f997e1a019c8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391181</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hiii'),
(39,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391219752,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-44\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Ghhjj</body><thread>7dddba74-c900-43cf-a3a9-a26c5382d823</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391217</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Ghhjj'),
(40,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391221017,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-45\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Gghj</body><thread>7dddba74-c900-43cf-a3a9-a26c5382d823</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391218</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Gghj'),
(41,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391222216,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-46\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Fgg</body><thread>7dddba74-c900-43cf-a3a9-a26c5382d823</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391219</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Fgg'),
(42,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391223801,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-47\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Fghui</body><thread>7dddba74-c900-43cf-a3a9-a26c5382d823</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391221</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Fghui'),
(43,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391244437,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-55\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hiiii</body><thread>5d4328e9-97b8-466d-b157-0c1e1a27bf15</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391241</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Hiiii'),
(44,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391256175,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-57\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>5d4328e9-97b8-466d-b157-0c1e1a27bf15</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391253</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Hii'),
(45,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391260652,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-58\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>5d4328e9-97b8-466d-b157-0c1e1a27bf15</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391258</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','How are you'),
(46,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391293924,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-65\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Jcidffififog</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391291</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Jcidffififog'),
(47,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391295177,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-66\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Jshsduf</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391292</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Jshsduf'),
(48,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391299295,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-25\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bsbsjsjs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391296</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bsbsjsjs'),
(49,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391303187,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-26\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjdjdje</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391300</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjdjdje'),
(50,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391304255,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-27\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjsjw</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391301</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjsjw'),
(51,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391305075,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-28\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391302</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjs'),
(52,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391305818,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-29\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391302</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjs'),
(53,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391306611,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-30\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hshs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391303</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hshs'),
(54,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391307414,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-31\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bsbs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391304</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bsbs'),
(55,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391309678,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-74\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Jshsdi</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391307</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Jshsdi'),
(56,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391313464,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-33\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>BsBsuw</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391310</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','BsBsuw'),
(57,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391315773,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-76\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Tagslzgx</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391313</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Tagslzgx'),
(58,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391317639,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-35\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hshsjs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391314</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hshsjs'),
(59,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391319913,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-78\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Nxnxxjcfkfg</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391317</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Nxnxxjcfkfg'),
(60,62,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465391321796,'<message to=\"8800869428@winmycase.org\" id=\"MjuJ9-37\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Gzhsjs</body><thread>b322a315-4797-4237-96e4-2fab4e6f115d</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391318</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Gzhsjs'),
(61,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391324401,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-80\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Mxjxjjckvogg</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391321</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Mxjxjjckvogg'),
(62,62,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465391326569,'<message to=\"7835981999@winmycase.org\" id=\"U0MB4-81\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Fzgzyxjkcklg</body><thread>1ecca968-7ba0-4bbe-ac1d-c6261dd157a1</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465391323</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile/><gcm>0</gcm></extra></message>','Fzgzyxjkcklg'),
(63,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393803609,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-15\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hiii</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393800</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hiii'),
(64,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393811737,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-16\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are you</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393808</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are you'),
(65,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393829581,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-22\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>I am fine</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393830</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','I am fine'),
(66,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393869887,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-23\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393867</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hello'),
(67,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393875317,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-24\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>How are you still want</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393872</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','How are you still want'),
(68,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393882074,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-25\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Thajkso</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393879</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Thajkso'),
(69,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393883167,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-26\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hshsns</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393880</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hshsns'),
(70,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393884011,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-27\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393881</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjs'),
(71,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393886889,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-28\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Vkjjccjc</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393887</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Vkjjccjc'),
(72,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393889092,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-29\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hand xhcjcc</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393889</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hand xhcjcc'),
(73,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393891649,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-30\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Dog Januvia cjc</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393892</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Dog Januvia cjc'),
(74,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393893565,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-31\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Blvd bxc</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393894</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Blvd bxc'),
(75,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393896444,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-32\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bshsjjaja</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393893</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bshsjjaja'),
(76,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393897870,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-33\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjsjak</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393895</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjsjak'),
(77,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393900487,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-34\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bsbsj</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393897</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bsbsj'),
(78,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393910163,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-35\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjsj</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393907</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjsj'),
(79,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393912701,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-36\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Duh hccvzgzxhbx</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393913</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Duh hccvzgzxhbx'),
(80,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393915037,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-37\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>B, by b nm</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393915</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','B, by b nm'),
(81,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393917198,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-38\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>B, not lvbb</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393917</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','B, not lvbb'),
(82,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465393918864,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-39\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bsjsagshwj</body><thread>86e07ef4-e278-4fce-93a6-a0d4aaec64d8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393916</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bsjsagshwj'),
(83,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393939756,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-40\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bdjsks</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393940</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bdjsks'),
(84,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393940866,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-41\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjsj</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393941</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjsj'),
(85,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465393941814,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-42\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>43c54bdd-328e-4638-894f-26aec0ccff1a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465393942</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjs'),
(86,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394029768,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-53\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjsjs</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394026</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjsjs'),
(87,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394031397,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-54\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bzjzjs</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394028</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bzjzjs'),
(88,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394032788,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-55\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Jzjz</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394029</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Jzjz'),
(89,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394036759,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-51\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bzbxb ncncncnnv</body><thread>87d72fff-2e2f-4676-805a-d22e2fbde439</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394037</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bzbxb ncncncnnv'),
(90,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394039843,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-52\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Vzhxhxxbxcjc</body><thread>87d72fff-2e2f-4676-805a-d22e2fbde439</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394040</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Vzhxhxxbxcjc'),
(91,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394044232,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-58\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hahaha haha and I am not</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394041</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hahaha haha and I am not'),
(92,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394046209,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-59\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Shsjsj</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394043</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Shsjsj'),
(93,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394047142,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-60\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394044</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hsjs'),
(94,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394050723,'<message to=\"7835981999@winmycase.org\" id=\"6gwSq-56\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Zvbbxbx the best way to get the most important i</body><thread>87d72fff-2e2f-4676-805a-d22e2fbde439</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394051</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Zvbbxbx the best way to get the most important i'),
(95,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394052761,'<message to=\"8800869428@winmycase.org\" id=\"E75JV-62\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bznska</body><thread>1422f73c-0687-4152-a317-08b257553dba</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394049</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bznska'),
(96,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394465279,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-15\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hiiii</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394462</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hiiii'),
(97,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394470816,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-21\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394471</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hii'),
(98,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394474548,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-22\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394475</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hello'),
(99,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394478514,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-23\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>The only  way to get to know if</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394479</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','The only  way to get to know if'),
(100,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394484779,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-19\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Handoff chiji le Jo iii</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394481</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Handoff chiji le Jo iii'),
(101,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394489089,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-25\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsjsksk</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394489</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsjsksk'),
(102,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394490135,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-26\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394490</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjs'),
(103,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394490920,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-27\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394491</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjs'),
(104,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394491486,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-28\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394491</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bs'),
(105,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394492072,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-29\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394492</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bs'),
(106,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394496537,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-30\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjsk</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394497</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjsk'),
(107,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394497478,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-31\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Jsjsks</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394497</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Jsjsks'),
(108,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394497982,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-27\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hdhdh</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394495</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hdhdh'),
(109,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394498534,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-33\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hdnsjs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394499</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hdnsjs'),
(110,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394499115,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-34\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Sbs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394499</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Sbs'),
(111,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394499479,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-28\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dhdjid</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394495</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dhdjid'),
(112,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394499607,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-30\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Sbdjkd</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394496</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Sbdjkd'),
(113,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394499732,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-36\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hd</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394500</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hd'),
(114,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394500267,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-33\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dbdjx</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394497</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dbdjx'),
(115,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394500274,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-38\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394500</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hs'),
(116,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394500813,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-35\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dbs</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394497</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dbs'),
(117,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394500837,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-40\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394501</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bs'),
(118,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394501399,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-42\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394501</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hs'),
(119,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394502743,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-43\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hejenxmd</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394503</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hejenxmd'),
(120,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394503747,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-39\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dhxix</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394500</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dhxix'),
(121,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394503813,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-44\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsndnx</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394504</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsndnx'),
(122,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394504720,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-41\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Xhxjix</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394501</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Xhxjix'),
(123,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394504890,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-46\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsbsns</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394505</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsbsns'),
(124,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394505793,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-43\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdjdid</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394502</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdjdid'),
(125,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394505971,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-48\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsjsns</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394506</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsjsns'),
(126,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394506820,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-45\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdjdid</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394503</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdjdid'),
(127,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394507701,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-51\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Helens snx</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394508</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Helens snx'),
(128,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394507922,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-47\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Nxosos</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394505</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Nxosos'),
(129,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394509136,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-48\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Xbjzxjx</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394506</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Xbjzxjx'),
(130,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394509894,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-54\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsshsbsnz</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394510</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsshsbsnz'),
(131,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394510305,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-50\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Xbxjx</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394507</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Xbxjx'),
(132,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394510655,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-56\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsns</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394511</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsns'),
(133,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394511644,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-52\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dbududdgis</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394508</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dbududdgis'),
(134,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394511799,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-57\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsjsns</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394512</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsjsns'),
(135,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394512570,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-54\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Zjzzi</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394509</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Zjzzi'),
(136,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394512579,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-59\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bdic</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394513</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bdic'),
(137,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394513264,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-61\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394513</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bs'),
(138,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394513567,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-57\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdjxiz</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394510</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdjxiz'),
(139,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394513936,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-63\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Sbs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394514</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Sbs'),
(140,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394514613,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-59\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bxjxjx</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394511</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bxjxjx'),
(141,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394514627,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-64\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Dnd</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394515</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Dnd'),
(142,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394515285,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-66\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Sbs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394515</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Sbs'),
(143,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394515898,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-67\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Sbd</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394516</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Sbd'),
(144,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394515962,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-62\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bxhxjz</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394513</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bxhxjz'),
(145,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394516651,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-69\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Sbs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394517</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Sbs'),
(146,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394517166,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-65\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Xbxhxix</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394514</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Xbxhxix'),
(147,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394518303,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-66\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hxhxhzu</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394515</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hxhxhzu'),
(148,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394519435,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-67\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdhdidi</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394516</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdhdidi'),
(149,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394520333,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-68\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Dbzhhz</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394517</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Dbzhhz'),
(150,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394521299,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-69\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdbd</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394518</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdbd'),
(151,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394522308,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-70\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdhd</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394519</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdhd'),
(152,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394523465,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-71\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdbxhjs</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394520</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdbxhjs'),
(153,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394524883,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-72\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Xuxuxu</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394522</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Xuxuxu'),
(154,63,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465394526350,'<message to=\"8800869428@winmycase.org\" id=\"DMWDr-73\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Bdjrjfi</body><thread>a5f4628b-b3de-4f00-8f95-fa08f7838ddd</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394523</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Bdjrjfi'),
(155,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394529956,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-79\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Bsjdjd</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394530</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Bsjdjd'),
(156,63,'8800869428@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1465394530689,'<message to=\"7835981999@winmycase.org\" id=\"oHO85-80\" type=\"chat\" from=\"8800869428@winmycase.org/SmackAndroidClient\"><body>Hsjs</body><thread>102aa097-2bd7-4b5f-a134-0da80b1385a6</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465394531</date><name>Naveen Kumar</name><opponent>Vijay Kumar</opponent><profile>null</profile><gcm>0</gcm></extra></message>','Hsjs'),
(157,64,'7835981999@winmycase.org','SmackAndroidClient','8800869428@winmycase.org',NULL,1465472886071,'<message to=\"8800869428@winmycase.org\" id=\"dvO7K-20\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>6b988a2f-d80d-4ad9-83dc-0d52e4419f66</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465472882</date><name>Vijay Kumar</name><opponent>Naveen Kumar</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hii'),
(158,65,'9988950007@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1465667528551,'<message to=\"8289098909@winmycase.org\" id=\"H0l3o-20\" type=\"chat\" from=\"9988950007@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>4a3d930f-805e-4a0d-ac69-3e5f37b80f3f</thread><extra xmlns=\"urn:xmpp:extra\"><date>1465667520</date><name>Prithivesh Jerath</name><opponent>Piyush Kumar</opponent><profile>http://54.169.4.205/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-312359887.png</profile><gcm>1</gcm></extra></message>','Hello'),
(159,66,'9882970900@winmycase.org','SmackAndroidClient','7696956545@winmycase.org',NULL,1465732029929,'<message to=\"7696956545@winmycase.org\" id=\"PD033-27\" type=\"chat\" from=\"9882970900@winmycase.org/SmackAndroidClient\"><body>Hello sir</body><thread>ee0d0163-1be9-4ced-adeb-d4ad786c174a</thread><extra xmlns=\"urn:xmpp:extra\"><opponent>Vishal Khatri</opponent><date>1465732025</date><name>Aman Duseja</name><profile>https://scontent.xx.fbcdn.net/v/t1.0-1/p100x100/13407028_1236947483003629_9080439764696675977_n.jpg?oh=ae59c403b2f7164b32484d71874d362c&amp;oe=57D26622</profile><gcm>1</gcm></extra></message>','Hello sir'),
(160,67,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466084373491,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-18\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hello sir</body><thread>66f421b6-306e-499a-9984-e3ccf9f33a57</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466084369</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>1</gcm></extra></message>','Hello sir'),
(161,67,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466084567519,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-19\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.</body><thread>66f421b6-306e-499a-9984-e3ccf9f33a57</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466084563</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>1</gcm></extra></message>','Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.'),
(162,68,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466084697714,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-46\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.</body><thread>00ce2249-55ef-458a-8876-afc3fd4f235e</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466084694</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>0</gcm></extra></message>','Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.'),
(163,69,'8289098909@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1466085568459,'<message to=\"7835981999@winmycase.org\" id=\"kaMH5-66\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>4da70716-da46-4e06-bc76-1f96923c8134</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466085564</date><name>Pankaj Sharma</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hello'),
(164,70,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466085906207,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-150\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>7f216d93-83ce-46c0-a1ce-0f0e6a0a0ae9</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466085902</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>0</gcm></extra></message>','Hii'),
(165,70,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466086017171,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-161\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>208f1c2a-9f0c-429f-9593-8831b3383342</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086013</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>1</gcm></extra></message>','Hii'),
(166,70,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466086049022,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-170\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>1ea504af-04d9-4d8c-ad17-3952b0545d81</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086045</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>0</gcm></extra></message>','Hii'),
(167,71,'9041414100@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1466086055564,'<message to=\"8289098909@winmycase.org\" id=\"m7ieK-38\" type=\"chat\" from=\"9041414100@winmycase.org/SmackAndroidClient\"><body>Sir u have to file first a complaint or representation to dc of your area and then v can file writ in high court</body><thread>9653c324-ff38-4cb2-972d-fa90c6528437</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086049</date><name>Vikas Gupta</name><opponent>Pankaj Sharma</opponent><profile>http://54.169.4.205/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-148732975.png</profile><gcm>0</gcm></extra></message>','Sir u have to file first a complaint or representation to dc of your area and then v can file writ in high court'),
(168,70,'9988950007@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1466086075754,'<message to=\"8289098909@winmycase.org\" id=\"Hv20V-30\" type=\"chat\" from=\"9988950007@winmycase.org/SmackAndroidClient\"><body>Receiving</body><thread>c7803486-bb2b-4174-8049-e8ce0bd51f6a</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086070</date><name>Prithivesh Jerath</name><opponent>Pankaj Sharma</opponent><profile>http://54.169.4.205/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-312359887.png</profile><gcm>0</gcm></extra></message>','Receiving'),
(169,70,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466086084326,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-175\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Okay</body><thread>1ea504af-04d9-4d8c-ad17-3952b0545d81</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086080</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>0</gcm></extra></message>','Okay'),
(170,71,'9041414100@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1466086128095,'<message to=\"8289098909@winmycase.org\" id=\"m7ieK-39\" type=\"chat\" from=\"9041414100@winmycase.org/SmackAndroidClient\"><body>Sir pehle aap mujhe ye btao ki jo poultry farm hai woh residential area me hai</body><thread>9653c324-ff38-4cb2-972d-fa90c6528437</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086121</date><name>Vikas Gupta</name><opponent>Pankaj Sharma</opponent><profile>http://54.169.4.205/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-148732975.png</profile><gcm>0</gcm></extra></message>','Sir pehle aap mujhe ye btao ki jo poultry farm hai woh residential area me hai'),
(171,72,'7835981999@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1466086198819,'<message to=\"8289098909@winmycase.org\" id=\"3BEsq-16\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hii</body><thread>9e1edadf-492b-4944-b08a-c344b5bdab02</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086193</date><name>Vijay Kumar</name><opponent>Pankaj Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hii'),
(172,72,'7835981999@winmycase.org','SmackAndroidClient','8289098909@winmycase.org',NULL,1466086203856,'<message to=\"8289098909@winmycase.org\" id=\"3BEsq-17\" type=\"chat\" from=\"7835981999@winmycase.org/SmackAndroidClient\"><body>Hello</body><thread>9e1edadf-492b-4944-b08a-c344b5bdab02</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086198</date><name>Vijay Kumar</name><opponent>Pankaj Sharma</opponent><profile>http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png</profile><gcm>0</gcm></extra></message>','Hello'),
(173,70,'8289098909@winmycase.org','SmackAndroidClient','9988950007@winmycase.org',NULL,1466086577107,'<message to=\"9988950007@winmycase.org\" id=\"kaMH5-216\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.</body><thread>b28cd67f-2a16-4c84-a7f6-44417ed67763</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086573</date><name>Pankaj Sharma</name><opponent>Prithivesh Jerath</opponent><profile/><gcm>1</gcm></extra></message>','Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.'),
(174,72,'8289098909@winmycase.org','SmackAndroidClient','7835981999@winmycase.org',NULL,1466086611020,'<message to=\"7835981999@winmycase.org\" id=\"kaMH5-227\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.</body><thread>ff5e8e9b-4aaf-41ac-b7c1-a6adf43e97c8</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086607</date><name>Pankaj Sharma</name><opponent>Vijay Kumar</opponent><profile/><gcm>1</gcm></extra></message>','Hum 20 25 logo ka group has barwala me.. hamare aas paaas poultry farm hai aur waha pe bohot makhiyaan hai. Hum unko against complaint Krna chahte hai aur band krwana chahte hai. Koi solution batao.'),
(175,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086712475,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-250\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Sir farm hamare that he pass hai</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086708</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Sir farm hamare that he pass hai'),
(176,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086730302,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-251\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hamare khet hai</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086726</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Hamare khet hai'),
(177,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086741601,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-252\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Farm me hamare the hai</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086738</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Farm me hamare the hai'),
(178,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086770517,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-253\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hmne koi complaint number kri</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086766</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Hmne koi complaint number kri'),
(179,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086783484,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-254\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Aap hi batao kya kre</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086779</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Aap hi batao kya kre'),
(180,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086796287,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-255\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Hume unko jail krwana hi</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086792</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Hume unko jail krwana hi'),
(181,71,'8289098909@winmycase.org','SmackAndroidClient','9041414100@winmycase.org',NULL,1466086893627,'<message to=\"9041414100@winmycase.org\" id=\"kaMH5-256\" type=\"chat\" from=\"8289098909@winmycase.org/SmackAndroidClient\"><body>Aap ye batao ki unko jail ho Sakti hai</body><thread>3babd1da-213d-4c22-9996-c01c493b9826</thread><extra xmlns=\"urn:xmpp:extra\"><date>1466086890</date><name>Pankaj Sharma</name><opponent>Vikas Gupta</opponent><profile/><gcm>0</gcm></extra></message>','Aap ye batao ki unko jail ho Sakti hai');

/*Table structure for table `ofmucaffiliation` */

DROP TABLE IF EXISTS `ofmucaffiliation`;

CREATE TABLE `ofmucaffiliation` (
  `roomID` bigint(20) NOT NULL,
  `jid` text NOT NULL,
  `affiliation` tinyint(4) NOT NULL,
  PRIMARY KEY (`roomID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucaffiliation` */

/*Table structure for table `ofmucconversationlog` */

DROP TABLE IF EXISTS `ofmucconversationlog`;

CREATE TABLE `ofmucconversationlog` (
  `roomID` bigint(20) NOT NULL,
  `sender` text NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `logTime` char(15) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  KEY `ofMucConversationLog_time_idx` (`logTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucconversationlog` */

/*Table structure for table `ofmucmember` */

DROP TABLE IF EXISTS `ofmucmember`;

CREATE TABLE `ofmucmember` (
  `roomID` bigint(20) NOT NULL,
  `jid` text NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `faqentry` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`roomID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucmember` */

/*Table structure for table `ofmucroom` */

DROP TABLE IF EXISTS `ofmucroom`;

CREATE TABLE `ofmucroom` (
  `serviceID` bigint(20) NOT NULL,
  `roomID` bigint(20) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `naturalName` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `lockedDate` char(15) NOT NULL,
  `emptyDate` char(15) DEFAULT NULL,
  `canChangeSubject` tinyint(4) NOT NULL,
  `maxUsers` int(11) NOT NULL,
  `publicRoom` tinyint(4) NOT NULL,
  `moderated` tinyint(4) NOT NULL,
  `membersOnly` tinyint(4) NOT NULL,
  `canInvite` tinyint(4) NOT NULL,
  `roomPassword` varchar(50) DEFAULT NULL,
  `canDiscoverJID` tinyint(4) NOT NULL,
  `logEnabled` tinyint(4) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rolesToBroadcast` tinyint(4) NOT NULL,
  `useReservedNick` tinyint(4) NOT NULL,
  `canChangeNick` tinyint(4) NOT NULL,
  `canRegister` tinyint(4) NOT NULL,
  PRIMARY KEY (`serviceID`,`name`),
  KEY `ofMucRoom_roomid_idx` (`roomID`),
  KEY `ofMucRoom_serviceid_idx` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucroom` */

/*Table structure for table `ofmucroomprop` */

DROP TABLE IF EXISTS `ofmucroomprop`;

CREATE TABLE `ofmucroomprop` (
  `roomID` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY (`roomID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucroomprop` */

/*Table structure for table `ofmucservice` */

DROP TABLE IF EXISTS `ofmucservice`;

CREATE TABLE `ofmucservice` (
  `serviceID` bigint(20) NOT NULL,
  `subdomain` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isHidden` tinyint(4) NOT NULL,
  PRIMARY KEY (`subdomain`),
  KEY `ofMucService_serviceid_idx` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucservice` */

insert  into `ofmucservice`(`serviceID`,`subdomain`,`description`,`isHidden`) values 
(1,'conference',NULL,0);

/*Table structure for table `ofmucserviceprop` */

DROP TABLE IF EXISTS `ofmucserviceprop`;

CREATE TABLE `ofmucserviceprop` (
  `serviceID` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY (`serviceID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofmucserviceprop` */

/*Table structure for table `ofoffline` */

DROP TABLE IF EXISTS `ofoffline`;

CREATE TABLE `ofoffline` (
  `username` varchar(64) NOT NULL,
  `messageID` bigint(20) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `messageSize` int(11) NOT NULL,
  `stanza` text NOT NULL,
  PRIMARY KEY (`username`,`messageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofoffline` */

insert  into `ofoffline`(`username`,`messageID`,`creationDate`,`messageSize`,`stanza`) values 
('7696956545',84,'001465732029927',502,'<message to=\"7696956545@winmycase.org\" id=\"PD033-27\" type=\"chat\" from=\"9882970900@winmycase.org/SmackAndroidClient\"><body>Hello sir</body><thread>ee0d0163-1be9-4ced-adeb-d4ad786c174a</thread><extra xmlns=\"urn:xmpp:extra\"><opponent>Vishal Khatri</opponent><date>1465732025</date><name>Aman Duseja</name><profile>https://scontent.xx.fbcdn.net/v/t1.0-1/p100x100/13407028_1236947483003629_9080439764696675977_n.jpg?oh=ae59c403b2f7164b32484d71874d362c&amp;oe=57D26622</profile><gcm>1</gcm></extra></message>');

/*Table structure for table `ofpresence` */

DROP TABLE IF EXISTS `ofpresence`;

CREATE TABLE `ofpresence` (
  `username` varchar(64) NOT NULL,
  `offlinePresence` text,
  `offlineDate` char(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpresence` */

insert  into `ofpresence`(`username`,`offlinePresence`,`offlineDate`) values 
('7087295403',NULL,'001465214577415'),
('7508195049',NULL,'001465057688815'),
('7508789139',NULL,'001466060725560'),
('7814987797',NULL,'001465209639489'),
('7835981999',NULL,'001466086683557'),
('7837829127',NULL,'001465213128375'),
('7876499933',NULL,'001465309897577'),
('8146262629',NULL,'001465833872611'),
('8289098909',NULL,'001466134983988'),
('8427468851',NULL,'001464263870698'),
('8529913312',NULL,'001465379528432'),
('8558049380',NULL,'001465318159351'),
('8587855123',NULL,'001465949074374'),
('8699244007',NULL,'001464365497861'),
('8800869428',NULL,'001465566345535'),
('9041414100',NULL,'001466134039024'),
('9216709853',NULL,'001465813823511'),
('9310061582',NULL,'001464263284856'),
('9417013448',NULL,'001465207208284'),
('9417068545',NULL,'001465634503048'),
('9417071990',NULL,'001464452932311'),
('9417157019',NULL,'001465136831733'),
('9417382387',NULL,'001466048860781'),
('9417406880',NULL,'001465467170921'),
('9464890952',NULL,'001465894255349'),
('9530661541',NULL,'001464499107243'),
('9646118903',NULL,'001465133186256'),
('9646198438',NULL,'001465228460341'),
('9716164342',NULL,'001464877180811'),
('9780054161',NULL,'001466008244995'),
('9781815353',NULL,'001465717770788'),
('9805500241',NULL,'001464349369064'),
('9812146926',NULL,'001465382680538'),
('9814272836',NULL,'001465538878600'),
('9814627169',NULL,'001465720593274'),
('9814731100',NULL,'001465210629940'),
('9855083355',NULL,'001465436930233'),
('9876733518',NULL,'001465638334117'),
('9878332211',NULL,'001465869888369'),
('9882970900',NULL,'001465734232512'),
('9888001234',NULL,'001465357318004'),
('9888218909',NULL,'001466051739865'),
('9888574716',NULL,'001466062723912'),
('9888822334',NULL,'001464360507524'),
('9915367075',NULL,'001465219097996'),
('9988381192',NULL,'001465971843032'),
('9988950007',NULL,'001466087894324');

/*Table structure for table `ofprivacylist` */

DROP TABLE IF EXISTS `ofprivacylist`;

CREATE TABLE `ofprivacylist` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isDefault` tinyint(4) NOT NULL,
  `list` text NOT NULL,
  PRIMARY KEY (`username`,`name`),
  KEY `ofPrivacyList_default_idx` (`username`,`isDefault`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofprivacylist` */

/*Table structure for table `ofprivate` */

DROP TABLE IF EXISTS `ofprivate`;

CREATE TABLE `ofprivate` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `namespace` varchar(200) NOT NULL,
  `privateData` text NOT NULL,
  PRIMARY KEY (`username`,`name`,`namespace`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofprivate` */

/*Table structure for table `ofproperty` */

DROP TABLE IF EXISTS `ofproperty`;

CREATE TABLE `ofproperty` (
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofproperty` */

insert  into `ofproperty`(`name`,`propValue`) values 
('adminConsole.port','9090'),
('adminConsole.securePort','9091'),
('connectionProvider.className','org.jivesoftware.database.DefaultConnectionProvider'),
('conversation.idleTime','10'),
('conversation.maxAge','0'),
('conversation.maxRetrievable','0'),
('conversation.maxTime','60'),
('conversation.messageArchiving','true'),
('conversation.metadataArchiving','true'),
('conversation.roomArchiving','false'),
('conversation.roomsArchived',''),
('database.defaultProvider.connectionTimeout','1.0'),
('database.defaultProvider.driver','com.mysql.jdbc.Driver'),
('database.defaultProvider.maxConnections','25'),
('database.defaultProvider.minConnections','5'),
('database.defaultProvider.password','e5bb7619891d250312396557e6b0b57502aeb419d421d4f1'),
('database.defaultProvider.serverURL','jdbc:mysql://localhost:3306/dbopenfire?rewriteBatchedStatements=true'),
('database.defaultProvider.testAfterUse','false'),
('database.defaultProvider.testBeforeUse','false'),
('database.defaultProvider.testSQL','select 1'),
('database.defaultProvider.username','0479613e22a7569ea4c826649b622ff1786ec80bc06109db'),
('locale','en'),
('passwordKey','DRIJM3WUosb70I6'),
('plugin.restapi.secret','VElPuQ2hK2a7I54G'),
('provider.admin.className','org.jivesoftware.openfire.admin.DefaultAdminProvider'),
('provider.auth.className','org.jivesoftware.openfire.auth.DefaultAuthProvider'),
('provider.group.className','org.jivesoftware.openfire.group.DefaultGroupProvider'),
('provider.lockout.className','org.jivesoftware.openfire.lockout.DefaultLockOutProvider'),
('provider.securityAudit.className','org.jivesoftware.openfire.security.DefaultSecurityAuditProvider'),
('provider.user.className','org.jivesoftware.openfire.user.DefaultUserProvider'),
('provider.vcard.className','org.igniterealtime.openfire.plugin.avatarresizer.DelegateVCardProvider'),
('sasl.scram-sha-1.iteration-count','4096'),
('setup','true'),
('stream.management.active','true'),
('stream.management.requestFrequency','5'),
('update.lastCheck','1466055656770'),
('xmpp.auth.anonymous','true'),
('xmpp.client.idle','-1'),
('xmpp.client.idle.ping','true'),
('xmpp.domain','winmycase.org'),
('xmpp.session.conflict-limit','0'),
('xmpp.socket.ssl.active','true');

/*Table structure for table `ofpubsubaffiliation` */

DROP TABLE IF EXISTS `ofpubsubaffiliation`;

CREATE TABLE `ofpubsubaffiliation` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `affiliation` varchar(10) NOT NULL,
  PRIMARY KEY (`serviceID`,`nodeID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubaffiliation` */

insert  into `ofpubsubaffiliation`(`serviceID`,`nodeID`,`jid`,`affiliation`) values 
('pubsub','','ip-172-31-27-1','owner'),
('rko@ip-172-31-27-1','http://jabber.org/protocol/tune','rko@ip-172-31-27-1','owner'),
('rko@ip-172-31-27-1','rko@ip-172-31-27-1','rko@ip-172-31-27-1','owner'),
('rohit@ip-172-31-27-1','http://jabber.org/protocol/tune','rohit@ip-172-31-27-1','owner'),
('rohit@ip-172-31-27-1','rohit@ip-172-31-27-1','rohit@ip-172-31-27-1','owner');

/*Table structure for table `ofpubsubdefaultconf` */

DROP TABLE IF EXISTS `ofpubsubdefaultconf`;

CREATE TABLE `ofpubsubdefaultconf` (
  `serviceID` varchar(100) NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) NOT NULL,
  `persistItems` tinyint(4) NOT NULL,
  `maxItems` int(11) NOT NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `accessModel` varchar(10) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `replyPolicy` varchar(15) DEFAULT NULL,
  `associationPolicy` varchar(15) NOT NULL,
  `maxLeafNodes` int(11) NOT NULL,
  PRIMARY KEY (`serviceID`,`leaf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubdefaultconf` */

insert  into `ofpubsubdefaultconf`(`serviceID`,`leaf`,`deliverPayloads`,`maxPayloadSize`,`persistItems`,`maxItems`,`notifyConfigChanges`,`notifyDelete`,`notifyRetract`,`presenceBased`,`sendItemSubscribe`,`publisherModel`,`subscriptionEnabled`,`accessModel`,`language`,`replyPolicy`,`associationPolicy`,`maxLeafNodes`) values 
('pubsub',0,0,0,0,0,1,1,1,0,0,'publishers',1,'open','English',NULL,'all',-1),
('pubsub',1,1,5120,0,-1,1,1,1,0,1,'publishers',1,'open','English',NULL,'all',-1),
('rko@ip-172-31-27-1',0,0,0,0,0,1,1,1,0,0,'publishers',1,'presence','English',NULL,'all',-1),
('rko@ip-172-31-27-1',1,1,5120,0,-1,1,1,1,0,1,'publishers',1,'presence','English',NULL,'all',-1),
('rko@winmycase.org',0,0,0,0,0,1,1,1,0,0,'publishers',1,'presence','English',NULL,'all',-1),
('rko@winmycase.org',1,1,5120,0,-1,1,1,1,0,1,'publishers',1,'presence','English',NULL,'all',-1),
('rohit@ip-172-31-27-1',0,0,0,0,0,1,1,1,0,0,'publishers',1,'presence','English',NULL,'all',-1),
('rohit@ip-172-31-27-1',1,1,5120,0,-1,1,1,1,0,1,'publishers',1,'presence','English',NULL,'all',-1),
('rohit@winmycase.org',0,0,0,0,0,1,1,1,0,0,'publishers',1,'presence','English',NULL,'all',-1),
('rohit@winmycase.org',1,1,5120,0,-1,1,1,1,0,1,'publishers',1,'presence','English',NULL,'all',-1);

/*Table structure for table `ofpubsubitem` */

DROP TABLE IF EXISTS `ofpubsubitem`;

CREATE TABLE `ofpubsubitem` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `payload` mediumtext,
  PRIMARY KEY (`serviceID`,`nodeID`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubitem` */

/*Table structure for table `ofpubsubnode` */

DROP TABLE IF EXISTS `ofpubsubnode`;

CREATE TABLE `ofpubsubnode` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `leaf` tinyint(4) NOT NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `deliverPayloads` tinyint(4) NOT NULL,
  `maxPayloadSize` int(11) DEFAULT NULL,
  `persistItems` tinyint(4) DEFAULT NULL,
  `maxItems` int(11) DEFAULT NULL,
  `notifyConfigChanges` tinyint(4) NOT NULL,
  `notifyDelete` tinyint(4) NOT NULL,
  `notifyRetract` tinyint(4) NOT NULL,
  `presenceBased` tinyint(4) NOT NULL,
  `sendItemSubscribe` tinyint(4) NOT NULL,
  `publisherModel` varchar(15) NOT NULL,
  `subscriptionEnabled` tinyint(4) NOT NULL,
  `configSubscription` tinyint(4) NOT NULL,
  `accessModel` varchar(10) NOT NULL,
  `payloadType` varchar(100) DEFAULT NULL,
  `bodyXSLT` varchar(100) DEFAULT NULL,
  `dataformXSLT` varchar(100) DEFAULT NULL,
  `creator` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `replyPolicy` varchar(15) DEFAULT NULL,
  `associationPolicy` varchar(15) DEFAULT NULL,
  `maxLeafNodes` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceID`,`nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubnode` */

insert  into `ofpubsubnode`(`serviceID`,`nodeID`,`leaf`,`creationDate`,`modificationDate`,`parent`,`deliverPayloads`,`maxPayloadSize`,`persistItems`,`maxItems`,`notifyConfigChanges`,`notifyDelete`,`notifyRetract`,`presenceBased`,`sendItemSubscribe`,`publisherModel`,`subscriptionEnabled`,`configSubscription`,`accessModel`,`payloadType`,`bodyXSLT`,`dataformXSLT`,`creator`,`description`,`language`,`name`,`replyPolicy`,`associationPolicy`,`maxLeafNodes`) values 
('pubsub','',0,'001464154801627','001464154801627',NULL,0,0,0,0,1,1,1,0,0,'publishers',1,0,'open','','','','ip-172-31-27-1','','English','',NULL,'all',-1),
('rko@ip-172-31-27-1','http://jabber.org/protocol/tune',1,'001464158233368','001464158233368','rko@ip-172-31-27-1',1,5120,0,-1,1,1,1,0,1,'publishers',1,0,'presence','','','','rko@ip-172-31-27-1','','English','',NULL,NULL,0),
('rko@ip-172-31-27-1','rko@ip-172-31-27-1',0,'001464158233363','001464158233363',NULL,0,0,0,0,1,1,1,0,0,'publishers',1,0,'presence','','','','rko@ip-172-31-27-1','','English','',NULL,'all',-1),
('rohit@ip-172-31-27-1','http://jabber.org/protocol/tune',1,'001464158108770','001464158108770','rohit@ip-172-31-27-1',1,5120,0,-1,1,1,1,0,1,'publishers',1,0,'presence','','','','rohit@ip-172-31-27-1','','English','',NULL,NULL,0),
('rohit@ip-172-31-27-1','rohit@ip-172-31-27-1',0,'001464158108766','001464158108766',NULL,0,0,0,0,1,1,1,0,0,'publishers',1,0,'presence','','','','rohit@ip-172-31-27-1','','English','',NULL,'all',-1);

/*Table structure for table `ofpubsubnodegroups` */

DROP TABLE IF EXISTS `ofpubsubnodegroups`;

CREATE TABLE `ofpubsubnodegroups` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `rosterGroup` varchar(100) NOT NULL,
  KEY `ofPubsubNodeGroups_idx` (`serviceID`,`nodeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubnodegroups` */

/*Table structure for table `ofpubsubnodejids` */

DROP TABLE IF EXISTS `ofpubsubnodejids`;

CREATE TABLE `ofpubsubnodejids` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `associationType` varchar(20) NOT NULL,
  PRIMARY KEY (`serviceID`,`nodeID`,`jid`(70))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubnodejids` */

/*Table structure for table `ofpubsubsubscription` */

DROP TABLE IF EXISTS `ofpubsubsubscription`;

CREATE TABLE `ofpubsubsubscription` (
  `serviceID` varchar(100) NOT NULL,
  `nodeID` varchar(100) NOT NULL,
  `id` varchar(100) NOT NULL,
  `jid` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `state` varchar(15) NOT NULL,
  `deliver` tinyint(4) NOT NULL,
  `digest` tinyint(4) NOT NULL,
  `digest_frequency` int(11) NOT NULL,
  `expire` char(15) DEFAULT NULL,
  `includeBody` tinyint(4) NOT NULL,
  `showValues` varchar(30) DEFAULT NULL,
  `subscriptionType` varchar(10) NOT NULL,
  `subscriptionDepth` tinyint(4) NOT NULL,
  `keyword` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`serviceID`,`nodeID`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofpubsubsubscription` */

/*Table structure for table `ofremoteserverconf` */

DROP TABLE IF EXISTS `ofremoteserverconf`;

CREATE TABLE `ofremoteserverconf` (
  `xmppDomain` varchar(255) NOT NULL,
  `remotePort` int(11) DEFAULT NULL,
  `permission` varchar(10) NOT NULL,
  PRIMARY KEY (`xmppDomain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofremoteserverconf` */

/*Table structure for table `ofroster` */

DROP TABLE IF EXISTS `ofroster`;

CREATE TABLE `ofroster` (
  `rosterID` bigint(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `jid` varchar(1024) NOT NULL,
  `sub` tinyint(4) NOT NULL,
  `ask` tinyint(4) NOT NULL,
  `recv` tinyint(4) NOT NULL,
  `nick` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rosterID`),
  KEY `ofRoster_unameid_idx` (`username`),
  KEY `ofRoster_jid_idx` (`jid`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofroster` */

insert  into `ofroster`(`rosterID`,`username`,`jid`,`sub`,`ask`,`recv`,`nick`) values 
(7,'8800869428','7835981999@winmycase.org',3,-1,-1,'Vijay Kumar'),
(10,'9646198438','9781815353@winmycase.org',1,-1,-1,'Abhishek Bhardwaj'),
(14,'9646198438','9815992045@winmycase.org',0,0,-1,'Anurag Singh Tagra'),
(15,'9646198438','7835981999@winmycase.org',3,-1,-1,'Ajay Kumar'),
(16,'7835981999','9646198438@winmycase.org',3,-1,-1,'Meenakshi koshal'),
(17,'7835981999','8800869428@winmycase.org',3,-1,-1,'Naveen Kumar'),
(18,'9646198438','9988950007@winmycase.org',1,-1,-1,'Prithivesh Jerath'),
(25,'7508789139','7835981999@winmycase.org',3,-1,-1,'Vijay Kumar'),
(26,'7835981999','7508789139@winmycase.org',3,-1,-1,'Vivek Sharma'),
(27,'9646198438','9067500001@winmycase.org',0,0,-1,'Gurbrinder Singh Chahal'),
(28,'9067500001','9646198438@winmycase.org',0,-1,1,NULL),
(29,'9646198438','9417382387@winmycase.org',1,-1,-1,'Balkar Singh'),
(30,'9417382387','9646198438@winmycase.org',2,-1,-1,NULL),
(31,'9646198438','9417013448@winmycase.org',1,-1,-1,'Sunil Kumar Vashishth'),
(32,'9417013448','9646198438@winmycase.org',2,-1,-1,NULL),
(33,'9646198438','9417072887@winmycase.org',0,0,-1,'Anil Garg'),
(34,'9417072887','9646198438@winmycase.org',0,-1,1,NULL),
(35,'9781815353','9646198438@winmycase.org',2,-1,-1,NULL),
(36,'9988950007','9646198438@winmycase.org',2,-1,-1,NULL),
(37,'9815992045','9646198438@winmycase.org',0,-1,1,NULL),
(38,'9646198438','9464890952@winmycase.org',1,-1,-1,'JASPREET SINGH ADVOCATE'),
(39,'9464890952','9646198438@winmycase.org',2,-1,-1,NULL),
(40,'9814272836','7835981999@winmycase.org',3,-1,-1,'Ajay Kumar'),
(41,'7835981999','9814272836@winmycase.org',3,-1,-1,'rkorohit'),
(42,'8800869428','9781815353@winmycase.org',1,-1,-1,'Abhishek Bhardwaj'),
(43,'9781815353','8800869428@winmycase.org',2,-1,-1,NULL),
(44,'9780054161','9464890952@winmycase.org',1,-1,-1,'JASPREET SINGH ADVOCATE'),
(45,'9464890952','9780054161@winmycase.org',2,-1,-1,NULL),
(46,'9780054161','9988950007@winmycase.org',3,-1,-1,'Prithivesh Jerath'),
(47,'9988950007','9780054161@winmycase.org',3,-1,-1,'Romy Khurana'),
(48,'7508789139','9988950007@winmycase.org',3,-1,-1,'Prithivesh Jerath'),
(49,'9988950007','7508789139@winmycase.org',3,-1,-1,'Vivek Sharma'),
(51,'9805500241','7835981999@winmycase.org',3,-1,-1,'Ajay Kumar'),
(52,'7835981999','9805500241@winmycase.org',3,-1,-1,'Ravi Kumar'),
(53,'9805500241','9781815353@winmycase.org',1,-1,-1,'Abhishek Bhardwaj'),
(54,'9781815353','9805500241@winmycase.org',2,-1,-1,NULL),
(55,'8289098909','9988950007@winmycase.org',3,-1,-1,'Prithivesh Jerath'),
(56,'9988950007','8289098909@winmycase.org',3,-1,-1,'Pankaj Sharma'),
(57,'9417071990','9814731100@winmycase.org',1,-1,-1,'HemRaj Bhardwaj'),
(58,'9814731100','9417071990@winmycase.org',2,-1,-1,NULL),
(59,'9530661541','9417013448@winmycase.org',1,-1,-1,'Sunil Kumar Vashishth'),
(60,'9417013448','9530661541@winmycase.org',2,-1,-1,NULL),
(61,'9530661541','9067500001@winmycase.org',0,0,-1,'Gurbrinder Singh Chahal'),
(62,'9067500001','9530661541@winmycase.org',0,-1,1,NULL),
(66,'8800869428','9815992045@winmycase.org',0,0,-1,'Anurag Singh Tagra'),
(67,'9815992045','8800869428@winmycase.org',0,-1,1,NULL),
(71,'7814987797','9814731100@winmycase.org',0,0,-1,'HemRaj Bhardwaj'),
(72,'9814731100','7814987797@winmycase.org',0,-1,1,NULL),
(73,'8289098909','9041414100@winmycase.org',3,-1,-1,'Vikas Gupta'),
(74,'9041414100','8289098909@winmycase.org',3,-1,-1,'Pankaj Sharma'),
(76,'9216709853','9780849692@winmycase.org',0,0,-1,'Arvinder Singh Khosa'),
(77,'9780849692','9216709853@winmycase.org',0,-1,1,NULL),
(78,'9216709853','7696956545@winmycase.org',0,0,-1,'Vishal Khatri'),
(79,'7696956545','9216709853@winmycase.org',0,-1,1,NULL),
(80,'8289098909','7835981999@winmycase.org',3,-1,-1,'Vijay Kumar'),
(81,'7835981999','8289098909@winmycase.org',3,-1,-1,'Pankaj Sharma'),
(82,'9882970900','9067500001@winmycase.org',0,0,-1,'Gurbrinder Singh Chahal'),
(83,'9067500001','9882970900@winmycase.org',0,-1,1,NULL),
(84,'9882970900','8558049380@winmycase.org',0,0,-1,'Maninder Singh Dhindsa'),
(85,'8558049380','9882970900@winmycase.org',0,-1,1,NULL),
(86,'9882970900','9781815353@winmycase.org',0,0,-1,'Abhishek Bhardwaj'),
(87,'9781815353','9882970900@winmycase.org',0,-1,1,NULL),
(88,'9882970900','7696956545@winmycase.org',0,0,-1,'Vishal Khatri'),
(89,'7696956545','9882970900@winmycase.org',0,-1,1,NULL),
(90,'8556976273','9781815353@winmycase.org',0,0,-1,'Abhishek Bhardwaj'),
(91,'9781815353','8556976273@winmycase.org',0,-1,1,NULL);

/*Table structure for table `ofrostergroups` */

DROP TABLE IF EXISTS `ofrostergroups`;

CREATE TABLE `ofrostergroups` (
  `rosterID` bigint(20) NOT NULL,
  `rank` tinyint(4) NOT NULL,
  `groupName` varchar(255) NOT NULL,
  PRIMARY KEY (`rosterID`,`rank`),
  KEY `ofRosterGroup_rosterid_idx` (`rosterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofrostergroups` */

/*Table structure for table `ofrrds` */

DROP TABLE IF EXISTS `ofrrds`;

CREATE TABLE `ofrrds` (
  `id` varchar(100) NOT NULL,
  `updatedDate` bigint(20) NOT NULL,
  `bytes` mediumblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofrrds` */

insert  into `ofrrds`(`id`,`updatedDate`,`bytes`) values 
('conversations',1466139412624,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0c\0o\0n\0v\0e\0r\0s\0a\0t\0i\0o\0n\0s\0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Ì›››››ﬁ@ÃÃÃÃÃÕ?¡\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?◊É◊Ô:x?¿ÃÃÃÃÃÕ?≥ò8õN2p?Å\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?¶&V+?IÙüIÙü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?£5êpL÷B?Ø§˙O§˙P?Å\0\0\0\0\0\0\0\0?Ç}\'“}\'“?Ç}\'“}\'“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?≥é8„é8‰¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0@[Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0?£hÀ|4G∞?åÕJMÖ!‹?n·Ó·Ó¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<@v\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('muc_occupants',1466139412609,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0m\0u\0c\0_\0o\0c\0c\0u\0p\0a\0n\0t\0s\0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('muc_rooms',1466139412632,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0m\0u\0c\0_\0r\0o\0o\0m\0s\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('muc_traffic',1466139412627,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0m\0u\0c\0_\0o\0u\0t\0g\0o\0i\0n\0g\0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0m\0u\0c\0_\0i\0n\0c\0o\0m\0i\0n\0g\0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('muc_users',1466139412638,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0m\0u\0c\0_\0u\0s\0e\0r\0s\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('packet_count',1466139412631,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0p\0a\0c\0k\0e\0t\0_\0c\0o\0u\0n\0t\0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.?Õ›››››ﬁ\0\0\0\0\0\0\0\0?Èôôôôôö?±?››››››ﬁ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Èôôôôôö?±?≈UUUUUU?±?Õ›››››ﬁ@ÃÃÃÃÃÕ@-wwwwww@\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÓÓÓÓÓÓÔ?≈UUUUUU?Áwwwwww\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Õ›››››ﬁ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?Í™™™™™´?±\0\0\0\0\0\0\0\0?¯àààààâ\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!@;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@ù\0;°‰É?Û¡l¡l?Ûåú˚•I?»-Çÿ-Çÿ?¡«q«r?¿[∞[∞?ÿU0¸*ò~?–8„é8„é?Œffffff?ªªªªªªº?÷}\'“}\'“?»DDDDDD?‘-Çÿ-Çÿ?‚lõ&…≤m?Ï¡l¡l?”>ìÈ>ìÈ?≈›››››ﬁ?√“}\'“}(?¡∞[∞[?øq«q«?∆¡l¡l?¡?‰l¡l¡¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0@çê\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0?‡=[Õô)g?ÿg\\-$∑£?≈‰^E‰^F¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<@æ\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('proxyTransferRate',1466139412621,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0p\0r\0o\0x\0y\0T\0r\0a\0n\0s\0f\0e\0r\0R\0a\0t\0e\0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('server_bytes',1466139412606,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0s\0e\0r\0v\0e\0r\0_\0b\0y\0t\0e\0s\0_\0o\0u\0t\0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0s\0e\0r\0v\0e\0r\0_\0b\0y\0t\0e\0s\0_\0i\0n\0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.?±ä™™™™´\0\0\0\0\0\0\0\0?Ãiôôôôö\0\0\0\0\0\0\0\0?øLÃÃÃÃÕ?ö*™™™™´\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?’æÓÓÓÓÔ\0\0\0\0\0\0\0\0?±åÃÃÃÃÕ?ùwwwwww?≤™™™™™´?‰√ªªªªº@rDDDDD?ÁÜÓÓÓÓÔ\0\0\0\0\0\0\0\0?Ã?±ªªªªº?≈áwwwww\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?≤5UUUUU\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?«wwwww\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?›=››››ﬁ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.?°Í™™™™´\0\0\0\0\0\0\0\0?ªlÃÃÃÃÕ\0\0\0\0\0\0\0\0?≤yôôôôö?Ñ™™™™™´\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ƒ\"\"\"\"\"\0\0\0\0\0\0\0\0?°‚\"\"\"\"\"?|ÓÓÓÓÓÔ?°ÓÓÓÓÓÔ?ÿ6ÓÓÓÓÔ?Ù%UUUUU?‘’UUUUU\0\0\0\0\0\0\0\0?æ \0\0\0\0\0?°ÓÓÓÓÓÔ?¥†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?°ÓÓÓÓÓÔ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?¥†\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ŒKªªªªº\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!@ó\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÏB¯P!ã?–õ]›››ﬁ?‘¯˛≠–?©)ÙüIÙü?¢düIÙüJ?•wwwwww?≥∆:»3d?±M\'“}\'“?∞U››››ﬁ?üU››››ﬁ?∫õ33333?©u?¥8q«q«?¬úÁ˝s†?»ûIÙüIı?≥›Çÿ-Çÿ?ßéÓÓÓÓÔ?£˜§˙O§˙?†¶ÿ-Çÿ.?†¢fffff?®“`∂a?¢Æ}\'“}(?¿ò™™™™´¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0@V\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?⁄Ì‹ úà¯?¿M?ƒ±Õè‡k?ú4¡l¡?ìNÓÓÓÓÔ?ìõªªªªº?¢(…\r4dá?°–˙O§˙P?°Oé8„é9?ëÍO§˙O•?¨£ªªªªº?ùl˙O§˙P?•4q«q«?≥Ì⁄R7i?º$-Çÿ-É?•é™™™™´?ô4üIÙüJ?ï€∞[∞?ífffff?ë\"\"\"\"\"\"?õz}\'“}(?î–[∞[?∞ñÃÃÃÃÕ¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0@hh\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0?øä÷Èa¿K?∏>.DSÙ[?¶›\r–›\r—¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0@WÓ¿\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0?Ø<‹jäÚ?™£Å&%∞?ò—1ì1ì¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<@ùó—\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0@èâ\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('server_sessions',1466139412635,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0s\0e\0r\0v\0e\0r\0_\0s\0e\0s\0s\0i\0o\0n\0s\0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<\0\0\0\0\0\0\0\0\0\0\0\0\0\0$\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0'),
('sessions',1466139412602,'\0J\0R\0o\0b\0i\0n\0,\0 \0v\0e\0r\0s\0i\0o\0n\0 \00\0.\01\0 \0\0\0\0\0\0\0<\0\0\0\0\0\0\0\0\0\0WcÇ‡\0s\0e\0s\0s\0i\0o\0n\0s\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0G\0A\0U\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0\0\0\0\0\0,\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0@\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0L\0A\0S\0T\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\0<¯\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\0\0\0\00@Z\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@\0\0\0\0\0\0@\0\0\0\0\0\0@DDDDDD@	@	@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@DDDDDD@àààààâ@\n™™™™™´@\0\0\0\0\0\0@\0\0\0\0\0\0@UUUUUU@UUUUUU@ffffff@\0\0\0\0\0\0@DDDDDD@333333@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\0\0\0\0\0\0@\"\"\"\"\"\"@ôôôôôö@\0\0\0\0\0\0@@\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0†\0\0!@ï¸\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@YÍ\Zé√?˝¢\"\"\"\"\"@æÄ—[Œ?Ùªªªªªº?¯\"\"\"\"\"\"?˝\'“}\'“}?Û„ÒÒÑy?Ù8„é8‰?ˇX-Çÿ-É?˙ªªªªªº@\n∞[∞[@	ÙüIÙü@Œ8„é8‰@ß•Ãù{I?˘0[∞[@õ∞[∞@\rÏ¡l¡@áq«r?˙üIÙüIı?¸`∂`∂@l¡l¡@››››ﬁ@‘üIÙüJ¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0\'`\0\0@Ω*\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¯\0\0\0\0\0\0?˘˙_ï˙†@áJc{k@!Ó·Ó¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0\0A\0V\0E\0R\0A\0G\0E\0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 \0 ?‡\0\0\0\0\0\0\0\0®¿\0\0\0<@Ò10\0\0\0\0\0\0\0\0\0\0%\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0¯\0\0\0\0\0\0');

/*Table structure for table `ofsaslauthorized` */

DROP TABLE IF EXISTS `ofsaslauthorized`;

CREATE TABLE `ofsaslauthorized` (
  `username` varchar(64) NOT NULL,
  `principal` text NOT NULL,
  PRIMARY KEY (`username`,`principal`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofsaslauthorized` */

/*Table structure for table `ofsecurityauditlog` */

DROP TABLE IF EXISTS `ofsecurityauditlog`;

CREATE TABLE `ofsecurityauditlog` (
  `msgID` bigint(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `entryStamp` bigint(20) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `node` varchar(255) NOT NULL,
  `details` text,
  PRIMARY KEY (`msgID`),
  KEY `ofSecurityAuditLog_tstamp_idx` (`entryStamp`),
  KEY `ofSecurityAuditLog_uname_idx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofsecurityauditlog` */

insert  into `ofsecurityauditlog`(`msgID`,`username`,`entryStamp`,`summary`,`node`,`details`) values 
(1,'admin',1464158634141,'set server property xmpp.domain','ip-172-31-27-1','xmpp.domain = winmycase.org'),
(2,'admin',1464169167820,'created new user 9814272836','ip-172-31-27-1','name = Rohit Kumar, email = null, admin = false'),
(3,'admin',1464172615029,'deleted user 7508789139','ip-172-31-27-1','full jid was 7508789139@winmycase.org'),
(4,'admin',1464172652643,'created new user 7508789139','ip-172-31-27-1','name = Vivek Sharma, email = admin, admin = false'),
(5,'admin',1464172730804,'created new user 9780054161','ip-172-31-27-1','name = Romy Khurana, email = null, admin = false'),
(6,'admin',1464172775783,'created new user 9899872940','ip-172-31-27-1','name = Pragalbha Attri, email = null, admin = false'),
(7,'admin',1464172819994,'created new user 7508195049','ip-172-31-27-1','name = Ishita Dahiya, email = null, admin = false'),
(8,'admin',1464172887776,'created new user 7508455189','ip-172-31-27-1','name = Sohan Singh, email = null, admin = false'),
(9,'admin',1464172928713,'created new user 9988950007','ip-172-31-27-1','name = Prithivesh Jerath, email = null, admin = false'),
(10,'admin',1464172960657,'created new user 7087577992','ip-172-31-27-1','name = Dhivya Jerath, email = null, admin = false'),
(11,'admin',1464173000880,'created new user 8146262629','ip-172-31-27-1','name = Abhishek Bansal, email = null, admin = false'),
(12,'admin',1464173065421,'created new user 9876733518','ip-172-31-27-1','name = Neeru Setia, email = null, admin = false'),
(13,'admin',1464173084517,'created new user 7837829127','ip-172-31-27-1','name = Naman Setia, email = null, admin = false'),
(14,'admin',1464173179158,'created new user 9878779288','ip-172-31-27-1','name = Piyush Setia, email = null, admin = false'),
(15,'admin',1464173201422,'created new user 9888574716','ip-172-31-27-1','name = Bimal Khurana, email = null, admin = false'),
(16,'admin',1464173218295,'created new user 9814920603','ip-172-31-27-1','name = Savita Bhandari, email = null, admin = false'),
(17,'admin',1464173259010,'created new user 9417013448','ip-172-31-27-1','name = Sunil Kumar Vashishth, email = null, admin = false'),
(18,'admin',1464173275541,'created new user 7709875836','ip-172-31-27-1','name = Anureet Kaur, email = null, admin = false'),
(19,'admin',1464173308310,'created new user 9797236162','ip-172-31-27-1','name = Ishan Khan, email = null, admin = false'),
(20,'admin',1464173329461,'created new user 9876122129','ip-172-31-27-1','name = VINEET GANDHI, email = null, admin = false'),
(21,'admin',1464173346874,'created new user 8146087871','ip-172-31-27-1','name = Sahil Sahni, email = null, admin = false'),
(22,'admin',1464173393694,'created new user 8879441434','ip-172-31-27-1','name = Anuj Sharma, email = null, admin = false'),
(23,'admin',1464173415500,'created new user 9560900036','ip-172-31-27-1','name = Reema Saxena, email = null, admin = false'),
(24,'admin',1464173457353,'created new user 9888406369','ip-172-31-27-1','name = avinash kaur, email = null, admin = false'),
(25,'admin',1464173480641,'created new user 8558850058','ip-172-31-27-1','name = Aditya Singh, email = null, admin = false'),
(26,'admin',1464173498380,'created new user 8699244007','ip-172-31-27-1','name = Aarti Thakur, email = null, admin = false'),
(27,'admin',1464173529748,'created new user 8699869017','ip-172-31-27-1','name = Kavita Garg, email = null, admin = false'),
(28,'admin',1464173554296,'created new user 8600463331','ip-172-31-27-1','name = Tarun Marwaha, email = null, admin = false'),
(29,'admin',1464173587070,'created new user 7276290970','ip-172-31-27-1','name = archit mehat, email = null, admin = false'),
(30,'admin',1464173603164,'created new user 9878887470','ip-172-31-27-1','name = Rupali Marwaha, email = null, admin = false'),
(31,'admin',1464173624340,'created new user 9890805549','ip-172-31-27-1','name = Tushar Kharayat, email = null, admin = false'),
(32,'admin',1464173652909,'created new user 9988381192','ip-172-31-27-1','name = Neharika Prakash, email = null, admin = false'),
(33,'admin',1464173671401,'created new user 9888021489','ip-172-31-27-1','name = Aadesh Singh, email = null, admin = false'),
(34,'admin',1464173690230,'created new user 7696231593','ip-172-31-27-1','name = Harleen Kaur, email = null, admin = false'),
(35,'admin',1464173706104,'created new user 8437659925','ip-172-31-27-1','name = Pranav Sharma, email = null, admin = false'),
(36,'admin',1464173733777,'created new user 9711161198','ip-172-31-27-1','name = Apeksha Kakkar, email = null, admin = false'),
(37,'admin',1464173751628,'created new user 9417870195','ip-172-31-27-1','name = Shiv Kumar, email = null, admin = false'),
(38,'admin',1464173793481,'created new user 9888218909','ip-172-31-27-1','name = Pridhi Jaswinder Sandhu, email = null, admin = false'),
(39,'admin',1464173819938,'created new user 9417134830','ip-172-31-27-1','name = Shourya Garg, email = null, admin = false'),
(40,'admin',1464173835177,'created new user 9781732820','ip-172-31-27-1','name = Puneet Sachdeva, email = null, admin = false'),
(41,'admin',1464173853120,'created new user 7340902686','ip-172-31-27-1','name = Vrinda Sahni, email = null, admin = false'),
(42,'admin',1464173875905,'created new user 9417157019','ip-172-31-27-1','name = Vipan Vashisht, email = admin, admin = false'),
(43,'admin',1464173903960,'created new user 9876975055','ip-172-31-27-1','name = Narendra Kumar, email = null, admin = false'),
(44,'admin',1464173934229,'created new user 9810158227','ip-172-31-27-1','name = Mahima Madan, email = null, admin = false'),
(45,'admin',1464173960616,'created new user 9988994547','ip-172-31-27-1','name = Tegbir Singh Batth, email = null, admin = false'),
(46,'admin',1464173979187,'created new user 9872206135','ip-172-31-27-1','name = Manmohan Gupta, email = null, admin = false'),
(47,'admin',1464174005257,'created new user 9599530105','ip-172-31-27-1','name = Nishant Kumar, email = null, admin = false'),
(48,'admin',1464174021592,'created new user 9584554416','ip-172-31-27-1','name = Fgfd Gdf, email = null, admin = false'),
(49,'admin',1464174082416,'created new user 7311516161','ip-172-31-27-1','name = Naveen Kumar, email = null, admin = false'),
(50,'admin',1464174106810,'created new user 9816566886','ip-172-31-27-1','name = Ravi Kumar, email = null, admin = false'),
(51,'admin',1464174126240,'created new user 9888364435','ip-172-31-27-1','name = Pankaj Chauhan, email = null, admin = false'),
(52,'admin',1464174145065,'created new user 9815193820','ip-172-31-27-1','name = Naresh Khurana, email = null, admin = false'),
(53,'admin',1464174170662,'created new user 7042620820','ip-172-31-27-1','name = Zeeshan Ali, email = null, admin = false'),
(54,'admin',1464174191852,'created new user 9653297432','ip-172-31-27-1','name = Gaurav Kamboj, email = null, admin = false'),
(55,'admin',1464174214125,'created new user 7837458770','ip-172-31-27-1','name = Aman Kumar Upadhyay, email = null, admin = false'),
(56,'admin',1464174234597,'created new user 8692008187','ip-172-31-27-1','name = Karishma Shenoy, email = null, admin = false'),
(57,'admin',1464174254361,'created new user 9891255235','ip-172-31-27-1','name = Riaz Junaidi, email = null, admin = false'),
(58,'admin',1464174277996,'created new user 9781815353','ip-172-31-27-1','name = Abhishek Bhardwaj, email = null, admin = false'),
(59,'admin',1464174311697,'created new user 9780849692','ip-172-31-27-1','name = Arvinder Singh Khosa, email = null, admin = false'),
(60,'admin',1464174331676,'created new user 9619847120','ip-172-31-27-1','name = Anuj Sharma, email = null, admin = false'),
(61,'admin',1464174359907,'created new user 7696956545','ip-172-31-27-1','name = Vishal Khatri, email = null, admin = false'),
(62,'admin',1464174386376,'created new user 7837258925','ip-172-31-27-1','name = Ajay Kumar, email = null, admin = false'),
(63,'admin',1464174402813,'created new user 9670931066','ip-172-31-27-1','name = Suraj Singh, email = null, admin = false'),
(64,'admin',1464174417596,'created new user 8591090190','ip-172-31-27-1','name = Navkaran Singh, email = null, admin = false'),
(65,'admin',1464174438119,'created new user 9999966705','ip-172-31-27-1','name = Kandarp Yadav, email = null, admin = false'),
(66,'admin',1464174474297,'created new user 8727900223','ip-172-31-27-1','name = Advocate Mansi Bansal, email = null, admin = false'),
(67,'admin',1464174493873,'created new user 9872439872','ip-172-31-27-1','name = Himanshu Verma, email = null, admin = false'),
(68,'admin',1464174509937,'created new user 7814727222','ip-172-31-27-1','name = Sahil Bhatia, email = null, admin = false'),
(69,'admin',1464174531569,'created new user 9814333334','ip-172-31-27-1','name = PARAMBIR SINGH SUNNY, email = null, admin = false'),
(70,'admin',1464174547692,'created new user 8729060449','ip-172-31-27-1','name = Harnek Singh, email = null, admin = false'),
(71,'admin',1464174569492,'created new user 9463477901','ip-172-31-27-1','name = Harmandeep S Sidhu, email = null, admin = false'),
(72,'admin',1464174585614,'created new user 7696978936','ip-172-31-27-1','name = Akash Rathore, email = null, admin = false'),
(73,'admin',1464174606061,'created new user 9501812794','ip-172-31-27-1','name = Gurpreet Sandhu, email = null, admin = false'),
(74,'admin',1464174621369,'created new user 8146433503','ip-172-31-27-1','name = Kanchan Nishad, email = null, admin = false'),
(75,'admin',1464174646101,'created new user 9855728994','ip-172-31-27-1','name = Charanjit Singh, email = null, admin = false'),
(76,'admin',1464174667734,'created new user 9417554410','ip-172-31-27-1','name = Om Prakash Banth, email = null, admin = false'),
(77,'admin',1464174684322,'created new user 9888641739','ip-172-31-27-1','name = Rajneesh Kathuria, email = null, admin = false'),
(78,'admin',1464174703674,'created new user 9876410323','ip-172-31-27-1','name = Rajneesh Kathuria, email = null, admin = false'),
(79,'admin',1464174724573,'created new user 9814037222','ip-172-31-27-1','name = Parwinder Singh, email = null, admin = false'),
(80,'admin',1464174738880,'created new user 7039252017','ip-172-31-27-1','name = Shivaji Salunkhe, email = null, admin = false'),
(81,'admin',1464174756120,'created new user 9888813829','ip-172-31-27-1','name = Sunita Chauhan, email = null, admin = false'),
(82,'admin',1464174769912,'created new user 9953559934','ip-172-31-27-1','name = Abhishek Singh, email = null, admin = false'),
(83,'admin',1464174783632,'created new user 9417466157','ip-172-31-27-1','name = Abdul Sattar, email = null, admin = false'),
(84,'admin',1464174794730,'created new user 9447891152','ip-172-31-27-1','name = 9447891152, email = null, admin = false'),
(85,'admin',1464174834459,'created new user 7307803067','ip-172-31-27-1','name = Deepak Guleria, email = null, admin = false'),
(86,'admin',1464174862549,'created new user 9463030200','ip-172-31-27-1','name = Jagdish Singh, email = null, admin = false'),
(87,'admin',1464174884908,'created new user 9464890952','ip-172-31-27-1','name = JASPREET SINGH ADVOCATE, email = null, admin = false'),
(88,'admin',1464174900270,'created new user 9646118903','ip-172-31-27-1','name = Amarjit Singh, email = null, admin = false'),
(89,'admin',1464174921388,'created new user 9814731100','ip-172-31-27-1','name = HemRaj Bhardwaj, email = null, admin = false'),
(90,'admin',1464174934760,'created new user 9780184869','ip-172-31-27-1','name = Mukesh Rana, email = null, admin = false'),
(91,'admin',1464174951152,'created new user 9780738869','ip-172-31-27-1','name = Sukhbir Singh, email = null, admin = false'),
(92,'admin',1464174967873,'created new user 9815951401','ip-172-31-27-1','name = Guri S, email = null, admin = false'),
(93,'admin',1464174985064,'created new user 7835381999','ip-172-31-27-1','name = Ajay Kumar, email = null, admin = false'),
(94,'admin',1464175004240,'created new user 9915938219','ip-172-31-27-1','name = Renu sood, email = null, admin = false'),
(95,'admin',1464175018950,'created new user 9815062687','ip-172-31-27-1','name = Sandeep kumar, email = null, admin = false'),
(96,'admin',1464175036005,'created new user 9417540755','ip-172-31-27-1','name = Ved parkash grover, email = null, admin = false'),
(97,'admin',1464175233496,'created new user 8699944660','ip-172-31-27-1','name = Vikas Arora, email = null, admin = false'),
(98,'admin',1464175271703,'created new user 9417071990','ip-172-31-27-1','name = Rajvinder Singh, email = null, admin = false'),
(99,'admin',1464175286281,'created new user 9814015351','ip-172-31-27-1','name = Sanjay Goyal, email = null, admin = false'),
(100,'admin',1464175302186,'created new user 8427468851','ip-172-31-27-1','name = Tajwinder Singh, email = null, admin = false'),
(101,'admin',1464175322981,'created new user 9468129989','ip-172-31-27-1','name = J P Jangu, email = null, admin = false'),
(102,'admin',1464175342727,'Updated connection settings for SOCKET_C2S','ip-172-31-27-1','plain: enabled=true, port=5222\nlegacy: enabled=true, port=5223\n'),
(103,'admin',1464175342733,'set server property xmpp.client.idle','ip-172-31-27-1','xmpp.client.idle = 360000'),
(104,'admin',1464175342742,'set server property xmpp.client.idle.ping','ip-172-31-27-1','xmpp.client.idle.ping = true'),
(105,'admin',1464175348856,'created new user 9067500001','ip-172-31-27-1','name = Gurbrinder Singh Chahal, email = null, admin = false'),
(106,'admin',1464175366685,'created new user 9216270057','ip-172-31-27-1','name = Dr Ashok, email = null, admin = false'),
(107,'admin',1464175383469,'created new user 9501043078','ip-172-31-27-1','name = Prithi Vohrs, email = null, admin = false'),
(108,'admin',1464175406341,'created new user 9876996768','ip-172-31-27-1','name = Devinder Gill, email = null, admin = false'),
(109,'admin',1464175423370,'created new user 9417382387','ip-172-31-27-1','name = Balkar Singh, email = null, admin = false'),
(110,'admin',1464175439688,'created new user 9888900026','ip-172-31-27-1','name = Amarjit Singh, email = null, admin = false'),
(111,'admin',1464175453929,'created new user 8558093989','ip-172-31-27-1','name = Kiranbir Singh, email = null, admin = false'),
(112,'admin',1464175473481,'created new user 8556967387','ip-172-31-27-1','name = Som Jhazz, email = null, admin = false'),
(113,'admin',1464175490884,'created new user 8556976273','ip-172-31-27-1','name = Rahul Dhiman, email = null, admin = false'),
(114,'admin',1464175509513,'created new user 9310061582','ip-172-31-27-1','name = Hardeep Singh, email = null, admin = false'),
(115,'admin',1464175532695,'created new user 9996136888','ip-172-31-27-1','name = Parveen Chhabra	, email = null, admin = false'),
(116,'admin',1464175566138,'created new user 9815494605','ip-172-31-27-1','name = MOHAN LAL, email = null, admin = false'),
(117,'admin',1464175593873,'created new user 9501974444','ip-172-31-27-1','name = Herain Jindal, email = null, admin = false'),
(118,'admin',1464175618362,'created new user 9569746078','ip-172-31-27-1','name = Rakesh Sharma, email = null, admin = false'),
(119,'admin',1464175645368,'created new user 9803856345','ip-172-31-27-1','name = Gulshan Kumar, email = null, admin = false'),
(120,'admin',1464175664413,'created new user 9779589735','ip-172-31-27-1','name = Harish Kumar, email = null, admin = false'),
(121,'admin',1464175685678,'created new user 9780879173','ip-172-31-27-1','name = Jitender Kumar, email = null, admin = false'),
(122,'admin',1464175700762,'created new user 7508695313','ip-172-31-27-1','name = Seema devi, email = null, admin = false'),
(123,'admin',1464175732049,'created new user 8284017371','ip-172-31-27-1','name = Rakesh Meena, email = null, admin = false'),
(124,'admin',1464175763550,'created new user 9780439498','ip-172-31-27-1','name = Gourav Sharma, email = null, admin = false'),
(125,'admin',1464175780990,'created new user 9417072887','ip-172-31-27-1','name = Anil Garg, email = null, admin = false'),
(126,'admin',1464175803544,'created new user 9811224455','ip-172-31-27-1','name = Rohit Kumar, email = null, admin = false'),
(127,'admin',1464175830641,'created new user 9041905775','ip-172-31-27-1','name = Rohit Ummat, email = null, admin = false'),
(128,'admin',1464175848445,'created new user 9815992045','ip-172-31-27-1','name = Anurag Singh Tagra, email = null, admin = false'),
(129,'admin',1464175864669,'created new user 7696074205','ip-172-31-27-1','name = Nain Singh, email = null, admin = false'),
(130,'admin',1464175886174,'created new user 8146991195','ip-172-31-27-1','name = Navneet Jindal, email = null, admin = false'),
(131,'admin',1464175906145,'created new user 9888822334','ip-172-31-27-1','name = Ishaan Vashishth, email = null, admin = false'),
(132,'admin',1464175923888,'created new user 9988977998','ip-172-31-27-1','name = Pahwa Pallav, email = null, admin = false'),
(133,'admin',1464175945490,'created new user 8950227538','ip-172-31-27-1','name = Balkar Singh, email = null, admin = false'),
(134,'admin',1464175961266,'created new user 9805526803','ip-172-31-27-1','name = Suresh Kumar, email = null, admin = false'),
(135,'admin',1464175976297,'created new user 9814624007','ip-172-31-27-1','name = Rajbir Singh, email = null, admin = false'),
(136,'admin',1464175996449,'created new user 9852741318','ip-172-31-27-1','name = Ranjit Kumar, email = null, admin = false'),
(137,'admin',1464176014852,'created new user 9416958674','ip-172-31-27-1','name = SANJAY KUMAR, email = null, admin = false'),
(138,'admin',1464176029821,'created new user 7696007076','ip-172-31-27-1','name = Rajesh Kumar, email = null, admin = false'),
(139,'admin',1464176064984,'created new user 9915604400','ip-172-31-27-1','name = saurabh singla, email = null, admin = false'),
(140,'admin',1464176081344,'created new user 9855144551','ip-172-31-27-1','name = Ravinder Singh, email = null, admin = false'),
(141,'admin',1464176095532,'created new user 8303121365','ip-172-31-27-1','name = Prashant Shivhare, email = null, admin = false'),
(142,'admin',1464176115198,'created new user 9449249387','ip-172-31-27-1','name = Shylaja KM, email = null, admin = false'),
(143,'admin',1464176129595,'created new user 9988163999','ip-172-31-27-1','name = Naresh Bansal, email = null, admin = false'),
(144,'admin',1464176143322,'created new user 7837056502','ip-172-31-27-1','name = Meena Bansal, email = null, admin = false'),
(145,'admin',1464176156689,'created new user 8427366339','ip-172-31-27-1','name = Madhvi Verma, email = null, admin = false'),
(146,'admin',1464176172195,'created new user 7508547484','ip-172-31-27-1','name = Madhvi Verma, email = null, admin = false'),
(147,'admin',1464176194764,'created new user 7838586844','ip-172-31-27-1','name = Deepak Agrawal, email = null, admin = false'),
(148,'admin',1464176210724,'created new user 9914502500','ip-172-31-27-1','name = Ramesh Kandewala, email = null, admin = false'),
(149,'admin',1464176225007,'created new user 9958764816','ip-172-31-27-1','name = Aastha Aggarwal, email = null, admin = false'),
(150,'admin',1464176238420,'created new user 9416330560','ip-172-31-27-1','name = Rahesh Deep Goyal, email = null, admin = false'),
(151,'admin',1464176254209,'created new user 9819916755','ip-172-31-27-1','name = Lokesh Jain, email = null, admin = false'),
(152,'admin',1464176269328,'created new user 7837842827','ip-172-31-27-1','name = kamlesh chahar, email = null, admin = false'),
(153,'admin',1464176288137,'created new user 9888345677','ip-172-31-27-1','name = Chanchal K. Singla, email = null, admin = false'),
(154,'admin',1464176301969,'created new user 9005074252','ip-172-31-27-1','name = Rohit PATEL, email = null, admin = false'),
(155,'admin',1464176316856,'created new user 7838333008','ip-172-31-27-1','name = Ikshit Vashisht, email = null, admin = false'),
(156,'admin',1464176334573,'created new user 8283834455','ip-172-31-27-1','name = Ashish S, email = null, admin = false'),
(157,'admin',1464176349173,'created new user 9582450395','ip-172-31-27-1','name = Shagun Srivastava, email = null, admin = false'),
(158,'admin',1464176409121,'edited user 9447891152','ip-172-31-27-1','set name = Rajat kumar, email = null, admin = false'),
(159,'admin',1464178443765,'deleted user 9584554416','ip-172-31-27-1','full jid was 9584554416@winmycase.org'),
(160,'admin',1464181953908,'deleted user 9988163999','ip-172-31-27-1','full jid was 9988163999@winmycase.org'),
(161,'admin',1464181970651,'deleted user 7837056502','ip-172-31-27-1','full jid was 7837056502@winmycase.org'),
(162,'admin',1464181980137,'deleted user 8427366339','ip-172-31-27-1','full jid was 8427366339@winmycase.org'),
(163,'admin',1464181991566,'deleted user 7508547484','ip-172-31-27-1','full jid was 7508547484@winmycase.org'),
(164,'admin',1464182004424,'deleted user 7838586844','ip-172-31-27-1','full jid was 7838586844@winmycase.org'),
(165,'admin',1464182012337,'deleted user 9914502500','ip-172-31-27-1','full jid was 9914502500@winmycase.org'),
(166,'admin',1464182021737,'deleted user 9958764816','ip-172-31-27-1','full jid was 9958764816@winmycase.org'),
(167,'admin',1464182030605,'deleted user 9416330560','ip-172-31-27-1','full jid was 9416330560@winmycase.org'),
(168,'admin',1464182040625,'deleted user 9819916755','ip-172-31-27-1','full jid was 9819916755@winmycase.org'),
(169,'admin',1464182053346,'deleted user 7837842827','ip-172-31-27-1','full jid was 7837842827@winmycase.org'),
(170,'admin',1464182062287,'deleted user 9888345677','ip-172-31-27-1','full jid was 9888345677@winmycase.org'),
(171,'admin',1464182075112,'deleted user 9005074252','ip-172-31-27-1','full jid was 9005074252@winmycase.org'),
(172,'admin',1464182083459,'deleted user 7838333008','ip-172-31-27-1','full jid was 7838333008@winmycase.org'),
(173,'admin',1464182091412,'deleted user 8283834455','ip-172-31-27-1','full jid was 8283834455@winmycase.org'),
(174,'admin',1464182099677,'deleted user 9582450395','ip-172-31-27-1','full jid was 9582450395@winmycase.org'),
(175,'admin',1464698152468,'set server property xmpp.domain','ip-172-31-27-1','xmpp.domain = winmycase.org'),
(176,'admin',1464703310216,'set server property xmpp.domain','ip-172-31-27-1','xmpp.domain = winmycase.org'),
(177,'admin',1464774963049,'deleted user 9138181087','ip-172-31-27-1','full jid was 9138181087@winmycase.org'),
(178,'admin',1465310135361,'set server property xmpp.domain','ip-172-31-27-1','xmpp.domain = winmycase.org'),
(179,'admin',1465385157405,'closed session for address 7835981999@winmycase.org/SmackAndroidClient','ip-172-31-27-1',NULL),
(180,'admin',1465385239086,'closed session for address 8800869428@winmycase.org/SmackAndroidClient','ip-172-31-27-1',NULL),
(181,'admin',1465385473831,'deleted user rko','ip-172-31-27-1','full jid was rko@winmycase.org'),
(182,'admin',1465385482374,'deleted user rohit','ip-172-31-27-1','full jid was rohit@winmycase.org');

/*Table structure for table `ofuser` */

DROP TABLE IF EXISTS `ofuser`;

CREATE TABLE `ofuser` (
  `username` varchar(64) NOT NULL,
  `storedKey` varchar(32) DEFAULT NULL,
  `serverKey` varchar(32) DEFAULT NULL,
  `salt` varchar(32) DEFAULT NULL,
  `iterations` int(11) DEFAULT NULL,
  `plainPassword` varchar(32) DEFAULT NULL,
  `encryptedPassword` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `creationDate` char(15) NOT NULL,
  `modificationDate` char(15) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `ofUser_cDate_idx` (`creationDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofuser` */

insert  into `ofuser`(`username`,`storedKey`,`serverKey`,`salt`,`iterations`,`plainPassword`,`encryptedPassword`,`name`,`email`,`creationDate`,`modificationDate`) values 
('7039252017','g7IWUbawPBArVsFrmiiH2LC9bSs=','DK3+Af9HfzfSDEln8iBzPz+mXCU=','p87KINvmsUAiuoZj+UiFqMs08imwCNsp',4096,NULL,'fa7f4ae1fc5dcaddd7def07faa5a39b4c4c6fec38a12f69090ed65241cd41d2c','Shivaji Salunkhe',NULL,'001464174738861','001464174738861'),
('7042620820','iZTNL/WPlEK2pyclC62Huj4t09o=','swNVCfPXzBYVjUQG80xuj3GzWY8=','MwUfXyFlOSM/qX9XHWg8j//zcfKxGUp9',4096,NULL,'62777f977fd5e6c5468a9316b702c3e7e53f8f1ee2459cc1cae3e43e067d4354','Zeeshan Ali',NULL,'001464174170650','001464174170650'),
('7087295403','B1wD0o7C2kWgce5TfvlECe1Cfo0=','1Gm4+vDZDIfu/35+xyr7SIMWsGs=','ySgeMZ1vpJB6P7DGU09rnnkslDT3xyye',4096,NULL,'f8e44b04a00a607bfdb97a6e6e6c751229f9c49796f44f013cb2a9628327380d','Deepinder Pal',NULL,'001464974592062','001464974592062'),
('7087577992','JlHv46zaV3+/ycHv6Y/O7hDJN8Q=','fVLCdeGp9os3JM3zSsX/m+qIn0Q=','PtEXAfopFTXTisJsADjIK2t2X0gOt8nW',4096,NULL,'378db2dea3b448459f9cb34bcaa885b2ee2af2634bf8010cfa6b0d7e6fcbcb4a','Dhivya Jerath',NULL,'001464172960645','001464172960645'),
('7276290970','hLFP8vGs62q3g0WnywzEUUrc0V8=','/K08V+akMJYv7iFck1NxhUlHlts=','Vt7P3xAnLOI69NraiF8hK0gPPKwmdkQo',4096,NULL,'9ab709ddfc6080ab23d5c3b1969f870743c592c5dfdf0d8020b426db0b92b666','archit mehat',NULL,'001464173587058','001464173587058'),
('7307803067','4bcnefeiWzn8Tc7e8ldrC3RBg9w=','6TONMOmST4zg3dpLDIHrdvELrZg=','OTUPiHvAwXNsKZKKu6OrPZOlpRwAXFb2',4096,NULL,'72b5fc1abfc620b2da01d081438039c429e9bfa184972db1c869c5d8e901475e','Deepak Guleria',NULL,'001464174834447','001464174834447'),
('7311516161','0DkQj9RKQA8hyMcLREyB+AhR2/w=','PHSsz32pVebEYLvx1tiJ/2BVhZQ=','7+jbCs0U0GSzO+xC6haMoVCtVWj8kU7A',4096,NULL,'e457b088384fd5eb4c08cbb96fa111d743ab217910d21696bf5822c3a5df828c','Naveen Kumar',NULL,'001464174082404','001464174082404'),
('7340902686','Hi5Ai8Leds5SDN3LOgCHCqBcUDI=','RYHmd1J97difCGGe5kHD/Z986D8=','jln9TdR1GvxN2m6/HHps/XdzJys+e65l',4096,NULL,'f44c21a1b9a2fe72a0282c59b7a1bfdc546e1617f735a2c92d8dfbff4ee87b1d','Vrinda Sahni',NULL,'001464173853107','001464173853107'),
('7508195049','AOHRFEc1ilqCeQpvdlLeJ8d5jDg=','A3y4d9kkFkp/9bGP6guV2i8bPhM=','CXA6ueap/hpLk4mxAsYFUGLNi8yoZD5x',4096,NULL,'4e2963384d447d3338a1daa97117f632ac0038877a953b6709b0e97e8cf1ff65','Ishita Dahiya',NULL,'001464172819982','001464172819982'),
('7508455189','tG0rQRzEd5Y+o3hIU5UcM+QIkXY=','J7t723u8ALYGRtKJSs2KhPvhCTI=','7n2cv9Zkc0IwTeC1wPnCFdccilON6D5u',4096,NULL,'969530e56f5d224d7688a58b74612e6299453ab66b2a9e99f355094f6b6b11df','Sohan Singh',NULL,'001464172887762','001464172887762'),
('7508695313','yPkc4RC8NCO34+DJMV0h4n4UMiA=','Blefn5m16KqpkV62b2Vm2tr4l9I=','HyYTN7Fd9raUqIaXWN/7Iv04IHAvMivP',4096,NULL,'02c33a45d0af1c8e5514f0f7c36935e3c0b47472cbf2cdf9851a2f4a6df3c726','Seema devi',NULL,'001464175700750','001464175700750'),
('7508789139','I6eLUe+Gz0Aa21etHOkLTfxLvPs=','idmUL7BwJfkxgk/3QvlJftAqoY0=','QNKJhgLgPE8xqio3er39NnXJ+RPSeKEN',4096,NULL,'aa2923e77b18eb94f9c90c34c6d04bc59c702cb4b34ce714d6f0c0f72cc37ea4','Vivek Sharma','admin','001464172652630','001464172652630'),
('7696007076','uTwZJSJCiUI37i0Cu+Kt0rVmVS0=','+qz7lxTFHIf/cCqWVUe7jNisa40=','qrLLXAE3VNzkHqdLLEePJz98krMSPUkA',4096,NULL,'7f207c0439f85e33aa596e756818c8687202e8d6548d84680a10951d2caa2126','Rajesh Kumar',NULL,'001464176029806','001464176029806'),
('7696074205','BgDmplqwZ1A5c+4Xvyn9AkRh6WE=','xA282XIQ2999GSaBt7R3ZtQCLrI=','u5/JHyZfdDtTahWxuDD28BzKm6U/7rHh',4096,NULL,'9881b8495e66ca6db0f115738fa0b78eced4a3fbd0b92dd0b58e22067662aa3d','Nain Singh',NULL,'001464175864656','001464175864656'),
('7696231593','Rn3/Fy6S6CkhXgOHOJJGt/G/qWw=','KO/YtYhoaT/XfOieB8na2vXR7WQ=','dUrXx4a+ZRsqGtaWaze7mFs5gfTPMuGL',4096,NULL,'0247c944cce4dc1b357c7ee97b1e351c15ed3c6abf81f6b9b832b3deab582540','Harleen Kaur',NULL,'001464173690212','001464173690212'),
('7696956545','ZK2QQN+sDn2cYqsH06/aAjMsJUg=','z8O0EDR6QJ0ClQoHpaCO90d/jLk=','Tl6rTvKcZuTA5w9UWpcsrtSxqEhaCuQW',4096,NULL,'1773564152c236387fc24bbc6de75a948e3377122300ac083afb90700b5cb1bd','Vishal Khatri',NULL,'001464174359885','001464174359885'),
('7696978936','MWheIenp6mZNTXMomFHFdyom5uM=','eO1ZNMjOopAHhbomp1j1v81Y7lA=','2Jeh99QttYMcO4FsegnllpZBMqm9SLMe',4096,NULL,'1efd2424ae3d89ca83a150787292e469608bb620212e6dbd2a388c62d432b240','Akash Rathore',NULL,'001464174585598','001464174585598'),
('7709875836','vu788L4wWqQ1CPw5RZs5Wo5VG6k=','C0OJmtO0v3oeWojvEjEHXPkh5Eg=','Ei9qoUdR2e4aqVEDH/dHos37r3urRPa7',4096,NULL,'414d3fa0aef24346e6b31085836da047a4e9ebf6aecf22fb68cbba66fd3495da','Anureet Kaur',NULL,'001464173275527','001464173275527'),
('7814727222','bOAVKIMQUNs0JSfVo4HOP0QgKnA=','Bto2t4yajSPIKrDyqRWO+3Qf3i8=','KhVvWCJ/8mzLLTLizgDwCRFb496VOxcV',4096,NULL,'91b53f6cf666a0cdc91b37b25c1553a5f0f8523d0fa982edbe91b2ff9ec452da','Sahil Bhatia',NULL,'001464174509925','001464174509925'),
('7814987797','kjsSrQZw0shkXA1PRU+0lpf7UNk=','1qqtrxukHCzCfn2gnGUyGhryRmk=','yttqVIkBG2RBGumu5FcqmtUlHBkc6ST3',4096,NULL,'03e0883dd8ace7bf6f99bc9c4f6debb526f7bcc7ae53dfc579c4eee8388b4b0e','Rohit Arsh Pathak',NULL,'001464359405095','001464359405095'),
('7835381999','k9pz+8UoALf2smmyCrpuDfk6/kg=','SUrifyxcLP27iU2tpcLIzkz/+LI=','267GkYCzbfZ+Yw4ALVFknQVDn11Sy5lX',4096,NULL,'381d3b5c69b921bf211dbc45aaa1306ece7505c20e64cb46c6544a362ba67ccc','Ajay Kumar',NULL,'001464174985052','001464174985052'),
('7835981999','rA5ntI7HinF4iCMu1dft3UbFhhw=','+h8ExiNUoueRUngQhIUjaMYI+so=','6bOaWdtVQ26JC2WjDndgdy02Pxi8FjQS',4096,NULL,'523977a93d545971110daaaddf978846b789c24bd7e6ecbf25b342820846ed45','Ajay Kumar',NULL,'001464159516596','001464159516596'),
('7837258925','PnSXAquiuQlcVcmavcwqtCSJrtE=','LyhsELz9l+rEJSlrYIa4JFu72nQ=','LweICWgG/jGW4HsqDDttbVs1Cg+aMJqM',4096,NULL,'daa2f93f7eaab9c89a01c8f16873fe2276e76cb8ff5dd6bdfe2353df026c3939','Ajay Kumar',NULL,'001464174386361','001464174386361'),
('7837458770','YSdpXYtukB7+kK38tPzjUlamTSo=','AVItPCbGAZnHtwIQMmwB/Lr20us=','ScWM9NHT3BY0nzNxsvYskYAvfbfbTGHS',4096,NULL,'98ec91693aae1ea6feefe4e3cf34187eb391ff2ae5b5fcad3419ac4dbe752fa4','Aman Kumar Upadhyay',NULL,'001464174214114','001464174214114'),
('7837829127','3HWbDWCA5QiwLAd7HSdb+a6tXz4=','mKvw1Mck94+TotlxjiEBI7XAq/E=','yLrBxaBqpwT2I4FIb8+xG2U9SsyODc+4',4096,NULL,'ce87ec79ea077f1d872d32ccd1db224bebcde73c3a933a6b0a79d395adb00fb0','Naman Setia',NULL,'001464173084506','001464173084506'),
('7876499933','HCO1bEj85tVyo+YOQcEvDmmsEEw=','1vhdsLYyDTx3Exb91h+80csmrr0=','UHpD+Yr4Mb3z0csuM2OXdvJgKP0DR9ts',4096,NULL,'1687942894d831fd7e8d463ef3f4265abd947c6e0706414eed22b23af3b314ee','Mohit Kumar',NULL,'001464935609859','001464935609859'),
('8146087871','4Xo2UhfA6YgVLNS/wS3/4xMruRw=','5R7C8W4d946zvgbcqe6ioX3HN2Y=','TLSf4E4wlEUNzan3Bl5CNjgV6aihyj+h',4096,NULL,'e50d3883cc1445dfdc53126c4e9d98fa136a868717874c4eef7cfb6e7f8c521e','Sahil Sahni',NULL,'001464173346863','001464173346863'),
('8146262629','6c00lJnUlshfSusfrIPgcClcaXQ=','M78KddOLZCareLcI+/VUFQlPAaU=','Hy0DGw8I25W4/C9TP3DmeDEscJQD//Zh',4096,NULL,'7c6648dd027cc8c187dcf729ab998aaeb77ee5f94ea5eaf2b7964bc780827465','Abhishek Bansal',NULL,'001464173000868','001464173000868'),
('8146433503','YK9WZR7E0u85b7tR7rVheqSM03Y=','mFHKMOPv5dqrVCyXgra2YyZlXkI=','GiRrjn3zmaEBUmA2694ZrSv16YuCEvXs',4096,NULL,'6a12fd16fdfdd6cf1b1c049358d1eea02de0f8968c04be03bb48de43e2d4fa51','Kanchan Nishad',NULL,'001464174621357','001464174621357'),
('8146991195','PC4ktHCbDAN3nLigliG56qnPRE0=','rOplRlkMkLcnvlZ2hYXeoB/45kw=','VdoCz6aT9T2scJIqgeoJ9I+i7mX3W8fy',4096,NULL,'7e887c746a3bd0ca056d23aafcb714e1a14439cec3bf546b93e004a40e116fff','Navneet Jindal',NULL,'001464175886162','001464175886162'),
('8284017371','wdVBZ4+1M59UV5XpgW+qqw0U5Nw=','bodNM9XEBaLQTz+F1Q9RgSVl7bg=','AIYJ6gdVSRR6FSI6o30p6EGEqderYVhR',4096,NULL,'688c628b55e4f60d4b4e76a69aaafc5a6e72b8e5b269e16e26422a975aa15317','Rakesh Meena',NULL,'001464175732036','001464175732036'),
('8289098909','PP39sZsEXG8fYXMGzX0YvkOSkQQ=','nlMsazXH1fn94vQ8GxvdIL71h/M=','KCG4kiHIAAhaBp0wukjlSba+KgKJpxkA',4096,NULL,'c929ce8d3b71b85925b977f55fa03c943d80e3be7b3474cfa75b506e1022fcb4','Ish V',NULL,'001464351153602','001464351153602'),
('8303121365','NgtN0rnKQcf+jpoeQcJ+rpC8XE4=','9L+hreDEWcpU2J4FpY3idBiHiT4=','L2SI/SZFZEb0yh627ft79wMUwoJjTuYr',4096,NULL,'b64d639f79550d4b5074aaa53c058386db9b66b2e308a97dd4db9447868920b5','Prashant Shivhare',NULL,'001464176095519','001464176095519'),
('8427468851','Lk6JEgcNqxfAY40nbLJMQyT//xw=','FN4o2BPyIhpx4phz35Lky4sJsTI=','seFLddcGY+jQec7f719WrUYwryOr1vCa',4096,NULL,'e8a8e37551bde5e24d8c75238f949f5716f4fbc19c0dee27ae8e3e739635dc5a','Tajwinder Singh',NULL,'001464175302166','001464175302166'),
('8437659925','lG5H57CHkRdvaSrn7BBrU2RqYg8=','kB383a4yjMoc+ku1Rt7t3VLxggU=','Qt5YXV5SJkT6wzwP8+Pn06tx6LQtVSon',4096,NULL,'0892dc7cb0e921031ee2c7e405750aba6d7cfeb6a737984e18b148f0906153b6','Pranav Sharma',NULL,'001464173706092','001464173706092'),
('8529913312','Ebdw86BpG0VojLiym1UIfX+zUeA=','mgzeqrjtRkqlisYzTcdwigWdk5s=','orzU88QMUv5wjvsd31jRuV7oa2JlrK3j',4096,NULL,'f56c1089fc3a34513661163818afa707946da291bc6d5e06bb37af9a120bb072','Deepak Kumar',NULL,'001465379436148','001465379436148'),
('8556967387','xZUOIi099/VYhuZuZlyT7BM1hC8=','akVRNuPKEx0vJp7D+p7ssl6s93w=','WqxO476xGS4UWoBQiRSLTnEK23VJNEcv',4096,NULL,'cf70d8203916865f96d4bcd2b5d1f7a4c21f9715ce198ff90cf7b017c4bd7079','Som Jhazz',NULL,'001464175473469','001464175473469'),
('8556976273','5OBy+qz3/hh07bPyvdoZm4mjn88=','cOlXyqBdUpI4LhUQuPOr7/c21YI=','6ksvrI+c9591NcJx92K5Y4RQynVxCWnw',4096,NULL,'2be0fc8b073be02a2c785bd8755310e8ba47c190bc9ba98e2d6ce76021edf896','Rahul Dhiman',NULL,'001464175490871','001464175490871'),
('8558049380','uv2c1/zWpjz5TZVQsYjBj8rPcss=','2myYAQ97SJjXBW0yQNMsqGdALFU=','PrJ1fJB33uLSQE1Y58x3tPZxsIC3IKm5',4096,NULL,'95c700f597533a4e16f9f8f82273a9adbd4c6bb494542dc78891a94cb0fd4d6b','Maninder Singh Dhindsa',NULL,'001465047276237','001465047276237'),
('8558093989','d1k+3TOm4APpbPejmyFnFUazAug=','K4LQ2NgGUzaYxeRnmTxxcjrrTVs=','LsioZvBD+V1EdZd1bD4WlYyNrSvgdrHf',4096,NULL,'5207edcc8e8885ca2ae9a288509211683e705f59487013d306cb79703676355f','Kiranbir Singh',NULL,'001464175453916','001464175453916'),
('8558850058','HSztFsNiJqmjDu35fM3+e//HSA4=','6iGGxRwH3c+nhbF7aDRV4I72Oew=','uardJVzBM4MEO4RV4Sb2Gva+bqhx4QND',4096,NULL,'6600449ede671f7c86b9d33fbbcad5272d4b50bb1bedad0e179c3e91deb297a2','Aditya Singh',NULL,'001464173480621','001464173480621'),
('8558880058','fVdo9rEYqYQsm6BV2+WzYahzz4Y=','mwmS2ItqjjjaAYIsHM4g/Qgcvq4=','iiSFwsGaOYx6jl0Sg5yX5OK06dOCsWJ1',4096,NULL,'a030e3b3fb4b84266b9ef9e2db76c2a17754c9ae568d05c1e3dbbb386d45f483','Jyotiraditya Singh',NULL,'001465462550940','001465462550940'),
('8587855123','/YlZdfI/pMhiFlhDaMV1Ga6X1cE=','9Q085a3XjWWbrjyQAkIo72l+zo4=','iuXzCUIYolrYPV0WY7nMJNMkejETG4lS',4096,NULL,'e100573aa23a02c37fa2a6723e7346f6f645358f6a00cc625675ac1c8c40e7f7','Suman Kapil',NULL,'001464853278695','001464853278695'),
('8591090190','r63M8XZvZhgTeLzWDmArXhZfurA=','XP+LC94llhH5yrC9ve04N37bl6A=','X5v+VS409GpXorP0GhCxKbvLnldkZ/F3',4096,NULL,'62fe1c5a0b83031427b752fea3c689990ab65f3ac9958e26ccb1292edb9126f2','Navkaran Singh',NULL,'001464174417583','001464174417583'),
('8600463331','BXOoYqDbhK6k0PNnFvkdcRB42s4=','XNYkdv4GNKvJ7E+8owzIYkMpsZA=','k8emtL0uTzo9VOKKnThwEG3BX2ec5A+f',4096,NULL,'e8162eadde0707ca620e37c1dfa07951c1619e8796ec19959243870fdb087490','Tarun Marwaha',NULL,'001464173554284','001464173554284'),
('8692008187','07fjXUkE6wjhX5XMxZrOSvZ7NYQ=','4OHQrUn8Tq7F2mgVHHyGQH/ivco=','CSTh1PVPd3+eKu32Js0rLOHRkisJEYha',4096,NULL,'a9e3e2ea4c9547c61bc61473df50f73735e953a7e3b8635346eec4df51c2260f','Karishma Shenoy',NULL,'001464174234584','001464174234584'),
('8699244007','i7NAxYOI1LepKxNbcVSWxxqKCPc=','EJZRYii2MGgOtnXRplOBGhT21WI=','HN8m/4FRsi5r9Bt45Yz1d/uSLGOePOh/',4096,NULL,'5a3e7c5a8acafb8f0d3ecc57a1b6f0254af30d7b65ea1ea0b1a8a76fa84dbe59','Aarti Thakur',NULL,'001464173498368','001464173498368'),
('8699869017','cjLYd2uAowc/hSimJhroZ2mQHqg=','s0zCqBiUAzhiIssXq0cqX39xVeo=','q6jpGodTwEJJg4kzaIcGomCCaVHj5jtJ',4096,NULL,'dfc3b8dcdfdb8713fbf28e048ffb4988b509d52421b9013f829520647b5f5f8a','Kavita Garg',NULL,'001464173529729','001464173529729'),
('8699944660','PzM2K6MQfdJLxwl0NnT9NzwtLgw=','RRQxSCHVfD8eyPi5TNqHJ+BQNRA=','ijNrLx7y2Sqml/CjnF8jMXX2pCV9HUy7',4096,NULL,'65a017a418f658d69b59fc9ff862b02d2816380d7602dcc958b702ed6615a6bf','Vikas Arora',NULL,'001464175233483','001464175233483'),
('8727900223','bjyWkZ99W+Ba46Oo4+l0iZZNZ2s=','TOZfzIJmnPRetfc70MWscPU8Z0E=','1yL+3082HDcYkXmB97hcUVGx/CarmmG+',4096,NULL,'2c029c598cc6acb3eba9981a9e2acfa99cf1a576355e357512056def8bb3190c','Advocate Mansi Bansal',NULL,'001464174474286','001464174474286'),
('8729060449','rdGC9a0pHXlmOyzR0BDS3da8xpU=','9rw+FWnQ4ZmrA02/HBurfJ5Zs58=','zuhPwZw7/EGtAVV1ro40PcWX7Car9MhY',4096,NULL,'693a46bf59b516a0f4f9890776504000fdad1e218ea40f057634f731421a0752','Harnek Singh',NULL,'001464174547678','001464174547678'),
('8800869428','XYVOw6IQpr4M487+RbErlxLwkFA=','90cGdnAS/OXB8tTnajHlgDgwKyg=','sRRyQLZRIIzLpzklnljXM10/s0S7bTOF',4096,NULL,'ba7beeafabe72850a31a4ef8372ebed7f58c1cc315db0c6d1f923c24a31c0b6c','Naveen Kumar',NULL,'001464158748671','001464158748671'),
('8879441434','9MZg6o44s2zVdnUgQ+RmtIS8Djg=','Cvv4iRU9NbUNORXnxGrmBzqyKKM=','enXL+c1kmPEf9Fo4dwrGlroJ0IqdCJ4T',4096,NULL,'0c961a030e5b92f788fd5ce3192da08557625b615e867b35a33e68821f2c7bb3','Anuj Sharma',NULL,'001464173393682','001464173393682'),
('8950227538','1TaF+ea8wv4/RBVf6gytg3fkqbU=','JKmbJX7bcm29y2cHKRn79vrfRi4=','92R/p/TPfijdroc3R+EIARzUfIA9ELgb',4096,NULL,'f95d5e0ba0afd1a607b8079a01bda959e2ba4ca50c80f9de7575dbc14d257768','Balkar Singh',NULL,'001464175945478','001464175945478'),
('9041414100','ES4ZbXa5raaGY25JfdQjS3dfApo=','zM5Aa9xwPRrsIcPXd7rmPAD22p8=','ceAoDluLAWH/vlLxgy3aY/Ulpg/JKeQp',4096,NULL,'0de6bab49cf1d3f96ba19500fe818a24a8776e4a2d87fad405bb81ac621949de','Vikas Gupta',NULL,'001464371943419','001464371943419'),
('9041905775','6/b/kJ3vhiQa4n5/mIJdNlXSptI=','Wno+acCtwUJi1/sgw89SL77MJ/E=','WixC1jSa64t7fr6xQPPfqsjil5aHwNZq',4096,NULL,'26667b93ea39792148565be1769ba5c4c8aecf48a770dbfd8be1b9534a3e9226','Rohit Ummat',NULL,'001464175830630','001464175830630'),
('9050549030','6UxFBk3l2+23SXK7mi+yU91zuJw=','chzAaTxIZQKpwaITsZT3khw+Nbc=','opKkEmjvFbC0HYkAUsYrTFZKo1vxIjU+',4096,NULL,'09ede1e684c8c106a3b589256d20c37e98eaa00cc3d607c7bd22d7a6a20b470a','sonu saini',NULL,'001464617319189','001464617319189'),
('9067500001','5WTSH6qkxFiwkLEfME1AiejzLrQ=','Q6ajy2499xtWwJNWaEmXCXcHKLY=','pocLKU8SGWAihZTzI6XA4Iicjf4jJ8jx',4096,NULL,'34ebfc52cef58206092bb9d1b3f5b65d37202750b46913c2d839f12c528ba023','Gurbrinder Singh Chahal',NULL,'001464175348840','001464175348840'),
('9216270057','8kEbCDB3lNmM9LKqL/Ag6XPpvYc=','e2MegEiFrSyuOL7SbFxnTpChZbU=','plGUCf6z7JmGdpDf7eD8CTSx6u4IHTX+',4096,NULL,'a80eb22ccbef44f438a9a1b7f8e0d33609a00cbad6057b4d0e80ad3d871db13f','Dr Ashok',NULL,'001464175366672','001464175366672'),
('9216709853','MSMhKNAwJVd7SUjy9OVemfj/Lrc=','nJCggdjCBmTzO6rsb67tEa50BMQ=','4e0SsCQ8OnXoHMPMZqL2/0sKgFpPEYwT',4096,NULL,'3865f2e37254a5ebeb5a50794994e2f3377d7536fbef34cdaefe1bc37d023a9b','Ashwani Sharma',NULL,'001465312575798','001465312575798'),
('9310061582','YfjpnN+YZX+1nuo3Y9XnWmU3mdo=','bQ/rxp4ZAyKwl6b/xoPr52rXYJg=','8scMGpXuACEVAPF1WiBlIkT9l+98F/aQ',4096,NULL,'87fcee85ac5d519c261b1db6dab77bd1b914bd9a0663b8c9ee35bd4e4e823ce8','Hardeep Singh',NULL,'001464175509495','001464175509495'),
('9416958674','U13JuZYqLG5HLpk8Et/1eEVdakk=','nWLsjMrOfoYXuHIpm39NfdrBSw8=','03FYCM1YRQ1R4UYUdFq1CkhZYPve3n2b',4096,NULL,'7dbe860db0c5dcb97137c33f03a9c76cedb4bee8767c8914c5d9a8b54c94eb40','SANJAY KUMAR',NULL,'001464176014839','001464176014839'),
('9417013448','gW1gS5pVvHEiicOmsaclNGX6SnY=','s60dc3Qxu7BHSvyMGxOF3lG4VXA=','0iWoJyXSxffkruqtL2TGQPfyYWVVDlbe',4096,NULL,'589ce3810e28b1c596a7c1a8b67b5b01846aa0e0ea5030f795c56b3768feafd8','Sunil Kumar Vashishth',NULL,'001464173258988','001464173258988'),
('9417068545','I/unvSqDrmkWbFHJONZD6icXU+U=','sfrazpKQahvHqYScnK8IwcXRCuw=','+2VM7yT9GLfhrGSA3Dme5KypYrAQ3q/c',4096,NULL,'f7c2bc065176fab9ca5030284f97a8d4f833bc770c4ffceaa73f145d9d9cf4a8','Aseem Bansal',NULL,'001465589685993','001465589685993'),
('9417071990','qSEJXMbHixppGlOUDtLfBBoOmj4=','dQSA7SWcNCSjsgNBiDYWHmqoQDk=','hCNu3tVjrxt7Tgcfp4ZcYM0QfdF29A9m',4096,NULL,'8b3d2ec62aa189b960022099156df61ec506c47efac3a12e062e5ca6e589e4cd','Rajvinder Singh',NULL,'001464175271675','001464175271675'),
('9417072887','Nn5k6NSmkwehiuMTrgXTe654QA4=','PcPsCkjjwE50hR8bTcoaz4AXQNs=','GFIy1bptD4ljMTlXbr8wGJk4DudYg3OC',4096,NULL,'0d927431bd71619ddf96b72d63ebe4747cb83e6734cd6682997f1c71d3299283','Anil Garg',NULL,'001464175780973','001464175780973'),
('9417134830','KgCQzTcCuEYvxyHPC9OpOqMatvE=','J/H4uGbI/3L+TUdNgcXi6CRWoTM=','yfqGI3myraKCBUGphTBmkwFMZ4BikoQJ',4096,NULL,'1e8a7744e5fef818a3358d561d69d0cfb5c217d0ddecd14df26e12797228d553','Shourya Garg',NULL,'001464173819925','001464173819925'),
('9417157019','dJcgV63ZmaCwSfHpwf3bRJ9V16M=','8K8ecOxfstbco7K1U4KVfnPafr0=','Afc344+cxfBlFKVpEusQPM6TMKShpp5S',4096,NULL,'e32fa9bd80e582e8c2e0b15775e6805b9349c0e395638a4f68d89880d53f9762','Vipan Vashisht','admin','001464173875889','001464173875889'),
('9417382387','/6WbnArMq2ywnYyZNF7X/Y3MdSo=','aJLU8PBh/KbwH0IJKNNzUiCKGHU=','LKFbcrx2DNw9cfEhUOZaYpOBlYJouDuQ',4096,NULL,'7793dd66fb0b588b03ecac64aceaf9fb897f81db2a5e41d1561e830f6e60c0d0','Balkar Singh',NULL,'001464175423351','001464175423351'),
('9417406880','sqLjuNqlO26E9+cE8pp1wofDuJQ=','038ysW1dgWUWxlBvwi1Ebgx59NQ=','1BukW64b5cEGKhg5k467h8oKZvyWllRx',4096,NULL,'541e1f9eba5c3b5fe2f8f57154c4d1b1c690c767d66c084ace81a88bb2653728','Vipin Gupta',NULL,'001465101329984','001465101329984'),
('9417466157','O/70E8WlEeSZwKXVEeWtAtdrNss=','Vbda8koscY/wNvFN6DzezHACL2g=','Koesx7HxZjSp7cUDPCMHXn1u1Jhx9j5N',4096,NULL,'0e076009f5196050c970cbef37a191a4a218b5d4bd3f26ef2d96219e47f789af','Abdul Sattar',NULL,'001464174783615','001464174783615'),
('9417540755','ghkphlqc/HkuErCADGGncTJLA94=','zIr01YuviL8QiGOEaLmG27kcnXk=','OT0tQ//SM/Ri21uq6qs/vBO/N3Di1lg0',4096,NULL,'9527b9f7cd06f63c4b92c171c2f4c6df0e3635aa82db12c656186e478b9525b8','Ved parkash grover',NULL,'001464175035992','001464175035992'),
('9417554410','11tL0iipyJtQOYOSPC+Uw7hLQKA=','nCRhiaM+rUIy9QYpbcvPBsdxQow=','ad/pfvGU8DUkiyuLKxTxn4fGJ9gHtnZm',4096,NULL,'4402c8c2f9662040c1551e7cc5ea1a20d03072f3e8f9e382bc02d44ac50953ac','Om Prakash Banth',NULL,'001464174667717','001464174667717'),
('9417870195','/s+mpTnoDY4P6x1KNzXK3mOAW2I=','OxS0yml6ihrcRvhX3egHNcP5W3Q=','Kb9YnRmbZn3P94myR/D8SPiYue0EDp1O',4096,NULL,'b79ae1f90cb39b73a8fb913cd8fbdd04f13899e27a23c6f3632bf5765b32521e','Shiv Kumar',NULL,'001464173751615','001464173751615'),
('9433059894','NhKzbV7U+EdFZ+ydNBqFKKXz/tA=','rsjkqDoWOl+z3yB6z2GdiVe2qBg=','5jy8Ep2ZGlN8PngxzRTlOVL7afjpOBtP',4096,NULL,'8852be5df8c979e72ddb530595d0e7d2990f439b6968219d7d32cd8fb92e3405','Divya singh',NULL,'001465992035497','001465992035497'),
('9447891152','xAlHloEmR41TJ2KjXYerQLRUt2A=','nbkJ7DyWt0ZuLt+r6rRdSOz0nbg=','lcgmn2X0UUKRTo//1bAP25U4JCCRX8eS',4096,NULL,'1e2bad68ac881b1a3713726becf3c76bb0cc78b522692b8c6fe43643d0551037','Rajat kumar',NULL,'001464174794714','001464174794714'),
('9449249387','/qE6rNh+djVaPFiHi2MQAR2dMXw=','P98DKEQWxn5sSMTmBE85CAwn6qQ=','uvUiwl++ovP/U12FQWliMDOOckXwbGie',4096,NULL,'29d2283d8f5034027487a9bc04bc7f9de9c2c3bbf4ce7d478604126d2e5b496c','Shylaja KM',NULL,'001464176115180','001464176115180'),
('9463030200','1amI+qvoc/rmvHkvVxezUpJrzM8=','+1sjNiWmraVVgmh0mgNfBF3xggc=','KeQOdQ0XMXflL9UoTjvJbLXZYs/Cx8Sl',4096,NULL,'010ae4d7e142bff503431d7a1d5f0de8ba4b5c0d7b83e88596a2032cc777ffd7','Jagdish Singh',NULL,'001464174862536','001464174862536'),
('9463477901','1WUSn4bbN8ekynfWb0RYkO8VFFY=','ae1pn/HTGUQW1kcWqZBapf0H0T0=','64fHFd0cqKIOeO/7aam0ytZJZEM5sxk7',4096,NULL,'3b62d58833e50d1e326afc5acc1ae977ee852671c1062f9a42fa70a90bf5df74','Harmandeep S Sidhu',NULL,'001464174569474','001464174569474'),
('9464890952','owkYfTxPF+RGoCazFo7jpg2yGrc=','aXGtHLUXaTjn8aN7e557AFqT/XI=','SllV4r6gdIibaOhBhBrnlzbIyLvQJ6jr',4096,NULL,'14958fda69900b7944578a0bc38878e6ad96262dc30276b04ca62ce8b5d978e4','JASPREET SINGH ADVOCATE',NULL,'001464174884889','001464174884889'),
('9468129989','NbD+EEVjv25Xtt+K2wP1JzS/KBs=','ugkif0aSa7A7TmKzprlZ49w+fC8=','RdhPxtN6wlDr++KqTRoZLSu7IvHV5xXb',4096,NULL,'b490e1acdb66063db8ad2b02b9c629204c799b9eedfa19c858c0bd2fa7ada55b','J P Jangu',NULL,'001464175322969','001464175322969'),
('9501043078','u1S1BQR18oP8iPV4abWWj9/X4ww=','HoIfXENgJFdcSlJ48hf4ZZAiCq0=','wYBF+q3aZzFL3RPzoRP1WKcNuUVIl8ZX',4096,NULL,'a71705098bfb79e372d9478242aa7753eaa4bf360d0fc6fd898ca07b273a37d1','Prithi Vohrs',NULL,'001464175383457','001464175383457'),
('9501812794','+AGBVcgNTow7hIqQMWfNVWRjDZY=','LlhKuQZ/cQQeaIaeFKArJnNUI+U=','r3JQ0g7ZLTnoylAYBykyL1RaRlE/ufkA',4096,NULL,'e48e84092f8beac7f7efc2f501337b5785a300cb17f6284e9fd1a7202dea1067','Gurpreet Sandhu',NULL,'001464174606046','001464174606046'),
('9501974444','ZCagph/d3s/Evm7XxrjesWgCvdU=','nTkALk1A1ZksccVzoBAhSkYJks0=','nGPiGLH5eGDwGoxwvspPMycXGQla+BMH',4096,NULL,'019a1367e9495052444652e981ab2e8cbf06887ec5c5e36ede612f60c6e4e8d4','Herain Jindal',NULL,'001464175593860','001464175593860'),
('9530661541','hPZ6PMhdf3NQXW18xByHU3tvriE=','1Iz4FhdMXB7tUK4dLHB1e8Tyo/c=','LV804GUrhGHt4MzYLt8hzJPiJ8OoVK3c',4096,NULL,'0134faded6f608aae04ee27878607aee809db783f109aa9ef7dd203d23537aef','Kailash Bhatt',NULL,'001464496965173','001464496965173'),
('9560900036','46SwdZWyPjCEU7Bmq0Qmu3DUcuo=','xJ/LJjKJqCVWHyb3VAY6c/sFe6o=','nKSkMkqM+gWm7u4aBqOqQbFG7Q6IoB0I',4096,NULL,'249e79fd5976282ab8f545b8670809989efba1cf2299b9b7eb1ef705a6b91fe4','Reema Saxena',NULL,'001464173415483','001464173415483'),
('9569746078','onOkEajwR6N27j8R602z1c/zzyo=','ZWP0GeZ0cSfql7CiDeudoKMT7t0=','Gm+Eq36KUQmYc3FfYTUZ5JYIYc67p4rL',4096,NULL,'93c2ca3288aeff466113ca1361645fb0125a74f2938113fab2ae52f704c78062','Rakesh Sharma',NULL,'001464175618350','001464175618350'),
('9599530105','EkpC/LEdmnw7mOHsqpuscK6lWaM=','WiTaUWCMkgeH16ts3AExCY7//PY=','KJzWZQrrFG0jEu0adBjZSRIhuUki09O3',4096,NULL,'106ded9b5096c1bd1279d1be81c1a487b9e7820307c641de945778a3aabacdde','Nishant Kumar',NULL,'001464174005246','001464174005246'),
('9619847120','vnVeCDrm9MGBMmBcZyb941JBSgg=','2OB22+vgBxM37usdtrTaJHg1dIU=','rbhblDTzgDyg47tyE1OF+TNtRyh9/111',4096,NULL,'216e5c5ac83be3e9b88149d57af2d9debb2d620f53f0281677e1d6da2125adb2','Anuj Sharma',NULL,'001464174331663','001464174331663'),
('9646118903','Ert9go66yFy13OQtflyr+uViy90=','3/Wxz6hNDbMyzOciw9BMgw4ZBs4=','4g6FhuYm+Ahsm/uw2E22zeV6/sHGdEc6',4096,NULL,'6a07a7540d5614ca2bbd51186c8b0006d6e9dc6eca92e4a10f7366a698bf3c08','Amarjit Singh',NULL,'001464174900259','001464174900259'),
('9646198438','jcGTK4Z2OW7hWVbQ+g2UfyMGFDY=','rR3j85gToLuOnNT/EXFGuq2Dkn0=','h/T+9v8rgLFnig1c2v0Eho/CukA+VrLV',4096,NULL,'ce14a34533eeed5bbbdb12a56cc44ea9a11ac1a80f2deeec62aa3c9c5dac8b9c','Meenakshi Sharma',NULL,'001464159923713','001464159923713'),
('9653297432','qH9JIJW9RPjbTQIBoaunVPf6g8k=','2Cd8Dgb59AIEAih1bVM2wkQ+rzU=','ArcSc7sj9fIHQApijBG6v9TxogCJM9wG',4096,NULL,'85cacbb0c541edf424d8cbb335c92f4db42eaec85c5e794be157906623e98128','Gaurav Kamboj',NULL,'001464174191840','001464174191840'),
('9670931066','1TtBijxq9mD4lAMGCIUphRkXioA=','Vngvdq3gkBWP2/3hAl1xcJOaD+8=','qsYli4fCDnLCqmPOVSU/k0XHhzwQZReJ',4096,NULL,'7d896be846b352fa731d38f319b471983f89dc65610e7d3f05765398c04e168c','Suraj Singh',NULL,'001464174402800','001464174402800'),
('9711161198','MC1UANmH1fLyeGmoB6GtyqlJHnM=','04EKKsz2tlliKK/aFPdx8nS9zs0=','CQh2X9Hi8HvhKsNeuCVhUrWyz5LbzZWH',4096,NULL,'ef00526a7868ffb662a36f1925f70a0478da25b59d2e1bad954213c2d8a963b1','Apeksha Kakkar',NULL,'001464173733761','001464173733761'),
('9716164342','KTvXhxE3ItIzSa7q5Z5wapzwKsc=','AEtpgad0zeGSRFWOOrwL2cgiCd4=','EDGE7PkPwdQ2pDbekptuRWJ/gTKg7owf',4096,NULL,'25f477ff9b8e77c33b538303c886f481c54a717571b2d6484702eaffca539811','Ajay Madhukar',NULL,'001464876478748','001464876478748'),
('9779589735','/q4okZtOH3pIG0ljG4BxQkF3c98=','lAmaOHRr0igysw9ycezSzNTKDWI=','6DjrYLL3A77egPIlN3yWfPlsQB4TCSOy',4096,NULL,'f709421fe762b697a591bd56042a175ddcc693364eeafed2253350a07f870c5a','Harish Kumar',NULL,'001464175664399','001464175664399'),
('9780054161','VyAr89JIECssA8uHHWawq8bDioU=','ZGfx8YQNhiUM/7Cjlp2ZGkzFvh0=','jqUoVh4O7Q+W21dLqYT4VGN06XEBqHtZ',4096,NULL,'a1e31c209deee617e31c8039dcc00e10413a864a2a12feee852d9230526cc42c','Romy Khurana',NULL,'001464172730791','001464172730791'),
('9780184869','7GoJWuMcjJI/i0uvbwmAuWdwF/A=','ooJfsALcXbptZGDvoQUEkmyPQo4=','yOg1mBCwicWrNBQ1hOsW6N+Nfkfoq0dJ',4096,NULL,'307261919bb764c8dc608916c30eeee47ad221b85157cf9d378807197ffc0848','Mukesh Rana',NULL,'001464174934748','001464174934748'),
('9780439498','Wbo0rfkJ28A53sgQvs64DWdHX04=','cfGqwPRuuDQ+OPf0QecmzH0IoRE=','PUwfFIdD9cIBGToJT1jRdcUdo0/5l6CF',4096,NULL,'e239e4a13b8618b4dce038eca6daecf183320b130d1064a4e01e2f01857b2483','Gourav Sharma',NULL,'001464175763533','001464175763533'),
('9780738869','q3m1R1shTmZS0PnvjYPcwFXzxP0=','MmKtZnaXeyPmmG3bt9OubBzl1U8=','ts35x+w1fRIcWEqz3szwTOvXTsm5Be0B',4096,NULL,'db74df7887322c36aa194c046b41ed86038f2926774b962297714718fe956799','Sukhbir Singh',NULL,'001464174951139','001464174951139'),
('9780849692','26PrHD8M4ZYDUhaubmjGuPe0FZc=','gsuEMbh5aJgWmd4lXyyHjdqWm9s=','bSLI5Ada5E7ajDnkD1BTTXi3sBvEKDNs',4096,NULL,'f92d7645c0d1da8205e4dfff4b14002ff04528e512d6e122de36b80debc4f859','Arvinder Singh Khosa',NULL,'001464174311685','001464174311685'),
('9780879173','QzgsFCvTQwnY3SRPEk4V4ompwEs=','K9z7X7n0ulIeUJsgFhViWK3HM94=','UKACTuo0tOYD5/sAkA3koQu1qXlw/BUF',4096,NULL,'f557b25f6ee9863b5a9883ca2bd4044817a0a74f28d03fc4c3a3f5a842350677','Jitender Kumar',NULL,'001464175685666','001464175685666'),
('9781732820','k81HZexvEuKAf9HwTF/tKjmODWo=','3gUKWqtue41rHO1fpq051Lrtleg=','R7FpjwfdTHBP4TpBWuOtMIV9YgVKt9yS',4096,NULL,'f8d7cc2dc76d7c966c99fe6ad161a990fb8864425363bd113f8e1c12172558de','Puneet Sachdeva',NULL,'001464173835165','001464173835165'),
('9781815353','eEZw4XDlLZmumK4kHl1jfaXmhSc=','Vn61QDxQbvRTZFS0lirx9vg3mQ4=','l6Iyj0N6K86cZjdGi4c40q4W8gxMazE6',4096,NULL,'ae19d18512078f84e79a840fbadb0a900f68e0a4099b4b5aa6fecd768bd87f72','Abhishek Bhardwaj',NULL,'001464174277984','001464174277984'),
('9797236162','sGRXCNglvhj34IoAJuVwDXgzq0E=','KiM2gljODyIa+Dcdzctrv3YN7ps=','195LArTaaYvu84n9uXxy4+BRKTcp8jfy',4096,NULL,'acb505c9b03f1aeb995a101b116de2e926e5da43320b94cab9518e2d88cd2df0','Ishan Khan',NULL,'001464173308298','001464173308298'),
('9803856345','ySJ8wV7aVvyMNfYcuq0eZzkYA34=','gtupAkN2qqMMOnAKOCS0I50Cb+g=','zCNf4yFZ1rBwX0jszzuyOcdA4Bf2/hN5',4096,NULL,'4962f8ac6bc6756e8f2134193ac5b149f5ce0f4de1bfd13b1a81e320899ad379','Gulshan Kumar',NULL,'001464175645356','001464175645356'),
('9805500241','wHngKLNyKudE0IcppCzuagW8rE0=','rX+/+fcu6yi5gxIv4ZvV/HD4qUU=','5iI2Y6LQ41C0vRkvNgQINx8LJtJhd1F5',4096,NULL,'59259633f87330ee6b1fbffff37fcf0cb140db27c5f2cfe8eb2a3ac283dfffbf','Ravi Kumar',NULL,'001464344891938','001464344891938'),
('9805526803','TzMzcRjfcP6bSvjTBshmolf4Bps=','u9Tvn3UCoZ9wm3eyWyCmAdtSPxY=','SQ7heqUjJ2Q25my2+OkTUrN9yLEVYYR1',4096,NULL,'d69bd50c1096635a2c27d2cc021288836ba9a8fc9b44b478a560255d90f8443c','Suresh Kumar',NULL,'001464175961254','001464175961254'),
('9810158227','MVx+2L9O4Dggf/95gWwD5hoSIWc=','pGaHWT3s7O3BO0SC4mI0XlenyVc=','vFpcekEEtA/lAjo5YY4TaajKcBkvvVMy',4096,NULL,'fd220a6244b2cf34e3e85b5cd3a1889f9f7270e4daaf278b68e276a750822bef','Mahima Madan',NULL,'001464173934217','001464173934217'),
('9811224455','ZuZhZU/Ao764Y+V2iNafX67v91s=','HwYicXzAufFD9wzNKI5ZIFviO9w=','GQP9QSzt2mXvTD0B9BiunILxsxGG094K',4096,NULL,'b23d6ff3cd8cf15f3f130ad57db07a7ea34835a43efb6a3ffb7aa711d4fe16a7','Rohit Kumar',NULL,'001464175803525','001464175803525'),
('9812146926','844tqR4v7qxE54dCnBxC88yHjSk=','nYr1ZFUXBUICeDD1l6x+x10cyLA=','mgg1Y/7w1UU7q5/mBwRqKFt6bbFtfGx1',4096,NULL,'5cd70f9e0bde2de6a098956176e552a9c82c63b0a20c632d0f6b1dcc736f3d72','Harender Bhalothia',NULL,'001465259389565','001465259389565'),
('9814015351','Yw3D9qw/ybYcfXMqC0DTJmYJ8g4=','8rrjeSvxiz0VEuhMtSx3BPg/Nwc=','W8IpfFSNoOowr3rkL2HeON1pxmj/9vzI',4096,NULL,'41e4b40d0ddab3288bc2ffb6bd38dbf6c065fb6127bdd3f6c06fcc8f0dadd9ff','Sanjay Goyal',NULL,'001464175286270','001464175286270'),
('9814037222','kpV8+K9pJu0v3K4ej52EorT8FOU=','IzxaiL29wYt3NbH888tB82ptwjU=','dleLFGu9wEofwbi6b+M1gJzf4Gt+8fA1',4096,NULL,'3855985009e429fcafbde11d900bd73b9be26ab681012a72dcec4500399c0d5b','Parwinder Singh',NULL,'001464174724562','001464174724562'),
('9814272836','5N8RWeAY82hGpizsA+aaq9ZBqWM=','BTdxdtHF8WmNPWpBuEM7TFmdo2M=','epMmtGWIrndvFDmj3u9bAs8FR28MG1vZ',4096,NULL,'e2f9976f0ab3aa21d886158ab320a60553028762ad69846b789b8e93303a6399','Rohit Kumar',NULL,'001464169167793','001464169167793'),
('9814333334','aNLsS5zUCWpFhtC0B3ba7aDEG40=','wg06S+5fXqmHLIGA5GmsbTnQgJc=','lkdU4sjJiPDwKwVkKDjSZBWQNNyrmxiY',4096,NULL,'7137b800ad1bf45f3d00c695a7f4d49f1be8ccd821aa87cf0805fd0c36eee016','PARAMBIR SINGH SUNNY',NULL,'001464174531557','001464174531557'),
('9814624007','yObGAl+dkr39CEoSCKx8fxJmOcc=','iD63CONeaR1jD/GZ5Kt3WtZndwc=','7rE+rywcRkN9VPrIlvYpREUk+7HLqQYN',4096,NULL,'f1427bdc48aceb2840961ddc8df44ffc074c1c3a079829deaac6127784d09fdc','Rajbir Singh',NULL,'001464175976284','001464175976284'),
('9814627169','oJlOPEVblfxF89Y5V7xPHd6mLYY=','MSJr4GzCo1J3iKyIa8Nuy11bGCs=','l9QvlxzxSmpOA6Y+hpAoRN7Ub7VdbIs5',4096,NULL,'85a169bc669eae72df0b47301e2c32e4be79f4c496650b818093915b3c0a1e47','Manpreet Mehar',NULL,'001465720463379','001465720463379'),
('9814731100','UBOkQFTBtm8tIqZUTJ4FLMYwQEc=','Vx0eLNMTvo12MRsxwRw4UCD+GlY=','qfWsH1K99j5VkBcgJom3KboxmpXkzFp2',4096,NULL,'5c638439e4cc4952eda5b07309a3572746bb6a02259e5ee3d2cd5827000ad93a','HemRaj Bhardwaj',NULL,'001464174921374','001464174921374'),
('9814920603','BMJE+Okr8/+Usb98xUxYraVxeYo=','1Ysg8RjZZqBa7vRJeIcUjoPXC88=','5TTg1akfrsZLMbamdgtfmk/CB3ZC51Hu',4096,NULL,'8dde0c34d3c97fe1c6956314edff9e3f32c99af82cb4bf79848fff84792d7171','Savita Bhandari',NULL,'001464173218282','001464173218282'),
('9815062687','JtkpJDGNKA3wJHGbalKJNLnFEfk=','apZUf3otcZF9haJXVj/Pu70psKg=','eR2Si+piSGtoJzoG+j1pg/0psDrbVMwh',4096,NULL,'d840bf53be88ef2390c61c6c163fd4b1a4753469aeada570778418107ca7ed77','Sandeep kumar',NULL,'001464175018928','001464175018928'),
('9815193820','NB9FfWe9oNpfP0EAz5q+GhBIBRY=','i7lObsh5N4e6QU9dZgRhlIKmufQ=','ryCILVYf4sBFAeSpw4RZYT/Eo7MX6ySA',4096,NULL,'5b6d420ceef031f0a550380c6f029b23b58d80ad7d052bc7c72cb97adebb8bbe','Naresh Khurana',NULL,'001464174145053','001464174145053'),
('9815494605','RXBoVUUNjbW2dynloZpo7ybYBAs=','wZLQ0iuMZQZ7CsY4a606Zm3klJo=','B/tWaKJnw5v+vEYsEraTUwYNMTfYErSn',4096,NULL,'181cfc401f79fc0f1dcf1d85aa9cad230f1b3127747f5fa98ea2404a8f89e5c4','MOHAN LAL',NULL,'001464175566113','001464175566113'),
('9815951401','i+eyt0o+5jFQp5b8SJkuPsvpiHQ=','1UoJUcNEgeU2dkhtFvTNNG6KKBI=','tXIohcBqi0A40tiA78wbWNm3lCyfD2cE',4096,NULL,'c54044eeb4a8097774d7122cb3ccfb61d92edf1ef788118c71a7dd541ff9fd8a','Guri S',NULL,'001464174967860','001464174967860'),
('9815992045','2OZecpop2RCUDHm4TjrCsr6nVQA=','9Fi7+i8phGe2y6aRNtgskIy2FIA=','j09dVpTXxXp/AxR6eS7hPLukMTyP3xoy',4096,NULL,'e2966e309ff892434f8fba3a0491bc843584de8dfa5564de13a6743687f0fb63','Anurag Singh Tagra',NULL,'001464175848434','001464175848434'),
('9816566886','M3kzpaGxWXx8+zK3zrHrttmEkE8=','gnZ+d2K1tZAbo6+QODOphMwAcNs=','8X2B5nw6eorvk/m7ey0YXaMqrK/Y6ABn',4096,NULL,'e3c5856e1fc8535a551c66e8e734f8062a603c3191d473314d2f7dd627875128','Ravi Kumar',NULL,'001464174106798','001464174106798'),
('9852741318','7y90Nt9Skg3WXidt6mEo4GAWheg=','uhtv5BEePHkO5mvWNgt0kYyfM+U=','hKiXEhi6h/x4Z4B2/+Lf2kP9c6kaBXp8',4096,NULL,'520fae629d7b6a03d430b9b68a438421f8d2e583cba42f829c513849916c8d36','Ranjit Kumar',NULL,'001464175996432','001464175996432'),
('9855083355','LZmblU/9LNW5UO4VjsoYcXaYes0=','PZq4OPtyi7w7Wc8xXKrx0db+w3c=','yQdK21TWhxf7BPX8X/SSlZIDEhYwbRyw',4096,NULL,'a49e0524b8ee8feeb8907b641ea79e567e77740d4204cd8cae65011f95cd9445','VIKAS GOYAL',NULL,'001465429941842','001465429941842'),
('9855144551','nCU1RdTBhPELlQnSfQiElcLyqMg=','HRK5zFLl5KNq72SJ5eEF7QFmgqc=','7HDoRJliwDKfdVNAVIxvHv32H/yAnVZ/',4096,NULL,'5995db9c6a48eae4c97ebd4ace384891d693facc8311a28b84458b28b86f3c63','Ravinder Singh',NULL,'001464176081331','001464176081331'),
('9855728994','11w25jgtUYAHuVuqwh4048nICkw=','nA2K1XCqq5TTVNV3SL2UTw06vlk=','9ML+WDqzUOnspSO+xKB8Hjv2usicvNXd',4096,NULL,'112fbd066f2f45bc51af4f0765186e69d7940694ee9c5a2e74ce08ceadb324db','Charanjit Singh',NULL,'001464174646088','001464174646088'),
('9872206135','kOo8PDUjawtl3e5T1wpNhDZ+W3M=','C2lJWy/HmhtSKR/CF2y9kFandio=','4R50ryJHTNuqvGw+52LhmEVNZ+DgfDfr',4096,NULL,'518796969daa0250d9d9be2a42a530ada1eaa9d8aad82b61541df908aa913e34','Manmohan Gupta',NULL,'001464173979166','001464173979166'),
('9872439872','xeIxwJVUs7ggIuJKTjk/sHpv8F4=','k9kwnI92tKj6vTW1CZMzkHgwq4g=','2BQeFOfhsZuu8l0yRlKB0+HrGTiL+q+A',4096,NULL,'8d7bf0996f287a5132b79b686f43317136509663180fca9642f8a5aa010181f7','Himanshu Verma',NULL,'001464174493861','001464174493861'),
('9876122129','vrWNy5TqTpejAdRBcyDfFFy/NOs=','P57DRN2/f4exChVA+UuirBirYNE=','7fA7+8pftqBBS6vTPVG/nwD3ttHLOiGa',4096,NULL,'5133267ed33aa7e0e1b1de145766b95f1180541c4675814f899553c7451388d4','VINEET GANDHI',NULL,'001464173329442','001464173329442'),
('9876410323','/sie8w19R7+Gyk+7uvc5XHJEqxQ=','gjWeJAR929RBzAucPLqaAF/lPCg=','ocoGoMwsZeiAlqV+HW7DrKFrSErDDiif',4096,NULL,'ff8d3d174e9b32a91a8654485f658afd7c89b0dfe75a88b765191c4906d4fa49','Rajneesh Kathuria',NULL,'001464174703661','001464174703661'),
('9876733518','Lt0XxzAsB904amA+9CBvYgTYpJw=','DbVxK0yriy/QTUnJSV/qKmdAFQY=','Eb+KWnheUyzTuvqKyhG/CPxjTIN8jRyx',4096,NULL,'7429b6483deb5e3891a1efe532ed8ff46cd4aa95ee2aa6a4789e183bdd3f5ce6','Neeru Setia',NULL,'001464173065409','001464173065409'),
('9876975055','lGJ4uIzxzf69TWfywdpE4tStNno=','Q2e846nsTFOJ+JIym8B0O4cB/zk=','+P2F7K2M9vsEwn/hwn1TGQ44pl+RFi3F',4096,NULL,'449cd77e7f22c8a88d81d944e3042a8c5c19631c0310b0e251abb12f0f71022c','Narendra Kumar',NULL,'001464173903947','001464173903947'),
('9876996768','hoDV20xLRlKS+eG9oB/nadUbjWs=','5P893MzpXfMV/E0uXGdOpzV529k=','cIB3EyZgNQYBfhJSwapHlCJyVx9slMtb',4096,NULL,'a827c3f7337ce233ed36966660e9d07d61d89a42ee7d60481ed8c54cf902694e','Devinder Gill',NULL,'001464175406322','001464175406322'),
('9878332211','xnbFaEhqqKyo7LqEGL9weal/lNo=','9KWMYhBgF0XtNKnRtbQdGWmxRTo=','ZxagnZAaIxdoKV/mQTOTWdza8IPpy2iv',4096,NULL,'34eafcab5b36c0072e87a3e9a60c0475701464722a25a9c2ce90a7b54e1f124a','Vikas Goyal',NULL,'001465869716292','001465869716292'),
('9878779288','V8/iF/eB8wzK/cxEzFXbqH6q5mU=','T7BqTPXfBivKiKUayDS6lvHnr7w=','l00kxPWRKwvxzz9tkXZbSrTc9oaJ2GPb',4096,NULL,'5b5ff87c3a447f74551fcc1cde7fe71d4dcfd4c379d966bf083be2c426f32e87','Piyush Setia',NULL,'001464173179142','001464173179142'),
('9878887470','OU384pQxZGJCDUb8m5C73nhxNAs=','5llA37JseRLhb4kkelUzzfUOTkY=','EdPUXknPEC00KH69dVPYRJtgSfByVcam',4096,NULL,'24132ce288e13d159136224902a74ff6fb8ae1701a5c06b172349d4e8d336294','Rupali Marwaha',NULL,'001464173603149','001464173603149'),
('9882970900','+jJ72dq1IEd09ap1KufYcQTcxmE=','gIkltBB01wSIM7sNpwdljGxL7qo=','zBPXo6EBXfxVOVWyK2xROwul5i8xkKlE',4096,NULL,'f95b7f2d18031e4e3c234fc95bda3c0e04039d44965ba31f35436278b7f52490','Aman Duseja',NULL,'001465731492094','001465731492094'),
('9888001234','4d3B7AQwFnDpYCLszWsbvRjrKxE=','43/K9SXknJHrjNL9sEMSwnS9pWs=','wpSfQlDOWk3YC6OyWZ+zFtX199OIpFfm',4096,NULL,'fdc9ff2e559dce323a1376118628aaba9b91dbf01db3c22133338905eee447cb','Vishal Gupta',NULL,'001465357215004','001465357215004'),
('9888021489','OqjZqyXES7/2y0+9+FSLZXcK5mw=','ddjPobWgjU9vUqysH0LNSo94Cqw=','ZsJ1TtCs9lu9q9XAB+y58lvBTlkm7SpM',4096,NULL,'d8a28f0c4d3c095918d28a089d8c6c746d1acfad3e02ae987a9633d5924b3d52','Aadesh Singh',NULL,'001464173671388','001464173671388'),
('9888218909','qaA365kDqkEKz5EaT/qRuyQ6ItA=','oNP29MRowB0Di4gfFlLceDBE5po=','wD7PDX05zTBIJXb3BxLgqDLNmdifCLSv',4096,NULL,'59d2144cca2a663543cdc967136609646c656e7a5e10666382d88061baccf67c','Pridhi Jaswinder Sandhu',NULL,'001464173793464','001464173793464'),
('9888364435','SXGy8PPZwXFJYC68Ky8hG7gXRr8=','eMJ73gCqoiCin1eAyQOgnFjX1Yg=','ohGdQyz15Jnoe1NcRDhDvxn2NQf4bXCq',4096,NULL,'dee11bf5d94b2759eff649896261bfbe1b8a3ee8a379cf1bd06b07dfdd8cfbd7','Pankaj Chauhan',NULL,'001464174126227','001464174126227'),
('9888406369','uvdOz8kkDR6WtwJ4ckMBtu0zKQ0=','f3sL51P3mTFjDUJv+XYklANgbVg=','A99pI6g1h24bLPHPtQBzJHmohLA1lVjD',4096,NULL,'b7ef2147ce3de1488fa968dc37da342658b3fc86fde62849dee0eb936f8f5070','avinash kaur',NULL,'001464173457342','001464173457342'),
('9888574716','tl/Y8OPkdsJtoDwE/DQy/MxaQ7Q=','ewl7UJbNwOL6CF01mNcGsIZKNL4=','/pBDxGV4rI3f9eeWWxxb3I2ZbIKKLLqW',4096,NULL,'a75c60d024b0f46cb9fe0bbdda038a923096b75787cc1906894219442539f15e','Bimal Khurana',NULL,'001464173201406','001464173201406'),
('9888641739','SVaqR7T/6agbye7kc8lPfQzivvg=','DZfr7nG/2fXIZSurS945n950gdw=','f8lht7EJSYJHVD+IbXmu66Wn6zxKrqtj',4096,NULL,'26f01c7bc667dc8b6e63ae40a816d4d8e400f6a5214ff52f02d72233ce113b8c','Rajneesh Kathuria',NULL,'001464174684311','001464174684311'),
('9888813829','LDzXEOw+kvIqveECRBk6tUHy6yg=','psotJKGv1QEzvQgDHn8no7yNTQY=','2uCIq93ww2VxsoPSWYjyNqyyaHr7u/Jg',4096,NULL,'f6952b3cbb275ee4b8d8bef24202201524b54a6797053a3ba9e88b1c4c452216','Sunita Chauhan',NULL,'001464174756108','001464174756108'),
('9888822334','QF0ZLRlw1cap1owGZkZWeREQHIo=','chf5yfnNIyHn3Ja47ScVcdl8Oxc=','JEtjUBHOvq8jPpGhzBn8VGzw0UeGa5sl',4096,NULL,'9df3c24d4f28893fa3af7f6a5beb6717dec6ede5507fc6ef30464539acf90272','Ishaan Vashishth',NULL,'001464175906133','001464175906133'),
('9888900026','Rfu8BhWozRgoRZm/SgMYKXev6Sg=','hsEppXTlTqIDLnTP2MFqRWZqeFs=','BaCdxJic2rO/m3uD9DrrfCr4SnQob42X',4096,NULL,'bfd79c6ebc6e20453c86d51cc742a60a8b28d222d50e51ba07d0ae443f07ff51','Amarjit Singh',NULL,'001464175439666','001464175439666'),
('9890805549','bTQTDxy/CLDBHr8Bjy/0AdZit7s=','MLXF1hgJatWuYnBkTss7ctKioA0=','7N+k6O1VC4vuGAX1AVxOfLneFUCy7B0J',4096,NULL,'68e872887abb5e5966f17f363974649174dda40bc66a749a117f709f3da092d4','Tushar Kharayat',NULL,'001464173624321','001464173624321'),
('9891255235','E9Gsqxe716MZTem4ONxOr7sU4RA=','nNgYcKrYA1p8rQYccD4X14DlFxA=','B3AfRM6o8BlMJaSlIE3t3/MblZ/DNDih',4096,NULL,'d1bedee20c8d1e23435ed5ed8ecdf8baf59ac0df24a80dc8bca273cbcfa13e06','Riaz Junaidi',NULL,'001464174254348','001464174254348'),
('9899872940','RRDJzn3rBtJseuqum4mlHETgYHQ=','3/dGb9XGR/nfS111EYis15u1S1w=','RvLy2fFRK9OUeRE9fzxnCUV+plyYWgcL',4096,NULL,'ae15af24a0d7055c5c1609817d3a60f56e09a8103c5ec4b0b9193fa94117ed8a','Pragalbha Attri',NULL,'001464172775770','001464172775770'),
('9915367075','l3FCWW9BPfu1p1RUuVQWCQ+3EDo=','yU9OZWXjEh3xfuPCLxMT1/yCEkE=','D7s83HgvS6jN8aavE+lxXRMxT/TAWl7u',4096,NULL,'a0bdb1cf534f73d8ebf8efb6092665c83d825f3358161a88de4bf7ac62abce16','Jatinder Sikka',NULL,'001465047402907','001465047402907'),
('9915604400','iPRLNeY/Iusi+o1ayTmbscR/Sgs=','KcysNqQRYYHxLuCzZTJ0xhTiSDY=','6O7JitXq8yM7bKaaJuEWoqVDUMn7slS5',4096,NULL,'a4af2bbcec77c55d2d2cfae31347d2beadecb14a883f0379bfb499a673f688f7','saurabh singla',NULL,'001464176064972','001464176064972'),
('9915938219','wYSbFMXseurMN3NRbab8x3MFgEI=','eBi9k5PZPmXofhQ7TdvrtyNv8tA=','l/NsZIPMuNyd/apXxA1q4gOYqK2pEhYO',4096,NULL,'a218aca315af7b06faae34f0e6693edb9ca1462f9a3a79d051ee08bf55e9f408','Renu sood',NULL,'001464175004228','001464175004228'),
('9953559934','ZbZyirpD8rlfqEYesPC/uMX25Ps=','rg92xSLxhpVvfn3G6lM6RZ++LAQ=','YcU7yVtdUM5pc+9DZY35GrMxfm17gr7r',4096,NULL,'e96e2c6f83a5a20d1476dad7080bd604579098d472f87e65c53f3e0392215a7a','Abhishek Singh',NULL,'001464174769891','001464174769891'),
('9988381192','42AmGiNlr+SGXEaqMbmEuAtq0ZE=','MmyonxNWFx4YTvH4ELuvcf4gd8Y=','ue9NE7zi3rG6yaySF/EaEgF3nvXbdgnv',4096,NULL,'91f8db0460fab240ddb3a19a1863ff83e747c2fc5cf3743dee2515a162d24730','Neharika Prakash',NULL,'001464173652897','001464173652897'),
('9988950007','xwa4cc8vukdr+KPnPAUhZIUkMxE=','jPpBUJnNa0DJhtW/V3iUx0zAZTc=','BBZrdTrjZpuGv4eSiUCxo0z7tcZotIp6',4096,NULL,'3de0a74ca9af2f7a52df404dc63853025be82d8d1e96e2729c0341e76990f983','Prithivesh Jerath',NULL,'001464172928701','001464172928701'),
('9988977998','/GzzABZOmTh6b1Zw3CFzOJ0o5V8=','3eqY/y9Y/xEXlMu5vvKOa1dEN+M=','1NTy2GqR9kqk7MFzXpnfiuMBhRVRSW8L',4096,NULL,'c82ab5eaf800961c81049164dbee2445275205c39e0dd2dcc524ffb8bf5d47b7','Pahwa Pallav',NULL,'001464175923875','001464175923875'),
('9988994547','vbiyE+S5CqHILqYh6yUc/93FZ2Y=','fDPCZwIxn12FNXDQwB0blNgCYNM=','gS11yzIgpCmcQUeJX2bXfCdTlKbyS7BZ',4096,NULL,'c917cb533397f16125cbbba7262496e9746ff185c63d2ee0747493e8da7f1d79','Tegbir Singh Batth',NULL,'001464173960602','001464173960602'),
('9996136888','0qOF+MBV6zeacLB0+h9HP1xg9hk=','YNAZnilRgcykG68z8sftZ7p8Qso=','EUX3n0j4LHjAIpBOdbGBzHwHDs4fICnX',4096,NULL,'a0e3e6f5db51df84d237a87e54481535b7f8c6a9d0aab1d151366eaed58c7d21','Parveen Chhabra	',NULL,'001464175532683','001464175532683'),
('9999966705','5XLnCm0NB4uaSgfV5t/jTSSU10U=','FYva/8CssUHz8D1gfI1E1vRPgAM=','OfmlTTmKz3Qif09OwSrosh3/YYp0lp4E',4096,NULL,'4f7407191835aa777cff1d1113327b1b8886ea271f521759506f53adce81db07','Kandarp Yadav',NULL,'001464174438103','001464174438103'),
('admin','wG5CtbPlywbWYrS/Ax/k1A1gkKE=','R+9i/+engOL02Y+SjPk4No/sNXE=','Lju82D7qLgk+9iHiaV3b3EzpBccLK0mH',4096,NULL,'56c0aaaa92885faa915b06e1c9a3f9fe633e70caa53ed760707e8d8ada7f1d020407ee8aa3859737','Administrator','contact@onestopcode.com','001464154798038','0');

/*Table structure for table `ofuserflag` */

DROP TABLE IF EXISTS `ofuserflag`;

CREATE TABLE `ofuserflag` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `startTime` char(15) DEFAULT NULL,
  `endTime` char(15) DEFAULT NULL,
  PRIMARY KEY (`username`,`name`),
  KEY `ofUserFlag_sTime_idx` (`startTime`),
  KEY `ofUserFlag_eTime_idx` (`endTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofuserflag` */

/*Table structure for table `ofuserprop` */

DROP TABLE IF EXISTS `ofuserprop`;

CREATE TABLE `ofuserprop` (
  `username` varchar(64) NOT NULL,
  `name` varchar(100) NOT NULL,
  `propValue` text NOT NULL,
  PRIMARY KEY (`username`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofuserprop` */

insert  into `ofuserprop`(`username`,`name`,`propValue`) values 
('admin','console.rows_per_page','user-summary=500');

/*Table structure for table `ofvcard` */

DROP TABLE IF EXISTS `ofvcard`;

CREATE TABLE `ofvcard` (
  `username` varchar(64) NOT NULL,
  `vcard` mediumtext NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofvcard` */

/*Table structure for table `ofversion` */

DROP TABLE IF EXISTS `ofversion`;

CREATE TABLE `ofversion` (
  `name` varchar(50) NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ofversion` */

insert  into `ofversion`(`name`,`version`) values 
('monitoring',3),
('openfire',22);

/*Table structure for table `otp` */

DROP TABLE IF EXISTS `otp`;

CREATE TABLE `otp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `otpcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `otp` */

/*Table structure for table `paymenthistory` */

DROP TABLE IF EXISTS `paymenthistory`;

CREATE TABLE `paymenthistory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `transactionId` int(11) NOT NULL,
  `transactionAmount` text NOT NULL,
  `currency` varchar(150) NOT NULL,
  `message` varchar(250) NOT NULL,
  `transactionStatus` varchar(150) NOT NULL,
  `txRefNo` text NOT NULL,
  `pgTxnNo` text NOT NULL,
  `issuerRefNo` text NOT NULL,
  `transactionGateway` varchar(150) NOT NULL,
  `transactionDateTime` varchar(250) NOT NULL,
  `paymentMode` varchar(150) NOT NULL,
  `userId` int(12) NOT NULL,
  `userName` varchar(150) NOT NULL,
  `userApiKey` varchar(250) NOT NULL,
  `userMobile` varchar(250) NOT NULL,
  `transactionType` varchar(150) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paymenthistory` */

/*Table structure for table `post_case` */

DROP TABLE IF EXISTS `post_case`;

CREATE TABLE `post_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `title` blob,
  `category` int(11) DEFAULT NULL,
  `details` text,
  `fee` float DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `post_case` */

insert  into `post_case`(`id`,`userId`,`title`,`category`,`details`,`fee`,`city`,`file`,`created_at`,`modified_at`) values 
(1,222,'Where does it come from?',4,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',8000,37,'21_2262_025436.xlsx','2016-07-21 08:29:48','2016-07-21 14:54:36'),
(2,222,'This is another solution using clickable articles (can of course be changed to anything).',3,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',600000,32,'21_6104_093644.jpg','2016-07-21 09:36:44',NULL),
(3,222,'Add Remove input fields dynamically using jQuery',6,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',40000,22,'21_6104_093644.jpg','2016-07-21 10:12:08',NULL),
(4,222,'jQuery TE works with same performance on ',4,'sdfsdfage of Lorem Ipsum, you need to be sure there isn\'t anything',80000,32,'','2016-07-21 10:32:27','2016-08-04 13:36:47'),
(5,222,'Add page, content and menu in Drupal 7',6,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',100000,22,'21_9025_025421.xlsx','2016-07-21 11:27:46','2016-07-21 13:37:50'),
(6,222,'Where does it come from?',10,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',9000,25,'21_9025_025421.xlsx','2016-07-21 11:35:42','2016-07-21 13:37:10'),
(7,222,'DataTables around the web',10,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',6000,32,'21_9025_025421.xlsx','2016-07-21 13:24:15','2016-07-21 13:39:34'),
(8,222,'ThemeForest themes with DataTables',24,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',12000,16,'21_5997_012450.jpg','2016-07-21 13:24:50',NULL),
(9,222,'CodeIgniter interface for DataTables',34,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',13000,3,'21_8536_025410.doc','2016-07-21 13:26:52','2016-07-21 14:54:10'),
(10,222,'Greek question mark',31,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',3000,3,'','2016-07-21 13:28:59','2016-08-04 13:10:51'),
(11,222,'Rhetorical question mark',36,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',100000,32,'','2016-07-21 13:29:38','2016-08-04 08:57:37'),
(12,222,'Questionmark and Caveon Announce Partnership',7,'Praesent varius sollicitudin euismod. Sed iaculis interdum nisi in luctus. Maecenas vel turpis suscipit, molestie mi ut, hendrerit massa. Nunc gravida eros mi, eu luctus ipsum pretium sed. Etiam vehicula euismod scelerisque. Aenean dolor arcu, venenatis nec malesuada id, posuere nec sapien. Phasellus semper augue eget dui molestie, porttitor congue mi dapibus. Nunc et erat gravida, vehicula nulla id, molestie dolor. Donec et rhoncus elit, vitae placerat metus. Donec volutpat vehicula scelerisque. Donec posuere nunc sed ligula commodo lobortis. Interdum et malesuada fames ac ante ipsum primis in faucibus.',100000,2,'','2016-07-21 13:31:22','2016-07-21 16:11:57'),
(14,222,'Definition and Usage',2,'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \\\'Content here, content here\\\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \\\'lorem ipsum\\\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',100000,22,'','2016-07-21 16:00:03','2016-08-03 14:30:29'),
(15,222,'This error is actually the result of you not including bootstrap\'s',17,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything',60500,4,'','2016-08-04 09:33:20','2016-08-04 13:27:07'),
(16,222,'I think problem is, that showing modal is called twice',15,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything',100000,22,'','2016-08-04 09:41:04','2016-08-04 13:26:46'),
(17,222,'There are many variations of passages ',8,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything',6000,16,'','2016-08-04 09:41:09','2016-08-04 13:26:25'),
(18,222,'Where can I get some?',4,'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything',13123,3,'','2016-08-04 09:52:03','2016-08-04 13:26:06'),
(19,222,'Where can I get some?',5,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',13123,31,'','2016-08-04 09:53:29','2016-08-04 13:25:30'),
(20,222,'Where does it come from?',10,'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words',1000000,32,'','2016-08-04 11:42:33','2016-08-04 13:24:59'),
(21,222,'This error is actually the result of you not including bootstrap\'s ',4,'function. Modal is defined in bootstrap.js not jQuery. It\'s also important to note that bootstrap actually needs jQuery to define the&nbsp;modal&nbsp;function, so it\'s vital that you include jQuery before including bootstrap\'s javascript. To avoid the error just be sure to include jQuery then bootstrap\'s javascript before you call the&nbsp;modal&nbsp;function. I usually do the following in my header tag',6000,22,'04_7024_012346.jpg','2016-08-04 11:42:36','2016-08-04 13:23:46'),
(22,222,'Another possibility is that one of the other scripts',4,'Another possibility is that one of the other scripts your including is causing the problem by also including JQuery or conflicting with $. Try removing your other included scripts and see if it fixes the issue. In my case, after hours of needlessly searching my one code, I removed scripts in a binary search pattern and discovered the offending script right away.',25,22,'','2016-08-04 11:42:39','2016-08-04 13:32:30'),
(23,222,'I think problem is, that showing modal is called twice',2,'jqxExpander is a simple and easy to use widget that shows/hides an element. It supports several built-in expand modes. You can set it up to show or hide an element after a click, double-click or mouse enter event on the expander‚Äôs header. Try jqxExpander in our¬†jsEditor¬†- cloud solution for JavaScript, HTML and CSS editing, hosting and sharing your web development ideas!',8000,3,'','2016-08-04 11:42:53','2016-08-04 14:11:33'),
(24,222,'I think problem is, that showing modal is called twice',4,'s simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',8000,12,'','2016-08-05 07:48:16','2016-08-05 08:26:49'),
(25,222,'I think problem is, that showing modal is called twice',20,'ASas',2313120,12,NULL,'2016-08-05 08:47:49',NULL),
(26,222,'adasd',2,'sdfsdfsd',234234000,12,'','2016-08-05 08:50:05','2016-08-06 08:43:03'),
(27,222,'asdadasdasd',3,'adadasdasd',1111,28,'','2016-08-06 14:59:30','2016-08-08 08:29:31');

/*Table structure for table `profile_pics` */

DROP TABLE IF EXISTS `profile_pics`;

CREATE TABLE `profile_pics` (
  `main_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`main_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `profile_pics` */

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL,
  `point` text,
  `question` text,
  `views` int(11) DEFAULT '0',
  `viewer_id` int(11) DEFAULT NULL,
  `anonymous` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`cat_id`),
  KEY `userId` (`u_id`),
  KEY `viewid` (`viewer_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`u_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_viewerId` FOREIGN KEY (`viewer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`id`,`cat_id`,`u_id`,`point`,`question`,`views`,`viewer_id`,`anonymous`,`created_on`) values 
(4,11,222,'PHP','In how many ways you can embed PHP code in an HTML page?',0,NULL,1,'2016-08-03 14:15:27'),
(5,22,222,'What is the purpose of php.ini file?','What is the purpose of php.ini file?',0,NULL,1,'2016-08-03 14:16:15'),
(7,4,222,'What is the purpose of php.ini file?','What is the purpose of php.ini file?',0,NULL,1,'2016-08-03 14:16:35'),
(8,17,222,'What is the purpose of php.ini file?','What is the purpose of php.ini file?',0,NULL,1,'2016-08-03 14:16:46'),
(9,15,222,'What is the purpose of php.ini file?','What is the purpose of php.ini file?',0,NULL,1,'2016-08-03 14:16:56'),
(10,10,222,'What do you mean by having PHP as whitespace insen','What do you mean by having PHP as whitespace insensitive?',0,NULL,2,'2016-08-03 14:17:20'),
(11,10,222,'What are the rules for determine the \"truth\" of an','What are the rules for determine the \"truth\" of any value not already of the Boo',0,NULL,1,'2016-08-03 14:17:38'),
(12,12,222,'asda','What do you mean by having PHP as whitespace insensitive?',0,NULL,1,'2016-08-04 14:55:55'),
(13,13,222,'zcxzc','What do you mean by having PHP as whitespace insensitive?',0,NULL,2,'2016-08-04 14:51:51'),
(14,10,222,'asdasd','What do you mean by having PHP as whitespace insensitive?',0,NULL,1,'2016-08-04 14:50:12'),
(15,10,222,'Toggle Modes','You can specify the action needed for expanding or collapsing the Expander. jqxE',0,NULL,1,'2016-08-04 14:52:19'),
(17,9,222,'Text of the printing a','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem',0,NULL,1,'2016-08-05 08:40:30'),
(18,9,222,'Lorem Ipsum is simply dummy','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem',0,NULL,1,'2016-08-05 08:41:49'),
(20,20,222,'','',0,NULL,1,'2016-08-10 15:59:59'),
(21,10,222,' No refund shall be granted on the confirmed ticke',' No refund shall be granted on the confirmed ticket after four hours before the ',0,NULL,1,'2016-08-06 09:07:06'),
(22,10,222,' No refund shall be granted on the confirmed ticke',' No refund shall be granted on the confirmed ticket after four hours before the ',0,NULL,2,'2016-08-06 09:07:22'),
(23,9,222,'What is Lorem Ipsum?','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots ',0,NULL,1,'2016-08-09 09:02:09'),
(24,24,222,'Where can I get some?','There are many variations of passages of Lorem Ipsum available, but the majority',0,NULL,1,'2016-08-10 16:00:06');

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `fromuser_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`id`,`u_id`,`rating`,`total_points`,`fromuser_id`,`created`,`modified`,`status`,`comment`) values 
(1,102,3,3,222,NULL,NULL,NULL,'asdasdasd'),
(2,35,5,3,222,NULL,NULL,NULL,'zxcvxcvxcvxcvxcvxcv'),
(3,76,3,3,222,NULL,NULL,NULL,'sdasdasdasdasdasdasdasd'),
(4,221,3,3,222,NULL,NULL,NULL,'asdasdasdasdasdasdas'),
(5,223,2,3,222,NULL,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. '),
(6,223,5,3,222,NULL,NULL,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. `'),
(7,27,3,3,222,NULL,NULL,NULL,'asdasdasdasdasdasdasd'),
(8,67,2,3,223,NULL,NULL,NULL,'asddasdas'),
(9,80,4,3,222,NULL,NULL,NULL,'asdasdasdas'),
(10,130,2,3,222,NULL,NULL,NULL,'asAS');

/*Table structure for table `rating_users` */

DROP TABLE IF EXISTS `rating_users`;

CREATE TABLE `rating_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `rating_id` (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `rating_users` */

insert  into `rating_users`(`id`,`user_id`,`rating_id`) values 
(1,16,8),
(2,16,9),
(3,16,10),
(5,82,12),
(8,31,15),
(11,31,18),
(13,119,20),
(14,166,21),
(15,174,22),
(16,79,26),
(17,109,27),
(18,76,28),
(19,159,29),
(20,90,30),
(21,10,31),
(22,190,32),
(23,10,33);

/*Table structure for table `specialization` */

DROP TABLE IF EXISTS `specialization`;

CREATE TABLE `specialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=latin1;

/*Data for the table `specialization` */

insert  into `specialization`(`id`,`u_id`,`specialization_id`) values 
(17,8,8),
(18,8,11),
(19,8,30),
(20,8,34),
(21,9,3),
(22,9,4),
(23,9,5),
(24,9,6),
(45,4,3),
(46,4,4),
(47,4,5),
(48,4,6),
(57,18,3),
(58,18,4),
(59,18,6),
(60,18,7),
(61,20,8),
(62,20,11),
(63,20,27),
(64,20,30),
(65,20,34),
(70,3,3),
(71,3,4),
(72,3,5),
(73,3,6),
(146,11,5),
(147,11,25),
(148,11,30),
(149,11,34),
(170,66,3),
(171,66,4),
(172,66,5),
(173,66,6),
(178,65,3),
(179,65,4),
(180,65,5),
(181,65,6),
(182,61,8),
(183,61,25),
(184,61,31),
(185,76,8),
(186,76,22),
(187,76,31),
(188,76,34),
(189,56,8),
(190,56,28),
(191,56,34),
(196,77,11),
(197,77,28),
(198,77,31),
(199,77,34),
(204,79,8),
(205,79,11),
(206,79,22),
(207,79,34),
(208,87,8),
(209,87,13),
(210,87,17),
(211,87,21),
(244,130,8),
(245,130,28),
(246,130,31),
(247,130,34),
(248,106,8),
(249,106,11),
(250,106,20),
(251,106,34),
(272,123,17),
(273,123,22),
(274,123,28),
(275,123,34),
(276,159,7),
(277,159,8),
(278,159,22),
(279,159,34),
(280,164,3),
(281,164,4),
(282,164,5),
(283,164,6),
(284,160,3),
(285,160,4),
(286,160,5),
(287,160,7),
(288,157,7),
(289,157,8),
(290,157,13),
(291,157,28),
(294,90,8),
(295,90,11),
(300,126,19),
(301,126,28),
(302,126,34),
(303,126,37),
(330,10,8),
(331,10,11),
(332,10,34),
(333,21,13),
(334,21,22),
(335,21,28),
(336,21,34),
(337,186,3),
(358,189,3),
(359,189,4),
(360,189,5),
(361,189,7),
(362,190,8),
(363,190,13),
(364,190,21),
(365,190,34),
(370,15,6),
(371,15,7),
(372,15,8),
(373,15,9),
(374,109,22),
(375,109,28),
(376,109,31),
(377,109,34),
(378,163,6),
(379,163,11),
(380,163,13),
(381,163,25),
(382,198,28),
(383,198,31),
(384,198,34),
(385,198,36),
(386,204,8),
(387,204,11),
(388,204,34),
(389,201,7),
(390,201,8),
(391,201,11),
(392,201,34),
(397,41,11),
(398,41,13),
(399,41,22),
(400,41,34),
(401,175,7),
(402,175,8),
(403,175,13),
(404,175,36),
(405,48,8),
(406,48,11),
(407,48,22),
(408,48,28);

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `status` */

insert  into `status`(`id`,`status`) values 
(1,'Approved'),
(2,'Pending');

/*Table structure for table `sync_friends` */

DROP TABLE IF EXISTS `sync_friends`;

CREATE TABLE `sync_friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sync_friends` */

/*Table structure for table `tasks` */

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tasks` */

/*Table structure for table `tokens` */

DROP TABLE IF EXISTS `tokens`;

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_phone` varchar(30) DEFAULT NULL,
  `to_phone` varchar(30) DEFAULT NULL,
  `get_token` int(11) NOT NULL,
  `call_pending` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tokens` */

/*Table structure for table `user_categories` */

DROP TABLE IF EXISTS `user_categories`;

CREATE TABLE `user_categories` (
  `id` bigint(22) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `cateId` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

/*Data for the table `user_categories` */

insert  into `user_categories`(`id`,`userId`,`cateId`,`created_on`) values 
(84,217,31,'2016-07-07 00:00:00'),
(85,217,35,'2016-07-07 00:00:00'),
(86,217,38,'2016-07-07 00:00:00'),
(131,223,2,'2016-08-09 00:00:00'),
(132,223,4,'2016-08-09 00:00:00'),
(133,223,7,'2016-08-09 00:00:00'),
(134,229,1,'2016-08-18 00:00:00'),
(135,229,2,'2016-08-18 00:00:00'),
(136,229,3,'2016-08-18 00:00:00'),
(137,227,14,'2016-08-18 00:00:00'),
(138,227,15,'2016-08-18 00:00:00'),
(139,227,16,'2016-08-18 00:00:00'),
(140,226,23,'2016-08-18 00:00:00'),
(141,226,24,'2016-08-18 00:00:00'),
(142,226,25,'2016-08-18 00:00:00'),
(143,224,16,'2016-08-18 00:00:00'),
(144,224,17,'2016-08-18 00:00:00'),
(145,224,18,'2016-08-18 00:00:00');

/*Table structure for table `user_tasks` */

DROP TABLE IF EXISTS `user_tasks`;

CREATE TABLE `user_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `user_tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_tasks_ibfk_2` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_tasks` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` text NOT NULL,
  `api_key` varchar(32) NOT NULL,
  `status` varchar(150) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL,
  `mobile` varchar(12) NOT NULL,
  `lat` text,
  `longitude` text,
  `gender` varchar(150) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `experience` varchar(150) DEFAULT NULL,
  `specialization` text,
  `fees` varchar(150) DEFAULT NULL,
  `consult_time` varchar(200) DEFAULT NULL,
  `profile_image` varchar(200) DEFAULT NULL,
  `gcm_registration_id` text,
  `verify` tinyint(4) DEFAULT '0',
  `association` varchar(300) DEFAULT NULL,
  `qb_id` varchar(200) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city_id` int(11) DEFAULT '1',
  `remove_or_not` tinyint(4) NOT NULL DEFAULT '0',
  `subscribe` int(11) NOT NULL,
  `terms` int(11) DEFAULT NULL,
  `description` text,
  `Token` text,
  `licence` varchar(255) NOT NULL,
  `roomId` int(11) DEFAULT NULL,
  `Online` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password_hash`,`api_key`,`status`,`created_at`,`type`,`mobile`,`lat`,`longitude`,`gender`,`location`,`experience`,`specialization`,`fees`,`consult_time`,`profile_image`,`gcm_registration_id`,`verify`,`association`,`qb_id`,`address`,`city_id`,`remove_or_not`,`subscribe`,`terms`,`description`,`Token`,`licence`,`roomId`,`Online`) values 
(1,'Romy Khurana','ros','d6dfb33a2052663df81c35e5496b3b1b','ec26f51ccedd7904ec90e6f5f9599205','1','2016-05-02 22:53:07','client','9780054161','sdfsd','fsdf','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','fr3I7OIzNN0:APA91bFZb3EuddZ8MyxBYXAwjsW2rUXUSze8qOr-dsQ-IfwlU8s1aBaO1nKt3SsUa3zq3WOsbhC4WTATSFr7LLx27Mj_PauBto8x5ufFRMK2LK3WA3jLRwbilPhpveiebvA_alLi37LE',1,'','','',0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(8,'Ishita Dahiya','','d6dfb33a2052663df81c35e5496b3b1b','79acbd4facb8e279fc415e2c2709b113','0','2016-05-04 15:14:05','client','7508195049','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fg2gx0L35iI:APA91bFXqdEogNkbzOZdtnGJDIAT1Dj-3FznYyCCI5lk5CcWiGqC7W9lwufY8gG_3_l8TxVQVIN4SefT4caCaqaKrKfWzYunmrYZ5r5_BP35gwGHJCr9sVW2o9YuS_2FAtD0HUm80dMS',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(9,'Sohan Singh','','d6dfb33a2052663df81c35e5496b3b1b','4e9a83bb667a5a8d7afbb4d05e6eb714','0','2016-05-04 17:03:21','client','7508455189','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','cpMksggUDPg:APA91bHSttGvyfAaUWrXQZ3P6lE6l9rPceb6C64Pmw7cIveLGCfMCr6qRgT_5CKFJhZD-D2sQz4C0_1opfHNgrItXzytX9otSBXrvaoM-8k86UbIQa8YzwAmv_AvsuAPcfB_6a5wSBfe',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(10,'Prithivesh Jerath','','d6dfb33a2052663df81c35e5496b3b1b','fc4f857c5e71f06a26144f2838025a52','0','2016-05-04 17:18:15','lawyer','9988950007','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','30000','{\"from_time\":\"02:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-312359887.png','c8TL3NZhXyw:APA91bHQbSXPszDPTaq2a-5O9822ARfsIRMybi3-FVvFGT5I8FjsoBADlVtJ8SwqCHtHwI9_-RHEEkXp4Hchewi_-nWDXctyCCNsOtO8ChWKEguqUM-Wm2JgTqXu2-XBeayH7UBSeN5y',1,'',NULL,'house No 992 sector 9 pkl ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(11,'Dhivya Jerath','','d6dfb33a2052663df81c35e5496b3b1b','88bce0bdc565618485b191ce800cb85d','0','2016-05-04 18:54:14','lawyer','7087577992','','','Female','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"5\",\"name\":\"International Law\"},{\"id\":\"25\",\"name\":\"Arbitration and Conciliation\"},{\"id\":\"30\",\"name\":\"Constitutional Law\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','55000','{\"from_time\":\"09:00 am\",\"to_time\":\"08:00 pm\"}','http://localhost/winci/uploads/profile.png','dRl0XkxK340:APA91bF_CGufABLCIO88VZIBWM9INqOOeZflXL-VKHdc7LpLbAgMM-AncR7Dzv3lRhxTGt5JxhKJxL1j3B8NgmNaO9xUmWe6WjAmv9QX5WWttsBBZ-ATj6nM7pI9r-63ob64VNWm2myM',1,'',NULL,'house no. 992 sector-9, Panchkula',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(12,'Abhishek Bansal','','d6dfb33a2052663df81c35e5496b3b1b','54a356df5f8c5b079244616e2bd9b701','0','2016-05-04 19:43:55','client','8146262629','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dc7HQnczUM4:APA91bH6l2aeYIJI9MBIWNzf7muQsDTA8Y-yPARzrtp8tm4sUUdDkxLT7efqzKCzb5LHFbmQijMhf2KqieRdBVFhr0z0u4odGainF8wMt46OorZLjMO-92N_dkTNGbu2usk2-O-MJLpr',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(13,'Neeru Setia','','d6dfb33a2052663df81c35e5496b3b1b','46f426e89c465abe39ca0d42d626a85d','0','2016-05-04 20:07:20','client','9876733518','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c3DJC9QbJ9w:APA91bGPLH_Tt9KjD0vUzPSDLtNxzrJdHqNfa5NbikSXsq9erDz8jWEvrLstht6QQnc-ESis5GCzZEJKbu9_TCbeZUVmjVhBdNIyZ6BQ6MTkKSEtIDJMtTQjAoU65t88eKnMfpWmctRO',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,1),
(14,'Naman Setia','','d6dfb33a2052663df81c35e5496b3b1b','9f87a06855dced6ceb7bf97c6b5b12db','0','2016-05-04 20:08:01','client','7837829127','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eWHwiDxKF4w:APA91bFxywPGqxiS5YhIto7NlExhwTej3MicCgnzhc0hzVlvnvU8rAkKXKZpQ_0M0c2dJVn0qfmw9NYKRCw4Wo6gf9IyiOUB2b0EPR4wpJKBYYWTb9tLMZym5BG9FemsjsK1LlB904Vr',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(15,'Vijay Kumar','','d6dfb33a2052663df81c35e5496b3b1b','f0ae4e0f1ebfe125c2be89eb4bc7c77d','0','2016-05-04 20:10:11','lawyer','7835981999','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"6\",\"name\":\"Labour and Employment Law\"},{\"id\":\"7\",\"name\":\"Landlord\\/ Tenant\"},{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"9\",\"name\":\"Media and Entertainment\"}]}','12000','{\"from_time\":\"09:00 am\",\"to_time\":\"10:00 am\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE192304386.png','cjNccr-sOyI:APA91bFTbh1tb_cZ8v4gUXq19GUQHi8KsMUlJ3DaMuYJvCRBII2meLiQWrG2lmPzJlCEoNuyer46AoiNv9kixpUUg_x8NRYOQIKzrotVmqGtVmxYlhyUad2SLmGFA_eNVl1X8Qw0TsTo',1,'',NULL,'Sector 29',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(16,'Vivek Sharma','','d6dfb33a2052663df81c35e5496b3b1b','c395b39bb71f8ee484a98ed7bd6cb8bf','0','2016-05-04 20:40:39','client','7508789139','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE610569269.png','f62zorAFyn4:APA91bGVATNc35BvYO9e5ucPCdHpumNEOKRmxitznXQCh_vikmgUFvP02t9AqbDOl9P40-XpBkYtMuosL3LDdPUXCUPLrEEN5q-lyPWIC83ItTDi60PWdAgFP_MtxkQ_E1XJK2pKbKV4',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(17,'Piyush Setia','','d6dfb33a2052663df81c35e5496b3b1b','f824a7e211930066519039ee087827dd','0','2016-05-04 21:27:49','client','9878779288','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dLN_ZN6KVvE:APA91bEmSCHggXmAg00iHKncbjuHF72ZsGfDhzs4WDMlABI1xawHnPQtl9NRRCqihMWpgdBAM011Obhg9espL6cRXKIj5z7HdSXB_NSSiql4dLgxO8GuARSlEXbF1cq3KxgpzXUCn-uh',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(19,'Savita Bhandari','','d6dfb33a2052663df81c35e5496b3b1b','d20c85958728d50e105c42d0f6e9be62','0','2016-05-04 22:46:20','lawyer','9814920603','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(21,'Sunil Kumar Vashishth','','d6dfb33a2052663df81c35e5496b3b1b','6472c259536eb0f0089a82bf3c0656c5','0','2016-05-05 00:10:03','lawyer','9417013448','','','Male','Chandigarh','30 - 35 years','{\"user_specialization\":[{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','80000','{\"from_time\":\"06:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1421290218.png','f388f4sttmM:APA91bGHVRCn7Oowd9zEu-CqxeYp9vkYW8NQtd4_tlQ392D_r57_q6up2qajt5Nm7sY7kJwZMYsNZ5n5hu7HeVpwYuCAwq-yzFPemDZ-ElIUk0uySaVLyWxJtnW5-rpFw5vFKdMwwks1',1,'',NULL,'687, sector 6, panchkula',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(22,'Anureet Kaur','','d6dfb33a2052663df81c35e5496b3b1b','aee60ad0054740fb199811abb7ba949a','0','2016-05-05 01:01:01','client','7709875836','','',NULL,'Pune',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','f4sVBLUrQKA:APA91bGawD8AAPBMH7Pa0JJMhKT-m-WkKAf1H3Dq7hcHptdYapbeuwh1rOVZwlZCtoJv9QDB9icLnOvR0gvqfZd73f3rMDm-ZmBErXnGuRsFs6WLEXMYxdE5wiX2kW_hBfppGsKPtzWk',1,NULL,NULL,NULL,19,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(23,'Ishan Khan','','d6dfb33a2052663df81c35e5496b3b1b','802dcd4aad67c3cafbf0dca2777e3c56','0','2016-05-05 07:42:19','client','9797236162','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c1N5T0y6BpU:APA91bHAoU_3HyVhxu-2OsPdyrRvgOxayRoDSqFhjmAl8BZuECFkh8Y4y0dEb_qTYuha_tm6JgwbgUpFjaMAb48jBsRkhBq6QNkojmwOL2MJe4t8CDn_LJ1xSwB5NY3Bu34CaEmcmem6',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(24,'VINEET GANDHI','','d6dfb33a2052663df81c35e5496b3b1b','275a92ef46715c23eb737588b445de06','0','2016-05-05 08:03:40','client','9876122129','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cbMKqBSfgTw:APA91bGC4sqt56TR8TxzW5wh2cFwd_oMSjGht58fYk9ebodBhOn68KFTrBPkU56iXLtXMRtiUm-xBivVMuKHKnkAey2PulR_-mlvjHUSUDBKSzcnz3zsEGTD4MPT2D_nXE1NstNShCvl',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(25,'Sahil Sahni','','d6dfb33a2052663df81c35e5496b3b1b','a674cda372e63748fd383c2ec6e19e98','0','2016-05-05 12:09:13','client','8146087871','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dLBh_8IFnUw:APA91bG3QU3J0ZnhY_J84oXtIQAUHzYP_a9Z1jErpEOyy3bmOyYJY68c3dleogaz9johL0EgdXQiq5avoYpwZykzF8Vwx3N1tymL5-nmUnGKmJ9NeDe9XRUuYQU-wLB84eUJ0c--uD3L',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(27,'Anuj Sharma','','d6dfb33a2052663df81c35e5496b3b1b','52a4a8890e27aa4fdfc242a38ea7637c','0','2016-05-05 14:19:54','client','8879441434','','',NULL,'Mumbai',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dbi7G786MqY:APA91bF6AZZQUFbxO9AGb9CgUGwqkrWoVSZYlEO8kPpVrUvOIKqSWl7KADUAM_rTERxwNBjXrVDN-IlfmiFiJO3S7Sm3VO1x-RO9lg66bZlC9lMKmnGMtDeES97OEzty3BjnOkMuSLGI',1,NULL,NULL,NULL,14,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(28,'Reema Saxena','','d6dfb33a2052663df81c35e5496b3b1b','9174f1561bdc56b1e37643a27e3a1496','0','2016-05-05 15:12:58','client','9560900036','','',NULL,'Gurgaon',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dqthgv9J_Kg:APA91bFFfFnMBMGONlCBUXpxxoQGSiICYtEBjy_AeWSzaw2oqTpn1lKxwbWGtDxP975hbN6_hWGLeOlxrvi2Yj3uXAboGAFV7efiRlOdzHiQoc9Usm7QykaF0pAMuSrrIw-bpwy0PH7i',1,NULL,NULL,NULL,4,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(29,'Vivek Shrma','','d6dfb33a2052663df81c35e5496b3b1b','6d15fb45900dcd757396c01d733dfa11','0','2016-05-05 15:36:23','lawyer','7508987139','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(31,'Sakshi Garg','','d6dfb33a2052663df81c35e5496b3b1b','bef78a0b49f0726258642e826a1d2e51','0','2016-05-05 18:27:08','client','9138181087','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','cvOL0JlIS8Q:APA91bGDL6WnZFhmSiCIGCaYEW-tgtg5yR6JUiZxuPeHy_ACtQ04DHKV9bwL5_QN-Xx-knbFGs7pzRzVvQeZIjk-d92H9fe22lmKYzVw9U4o60SH7nYv0_BnzfDm3afnoIdixuT3vapj',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(32,'avinash kaur','','d6dfb33a2052663df81c35e5496b3b1b','32d6002cbaff613f60618bacc1979574','0','2016-05-05 18:56:01','client','9888406369','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fPt33nRI0G4:APA91bEkZLglcl_nxKfCrgibOUQ0kepLCMFuR5QNizRCTyjV1pP9eJrQzL5G8ySf2tHwUG4XrHE7MgBXf4jwfnugLNgoN76N41PaIom3IwbBwUWhpZigmUIr9m_TlvHds-VEuvbqAKbO',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(33,'Aditya Singh','','d6dfb33a2052663df81c35e5496b3b1b','c9c522db124eb9622e5b6be2fd466cc2','0','2016-05-05 19:15:01','client','8558850058','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','elV74Av-SMI:APA91bEfCURHwB6ElrZQobSIS2x3ptLUdSdRSt3JbK5V3srFpXTh2gA5kTP985VuLKyDXcpoMhFu9kwCr9aIZsJHI8ZPHE4EUBT__3etXaYHi_cXYj4UpCk4UgQzTy4FzDxHBb50JRlw',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(34,'Himanshu Verma','','d6dfb33a2052663df81c35e5496b3b1b','635d2f7c5ef6da9a4a875670e27da010','0','2016-05-05 19:58:38','client','9569672227','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(35,'Aarti Thakur','','d6dfb33a2052663df81c35e5496b3b1b','7225835a512b0e54c244b981e5fdf637','0','2016-05-05 20:29:09','client','8699244007','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','c5a6WcS-hRk:APA91bGS00CwNqHRMktLZSEEGoNSKtX0rcLHl4ZC8bF9vEZyz_oZLl0M0Qzik8L6AAsPDUlJT9cvZ-L-Segzrv1SXci41hIYTXdDarYWqVU1oRWzX_AYe1Zr4nOxPWg8phHt2zTH3ycr',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(36,'Kavita Garg','','d6dfb33a2052663df81c35e5496b3b1b','6d1a9e55468a585c7b39463340dc7ef0','0','2016-05-05 20:43:34','client','8699869017','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','dB5_aewwbxc:APA91bG4u1KkaaSknTPWwfuhFEUlJP8qsvSaAQ4Ci9ApBBts3alcMlUmRnjryD0_CdPoTIlVfWcShyWNh9eyat3JEhhGlIhkcNBFj090aNqjDrKMoAue1VJeh1oK2c0IVEIn7k-eW_PA',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(37,'Tarun Marwaha','','d6dfb33a2052663df81c35e5496b3b1b','ad8cc7b3da2af46febe6a63df321085f','0','2016-05-05 22:03:37','client','8600463331','','',NULL,'Pune',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fMAGdjftEzA:APA91bGqTQUc-YdyulAIWwV3o5XOVeNqbQzQFiRTe60YzA_j5POMMfTGNmBUMseA58h20NerJdId0dOFG2ZM1Ilr15v1XG7nB9ULCLDGs6Uq9NXaWwh_RggHXgc0WiIBiPhdCjPV3edU',1,NULL,NULL,NULL,19,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(38,'archit mehat','','d6dfb33a2052663df81c35e5496b3b1b','3459f94a06ef2482d2b38320e7b8cf5c','0','2016-05-05 22:11:19','client','7276290970','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','ca_EsAM_fx8:APA91bEK3DLvNzgt4tAnhqfpMZQBxpCrhkD6FkS5B1Jp52UlNry8QmHyJGl_OucbY41r7Bdc0NxPTxQ5JlAX9dseir1iLOr4gmHDvTBJDBwMv3X1ElqYIr9wfpGghKb00VIumZ8ePDgZ',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(39,'Rupali Marwaha','','d6dfb33a2052663df81c35e5496b3b1b','27ab607dbdd5aea8584ae5c05941647c','0','2016-05-05 22:18:29','client','9878887470','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fpnOOtqUdG4:APA91bE8YNrZK0GClMp6IqbN_R307kuMuk1H9ex4V4PmnKXKuGyGMIYgwHnjSAGmouTkz8gmsdAUMuQqNZqJO8l4y7IiQjYSug6CCRde5rI5E79YySpE_u6NYCCGoAWNAAhybz0rw9Vm',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(40,'Tushar Kharayat','','d6dfb33a2052663df81c35e5496b3b1b','550919469568c5cdb83cdb4f59f24e5a','0','2016-05-05 22:30:41','client','9890805549','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fCghtoU99zk:APA91bFB28W38OxnaSeSsHgZO8SbVV7H_V_LzZUCGl6pUgFSPkr3-bvhZliCQzxH-flHR0xmefBxEtPidPVS2xCM2CEsHfqFDI-kMK10CV1P7zFWqydPHhQ5AtJSfbKzRCRA9MF1ISfN',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(41,'Jyotiraditya Singh','','d6dfb33a2052663df81c35e5496b3b1b','4cb3bfd9cef3436ce87317ac99c08182','0','2016-05-05 23:06:40','lawyer','8558880058','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','20000','{\"from_time\":\"09:00 am\",\"to_time\":\"10:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE883458002.png','f2uhI7Hv1y4:APA91bGICVhpDBtOO6aRZIBXgRDmyG9RI-yL-TmkOQpM7gZO4xJACyUOAX2YQEZDfavzM3odPHPTkHIVx4u8APp1yl2lRQrmPmIubxC3StuiSS1O1JcEZ1jqZADR4c03Q38Dl0e4xGPO',1,'',NULL,'#1097 sector 7, panchkula',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(42,'Neharika Prakash','','d6dfb33a2052663df81c35e5496b3b1b','4269298f567da5368006706fa0e61783','0','2016-05-06 00:59:13','client','9988381192','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fUDtvJsquVU:APA91bFoOTeu0PMtmfynFsU37AkgHjdJP9PK4zbb5qE1YU_iMyft4q0NWAsC7JzI_tX1oH7fHXKveKfo-y7UfV8ZFqjtsh84bawZ7RR7SPSfNLnuwm_38EBDviWgJeXOrKJJLRi0JeAx',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(43,'Aadesh Singh','','d6dfb33a2052663df81c35e5496b3b1b','919ec86ebbdc4fca67be78e7685e92c3','0','2016-05-06 07:45:51','client','9888021489','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cbRdLgb1zuU:APA91bGqcsWECeEmhpaJP_BUhubxBQStcWQc47O34syYYD89Ck8BE2yb-2-zjjJyhQrNql6GPQJBGPiwO0JpXII50KpxC8UdU_Jc7eV7fkuSQ42BgLlgtdLAdIm4KIqPGblsSRdAb_4e',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(44,'Harleen Kaur','','d6dfb33a2052663df81c35e5496b3b1b','5a7c8011e5ed303bcf72596e7bbccc2a','0','2016-05-06 07:51:07','client','7696231593','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dW-ZHnSRMvk:APA91bGNKk0znipCxeBSDxIzW9fAPPMAwcEY7VY_Q9HPCOb8hzRkjIkEuTEtw4LQRUj9U5syZTylRBbvoebPtlMTrYiiSLuG47fjqELeFQ4qW6LsKQyMxb-5TgR73YM5N_Gq6jI-lA0F',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(45,'Pranav Sharma','','d6dfb33a2052663df81c35e5496b3b1b','3b61cd246ead9d7be724873d1210498d','0','2016-05-06 07:57:21','client','8437659925','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eICFh1iDID0:APA91bEJGN-Y-S-ZijhxUxFGWnvy1oPfVNJW7C2MXygm02HzlxfoWFR5J_lWqkG5l-EBKXI863nW-ecnDk4VHqw77CbZqc4N5AQZvl4LHX3ZQe40DJEbVV07OJJPkE8-usfUOoXSah6_',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(46,'Apeksha Kakkar','','d6dfb33a2052663df81c35e5496b3b1b','5bb19b5fcdda3c090a3ecaf3c7fc64bc','0','2016-05-06 10:30:26','client','9711161198','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fjbfqO0hLXk:APA91bELGV1fc4eu0LjQiXZiLQn2Q_ZUoXKEKqjhlAiM_AwOPurgDb8H790HES6cuqpJ1wF1phFbfStBnA7JVmFEZOFV9xJwDciu3MGlWIBYSF4pCccwKqipdZCxlthI12GjI241B8JA',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(47,'Shiv Kumar','','d6dfb33a2052663df81c35e5496b3b1b','17d20a8ca0a15eaa3391f0c550c45f0f','0','2016-05-06 12:14:52','client','9417870195','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fmp09tB_JLY:APA91bHLnPi-kYHtZ7YzQUy1YPB7XKtn-VD9Dfdci-PTtQukHv30nNCU1BwP-atpRMvUObzSQ78DND0j7eobgSbPAay0L7o7lFEkCJ8dTXj1eJpNizjjtZe6ZKGmC1pCrqTaFy95MR5P',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(48,'PRIDHI JASWINDER SANDHU','','d6dfb33a2052663df81c35e5496b3b1b','c3499f83ca362a7976d6c73c1d7b5dc1','0','2016-05-06 16:19:29','lawyer','9888218909','','','Female','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"}]}','20000','{\"from_time\":\"09:00 am\",\"to_time\":\"08:00 pm\"}','http://localhost/winci/uploads/profile.png','eycKW0VLDRQ:APA91bEC_X5KjzJZaVsacuWc1Al5LZj2Q4FkOO9YJUeGSIWJJyPbg0tG6ChV6Od7SmQgbgx50-RHyYq-cz5zcErOZejgYJMu1ySgFh-1ECE3PcmxHN3tDTrk0WbM_7y32SAyD3-dQrK2',1,'',NULL,'House Number 469, 1st floor, Sector 20 A, Chandigarh ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(49,'Shourya Garg','','d6dfb33a2052663df81c35e5496b3b1b','182c038c3636c9f93cf411378cd0a6d4','0','2016-05-06 16:22:30','client','9417134830','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','d4HBOMBwHUg:APA91bGZJuV0CIINdoUKkg3gYLqAJv3SuSWXpfG4LtLJIYPHS6DoxTHyc-B3BPa8qw6RuVc44o7xTlt1WcXN9DG_rENCdS5MHLUJ0LWllUt5x8vigmWAxOVe8mX-ojY2ui9gyUjleffP',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(50,'Puneet Sachdeva','','d6dfb33a2052663df81c35e5496b3b1b','9207aace80da119c29ce92456a1c2cb7','0','2016-05-06 18:59:57','client','9855120747','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(51,'Puneet Sachdeva','','d6dfb33a2052663df81c35e5496b3b1b','5575def466a6cc65af5a3a8246fcb637','1','2016-05-06 19:00:30','client','9781732820','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dN1LqIUkXAc:APA91bG_ChKYZiehcXWtPdGDAx_gldBj5FeFwLrCoKjwN6pz4fFIKNkApkyCpCRjhZoWpZKEt42mzFRd_HM4OTnnHAPKnhZ6hwvdDPiAcZWUJrP5Rvorb1bgp6idgrAZ6NcC8NesFrPl',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(52,'Vrinda Sahni','','d6dfb33a2052663df81c35e5496b3b1b','55dca13735c3eeaec97a30a24e8aea24','0','2016-05-06 19:09:02','client','7340902686','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','f6o70WxUu-s:APA91bGEO7Fq59DCNKa9ydTNcPD0pIun-vEV4UDsIwFDwxKYxO-C_1SGX1VNhCR179K_msFr90vvDwHzplnQRaD9NJrW5vWCf3JXYJwYcyArjJ6ZK9r9srHLzVWuPEZNZLplTp-C2yFc',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(54,'Narendra Kumar','','d6dfb33a2052663df81c35e5496b3b1b','6796ae13f9128acfea65d579bc7f6619','0','2016-05-06 19:58:53','client','9876975055','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','ckh8stWiUYY:APA91bE7lo2FSotviMtqePmNvrJo860Dxy1gGsvnOptEPjjwPx-fvOKMiKCrF_yHhfPk7G1sQOndo_0_49jHg0ZcR08FKvkdT4h9ozGu_2rf24H0wWm7MS2p8J1qyhLjwWVSiZTJtiqF',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(55,'Manmohan Gupta','','d6dfb33a2052663df81c35e5496b3b1b','72ce156e9172ef352748514b4f6afefd','0','2016-05-06 20:22:21','client','9872206135','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cRXsm47ZSfU:APA91bFHT_huE3pTWnQvPYRHZ3yb5WR3Pi7JfzU9CjNFeJ6n5beTiHxhE2TR7ZK8VfIFu1FGxwunpQBegsK9dJ92Ng14sNzyCrl8OTWgFPBAiafiXkA_oq_rr9oHXSf6-dA4WRbz3uBH',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(56,'Vipan Vashisht','','d6dfb33a2052663df81c35e5496b3b1b','bdee50c7bebf9876532cbb25caf5076d','0','2016-05-06 22:35:32','lawyer','9417157019','','','Male','Sangrur','30 - 35 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','33000','{\"from_time\":\"05:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1777656790.png','fGoleYCw6-Q:APA91bF1H__RQ1M5kFFxLVIpaQPe8nzKwk98LXuxZuV69CozjilwFecVu_7WBRHQ0LT7NIOuPJdHUN7BNmmb-Zua8ixZInqien6f2crNcFCrFMBUtSpPUNftMCQrPIzUUGRmf2ZEZvQp',1,'',NULL,'Chamber no.106 Distt. Court Sangrur ,Punjab',11,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(57,'Bharat Bhushan Parsoon','','d6dfb33a2052663df81c35e5496b3b1b','288b7e3eec4755f968b6a1eebdfee37d','0','2016-05-06 22:41:58','lawyer','9999688558','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(59,'Mahima Madan','','d6dfb33a2052663df81c35e5496b3b1b','8650c454515e4da1d2f17225bdd1b0bf','0','2016-05-06 23:59:57','client','9810158227','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','fBPiDVh12XI:APA91bGFMKuJQkAVQmSCZxxNl5y5vrIz3AcolFD2R5U92py03K4Yh7nSHmBlexF8mq-KaeunhVnkRTBs3eujtdU3QJA44oprqwMpnK0mAUeUsL0zjRO43tS_-nHb8CsWnyDYjPVmQYBA',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(60,'Tegbir Singh Batth','','d6dfb33a2052663df81c35e5496b3b1b','ec7aad3108585d2260ce446aeeb23659','0','2016-05-07 07:39:43','client','9988994547','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','egXhl-6kZx0:APA91bGFrclE5snuPIQUpfDxUXCzHxPICVsqYWbcmedJSovC2qHB_nIqJhmzNCw8CH5WJ-fv4hpzDbqObmRHaKHih-iAF7J_bZk_739hEMf5sKtwiHVA8Ljzumau19iq1VPlSlfs9DKj',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(61,'Nishant Kumar','','d6dfb33a2052663df81c35e5496b3b1b','a0a0c1ffad67589efec22609b9d5c896','0','2016-05-07 14:00:59','lawyer','9599530105','','','Male','Delhi','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"25\",\"name\":\"Arbitration and Conciliation\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"}]}','5000','{\"from_time\":\"09:00 am\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1792474155.png','dJHjB_8ajgg:APA91bE2GXwxlkqeifHFC_jVmvJJVao2GgmmBq1L2GrpxFejzqsfoXLBqZDIdjqfbr1-xZtIe-8vQJxzACYXs7IIg0H-8VP8HpLccVV_CQDerkRLrMs25i1kOIfszVmCJwDyLQ39N0zU',1,' Handoo and Handoo Associates',NULL,'D-II/4, Shahjahan Road, New Delhi',3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(63,'Fgfd Gdf','','d6dfb33a2052663df81c35e5496b3b1b','97fac5b9ca013d21db0a3c48b3ce9d6c','0','2016-05-07 18:23:39','lawyer','9584554416','','',NULL,'Sangrur',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,11,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(64,'this is','','d6dfb33a2052663df81c35e5496b3b1b','e7f3736b12cd1b810c6e9a268d9df8b7','0','2016-05-07 19:36:35','lawyer','7845784857',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(67,NULL,'','d6dfb33a2052663df81c35e5496b3b1b','9a4a1de84f8dbad86e7964ec97d53218','0','2016-05-07 19:50:50','lawyer','7888888888',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(68,'Pankaj Chauhan','','d6dfb33a2052663df81c35e5496b3b1b','95d7399e76ee8fffb9adbe074d4f36ad','0','2016-05-07 20:38:04','client','9888364435','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c6RCdVeEiwg:APA91bG_wDEasq0-cRhU575rjiEqJRQTjxf6W6md0dfEaD8deksEu1Lz_M7p6INCFFk_GoPMuJ0Gfn0kUpa45wMsb-AC_6yKzXqy6dwwlT1gm_fr1PeMLLBuTbvivwhC39nNNMdDH-ng',1,NULL,NULL,NULL,1,1,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(69,'Parmeet Singh Mitha','','d6dfb33a2052663df81c35e5496b3b1b','556315c89fc251b1021fa6471cde2026','0','2016-05-07 20:38:38','lawyer','9417609666','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(70,'Naresh Khurana','','d6dfb33a2052663df81c35e5496b3b1b','608afd24cdc989634e5dd04a27ce33f4','0','2016-05-07 20:55:33','client','9815193820','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cRlxqzamGGI:APA91bFs6j_5x6bSUCqT-NtstdAFLWH2BLO4v67QaINZtU8mRW568PmMcAju8h-Kr3ZrEBGo2chx6RCJdDvbLkK6eLDLjNPYHNKqyRvuQ1i66GAW8TJY7tmjkVX1W8YWw1dgRKgOBhGw',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(71,'Zeeshan Ali','','d6dfb33a2052663df81c35e5496b3b1b','69577faa6adef58ec3a329b8ea266605','0','2016-05-07 23:22:01','client','7042620820','','','male','Delhi','','','','','http://localhost/winci/uploads/profile.png','dsHcA-w8w-A:APA91bGO0NmdfrmHt2FmFEUt6mssp6vfwPDLvJvY9zenGa2-yv_vzxcdo4kMfFOa9uchCc-5-fYh3GnSs5YY8bmlyTrRBs3A9Cvsx2aZsB_v7QLpnY7H9pyf28tgXWFVBENT3e1yHv25',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(72,'Gaurav Kamboj','','d6dfb33a2052663df81c35e5496b3b1b','6f5f30bbafc6a47c0a47c213a72fde08','0','2016-05-08 08:51:27','lawyer','9653297432','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cocEMx_P6eQ:APA91bHbhhQ3WYT8Qgr7ommh-y0bQRbJAvb0o93iuvL2Q_k_agdVMkweEtcj0cHqWvcBmE6aIBnpp3PB8lo2pt9Cd5sS2Mc58fzw_bi6LdTAha9jJDxp57FLCifgA3QucxvsiOjicHg4',1,NULL,NULL,NULL,1,1,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(73,'Riaz Junaidi','','d6dfb33a2052663df81c35e5496b3b1b','f640a4eb64c8432ca377050a86d61113','0','2016-05-08 12:11:48','lawyer','9891255235','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eb9l6l7T3hY:APA91bGroHvCgdq7pY_UMbPNMV6btOHd-PlscDlWMTo7CrCIycqNxaU51shmsnq55edatrrPQ2hxfPar2xvVLBcauiEeWB2qmqvlJQlIqpiUvz0686lv55ut4d9kOFmna4cFKNlkGu3-',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(75,'Karishma Shenoy','','d6dfb33a2052663df81c35e5496b3b1b','60e31d203363989389bee1d8654d5f1d','0','2016-05-08 14:17:18','client','8692008187','','',NULL,'Mumbai',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eyCrrat39YY:APA91bEHBEKE8Af1K-AHw4QEttdoBqc4vZg3f1ln_3OmCW_-SRr23WFHdhEi5TjfDTqBeRn_XT9wMK5BECc9HTbT1tsaiN21qx5ysNlPPJCwy2lTkINsBm7dcuY8t8AGZAUMr6f3AvrX',1,NULL,NULL,NULL,14,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(76,'Abhishek Bhardwaj','','d6dfb33a2052663df81c35e5496b3b1b','a6de72263ab1e9bdad8663757d577659','0','2016-05-09 16:22:18','lawyer','9781815353','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','25000','{\"from_time\":\"04:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1777619386.png','dNG7nbSKj6o:APA91bEBkqDpLl76KNnkbrBoR2UpYs1lGZZidJVicIuNMskcZEF603vBNqNj--yErb2CL8L54GTkD9wjXf_C2ad5WgPgsXSp7N00DKB3XEC1rFJYbH9Ngc40OFhbVJ68PxbPuNuD8-pU',1,'',NULL,'706 , second floor , sec 43A , Chandigarh',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(77,'Arvinder Singh Khosa','','d6dfb33a2052663df81c35e5496b3b1b','2020474c83b1ae26c577dfbea156a901','0','2016-05-09 18:24:24','lawyer','9780849692','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','20000','{\"from_time\":\"05:00 pm\",\"to_time\":\"08:00 pm\"}','http://localhost/winci/uploads/profile.png','etUhz3dtvAI:APA91bHJBp-ZVyT6G9Zk_tiI0xttRtjEkxRVOiMBla7zVuoBXR0ujVMezpXqgbh9MJ38t4wRCO20IhwmWWNpkkYNBpCqInIoI2cAjyq1IbkPrC2hkvyPIjeeMKXCfXEZZfbpVNKl0tzY',1,'',NULL,'#3234 sec 51 d chd.',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(78,'Anuj Sharma','','d6dfb33a2052663df81c35e5496b3b1b','0278a83a6012a316b4d67ed24b73faf8','0','2016-05-09 19:10:36','client','9619847120','','',NULL,'Mumbai',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c-r52onPJJw:APA91bGcf0yQTNMCtZfAAN3_fSZq-fRSVpoFSqOpNQNe4p4t5-xDr8nB8dgzK18kDYp6d6XBh_gkuM8xTVDcL68YlLubxChKOeJcTS4p2-wZ_uUM5PIhh9Khmy5c0iv1P6PGR0ch7ITo',1,NULL,NULL,NULL,14,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(79,'Vishal Khatri','','d6dfb33a2052663df81c35e5496b3b1b','af6dd652a39d97e564774c3f3a3ff2da','0','2016-05-09 19:12:01','lawyer','7696956545','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','25000','{\"from_time\":\"10:00 am\",\"to_time\":\"06:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1635497481.png','dGGK_6MJ5iw:APA91bEW2kPg_Mi88svZkVjj0v2tG0yjW3TbGyAj_8viHdUpZp8RkP2z_AxXY_BWwJua0cWHo3mgjdaLYS1U6_D15tiZqe19Tp71LRcY65A3Hy6KM0lq-__MuBERgQnBJWKDALhMEms4',1,'Vishal Khatri',NULL,'237-A, Tribune Colony, Baltana, Zirakpur (Mohali) ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(80,'Ajay Kumar','','d6dfb33a2052663df81c35e5496b3b1b','1c434bcdf8039fe13ce2e36c690bdd0c','0','2016-05-09 20:39:08','lawyer','7835681999','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dAzsKSj8z0I:APA91bGUfwCBFjBFrSWl-jG3X--IBzywRiSINSbeJM-TZ19vyK1mh8RmXXiKSY81Z-ut3aIzfzc2oS5zkMdN3qPnRkoJSlGGnQO0Z9_aEjBLERcSDsGvcdTyrikZVm1d0vY0Aqn9V8wK',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(82,'Suraj Singh','','d6dfb33a2052663df81c35e5496b3b1b','997a4903d95ae20380beefc2f30be628','0','2016-05-10 14:43:13','client','9670931066','','',NULL,'Lucknow',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dZXT_V7ccWY:APA91bEsz46YzauBx9zSpFdmHvNJmoEYM14ADniAU0tFwNCqLvQ1U3yM0ptF66cqc7DmEEYZPneOW422KqhiWVN24RvAxvpOCSSnDnZc7M3kjxgW_CIzlJN5MUFrtPnjlbsFhf6zp8c8',1,NULL,NULL,NULL,6,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(83,'Navkaran Singh','','d6dfb33a2052663df81c35e5496b3b1b','e5d939c7d7a6173d410a3903bf981156','0','2016-05-10 18:26:07','lawyer','8591090190','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fL8kNQQclHA:APA91bH-Bypc0Uij4OrRlXMVk20ccRPKQNsWRhluMol9ZSZEVMP_cXi6mII-nTug4HXOUSoCpLGcnHcHtTEy8A2fUAPZexEnWkzqW-t_OD5IV8yFsLp7wX1mHoFXxj5poxqLjLtfxI-r',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(84,'Kandarp Yadav','','d6dfb33a2052663df81c35e5496b3b1b','70fb5d11d2286b2cc827286d999214da','0','2016-05-10 19:14:01','lawyer','9999966705','','',NULL,'Gurgaon',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,4,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(85,'Mansi Bansal','','d6dfb33a2052663df81c35e5496b3b1b','1f45579d1caf7deabd573b5262c9cbe8','0','2016-05-10 21:48:52','client','8727900223','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','eCrgRFf_yG4:APA91bH_oUqP_M_7wB02JzGme17qiqn7uAkjwWAGEqn4x1wXVfHGIhJT993wzRhrBAUJX_ndXWUso3U5Z7l7iV_pH21iZjagEiy1BZyWHnOVVGVvDafQ8UP1nssu9AzQeaB748k9DnZc',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(86,'Himanshu Verma','','d6dfb33a2052663df81c35e5496b3b1b','571ea35218f12a3ddc8c44fd0232a487','0','2016-05-10 22:30:48','client','9872439872','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','edpd4419Bo8:APA91bG5kml09-f65fLebxoq7yzzWq_U0EBYq_NJ0CUVbN0o4BKeji_rsAAJ0lkJnjr3YjkMh9Y1Q-L6Dc5V8jJS8szKRTwXib_g7YUpH-fqqNmhoolmBdYozBUT3H4963VvFelR-M4a',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(87,'Sahil Bhatia','','d6dfb33a2052663df81c35e5496b3b1b','e5ef231443cf07fec8d58b6013106701','0','2016-05-11 10:13:44','lawyer','7814727222','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"17\",\"name\":\"Revenue Law\"},{\"id\":\"21\",\"name\":\"Wills\\/Trusts\"}]}','25000','{\"from_time\":\"09:00 am\",\"to_time\":\"10:00 pm\"}','http://localhost/winci/uploads/profile.png','f8Hf0i9x9XQ:APA91bHAnhDMB2pZPXdZb2-XP7gi21ck-5fv2Y0HRJva0nM5JppQ4EVe6mgib9S-PkibpT6a4yjzhCGIOFoIfzSecd1nFmgy4KvWPYZz30m5lqPfpuuDhpiVkwBCRRKZwHemEuj-w2aL',1,'Harpreet singh brar(rajan brar)',NULL,'sector 37',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(88,'PARAMBIR SINGH SUNNY','','d6dfb33a2052663df81c35e5496b3b1b','6c42216c1a951f2b73c407e19a58efbe','0','2016-05-11 10:25:53','lawyer','9814333334','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(89,'Harnek Singh','','d6dfb33a2052663df81c35e5496b3b1b','29fd0f10f2619435bd7d404ea334d5d7','0','2016-05-12 07:54:57','client','8729060449','','',NULL,'Ludhiana',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c3LbhZWLTUw:APA91bFa6Jp5uSxG0zLbLxGXCeSc6Fp_-iz0vekw9A7a8SV8pxVhkFoK2_ABFV2EyGBYVBLf9MnPUdbIPoJSkub7hV_gKs3AY4knI4My-cDnVqmZcq9ZkkXd8ZBfmwl3Zeg7i_7wqvEb',1,NULL,NULL,NULL,8,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(90,'Harmandeep S Sidhu','','d6dfb33a2052663df81c35e5496b3b1b','3caec17eaad4b93dff69d04cb855cf65','0','2016-05-12 08:03:00','lawyer','9463477901','','','Male','Chandigarh','6 - 10 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"}]}','35000','{\"from_time\":\"10:00 am\",\"to_time\":\"09:00 pm\"}','http://localhost/winci/uploads/profile.png','dJhxAtrNPWM:APA91bH_6NltE43c6oMtdcTtAHdZafnmkghwHVv-_1PlHvH76mU9T6eaR7rAUNr1VWtTcD5Vr86ZlOIl9sDUfyI94lTKiLZ8XKiC2jBCUWroHrHCyVE154FWk9iReWfl18nTDd9IsTIz',1,'independent',NULL,'Samana, patiala ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(91,'Akash Rathore','','d6dfb33a2052663df81c35e5496b3b1b','e51b73e0285d9042ab75b37aee3add2d','0','2016-05-12 08:21:02','client','7696978936','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fAIQmOpyV6I:APA91bEpKdahfhqF-11QwegZQc3QUjLQFYuz0W9ZVBhD9QKOY5bCKp1F_4lQYrMjaIog6SBrz7V2jSm4SmSap4vRm5dBkU8eTaoyLSO0aSUZZZa7C9uinvfjuPWuZqJeCI7qvQDMIUqU',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(92,'Gurpreet Sandhu','','d6dfb33a2052663df81c35e5496b3b1b','4950feccb786479a44296b60dd1300a8','0','2016-05-12 08:29:22','client','9501812794','','',NULL,'Ludhiana',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dTwO_-QiHBM:APA91bHq1jlkmQe52ftkVci7PXzcuVfnJzlaop3Y5ZCCWeSeQxdIRpl0hc8VtMBbUW63qfbQkN5i3vCC1PqhhHZbYgnwzq3ljEKClMSylnvtMLd9YRy_To3JdwhgTDkrs3cRA51zLAgR',1,NULL,NULL,NULL,8,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(93,'Kanchan Nishad','','d6dfb33a2052663df81c35e5496b3b1b','9d9d402b3d117658be7abf251ac89509','0','2016-05-12 08:41:29','client','8146433503','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1561019784.png','cvXLAxyA-gA:APA91bHlztssk_hK-ubQQn8BAkSjbvAs5e_nivQUYZlNCUn-6zhimA33PDu8UCbndu_dooQVcXhKG1GVRDkq3O12fv148nhO5A8O5db5MGRVPPn8fLVnkNnmjROtb0EHVM0NMhbMjFDl',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(94,'Charanjit Singh','','d6dfb33a2052663df81c35e5496b3b1b','aceb04d86d0f89630d72294d0475a735','0','2016-05-12 09:01:10','client','9855728994','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eiVMrpPJoSs:APA91bHj-fHYHt5peA-xgTfpm2sGdDSQ30S1yWco0UzKlocjFrgbs7FS29sXtSZ82m8bWE4RTQ2mVycPEvmznXbUix90ORz5nJyUeMXN0nZwcQ8PmKy77p0ZknG3fZnc4sYIgmx70DGC',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(95,'Om Prakash Banth','','d6dfb33a2052663df81c35e5496b3b1b','53f355c9e57cf0994f7f4a6ff4cfee4e','0','2016-05-12 09:06:11','client','9417554410','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fZm6H8lDLMw:APA91bHdIEsjU9YrAB6REDjqBVoFkVx7hwxibF0fl8JMaX34cDr2APIGH4uKwCC6E3tX1ZPDgfvGDJLkB3rm9g6B-sYKyF7VoGgnCjpfMMUvfroU5xzOqltE2uVf4RXZNqDXJAXRU8F8',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(96,'Rajneesh Kathuria','','d6dfb33a2052663df81c35e5496b3b1b','392bdd6c8635fbc89e7a6c5c425fea88','0','2016-05-12 09:23:25','client','9888641739','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(97,'Rajneesh Kathuria','','d6dfb33a2052663df81c35e5496b3b1b','d58c4412261ce45ace6bcf800e2ed1a9','0','2016-05-12 09:24:42','client','9876410323','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(98,'Parwinder Singh','','d6dfb33a2052663df81c35e5496b3b1b','bc7b2fb0dffa5ba7ec8d7e030e09024b','0','2016-05-12 09:40:02','client','9814037222','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fv5yd9mHIJA:APA91bHm4HWXjiT4wCXAM523abiocdbdov270jXmYHaBASfV_YpKK6bdgt_tT781rEiHMgMkBlJFbeU7xLvvbZLYxOn2BgYdXJ_DkHRB8kPGiMQAid9twxq_1qCHgh2fE6iV0mmlMe0m',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(99,'Shivaji Salunkhe','','d6dfb33a2052663df81c35e5496b3b1b','c7e74b31842c6ba51fd9b64fcaa804b7','0','2016-05-12 09:48:04','client','7039252017','','',NULL,'Mumbai',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dQcVJd5A0bo:APA91bGiH52WVpMzgidRfpaZ2DCeGYT6M-2ed2_bc17UIYLnDdRATC3diHEhUkbR1fb9v8qbCWQDGguVSJQLS2kySl0Bnz7cq76nYz11Uks_WvqheL8yHMseaAsRJD9v_QN2neXoDnYS',1,NULL,NULL,NULL,14,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(100,'Sunita Chauhan','','d6dfb33a2052663df81c35e5496b3b1b','76e700b1e1da2f74effa4e389a42469d','0','2016-05-12 09:56:18','client','9888813829','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fpwwTfVV9PA:APA91bFy0oXG-Q83UPrZrqyit7CA4qogx6llrf8xmiuaeWpqKeEIQyXAviDzH8BrvtjWZSBv4QE0kjOQnNGQjjWi1wMfNoxm7skfgB-FIt0wl6fJpecaPO-jsI7QV3wMYxPcqYKf_ZQ4',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(101,'Abhishek Singh','','d6dfb33a2052663df81c35e5496b3b1b','01de04a838caa97864e0537c99c5f9b2','0','2016-05-12 10:13:51','client','9953559934','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eJlrVt3jzM0:APA91bFFeZOCgwob1-mMzsJY6bzK9ZurZaVYIFPdjXWZbrNpc7KnuOXoU2_tE_-r2aY-mzhsK1cTQQLPbHfdwCkoCvXejRpmIjZwiSLcGz2G-qxuM1zmBgMuukPXdKDDGOxcVbgtnrq3',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(102,'Abdul Sattar','','d6dfb33a2052663df81c35e5496b3b1b','36c9dc2fa2b4c18f353c6037f5d7b3e8','0','2016-05-12 10:18:32','client','9417466157','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1555076951.png','dXn8EXLEsRE:APA91bGA7PTeatPweTsNbvkfg9rmKzElh7JqpH3CsfgDSYmsmLbHG-U4txMOLOOn6uv-u1iiDg1SWSVRZGG6V1m0L86UVkcYDSzxcRQ_nfeMtV2U-hqaR3HtlTOk-_bfN6s_wwzxe64U',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(103,'Rajat kumar','','d6dfb33a2052663df81c35e5496b3b1b','4a57e5a83543c0d29119ff84a09e1d98','0','2016-05-12 10:37:18','client','9447891152','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cSq-Yj1o_4s:APA91bEhOHshx6veH5_tFebqvkMoWKVmGBJ4BV-3LRUJr31PIQKKCf1MNUcl3zfMvHs0k2j-4x8jZV4liOUpz6qnKhrEKr3liDqVFZ13AiGCOtwcGjRmmR0OxJ3ZYh2ezuxwArYjc_wE',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(104,'Deepak Guleria','','d6dfb33a2052663df81c35e5496b3b1b','ce8661542449371c16b9e9bc33caba1a','0','2016-05-12 10:41:44','client','7307803067','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dxGOu_we8yY:APA91bEU2UmNFX7Ps7GHBBNX77BT_bppOrfT4SHr-uL3fW-NDZhPx0XCV6SYliazOO_XUdTMzIPXuzXMXdv6AiZl-R4AH-DBrmW95MQM5ztWzGG2GoCJcAlqDWD3SfoYP68-AwOf7TeN',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(105,'Jagdish Singh','','d6dfb33a2052663df81c35e5496b3b1b','2afaa13e3ae738f56374d57ee7b437f5','0','2016-05-12 12:22:59','client','9463030200','','',NULL,'Ludhiana',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','deb6C6Jxsrk:APA91bEmX46US9r5Thj8Z1i2IrQRHlGYqmFsIaZteFOmzH9tpx_UXY-9sHTZKUXGA6CY_k_2CH1DuNOFrSmHAnFXupFVFS-JZ9LgtVyCAFtqQbJxIUgFQ86LnCCHsNJIek0jhoW3WB6K',1,NULL,NULL,NULL,8,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(106,'JASPREET SINGH ADVOCATE','','d6dfb33a2052663df81c35e5496b3b1b','432ff1b6b1afbcc656e13a566324aa8f','0','2016-05-12 12:32:48','lawyer','9464890952','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"20\",\"name\":\"Tax Law\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','18000','{\"from_time\":\"12:00 pm\",\"to_time\":\"03:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1536097303.png','f4xDbejn25E:APA91bGdF2d7ieeYpd5jQV-JsUDktMaGNmv4lLEwAcj7xDKXbq6kQD_Y4yIYk4B0xuOSyTb34psJl3MgB9Gh6mW-UYzDqjh-VI5uGDyqxl1TaFniC9fov6r0VySBKstUpVTJugJ8ulYO',1,'ANY CASE IN PATIALA,RAJPURA,MOHALI,CHANDIGARH',NULL,'535 yadvindra complex district courts patiala punjab',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(107,'ARCHANA SINGH','','d6dfb33a2052663df81c35e5496b3b1b','64fbc1bc575722665ac7a7d32b93877d','0','2016-05-12 14:34:33','client','8574542103','','',NULL,'Allahabad',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,12,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(108,'Amarjit Singh','','d6dfb33a2052663df81c35e5496b3b1b','b566fa75c1c6c1f7044a5a7b569e1819','0','2016-05-12 16:01:35','client','9646118903','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','fR67wv-dDPs:APA91bGFPNnL8WZMo2791Z4v6BFGSAp7FPV6D_CemBtGc2DWc-o1ud6sgp2AmpI2rMi8vGo2o25nmrW56nPaXJfqrQxNter039riBZEpnyT-2Tg0FEGUVgFcS6i-HhgEw7t48u2dgWZE',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(109,'HemRaj Bhardwaj','','d6dfb33a2052663df81c35e5496b3b1b','1087f2af24e170b475850c80972f8bdd','0','2016-05-12 17:23:19','lawyer','9814731100','','','Male','Chandigarh','11 - 15 years','{\"user_specialization\":[{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','33000','{\"from_time\":\"05:00 pm\",\"to_time\":\"09:00 pm\"}','http://localhost/winci/uploads/profile.png','f4pqwfMA-vA:APA91bFfurNao3v8EdCgdB5pNSG0xbyUhlD3fAFBwu5KJ5-uRlczJYJCM_imAdaNx5xj066xo5xNw9QinlylzaKZtnfN6u36aEdkVqOPh3tXfxvU5FiSteVrCZE0KGmQNrC3KlzZWo-D',1,'Battas $ Bhardwaj Law Associate',NULL,'#65 block D ,near shiv mandir,kamayu colony ,naya gaon.',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(110,'Mukesh Rana','','d6dfb33a2052663df81c35e5496b3b1b','0eefdf871046c937aa9baaa86efaadce','0','2016-05-12 17:42:08','client','9780184869','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fFQ2ITEUvhs:APA91bHTR1UDs0NCmtV10iRbYHxu8xwD2NvhI-32zrT5ai7NeImScWtHryncG5lJnVoL7susOC2seEpu14W2gbIYNdLap8yEqVAa9SxavzHWUDKMGd8Q2cpr6HNshAoy-X0i0-XM2EMM',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(111,'Sukhbir Singh','','d6dfb33a2052663df81c35e5496b3b1b','848419d1bf638899c8b6aca04a7acccb','0','2016-05-12 17:57:43','client','9780738869','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cdF3KbLWJPk:APA91bEOAmywlivf6GqeALpl0hMmFKzuCX77LnkKu4wGwKEgMGR-juPzwmg72XHwjc25QaQOv-LJjE_VuRYbXhfRFHmaqXYFcZjW4nIIBMse4CCLdtre_lbhW6veCco7tkmdxEPOz05B',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(112,'Satpal Singh','','d6dfb33a2052663df81c35e5496b3b1b','25f5811388353731b86d9a4ed7dc7723','0','2016-05-12 18:09:04','client','9416465680','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(113,'Guri S','','d6dfb33a2052663df81c35e5496b3b1b','341cb27e6478821f33cd91bcd4a508e1','0','2016-05-12 19:00:52','client','9815951401','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fiGk8znSCKs:APA91bHnamuSGfQke2mGOaQYd1jr-J4Vr4jusGTCFGWDmbWNKe_woeA-br-kOd2RG3VKP15_faSDir8LIdLFDidLA0OnvV43rcBlCgMJZQOg3fdPOw5WE6AUnjMvpg1J_EZ1DuTJuiYB',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(114,'Ajay Kumar','','d6dfb33a2052663df81c35e5496b3b1b','04883f063fcd30785d7d49302439b077','0','2016-05-12 19:23:50','lawyer','7835381999','','',NULL,'Sangrur',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cW1EjFIpIPk:APA91bFf0CclKnBW6sfbcnhbRDdjxiW8BWLoQcg35nnyWhTioWRhFy1OPVKUreuDAABXtqQMQ-HZRisL88NI3bE-A4PqSyP2Nubhd1zbyx9Axyr0dFBQKr8zYYFNZ5P1Bo4yZe6t68da',1,NULL,NULL,NULL,11,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(115,'Renu sood','','d6dfb33a2052663df81c35e5496b3b1b','7622f5430d68a6b6fcafd6d516f44091','0','2016-05-12 19:38:20','client','9915938219','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dCsH_j8tRSs:APA91bGA7BoKJ1j7MBrmRho78klXAxvmZyqvMZ6oQMP0_HNnMnDBpxHBfeaUeyx3AIOixcdGBhAQZpUwmryS4ThljrITFax0-KIq6aooseWkExm7484edjQfC-6AcbUL5hnuUdEiNznK',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(116,'Sandeep kumar','','d6dfb33a2052663df81c35e5496b3b1b','4f0a64d97d924d910c23107614f93ccf','0','2016-05-12 19:59:40','client','9815062687','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','e4vAoqQIZfs:APA91bHiB67Cr_mZy5f76OW8tmJZpvb3NAdzoDme1x0Rs-FiXRsnj-0xcY7lKsNpWf_bRCl6-NH1qnifw0biDUuEbMBF3bM3P9-qoclIj0d8o752iRhOSfHiQPCgB-BPXGVFXS7OUkEQ',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(117,'Dr. Sahil','','d6dfb33a2052663df81c35e5496b3b1b','0073bfe4c7b86cf30927e71820b9f8ae','0','2016-05-12 21:13:15','client','9780015522','','',NULL,'Ludhiana',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,8,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(118,'Ved parkash grover','','d6dfb33a2052663df81c35e5496b3b1b','738e3065d373645f828faac8ea3bf1c8','0','2016-05-12 21:20:32','client','9417540755','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','d8UE2mei2C4:APA91bFf7sgxzC-aJOmh67Oq-m4uwFmM8_mikARR1ccTJhWgc4PFZX3udBpHsAzDXOJYQC5aRWQFuurlRbsZDfklTAG4z5636aYiXX5px-RbzH3nCbvfgowA3oL83UbpSRlCXfEeOgU8',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(119,'Vikas Arora','','d6dfb33a2052663df81c35e5496b3b1b','8959d02f9ac22c0980d29e44261f2602','0','2016-05-12 21:35:24','client','8699944660','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fo96v5D5Bzc:APA91bHlggpsvUuqGc-4_Nw3vyGXCvhZ0i6uYdF_VJ4D5AkIbn2qBrp_aDSfg6p6mXzxMrwiiyUOfq2hvNOELDKGmnFu_Prm9yh8GJJTQAWea-42QoKUYFCXfH9iMYk_BBblozSM4n6x',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(120,'Rajvinder Singh','','d6dfb33a2052663df81c35e5496b3b1b','f7ffff14bb0d461bea18dd17357c23a7','0','2016-05-13 05:37:25','client','9417071990','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dtLnnE7h5ms:APA91bEb0872PUckDjmexOBdGHHAQGAQ6GFYLmfAwhIQnSRlcTsgrOahP48jTDVUZ82iD6ZMkzaEHF9qpdxCKap_pXkRikpe1V1i4Wbir7LGLJMm9m6PfdClfGKG6objNSgFOxqRoYMM',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(121,'Sanjay Goyal','','d6dfb33a2052663df81c35e5496b3b1b','fc09f1ba36698e9b88029be9513b617f','0','2016-05-13 06:35:29','client','9814015351','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','doNQdzVPgWI:APA91bF_xp-t73z-RGYfKvfl5iicaoGHI-kcZY5Qi-gggdtT0Z2M8PwaJiShvvE8yI-DpI96YSzn07bKtlrcARmMVGeTbptS-pnntlwGmvZVbYJpbSWSuZ4Uy8Jaj3h1YPgidqY36if6',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(122,'Tajwinder Singh','','d6dfb33a2052663df81c35e5496b3b1b','053df4ea259bdb0b7a1be0c81eb84906','0','2016-05-13 07:01:16','client','8427468851','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c3eN6urMybQ:APA91bFt-g6VwlK46NCFK9SwR3R1u_Ecfb8NPIcR3RYM5s6se23mXJ8ozcNtlDbcI_NWPS9J4J0Y-4lN5PCGK7oFYiP2v0bcTfq-gpbzxptmKGNwEdEX_ddEh2z1Q04bv6nwZ0yyEz7j',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(123,'J P Jangu','','d6dfb33a2052663df81c35e5496b3b1b','d0f6366e88266b5d762e89d6240cfdb9','0','2016-05-13 07:14:19','lawyer','9468129989','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"17\",\"name\":\"Revenue Law\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','35000','{\"from_time\":\"04:00 pm\",\"to_time\":\"09:00 pm\"}','http://localhost/winci/uploads/profile.png','fgesRAjEWrM:APA91bFR6IQ0w7Jdo8pfO9tNEshdL-Lkq14EvzGYkxX6ilO9-f3kJzFwT8cfGWrgUZBV4L4GYumM8_bNkl1jyWrS5t09-nhjdQqNK6Z7fyIjExFSNgQGwTSgAkl1258izRQysttzHvZr',1,'',NULL,'Bar Room No. 26 Seat No. 29  New Bar Complex  Punjab and Haryana High Court.Chandigarh ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(124,'Gurmesh Singh','','d6dfb33a2052663df81c35e5496b3b1b','8e19ce6f6315e4695f168aa00c48c227','0','2016-05-13 07:49:16','client','8699007711','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(125,'Gurbrinder Singh Chahal','','d6dfb33a2052663df81c35e5496b3b1b','6be13b66a44526f4a92b141a95fcba38','0','2016-05-13 07:55:56','lawyer','9646000069','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(126,'Gurbrinder Singh Chahal','','d6dfb33a2052663df81c35e5496b3b1b','2077b528be2b17329007780c93a1e21e','0','2016-05-13 07:57:59','lawyer','9067500001','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"19\",\"name\":\"Service and Employment\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"34\",\"name\":\"Criminal Law\"},{\"id\":\"37\",\"name\":\"Documentation\"}]}','5000','{\"from_time\":\"09:00 am\",\"to_time\":\"09:00 pm\"}','http://localhost/winci/uploads/profile.png','fq69fjNitBY:APA91bEZ-M7JRwPJlDPInry0ErGIGtIG9GvLaXd3yZp0Ok9NHSryGFTBpi36MVuvHY6UUMbrd_u1j4B7k9oRH9rklrKOjAosfz4PGheHKPmp8LHNOH7YGHTmctwLy8VxSizqRmsBLlN4',1,'Punjab & Haryana High Court, Chandigarh ',NULL,'Gurdaspur / Chandigarh ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(127,'Dr Ashok','','d6dfb33a2052663df81c35e5496b3b1b','f8609fae995306393f015f425e6b6162','0','2016-05-13 08:01:18','client','9216270057','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','e9rS3txZyJ0:APA91bEMIiM_gCWOL9-MDoLGIyFD7APGaGdrUWtLerZzDqSt_kyEe3mnfDEKVypcgzdNeNH7AqzVBtXQEE6mO0fTadv_t1AEtLwWNsqbKkraBzf7ulbnajqVMfRHCXK1XlBXDrJbOsgI',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(128,'Prithi Vohrs','','d6dfb33a2052663df81c35e5496b3b1b','99afc39dfc058b1b88bbec74153cfebf','0','2016-05-13 08:19:22','client','9501043078','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c7rOptt9ioU:APA91bG_wgw102sn8Qs3c_n5gQ5Q9lfdxUaiIx5NtYvAQeo_TmBI7DHs_l01ts83UJQwvc4FpxN7p1_olYdIFa47qEnaqAc6-y4QyZbxalOV5u3uP_fOz_sOaFWSGHfoOOsNIhWNHahl',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(129,'Devinder Gill','','d6dfb33a2052663df81c35e5496b3b1b','1831e3f127490f2c1c4fce4e9255607a','0','2016-05-13 08:26:08','client','9876996768','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dmEPX-X2nEc:APA91bHP8-ITsxVhK2qK4_1iSZ_GI0qPF3Nns67jF1krYon4G1aJyxs-pDwdSJfKmAuLOJVuoH_tylI00aKMIHlbYZtBFklnUsYYErMvhqshkPIHPBSJMeUz8fuP9893tYT-qxnnwnqd',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(130,'Balkar Singh','','d6dfb33a2052663df81c35e5496b3b1b','e70bec9b89abb06a2933ecb5f3672769','0','2016-05-13 09:09:54','lawyer','9417382387','','','Male','Chandigarh','11 - 15 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','25000','{\"from_time\":\"09:00 am\",\"to_time\":\"10:00 am\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-242076501.png','cUsCy4X83Zw:APA91bFvTE2BTd3NA0Rt6u1fFii6OGq4NVowKM-weiwkC5UEdy3yWrd88Ai4agFvCpIaSH0T1mJIPph5CSG7_Jr4mUYmxMPf6tX0JXSP18lVCufPhjUyd4yOLCfP_5tNW_efiyfxKarP',1,'',NULL,'# 3704/2 sector 46 c Chandigarh',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(131,'Amarjit Singh','','d6dfb33a2052663df81c35e5496b3b1b','3aa3bb1d0f12ccb805f21e169c2d05c9','0','2016-05-13 09:47:45','client','9888900026','','',NULL,'Jalandhar',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cb_njOaBtd0:APA91bG3LUAXfbsNLmiwrVZCjXBAkDMO5M8rb5SVnuKBHmY9pYvnD5WDnxYcbrOzH_qNyVOvb0eyJ3zmBhAbdj6oy4qwUFh0x744aSfS8nb-WScz-Ashpt_Cphowsjor8KHeLWXZYh73',1,NULL,NULL,NULL,10,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(132,'Sanjay Singh','','d6dfb33a2052663df81c35e5496b3b1b','4f51dc4946e2f6c3e77a2728325a3acd','0','2016-05-13 10:31:31','client','9217856837','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(133,'Kiranbir Singh','','d6dfb33a2052663df81c35e5496b3b1b','f14f9d11728b8e19888467938d0d74aa','0','2016-05-13 11:08:05','client','8558093989','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eM9iNacspE8:APA91bHYMqqSK3ggMl66h646Qf3u40GL_FPPykiKn3uThiJEAT3tYXzdNzg2ch-bMT7oRlXWsycqltayfKnkEYGeh8mjeC4Q8W6nv_qqof0XlZxgbO-39Js-_J0_7y-EuAF_WpuK-oA0',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(134,'Pradeep Sankhian','','d6dfb33a2052663df81c35e5496b3b1b','d15bebe1fbf8f2aeddd713f57d80c8bb','0','2016-05-13 11:14:46','lawyer','9414014798','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(135,'Manpreet Singh','','d6dfb33a2052663df81c35e5496b3b1b','a796e4049aa93759ffc7e20f1ac52b4a','0','2016-05-13 11:45:59','lawyer','9646025898','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(136,'Praveen Kumar','','d6dfb33a2052663df81c35e5496b3b1b','0c0dfd17577e15138f0c0256b2df7f37','0','2016-05-13 12:17:48','client','9815049910','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(137,'Rocky Jhazz','','d6dfb33a2052663df81c35e5496b3b1b','e529e2758c3ca2769df6a2efd87956da','0','2016-05-13 12:46:48','client','8683027252','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(138,'Som Jhazz','','d6dfb33a2052663df81c35e5496b3b1b','5ed375b015a76683fa17c65cbe5a9403','0','2016-05-13 12:49:36','client','8556967387','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eq9L8qkDGHw:APA91bHsW2LWUr16ps59b-b80RYSedDmV5F3Ce5QQKxZQLMI6bBU3-JgSLcej7Z27jCkp5uckvDjJiWQcL9EfSQi6Dce-dw_ozv4rw9wSX3dg7PLfVob4o-4plxA1LpWB5xN_d9BH83W',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(139,'Rahul Dhiman','','d6dfb33a2052663df81c35e5496b3b1b','e86ddd17074222e186dacfb43cee9674','0','2016-05-13 13:29:40','client','8556976273','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fRz26gC3Wl4:APA91bE8c2MPIN-WM9iki6UqYyo2FEKjzxlx8SiTRkdvKQg0sQVRzrRWJn1PXhc-UdWgoSMgn46l0OP7A4n3tFIBmVepxkTJeyX-Unx3lxOMwxWBY4zdmbx_FxJMKCFEInU1r1AnQ-6D',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(140,'Hardeep Singh','','d6dfb33a2052663df81c35e5496b3b1b','0ae868d2aee76431f52beca1f7ac9585','0','2016-05-13 13:55:25','client','9310061582','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eqibJRqUWNs:APA91bEYt94tMNQx6kQymvUVdsV-neHfFKLRbkhRQ_X9jiHdtV19pQyeqFStjrN3Rb4h__l5a03XCbaL2nNLhVORJh_Te54GripO7E6FfPsw7YXY8p8GG2fGFMobofBWqem6jiA57Bzh',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(141,'Abhishek Rana','','d6dfb33a2052663df81c35e5496b3b1b','c4f68cb93c01b1e88a687c79dd2a4ee6','0','2016-05-13 14:27:14','client','9915036920','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(142,'Rohit Rana','','d6dfb33a2052663df81c35e5496b3b1b','484f9f1e3e244b7a0789d2ee1f22c4ab','0','2016-05-13 14:29:36','client','9417681000','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(143,'Parveen Chhabra','','d6dfb33a2052663df81c35e5496b3b1b','6bf5237b417cbdffd51d7692736cff04','0','2016-05-13 14:51:21','client','9996136888','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cESJ9ZT-C-g:APA91bHvI-hNcnfVQJ8bwmDGxkxK-d1oTW2ovHOXztOO1gh0s91MwNHlrfHiv7JKYVUzltKk5FpRchxqi7ru58hX8x8pQFgq4TmiY69IkFwNOwTLAxQv10FNM5qIpLQWjGBd0qeqWHZF',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(144,'Parveen Singla','','d6dfb33a2052663df81c35e5496b3b1b','2d6e39d2f65ad7d5dd97d4cc15f26608','0','2016-05-13 17:12:43','client','9882503762','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(145,'MOHAN LAL','','d6dfb33a2052663df81c35e5496b3b1b','a53668d30147da784fc9f33d7b423df9','0','2016-05-13 18:59:26','client','9815494605','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-1391506704.png','dSwTWSuHXD4:APA91bFP2_Pl-c2Z6OgP4LQQKucq8IV7zZoBeRl_8VL76IyoJw1L4G_-HH7BmSDUzcCd-ndKt4POkZw42TDx1xGO3S7q3zbhpQGoZDIHH7iItxOSRcfq5Jq4oKGZ_d8oplGoHv5g7RNc',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(146,'MOHAN LAL','','d6dfb33a2052663df81c35e5496b3b1b','cf8beb514312902ebddb6da2fc89ece5','0','2016-05-13 19:12:06','client','9872320289','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(147,'Jasdeep Singh','','d6dfb33a2052663df81c35e5496b3b1b','a8562c5b1f8c9906631ad0a8cbe0e9c1','0','2016-05-13 20:41:11','client','9417655156','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(148,'Jasmer Singh','','d6dfb33a2052663df81c35e5496b3b1b','ab9ca9bac2cc29bbe42b4d8f8a7fb75f','0','2016-05-13 20:51:16','client','9876621855','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(149,'Herain Jindal','','d6dfb33a2052663df81c35e5496b3b1b','fdb04300dceac2563ebb8b9a25144754','0','2016-05-14 09:18:21','client','9501974444','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dSmq8rOMt14:APA91bESsJVepkQQvmCgBZKwbearWJxd_DF2Buv9hsQxtVU4cMHvZuWGTYwtHpxsUIcmcd1tLYidiW4Uz9odJx2AULKTA9b18nSWPni47x8SYIN7_GRlJ6_LhV296_yiJpNa3gyj6gGc',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(150,'Rakesh Sharma','','d6dfb33a2052663df81c35e5496b3b1b','32db35ec62ee76bd2438d2a044f1cd29','0','2016-05-14 09:52:05','client','9569746078','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','d22292jSHAY:APA91bGQ61Xyuw-UWT08Q3Qc7RKudNx4TvoVnJJ5H_130WY28jr4yXQkjPSmhnmoDrqnEOH8IHYUO7ETx0n3HH4BmnZOy57r300Gc9dLQVCFZQWTnghbJGfBdyaYZY5tw0lc1O3ycrJe',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(151,'Gulshan Kumar','','d6dfb33a2052663df81c35e5496b3b1b','dc2a6cbc3e5fd7eb8d0d6c5c3e37bdf4','0','2016-05-14 09:54:40','client','9803856345','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eJeZ6lCnROE:APA91bH8yQPAgYGevVhkrzrvCu0oUwdvX_Z2sOXNcqBzK_o5nGzS_F1CVWp5wuz6oGXiTgYArYPL5w6ceiZROdvKhMIx7lLB7C7xyqhuLzSOqxkyktgnvfn_0Yxd9SJqbIJhxog2oS7X',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(152,'Harish Kumar','','d6dfb33a2052663df81c35e5496b3b1b','fc33b5691d286010b96e56c2f336a921','0','2016-05-14 10:09:51','client','9779589735','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dn72KIsUrMU:APA91bE72l9fEaEJS2FdG3PRsHgq0_EAgvX58VhwYn3GXBeT_IlF9TvEaBAsu0NuhhzBIhxvwXqzC5NCQvC1XpMZwRtznHzj2D3dV9Zb_YQC9Ro7_fNM7Ws5oOkpvTh4FQpNXPRVR40Z',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(153,'Jitender Kumar','','d6dfb33a2052663df81c35e5496b3b1b','d16c4a39f618df9255dc08278cd3b6df','0','2016-05-14 10:14:59','client','9780879173','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fEwKfiJ-cFo:APA91bFKVnlq3okLOz-KCS4aCCFzF8qY_Ysh8gAVGU882NNxVLfem7F-tk-jBHBmqtU_B_4XdlvVJ49BHVl4uLV3ZKjp9UQR_K4flMSpCr-t8PjN3xymnhZXIjAnzTXphPUemeUl-dmn',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(154,'Seema devi','','d6dfb33a2052663df81c35e5496b3b1b','ed290870c9e64e9703c38c1dc65ba106','0','2016-05-14 11:12:30','client','7508695313','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fwS5UI5jPOc:APA91bHzEBRHAlYprLoeJwr3mBRz2jTOZxoY4o3jhmuCZN-rH2RycvYo1JQOjqnZFiWhBDRf_zKm1BqgRQ_2t5JiE8c2JjG-xH9kHr7RB5UcoEcq3M4OjhGiddceHB-Jseao8HJuRK2Q',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(155,'Rakesh Meena','','d6dfb33a2052663df81c35e5496b3b1b','f6df67591540a8a63224db9a2adb597a','0','2016-05-14 11:38:43','client','8284017371','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fJ0TgpkgFSk:APA91bH21S1CTmwdsq4rM6XujXRj8vl0mDwmf6WxaSNpAhwwwSJH0B1DDLfP8v60T0suNDkx8dEFPv1Q4TS05J0dsYmFQvxnfTA_sVMkDlmxEYbZmCbM4LmE1QaKAVh63AO3TblKyUfB',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(156,'Gourav Sharma','','d6dfb33a2052663df81c35e5496b3b1b','b0a3da55146f6895e3bf07d66935e678','0','2016-05-14 12:22:48','client','9780439498','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','cb2Q3Gxr7zw:APA91bHHHG2OScHexQKgqco2j8LDBqqARS7xNBngHF-_R4HkEYUTZ28Kdt8GB_Me-KV2UsBSOyHTIWw9V8LF3cQblRYqixcx8PdiCnxs2_tD45HC_lQagVNBNsNByywfE-pIH9sMANiq',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(157,'Anil Garg','','d6dfb33a2052663df81c35e5496b3b1b','aee209e327696a092617f50ccf5c04ed','0','2016-05-14 14:39:53','lawyer','9417072887','','','Male','Chandigarh','16 - 20 years','{\"user_specialization\":[{\"id\":\"7\",\"name\":\"Landlord\\/ Tenant\"},{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"28\",\"name\":\"Civil Litigation\"}]}','25000','{\"from_time\":\"10:00 am\",\"to_time\":\"07:00 pm\"}','http://localhost/winci/uploads/profile.png','fqH2G5NIWV4:APA91bFv_vS1J9dTjIR96eK2VETx5S7XR4PUOj06oWQ3QnTkzGjizPj-F3NZAmdktqv3nQj0Ou1-z99-nGoRCbtSAZUJ3PBqVFGV_Sbd4j82rY0ENFJol8I7mZAt-OT8Z2shtGvnhT1N',1,'vinay Gulati advocate and sandeep sharma advocate',NULL,'SCO -434  Motor Mkt.Manimajra Chandigarh',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(158,'Rohit Ummat','','d6dfb33a2052663df81c35e5496b3b1b','d90be3390bc8e17e83cb15e6348566e2','0','2016-05-14 17:52:34','lawyer','9041905775','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(159,'Anurag Singh Tagra','','d6dfb33a2052663df81c35e5496b3b1b','801025155491b18fd832c1cbd43efa53','0','2016-05-14 18:06:07','lawyer','9815992045','','','Male','Chandigarh','6 - 10 years','{\"user_specialization\":[{\"id\":\"7\",\"name\":\"Landlord\\/ Tenant\"},{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"22\",\"name\":\"Writs\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','25000','{\"from_time\":\"04:00 pm\",\"to_time\":\"08:00 pm\"}','http://localhost/winci/uploads/profile.png','fANkGmmTgNw:APA91bGRFc0VlWeZ2rAjVuRI32gevigVXtGDbS5pD9yEL4cPjMVrNvxrVUwenW3OS4GhUMkOb7uJb7sVZfbCixFOZQsnQ-3zJQSmJ1F1_MHGz6LRw_T_mCZ5XuMFd8iN0ngg1jT9s77u',1,'tagra associates',NULL,'nayagaon',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(161,'Rashika Singla','','d6dfb33a2052663df81c35e5496b3b1b','704119570f967a03b78507ffb7467e63','0','2016-05-14 18:47:07','client','9041395374','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eNg-BhYIhZY:APA91bED6LzwOtS3FE7oX6fMWvMIagXrYQI1mkc_HzMLg02dxTjbPYWAAxMgSDKeUfMMo5vfRESyNVQqQ2dorHpdMxxVsEoHXjEp_HjQn84G2Yq6DaTDA8OvcmyNvJm-GFwchNep6xFO',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(162,'Nain Singh','','d6dfb33a2052663df81c35e5496b3b1b','89ed0d6d0926e1604dc4bf8e6274443f','0','2016-05-14 19:21:32','client','7696074205','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eQs2seuX5Kg:APA91bEbu5U0R33vunwpgWTdxXNSYi8WOwyme6cQkAx0R0S1YHzExMnpKoLpRLCjiaNI6PNqaDvQ-6-9BkAgz7WwjdpSxXV5h8gIZSgCQ_nsKoh4lTf6bjU_mr3lZ0C9yzWfGGW1eQhE',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(163,'Navneet Jindal','','d6dfb33a2052663df81c35e5496b3b1b','f084ac7970a7f67b4d66d6611b1fe01e','0','2016-05-14 19:34:07','lawyer','8146991195','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"6\",\"name\":\"Labour and Employment Law\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"25\",\"name\":\"Arbitration and Conciliation\"}]}','35000','{\"from_time\":\"09:00 am\",\"to_time\":\"09:00 pm\"}','http://localhost/winci/uploads/profile.png','c51bOWE4ubY:APA91bGhKqo_mKSyT52PNnX-ZAc5oeHHrdwd0_s5rZZtq7urHU2T_sWyHiEVVSLPQTiWZfPDRpPMN5In8NmCho7ndgoq91xXbHS8Iys-0qkBDDOS7CBkjXD0kNlEcDuUhfp7relTr3pX',1,'',NULL,'House No.  1195 sector 42 B',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(165,'Rohit Kumar','','d6dfb33a2052663df81c35e5496b3b1b','a2ee23627447685796aeb5766dbefb84','0','2016-05-14 20:01:10','client','9814272836','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE954975243.png','eeoapHiXFAc:APA91bG7A4ppYlZPMEXWf7z9IxPsaohBp6g4lZEIkUDsK85e6VqPeNOVrClwBeEXBu7BhlctQrvInhWlwmdkctu_-fC68SusM0VXUY_UFB4mtoq2SlW4B8iPpj0L2AZT21BT_Uz_sL1q',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(166,'Pahwa Pallav','','d6dfb33a2052663df81c35e5496b3b1b','8f13aa10b0711c833292f9424ecedd59','0','2016-05-15 00:28:49','client','9988977998','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cmDWSs8dBwM:APA91bFhYy4_oca3oJ5_J9SjqBFne8tOf8f4HOOUHo6ZRt3ck9zmCpq7psx9SARfYZh521lj1UVdFd8_25g0nqN7w440Pg3AGyx98cHCJG95XeYqTRfWPPGjB79Mbi_YANeb3DkeKhFE',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(167,'Arvind Sharma','','d6dfb33a2052663df81c35e5496b3b1b','d8a4f7bb59d1ac0a4c44214d4e813391','0','2016-05-15 09:25:15','client','9989366011','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(168,'Balkar Singh','','d6dfb33a2052663df81c35e5496b3b1b','8f68a52dbdafce0eb0cbb5931e5f7331','0','2016-05-15 10:09:14','client','8950227538','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fJjvqZbMKcw:APA91bEKdt8xgb-kcYsLgHzh6rk6_YkSLsPWD7Nc81moOERuL_UClGZratXT0eyuPOz42MyYAkCT4a8UvQtVwc_VQXoz2SxGqrF9RptWDAGUA_5S98X3gUsCukTUAj89j8rZjjEpcM7l',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(169,'Suresh Kumar','','d6dfb33a2052663df81c35e5496b3b1b','16a26e00cce983b2d28c84c7ec35b738','0','2016-05-15 10:17:05','client','9805526803','','','male','Shimla','','','','','http://localhost/winci/uploads/profile.png','czea2Bj2af4:APA91bGLp9x8Nbl7wTzWGqpNgbxv_6Vmue80laIcczbFeboEclQ3WJ6x4_-scG9OcUGjKvuJsjtI-lVVhamn5ULoHgxzP6_9TeosZNHgd4Ys9XNZo6CG9tv21Wfw1BXpRCcV_G3ygMZl',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(170,'Rajbir Singh','','d6dfb33a2052663df81c35e5496b3b1b','1d68b5fef1b79b42a5f8554aff985530','0','2016-05-15 11:10:35','client','9814624007','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eacOQIxItWg:APA91bGrKTfoFjt0FnXkVnud2ff7Q6uW8qnazG8iApj6Dd4YHCtYKJYB5w-ar6fA9uD45427CBT17fZ67Eq9QP3XBrMCFjWRrnHcUqxRp5gJnxmvH5LD1dEd5386Rf_ju4RXoQyRlqgg',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(171,'Ranjit Kumar','','d6dfb33a2052663df81c35e5496b3b1b','8dea6e4bea5d7f5a929f256664eabf62','0','2016-05-15 16:22:11','client','9852741318','','',NULL,'Ranchi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','cRpGyoqdS1w:APA91bFNsZtbBau85PZdsbD2txM2iM-Udmv_D11IBDN5WsjvgN9vyMDNnoygScBcqrvz_bS3gjXRidy6mgLtbthlPWVa3glbbP0-36ocdbiYemS9C7h7ho4rpMDC-LzoBU2qBZi2lfXo',1,NULL,NULL,NULL,36,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(172,'SANJAY KUMAR','','d6dfb33a2052663df81c35e5496b3b1b','2c80aab930e439317b653c6cff57af6f','0','2016-05-16 13:21:08','client','9416958674','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(173,'Rajesh Kumar','','d6dfb33a2052663df81c35e5496b3b1b','6ee55e74fedae72bdbab30a59339b075','0','2016-05-16 13:46:46','client','7696007076','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','djOQWgzdS8c:APA91bEHfeOgs_VCjTd-pMaYR8WIqzQ5_SUdFdIl9FXGbM7FXGbP1EUnA7khER_DovnDlQUb6wHuLKHzZR_oRNX5miVsdNiirtYNMkNvbeRwnAojURVXa9PTPb6C13t_BG7oZCMhX7Vh',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(174,'Meenakshi Koshal','','d6dfb33a2052663df81c35e5496b3b1b','b0364bd7b8bd334c9c24658ffb10c781','0','2016-05-16 14:15:41','client','9646198438','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-398087859.png','dWouqVxBc9Y:APA91bEgRu9mFjRwBueU_VbSEXZPwjyqPWJUelU4axzTBHORBnOAq3U74n3aFqiSgoKm9dgayeTWrScWbAAOgqHu0gJsNYVxpkgkAcWpOmDz9EallAkSFRJfDCwhUQynS_885o91Zphj',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(175,'Pradeep Sankhian','','d6dfb33a2052663df81c35e5496b3b1b','1982c2fbb32d265549fed7bdd0b6f70f','0','2016-05-16 14:55:05','lawyer','9417014798','','','Male','Chandigarh','6 - 10 years','{\"user_specialization\":[{\"id\":\"7\",\"name\":\"Landlord\\/ Tenant\"},{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"36\",\"name\":\"Cyber Crime\"}]}','22000','{\"from_time\":\"04:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE1242628343.png','fSmhk11rbfI:APA91bFf-T0RQzsAmsZYnDpEhnjmzqk91EwV7sUB2STV937PWQuNy1WbKwqwMlD0FictCLfXLXjdsbiIdwp-L2vnU4UNt8x2MxtO9ounoII2XFfblJabrk_RXUPe4y50CUWdzvJ2XbL-',1,'distt bar associaton chandigarh',NULL,'Chamber no 353 A distt court sector-43 chandigarh ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(176,'saurabh singla','','d6dfb33a2052663df81c35e5496b3b1b','0a9fc0b147fd3fbedb3a38bcaae83043','0','2016-05-16 16:13:41','lawyer','9915604400','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(177,'Ravinder Singh','','d6dfb33a2052663df81c35e5496b3b1b','e6a230893d63561e0d60d985b7e2fd9b','0','2016-05-16 16:36:09','client','9855144551','','',NULL,'Sangrur',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','f6M_SNQMa3I:APA91bEj9J8Kq47yWPjEdxtJjm91FPXnrL83IG-ihgS1pnccR7XEQTu0nzbSxWO4TRry92nc_lTQtpOpXPmysmt0nZOCETzLs0OTiwqqjyO5pym7qj8g08RcPWu582Po_97mYmC59NlI',1,NULL,NULL,NULL,11,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(178,'Meenakshi Sharma','','d6dfb33a2052663df81c35e5496b3b1b','495d5dc47a40d0d3b24e3a7dd62e394f','0','2016-05-16 17:58:27','client','9646198138','','',NULL,'Chennai',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,29,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(179,'Prashant Shivhare','','d6dfb33a2052663df81c35e5496b3b1b','15242651c7122738abb7d0ac1bc95905','0','2016-05-16 23:42:31','client','8303121365','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eNd0dcaohpo:APA91bE08tGjry1lOdK5h_J4b10iQvE9Ii1EnEraEeD15YFMMCcL1wA01xQZO0e1pWO_q-zaJZFNQ6j0mmKCQqC3rFabilalVu6BpzY1psker-bUL9Wmc0so33RLB6IrOK00e2fT65ih',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(180,'Shylaja KM','','d6dfb33a2052663df81c35e5496b3b1b','b29e58837c9a14170435873024558510','0','2016-05-17 09:29:51','client','9449249387','','','male','Bengaluru','','','','','http://localhost/winci/uploads/profile.png','drVih_6l644:APA91bHoGZvooZNjYJa3DkAdmEKgBSiRJvZ9rTxMFTGkQcz39MeC06VakmO3oZD9LgpPHDLbGycdm3bkQKSCxzU8fmLn_btzyXptWt8J-4VnZKZzkmkz49vkyHYiyIOSodt4X3IbOdSk',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(183,'Bimal Khurana','','d6dfb33a2052663df81c35e5496b3b1b','534d9f7d7ef064655a77acef89ae81a9','0','2016-05-26 14:54:58','client','9888574716','','','male','Chandigarh','','','','','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-305185855.png','eK4rAaz2POg:APA91bH6t2D18mh54FAQibXxlxKyfGtWbF1PgHaT-eVKo7wf4jexQfX-Q7S4vQ_bewr7tac7PYZd_BZrsEym_vgua3vES-AbIMap78W3Fc47epZlL_2cqJOofXLEip0sVRo__UoS9m3x',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(187,'Rohit Arsh Pathak','','d6dfb33a2052663df81c35e5496b3b1b','0ddfb072a75ee59a9f6e5f456d30ce40','0','2016-05-27 19:59:29','client','7814987797','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','clupDKAj7NQ:APA91bFvkdjdpxER-z6lFWygN5mXWS5KGnetbv3dyUHkpyhJ-8SBlJbvYuxrMhokgR2Oj4qFwjEPCpQOabr0ucbwL30i08ZpSqNQ8hskpBTucn6pS4lT03VJUqAnAQ6sAwaVtpAFk-Ek',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(190,'Vikas Gupta','','d6dfb33a2052663df81c35e5496b3b1b','8842cac4ed4cd1ac0a3b7abecacd77e2','0','2016-05-27 23:28:39','lawyer','9041414100','','','Male','Chandigarh','1 - 5 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"13\",\"name\":\"Property Law\"},{\"id\":\"21\",\"name\":\"Wills\\/Trusts\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','25000','{\"from_time\":\"06:00 pm\",\"to_time\":\"08:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE-148732975.png','chw7apCkywE:APA91bH2JF17v3hFiLDjiT69vNwWaX4P2qqrM_nZn1Y8yL1gAd_QWZiJBEaelzhVMdKnXH6aYYTGH6yT1TdOMKu9nGmhN41IzRhfcTxwZ4NvBCGvzCCUOBZWiPWg6TmhgpXc3Pys1zqY',1,'',NULL,'139A ,Sector 4 , Panchkula',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(191,'Kailash Bhatt','','d6dfb33a2052663df81c35e5496b3b1b','8b7bb5c5c5a3f2c76ed048579c9c6921','0','2016-05-29 10:12:07','client','9530661541','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','czEiCM8YGNc:APA91bEOBXlyTd7HdHevEOExyzrGs-gizUJc7v5OiFrHWScstxPvF8mNDEmAYu7ItibThYWURQA4U7R1TWBABQJrUKqxhzxrceiDMgWXFc0JbSbRH_xqw4ns2f23FwWM8pYrIPmHjGwW',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(192,'sonu saini','','d6dfb33a2052663df81c35e5496b3b1b','eea1aac23f83b7e3343587afec2a934b','0','2016-05-30 19:38:11','client','9050549030','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png ','c4fvGNlj9bQ:APA91bFGShyW4RRtuF7TzYRra51p-91msA6TPsv040h1VNRGuzEWiIxkRH4H3oCR4ZeXxJ3Xh2ypCcWcuZJAzs0M_ACUw3xL1Km6muuDprONh2CPbmSg0UoEiMNIbY25Mf_k6hbF5Hpj',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(193,'Pankaj Sharma','','d6dfb33a2052663df81c35e5496b3b1b','c94d1735d9be29d940f7c8107f1043d8','0','2016-06-01 20:23:28','client','8289098909','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','dkzROYLSk0Y:APA91bGa6PaVCvZxzTG-GphCFaSas4tTLCe4gWufUT2_DFGn0Sc0vmpyn53tCgfVtDgbZAWdnBlqVfhGf0a3Uoiwt-VIyriVTaPHVQFsaeQtBHVGtmkqg6MXm_20pkQ9DClSfsMEDqmn',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(194,'Suman Kapil','','d6dfb33a2052663df81c35e5496b3b1b','f95662c91fe2bc1bdc938cd123d8b1e5','0','2016-06-02 13:10:56','client','8587855123','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','ervP7NWiNL8:APA91bHEnPFLPl6svkd9b5NonA-YZa5mJMfUPDU71UxCvNUHPtkbtci5xkYwgpOkkkCuBYfpIGXfcLcwzd8OzRlrze0WPfUSTDtIrAmKSCIbGjKcN45ZNj9ijRUtFLxmRXxFgBQoK1I0',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(195,'Ajay Madhukar','','d6dfb33a2052663df81c35e5496b3b1b','741252e9a562335a76526bf9a500f043','0','2016-06-02 19:37:21','client','9716164342','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dil-qq7_bd0:APA91bFTJGxtjvKV27QArFKk_iDZVnaaMhdQzymZ96avlAXEfY9PyrdMUkSKTkBntXlewwVTRuh5uorrn8mpR8fpbYnP97o46us5brTVUgYhQ3lWyVu5o_J4NCZef_JWOeykh0wcV9Y-',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(196,'Mohit Kumar','','d6dfb33a2052663df81c35e5496b3b1b','1702eedb10f9cc2ad0b1b0c2f561225c','0','2016-06-03 12:02:58','client','7876499933','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dzjdlWmMlOA:APA91bGDEaTmgojPdItGkxNvfrN-_wLhF6T-xLnmySKCfTZOcM1z47thgqJW9Ehre_afAKwkexXZptT0hoLE2xkO5xek1yGEU1qarceTwj8E_GlLd7sYDI0xriTHh75lTdr3VNxgyZq2',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(197,'Deepinder Pal','','d6dfb33a2052663df81c35e5496b3b1b','4b6817e227e4edccdb4a43895b3061dc','0','2016-06-03 22:52:47','client','7087295403','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dWJXUYcnwF0:APA91bF1GxAe75vPShU1YUrP3Yldo6HHH2m17aDVAvvGFXjSx8-qzH2Aae4aUauwXejTTfwNv5LrDbJM_enyP73NDkP3QPlRTJChTWRr7Xwt53t7CvvD5HphSYiZx8Q8ZB07u0fmNblv',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(198,'Maninder Singh Dhindsa','','d6dfb33a2052663df81c35e5496b3b1b','af0b7b4a87ccf2f4b54da5e5857fdeee','0','2016-06-04 19:04:09','lawyer','8558049380','','','Male','Chandigarh','6 - 10 years','{\"user_specialization\":[{\"id\":\"28\",\"name\":\"Civil Litigation\"},{\"id\":\"31\",\"name\":\"Consumer Protection\"},{\"id\":\"34\",\"name\":\"Criminal Law\"},{\"id\":\"36\",\"name\":\"Cyber Crime\"}]}','10000','{\"from_time\":\"09:00 am\",\"to_time\":\"10:00 pm\"}','http://winmycase.org/task_manager/v1/profile_pic/IMG_WIN_MY_CASE683148816.png','cgdhGLOtPK0:APA91bFJsjrGpaGar_j11CGtN6HNWRVpQ6q2qCGPx6bautdh9RHOaqk5-qVttcpQXSCUfHFwxirJIi6ln3y6iiozxYWtKm9VKRRTf-K-Dzy4Pi06QKE_mmB-8Tc_Io_-iA8vDKO0rDp-',1,'Punjab & Haryana High Court Chandigarh ',NULL,'#596, Sector 54, Chandigarh',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(199,'Jatinder Sikka','','d6dfb33a2052663df81c35e5496b3b1b','220ea1183dc088a58900a78c831b2ec8','0','2016-06-04 19:05:54','client','9915367075','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dUwiKLCShXo:APA91bGXJu2hG9Ft9vhSxDKe5u60tAsgdhOwwLGFctie4MCFfcjr8d6Tyhoo_Lef4OFSavzzEOs320JWbNhMJGW7I3xPrESILdzfb0NqdJC7ftvqztqYcWy9uezc7xnz1ob2gAh-AGy1',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(200,'Anup Sridhar','','d6dfb33a2052663df81c35e5496b3b1b','3c0e48515733b0f89dc71d548b9f6a0e','0','2016-06-05 09:51:48','client','9896063287','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(201,'Vipin Gupta','','d6dfb33a2052663df81c35e5496b3b1b','75420181aa8377c73fb2ba76a9fb663e','0','2016-06-05 10:04:58','lawyer','9417406880','','','Male','Chandigarh','26 - 30 years','{\"user_specialization\":[{\"id\":\"7\",\"name\":\"Landlord\\/ Tenant\"},{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','55000','{\"from_time\":\"06:00 pm\",\"to_time\":\"07:00 pm\"}','http://localhost/winci/uploads/profile.png','ckKMOForZ78:APA91bFhtDOYkre41ehgDxyk3hVYMo5JVzPTCSDeMS4KK-qaJjFVwpFonizatndF8ZhmmvWYMz6FWdwvf8rNOjUB3IbcBsztrv0tj7962r0GfcGfqKVm4gZKpXj8NCFuPClCGVnDkMvP',1,'Punjab and Haryana High Court Bar Association ',NULL,'#1664, Gupta Market, Manimajra, U.T. Chandigarh. ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(202,'Sarika U','','d6dfb33a2052663df81c35e5496b3b1b','3b75cf9fcc71ba82d52d6efffe1ca477','0','2016-06-06 16:33:20','client','9599586476','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(203,'Sarika Upadhyay','','d6dfb33a2052663df81c35e5496b3b1b','675f506ee1bfcae696936ae11c62e7ec','0','2016-06-06 16:35:38','client','9599586473','','',NULL,'Delhi',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dpWRIHRl3u4:APA91bErd2S9MIUCQyAPrAkNxfdrBg78TRNFOypJTgCO3XJ57xYZhCC0VXnqtur930CbYZeC-cnU4VGrrYiPBKFbJBZh1S_Us1pveVwSFu9dggIGztt_GdyFNMrO0jczBR4Ao7_eqYMA',1,NULL,NULL,NULL,3,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(204,'Harender Bhalothia','','d6dfb33a2052663df81c35e5496b3b1b','bdca43efb56d2f66301cddd9b3b4dc03','0','2016-06-07 05:59:24','lawyer','9812146926','','','Male','Chandigarh','6 - 10 years','{\"user_specialization\":[{\"id\":\"8\",\"name\":\"Marriages and Matrimonial Disputes\"},{\"id\":\"11\",\"name\":\"Motor Accident\"},{\"id\":\"34\",\"name\":\"Criminal Law\"}]}','51000','{\"from_time\":\"01:00 pm\",\"to_time\":\"06:00 pm\"}','http://localhost/winci/uploads/profile.png','eZhEN6NnUQA:APA91bF0-_SuLotoJ2nD32_76G8CVN0zN0zVSF4qSCHTeLNfA4vDRTiA-Is0XsRa1r0CJK4nTYbz7sXmmGANv73dHkB7BvdzfkTgtWboBLWT0rYcUpctDqtHBKiph7qff31U50cyQhBH',1,'bhalothia consultancy ',NULL,'bhiwani ',1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(205,'Ashwani Sharma','','d6dfb33a2052663df81c35e5496b3b1b','9e11376917be27ae239b85cc946305db','0','2016-06-07 20:45:42','client','9216709853','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eFsL_Yk8R4s:APA91bGtW9JRDLEmLBAanVczcLkDqwTgRMXK_tC4g85GSZgdwA0WZoxWkX19WuTrJISCmGLskkvFd6_9O_uOnpNZPVVTpBVYiKT_L5TvXPDxYvcqK6VARDXfth6wOZoB2aXe6sT5H8xb',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(206,'Vishal Gupta','','d6dfb33a2052663df81c35e5496b3b1b','f67be553900322bdd5439c0ca33c6e52','0','2016-06-08 09:09:52','client','9888001234','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','eQWEeR7dgaY:APA91bEzjTGCsF9pPL_enqCkyweTl8NYr3l2vgu_okjpzdSbWDgVZ2sV39bg2A8qKJJWwbtpgT8lAXDdwGEHhdJa_X4suU6Oq6aySKsMaHTabHyMpeYwYAfo1duvDhyXwFbKgbrIxBC7',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(207,'Deepak Kumar','','d6dfb33a2052663df81c35e5496b3b1b','2156c34d120ac703d724d372d660ed93','0','2016-06-08 15:20:21','client','8529913312','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dEDZ1Kgp68M:APA91bGkf1uiK8iWSzMT_zxOAwNEf98x7ActIlAlrmucwBbbikPL51bvVOw7_ikoIA2LVZGXOFATGMyjUKfx4ZKyvkob_hCgO99Tps-D5f88txWmwPwahnvrTXNEYqZ01ODPYfW8t6db',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(208,'Naveen Kumar','','d6dfb33a2052663df81c35e5496b3b1b','e1693e1e3a22a140824cbc51e945eba4','0','2016-06-08 16:53:13','client','8800869428','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fju2qFUTbu8:APA91bGB3kYf1e9-WpybzOfAQ0Sm-6d0tGPaZgbcp8usMz9iTZF4VwLidE_tp812--vsV4cUJsYLxJm_nna74kpKnjXBvmww_J_FPyVx_tgXCTWO5fuTKNrffAoxDj5SEuzbu4GD19ra',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(209,'VIKAS GOYAL','','d6dfb33a2052663df81c35e5496b3b1b','169560029ffcf7af65a95a4cb55e9bc6','0','2016-06-09 05:22:03','client','9855083355','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png',NULL,1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(210,'Pranav Aggarwal','','d6dfb33a2052663df81c35e5496b3b1b','780f221509bf0fbf39914aaf51054afa','0','2016-06-09 22:27:32','client','9779205308','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(211,'Aseem Bansal','','d6dfb33a2052663df81c35e5496b3b1b','32342f86aafde61dd6b6ef0dfb6b3eea','0','2016-06-11 01:44:27','client','9417068545','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','f48UGWBemhc:APA91bEU8VGfXy1oxOUWcPSDH-Vhq-NxKjXdjhia3Gm-3hxiBIamUTAw1G5EC2vGYGUZJZSbEEhfM41rbMwEUTFitPjS7Cw9nrQlkKrHug3rMbfeqagfHZsTGuzqysbgl7AvZ8aWOzpc',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(212,'Manpreet Mehar','','d6dfb33a2052663df81c35e5496b3b1b','99e824111dbaf2a49e8c38bd3c529d4b','0','2016-06-12 14:03:56','client','9814627169','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','c7L_inlxrpM:APA91bF9QFEHM-7lbhK-O9pOqVqFmirM4B7Zu52FlSiIUBQwOAhiti-6DWogor0N4Isvvl-o-FVepJNG1FqCvL0P7mxyPs_Wfj87qR1gJgMaC7i5WlUr5Xk0EAcxXX7C0o-EipiEmxBW',1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(213,'Aman Duseja','','d6dfb33a2052663df81c35e5496b3b1b','73f251258e4ec424253dbd1a45a854fb','0','2016-06-12 17:07:53','client','9882970900','','',NULL,'Shimla',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','dCE1Ny5Qi1s:APA91bHUn5FIqHf91U68Dtj3E-v4eyvXBLJAHu1FLboIaAVIpuHatX33yi174wcy7zAo9brp8teLE14ht1UcB_D_HWsPacMCy4mJO_KSd_E_OTTvRIj5ol6fIHEqBabY7U3udygPnCbO',1,NULL,NULL,NULL,7,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(214,'Vikas Goyal','','d6dfb33a2052663df81c35e5496b3b1b','a568d7bc807ef75abb8e3e8598096b89','0','2016-06-14 07:31:23','client','9878332211','','','male','Chandigarh','','','','','http://localhost/winci/uploads/profile.png','evVjTVJR3Hw:APA91bHi9ongbNDuxTezCE8Pyfp0Fd82DP1S3fHzQ-DZU_xzfCGpxur_S4EHevAtLBuE2sc69PGLxtNJxQoOL8fshzR579gY37Kr_8i5PYkcOBC482vnIdSEnUAFVP57Zxv4yU4T-som',1,'',NULL,NULL,0,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(215,'Divya singh','','d6dfb33a2052663df81c35e5496b3b1b','327e1b9373d1c617c204cded5f7ae09d','0','2016-06-15 17:30:15','client','9433059894','','',NULL,'Kolkata',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png','fWXQ4DsICVo:APA91bFEZkDpuintR8TtsSBUo7iduyVNIx_sqPz9SXit_gqd_QzslWU7uTAzJ_iLFOscAtR-SlfWexIyRuMrNZEmCxNwUgv-_HAsZvxJyWgJWIqYAongUUcje7EGMmwaY8F_FYLTN1DM',1,NULL,NULL,NULL,34,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(216,'Ricky Gupta','','d6dfb33a2052663df81c35e5496b3b1b','ede2c8784f3a4099cf3e810c05731ac0','0','2016-06-15 23:01:39','lawyer','8054211760','','',NULL,'Chandigarh',NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(217,'roshan','test@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-06-23 00:00:00','lawyer','7696689508','30.708262','76.714507','Female\r\n',NULL,'16-20 years',NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,'house-no:450,mohali,Chandigarh,punjab,140110',13,0,1,1,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(218,'amit','amit@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-06-23 00:00:00',NULL,'7696689508',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,13,0,0,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(219,'amit','amita@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-06-24 00:00:00',NULL,'7696689508',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,13,0,0,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(220,'mona','mohan@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-06-24 00:00:00','client','8696666666',NULL,NULL,'Female\r\n',NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,32,0,0,0,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(221,'Jagmohan singh','','d6dfb33a2052663df81c35e5496b3b1b','','1','2016-06-24 15:49:58','lawyer\r\n','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,1,0,0,NULL,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries',NULL,'',NULL,0),
(222,'roshan one stop','roshanonestopcode@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','1','2016-07-07 00:00:00','client','7696689508','30.833115','76.675922','Male',NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/18_1484_081003.jpg',NULL,1,NULL,NULL,'house no 450,mohali,Bhubaneswar,punjab,140110',17,0,0,0,'Trantor, Inc., a leading provider of global software services, specializes in Business Intelligence, Software Security, and Web Services solutions. Trantor, Inc. has a proven and demonstrable track record of successful multi shore project delivery since its inception in 2009',NULL,'',NULL,0),
(223,'roshan singh','roshansingh9450@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-07-07 00:00:00','lawyer','7696689508','30.833115','76.675922','Male',NULL,'6-10 years',NULL,'5000',NULL,'http://localhost/winci/uploads/26_2877_123511.jpg',NULL,1,NULL,NULL,'sector 450,ggg,Chandigarh,punjab,140110',37,0,0,0,'	We continuously strive to make online payments more convenient, fast and safe for you. And you will see what we mean, every transaction on the way. Be it the revolutionary One-TapTM technology, the saved cards or wallet checkout, PayUmoney enables you to complete your purchase within ','6b3c2fb91c922f922c03e1acf0a34c9237a54583','05_9758_031007.jpg',NULL,0),
(224,'roshan singh','roshansixngh9450@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','1','2016-07-07 00:00:00','lawyer','7696689508',NULL,NULL,NULL,NULL,'21-25 years',NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,37,0,0,0,NULL,NULL,'',NULL,0),
(225,'sdafsdf','sdfsdf@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','1','2016-07-07 00:00:00','lawyer','7696689508',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,3,0,0,0,NULL,NULL,'',NULL,0),
(226,'sdafsdf','sdfsdfkj@gmail.com','d6dfb33a2052663df81c35e5496b3b1b','','1','2016-07-07 00:00:00','lawyer','7696689508',NULL,NULL,NULL,NULL,'26-30 years',NULL,NULL,NULL,'http://localhost/winci/uploads/profile.png',NULL,1,NULL,NULL,NULL,3,0,0,0,NULL,NULL,'',NULL,0),
(227,'WEFDSAFSDFS','admin@gmail.colm','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-08-01 00:00:00','lawyer','7696689508',NULL,NULL,NULL,NULL,'16-20 years',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,'',NULL,0),
(228,'WEFDSAFSDFS','admdfsdin@gmail.colm','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-08-01 00:00:00','lawyer','7696689508',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,0,1,NULL,NULL,'',NULL,0),
(229,'WEFDSAFSDFS','admdfsdisdfan@gmail.colm','d6dfb33a2052663df81c35e5496b3b1b','','0','2016-08-01 00:00:00','lawyer','7696689508','Not found','Not found','Male',NULL,'11-15 years',NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,',,,,',16,0,0,1,'	We continuously strive to make online payments more convenient, fast and safe for you. And you will see what we mean, every transaction on the way. Be it the revolutionary One-TapTM technology, the saved cards or wallet checkout, PayUmoney enables you to complete your purchase within ',NULL,'18_1181_083849.jpg',NULL,0);

/*Table structure for table `usertypes` */

DROP TABLE IF EXISTS `usertypes`;

CREATE TABLE `usertypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `usertypes` */

insert  into `usertypes`(`id`,`usertype`) values 
(1,'Admin'),
(2,'Client'),
(3,'lawyer');

/*Table structure for table `visitor_status` */

DROP TABLE IF EXISTS `visitor_status`;

CREATE TABLE `visitor_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewer_id` int(11) DEFAULT NULL,
  `ques_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=latin1;

/*Data for the table `visitor_status` */

insert  into `visitor_status`(`id`,`viewer_id`,`ques_id`) values 
(1,2,1),
(2,3,1),
(3,21,1),
(4,18,1),
(5,10,1),
(6,31,1),
(7,6,1),
(8,30,1),
(9,1,1),
(10,15,1),
(11,16,1),
(12,18,2),
(13,16,2),
(14,15,2),
(15,6,2),
(16,65,2),
(17,22,2),
(18,22,1),
(19,10,2),
(20,NULL,2),
(21,NULL,1),
(22,NULL,1),
(23,NULL,1),
(24,NULL,1),
(25,NULL,1),
(26,NULL,1),
(27,NULL,1),
(28,NULL,7),
(29,NULL,7),
(30,NULL,7),
(31,NULL,7),
(32,NULL,7),
(33,NULL,7),
(34,NULL,7),
(35,31,2),
(36,NULL,2),
(37,NULL,1),
(38,NULL,2),
(39,NULL,2),
(40,82,1),
(41,82,2),
(42,31,9),
(43,6,13),
(44,6,14),
(45,6,15),
(46,93,2),
(47,93,1),
(48,6,16),
(49,6,19),
(50,6,18),
(51,10,19),
(52,10,18),
(53,10,17),
(54,10,16),
(55,113,20),
(56,100,1),
(57,100,2),
(58,31,19),
(59,31,18),
(60,31,17),
(61,77,17),
(62,31,16),
(63,6,17),
(64,6,21),
(65,127,19),
(66,1,19),
(67,1,18),
(68,1,17),
(69,1,16),
(70,1,2),
(71,16,19),
(72,16,18),
(73,16,17),
(74,16,16),
(75,8,19),
(76,6,22),
(77,31,22),
(78,31,23),
(79,1,22),
(80,10,22),
(81,106,1),
(82,106,19),
(83,106,17),
(84,106,16),
(85,106,2),
(86,138,22),
(87,16,22),
(88,15,16),
(89,15,17),
(90,21,22),
(91,21,2),
(92,89,22),
(93,150,16),
(94,1,23),
(95,151,16),
(96,10,23),
(97,145,23),
(98,21,23),
(99,110,23),
(100,110,22),
(101,110,19),
(102,110,18),
(103,110,17),
(104,110,2),
(105,110,1),
(106,30,22),
(107,30,23),
(108,30,17),
(109,162,22),
(110,162,19),
(111,162,18),
(112,160,23),
(113,160,2),
(114,165,23),
(115,165,19),
(116,165,18),
(117,165,17),
(118,165,16),
(119,165,2),
(120,78,2),
(121,109,17),
(122,109,22),
(123,109,2),
(124,108,19),
(125,108,22),
(126,108,1),
(127,108,18),
(128,108,23),
(129,108,24),
(130,169,16),
(131,1,24),
(132,160,22),
(133,160,24),
(134,160,19),
(135,160,16),
(136,6,24),
(137,6,23),
(138,31,24),
(139,126,22),
(140,10,24),
(141,79,23),
(142,79,22),
(143,79,2),
(144,79,1),
(145,174,16),
(146,174,17),
(147,174,23),
(148,16,24),
(149,174,2),
(150,174,24),
(151,174,1),
(152,108,16),
(153,108,2),
(154,174,26),
(155,31,26),
(156,174,25),
(157,31,25),
(158,174,22),
(159,31,27),
(160,174,28),
(161,174,29),
(162,10,25),
(163,165,29),
(164,31,29),
(165,174,30),
(166,6,30),
(167,1,30),
(168,1,25),
(169,6,32),
(170,15,32),
(171,6,33),
(172,15,33),
(173,6,34),
(174,6,35),
(175,16,25),
(176,6,25),
(177,15,24),
(178,165,30),
(179,174,19),
(180,184,25),
(181,184,24),
(182,184,16),
(183,184,23),
(184,165,25),
(185,165,24),
(186,185,25),
(187,185,16),
(188,186,25),
(189,189,1),
(190,187,16),
(191,6,31),
(192,190,25),
(193,190,23),
(194,190,22),
(195,190,17),
(196,190,16),
(197,190,18),
(198,190,19),
(199,192,16),
(200,192,18),
(201,165,1),
(202,165,22),
(203,15,25),
(204,190,2),
(205,190,1),
(206,190,24),
(207,193,16),
(208,193,25),
(209,193,24),
(210,195,18),
(211,195,19),
(212,195,25),
(213,193,2),
(214,193,1),
(215,190,26),
(216,193,26),
(217,193,22),
(218,1,26),
(219,183,26),
(220,183,25),
(221,183,24),
(222,183,23),
(223,183,22),
(224,193,17),
(225,10,26),
(226,163,16),
(227,165,26),
(228,15,26),
(229,15,19),
(230,208,26),
(231,208,25),
(232,208,24),
(233,208,23),
(234,139,26),
(235,212,26),
(236,212,1),
(237,42,17),
(238,42,26),
(239,42,24),
(240,42,23),
(241,42,22),
(242,42,19),
(243,42,2),
(244,42,1),
(245,42,25),
(246,175,26),
(247,175,17);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
