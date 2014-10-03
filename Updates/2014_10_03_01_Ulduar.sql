DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_10_02_01_waypoints';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_10_03_01_Ulduar');

SET @IDAURIAYA := 131727;
 -- Flame Leviathan: corrected spawn.
UPDATE `creature_spawns` SET `position_x`=420.728,`position_y`=-15.3721,`position_z`=409.804,`orientation`=3.05873 WHERE `id`=140787 AND `entry`=33113;
 -- Razorscale: corrected spawn.
UPDATE `creature_spawns` SET `position_x`=587.073,`position_y`=-203.205,`position_z`=441.237,`orientation`=1.60532,`CanFly`=1 WHERE `id`=130813 AND `entry`=33186;
 -- Algalon the Observer: set correct model.
UPDATE `creature_spawns` SET `displayid`=28641 WHERE `id`=140788;
UPDATE `creature_names` SET `male_displayid`=28641 WHERE `entry`=32871;
 -- Auriaya: spawn position, pathing, formation group.
UPDATE `creature_spawns` SET `position_x`=1938.97,`position_y`=43.0634,`position_z`=411.356,`orientation`=4.17477,`movetype`=2 WHERE `id`=@IDAURIAYA AND `entry`=33515; -- Auriay,`movetype`=2a
UPDATE `creature_spawns` SET `position_x`=1945.2,`position_y`=37.2442,`position_z`=411.356,`orientation`=3.62107,`movetype`=1 WHERE `id`=132248 AND `entry`=34014; -- Guardian 1
UPDATE `creature_spawns` SET `position_x`=1936.11,`position_y`=49.8233,`position_z`=411.352,`orientation`=3.85276,`movetype`=1 WHERE `id`=132249 AND `entry`=34014; -- Guardian 2
DELETE FROM `creature_formations` WHERE `target_spawn_id`=@IDAURIAYA;
INSERT INTO `creature_formations` (`spawn_id`,`target_spawn_id`,`follow_angle`,`follow_dist`) VALUES
	(132248,@IDAURIAYA,90,5),
	(132249,@IDAURIAYA,270,5);

DELETE FROM `creature_waypoints` WHERE `spawnid`= @IDAURIAYA;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
	(@IDAURIAYA,1,1938.74,42.0643,411.358,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,2,1956.2,49.3155,411.358,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,3,1970.31,50.5359,417.717,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,4,1990.49,49.9089,417.724,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,5,2010.11,44.2249,417.718,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,6,2022.31,37.5932,411.356,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,7,2036.57,25.5494,411.359,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,8,2045.6,8.55577,411.368,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,9,2053.33,-9.10887,421.64,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,10,2058.92,-23.5466,421.531,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,11,2053.64,-39.3413,421.668,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,12,2046.84,-57.962,411.357,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,13,2036.32,-71.1442,411.356,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,14,2022.63,-86.4144,411.357,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,15,2010.31,-91.4637,417.716,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,16,1990.63,-98.2343,417.724,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,17,1969.91,-99.161,417.72,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,18,1957.02,-97.8217,411.356,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,19,1969.91,-99.161,417.72,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,20,1990.63,-98.2343,417.724,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,21,2010.31,-91.4637,417.716,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,22,2022.63,-86.4144,411.357,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,23,2036.32,-71.1442,411.356,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,24,2046.84,-57.962,411.357,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,25,2053.64,-39.3413,421.668,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,26,2058.92,-23.5466,421.531,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,27,2053.33,-9.10887,421.64,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,28,2045.6,8.55577,411.368,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,29,2036.57,25.5494,411.359,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,30,2022.31,37.5932,411.356,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,31,2010.11,44.2249,417.718,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,32,1990.49,49.9089,417.724,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,33,1970.31,50.5359,417.717,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,34,1956.2,49.3155,411.358,0,0,0,0,0,0,0,0),
	(@IDAURIAYA,35,1938.74,42.0643,411.358,0,0,0,0,0,0,0,0);

DELETE FROM `creature_spawns` WHERE `entry` IN (33139,33114,33855,32941,32950,32946,32948,33167,33282);
UPDATE `creature_spawns` SET `bytes1`=7, `death_state`=1 WHERE `id` IN(33059,33063);
