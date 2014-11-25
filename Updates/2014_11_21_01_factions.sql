DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_11_15_01_waypoint';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_11_21_01_factions');

UPDATE `creature_spawns` SET `faction`=25 WHERE `entry` IN (6,80,257);
UPDATE `creature_spawns` SET `faction`=12 WHERE `entry`=349;
UPDATE `creature_spawns` SET `faction`=122 WHERE `entry`=738;
UPDATE `creature_spawns` SET `faction`=7 WHERE `entry`=1688;
UPDATE `creature_spawns` SET `faction`=290 WHERE `entry`=1706;
