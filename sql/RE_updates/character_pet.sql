-- Pet table cleanup
ALTER TABLE `character_pet`
  DROP `resettalents_cost`,
  DROP `resettalents_time`;

-- Pet table cleanup
ALTER TABLE `character_pet`
  CHANGE `Reactstate` `Reactstate` INT(10) UNSIGNED NOT NULL DEFAULT '0';