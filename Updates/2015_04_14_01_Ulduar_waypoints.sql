DELETE FROM `db_version` WHERE `db_name`='ArcDB' AND `revision`=1 AND `game_version`='3.3.5a' AND `LastUpdate`='2015_03_24_01_areatriggers';
INSERT INTO `db_version` (`db_name`,`revision`,`game_version`,`LastUpdate`) VALUES ('ArcDB',1,'3.3.5a','2015_04_14_01_Ulduar_waypoints');

 -- Winter Revenant Entry: 34134
SET @NPC := 132277;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=1863.794,`position_y`=-291.2315,`position_z`=412.549 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,1863.794,-291.2315,412.549,0,0,0,0,0,0,0,0),
(@NPC,2,1863.79,-270.939,412.549,0,0,0,0,0,0,0,0),
(@NPC,3,1863.947,-228.3612,412.549,0,0,0,0,0,0,0,0),
(@NPC,4,1869.661,-213.3534,412.5491,0,0,0,0,0,0,0,0),
(@NPC,5,1865.418,-223.9702,412.5492,0,0,0,0,0,0,0,0),
(@NPC,6,1864.278,-260.7524,412.5491,0,0,0,0,0,0,0,0);

SET @NPC := 132278;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=1923.732,`position_y`=-359.4886,`position_z`=421.7067 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,1923.732,-359.4886,421.7067,0,0,0,0,0,0,0,0),
(@NPC,2,1910.024,-354.7222,418.0154,0,0,0,0,0,0,0,0),
(@NPC,3,1918.405,-348.7433,419.1237,0,0,0,0,0,0,0,0),
(@NPC,4,1939.619,-338.1754,423.0634,0,0,0,0,0,0,0,0),
(@NPC,5,1963.408,-334.0208,424.2783,0,0,0,0,0,0,0,0),
(@NPC,6,1980.856,-335.2691,424.5296,0,0,0,0,0,0,0,0),
(@NPC,7,1986.183,-330.6932,425.169,0,0,0,0,0,0,0,0),
(@NPC,8,1995.423,-314.1808,429.2899,0,0,0,0,0,0,0,0),
(@NPC,9,1991.416,-322.2818,428.0239,0,0,0,0,0,0,0,0),
(@NPC,10,1986.513,-331.125,425.358,0,0,0,0,0,0,0,0),
(@NPC,11,1985.857,-349.7383,423.7158,0,0,0,0,0,0,0,0),
(@NPC,12,1981.682,-366.153,421.861,0,0,0,0,0,0,0,0),
(@NPC,13,1977.274,-369.6335,421.7955,0,0,0,0,0,0,0,0),
(@NPC,14,1979.401,-369.707,421.2126,0,0,0,0,0,0,0,0),
(@NPC,15,1984.034,-359.9644,422.6329,0,0,0,0,0,0,0,0),
(@NPC,16,1984.393,-335.8026,424.7922,0,0,0,0,0,0,0,0),
(@NPC,17,1988.928,-328.356,425.7399,0,0,0,0,0,0,0,0),
(@NPC,18,1995.36,-317.4339,428.2936,0,0,0,0,0,0,0,0),
(@NPC,19,1986.51,-331.1359,425.4233,0,0,0,0,0,0,0,0),
(@NPC,20,1985.911,-349.9874,423.6323,0,0,0,0,0,0,0,0),
(@NPC,21,1981.283,-367.6224,421.5562,0,0,0,0,0,0,0,0),
(@NPC,22,1977.089,-370.4861,421.7415,0,0,0,0,0,0,0,0),
(@NPC,23,1980.1,-368.3475,421.1914,0,0,0,0,0,0,0,0),
(@NPC,24,1983.74,-359.1452,422.7472,0,0,0,0,0,0,0,0),
(@NPC,25,1984.766,-343.7218,423.7823,0,0,0,0,0,0,0,0),
(@NPC,26,1995.432,-314.0199,429.2879,0,0,0,0,0,0,0,0),
(@NPC,27,1989.344,-326.1992,426.7511,0,0,0,0,0,0,0,0),
(@NPC,28,1982.792,-334.583,424.959,0,0,0,0,0,0,0,0),
(@NPC,29,1966.594,-333.5218,424.746,0,0,0,0,0,0,0,0),
(@NPC,30,1947.611,-335.2066,424.0862,0,0,0,0,0,0,0,0),
(@NPC,31,1926.362,-345.1485,420.9026,0,0,0,0,0,0,0,0),
(@NPC,32,1910.392,-351.3752,417.4246,0,0,0,0,0,0,0,0),
(@NPC,33,1920.583,-357.5619,420.6503,0,0,0,0,0,0,0,0),
(@NPC,34,1930.703,-367.3549,424.857,0,0,0,0,0,0,0,0),
(@NPC,35,1948.212,-376.7307,427.6352,0,0,0,0,0,0,0,0);

