DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2015_04_14_02_Uldaman_waypoints';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2016_07_12_random_fixes');

UPDATE `creature_spawns` SET `flags`=`flags`-33554432 WHERE `flags` = `flags`|33554432 AND `entry`=19733;

UPDATE `creature_spawns` SET `movetype`=0, `CanFly`=1 WHERE `id`=81860;
DELETE FROM `creature_waypoints` WHERE `spawnid`=81860;

UPDATE `creature_spawns` SET `channel_spell`=31902,`channel_target_sqlid_creature`=81860 WHERE `id`=70083;
UPDATE `creature_spawns` SET `channel_spell`=31902,`channel_target_sqlid_creature`=81860 WHERE `id`=70082;
UPDATE `creature_spawns` SET `channel_spell`=31902,`channel_target_sqlid_creature`=81860 WHERE `id`=70081;
UPDATE `creature_spawns` SET `channel_spell`=31902,`channel_target_sqlid_creature`=81860 WHERE `id`=70080;

UPDATE `creature_spawns` SET `channel_spell`=39123,`channel_target_sqlid_creature`=91927 WHERE `id` IN (91784,91782,91780,91788,91781,91783,91785,91789);
UPDATE `creature_spawns` SET `channel_spell`=39123,`channel_target_sqlid_creature`=91928 WHERE `id` IN (91794,91793,91792);
UPDATE `creature_spawns` SET `channel_spell`=39123,`channel_target_sqlid_creature`=91929 WHERE `id` IN (91797,91795,91791);

UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81822 WHERE `id` IN (81820,81821,81823,81824);
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81836 WHERE `id` IN (81835,81837,81838);
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81840 WHERE `id` IN (81839,81841,81848);
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81843 WHERE `id` IN (81842,81846,81844);
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81857 WHERE `id` IN (81854,81855,81856,81858,81859);
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81849 WHERE `id`=81850;
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81850 WHERE `id`=81851;
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81851 WHERE `id`=81849;
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81832 WHERE `id`=81833;
UPDATE `creature_spawns` SET `channel_spell`=33346,`channel_target_sqlid_creature`=81833 WHERE `id`=81832;

UPDATE `creature_spawns` SET `channel_spell`=38469,`channel_target_sqlid_creature`=90873 WHERE `id` IN (90869,90870,90871,90872);

UPDATE `creature_spawns` SET `movetype`=0, `CanFly`=1 WHERE `id` IN (91927,91928,91928,81820,81821,81823,81824,81835,81837,81838,81839,81841,81844,81848,81842,81846,81854,81855,81856,81858,81859,81850,81851,81849,81833,81832,81822,81836,81840,81843,81857,90873);
DELETE FROM `creature_waypoints` WHERE `spawnid` IN (91927,91928,91928,81820,81821,81823,81824,81835,81837,81838,81839,81841,81844,81848,81842,81846,81854,81855,81856,81858,81859,81850,81851,81849,81833,81832,81822,81836,81840,81843,81857,90873);

UPDATE `creature_spawns` SET `bytes2`=1,`emote_state`=51 WHERE `id` IN (111249,111257,111256,111255);
UPDATE `creature_spawns` SET `bytes2`=1,`emote_state`=69 WHERE `id` IN (109799,109798,109803,109802,109804,109770,109773,109771,109762,109763,109768,109764,109766,109801,109767);
UPDATE `creature_spawns` SET `bytes2`=1,`emote_state`=69 WHERE `id` IN (106310,106308,106307,106309,106311,106312,106345,106344,106343);
UPDATE `creature_spawns` SET `bytes2`=1,`emote_state`=27 WHERE `id` IN (106332,106369,106339,106354,106356,106370,106355,106303,106319,106317,109778,109793,109792,109824,109808,109757,106321,109776,109776,106318,109777,106294,106330,109788,106327,106325,106326,106301,106305,106306,106304,109751,109759,109760,109755,106288,109758,106295,109761,106290,109747,109756,109774,106289,106299,106314,106315);
UPDATE `creature_spawns` SET `bytes2`=1,`emote_state`=27 WHERE `entry` IN (26280,26344);
UPDATE `creature_spawns` SET `bytes1`=8,`bytes2`=1 WHERE `id`=109902;

