CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
    `itemGuid` int(16) unsigned NOT NULL DEFAULT '0',
    `allowedPlayers` varchar(255) NOT NULL DEFAULT '',
    PRIMARY KEY (`itemGuid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='BOP item trade cache';