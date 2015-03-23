DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2015_01_07_01_random_fixes';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2015_01_26_01_random_fixes');

 -- Everfrost Chip respawn
SET @GUID1 := 49591;
SET @GUID2 := 61693;
DELETE FROM `gameobject_spawns` WHERE `id` IN (@GUID1+0,@GUID1+1) AND `Entry`=193997;
DELETE FROM `gameobject_spawns` WHERE `id` BETWEEN @GUID2+0 AND @GUID2+5 AND `Entry`=193997;
INSERT INTO `gameobject_spawns` (`id`, `Entry`, `map`, `position_x`, `position_y`, `position_z`, `Facing`, `orientation1`, `orientation2`, `orientation3`, `orientation4`, `State`, `Flags`, `Faction`, `Scale`, `stateNpcLink`, `phase`, `overrides`) VALUES
(@GUID1+0,193997,571,7330.436,-2212.682,800.4834,4.258607,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID1+1,193997,571,7211.499,-2373.856,781.449,4.380776,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+0,193997,571,6973.803,-2096.827,777.6375,3.263772,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+1,193997,571,7310.712,-2812.066,798.081,1.570796,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+2,193997,571,7301.006,-2746.12,749.5085,0.157079,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+3,193997,571,7550.374,-3154.98,840.1462,4.415683,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+4,193997,571,7177.287,-3071.111,862.2982,0.6806767,0,0,0,0,1,1,0,0.02,0,1,0),
(@GUID2+5,193997,571,7694.284,-3154.72,869.7686,3.769912,0,0,0,0,1,1,0,0.02,0,1,0);

 -- Leatherback Snapjaw faction
UPDATE `creature_proto` SET `faction`=1735 WHERE `entry`=35427;

 -- Helpless Wintergarde Villager
UPDATE `creature_proto` SET `minlevel`=62, `maxlevel`=68 WHERE  `entry`=27336;
 -- Helpless Wintergarde Villager
UPDATE `creature_proto` SET `minlevel`=60, `maxlevel`=70 WHERE  `entry`=27315;

 -- The Talon Kings Coffer spawn pos
UPDATE `gameobject_spawns` SET `position_x`=65.88321,`position_y`=286.6981,`position_z`=25.04024,`Facing`=0 WHERE `id`=41922 AND `entry`=187372;

UPDATE `creature_proto` SET `faction`=35 WHERE `entry` IN (33562,33559,33558,33564,33561,33382,33383,33384,33306,33285,33739,33738,33747,33743,33740,33746,33748,33744,33745,33749);
UPDATE `creature_spawns` SET `faction`=35 WHERE `entry` IN (33562,33559,33558,33564,33561,33382,33383,33384,33306,33285,33739,33738,33747,33743,33740,33746,33748,33744,33745,33749);

SET @CGUID := 142919;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID AND @CGUID+4;
INSERT INTO `creature_spawns` (`id`,`entry`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`movetype`,`displayid`,`faction`,`flags`,`bytes0`,`bytes1`,`bytes2`,`emote_state`,`npc_respawn_link`,`channel_spell`,`channel_target_sqlid`,`channel_target_sqlid_creature`,`standstate`,`death_state`,`mountdisplayid`,`slot1item`,`slot2item`,`slot3item`,`CanFly`,`phase`) VALUES
(@CGUID+0,18152,530,1177.666,8130.762,19.62192,1.151917,0,15397,35,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+1,18152,530,1178.132,8130.465,19.65684,1.117011,0,15394,35,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+2,18152,530,1178.688,8130.183,19.68922,1.082104,0,15393,35,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+3,18152,530,1179.359,8129.974,19.69083,1.012291,0,15396,35,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+4,16980,533,3762.382,-5115.862,143.9382,0.1919862,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1);

UPDATE `creature_spawns` SET `position_x`=5502.288,`position_y`=-3525.471,`position_z`=1607.909,`orientation`=2.617994 WHERE `id`=6747 AND `entry`=22418;

SET @CGUID1 := 62885;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID1 AND @CGUID1+4;
INSERT INTO `creature_spawns` (`id`,`entry`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`movetype`,`displayid`,`faction`,`flags`,`bytes0`,`bytes1`,`bytes2`,`emote_state`,`npc_respawn_link`,`channel_spell`,`channel_target_sqlid`,`channel_target_sqlid_creature`,`standstate`,`death_state`,`mountdisplayid`,`slot1item`,`slot2item`,`slot3item`,`CanFly`,`phase`) VALUES
(@CGUID1+0,15384,533,3759.62,-5172.786,143.8345,5.148721,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1),
(@CGUID1+1,15384,533,3716.097,-5106.208,141.373,4.939282,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1),
(@CGUID1+2,15384,533,3777.213,-5066.177,143.6412,1.53589,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1),
(@CGUID1+3,15384,533,3732.598,-5028.03,144.0342,5.951573,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1),
(@CGUID1+4,15384,533,3700.7,-5182.372,143.9172,3.525565,0,11686,114,33555200,16777472,0,257,0,0,0,0,0,0,0,0,0,0,0,1,1);