SET @NPC := 109946; -- Empty spawnid.
DELETE FROM `creature_spawns` WHERE `id`=@NPC;
INSERT INTO `creature_spawns` (`id`,`entry`,`map`,`position_x`,`position_y`,`position_z`,`orientation`,`movetype`,`displayid`,`faction`,`flags`,`bytes0`,`bytes1`,`bytes2`,`emote_state`,`npc_respawn_link`,`channel_spell`,`channel_target_sqlid`,`channel_target_sqlid_creature`,`standstate`,`death_state`,`mountdisplayid`,`slot1item`,`slot2item`,`slot3item`,`CanFly`,`phase`) VALUES
(@NPC,34134,603,1819.619,-357.7437,413.1524,0.42,2,29100,16,64,131584,0,1,0,0,0,0,0,0,0,0,0,0,0,0,1);
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,1819.619,-357.7437,413.1524,0,0,0,0,0,0,0,0),
(@NPC,2,1805.549,-360.7479,413.217,0,0,0,0,0,0,0,0),
(@NPC,3,1794.583,-359.7582,412.7976,0,0,0,0,0,0,0,0),
(@NPC,4,1781.751,-356.4551,412.6638,0,0,0,0,0,0,0,0),
(@NPC,5,1767.5,-360.8076,412.4928,0,0,0,0,0,0,0,0),
(@NPC,6,1786.507,-358.0201,412.7365,0,0,0,0,0,0,0,0),
(@NPC,7,1804.042,-360.811,413.1808,0,0,0,0,0,0,0,0),
(@NPC,8,1815.088,-359.1276,413.0786,0,0,0,0,0,0,0,0),
(@NPC,9,1826.932,-355.8406,413.2609,0,0,0,0,0,0,0,0),
(@NPC,10,1837.789,-356.2162,413.0187,0,0,0,0,0,0,0,0),
(@NPC,11,1851.447,-344.2731,412.6318,0,0,0,0,0,0,0,0),
(@NPC,12,1860.773,-334.8643,412.6426,0,0,0,0,0,0,0,0),
(@NPC,13,1874.715,-338.0733,412.809,0,0,0,0,0,0,0,0),
(@NPC,14,1882.154,-355.1157,412.7476,0,0,0,0,0,0,0,0),
(@NPC,15,1872.645,-369.4694,413.3637,0,0,0,0,0,0,0,0),
(@NPC,16,1862.287,-378.0733,413.9054,0,0,0,0,0,0,0,0),
(@NPC,17,1850.775,-374.4587,412.9799,0,0,0,0,0,0,0,0),
(@NPC,18,1841.932,-359.4829,413.0605,0,0,0,0,0,0,0,0),
(@NPC,19,1823.803,-358.0992,412.858,0,0,0,0,0,0,0,0);

 -- Guardian of Life Entry: 33528
SET @NPC := 131744;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2267.131,`position_y`=25.01511,`position_z`=428.6021 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2267.131,25.01511,428.6021,0,0,0,0,0,0,0,0),
(@NPC,2,2267.036,24.98481,428.7653,0,0,0,0,0,0,0,0),
(@NPC,3,2266.606,38.24471,428.8724,0,0,0,0,0,0,0,0),
(@NPC,4,2266.924,24.55858,428.5795,0,0,0,0,0,0,0,0),
(@NPC,5,2267.036,24.98481,428.7653,0,0,0,0,0,0,0,0),
(@NPC,6,2266.606,38.24471,428.8724,0,0,0,0,0,0,0,0),
(@NPC,7,2267.153,24.9108,428.5908,0,0,0,0,0,0,0,0),
(@NPC,8,2267.036,24.98481,428.7653,0,0,0,0,0,0,0,0),
(@NPC,9,2266.606,38.24471,428.8724,0,0,0,0,0,0,0,0);

