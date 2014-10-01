DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_10_01_01_Argent_Tournament';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_10_02_01_waypoints');

SET @GUID1 := 122572;
UPDATE `creature_spawns` SET `position_x`=7174.861,`position_y`=-3647.9,`position_z`=828.4227 WHERE `id`=@GUID1;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@GUID1;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
	(@GUID1,1,7174.861,-3647.9,828.4227,0,0,0,0,0,0,0,0),
	(@GUID1,2,7190.947,-3657.829,823.7313,0,0,0,0,0,0,0,0),
	(@GUID1,3,7203.092,-3661.859,823.8141,0,0,0,0,0,0,0,0),
	(@GUID1,4,7217.113,-3659.162,823.2127,24000,0,0,0,0,0,0,0),
	(@GUID1,5,7178.155,-3646.861,826.0764,0,0,0,0,0,0,0,0),
	(@GUID1,6,7166.444,-3625.109,830.9739,0,0,0,0,0,0,0,0),
	(@GUID1,7,7166.76,-3600.556,830.7375,35000,0,0,0,0,0,0,0);

SET @GUID2 := 124482;
UPDATE `creature_spawns` SET `position_x`=7364.138,`position_y`=-963.9908,`position_z`=906.1143 WHERE `id`=@GUID2;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@GUID2;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
	(@GUID2,1,7364.138,-963.9908,906.1143,0,0,0,0,0,0,0,0),
	(@GUID2,2,7354.389,-990.3735,907.1021,0,0,0,0,0,0,0,0),
	(@GUID2,3,7344.142,-1026.269,907.1985,0,0,0,0,0,0,0,0),
	(@GUID2,4,7346.274,-1065.193,908.5342,0,0,0,0,0,0,0,0),
	(@GUID2,5,7344.142,-1026.269,907.1985,0,0,0,0,0,0,0,0),
	(@GUID2,6,7354.389,-990.3735,907.1021,0,0,0,0,0,0,0,0),
	(@GUID2,7,7364.138,-963.9908,906.1143,0,0,0,0,0,0,0,0),
	(@GUID2,8,7374.346,-935.5877,906.896,0,0,0,0,0,0,0,0),
	(@GUID2,9,7393.324,-923.742,907.4128,0,0,0,0,0,0,0,0),
	(@GUID2,10,7420.953,-909.6816,908.7245,0,0,0,0,0,0,0,0),
	(@GUID2,11,7393.313,-923.7285,907.2764,0,0,0,0,0,0,0,0),
	(@GUID2,12,7374.346,-935.5877,906.896,0,0,0,0,0,0,0,0);