UPDATE `creature_spawns` SET `channel_spell`=46906,`channel_target_sqlid_creature`=106533 WHERE `id`=106116;
UPDATE `creature_spawns` SET `channel_spell`=46906,`channel_target_sqlid_creature`=106533 WHERE `id`=106105;
UPDATE `creature_spawns` SET `channel_spell`=46906,`channel_target_sqlid_creature`=106533 WHERE `id`=106108;
UPDATE `creature_spawns` SET `channel_spell`=46906,`channel_target_sqlid_creature`=106533 WHERE `id`=106104;
UPDATE `creature_spawns` SET `channel_spell`=46906,`channel_target_sqlid_creature`=107273 WHERE `id`=106533;

UPDATE `creature_spawns` SET `movetype`=0 WHERE `id` IN (107273,109909);
DELETE FROM `creature_waypoints` WHERE `spawnid` IN (107273,109909);

UPDATE `arcclean`.`creature_proto` SET `minlevel`=80, `maxlevel`=80, `faction`=1885 WHERE  `entry`=31030;

SET @CGUID := 200607;
DELETE FROM `creature_spawns` WHERE `id` BETWEEN @CGUID+0 AND @CGUID+23;
INSERT INTO `creature_spawns` (`id`, `entry`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `movetype`, `displayid`, `faction`, `flags`, `bytes0`, `bytes1`, `bytes2`, `emote_state`, `npc_respawn_link`, `channel_spell`, `channel_target_sqlid`, `channel_target_sqlid_creature`, `standstate`, `death_state`, `mountdisplayid`, `slot1item`, `slot2item`, `slot3item`, `CanFly`, `phase`) VALUES
(@CGUID+0,31030,571,7108.229,4428.539,837.9857,4.782202,0,27444,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+1,31030,571,7092.146,4431.81,836.628,4.590216,0,27445,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+2,31030,571,7118.42,4432.598,837.9554,4.869469,0,27446,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+3,31030,571,7083.883,4438.466,834.9834,4.572762,0,27447,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+4,31030,571,7111.272,4445.171,838.5065,4.834562,0,27447,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+5,31030,571,7090.73,4446.96,837.0818,3.402185,0,27444,1885,0,0,50331648,1,0,0,0,0,0,0,0,26882,41980,0,0,1,1),
(@CGUID+6,31077,571,7081.854,4311.559,871.1456,0.8552113,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+7,31077,571,7097.221,4343.909,871.829,4.24115,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+8,31077,571,7073.036,4321.123,871.2318,4.118977,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+9,31077,571,7058.097,4318.563,871.0363,2.216568,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+10,31077,571,7069.263,4307.413,870.969,3.769911,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+11,31077,571,7091.653,4324.766,871.4558,6.161012,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+12,31077,571,7105.507,4331.751,871.8961,5.270895,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+13,31077,571,7081.499,4355.459,871.8806,3.089233,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+14,31077,571,7107.956,4349.756,872.166,3.316126,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+15,31077,571,7060.825,4333.478,871.3121,2.565634,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+16,31077,571,7077.684,4338.44,871.5625,1.710423,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+17,31077,571,7103.35,4365.286,872.2496,2.792527,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+18,31077,571,7069.498,4374.775,872.0762,3.700098,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+19,31077,571,7056.396,4366.188,871.9349,4.415683,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+20,31077,571,7088.755,4385.249,872.4426,0.4014257,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+21,31077,571,7084.891,4370.708,872.1652,3.525565,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+22,31077,571,7065.018,4353.726,871.6901,5.899213,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1),
(@CGUID+23,31077,571,7048.843,4346.518,871.6175,2.984513,0,1126,35,33555200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1);

DELETE FROM `vehicle_accessories` WHERE `creature_entry`=31050 AND `seat`=0;
INSERT INTO `vehicle_accessories` (`creature_entry`,`accessory_entry`,`seat`) VALUES (31050,31016,0);