SET @NPC := 131743;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2366.774,`position_y`=4.869098,`position_z`=427.116 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2366.774,4.869098,427.116,0,0,0,0,0,0,0,0),
(@NPC,2,2362.121,4.529948,427.9323,0,0,0,0,0,0,0,0),
(@NPC,3,2348.469,20.28589,429.8685,0,0,0,0,0,0,0,0),
(@NPC,4,2364.304,30.57164,430.7769,0,0,0,0,0,0,0,0),
(@NPC,5,2361.717,29.00374,430.3431,0,0,0,0,0,0,0,0),
(@NPC,6,2353.135,9.205807,428.5914,0,0,0,0,0,0,0,0);

SET @NPC := 131742;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2258.508,`position_y`=-45.42564,`position_z`=427.925 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2258.508,-45.42564,427.925,0,0,0,0,0,0,0,0),
(@NPC,2,2251.779,-49.15427,426.946,0,0,0,0,0,0,0,0),
(@NPC,3,2250.673,-49.80873,426.6561,0,0,0,0,0,0,0,0),
(@NPC,4,2252.392,-71.85374,427.5378,0,0,0,0,0,0,0,0),
(@NPC,5,2247.761,-65.52759,426.7502,0,0,0,0,0,0,0,0),
(@NPC,6,2245.5,-62.23093,426.3374,0,0,0,0,0,0,0,0);

SET @NPC := 131745;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2337.467,`position_y`=-207.8645,`position_z`=442.2937 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2337.467,-207.8645,442.2937,0,0,0,0,0,0,0,0),
(@NPC,2,2344.242,-198.5094,441.5296,0,0,0,0,0,0,0,0),
(@NPC,3,2348.561,-192.5445,440.9542,0,0,0,0,0,0,0,0),
(@NPC,4,2324.5,-181.2047,442.9576,0,0,0,0,0,0,0,0),
(@NPC,5,2333.28,-177.3987,441.4766,0,0,0,0,0,0,0,0),
(@NPC,6,2337.545,-175.9973,441.1203,0,0,0,0,0,0,0,0);

 -- Guardian Lasher Entry: 33430 
SET @NPC := 131614;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2409.214,`position_y`=39.68574,`position_z`=430.8202 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2409.214,39.68574,430.8202,0,0,0,0,0,0,0,0),
(@NPC,2,2419.765,55.44238,432.5078,0,0,0,0,0,0,0,0),
(@NPC,3,2412.965,68.34785,436.2759,0,0,0,0,0,0,0,0),
(@NPC,4,2392.464,56.26165,433.3107,0,0,0,0,0,0,0,0);

SET @NPC := 131612;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2279.508,`position_y`=-143.8644,`position_z`=435.7896 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2279.508,-143.8644,435.7896,0,0,0,0,0,0,0,0),
(@NPC,2,2294.608,-141.4411,434.8279,0,0,0,0,0,0,0,0),
(@NPC,3,2297.896,-140.7821,434.6606,0,0,0,0,0,0,0,0),
(@NPC,4,2300.045,-107.6998,432.8321,0,0,0,0,0,0,0,0),
(@NPC,5,2282.262,-122.0434,432.8238,0,0,0,0,0,0,0,0),
(@NPC,6,2262.708,-113.97,431.0626,0,0,0,0,0,0,0,0),
(@NPC,7,2246.123,-120.2917,433.473,0,0,0,0,0,0,0,0),
(@NPC,8,2252.349,-127.7779,432.1354,0,0,0,0,0,0,0,0);

