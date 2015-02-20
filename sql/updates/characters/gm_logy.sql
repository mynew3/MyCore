SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `gm_logy`;
CREATE TABLE `gm_logy` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player` varchar(12) CHARACTER SET latin1 NOT NULL,
  `account` int(9) NOT NULL,
  `command` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position` varchar(96) CHARACTER SET latin1 NOT NULL,
  `selected` varchar(96) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `player` (`player`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;