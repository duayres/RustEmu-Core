-- ----------------------------
-- Table structure for vehicle_accessory
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE `vehicle_accessory` (
  `vehicle_entry` int(10) unsigned NOT NULL COMMENT 'entry of the npc who has some accessory as vehicle',
  `seat` mediumint(8) unsigned NOT NULL COMMENT 'onto which seat shall the passenger be boarded',
  `accessory_entry` int(10) unsigned NOT NULL COMMENT 'entry of the passenger that is to be boarded',
  `flags` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'various flags',
  `offset_x` float NOT NULL DEFAULT '0' COMMENT 'custom passenger offset X',
  `offset_y` float NOT NULL DEFAULT '0' COMMENT 'custom passenger offset Y',
  `offset_z` float NOT NULL DEFAULT '0' COMMENT 'custom passenger offset Z',
  `offset_o` float NOT NULL DEFAULT '0' COMMENT 'custom passenger offset O',
  `comment` varchar(255) NOT NULL,
  PRIMARY KEY (`vehicle_entry`,`seat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle Accessory';

-- ----------------------------
-- Records of vehicle_accessory
-- ----------------------------
INSERT INTO `vehicle_accessory` VALUES ('27241', '0', '27268', '0', '0', '0', '0', '0', 'Risen Gryphon');
INSERT INTO `vehicle_accessory` VALUES ('27626', '0', '27627', '1', '0', '0', '0', '0', 'Tatjana\'s Horse');
INSERT INTO `vehicle_accessory` VALUES ('27661', '0', '27662', '0', '0', '0', '0', '0', 'Wintergarde Gryphon');
INSERT INTO `vehicle_accessory` VALUES ('28018', '0', '28006', '1', '0', '0', '0', '0', 'Thiassi the Light Bringer');
INSERT INTO `vehicle_accessory` VALUES ('28054', '0', '28053', '0', '0', '0', '0', '0', 'Lucky Wilhelm - Apple');
INSERT INTO `vehicle_accessory` VALUES ('28312', '7', '28319', '1', '0', '0', '0', '0', 'Wintergrasp Siege Engine');
INSERT INTO `vehicle_accessory` VALUES ('28614', '0', '28616', '1', '0', '0', '0', '0', 'Scarlet Gryphon Rider');
INSERT INTO `vehicle_accessory` VALUES ('29555', '0', '29556', '0', '0', '0', '0', '0', 'Goblin Sapper');
INSERT INTO `vehicle_accessory` VALUES ('29625', '0', '29694', '0', '0', '0', '0', '0', 'Hyldsmeet Proto-Drake');
INSERT INTO `vehicle_accessory` VALUES ('29698', '0', '29699', '0', '0', '0', '0', '0', 'Drakuru Raptor');
INSERT INTO `vehicle_accessory` VALUES ('29931', '0', '29982', '0', '0', '0', '0', '0', 'Drakkari Rider on Drakkari Rhino');
INSERT INTO `vehicle_accessory` VALUES ('30330', '0', '30332', '0', '0', '0', '0', '0', 'Jotunheim Proto-Drake');
INSERT INTO `vehicle_accessory` VALUES ('32189', '0', '32190', '0', '0', '0', '0', '0', 'Skybreaker Recon Fighter');
INSERT INTO `vehicle_accessory` VALUES ('32627', '7', '32629', '1', '0', '0', '0', '0', 'Wintergrasp Siege Engine');
INSERT INTO `vehicle_accessory` VALUES ('32633', '1', '32638', '0', '0', '0', '0', '0', 'Traveler Mammoth (A) - Vendor');
INSERT INTO `vehicle_accessory` VALUES ('32633', '2', '32639', '0', '0', '0', '0', '0', 'Traveler Mammoth (A) - Vendor & Repairer');
INSERT INTO `vehicle_accessory` VALUES ('32640', '1', '32642', '0', '0', '0', '0', '0', 'Traveler Mammoth (H) - Vendor');
INSERT INTO `vehicle_accessory` VALUES ('32640', '2', '32641', '0', '0', '0', '0', '0', 'Traveler Mammoth (H) - Vendor & Repairer');
INSERT INTO `vehicle_accessory` VALUES ('34150', '4', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34150', '5', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('33060', '7', '33067', '1', '0', '0', '0', '0', 'Salvaged Siege Engine');
INSERT INTO `vehicle_accessory` VALUES ('33109', '1', '33167', '3', '0', '0', '0', '0', 'Salvaged Demolisher');
INSERT INTO `vehicle_accessory` VALUES ('33109', '2', '33620', '1', '0', '0', '0', '0', 'Salvaged Demolisher');
INSERT INTO `vehicle_accessory` VALUES ('33109', '3', '33167', '3', '0', '0', '0', '0', 'Salvaged Demolisher');
INSERT INTO `vehicle_accessory` VALUES ('33113', '2', '33114', '3', '0', '0', '0', '0', 'Flame Leviathan');
INSERT INTO `vehicle_accessory` VALUES ('33113', '3', '33114', '3', '0', '0', '0', '0', 'Flame Leviathan');
INSERT INTO `vehicle_accessory` VALUES ('33113', '7', '33139', '1', '0', '0', '0', '0', 'Flame Leviathan');
INSERT INTO `vehicle_accessory` VALUES ('33114', '1', '33142', '1', '0', '0', '0', '0', 'Overload Control Device');
INSERT INTO `vehicle_accessory` VALUES ('33114', '2', '33143', '1', '0', '0', '0', '0', 'Leviathan Defense Turret');
INSERT INTO `vehicle_accessory` VALUES ('33214', '1', '33218', '1', '0', '0', '0', '0', 'Mechanolift 304-A');
INSERT INTO `vehicle_accessory` VALUES ('33669', '0', '33666', '0', '0', '0', '0', '0', 'Demolisher Engineer Blastwrench');
INSERT INTO `vehicle_accessory` VALUES ('33687', '0', '33695', '1', '0', '0', '0', '0', 'Chillmaw');
INSERT INTO `vehicle_accessory` VALUES ('33687', '1', '33695', '1', '0', '0', '0', '0', 'Chillmaw');
INSERT INTO `vehicle_accessory` VALUES ('33687', '2', '33695', '1', '0', '0', '0', '0', 'Chillmaw');
INSERT INTO `vehicle_accessory` VALUES ('33778', '0', '33780', '1', '0', '0', '0', '0', 'Tournament Hippogryph');
INSERT INTO `vehicle_accessory` VALUES ('34658', '0', '34657', '0', '0', '0', '0', '0', 'Jaelyne Evensong\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('34776', '7', '34777', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine  - main turret (ally)');
INSERT INTO `vehicle_accessory` VALUES ('34776', '1', '36356', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine  - flame turret 1 (ally)');
INSERT INTO `vehicle_accessory` VALUES ('34776', '2', '36356', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine  - flame turret 2 (ally)');
INSERT INTO `vehicle_accessory` VALUES ('35069', '7', '36355', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine - main turret (horde)');
INSERT INTO `vehicle_accessory` VALUES ('35069', '1', '34778', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine - flame turret 1 (horde)');
INSERT INTO `vehicle_accessory` VALUES ('35069', '2', '34778', '1', '0', '0', '0', '0', 'Isle of Conquest Siege Engine - flame turret 2 (horde)');
INSERT INTO `vehicle_accessory` VALUES ('35633', '0', '34702', '0', '0', '0', '0', '0', 'Ambrose Boltspark\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35634', '0', '35617', '0', '0', '0', '0', '0', 'Deathstalker Visceri\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35635', '0', '35569', '0', '0', '0', '0', '0', 'Eressea Dawnsinger\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35636', '0', '34703', '0', '0', '0', '0', '0', 'Lana Stouthammer\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35637', '0', '34705', '0', '0', '0', '0', '0', 'Marshal Jacob Alerius\' Mount');
INSERT INTO `vehicle_accessory` VALUES ('35638', '0', '35572', '0', '0', '0', '0', '0', 'Mokra the Skullcrusher\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35640', '0', '35571', '0', '0', '0', '0', '0', 'Runok Wildmane\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35641', '0', '35570', '0', '0', '0', '0', '0', 'Zul\'tore\'s Mount');
INSERT INTO `vehicle_accessory` VALUES ('35768', '0', '34701', '0', '0', '0', '0', '0', 'Colosos\' Mount');
INSERT INTO `vehicle_accessory` VALUES ('36678', '0', '38309', '1', '0', '0', '0', '0', 'Professor Putricide - trigger');
INSERT INTO `vehicle_accessory` VALUES ('36678', '1', '38308', '1', '0', '0', '0', '0', 'Professor Putricide - trigger');
INSERT INTO `vehicle_accessory` VALUES ('36891', '0', '31260', '0', '0', '0', '0', '0', 'Iceborn Proto-Drake');
INSERT INTO `vehicle_accessory` VALUES ('28782', '0', '28768', '0', '0', '0', '0', '0', 'Acherus Deathcharger - Dark Rider of Acherus');
INSERT INTO `vehicle_accessory` VALUES ('32823', '0', '34812', '0', '0', '0', '0', '0', 'Bountiful Table - The Turkey Chair');
INSERT INTO `vehicle_accessory` VALUES ('32823', '1', '34823', '0', '0', '0', '0', '0', 'Bountiful Table - The Cranberry Chair');
INSERT INTO `vehicle_accessory` VALUES ('32823', '2', '34819', '0', '0', '0', '0', '0', 'Bountiful Table - The Stuffing Chair');
INSERT INTO `vehicle_accessory` VALUES ('32823', '3', '34824', '0', '0', '0', '0', '0', 'Bountiful Table - The Sweet Potato Chair');
INSERT INTO `vehicle_accessory` VALUES ('32823', '4', '34822', '0', '0', '0', '0', '0', 'Bountiful Table - The Pie Chair');
INSERT INTO `vehicle_accessory` VALUES ('32823', '5', '32830', '0', '0', '0', '0', '0', 'Bountiful Table - Food Holder');
INSERT INTO `vehicle_accessory` VALUES ('32823', '6', '32840', '0', '0', '0', '0', '0', 'Bountiful Table - Plate Holder');
INSERT INTO `vehicle_accessory` VALUES ('32830', '0', '32824', '0', '0', '0', '0', '0', 'Food Holder - [PH] Pilgrim\'s Bounty Table - Turkey');
INSERT INTO `vehicle_accessory` VALUES ('32830', '1', '32827', '0', '0', '0', '0', '0', 'Food Holder - [PH] Pilgrim\'s Bounty Table - Cranberry Sauce');
INSERT INTO `vehicle_accessory` VALUES ('32830', '2', '32831', '0', '0', '0', '0', '0', 'Food Holder - [PH] Pilgrim\'s Bounty Table - Stuffing');
INSERT INTO `vehicle_accessory` VALUES ('32830', '3', '32825', '0', '0', '0', '0', '0', 'Food Holder - [PH] Pilgrim\'s Bounty Table - Yams');
INSERT INTO `vehicle_accessory` VALUES ('32830', '4', '32829', '0', '0', '0', '0', '0', 'Food Holder - [PH] Pilgrim\'s Bounty Table - Pie');
INSERT INTO `vehicle_accessory` VALUES ('32840', '0', '32839', '0', '0', '0', '0', '0', 'Plate Holder - Sturdy Plate');
INSERT INTO `vehicle_accessory` VALUES ('32840', '1', '32839', '0', '0', '0', '0', '0', 'Plate Holder - Sturdy Plate');
INSERT INTO `vehicle_accessory` VALUES ('32840', '2', '32839', '0', '0', '0', '0', '0', 'Plate Holder - Sturdy Plate');
INSERT INTO `vehicle_accessory` VALUES ('32840', '3', '32839', '0', '0', '0', '0', '0', 'Plate Holder - Sturdy Plate');
INSERT INTO `vehicle_accessory` VALUES ('32840', '4', '32839', '0', '0', '0', '0', '0', 'Plate Holder - Sturdy Plate');
INSERT INTO `vehicle_accessory` VALUES ('27213', '0', '27206', '0', '0', '0', '0', '0', 'Onslaught Warhorse - Onslaught Knight');
INSERT INTO `vehicle_accessory` VALUES ('24083', '0', '24849', '0', '0', '0', '0', '0', 'Proto Drake Rider mounted to Enslaved Proto Drake');
INSERT INTO `vehicle_accessory` VALUES ('24750', '0', '24751', '0', '0', '0', '0', '0', 'Excelsior rides Hidalgo the Master Falconer');
INSERT INTO `vehicle_accessory` VALUES ('28710', '0', '28646', '0', '0', '0', '0', '0', 'Pilot Vic');
INSERT INTO `vehicle_accessory` VALUES ('29433', '0', '29440', '0', '0', '0', '0', '0', 'Goblin Sapper in K3');
INSERT INTO `vehicle_accessory` VALUES ('29579', '0', '29599', '0', '0', '0', '0', '0', 'Brann Snow Target');
INSERT INTO `vehicle_accessory` VALUES ('29838', '0', '29836', '0', '0', '0', '0', '0', 'Drakkari Battle Rider on Drakkari Rhino, not minion');
INSERT INTO `vehicle_accessory` VALUES ('29931', '1', '29982', '0', '0', '0', '0', '0', 'Drakkari Rider on Drakkari Rhino');
INSERT INTO `vehicle_accessory` VALUES ('29931', '2', '29982', '0', '0', '0', '0', '0', 'Drakkari Rider on Drakkari Rhino');
INSERT INTO `vehicle_accessory` VALUES ('30234', '0', '30245', '0', '0', '0', '0', '0', 'Hover Disk - Nexus Lord');
INSERT INTO `vehicle_accessory` VALUES ('30248', '0', '30249', '0', '0', '0', '0', '0', 'Hover Disk - Scion of Eternity');
INSERT INTO `vehicle_accessory` VALUES ('31262', '0', '31263', '0', '0', '0', '0', '0', 'Carrion Hunter rides Blight Falconer');
INSERT INTO `vehicle_accessory` VALUES ('31269', '0', '27559', '0', '0', '0', '0', '0', 'Kor\'kron Battle Wyvern');
INSERT INTO `vehicle_accessory` VALUES ('31406', '0', '31408', '0', '0', '0', '0', '0', 'Alliance Bomber Seat on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '1', '31407', '0', '0', '0', '0', '0', 'Alliance Turret Seat on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '2', '31409', '0', '0', '0', '0', '0', 'Alliance Engineering Seat on rides Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '3', '32217', '0', '0', '0', '0', '0', 'Banner Bunny, Hanging, Alliance on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '4', '32221', '0', '0', '0', '0', '0', 'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '5', '32221', '0', '0', '0', '0', '0', 'Banner Bunny, Side, Alliance on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '6', '32256', '0', '0', '0', '0', '0', 'Shield Visual Loc Bunny on Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31406', '7', '32274', '0', '0', '0', '0', '0', 'Alliance Bomber Pilot rides Alliance Infra-green Bomber');
INSERT INTO `vehicle_accessory` VALUES ('31583', '1', '31630', '0', '0', '0', '0', '0', 'Skytalon Explosion Bunny on Frostbrood Skytalon');
INSERT INTO `vehicle_accessory` VALUES ('31881', '0', '31891', '0', '0', '0', '0', '0', 'Kor\'kron Transport Pilot rides Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31881', '1', '31884', '0', '0', '0', '0', '0', 'Kor\'kron Suppression Turret on Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31881', '2', '31882', '0', '0', '0', '0', '0', 'Kor\'kron Infiltrator on Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31881', '3', '31882', '0', '0', '0', '0', '0', 'Kor\'kron Infiltrator on Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31881', '4', '31882', '0', '0', '0', '0', '0', 'Kor\'kron Infiltrator on Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31881', '5', '31882', '0', '0', '0', '0', '0', 'Kor\'kron Infiltrator on Kor\'kron Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('31884', '0', '31882', '0', '0', '0', '0', '0', 'Kor\'kron Infiltrator rides Kor\'kron Suppression Turret');
INSERT INTO `vehicle_accessory` VALUES ('32225', '0', '32223', '0', '0', '0', '0', '0', 'Skybreaker Transport Pilot rides Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32225', '1', '32227', '0', '0', '0', '0', '0', 'Skybreaker Suppression Turret on Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32225', '2', '32222', '0', '0', '0', '0', '0', 'Skybreaker Infiltrator on Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32225', '3', '32222', '0', '0', '0', '0', '0', 'Skybreaker Infiltrator on Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32225', '4', '32222', '0', '0', '0', '0', '0', 'Skybreaker Infiltrator on Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32225', '5', '32222', '0', '0', '0', '0', '0', 'Skybreaker Infiltrator on Skybreaker Troop Transport');
INSERT INTO `vehicle_accessory` VALUES ('32227', '0', '32222', '0', '0', '0', '0', '0', 'Skybreaker Infiltrator rides Skybreaker Suppression Turret');
INSERT INTO `vehicle_accessory` VALUES ('32344', '0', '32274', '0', '0', '0', '0', '0', 'Alliance Bomber Pilot rides Alliance Rescue Craft');
INSERT INTO `vehicle_accessory` VALUES ('32344', '2', '32531', '0', '0', '0', '0', '0', 'Banner Bunny, Side, Alliance, Small rides Alliance Rescue Craft');
INSERT INTO `vehicle_accessory` VALUES ('32490', '0', '32486', '0', '0', '0', '0', '0', 'Scourge Death Knight rides Scourge Deathcharger');
INSERT INTO `vehicle_accessory` VALUES ('33364', '1', '33365', '0', '0', '0', '0', '0', 'Thorim\'s Hammer Targetting Reticle');
INSERT INTO `vehicle_accessory` VALUES ('36896', '1', '28717', '0', '0', '0', '0', '0', 'Overlord Drakuru on Stonespine Gargoyle');
INSERT INTO `vehicle_accessory` VALUES ('40081', '0', '40083', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40081', '1', '40100', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40470', '0', '40083', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40470', '1', '40100', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40471', '0', '40083', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40471', '1', '40100', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40471', '2', '40468', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40471', '3', '40469', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40472', '0', '40083', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40472', '1', '40100', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40472', '2', '40468', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('40472', '3', '40469', '0', '0', '0', '0', '0', 'Orb Carrier');
INSERT INTO `vehicle_accessory` VALUES ('36794', '0', '36658', '0', '0', '0', '0', '0', 'Scourgelord Tyrannus - intro');
INSERT INTO `vehicle_accessory` VALUES ('33369', '1', '33370', '0', '0', '0', '0', '0', 'Mimiron\'s Inferno Targetting Reticle');
INSERT INTO `vehicle_accessory` VALUES ('33108', '1', '33212', '0', '0', '0', '0', '0', 'Hodir\'s Fury Targetting Reticle');
INSERT INTO `vehicle_accessory` VALUES ('33366', '1', '33367', '0', '0', '0', '0', '0', 'Freya\'s Ward Targetting Reticle');
INSERT INTO `vehicle_accessory` VALUES ('34161', '1', '33216', '0', '0', '0', '0', '0', 'Mechanostriker 54-A');
INSERT INTO `vehicle_accessory` VALUES ('34150', '3', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34150', '2', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34150', '1', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34150', '0', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34146', '3', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34146', '2', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34146', '1', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34146', '0', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '1', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '2', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '3', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '4', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '5', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '6', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '7', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('34151', '0', '34137', '0', '0', '0', '0', '0', 'Winter Jormungar');
INSERT INTO `vehicle_accessory` VALUES ('33651', '5', '34050', '0', '0', '0', '0', '0', 'Rocket (Mimiron Visual)');
INSERT INTO `vehicle_accessory` VALUES ('33651', '6', '34050', '0', '0', '0', '0', '0', 'Rocket (Mimiron Visual)');
INSERT INTO `vehicle_accessory` VALUES ('34183', '1', '34184', '0', '0', '0', '0', '0', 'Clockwork Mechanic');
INSERT INTO `vehicle_accessory` VALUES ('29500', '0', '29498', '0', '0', '0', '0', '0', 'Brunnhildar Warmaiden');
INSERT INTO `vehicle_accessory` VALUES ('30174', '0', '30175', '0', '0', '0', '0', '0', 'Hyldsmeet Bear Rider');
