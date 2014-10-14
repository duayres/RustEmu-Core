-- fix power type of summon pet: water elemental, imp, Succubus
UPDATE `creature_template` SET `UnitClass`='8' WHERE `Entry` IN (416, 510, 1863);