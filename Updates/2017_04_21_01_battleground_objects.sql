DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2016_07_12_random_fixes';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2017_04_21_01_battleground_objects');

DELETE FROM `gameobject_spawns` WHERE `map` IN (529,566,489);