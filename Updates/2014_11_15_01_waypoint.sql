DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_10_03_02_spellclickspells';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_11_15_01_waypoint');

DELETE FROM `creature_names` WHERE `entry`=1;
INSERT INTO `creature_names` (`entry`,`name`,`subname`,`info_str`,`flags1`,`type`,`family`,`rank`,`killcredit1`,`killcredit2`,`male_displayid`,`female_displayid`,`male_displayid2`,`female_displayid2`,`unknown_float1`,`unknown_float2`,`leader`,`questitem1`,`questitem2`,`questitem3`,`questitem4`,`questitem5`,`questitem6`,`waypointid`) VALUES
	(1,'Waypoint (Only GM can see it)','Visual','',0,10,0,0,0,0,10045,0,0,0,1,1,0,0,0,0,0,0,0,0);

DELETE FROM `creature_proto` WHERE `entry`=1;
INSERT INTO `creature_proto` (`entry`,`minlevel`,`maxlevel`,`faction`,`minhealth`,`maxhealth`,`mana`,`scale`,`npcflags`,`attacktime`,`attacktype`,`mindamage`,`maxdamage`,`can_ranged`,`rangedattacktime`,`rangedmindamage`,`rangedmaxdamage`,`respawntime`,`armor`,`resistance1`,`resistance2`,`resistance3`,`resistance4`,`resistance5`,`resistance6`,`combat_reach`,`bounding_radius`,`auras`,`boss`,`money`,`invisibility_type`,`walk_speed`,`run_speed`,`fly_speed`,`extra_a9_flags`,`spell1`,`spell2`,`spell3`,`spell4`,`spell5`,`spell6`,`spell7`,`spell8`,`spell_flags`,`modImmunities`,`isTrainingDummy`,`guardtype`,`summonguard`,`spelldataid`,`vehicleid`,`rooted`) VALUES
	(1,1,80,35,1,1,0,1,0,2000,0,422,586,0,0,0,0,0,0,0,0,0,0,0,0,1,1,' ',0,0,0,2.5,8,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
