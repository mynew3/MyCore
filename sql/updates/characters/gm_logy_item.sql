SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `gm_logy_item`;
CREATE TABLE `gm_logy_item` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guid` int(9) NOT NULL,
  `player` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `account` int(9) NOT NULL,
  `item` int(6) NOT NULL,
  `item_guid` int(6) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `position` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `target` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guid` (`guid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
