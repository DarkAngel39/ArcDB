DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_11_21_01_factions';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2015_01_07_01_random_fixes');

 -- Fix item drop for quest 2605 - The Thirsty Goblin
UPDATE `loot_creatures` SET `normal10percentchance`=100,`normal25percentchance`=100,`heroic10percentchance`=100,`heroic25percentchance`=100 WHERE `entryid`=5481 AND `itemid`=8428 AND `normal10percentchance`=10.27 AND `normal25percentchance`=10.27 AND `heroic10percentchance`=10.27 AND `heroic25percentchance`=10.27 AND `mincount`=1 AND `maxcount`=1;
DELETE FROM `item_quest_association` WHERE `item`=8428;
INSERT INTO `item_quest_association` (`item`,`quest`,`item_count`) VALUES
	(8428,2605,1);

 -- Some faction updates
UPDATE `creature_proto` SET `faction`=35 WHERE `entry`IN(24009,24010);
UPDATE `creature_proto` SET `faction`=1434 WHERE `entry`=9516;
UPDATE `creature_spawns` SET `faction`=35 WHERE `entry`IN(24009,24010);
UPDATE `creature_spawns` SET `faction`=1434 WHERE `entry`=9516;

 -- Spawning Cosmetic Trigger - LAB in Ulduar.
SET @CGUID := 142915;
DELETE FROM `creature_spawns` WHERE  `id` BETWEEN @CGUID+0 AND @CGUID+3;
INSERT INTO `creature_spawns` (`id`, `entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movetype`, `displayid`, `faction`, `flags`, `bytes0`, `bytes1`, `bytes2`, `emote_state`, `npc_respawn_link`, `channel_spell`, `channel_target_sqlid`, `channel_target_sqlid_creature`, `standstate`, `death_state`, `mountdisplayid`, `slot1item`, `slot2item`, `slot3item`, `CanFly`, `phase`) VALUES
	(@CGUID+0,24921,603,1437.423,117.3453,425.8442,0,1,21072,35,33554432,16777472,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1),
	(@CGUID+1,24921,603,1437.352,115.7263,425.8618,0,1,21072,35,33554432,16777472,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1),
	(@CGUID+2,24921,603,1437.107,118.4796,425.813,0,1,21072,35,33554432,16777472,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1),
	(@CGUID+3,24921,603,1436.955,118.8366,425.8709,0,1,21072,35,33554432,16777472,0,1,0,0,0,0,0,0,0,0,0,0,0,1,1);
