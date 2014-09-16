DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2014_09_14_01_mount_display_id';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2014_09_16_01_misc');

 -- Borean Tundra
UPDATE `creature_spawns` SET `channel_spell`=45940,`channel_target_sqlid_creature`=140107 WHERE `id` IN (104714,104715,104716,104717);
 -- Wintergrasp
DELETE FROM `gameobject_spawns` WHERE `id` IN (51303,60801,60802);
DELETE FROM `creature_spawns` WHERE `id` IN (134420,140750);
 -- Northrend
UPDATE `creature_spawns` SET `emote_state`=429 WHERE `id` IN (128387,128390,128394);
UPDATE `creature_spawns` SET `phase`=256 WHERE `id` IN (139991,139993,139994,139995,141000);
UPDATE `creature_proto` SET `auras`='64100 62710' WHERE `entry`=33429;
UPDATE `creature_proto` SET `npcflags`=`npcflags`-1 WHERE `npcflags`=`npcflags`|1 AND `entry` IN (34127,33438,33550);
UPDATE `creature_spawns` SET `channel_spell`=60452,`channel_target_sqlid_creature`=110274 WHERE `id` IN (129880,129878,129879,129875,129874,129877,129876);
UPDATE `creature_spawns` SET `channel_spell`=60452,`channel_target_sqlid_creature`=110277 WHERE `id` IN (129873,129869,129872,129870);
UPDATE `creature_spawns` SET `channel_spell`=60452,`channel_target_sqlid_creature`=110275 WHERE `id` IN (129866,129868,129867,129871);
 -- Dragonblight
UPDATE `creature_spawns` SET `channel_spell`=55841,`channel_target_sqlid_creature`=124509 WHERE `id` IN (124485,124486);
UPDATE `creature_spawns` SET `channel_spell`=55840,`channel_target_sqlid_creature`=124510 WHERE `id` IN (124484,124487);
UPDATE `creature_spawns` SET `channel_spell`=55838,`channel_target_sqlid_creature`=124511 WHERE `id` IN (124488,124490);
UPDATE `creature_spawns` SET `channel_spell`=55824,`channel_target_sqlid_creature`=124512 WHERE `id` IN (124489,124491);
UPDATE `creature_spawns` SET `bytes1`=3 WHERE `id`=113782;
UPDATE `creature_spawns` SET `bytes1`=9 WHERE `id` IN (111122,111125);
 -- Zul'Drak
DELETE FROM `creature_spawns` WHERE `id`=117376;
DELETE FROM `creature_waypoints` WHERE `spawnid` IN (117376,117377,120048);
UPDATE `creature_spawns` SET `channel_spell`=51616,`channel_target_sqlid_creature`=117377 WHERE `id`=117318;
SET @CGUID := 113413;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID+1 AND @CGUID+19;
INSERT INTO `creature_spawns` (`id`, `entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movetype`, `displayid`, `faction`, `flags`, `bytes0`, `bytes1`, `bytes2`, `emote_state`, `npc_respawn_link`, `channel_spell`, `channel_target_sqlid`, `channel_target_sqlid_creature`, `standstate`, `death_state`, `mountdisplayid`, `slot1item`, `slot2item`, `slot3item`, `CanFly`, `phase`) VALUES
	(@CGUID+1,28417,571,6024.27,-3348.57,350.434,0.767945,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+2,28417,571,6027.5,-3317.41,350.434,0.314159,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+3,28417,571,6033.27,-3265.17,350.434,5.67232,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+4,28417,571,6039.3,-3295.16,350.434,6.12611,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+5,28417,571,6049.33,-3245.19,350.434,5.28835,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+6,28417,571,6075.41,-3236.3,350.434,4.79966,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+7,28417,571,6083.66,-3364.67,350.753,1.55334,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+8,28417,571,6115.07,-3364.6,350.434,2.05949,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+9,28417,571,6135.96,-3314.09,350.434,3.10669,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+10,28417,571,6137.5,-3347.37,350.434,2.53073,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+11,28417,571,6146.03,-3253.23,350.434,3.90954,0,27876,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+12,28417,571,6150.06,-3286.49,350.434,3.33358,0,27877,2069,32768,2048,0,1,0,0,51616,0,117377,0,0,0,23369,0,0,0,1),
	(@CGUID+13,28417,571,6500.52,-3282.24,402.387,0.436332,0,27876,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+14,28417,571,6506.27,-3452.91,389.451,1.67552,0,27877,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+15,28417,571,6506.83,-3168.6,405.608,4.7473,0,27876,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+16,28417,571,6521.72,-3079.42,390.77,4.60767,0,27877,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+17,28417,571,6522.38,-3125.99,390.37,4.55531,0,27876,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+18,28417,571,6526.55,-3408.53,390.794,1.72788,0,27877,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1),
	(@CGUID+19,28417,571,6575.11,-3168.3,407.421,4.13643,0,27876,2069,32768,2048,0,1,0,0,0,0,0,0,0,0,23369,0,0,0,1);

UPDATE `creature_spawns` SET `channel_spell`=52837,`channel_target_sqlid_creature`=120048 WHERE `id`=106542;
UPDATE `creature_spawns` SET `channel_spell`=52838,`channel_target_sqlid_creature`=120048 WHERE `id`=97825;
UPDATE `creature_spawns` SET `channel_spell`=52833,`channel_target_sqlid_creature`=120048 WHERE `id`=97824;
UPDATE `creature_spawns` SET `channel_spell`=52834,`channel_target_sqlid_creature`=120048 WHERE `id`=97827;
 -- Grizzly Hills
DELETE FROM `creature_waypoints` WHERE `spawnid` IN (109623,109624,109622);
UPDATE `creature_spawns` SET `CanFly`=1 WHERE `id` IN (109623,109624,109622);
UPDATE `creature_spawns` SET `channel_spell`=47463,`channel_target_sqlid_creature`=109623 WHERE `id` IN (109837,109836,109835,109834);
UPDATE `creature_spawns` SET `channel_spell`=47463,`channel_target_sqlid_creature`=109624 WHERE `id` IN (109831,109832,109833,109830);
UPDATE `creature_spawns` SET `channel_spell`=47463,`channel_target_sqlid_creature`=109622 WHERE `id` IN (109838,109839,109841,109840);
