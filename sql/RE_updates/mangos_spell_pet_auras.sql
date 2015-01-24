-- ----------------------------
-- Table structure for spell_pet_auras
-- ----------------------------
DROP TABLE IF EXISTS `spell_pet_auras`;
CREATE TABLE `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `effectId` tinyint(3) unsigned NOT NULL,
  `pet` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`effectId`,`pet`,`aura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spell_pet_auras
-- ----------------------------
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1', '34902');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1', '34903');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1', '34904');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1', '61017');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '89', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '89', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '89', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '89', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '89', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '416', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '416', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '416', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '416', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '416', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '417', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '417', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '417', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '417', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '417', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '510', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '510', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1860', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1860', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1860', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1860', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1860', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1863', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1863', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1863', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1863', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '1863', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '15352', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '15438', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '15438', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '17252', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '17252', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '17252', '34957');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '17252', '34958');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '17252', '61013');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '19668', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '24207', '50142');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '24207', '51996');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '24207', '54566');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '24207', '61697');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '26125', '50142');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '26125', '51996');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '26125', '54566');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '26125', '61697');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '27829', '54566');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '28017', '50453');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '29264', '34902');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '29264', '34903');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '29264', '34904');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '29264', '58877');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '29264', '61783');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '31216', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '31216', '49866');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '37994', '34947');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '37994', '34956');
INSERT INTO `spell_pet_auras` VALUES ('0', '0', '37995', '34947');
INSERT INTO `spell_pet_auras` VALUES ('19028', '0', '0', '25228');
INSERT INTO `spell_pet_auras` VALUES ('19578', '0', '0', '19579');
INSERT INTO `spell_pet_auras` VALUES ('20895', '0', '0', '24529');
INSERT INTO `spell_pet_auras` VALUES ('23785', '0', '416', '23759');
INSERT INTO `spell_pet_auras` VALUES ('23785', '0', '417', '23762');
INSERT INTO `spell_pet_auras` VALUES ('23785', '0', '1860', '23760');
INSERT INTO `spell_pet_auras` VALUES ('23785', '0', '1863', '23761');
INSERT INTO `spell_pet_auras` VALUES ('23785', '0', '17252', '35702');
INSERT INTO `spell_pet_auras` VALUES ('23822', '0', '416', '23826');
INSERT INTO `spell_pet_auras` VALUES ('23822', '0', '417', '23837');
INSERT INTO `spell_pet_auras` VALUES ('23822', '0', '1860', '23841');
INSERT INTO `spell_pet_auras` VALUES ('23822', '0', '1863', '23833');
INSERT INTO `spell_pet_auras` VALUES ('23822', '0', '17252', '35703');
INSERT INTO `spell_pet_auras` VALUES ('23823', '0', '416', '23827');
INSERT INTO `spell_pet_auras` VALUES ('23823', '0', '417', '23838');
INSERT INTO `spell_pet_auras` VALUES ('23823', '0', '1860', '23842');
INSERT INTO `spell_pet_auras` VALUES ('23823', '0', '1863', '23834');
INSERT INTO `spell_pet_auras` VALUES ('23823', '0', '17252', '35704');
INSERT INTO `spell_pet_auras` VALUES ('23824', '0', '416', '23828');
INSERT INTO `spell_pet_auras` VALUES ('23824', '0', '417', '23839');
INSERT INTO `spell_pet_auras` VALUES ('23824', '0', '1860', '23843');
INSERT INTO `spell_pet_auras` VALUES ('23824', '0', '1863', '23835');
INSERT INTO `spell_pet_auras` VALUES ('23824', '0', '17252', '35705');
INSERT INTO `spell_pet_auras` VALUES ('23825', '0', '416', '23829');
INSERT INTO `spell_pet_auras` VALUES ('23825', '0', '417', '23840');
INSERT INTO `spell_pet_auras` VALUES ('23825', '0', '1860', '23844');
INSERT INTO `spell_pet_auras` VALUES ('23825', '0', '1863', '23836');
INSERT INTO `spell_pet_auras` VALUES ('23825', '0', '17252', '35706');
INSERT INTO `spell_pet_auras` VALUES ('28757', '0', '0', '28758');
INSERT INTO `spell_pet_auras` VALUES ('34455', '0', '0', '75593');
INSERT INTO `spell_pet_auras` VALUES ('34459', '0', '0', '75446');
INSERT INTO `spell_pet_auras` VALUES ('34460', '0', '0', '75447');
INSERT INTO `spell_pet_auras` VALUES ('35029', '0', '0', '35060');
INSERT INTO `spell_pet_auras` VALUES ('35030', '0', '0', '35061');
INSERT INTO `spell_pet_auras` VALUES ('35691', '0', '0', '35696');
INSERT INTO `spell_pet_auras` VALUES ('35692', '0', '0', '35696');
INSERT INTO `spell_pet_auras` VALUES ('35693', '0', '0', '35696');
INSERT INTO `spell_pet_auras` VALUES ('54037', '0', '417', '56249');
INSERT INTO `spell_pet_auras` VALUES ('54038', '0', '417', '56249');
INSERT INTO `spell_pet_auras` VALUES ('56314', '0', '0', '57447');
INSERT INTO `spell_pet_auras` VALUES ('56314', '1', '0', '57485');
INSERT INTO `spell_pet_auras` VALUES ('56315', '0', '0', '57452');
INSERT INTO `spell_pet_auras` VALUES ('56315', '1', '0', '57484');
INSERT INTO `spell_pet_auras` VALUES ('56316', '0', '0', '57453');
INSERT INTO `spell_pet_auras` VALUES ('56316', '1', '0', '57483');
INSERT INTO `spell_pet_auras` VALUES ('56317', '0', '0', '57457');
INSERT INTO `spell_pet_auras` VALUES ('56317', '1', '0', '57482');
INSERT INTO `spell_pet_auras` VALUES ('56318', '0', '0', '57458');
INSERT INTO `spell_pet_auras` VALUES ('56318', '1', '0', '57475');
INSERT INTO `spell_pet_auras` VALUES ('58228', '0', '19668', '57989');
