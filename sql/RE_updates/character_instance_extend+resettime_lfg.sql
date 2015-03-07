-- Instance Extend LFG
-- Commit 020d4e346d38b961bf62

ALTER TABLE `character_instance`
    ADD COLUMN `extend` TINYINT(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Instance extend (bool)' AFTER `permanent`;

ALTER TABLE `character_instance`
    ADD COLUMN `resettime` INT(11) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Reset time' AFTER `extend`;