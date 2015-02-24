-- ----------------------------
-- Table structure for spell_linked
-- ----------------------------
DROP TABLE IF EXISTS `spell_linked`;
CREATE TABLE `spell_linked` (
  `entry` int(10) unsigned NOT NULL COMMENT 'Spell entry',
  `linked_entry` int(10) unsigned NOT NULL COMMENT 'Linked spell entry',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Type of link',
  `effect_mask` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'mask of effect (NY)',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`,`linked_entry`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Linked spells storage';

-- ----------------------------
-- Records of spell_linked
-- ----------------------------
INSERT INTO `spell_linked` VALUES ('7376', '57339', '1', '0', 'Warrior Defensive Stance Passive - threat addon after 3.0');
INSERT INTO `spell_linked` VALUES ('7744', '72757', '11', '0', 'Will of the Forsaken -> CD for PvP Trinket');
INSERT INTO `spell_linked` VALUES ('21178', '57339', '1', '0', 'Druid Bear form - threat addon after 3.0');
INSERT INTO `spell_linked` VALUES ('25780', '57339', '1', '0', 'Paladin - threat addon after 3.0');
INSERT INTO `spell_linked` VALUES ('28880', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('32375', '43241', '4', '0', 'Mass Dispel - Cosmetic');
INSERT INTO `spell_linked` VALUES ('42292', '72752', '11', '0', 'PvP Trinket -> CD for Will of the Forsaken');
INSERT INTO `spell_linked` VALUES ('59542', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('59543', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('59544', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('59545', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('59547', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('59548', '57901', '1', '0', 'Gift of the Naaru Visual');
INSERT INTO `spell_linked` VALUES ('61716', '61719', '1', '0', 'Rabbit Costume - Easter Lay Noblegarden Egg Aura');
INSERT INTO `spell_linked` VALUES ('64382', '64380', '4', '0', 'Shattering Throw - Immunity dispell');