SET @NPC := 131613;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=2348.184,`position_y`=-33.40479,`position_z`=425.1163 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,2348.184,-33.40479,425.1163,0,0,0,0,0,0,0,0),
(@NPC,2,2321.229,-1.325779,426.4646,0,0,0,0,0,0,0,0),
(@NPC,3,2314.177,14.98683,429.6667,0,0,0,0,0,0,0,0),
(@NPC,4,2318.373,3.474962,427.6927,0,0,0,0,0,0,0,0),
(@NPC,5,2346.51,-30.4225,424.8373,0,0,0,0,0,0,0,0),
(@NPC,6,2325.816,-64.16115,426.2005,0,0,0,0,0,0,0,0);

 -- Hired Engineer Entry: 33626
SET @NPC := 131876;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-714.6555,`position_y`=-17.16721,`position_z`=429.8806 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-714.6555,-17.16721,429.8806,2000,0,0,0,0,0,0,0),
(@NPC,2,-718.4268,-23.51997,429.8806,0,0,0,0,0,0,0,0),
(@NPC,3,-718.511,-23.33659,430.1306,0,0,0,0,0,0,0,0),
(@NPC,4,-722.3708,-23.03671,430.1306,0,0,0,0,0,0,0,0),
(@NPC,5,-724.927,-20.31805,430.1306,0,0,0,0,0,0,0,0),
(@NPC,6,-725.4897,-15.76975,429.8806,3000,0,0,0,0,0,0,0),
(@NPC,7,-724.358,-22.59787,429.8806,0,0,0,0,0,0,0,0),
(@NPC,8,-724.1555,-22.44646,430.1306,0,0,0,0,0,0,0,0),
(@NPC,9,-719.5723,-23.93241,430.1306,0,0,0,0,0,0,0,0),
(@NPC,10,-715.4219,-21.92954,430.1306,0,0,0,0,0,0,0,0);
 
SET @NPC := 131884;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-821.8198,`position_y`=-33.27892,`position_z`=430.2184 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-821.8198,-33.27892,430.2184,0,0,0,0,0,0,0,0),
(@NPC,2,-822.3601,-31.65381,430.2184,0,0,0,0,0,0,0,0),
(@NPC,3,-824.5154,-34.64041,429.9684,0,0,0,0,0,0,0,0),
(@NPC,4,-824.2672,-34.39585,430.2184,0,0,0,0,0,0,0,0),
(@NPC,5,-821.0198,-37.88292,429.9684,2000,0,0,0,0,0,0,0);

SET @NPC := 131882;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-754.7864,`position_y`=-36.70388,`position_z`=429.9034 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-754.7864,-36.70388,429.9034,0,0,0,0,0,0,0,0),
(@NPC,2,-751.721,-35.1428,429.9657,0,0,0,0,0,0,0,0),
(@NPC,3,-751.8016,-34.96943,430.1835,0,0,0,0,0,0,0,0),
(@NPC,4,-751.6813,-31.36849,429.9659,2000,0,0,0,0,0,0,0);

SET @NPC := 131873;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-806.7797,`position_y`=-61.91017,`position_z`=430.2184 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-806.7797,-61.91017,430.2184,0,0,0,0,0,0,0,0),
(@NPC,2,-805.1627,-65.66473,430.1716,0,0,0,0,0,0,0,0),
(@NPC,3,-807.4543,-68.63271,429.8748,2000,0,0,0,0,0,0,0),
(@NPC,4,-810.992,-72.29839,429.8748,0,0,0,0,0,0,0,0),
(@NPC,5,-811.0092,-71.93497,430.1248,0,0,0,0,0,0,0,0),
(@NPC,6,-819.4515,-69.41702,429.9216,0,0,0,0,0,0,0,0),
(@NPC,7,-821.9469,-64.33131,430.2059,0,0,0,0,0,0,0,0),
(@NPC,8,-819.5031,-58.79203,430.2184,0,0,0,0,0,0,0,0),
(@NPC,9,-817.4072,-59.57487,429.9684,2000,0,0,0,0,0,0,0),
(@NPC,10,-807.0515,-61.87196,429.9684,0,0,0,0,0,0,0,0);
 
