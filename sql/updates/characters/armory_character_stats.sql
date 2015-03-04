/*
Navicat MySQL Data Transfer

Source Server         : Draenor.su
Source Server Version : 50541
Source Host           : logon.draenor.su:3306
Source Database       : characters335_x100

Target Server Type    : MYSQL
Target Server Version : 50541
File Encoding         : 65001

Date: 2015-03-03 17:19:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for armory_character_stats
-- ----------------------------
DROP TABLE IF EXISTS `armory_character_stats`;
CREATE TABLE `armory_character_stats` (
  `guid` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `save_date` int(11) NOT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='World of Warcraft Armory table';
