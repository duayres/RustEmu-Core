-- ----------------------------
-- Table structure for pet_scaling_data
-- ----------------------------
DROP TABLE IF EXISTS `pet_scaling_data`;
CREATE TABLE `pet_scaling_data` (
  `creature_entry` mediumint(8) unsigned NOT NULL,
  `aura` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `healthbase` mediumint(8) NOT NULL DEFAULT '0',
  `health` mediumint(8) NOT NULL DEFAULT '0',
  `powerbase` mediumint(8) NOT NULL DEFAULT '0',
  `power` mediumint(8) NOT NULL DEFAULT '0',
  `str` mediumint(8) NOT NULL DEFAULT '0',
  `agi` mediumint(8) NOT NULL DEFAULT '0',
  `sta` mediumint(8) NOT NULL DEFAULT '0',
  `inte` mediumint(8) NOT NULL DEFAULT '0',
  `spi` mediumint(8) NOT NULL DEFAULT '0',
  `armor` mediumint(8) NOT NULL DEFAULT '0',
  `resistance1` mediumint(8) NOT NULL DEFAULT '0',
  `resistance2` mediumint(8) NOT NULL DEFAULT '0',
  `resistance3` mediumint(8) NOT NULL DEFAULT '0',
  `resistance4` mediumint(8) NOT NULL DEFAULT '0',
  `resistance5` mediumint(8) NOT NULL DEFAULT '0',
  `resistance6` mediumint(8) NOT NULL DEFAULT '0',
  `apbase` mediumint(8) NOT NULL DEFAULT '0',
  `apbasescale` mediumint(8) NOT NULL DEFAULT '0',
  `attackpower` mediumint(8) NOT NULL DEFAULT '0',
  `damage` mediumint(8) NOT NULL DEFAULT '0',
  `spelldamage` mediumint(8) NOT NULL DEFAULT '0',
  `spellhit` mediumint(8) NOT NULL DEFAULT '0',
  `hit` mediumint(8) NOT NULL DEFAULT '0',
  `expertize` mediumint(8) NOT NULL DEFAULT '0',
  `attackspeed` mediumint(8) NOT NULL DEFAULT '0',
  `crit` mediumint(8) NOT NULL DEFAULT '0',
  `regen` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_entry`,`aura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores pet scaling data (in percent from owner value).';

-- ----------------------------
-- Records of pet_scaling_data
-- ----------------------------
INSERT INTO `pet_scaling_data` VALUES ('0', '0', '0', '1000', '0', '1500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '200', '0', '0', '0', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('1', '0', '0', '1050', '0', '1500', '0', '0', '45', '0', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '22', '0', '13', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('1', '62758', '0', '0', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '6', '0', '3', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('1', '62762', '0', '0', '0', '0', '0', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '12', '0', '6', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('416', '0', '0', '840', '0', '495', '0', '0', '75', '30', '0', '35', '40', '40', '40', '40', '40', '40', '10', '100', '57', '0', '15', '100', '100', '100', '100', '0', '20');
INSERT INTO `pet_scaling_data` VALUES ('417', '0', '0', '950', '0', '1150', '0', '0', '75', '30', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '57', '0', '15', '100', '100', '100', '100', '0', '20');
INSERT INTO `pet_scaling_data` VALUES ('510', '0', '0', '1000', '0', '1500', '0', '0', '30', '30', '0', '35', '0', '0', '0', '0', '0', '0', '20', '200', '0', '0', '40', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('1860', '0', '0', '1100', '0', '1150', '0', '0', '75', '30', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '57', '0', '15', '100', '100', '100', '100', '0', '20');
INSERT INTO `pet_scaling_data` VALUES ('1860', '57277', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('1863', '0', '0', '910', '0', '1150', '0', '0', '75', '30', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '57', '0', '15', '100', '100', '100', '100', '0', '20');
INSERT INTO `pet_scaling_data` VALUES ('15352', '0', '0', '1000', '0', '1500', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '200', '40', '0', '30', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('15438', '0', '0', '1000', '0', '1500', '0', '0', '20', '10', '0', '0', '0', '0', '0', '0', '0', '0', '20', '200', '80', '0', '40', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('17252', '0', '0', '1100', '0', '1150', '0', '0', '75', '30', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '57', '0', '15', '100', '100', '100', '100', '0', '20');
INSERT INTO `pet_scaling_data` VALUES ('17252', '56246', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('19668', '0', '0', '1000', '0', '1500', '0', '0', '50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '200', '400', '0', '67', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('26125', '0', '0', '1000', '0', '0', '70', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '100', '0', '83', '0', '0', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('26125', '48965', '0', '0', '0', '0', '14', '0', '6', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('26125', '49571', '0', '0', '0', '0', '28', '0', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('26125', '49572', '0', '0', '0', '0', '42', '0', '18', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('26125', '58686', '0', '0', '0', '0', '40', '0', '40', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('27829', '0', '0', '1000', '0', '1500', '100', '0', '100', '0', '0', '35', '0', '0', '0', '0', '0', '0', '20', '200', '0', '0', '50', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('29264', '0', '0', '1000', '0', '1500', '0', '0', '30', '0', '0', '35', '40', '40', '40', '40', '40', '40', '20', '200', '22', '0', '13', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('29264', '63271', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '30', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('31216', '0', '0', '1000', '0', '1500', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '20', '200', '0', '0', '33', '100', '100', '100', '100', '0', '0');
INSERT INTO `pet_scaling_data` VALUES ('37994', '0', '0', '1000', '0', '1500', '0', '0', '30', '30', '0', '35', '0', '0', '0', '0', '0', '0', '20', '200', '0', '0', '40', '100', '100', '100', '100', '0', '0');
