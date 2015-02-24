-- ----------------------------
-- Table structure for transports
-- ----------------------------
DROP TABLE IF EXISTS `transports`;
CREATE TABLE `transports` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';

-- ----------------------------
-- Records of transports
-- ----------------------------
INSERT INTO `transports` VALUES ('176495', 'Grom\'Gol Base Camp and Undercity', '315032');
INSERT INTO `transports` VALUES ('176310', 'Menethil Harbor and Auberdine', '241778');
INSERT INTO `transports` VALUES ('176244', 'Teldrassil and Auberdine', '309295');
INSERT INTO `transports` VALUES ('176231', 'Menethil Harbor and Theramore Isle', '230162');
INSERT INTO `transports` VALUES ('175080', 'Grom\'Gol Base Camp and Orgrimmar', '248990');
INSERT INTO `transports` VALUES ('164871', 'Orgrimmar and Undercity', '239334');
INSERT INTO `transports` VALUES ('20808', 'Ratchet and Booty Bay', '231236');
INSERT INTO `transports` VALUES ('177233', 'Forgotton Coast and Feathermoon Stronghold', '317040');
INSERT INTO `transports` VALUES ('181646', 'Azuremyst and Auberdine', '238707');
INSERT INTO `transports` VALUES ('190536', 'Stormwind Harbor and Valiance Keep, Borean Tundra (\"The Kraken\")', '271979');
INSERT INTO `transports` VALUES ('181688', 'Valgarde and Menethil', '445534');
INSERT INTO `transports` VALUES ('181689', 'Undercity and Vengeance Landing', '214579');
INSERT INTO `transports` VALUES ('186238', 'Orgrimmar and Warsong Hold', '302705');
INSERT INTO `transports` VALUES ('186371', 'Stolen Zeppelin', '484212');
INSERT INTO `transports` VALUES ('187568', 'Moa\'ki Harbor Turtle Boat', '445220');
INSERT INTO `transports` VALUES ('187038', 'Pirate boat', '307953');
INSERT INTO `transports` VALUES ('188511', 'Unu\'pe Turtle Boat', '502354');
INSERT INTO `transports` VALUES ('192241', 'Horde gunship patrolling above Icecrown (\"Orgrim\'s Hammer\")', '1431158');
INSERT INTO `transports` VALUES ('192242', 'Alliance gunship patrolling above Icecrown (\"The Skybreaker\")', '1051388');
INSERT INTO `transports` VALUES ('190549', 'Orgrimmar and Thunder Bluff', '566000');
INSERT INTO `transports` VALUES ('201812', 'Icecrown_Citadel_Horde_10', '74000');
INSERT INTO `transports` VALUES ('201599', 'Orgrim\'s Hammer', '15000');
INSERT INTO `transports` VALUES ('201581', 'ICC Raid, Orgrim\'s Hammer', '51584');
INSERT INTO `transports` VALUES ('201598', 'The Skybreaker', '23970');
INSERT INTO `transports` VALUES ('201580', 'ICC Raid, The Skybreaker', '77527');
INSERT INTO `transports` VALUES ('201811', 'Icecrown_Citadel_Alliance_10', '74000');
INSERT INTO `transports` VALUES ('195276', 'IOC - Horde Gunship', '115661');
INSERT INTO `transports` VALUES ('195121', 'IOC - Alliance Gunship', '118797');
INSERT INTO `transports` VALUES ('201834', 'Zeppelin, Horde (The Mighty Wind) (Icecrown Raid)', '154573');