SET @NPC := 131881;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-785.7463,`position_y`=-41.38455,`position_z`=429.9659 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-785.7463,-41.38455,429.9659,0,0,0,0,0,0,0,0),
(@NPC,2,-785.3948,-41.14034,430.2159,0,0,0,0,0,0,0,0),
(@NPC,3,-782.2135,-41.35977,430.2159,0,0,0,0,0,0,0,0),
(@NPC,4,-779.5613,-40.3548,430.2159,0,0,0,0,0,0,0,0),
(@NPC,5,-777.8319,-36.41965,430.183,0,0,0,0,0,0,0,0),
(@NPC,6,-778.6835,-33.0957,429.9001,2000,0,0,0,0,0,0,0),
(@NPC,7,-779.9354,-28.00385,429.9001,0,0,0,0,0,0,0,0),
(@NPC,8,-779.8657,-28.03287,430.1501,0,0,0,0,0,0,0,0),
(@NPC,9,-784.348,-25.80318,430.1501,0,0,0,0,0,0,0,0),
(@NPC,10,-788.9271,-27.93935,430.183,0,0,0,0,0,0,0,0),
(@NPC,11,-791.5985,-34.02659,430.1966,0,0,0,0,0,0,0,0),
(@NPC,12,-790.8046,-36.75038,430.2113,0,0,0,0,0,0,0,0);
 
SET @NPC := 131875;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-808.118,`position_y`=-40.2321,`position_z`=429.9684 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-808.118,-40.2321,429.9684,0,0,0,0,0,0,0,0),
(@NPC,2,-807.7555,-40.07573,430.2184,0,0,0,0,0,0,0,0),
(@NPC,3,-804.9432,-39.92784,430.2184,0,0,0,0,0,0,0,0),
(@NPC,4,-807.1721,-39.73579,430.2184,0,0,0,0,0,0,0,0),
(@NPC,5,-808.9033,-36.34509,430.2184,0,0,0,0,0,0,0,0);
 
SET @NPC := 131883;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-712.0216,`position_y`=-106.3855,`position_z`=430.3862 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-712.0216,-106.3855,430.3862,0,0,0,0,0,0,0,0),
(@NPC,2,-712.1302,-106.2594,430.5872,0,0,0,0,0,0,0,0),
(@NPC,3,-712.4497,-100.7512,430.033,0,0,0,0,0,0,0,0),
(@NPC,4,-714.1099,-98.13288,430.1651,0,0,0,0,0,0,0,0),
(@NPC,5,-717.9264,-97.92854,430.2126,0,0,0,0,0,0,0,0),
(@NPC,6,-720.3586,-98.40739,430.1744,0,0,0,0,0,0,0,0),
(@NPC,7,-722.0936,-101.579,430.1653,0,0,0,0,0,0,0,0),
(@NPC,8,-722.2216,-104.0047,430.1362,0,0,0,0,0,0,0,0),
(@NPC,9,-721.8704,-107.3522,429.9794,0,0,0,0,0,0,0,0),
(@NPC,10,-719.009,-109.2184,430.31,0,0,0,0,0,0,0,0),
(@NPC,11,-717.5231,-108.9742,430.4017,0,0,0,0,0,0,0,0);

SET @NPC := 131885;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-805.7245,`position_y`=-92.51467,`position_z`=429.9373 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-805.7245,-92.51467,429.9373,0,0,0,0,0,0,0,0),
(@NPC,2,-809.9697,-93.78546,430.1968,0,0,0,0,0,0,0,0),
(@NPC,3,-813.4847,-92.64854,429.9998,3000,0,0,0,0,0,0,0),
(@NPC,4,-821.6218,-88.66959,429.8748,0,0,0,0,0,0,0,0),
(@NPC,5,-821.3884,-88.30928,430.1454,0,0,0,0,0,0,0,0),
(@NPC,6,-820.6511,-83.99181,430.1248,0,0,0,0,0,0,0,0),
(@NPC,7,-819.0802,-80.95631,430.1201,0,0,0,0,0,0,0,0),
(@NPC,8,-815.6989,-79.63522,429.9362,0,0,0,0,0,0,0,0),
(@NPC,9,-812.4637,-81.22309,429.9998,2000,0,0,0,0,0,0,0),
(@NPC,10,-805.8566,-83.38759,429.9998,0,0,0,0,0,0,0,0),
(@NPC,11,-805.8384,-83.39809,430.1873,0,0,0,0,0,0,0,0),
(@NPC,12,-804.1865,-87.55893,430.1577,0,0,0,0,0,0,0,0);

 -- Hired Demolitionist Entry: 33627 
