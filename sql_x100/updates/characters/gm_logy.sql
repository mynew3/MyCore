DROP TABLE IF EXISTS `gm_logy`;

CREATE TABLE `gm_logy` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `player` varchar(12) NOT NULL,
  `account` int(9) NOT NULL,
  `command` varchar(255) NOT NULL,
  `position` varchar(96) NOT NULL,
  `selected` varchar(96) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account` (`account`),
  KEY `player` (`player`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `gm_logy_item`;

CREATE TABLE `gm_logy_item` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guid` int(9) NOT NULL,
  `player` varchar(12) NOT NULL,
  `account` int(9) NOT NULL,
  `item` int(6) NOT NULL,
  `item_guid` int(6) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `position` varchar(96) NOT NULL,
  `target` varchar(96) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
