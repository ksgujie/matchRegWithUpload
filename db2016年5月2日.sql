/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 5.6.15 : Database - matchupload
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`matchupload` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`) values (1,'小学'),(2,'中学');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `max` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `items` */

insert  into `items`(`id`,`name`,`type`,`max`) values (1,'环保时装秀','个人项目',5),(2,'环保创意制作','个人项目',5);

/*Table structure for table `students` */

DROP TABLE IF EXISTS `students`;

CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `编号` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL,
  `production` varchar(255) NOT NULL DEFAULT '',
  `teacher` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `remark` text NOT NULL,
  `hit` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`),
  KEY `hit` (`hit`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `students` */

insert  into `students`(`id`,`编号`,`name`,`production`,`teacher`,`user_id`,`group_id`,`item_id`,`remark`,`hit`,`created_at`,`updated_at`) values (5,'','雷君宇','抽屉式马桶椅子','王建萍',63,1,2,'该作品利用家庭装修后的废旧材料制作，根据椅子的特点，结合残疾人或老年人的特点加装了抽屉式马桶与活动桌面，使残疾人和老年人如厕方便清洁，提高了他们的生活质量。不仅做到废物利用，还环保节能，减少的碳排放量，并能在广大老年人中推广使用。该作品曾经在全国青少年科技成果展示中获二等奖。',0,'2016-04-29 11:23:33','2016-04-29 11:23:33'),(3,'','徐艺琳','开闭式潜望镜','王建萍',63,1,2,'开闭式潜望镜，是利用废旧的泡沫板做成，它既可以用来当作科学实验的教具，又可以在平时当作小孩子玩具来游戏，做到了节能环保，变废为宝，真正起到了美化环境的作用。',0,'2016-04-29 11:12:59','2016-04-29 11:12:59'),(4,'','刘奕凡','可粘贴性象棋','王建萍  张勇华',63,1,2,'可粘贴象棋，是利用废旧的泡沫，毛刺搭布，泡沫板等材料做成，使用时，象棋盘在棋盘上自由行走，不用时，象棋和棋盘背面相互粘贴，不会掉落，携带方便。真正体现了环保，节能的理念。该作品曾经获全国青少年”变废为宝，从我做起“科学调查活动学生类作品二等奖。',0,'2016-04-29 11:18:08','2016-04-29 11:18:08'),(6,'','王子','抽拉式防近视电脑灯','王建萍',63,1,2,'我制作的这个电脑防近视灯，利用废旧的材料做背板，用不再用使用的保护电阻，二色发光二极管、USB接头等组成，再利用它是由导光板将原来的光线变柔和。它主要是用于晚上上网时不开房间照明灯的情况下。在使用时，只要将组装在电脑面板上的灯抽拉出来，插到电脑的USB接口上，将灯根据自己的需要调整角度就可以使用。既照亮键盘，同时又调节了电脑周围的光线，抵消了屏幕光子对眼睛的刺激，既解决电脑键盘的照明问题，又用比较柔和的光源抵消显示器光子，可以保护眼睛，最大的特点是利用这些柔和的光源，调节一下周围的背景，防止眼睛在相对的黑暗环境与小而亮的屏幕形成强烈的对比，防止视神经过度调节造成对眼睛的伤害，达到防近视、保护眼睛的效果。特别是晚上使用时，不再需要开房间的灯，做到节能减排，还可以利用家里任何不用的二极管等材料组成，既环保又做到变废为宝。',0,'2016-04-29 12:07:38','2016-04-29 12:07:38');

/*Table structure for table `sysconfigs` */

DROP TABLE IF EXISTS `sysconfigs`;

CREATE TABLE `sysconfigs` (
  `id` varchar(50) NOT NULL,
  `value` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sysconfigs` */

insert  into `sysconfigs`(`id`,`value`) values ('info_picture','http://'),('siteClosed','0'),('info','<center>\r\n<a style=\"FONT-size:24px\">2016中小学实践操作比赛（环保作品）</A>\r\n</center>\r\n<div>\r\n注意：首次登陆密码为空，进入系统后请设置一个新密码。<br />\r\n<a href=\"../../\">返回首页</a>'),('siteCloseTime','2015-10-28 16:30:00');

/*Table structure for table `teachers` */

DROP TABLE IF EXISTS `teachers`;

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `teachers` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `leader` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `diners` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `isadmin` enum('0','1') NOT NULL COMMENT '是否为管理员',
  `limitItemMax` enum('0','1') NOT NULL DEFAULT '1' COMMENT '是否限制各项目的报名人数',
  `remember_token` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`leader`,`address`,`tel`,`diners`,`type`,`isadmin`,`limitItemMax`,`remember_token`) values (1,'系统管理员','$2y$10$1A5.dA.5i8okVQ4/64qTd.psa6xLooWQ1xHERipuvKfOtOZjRHpx2','','','',0,'管理员','1','1','JFVfSNKsYXk9dEuZ7tTt3mldc8MfYImcArWIgEhI0Lzm0c65OkieowuKeXJG'),(2,'﻿昆山高新区吴淞江学校（初中部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(3,'昆山开发区青阳港学校（初中部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(4,'昆山市兵希中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(5,'昆山市城北中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(6,'昆山市第二中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(7,'昆山市淀山湖中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(8,'昆山市费俊龙中学（初中部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(9,'昆山市葛江中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(10,'昆山市花桥中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(11,'昆山市锦溪中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(12,'昆山市娄江实验学校（初中部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(13,'昆山市陆家中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(14,'昆山市鹿峰初级中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(15,'昆山市蓬朗中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(16,'昆山市石牌中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(17,'昆山市石浦中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(18,'昆山市亭林中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(19,'昆山市新镇中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(20,'昆山市秀峰中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(21,'昆山市玉山中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(22,'昆山市张浦中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(23,'昆山市正仪中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(24,'昆山市周市中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'初中','0','1',''),(25,'昆山市周庄中学','$2y$10$6fPHD.eijRfe1GaQAAI1xepZLAjNp.dbc742ukw3CnuQfTBQx8uKm','','','',0,'初中','0','1',''),(26,'江苏省昆山中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(27,'昆山经济技术开发区高级中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(28,'昆山陆家高级中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(29,'昆山市第一中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(30,'昆山市费俊龙中学（高中部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(31,'昆山文峰高级中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(32,'昆山震川高级中学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'高中','0','1',''),(33,'昆山高新区美陆小学','$2y$10$7soxqWMvTjLlG3lXF8vWzupsH0RYhWWB7at9PqDOgYTYqJLxzjrXG','','','',0,'小学','0','1','tXhm6lOOG3Vc6tWDsxeGMyywAQXj8EZ9FxOkZsWcIROu60nP6jBjVbnmGrjj'),(34,'昆山高新区吴淞江学校（小学部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(35,'昆山花桥国际商务城花溪小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(36,'昆山经济技术开发区包桥小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(37,'昆山经济技术开发区实验小学','$2y$10$gMxNxi/hZMBypUBogMuvtOVuhRblZ5FrtK9QZii9h2kKxaB58sqbq','','','',0,'小学','0','1','TKv3UbGaCChIP4vVFNxJjYG3HrViO9CEqQopUDvZOYt7RqfEBcAoA3nW3yr9'),(38,'昆山经济技术开发区中华园小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(39,'昆山经济开发区世茂小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(40,'昆山开发区晨曦小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(41,'昆山开发区青阳港学校（小学部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(42,'昆山开发区世茂蝶湖湾小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(43,'昆山市巴城中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(44,'昆山市柏庐实验小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(45,'昆山市城北高科园中心小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(46,'昆山市城北中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(47,'昆山市大市中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(48,'昆山市淀山湖中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(49,'昆山市花桥中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(50,'昆山市锦溪中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(51,'昆山市娄江实验学校（小学部）','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(52,'昆山市陆家中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(53,'昆山市南港中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(54,'昆山市培本实验小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(55,'昆山市蓬朗中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(56,'昆山市千灯镇炎武小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(57,'昆山市千灯中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(58,'昆山市石牌中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(59,'昆山市石浦中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(60,'昆山市实验小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(61,'昆山市新镇中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(62,'昆山市玉峰实验学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(63,'昆山市玉山镇朝阳小学','$2y$10$QjG6kDhrfiGM8mM/CmY40eGqoxc1qZ3zf0uACrCN.wQRMxhvl7R8G','','','',0,'小学','0','1',''),(64,'昆山市玉山镇第三中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(65,'昆山市玉山镇第一中心小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(66,'昆山市玉山镇司徒街小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(67,'昆山市玉山镇同心小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(68,'昆山市玉山镇西塘小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(69,'昆山市玉山镇新城域小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(70,'昆山市玉山镇振华实验小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(71,'昆山市裕元实验学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(72,'昆山市张浦镇第二小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(73,'昆山市张浦镇周巷小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(74,'昆山市张浦中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(75,'昆山市正仪中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(76,'昆山市周市华城美地小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(77,'昆山市周市镇永平小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(78,'昆山市周市中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(79,'昆山市周庄中心小学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(80,'开发区中华园幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(81,'昆山博顿幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(82,'昆山大公翔艺幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(83,'昆山淀山湖中心小学校花园幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(84,'昆山东方合丰幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(85,'昆山东方剑桥中城幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(86,'昆山高新区翰林幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(87,'昆山高新区鹿城幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(88,'昆山高新区美陆幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(89,'昆山高新区南星渎幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(90,'昆山高新区前进幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(91,'昆山高新区新华舍幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(92,'昆山国际学校附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(93,'昆山花桥曹安幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(94,'昆山花桥国际商务城花溪幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(95,'昆山花桥国际商务城聚福幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(96,'昆山花桥国际商务城鑫苑幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(97,'昆山经济技术开发区蓬欣幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(98,'昆山经济技术开发区世茂幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(99,'昆山开发区包桥小学附属美华幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(100,'昆山开发区晨曦小学夏驾幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(101,'昆山开发区晨曦小学幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(102,'昆山开发区东部新城幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(103,'昆山开发区世茂蝶湖湾小学幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(104,'昆山千灯中心小学校美景幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(105,'昆山三之三新城域幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(106,'昆山圣欣美德幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(107,'昆山市爱儿法幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(108,'昆山市巴城镇凤栖园幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(109,'昆山市巴城中心校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(110,'昆山市柏庐幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(111,'昆山市城北富士康幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(112,'昆山市城北中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(113,'昆山市大市中心小学校附设幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(114,'昆山市淀山湖中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(115,'昆山市东方巴城幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(116,'昆山市东方幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(117,'昆山市枫景苑翔艺幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(118,'昆山市汉浦书香幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(119,'昆山市红峰幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(120,'昆山市花桥中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(121,'昆山市机关幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(122,'昆山市江南春晓幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(123,'昆山市锦华幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(124,'昆山市锦溪中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(125,'昆山市陆家好孩子幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(126,'昆山市陆杨中心校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(127,'昆山市南港中心小学附设幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(128,'昆山市蓬朗中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(129,'昆山市千灯镇浦园幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(130,'昆山市千灯镇少卿幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(131,'昆山市千灯镇淞南幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(132,'昆山市千灯中心校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(133,'昆山市仁宝幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(134,'昆山市三之三大德世家幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(135,'昆山市三之三幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(136,'昆山市圣欣幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(137,'昆山市石牌中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(138,'昆山市石浦中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(139,'昆山市实验幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(140,'昆山市实验幼儿园金谷园分园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(141,'昆山市实验幼儿园澞河苑分园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(142,'昆山市私立育英幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(143,'昆山市西塘街小学附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(144,'昆山市西湾幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(145,'昆山市西湾幼儿园富华分园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(146,'昆山市新镇中心小学附设幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(147,'昆山市星空艺术幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(148,'昆山市绣衣幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(149,'昆山市玉山镇北珊湾幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(150,'昆山市玉山镇朝阳幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(151,'昆山市玉山镇城北福娃幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(152,'昆山市玉山镇城中幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(153,'昆山市玉山镇城中幼儿园共青分园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(154,'昆山市玉山镇第三中心幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(155,'昆山市玉山镇第一中心小学校幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(156,'昆山市玉山镇司徒街小学附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(157,'昆山市玉山镇童心幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(158,'昆山市玉山镇振华实验小学附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(159,'昆山市裕元实验学校附设幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(160,'昆山市张浦镇第二幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(161,'昆山市张浦镇锦程幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(162,'昆山市张浦镇周巷小学附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(163,'昆山市张浦中心幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(164,'昆山市正仪中心小学附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(165,'昆山市周市镇光大幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(166,'昆山市周市中心小学校附属幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(167,'昆山市周庄中心幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(168,'昆山鑫茂幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(169,'昆山阳光圣杰幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(170,'昆山玉山镇童乐幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(171,'昆山周市宏盛幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(172,'昆山周市金澄幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(173,'昆山周市五丰幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(174,'中福会绿地昆山幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(175,'昆山国际学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中小学','0','1',''),(176,'昆山经济技术开发区国际学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中小学','0','1',''),(177,'江苏省昆山第二中等专业学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中职','0','1',''),(178,'江苏省昆山第一中等专业学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中职','0','1',''),(179,'昆山花桥国际商务城中等专业学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中职','0','1',''),(180,'苏州福纳影视艺术学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中职','0','1',''),(181,'昆山市华城美地幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(187,'昆山市代表队','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'中小学','0','1',''),(186,'昆山市周庄中心幼儿园新镇区分园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1',''),(182,'昆山市陆家镇菉溪小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(185,'昆山市高新区小河岸小学','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(183,'昆山市爱心学校','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'小学','0','1',''),(184,'昆山黄浦幼儿园','$2y$10$p2uIqHVn2HglxTFytJGLRuAKE0QM8wlFXSiTNImYuCu1Oc4H9ukHe','','','',0,'幼儿园','0','1','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