SET @NPC := 131894;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-741.3947,`position_y`=-207.9769,`position_z`=431.7578 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-741.3947,-207.9769,431.7578,0,0,0,0,0,0,0,0),
(@NPC,2,-742.5634,-205.1704,431.0431,0,0,0,0,0,0,0,0),
(@NPC,3,-746.6194,-203.6891,430.4383,0,0,0,0,0,0,0,0),
(@NPC,4,-751.6924,-207.3801,430.4216,0,0,0,0,0,0,0,0),
(@NPC,5,-752.3352,-214.3417,431.4221,0,0,0,0,0,0,0,0),
(@NPC,6,-751.818,-216.1215,431.7806,0,0,0,0,0,0,0,0),
(@NPC,7,-752.1444,-209.4591,430.6995,0,0,0,0,0,0,0,0),
(@NPC,8,-752.5813,-208.6543,430.434,0,0,0,0,0,0,0,0),
(@NPC,9,-749.45,-205.2882,430.5325,0,0,0,0,0,0,0,0),
(@NPC,10,-742.3865,-205.8632,431.1866,0,0,0,0,0,0,0,0),
(@NPC,11,-740.8467,-209.625,432.1345,0,0,0,0,0,0,0,0),
(@NPC,12,-740.2542,-212.8133,432.6738,3000,0,0,0,0,0,0,0);

SET @NPC := 131886;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-712.1467,`position_y`=-168.2411,`position_z`=432.9551 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-712.1467,-168.2411,432.9551,0,0,0,0,0,0,0,0),
(@NPC,2,-711.2845,-169.7373,433.5219,0,0,0,0,0,0,0,0),
(@NPC,3,-718.3967,-173.3105,431.6536,0,0,0,0,0,0,0,0),
(@NPC,4,-722.842,-172.8361,430.3402,0,0,0,0,0,0,0,0),
(@NPC,5,-723.5557,-172.3758,430.0638,0,0,0,0,0,0,0,0),
(@NPC,6,-724.2864,-166.9745,429.9667,3000,0,0,0,0,0,0,0),
(@NPC,7,-727.4843,-162.5646,429.9667,0,0,0,0,0,0,0,0),
(@NPC,8,-727.1448,-162.4384,430.2167,0,0,0,0,0,0,0,0),
(@NPC,9,-725.0723,-159.2923,430.2167,0,0,0,0,0,0,0,0),
(@NPC,10,-719.7878,-157.1184,430.2519,0,0,0,0,0,0,0,0),
(@NPC,11,-715.3311,-160.4503,430.7693,0,0,0,0,0,0,0,0),
(@NPC,12,-713.6705,-163.3997,431.3184,0,0,0,0,0,0,0,0);

SET @NPC := 131891;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-715.4345,`position_y`=-120.4184,`position_z`=430.8215 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-715.4345,-120.4184,430.8215,0,0,0,0,0,0,0,0),
(@NPC,2,-715.2732,-119.9876,430.8068,0,0,0,0,0,0,0,0),
(@NPC,3,-713.6184,-118.4633,430.9174,0,0,0,0,0,0,0,0),
(@NPC,4,-714.1099,-115.8266,430.8853,0,0,0,0,0,0,0,0),
(@NPC,5,-718.0544,-115.391,430.4921,0,0,0,0,0,0,0,0),
(@NPC,6,-720.8175,-116.2792,430.0629,0,0,0,0,0,0,0,0),
(@NPC,7,-721.2681,-119.6442,430.1362,0,0,0,0,0,0,0,0),
(@NPC,8,-721.4601,-123.3716,430.1362,0,0,0,0,0,0,0,0),
(@NPC,9,-721.3339,-127.6245,429.9487,0,0,0,0,0,0,0,0),
(@NPC,10,-718.5485,-128.1067,430.2194,0,0,0,0,0,0,0,0);
 
