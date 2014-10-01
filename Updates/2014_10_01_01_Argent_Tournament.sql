DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_09_25_02_items';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_10_01_01_Argent_Tournament');

SET @GGUID := 61689;
UPDATE `creature_spawns` SET `bytes2`=`bytes2`+256 WHERE `bytes2` != `bytes2`|256 AND `entry` IN (33643,33543);

UPDATE `creature_proto` SET `auras`=66857 WHERE `entry`=35092;
UPDATE `creature_spawns` SET `channel_spell`=68341,`channel_target_sqlid_creature`=133246 WHERE `id`=133252;
UPDATE `creature_spawns` SET `channel_spell`=68341,`channel_target_sqlid_creature`=133245 WHERE `id`=133253;

DELETE FROM `gameobject_spawns` WHERE `id` BETWEEN @GGUID AND @GGUID+3;
INSERT INTO `gameobject_spawns` (`id`, `Entry`, `map`, `position_x`, `position_y`, `position_z`, `Facing`, `orientation1`, `orientation2`, `orientation3`, `orientation4`, `State`, `Flags`, `Faction`, `Scale`, `stateNpcLink`, `phase`, `overrides`) VALUES
	(@GGUID,181650,571,9609.08,1114.53,13.5869,0,0,0,0,0,1,32,0,1,0,1,0),
	(@GGUID+1,181650,571,9592.04,1107.02,9.43093,0,0,0,0,0,1,32,0,1,0,1,0),
	(@GGUID+2,181650,571,9572.14,1094.54,9.22515,0,0,0,0,0,1,32,0,1,0,1,0),
	(@GGUID+3,181650,571,9544.07,1080.18,24.4488,0,0,0,0,0,1,32,0,1,0,1,0);
