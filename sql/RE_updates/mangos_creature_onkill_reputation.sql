-- Creature on kill Reputation

ALTER TABLE `creature_onkill_reputation`
    ADD COLUMN `ChampioningAura` int(11) unsigned NOT NULL default 0 AFTER `TeamDependent`;

-- Creature on kill Reputation
UPDATE creature_onkill_reputation SET ChampioningAura = 57818 WHERE (RewOnKillRepFaction1= 1037 OR RewOnKillRepFaction2 = 1052) AND ChampioningAura = 0;