SET @NPC := 131890;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-798.1786,`position_y`=-248.1221,`position_z`=432.4507 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-798.1786,-248.1221,432.4507,0,0,0,0,0,0,0,0),
(@NPC,2,-798.7401,-245.9213,431.4652,0,0,0,0,0,0,0,0),
(@NPC,3,-799.3177,-242.9683,430.5485,0,0,0,0,0,0,0,0),
(@NPC,4,-797.5398,-247.3222,432.0694,0,0,0,0,0,0,0,0),
(@NPC,5,-796.4919,-249.3278,432.7336,0,0,0,0,0,0,0,0),
(@NPC,6,-789.5071,-248.2485,433.1029,0,0,0,0,0,0,0,0),
(@NPC,7,-786.5637,-240.1779,432.2992,0,0,0,0,0,0,0,0),
(@NPC,8,-789.908,-234.2144,431.4653,0,0,0,0,0,0,0,0),
(@NPC,9,-791.3019,-233.3431,430.7617,2000,0,0,0,0,0,0,0),
(@NPC,10,-787.354,-241.1295,432.3823,0,0,0,0,0,0,0,0),
(@NPC,11,-786.8214,-247.0664,433.4664,0,0,0,0,0,0,0,0),
(@NPC,12,-787.0446,-247.7635,433.499,0,0,0,0,0,0,0,0);

SET @NPC := 131892;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-767.8429,`position_y`=-217.267,`position_z`=429.9667 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-767.8429,-217.267,429.9667,0,0,0,0,0,0,0,0),
(@NPC,2,-767.6378,-217.1616,430.0292,0,0,0,0,0,0,0,0),
(@NPC,3,-761.6285,-219.4796,430.4327,0,0,0,0,0,0,0,0),
(@NPC,4,-760.9791,-222.4792,430.8569,2000,0,0,0,0,0,0,0),
(@NPC,5,-761.7565,-231.0529,432.8887,0,0,0,0,0,0,0,0),
(@NPC,6,-761.9493,-231.9112,433.0276,0,0,0,0,0,0,0,0),
(@NPC,7,-770.1174,-232.0044,432.3535,0,0,0,0,0,0,0,0),
(@NPC,8,-772.8343,-227.3204,431.1874,0,0,0,0,0,0,0,0),
(@NPC,9,-772.8062,-223.4772,430.3036,0,0,0,0,0,0,0,0),
(@NPC,10,-772.7734,-222.031,429.9667,0,0,0,0,0,0,0,0);

SET @NPC := 131893;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-731.2537,`position_y`=-177.8654,`position_z`=430.2253 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-731.2537,-177.8654,430.2253,0,0,0,0,0,0,0,0),
(@NPC,2,-727.3505,-179.0715,430.0485,3000,0,0,0,0,0,0,0),
(@NPC,3,-734.2864,-179.9329,429.8522,0,0,0,0,0,0,0,0),
(@NPC,4,-734.1282,-180.0425,429.9078,0,0,0,0,0,0,0,0),
(@NPC,5,-735.3954,-183.6396,429.8522,2000,0,0,0,0,0,0,0),
(@NPC,6,-731.4017,-177.9422,429.9667,0,0,0,0,0,0,0,0);

 -- Weslex Quickwrench Entry: 33629 
SET @NPC := 131895;
UPDATE `creature_spawns` SET `movetype`=2,`position_x`=-744.1992,`position_y`=-41.8189,`position_z`=429.9657 WHERE `id`=@NPC;
DELETE FROM `creature_waypoints` WHERE `spawnid`=@NPC;
INSERT INTO `creature_waypoints` (`spawnid`,`waypointid`,`position_x`,`position_y`,`position_z`,`waittime`,`flags`,`forwardemoteoneshot`,`forwardemoteid`,`backwardemoteoneshot`,`backwardemoteid`,`forwardskinid`,`backwardskinid`) VALUES
(@NPC,1,-744.1992,-41.8189,429.9657,3000,0,0,0,0,0,0,0),
(@NPC,2,-722.2444,-31.58008,429.8806,0,0,0,0,0,0,0,0),
(@NPC,3,-722.0319,-31.24901,430.1359,0,0,0,0,0,0,0,0),
(@NPC,4,-715.6211,-29.15961,429.8806,2000,0,0,0,0,0,0,0),
(@NPC,5,-743.2397,-42.08398,429.9657,0,0,0,0,0,0,0,0);
