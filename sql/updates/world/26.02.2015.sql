SET @Guid := 29727;

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry`=4781;
UPDATE `gameobject_template` SET `AIName`= 'SmartGameObjectAI' WHERE`entry` =20920;
DELETE FROM `smart_scripts` WHERE `entryorguid` =20920 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=4781 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=478100 AND `source_type`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(4781,0,0,1,54,0,100,0,0,0,0,0,1,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - On Just Summoned - Say Line 0'),
(4781,0,1,0,61,0,100,0,0,0,0,0,29,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - On Just Summoned - Follow Summoner'),
(4781,0,2,3,38,0,100,0,1,1,10000,10000,29,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snufflenose Gopher - On Data Set - Stop Following Invoker'),
(4781,0,3,4,61,0,100,0,0,0,0,0,69,0,0,0,0,0,0,20,20920,0,0,0,0,0,0,'Snufflenose Gopher - On Data Set - Move to Blueleaf Tuber'),
(4781,0,4,5,61,0,100,0,0,0,0,0,80,478100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Snufflenose Gopher - On Data Set - Run Script'),
(4781,0,5,6,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - On Data Set - Say Line 1'),
(4781,0,6,0,61,0,100,0,0,0,0,0,8,0,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - On Data Set - Set Passive'),
(4781,0,7,0,8,0,100,0,8283,0,10000,10000,45,1,1,0,0,0,0,20,20920,40,0,0,0,0,0,'Snufflenose Gopher - On Spellhit (Snufflenose Command) - Set Data Blueleaf Tuber'),
(478100,9,0,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - Script - Say Line 2'),
(478100,9,1,0,0,0,100,0,0,0,0,0,104,0,0,0,0,0,0,20,20920,10,0,0,0,0,0,'Snufflenose Gopher - Script - Set Flags on Blueleaf Tuber'),
(478100,9,2,0,0,0,100,0,0,0,0,0,70,300,0,0,0,0,0,20,20920,10,0,0,0,0,0,'Snufflenose Gopher - Script - Respawn Blueleaf Tuber'),
(478100,9,3,0,0,0,100,0,5000,5000,0,0,29,1,0,0,0,0,0,23,0,0,0,0,0,0,0,'Snufflenose Gopher - Script - Follow Summoner'),
(478100,9,4,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Snufflenose Gopher - Script - Set Hostile'),

(20920,1,0,0,11,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blueleaf Tuber - On Spawn - Set Phase 1'),
(20920,1,1,2,38,1,100,0,1,1,0,0,45,1,1,0,0,0,0,19,4781,0,0,0,0,0,0,'Blueleaf Tuber - On Data Set (Phase 1) - Set Data Snufflenose Gopher'),
(20920,1,2,0,61,0,100,0,0,0,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blueleaf Tuber - On Data Set (Phase 1) - Set Phase 2'),
(20920,1,3,0,1,0,100,0,300000,300000,300000,300000,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blueleaf Tuber - OOC (Phase 2) - Set Phase 1');

DELETE FROM `creature_text` WHERE `entry`=4781;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(4781, 0, 0, '%s nervously crawls from the crate.', 16, 0, 100, 0, 0, 0, 1638, 0, 'Snufflenose Gopher'),
(4781, 1, 0, '%s wiggles his whiskers at $n.', 16, 0, 100, 0, 0, 0, 1591, 0, 'Snufflenose Gopher'),
(4781, 2, 0, '%s sniffs at the ground...', 16, 0, 100, 0, 0, 0, 1592, 0, 'Snufflenose Gopher');

DELETE FROM `gameobject` WHERE `id`=20919;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES 
(@Guid+0, 20919, 47, 0, 0, 1, 1, 2082.74, 1671.82, 61.2396, 3.66079, 0, 0, 0.966493, -0.256693, -43200, 100, 1, 0),
(@Guid+1, 20919, 47, 0, 0, 1, 1, 2159.43, 1687.49, 57.5433, 3.66079, 0, 0, 0.966493, -0.256693, -43200, 100, 1, 0),
(@Guid+2, 20919, 47, 0, 0, 1, 1, 2080.89, 1703.36, 56.6447, 0.553757, 0, 0, 0.273354, 0.961913, -43200, 100, 1, 0),
(@Guid+3, 20919, 47, 0, 0, 1, 1, 2055.28, 1767.7, 58.4559, 2.98378, 0, 0, 0.996889, 0.0788245, -43200, 100, 1, 0),
(@Guid+4, 20919, 47, 0, 0, 1, 1, 2196.64, 1827.96, 61.4706, 2.11277, 0, 0, 0.870583, 0.492022, -43200, 100, 1, 0),
(@Guid+5, 20919, 47, 0, 0, 1, 1, 2030.32, 1867.61, 56.2866, 5.6777, 0, 0, 0.298139, -0.954522, -43200, 100, 1, 0),
(@Guid+6, 20919, 47, 0, 0, 1, 1, 2091.33, 1861.73, 51.0341, 1.25355, 0, 0, 0.586536, 0.809923, -43200, 100, 1, 0),
(@Guid+7, 20919, 47, 0, 0, 1, 1, 2200.15, 1897.64, 71.3191, 2.6492, 0, 0, 0.969846, 0.243717, -43200, 100, 1, 0),
(@Guid+8, 20919, 47, 0, 0, 1, 1, 2075.75, 1742.04, 76.7184, 1.33994, 0, 0, 0.620962, 0.78384, -43200, 100, 1, 0),
(@Guid+9, 20919, 47, 0, 0, 1, 1, 2126, 1661.15, 82.4824, 0.0220437, 0, 0, 0.0110216, 0.999939, -43200, 100, 1, 0),
(@Guid+10, 20919, 47, 0, 0, 1, 1, 2207.92, 1596.91, 80.7375, 3.60582, 0, 0, 0.973182, -0.230035, -43200, 100, 1, 0),
(@Guid+11, 20919, 47, 0, 0, 1, 1, 2156.98, 1542.26, 72.849, 2.43086, 0, 0, 0.937519, 0.347934, -43200, 100, 1, 0),
(@Guid+12, 20919, 47, 0, 0, 1, 1, 2179.95, 1514.06, 69.0709, 0.778385, 0, 0, 0.379441, 0.925216, -43200, 100, 1, 0),
(@Guid+13, 20919, 47, 0, 0, 1, 1, 2000.85, 1533.93, 80.3971, 4.919, 0, 0, 0.630419, -0.776255, -43200, 100, 1, 0),
(@Guid+14, 20919, 47, 0, 0, 1, 1, 1991.49, 1608.53, 81.1601, 1.1004, 0, 0, 0.522858, 0.85242, -43200, 100, 1, 0);
-- Fix up formation from last commit
-- https://github.com/TrinityCore/TrinityCore/commit/bbcf8f58e69d361c3df1c37fa79d1efa3e52bc54
DELETE FROM `creature_formations` WHERE `leaderGUID`=57594;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57594, 57594, 0, 0, 2),
(57594, 57595, 5, 0, 2),
(57594, 57596, 10, 0, 2),
(57594, 57597, 15, 0, 2);

DELETE FROM `creature_formations` WHERE `leaderGUID`=57965;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57965, 57965, 0, 0, 2),
(57965, 57966, 5, 0, 2),
(57965, 57967, 10, 0, 2),
(57965, 57968, 15, 0, 2);

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58706;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-372.7111,`position_y`=2839.348,`position_z`=3.085857 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-372.7111,2839.348,3.085857,0,0,0,0,100,0),
(@PATH,2,-369.1973,2833.291,3.833567,0,0,0,0,100,0),
(@PATH,3,-366.1855,2828.1,4.404455,0,0,0,0,100,0),
(@PATH,4,-364.1777,2824.639,5.029455,0,0,0,0,100,0),
(@PATH,5,-363.1738,2822.908,5.654455,0,0,0,0,100,0),
(@PATH,6,-361.668,2820.313,6.279455,0,0,0,0,100,0),
(@PATH,7,-360.6641,2818.582,7.029455,0,0,0,0,100,0),
(@PATH,8,-357.6523,2813.391,7.904455,0,0,0,0,100,0),
(@PATH,9,-354.6406,2808.199,8.654455,0,0,0,0,100,0),
(@PATH,10,-352.1309,2803.873,9.279455,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C0000212A8F .go -372.7111 2839.348 3.085857

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58710;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-173.5004,`position_y`=2340.303,`position_z`=60.07005 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-173.5004,2340.303,60.07005,0,0,0,0,100,0),
(@PATH,2,-167.5776,2345.781,59.66853,0,0,0,0,100,0),
(@PATH,3,-168.3658,2358.138,57.73066,0,0,0,0,100,0),
(@PATH,4,-170.6648,2371.729,55.37167,0,0,0,0,100,0),
(@PATH,5,-176.5131,2386.787,51.77451,0,0,0,0,100,0),
(@PATH,6,-179.7427,2391.649,50.90343,0,0,0,0,100,0),
(@PATH,7,-179.451,2411.232,48.48401,0,0,0,0,100,0),
(@PATH,8,-181.9889,2397.549,50.08649,0,0,0,0,100,0),
(@PATH,9,-179.687,2391.666,50.90021,0,0,0,0,100,0),
(@PATH,10,-172.3989,2376.937,54.03761,0,0,0,0,100,0),
(@PATH,11,-168.9601,2362.579,56.66465,0,0,0,0,100,0),
(@PATH,12,-167.4705,2349.302,59.07915,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C000021381E .go -173.5004 2340.303 60.07005

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58709;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-280.5386,`position_y`=2385.487,`position_z`=49.5167 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-280.5386,2385.487,49.5167,0,0,0,0,100,0),
(@PATH,2,-274.4911,2399.897,49.77866,0,0,0,0,100,0),
(@PATH,3,-282.391,2415.943,47.12805,0,0,0,0,100,0),
(@PATH,4,-292.0588,2418.96,45.69984,0,0,0,0,100,0),
(@PATH,5,-296.9233,2425.813,44.45638,0,0,0,0,100,0),
(@PATH,6,-288.1144,2443.262,43.60903,0,0,0,0,100,0),
(@PATH,7,-293.5082,2451.608,42.39658,0,0,0,0,100,0),
(@PATH,8,-297.1542,2466.072,41.27671,0,0,0,0,100,0),
(@PATH,9,-296.9443,2470.941,40.92609,0,0,0,0,100,0),
(@PATH,10,-284.6176,2477.495,40.50471,0,0,0,0,100,0),
(@PATH,11,-290.6595,2483.031,40.95429,0,0,0,0,100,0),
(@PATH,12,-284.6285,2477.351,40.70044,0,0,0,0,100,0),
(@PATH,13,-297.5089,2457.768,41.62237,0,0,0,0,100,0),
(@PATH,14,-289.9194,2446.963,43.04158,0,0,0,0,100,0),
(@PATH,15,-287.7819,2443.668,43.38817,0,0,0,0,100,0),
(@PATH,16,-296.9543,2424.329,44.54842,0,0,0,0,100,0),
(@PATH,17,-284.9567,2418.073,46.32718,0,0,0,0,100,0),
(@PATH,18,-276.5181,2404.314,49.4864,0,0,0,0,100,0),
(@PATH,19,-280.4977,2385.4,49.48282,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C0000213910 .go -280.5386 2385.487 49.5167

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58708;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-314.1599,`position_y`=2611.343,`position_z`=41.12054 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-314.1599,2611.343,41.12054,0,0,0,0,100,0),
(@PATH,2,-302.6028,2572.273,41.00031,0,0,0,0,100,0),
(@PATH,3,-297.84,2550.173,41.36596,0,0,0,0,100,0),
(@PATH,4,-303.8246,2525.236,42.58739,0,0,0,0,100,0),
(@PATH,5,-297.9362,2545.895,41.70477,0,0,0,0,100,0),
(@PATH,6,-300.882,2566.604,41.32217,0,0,0,0,100,0),
(@PATH,7,-306.6208,2578.347,41.52526,0,0,0,0,100,0),
(@PATH,8,-312.7142,2588.381,41.36144,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C00002139B5 .go -314.1599 2611.343 41.12054

-- Add missing Bonechewer Raider
DELETE FROM `creature` WHERE `guid`=29980;
INSERT INTO `creature` (`guid`, `id`, `map`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `MovementType`) VALUES 
(29980, 16925, 530, 1, -354.3998, 2663.006, 41.72623, 0, 300, 3989, 2);

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 29980;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-354.3998,`position_y`=2663.006,`position_z`=41.72623 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-354.3998,2663.006,41.72623,0,0,0,0,100,0),
(@PATH,2,-346.7007,2672.114,38.15508,0,0,0,0,100,0),
(@PATH,3,-332.8381,2681.229,34.02082,0,0,0,0,100,0),
(@PATH,4,-319.6889,2687.015,31.10067,0,0,0,0,100,0),
(@PATH,5,-318.0042,2694.25,29.72155,0,0,0,0,100,0),
(@PATH,6,-324.0378,2716.413,25.33266,0,0,0,0,100,0),
(@PATH,7,-319.7849,2729.284,23.22117,0,0,0,0,100,0),
(@PATH,8,-322.0183,2746.254,18.96142,0,0,0,0,100,0),
(@PATH,9,-322.4724,2747.062,18.86184,0,0,0,0,100,0),
(@PATH,10,-322.3822,2746.857,18.3417,0,0,0,0,100,0),
(@PATH,11,-319.7568,2733.282,22.47406,0,0,0,0,100,0),
(@PATH,12,-323.8112,2718.555,24.77036,0,0,0,0,100,0),
(@PATH,13,-317.9898,2696.302,28.92368,0,0,0,0,100,0),
(@PATH,14,-318.5087,2690.603,30.36932,0,0,0,0,100,0),
(@PATH,15,-329.6577,2682.807,32.7053,0,0,0,0,100,0),
(@PATH,16,-344.2849,2674.339,36.96185,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C0000213896 .go -354.3998 2663.006 41.72623

-- Only one Tagar Spinebreaker should be spawned
DELETE FROM `creature` WHERE `guid`=85990;

-- Pathing for Tagar Spinebreaker Entry: 19443 'TDB FORMAT' 
SET @NPC := 85987;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-179.7917,`position_y`=2839.993,`position_z`=23.64687 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-179.7917,2839.993,23.64687,0,0,0,0,100,0),
(@PATH,2,-168.0662,2837.727,26.36559,0,0,0,0,100,0),
(@PATH,3,-149.3422,2826.91,33.67762,0,0,0,0,100,0),
(@PATH,4,-149.3403,2813.561,35.25396,0,0,0,0,100,0),
(@PATH,5,-160.4427,2807.621,32.6923,0,0,0,0,100,0),
(@PATH,6,-172.6706,2803.528,29.62396,0,0,0,0,100,0),
(@PATH,7,-185.5681,2808.792,25.53679,0,0,0,0,100,0),
(@PATH,8,-186.3388,2797.655,26.33011,0,0,0,0,100,0),
(@PATH,9,-153.882,2788.701,36.85746,0,0,0,0,100,0),
(@PATH,10,-134.5498,2778.104,41.05849,0,0,0,0,100,0),
(@PATH,11,-120.4556,2753.937,49.37396,0,0,0,0,100,0),
(@PATH,12,-110.122,2737.952,52.16914,0,0,0,0,100,0),
(@PATH,13,-108.798,2709.016,51.00445,0,0,0,0,100,0),
(@PATH,14,-125.7525,2695.987,46.92542,0,0,0,0,100,0),
(@PATH,15,-165.7749,2686.863,43.39313,0,0,0,0,100,0),
(@PATH,16,-166.924,2686.502,43.27299,0,0,0,0,100,0),
(@PATH,17,-170.6192,2661.56,42.24799,0,0,0,0,100,0),
(@PATH,18,-166.9141,2633.801,41.55241,0,0,0,0,100,0),
(@PATH,19,-165.2749,2618.521,40.12231,0,0,0,0,100,0),
(@PATH,20,-164.5241,2612.235,40.08208,0,0,0,0,100,0),
(@PATH,21,-162.7764,2603.097,40.06981,0,0,0,0,100,0),
(@PATH,22,-165.0483,2590.722,39.90811,0,0,0,0,100,0),
(@PATH,23,-144.7979,2569.513,41.10892,0,0,0,0,100,0),
(@PATH,24,-146.1405,2544.73,40.98074,0,0,0,0,100,0),
(@PATH,25,-156.8518,2539.49,42.95174,0,0,0,0,100,0),
(@PATH,26,-170.4912,2527.817,41.62189,0,0,0,0,100,0),
(@PATH,27,-177.3363,2516.895,41.11181,0,0,0,0,100,0),
(@PATH,28,-176.3846,2510.593,41.94983,0,0,0,0,100,0),
(@PATH,29,-168.8438,2501.025,43.79488,0,0,0,0,100,0),
(@PATH,30,-145.8467,2499.76,45.61186,0,0,0,0,100,0),
(@PATH,31,-131.4405,2495.996,46.55548,0,0,0,0,100,0),
(@PATH,32,-124.8685,2492.812,46.93701,0,0,0,0,100,0),
(@PATH,33,-118.3926,2470.393,46.95731,0,0,0,0,100,0),
(@PATH,34,-134.5914,2450.625,46.18983,0,0,0,0,100,0),
(@PATH,35,-139.636,2439.596,48.65514,0,0,0,0,100,0),
(@PATH,36,-153.0726,2420.765,44.33873,0,0,0,0,100,0),
(@PATH,37,-164.3153,2415.917,48.36614,0,0,0,0,100,0),
(@PATH,38,-176.0278,2408.138,48.95763,0,0,0,0,100,0),
(@PATH,39,-181.3092,2397.231,50.16575,0,0,0,0,100,0),
(@PATH,40,-174.2651,2386.537,51.88837,0,0,0,0,100,0),
(@PATH,41,-171.3092,2382.064,53.20797,0,0,0,0,100,0),
(@PATH,42,-168.7256,2366.751,56.15277,0,0,0,0,100,0),
(@PATH,43,-168.0793,2352.929,58.49963,0,0,0,0,100,0),
(@PATH,44,-168.3409,2341.554,60.14597,0,0,0,0,100,0),
(@PATH,45,-175.721,2327.79,62.15151,0,0,0,0,100,0),
(@PATH,46,-193.0925,2317.189,56.10988,0,0,0,0,100,0),
(@PATH,47,-211.1901,2312.889,49.67965,0,0,0,0,100,0),
(@PATH,48,-243.0014,2311.802,51.36759,0,0,0,0,100,0),
(@PATH,49,-257.705,2324.297,56.98617,0,0,0,0,100,0),
(@PATH,50,-267.8463,2334.503,54.92202,0,0,0,0,100,0),
(@PATH,51,-284.0244,2347.267,51.85397,0,0,0,0,100,0),
(@PATH,52,-285.5917,2348.854,51.30281,0,0,0,0,100,0),
(@PATH,53,-277.6388,2384.371,49.04704,0,0,0,0,100,0),
(@PATH,54,-277.4207,2389,49.55646,0,0,0,0,100,0),
(@PATH,55,-282.4726,2415.647,47.11025,0,0,0,0,100,0),
(@PATH,56,-290.6383,2417.861,45.76169,0,0,0,0,100,0),
(@PATH,57,-296.9912,2425.083,44.68782,0,0,0,0,100,0),
(@PATH,58,-297.4091,2429.13,44.28957,0,0,0,0,100,0),
(@PATH,59,-292.8183,2446.393,42.99865,0,0,0,0,100,0),
(@PATH,60,-297.4739,2458.016,41.8229,0,0,0,0,100,0),
(@PATH,61,-299.0847,2461.294,41.30234,0,0,0,0,100,0),
(@PATH,62,-291.5309,2472.148,40.82636,0,0,0,0,100,0),
(@PATH,63,-315.7325,2479.059,38.88892,0,0,0,0,100,0),
(@PATH,64,-333.1553,2479.061,30.43475,0,0,0,0,100,0),
(@PATH,65,-362.027,2481.302,26.76814,0,0,0,0,100,0),
(@PATH,66,-381.832,2489.02,35.44767,0,0,0,0,100,0),
(@PATH,67,-383.683,2499.09,43.07095,0,0,0,0,100,0),
(@PATH,68,-373.0249,2518.307,44.52934,0,0,0,0,100,0),
(@PATH,69,-356.4537,2524.72,43.92796,0,0,0,0,100,0),
(@PATH,70,-341.8646,2517.716,42.69872,0,0,0,0,100,0),
(@PATH,71,-325.4874,2514.352,39.74596,0,0,0,0,100,0),
(@PATH,72,-317.6911,2517.743,42.27646,0,0,0,0,100,0),
(@PATH,73,-307.9288,2522.574,42.47154,0,0,0,0,100,0),
(@PATH,74,-303.3547,2545.351,42.88755,0,0,0,0,100,0),
(@PATH,75,-313.6268,2562.334,44.01721,0,0,0,0,100,0),
(@PATH,76,-319.8146,2564.861,44.6563,0,0,0,0,100,0),
(@PATH,77,-315.3898,2592.442,41.60535,0,0,0,0,100,0),
(@PATH,78,-315.032,2593.062,41.37146,0,0,0,0,100,0),
(@PATH,79,-333.1518,2616.684,42.40425,0,0,0,0,100,0),
(@PATH,80,-352.777,2633.742,40.45049,0,0,0,0,100,0),
(@PATH,81,-360.1994,2656.165,43.72129,0,0,0,0,100,0),
(@PATH,82,-344.7037,2680.905,36.1579,0,0,0,0,100,0),
(@PATH,83,-334.6349,2700.036,30.34241,0,0,0,0,100,0),
(@PATH,84,-324.9058,2712.125,26.43651,0,0,0,0,100,0),
(@PATH,85,-322.9779,2724.364,23.96236,0,0,0,0,100,0),
(@PATH,86,-326.3518,2734.545,22.44383,0,0,0,0,100,0),
(@PATH,87,-342.5912,2742.288,22.4451,0,0,0,0,100,0),
(@PATH,88,-368.7488,2739.919,27.63747,0,0,0,0,100,0),
(@PATH,89,-392.2097,2734.005,34.55191,0,0,0,0,100,0),
(@PATH,90,-414.4307,2741.14,39.55831,0,0,0,0,100,0),
(@PATH,91,-436.1942,2742.233,45.3562,0,0,0,0,100,0),
(@PATH,92,-462.9823,2756.808,49.85812,0,0,0,0,100,0),
(@PATH,93,-480.5942,2778.588,50.47923,0,0,0,0,100,0),
(@PATH,94,-476.0007,2799.573,45.95654,0,0,0,0,100,0),
(@PATH,95,-458.507,2835.351,35.33127,0,0,0,0,100,0),
(@PATH,96,-431.757,2863.309,23.74757,0,0,0,0,100,0),
(@PATH,97,-413.4223,2892.728,17.20714,0,0,0,0,100,0),
(@PATH,98,-419.2291,2905.467,19.51181,0,0,0,0,100,0),
(@PATH,99,-443.1462,2933.887,17.85199,0,0,0,0,100,0),
(@PATH,100,-438.8401,2966.167,8.723536,0,0,0,0,100,0),
(@PATH,101,-444.0433,2936.331,17.40722,0,0,0,0,100,0),
(@PATH,102,-432.5814,2918.56,19.31524,0,0,0,0,100,0),
(@PATH,103,-411.3571,2898.61,17.23361,0,0,0,0,100,0),
(@PATH,104,-429.0982,2867.209,22.665,0,0,0,0,100,0),
(@PATH,105,-457.4272,2836.473,34.75057,0,0,0,0,100,0),
(@PATH,106,-474.1913,2804.114,44.81591,0,0,0,0,100,0),
(@PATH,107,-481.0764,2783.36,50.09081,0,0,0,0,100,0),
(@PATH,108,-465.5521,2759.48,50.03743,0,0,0,0,100,0),
(@PATH,109,-440.5409,2744.546,46.12499,0,0,0,0,100,0),
(@PATH,110,-420.0836,2742.421,41.1034,0,0,0,0,100,0),
(@PATH,111,-397.9436,2734.918,35.90202,0,0,0,0,100,0),
(@PATH,112,-372.9858,2738.609,28.64789,0,0,0,0,100,0),
(@PATH,113,-348.4457,2742.212,23.42384,0,0,0,0,100,0),
(@PATH,114,-333.7679,2740.035,21.81408,0,0,0,0,100,0),
(@PATH,115,-324.9037,2731.125,22.83686,0,0,0,0,100,0),
(@PATH,116,-323.9969,2714.816,25.20854,0,0,0,0,100,0),
(@PATH,117,-332.7059,2702.867,29.4334,0,0,0,0,100,0),
(@PATH,118,-343.4227,2683.021,35.1899,0,0,0,0,100,0),
(@PATH,119,-359.6221,2658.229,43.55175,0,0,0,0,100,0),
(@PATH,120,-353.887,2635.825,39.48611,0,0,0,0,100,0),
(@PATH,121,-344.0572,2624.184,43.10011,0,0,0,0,100,0),
(@PATH,122,-325.4768,2613.256,41.99747,0,0,0,0,100,0),
(@PATH,123,-315.0096,2608.486,41.19632,0,0,0,0,100,0),
(@PATH,124,-325.0719,2578.15,44.60706,0,0,0,0,100,0),
(@PATH,125,-325.6835,2576.813,44.85286,0,0,0,0,100,0),
(@PATH,126,-313.8424,2562.751,43.86629,0,0,0,0,100,0),
(@PATH,127,-306.6296,2559.59,43.31482,0,0,0,0,100,0),
(@PATH,128,-303.079,2544.062,42.30245,0,0,0,0,100,0),
(@PATH,129,-324.1274,2514.437,40.29177,0,0,0,0,100,0),
(@PATH,130,-333.2019,2515.876,41.902,0,0,0,0,100,0),
(@PATH,131,-354.4488,2524.19,43.33042,0,0,0,0,100,0),
(@PATH,132,-359.7796,2523.489,44.53107,0,0,0,0,100,0),
(@PATH,133,-378.1317,2510.007,43.7447,0,0,0,0,100,0),
(@PATH,134,-382.583,2491,37.3352,0,0,0,0,100,0),
(@PATH,135,-368.7838,2483.057,28.09278,0,0,0,0,100,0),
(@PATH,136,-337.7688,2479.346,28.95182,0,0,0,0,100,0),
(@PATH,137,-318.8761,2478.915,37.70119,0,0,0,0,100,0),
(@PATH,138,-301.9458,2480.981,40.5145,0,0,0,0,100,0),
(@PATH,139,-300.0336,2481.129,40.53691,0,0,0,0,100,0),
(@PATH,140,-291.6542,2471.877,40.91128,0,0,0,0,100,0),
(@PATH,141,-295.2729,2454.313,42.07068,0,0,0,0,100,0),
(@PATH,142,-291.9165,2442.606,43.58534,0,0,0,0,100,0),
(@PATH,143,-290.83,2436.461,44.0534,0,0,0,0,100,0),
(@PATH,144,-296.628,2422.13,44.75555,0,0,0,0,100,0),
(@PATH,145,-284.9365,2416.829,46.52535,0,0,0,0,100,0),
(@PATH,146,-277.901,2404.396,49.46965,0,0,0,0,100,0),
(@PATH,147,-276.7875,2401.742,49.57491,0,0,0,0,100,0),
(@PATH,148,-275.867,2368.15,50.02176,0,0,0,0,100,0),
(@PATH,149,-280.12,2358.433,51.42045,0,0,0,0,100,0),
(@PATH,150,-271.6628,2337.664,53.90419,0,0,0,0,100,0),
(@PATH,151,-260.8519,2327.604,56.16253,0,0,0,0,100,0),
(@PATH,152,-246.7255,2313.879,53.0292,0,0,0,0,100,0),
(@PATH,153,-233.4331,2311.107,50.28912,0,0,0,0,100,0),
(@PATH,154,-194.8462,2316.223,54.13938,0,0,0,0,100,0),
(@PATH,155,-184.3219,2321.592,61.90179,0,0,0,0,100,0),
(@PATH,156,-169.6792,2336.901,61.27917,0,0,0,0,100,0),
(@PATH,157,-167.8382,2348.53,59.15134,0,0,0,0,100,0),
(@PATH,158,-168.2972,2362.321,57.01959,0,0,0,0,100,0),
(@PATH,159,-169.3826,2376.633,54.4596,0,0,0,0,100,0),
(@PATH,160,-171.8145,2382.753,52.97548,0,0,0,0,100,0),
(@PATH,161,-180.183,2392.34,51.01487,0,0,0,0,100,0),
(@PATH,162,-181.2741,2398.439,49.99238,0,0,0,0,100,0),
(@PATH,163,-175.461,2408.534,48.88574,0,0,0,0,100,0),
(@PATH,164,-157.5141,2417.718,45.03862,0,0,0,0,100,0),
(@PATH,165,-146.3332,2426.921,48.30313,0,0,0,0,100,0),
(@PATH,166,-137.9598,2445.376,46.12595,0,0,0,0,100,0),
(@PATH,167,-118.3926,2470.393,46.95731,0,0,0,0,100,0),
(@PATH,168,-124.8685,2492.812,46.93701,0,0,0,0,100,0),
(@PATH,169,-131.4405,2495.996,46.55548,0,0,0,0,100,0),
(@PATH,170,-145.8467,2499.76,45.61186,0,0,0,0,100,0),
(@PATH,171,-168.8438,2501.025,43.79488,0,0,0,0,100,0),
(@PATH,172,-176.3846,2510.593,41.94983,0,0,0,0,100,0),
(@PATH,173,-177.3363,2516.895,41.11181,0,0,0,0,100,0),
(@PATH,174,-170.4912,2527.817,41.62189,0,0,0,0,100,0),
(@PATH,175,-156.8518,2539.49,42.95174,0,0,0,0,100,0),
(@PATH,176,-146.1405,2544.73,40.98074,0,0,0,0,100,0),
(@PATH,177,-144.7979,2569.513,41.10892,0,0,0,0,100,0),
(@PATH,178,-165.0483,2590.722,39.90811,0,0,0,0,100,0),
(@PATH,179,-162.7764,2603.097,40.06981,0,0,0,0,100,0),
(@PATH,180,-164.5241,2612.235,40.08208,0,0,0,0,100,0),
(@PATH,181,-165.2749,2618.521,40.12231,0,0,0,0,100,0),
(@PATH,182,-166.9141,2633.801,41.55241,0,0,0,0,100,0),
(@PATH,183,-170.6192,2661.56,42.24799,0,0,0,0,100,0),
(@PATH,184,-166.924,2686.502,43.27299,0,0,0,0,100,0),
(@PATH,185,-165.7749,2686.863,43.39313,0,0,0,0,100,0),
(@PATH,186,-125.7525,2695.987,46.92542,0,0,0,0,100,0),
(@PATH,187,-108.798,2709.016,51.00445,0,0,0,0,100,0),
(@PATH,188,-110.122,2737.952,52.16914,0,0,0,0,100,0),
(@PATH,189,-120.4556,2753.937,49.37396,0,0,0,0,100,0),
(@PATH,190,-134.5498,2778.104,41.05849,0,0,0,0,100,0),
(@PATH,191,-153.882,2788.701,36.85746,0,0,0,0,100,0),
(@PATH,192,-186.3388,2797.655,26.33011,0,0,0,0,100,0),
(@PATH,193,-185.5681,2808.792,25.53679,0,0,0,0,100,0),
(@PATH,194,-172.6706,2803.528,29.62396,0,0,0,0,100,0),
(@PATH,195,-160.4427,2807.621,32.6923,0,0,0,0,100,0),
(@PATH,196,-149.3403,2813.561,35.25396,0,0,0,0,100,0),
(@PATH,197,-149.3422,2826.91,33.67762,0,0,0,0,100,0),
(@PATH,198,-168.0662,2837.727,26.36559,0,0,0,0,100,0),
(@PATH,199,-179.7917,2839.993,23.64687,0,0,0,0,100,0);
-- 0x1C09E4424012FCC000002C00005FBF34 .go -179.7917 2839.993 23.64687

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58704;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-404.7873,`position_y`=2895.921,`position_z`=13.85265 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-404.7873,2895.921,13.85265,0,0,0,0,100,0),
(@PATH,2,-404.2322,2900.299,14.15039,0,0,0,0,100,0),
(@PATH,3,-428.3772,2914.106,19.38362,0,0,0,0,100,0),
(@PATH,4,-439.7838,2928.416,18.55647,0,0,0,0,100,0),
(@PATH,5,-445.6255,2946.441,15.33809,0,0,0,0,100,0),
(@PATH,6,-439.2244,2964.096,9.26938,0,0,0,0,100,0),
(@PATH,7,-454.467,2971.035,9.009753,0,0,0,0,100,0),
(@PATH,8,-467.3622,2966.943,12.50773,0,0,0,0,100,0),
(@PATH,9,-482.1766,2976.099,11.32469,0,0,0,0,100,0),
(@PATH,10,-471.1085,2966.682,13.06236,0,0,0,0,100,0),
(@PATH,11,-456.4288,2970.18,9.417983,0,0,0,0,100,0),
(@PATH,12,-450.4304,2969.706,9.393501,0,0,0,0,100,0),
(@PATH,13,-446.038,2951.119,14.24401,0,0,0,0,100,0),
(@PATH,14,-442.8287,2934.824,17.44841,0,0,0,0,100,0),
(@PATH,15,-435.4904,2921.99,19.82334,0,0,0,0,100,0),
(@PATH,16,-404.6763,2913.004,15.59055,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C00005FACA1 .go -404.7873 2895.921 13.85265

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58705;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-394.2339,`position_y`=2891.354,`position_z`=8.341909 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-394.2339,2891.354,8.341909,0,0,0,0,100,0),
(@PATH,2,-404.354,2907.934,14.82262,0,0,0,0,100,0),
(@PATH,3,-420.1548,2911.418,19.02849,0,0,0,0,100,0),
(@PATH,4,-434.6948,2920.658,19.59609,0,0,0,0,100,0),
(@PATH,5,-443.507,2937.645,16.52073,0,0,0,0,100,0),
(@PATH,6,-438.1014,2952.321,11.34356,0,0,0,0,100,0),
(@PATH,7,-445.5783,2967.97,9.331216,0,0,0,0,100,0),
(@PATH,8,-438.8247,2958.072,10.36737,0,0,0,0,100,0),
(@PATH,9,-442.9203,2943.862,15.03016,0,0,0,0,100,0),
(@PATH,10,-440.1529,2925.814,19.82526,0,0,0,0,100,0),
(@PATH,11,-430.9389,2917.94,18.84661,0,0,0,0,100,0),
(@PATH,12,-407.8214,2910.193,16.49719,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C00005FACD2 .go -394.2339 2891.354 8.341909

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58703;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-173.0258,`position_y`=2784.179,`position_z`=31.73058 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-184.2477,2841.474,22.17058,0,0,0,0,100,0),
(@PATH,2,-186.5912,2837.849,21.70995,0,0,0,0,100,0),
(@PATH,3,-186.0354,2821.816,23.10514,0,0,0,0,100,0),
(@PATH,4,-190.4859,2804.101,24.46144,0,0,0,0,100,0),
(@PATH,5,-190.1222,2800.265,25.05125,0,0,0,0,100,0),
(@PATH,6,-185.8087,2784.323,28.49104,0,0,0,0,100,0),
(@PATH,7,-173.0258,2784.179,31.73058,0,0,0,0,100,0),
(@PATH,8,-153.8195,2788.142,37.07464,0,0,0,0,100,0),
(@PATH,9,-146.762,2781.243,39.44977,0,0,0,0,100,0),
(@PATH,10,-150.9473,2773.002,39.19555,0,0,0,0,100,0),
(@PATH,11,-165.231,2763.583,36.20363,0,0,0,0,100,0),
(@PATH,12,-181.1507,2755.388,30.1041,0,0,0,0,100,0),
(@PATH,13,-168.6309,2761.67,34.94637,0,0,0,0,100,0),
(@PATH,14,-157.0087,2768.504,38.33034,0,0,0,0,100,0),
(@PATH,15,-147.9143,2776.101,39.64468,0,0,0,0,100,0),
(@PATH,16,-148.772,2785.843,38.60817,0,0,0,0,100,0),
(@PATH,17,-167.8991,2784.874,33.46256,0,0,0,0,100,0),
(@PATH,18,-185.8087,2784.323,28.49104,0,0,0,0,100,0),
(@PATH,19,-190.1222,2800.265,25.05125,0,0,0,0,100,0),
(@PATH,20,-190.4859,2804.101,24.46144,0,0,0,0,100,0),
(@PATH,21,-186.0354,2821.816,23.10514,0,0,0,0,100,0),
(@PATH,22,-186.5912,2837.849,21.70995,0,0,0,0,100,0),
(@PATH,23,-184.2477,2841.474,22.17058,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C00005FBE47 .go -173.0258 2784.179 31.73058

-- Pathing for Bonechewer Raider Entry: 16925 'TDB FORMAT' 
SET @NPC := 58707;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-180.3116,`position_y`=2686.223,`position_z`=40.81258 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,17408,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-180.3116,2686.223,40.81258,0,0,0,0,100,0),
(@PATH,2,-175.7397,2679.259,42.18403,0,0,0,0,100,0),
(@PATH,3,-171.9714,2660.608,42.08878,0,0,0,0,100,0),
(@PATH,4,-170.7084,2658.794,42.01125,0,0,0,0,100,0),
(@PATH,5,-171.3484,2640.479,41.27383,0,0,0,0,100,0),
(@PATH,6,-171.948,2638.051,41.02221,0,0,0,0,100,0),
(@PATH,7,-165.7785,2619.644,40.29411,0,0,0,0,100,0),
(@PATH,8,-166.9228,2612.098,39.69428,0,0,0,0,100,0),
(@PATH,9,-169.5662,2594.979,39.33304,0,0,0,0,100,0),
(@PATH,10,-170.6965,2594.06,39.20753,0,0,0,0,100,0),
(@PATH,11,-170.8916,2594.003,38.98936,0,0,0,0,100,0),
(@PATH,12,-166.2133,2597.965,39.64554,0,0,0,0,100,0),
(@PATH,13,-163.8443,2600.274,39.8479,0,0,0,0,100,0),
(@PATH,14,-165.4025,2621.016,40.56765,0,0,0,0,100,0),
(@PATH,15,-164.8262,2624.799,41.17817,0,0,0,0,100,0),
(@PATH,16,-170.1738,2643.713,41.53741,0,0,0,0,100,0),
(@PATH,17,-169.1673,2647.221,41.99223,0,0,0,0,100,0),
(@PATH,18,-171.7151,2670.958,42.49662,0,0,0,0,100,0);
-- 0x1C09E4424010874000002C00005FBFA9 .go -180.3116 2686.223 40.81258
-- Darnassian Scout SAI
SET @ENTRY := 15968;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,75,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darnassian Scout - On Reset - Cast 'Stealth'"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,28,30831,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darnassian Scout - On Aggro - Remove Aura 'Stealth'");
-- Nexus-King Salhadaar SAI
SET @ENTRY := 20454;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,3,100,1,1000,1000,1000,1000,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - Out of Combat - Remove Flag Not Selectable (Phase 4) (No Repeat)"),
(@ENTRY,0,1,2,61,0,100,1,1000,1000,1000,1000,2,1796,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - Out of Combat - Set Faction 1796 (Phase 4) (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,1,1,1,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - Out of Combat - Say Line 0 (Phase 4)"),
(@ENTRY,0,3,0,0,0,100,0,5000,10000,15000,25000,11,36533,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - In Combat - Cast 'Gravity Flux'"),
(@ENTRY,0,4,5,2,0,100,1,5,25,0,0,11,36848,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - Between 5-25% Health - Cast 'Mirror Image' (No Repeat)"),
(@ENTRY,0,5,0,61,0,100,0,5,25,0,0,11,36847,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - Between 5-25% Health - Cast 'Mirror Image' (No Repeat)"),
(@ENTRY,0,6,0,0,0,100,0,15000,25000,10000,30000,11,36527,0,0,0,0,0,5,0,0,0,0,0,0,0,"Nexus-King Salhadaar - In Combat - Cast 'Stasis'"),
(@ENTRY,0,7,8,7,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - On Evade - Set Faction 35"),
(@ENTRY,0,8,10,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,21425,20,0,0,0,0,0,"Nexus-King Salhadaar - On Evade - Set Data 1 1"),
(@ENTRY,0,9,0,38,0,100,0,1,1,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - On Data Set 1 1 - Increment Phase"),
(@ENTRY,0,10,0,61,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - On Evade - Set Event Phase 0");

-- Nexus-King Salhadaar SAI
SET @ENTRY := 21425;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,20,0,0,0,0,0,0,"Nexus-King Salhadaar - On Just Summoned - Start Attacking"),
(@ENTRY,0,1,0,38,0,100,0,1,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nexus-King Salhadaar - On Data Set 1 1 - Despawn Instant");

-- remove randmmovement
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE  `guid` IN (73277, 73278, 73279);

-- Salaadin's Energy Ball SAI
SET @ENTRY := 20769;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,1,0,0,0,0,11,32566,0,0,0,0,0,1,0,0,0,0,0,0,0,"Salaadin's Energy Ball - On Respawn - Cast 'Purple Banish State' (No Repeat)"),
(@ENTRY,0,1,0,1,0,100,0,5000,5000,0,0,11,35515,0,0,0,0,0,9,20454,0,200,0,0,0,0,"Salaadin's Energy Ball - Out of Combat - Cast 'Salaadin's Tesla'"),
(@ENTRY,0,2,0,38,0,100,0,1,1,0,0,41,100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Salaadin's Energy Ball - On Data Set 1 1 - Despawn In 100 ms");

-- Protectorate Disruptor SAI
SET @ENTRY := 184561;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,1,0,100,1,0,0,0,0,45,1,1,0,0,0,0,19,20769,10,0,0,0,0,0,"Protectorate Disruptor - Out of Combat - Set Data 1 1 (No Repeat)"),
(@ENTRY,1,1,0,1,0,100,1,1000,1000,0,0,45,1,1,0,0,0,0,10,72462,20454,0,0,0,0,0,"Protectorate Disruptor - Out of Combat - Set Data 1 1 (No Repeat)");

DELETE FROM `creature_text` WHERE `entry` = 20454 AND `groupid` = 0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`comment`, `BroadcastTextId`) VALUES
(20454, 0, 0, "Prepare to enter oblivion, meddlers. You have unleashed a god!", 14, 0, 100, "Nexus-King Salhadaar", 18443);

DELETE FROM `creature_text` WHERE `entry` = 20454 AND `groupid` = 0;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`comment`, `BroadcastTextID`) VALUES
(20454, 0, 0, "Prepare to enter oblivion, meddlers. You have unleashed a god!", 14, 0, 100, "Nexus-King Salhadaar", 18443);

DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=35515;
INSERT INTO `disables`(`sourceType`,`entry`,`flags`,`comment`) VALUES
(0,35515,64,'Ignore LOS on Salaadin\'s Tesla');
-- Plagueborn Horror SAI
SET @ENTRY := 36879;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,5000,5000,10000,10000,11,69581,0,0,0,0,0,5,0,0,0,0,0,0,0,"Plagueborn Horror - In Combat - Cast 'Pustulant Flesh' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,5000,5000,10000,10000,11,70273,0,0,0,0,0,5,0,0,0,0,0,0,0,"Plagueborn Horror - In Combat - Cast 'Pustulant Flesh' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,6,8000,8000,8000,8000,11,70274,0,0,0,0,0,5,0,0,0,0,0,0,0,"Plagueborn Horror - In Combat - Cast 'Toxic Waste' (Dungeon)"),
(@ENTRY,0,3,0,2,0,100,6,15,15,0,0,11,69582,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plagueborn Horror - Between 15-15% Health - Cast 'Blight Bomb' (Dungeon)"),
(@ENTRY,0,4,5,1,0,100,0,0,0,120000,120000,11,58051,2,0,0,0,0,1,0,0,0,0,0,0,0,"Plagueborn Horror - Out of Combat - Cast 'Summon Scourge Package'"),
(@ENTRY,0,5,0,61,0,100,0,0,0,120000,120000,11,69702,2,0,0,0,0,9,30887,0,4,0,0,0,0,"Plagueborn Horror - Out of Combat - Cast 'Rope'"),
(@ENTRY,0,6,0,4,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,30887,0,10,0,0,0,0,"Plagueborn Horror - On Aggro - Set Data 1 1"),
(@ENTRY,0,7,8,25,0,100,0,0,0,0,0,11,58051,2,0,0,0,0,1,0,0,0,0,0,0,0,"Plagueborn Horror - On Reset - Cast 'Summon Scourge Package'"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,11,63413,2,0,0,0,0,9,30887,0,5,0,0,0,0,"Plagueborn Horror - On Reset - Cast 'Rope Beam'");

UPDATE `creature` SET `spawndist`=15, `MovementType`=1 WHERE `guid` IN (201981,  201833, 202236, 201903);

-- Scourge Package SAI
SET @ENTRY := 30887;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,29,3,40,0,0,0,0,7,0,0,0,0,0,0,0,"Scourge Package - On Just Summoned - Start Follow Invoker"),
(@ENTRY,0,1,0,54,0,100,0,0,0,0,0,87,@ENTRY*100+00,@ENTRY*100+01,@ENTRY*100+02,@ENTRY*100+03,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Just Summoned - Run Random Script"),
(@ENTRY,0,2,0,38,0,100,0,1,1,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Data Set 1 1 - Despawn In 1000 ms");

-- Actionlist SAI
SET @ENTRY := 3088700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,58016,2,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Script - Cast 'Scourge Package Visual'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Script - Set Faction 35");

-- Actionlist SAI
SET @ENTRY := 3088701;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,58022,2,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Scourge Package Visual'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Script - Set Faction 35");

-- Actionlist SAI
SET @ENTRY := 3088702;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,58020,2,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Scourge Package Visual'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Script - Set Faction 35");

-- Actionlist SAI
SET @ENTRY := 3088703;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,58023,2,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Scourge Package Visual'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Package - On Script - Set Faction 35");
-- 
DELETE FROM `areatrigger_scripts` WHERE `entry`=3587;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(3587, 'at_ancient_leaf');
DELETE FROM `creature` WHERE `id` IN (14524, 14525, 14526);

DELETE FROM `creature_summon_groups` WHERE `summonerId`=1;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(1, 2, 1, 14524, 6204.051758, -1172.575684, 370.079224, 0.86052, 3, 100000),
(1, 2, 1, 14525, 6246.953613, -1155.985718, 366.182953, 2.90269, 3, 100000),
(1, 2, 1, 14526, 6193.449219, -1137.834106, 366.260529, 5.77332, 3, 100000); 
-- Volcor SAI
SET @ENTRY := 3692;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,19,0,100,0,994,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Quest 'Escape Through Force' Taken - Run Script"),
(@ENTRY,0,1,0,19,0,100,0,995,0,0,0,80,@ENTRY*100+01,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Quest 'Escape Through Stealth' Taken - Run Script"),
(@ENTRY,0,2,0,40,0,100,0,15,3692,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Waypoint 15 Reached - Despawn Instant"),
(@ENTRY,0,3,0,4,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Aggro - Say Line 1");

-- Actionlist SAI
SET @ENTRY := 369200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,53,0,3692,0,0,0,2,1,0,0,0,0,0,0,0,"Volcor - On Script - Start Waypoint"),
(@ENTRY,9,2,0,0,0,100,0,110000,110000,0,0,1,2,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 2"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,15,994,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Quest Credit 'Escape Through Force'");

-- Actionlist SAI
SET @ENTRY := 369201;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,3,0,0,0,0,0,0,"Volcor - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,53,0,3692,0,0,0,2,1,0,0,0,0,0,0,0,"Volcor - On Script - Start Waypoint"),
(@ENTRY,9,2,0,0,0,100,0,110000,110000,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Say Line 3"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,15,995,0,0,0,0,0,7,0,0,0,0,0,0,0,"Volcor - On Script - Quest Credit 'Escape Through Stealth'");
--
DELETE FROM `areatrigger_scripts` WHERE `entry` = 4479;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(4479, 'SmartTrigger');
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4479 AND `source_type` = 2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(4479, 2, 0, 0, 46, 0, 100, 0, 4479, 0, 0, 0, 85, 33728, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Areatrigger - On Trigger - Cast Teleport Shattrath');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 22 AND `SourceEntry` = 4479 AND `SourceId` = 2;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 4479, 2, 0, 28, 0, 10280, 0, 0, 0, 0, '', 'Teleport only on Quest "Special Delivery to Shattrath City"');
--
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=24 AND `SourceEntry`=522;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `Comment`) VALUES
(14, 24, 522, 0, 0, 8, 0, 770, 0, 0, 1, 0, 0, 'Show gossip text if player do not has quest 770 completed');
-- Infiltrator Marksen SAI
SET @ENTRY := 5416;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,1391,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Quest 'Nothing But The Truth' Finished - Run Script"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Just Died - Say Line 4");

-- Actionlist SAI
SET @ENTRY := 541600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,1,1,4000,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Say Line 1"),
(@ENTRY,9,2,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Say Line 2"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Say Line 3"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,3,0,10973,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Morph To Model 10973"),
(@ENTRY,9,5,0,0,0,100,0,100,100,0,0,89,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Start Random Movement"),
(@ENTRY,9,6,0,0,0,100,0,5000,5000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Infiltrator Marksen - On Script - Kill Self");

DELETE FROM `creature_text` WHERE `entry`=5416;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES 
(5416, 0, 0, '%s takes a big swig of ale.', 16, 0, 100, 0, 0, 0, 'Infiltrator Marksen',18019),
(5416, 1, 0, 'That was refreshing. Now there\'s information that needs to be told...', 12, 0, 100, 1, 0, 0, 'Infiltrator Marksen',18019),
(5416, 2, 0, 'I believe the Forsaken are misleading the allies of the Horde.... wait... I feel so... dizzy...', 12, 0, 100, 1, 0, 0, 'Infiltrator Marksen',18019),
(5416, 3, 0, '%s writhes in pain.', 16, 0, 100, 0, 0, 0, 'Infiltrator Marksen',18019),
(5416, 4, 0, 'AAAAAAAAAAAAAAAAARGH!', 12, 0, 100, 0, 0, 0, 'Infiltrator Marksen',18019);
--
DELETE FROM `gossip_menu` WHERE `entry`=40060;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(40060, 2494),
(40060, 2493);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=14 AND `SourceGroup`=40060 AND `SourceEntry` IN (2494, 2493);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `Comment`) VALUES
(14, 40060, 2494, 0, 0, 8, 0, 4023, 0, 0, 1, 0, 0, 'Show gossip text if player do not has quest 4023 completed'),
(14, 40060, 2493, 0, 1, 8, 0, 4022, 0, 0, 1, 0, 0, 'Show gossip text if player do not has quest 4022 completed');
--
SET @newestguid := 45208;
DELETE FROM `creature` WHERE `guid`=@newestguid AND `id`=25654;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@newestguid, 25654, 571, 1, 1, 0, 0, 4207.15, 4057.02, 91.6273, 1.38362, 300, 0, 0, 42, 0, 0, 0, 0, 0);
--
SET @CGUID := 45212;
DELETE FROM `creature` WHERE `guid` IN (@CGUID);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, 30082, 571, 1, 4, 7271.656, -878.8148, 926.0092, 5.532694, 600, 0, 0);

DELETE FROM `spell_area` WHERE `spell`=55783 AND `area`=4432;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(55783, 4432, 12879, 12973, 0, 0, 2, 1, 66, 1);
--
SET @CGUID := 45761;

DELETE FROM `creature` WHERE `id`=26265;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES 
(@CGUID, 26265, 571, 0, 0, 1, 1, 0, 0, 4031.15, 7326.39, 635.972, 4.26247, 300, 0, 0, 1, 0, 0, 0, 0, 0,0);

UPDATE `creature_template` SET  `ScriptName`='', `npcflag`=`npcflag`|1 WHERE `entry`=26206;
-- Keristrasza SAI
SET @ENTRY := 26206;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9262,0,0,0,11,46772,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keristrasza - On Gossip Option 0 Selected - Cast 'Teleport'"),
(@ENTRY,0,1,0,61,0,100,0,9262,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keristrasza - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,2,3,62,0,100,0,9262,1,0,0,11,46824,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keristrasza - On Gossip Option 1 Selected - Cast 'Teleport'"),
(@ENTRY,0,3,0,61,0,100,0,9262,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keristrasza - On Gossip Option 1 Selected - Close Gossip");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9262 AND `SourceEntry` IN (0, 1);
INSERT INTO `conditions` VALUES
(15, 9262, 0, 0, 0, 9, 0, 11957, 0, 0, 0, 0, 0, '', 'Only show gossip if player has quest 11957'),
(15, 9262, 1, 0, 0, 2, 0, 35709, 1, 0, 0, 0, 0, '', 'Only show gossip if player has item 35709');

-- Saragosa's End Invisman SAI
SET @ENTRY := 26265;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,8,0,100,0,46793,0,0,0,12,26231,5,0,0,0,0,8,0,0,0,4050.19,7329.25,635.97,3.34,"Saragosa's End Invisman - On Spellhit 'Activate Power Focus' - Summon Creature 'Saragosa'"),
(@ENTRY,0,1,0,61,0,100,0,46793,0,0,0,11,46789,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saragosa's End Invisman - On Spellhit 'Activate Power Focus' - Cast 'Blue Power Focus'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=26265;
INSERT INTO `conditions` VALUES
(22, 1, 26265, 0, 0, 29, 0, 26231, 40, 0, 1, 0, 0, '', 'Only summon Saragosa if there is not already one in range'),
(22, 1, 26265, 0, 0, 29, 0, 26232, 40, 0, 1, 0, 0, '', 'Only summon Saragosa if there is not already one in range');

-- Activate Power Focus (46793)
DELETE FROM `event_scripts` WHERE `id`=17452;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceGroup`=1 AND `SourceEntry`=46793;
INSERT INTO `conditions` VALUES
(13, 1, 46793, 0, 0, 31, 0, 3, 26265, 0, 0, 0, 0, '', 'Target needs to be Saragosa''s End Invisman');

UPDATE `creature_template` SET  `ScriptName`='', `unit_flags`=`unit_flags`|768, `flags_extra`=`flags_extra`|2 WHERE `entry`=26231;
-- Saragosa SAI
SET @ENTRY := 26231;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,6000,6000,0,0,28,46789,0,0,0,0,0,19,26265,40,0,0,0,0,0,"Saragosa - Out of Combat - Remove Aura 'Blue Power Focus' (No Repeat)"),
(@ENTRY,0,1,2,1,0,100,1,12000,12000,0,0,12,26232,1,120000,0,0,0,1,0,0,0,0,0,0,0,"Saragosa - Out of Combat - Summon Creature 'Saragosa' (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,12000,12000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Saragosa - Out of Combat - Despawn Instant (No Repeat)");

UPDATE `creature_template` SET  `ScriptName`='', `flags_extra`=`flags_extra`|2 WHERE `entry`=26232;
-- Saragosa SAI
SET @ENTRY := 26232;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,40,3400,6200,11,51779,0,0,0,0,0,2,0,0,0,0,0,0,0,"Saragosa - In Combat - Cast 'Frostfire Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,8500,17500,20100,40100,11,15063,0,0,0,0,0,2,0,0,0,0,0,0,0,"Saragosa - In Combat - Cast 'Frost Nova'");
--
SET @CGUID := 56502; -- needs 3
DELETE FROM `creature` WHERE `guid` IN (@CGUID+0, @CGUID+1, @CGUID+2);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 26620, 600, 3, 1, -522.7039, -605.9083, 1.299988, 2.6529, 7200, 0, 0), -- 26620 (Area: 4196) (Auras: 47503 - 47503)
(@CGUID+1, 26620, 600, 3, 1, -518.0062, -599.1102, 1.10835, 3.054326, 7200, 0, 0), -- 26620 (Area: 4196) (Auras: 47503 - 47503)
(@CGUID+2, 26626, 600, 3, 1, -511.0887, -602.5585, 2.56744, 3.193953, 7200, 0, 0); -- 26626 (Area: 4196)

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+0, @CGUID+1);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@CGUID+0, 0, 0, 0, 0, 0, '47503'),
(@CGUID+1, 0, 0, 0, 0, 0, '47503');

UPDATE `smart_scripts` SET `action_param1`=1 WHERE  `entryorguid`=26626 AND `source_type`=0 AND `id`=0 AND `link`=1;

-- Scourge Reanimator SAI
SET @GUID := -@CGUID+2;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26626;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,2,25,0,100,1,0,0,0,0,80,2662600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Reset - Run Script (No Repeat)"),
(@GUID,0,1,0,40,0,100,0,1,2662600,0,0,80,2662601,2,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Waypoint 1 Reached - Run Script");

-- Actionlist SAI
SET @ENTRY := 2662600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,3000,3000,0,0,53,1,2662600,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Script - Start Waypoint");

-- Actionlist SAI
SET @ENTRY := 2662601;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,@CGUID,26620,0,0,0,0,0,"Scourge Reanimator - On Script - Set Data 1 1"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,10,@CGUID+1,26620,0,0,0,0,0,"Scourge Reanimator - On Script - Set Data 1 1"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,11,48597,0,0,0,0,0,10,@CGUID+1,26620,0,0,0,0,0,"Scourge Reanimator - On Script - Cast 'Raise Dead'"),
(@ENTRY,9,3,0,0,0,100,0,2000,2000,0,0,12,26635,3,600000,0,0,0,8,0,0,0,-536.830505,-578.793091,1.91333,1.774444,"Scourge Reanimator - On Script - Summon Creature 'Risen Drakkari Warrior'"),
(@ENTRY,9,4,0,0,0,100,0,3000,3000,0,0,11,48597,0,0,0,0,0,10,@CGUID,26620,0,0,0,0,0,"Scourge Reanimator - On Script - Cast 'Raise Dead'"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,12,26635,3,600000,0,0,0,8,0,0,0,-543.121582,-582.083313,1.025425,2.120673,"Scourge Reanimator - On Script - Summon Creature 'Risen Drakkari Warrior'"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Script - Say Line 2"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,11,47506,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Script - Cast 'Teleport'"),
(@ENTRY,9,8,0,0,0,100,0,1500,1500,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Script - Despawn Instant");

DELETE FROM `waypoints` WHERE `entry`=2662600;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(2662600, 1, -533.262695, -591.052856, 2.484161, 'Scourge Reanimator');

-- Drakkari Guardian SAI
SET @GUID := -@CGUID; 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26620;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-543.121582,-582.083313,1.025425,2.120673,"Drakkari Guardian - Out of Combat - Move To Position (No Repeat)"),
(@GUID,0,1,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari Guardian - On Data Set 1 1 - Kill Self");

-- Drakkari Guardian SAI   
SET @GUID := -@CGUID+1; 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26620;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-536.830505,-578.793091,1.913330,1.774444,"Drakkari Guardian - Out of Combat - Move To Position (No Repeat)"),
(@GUID,0,1,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari Guardian - On Data Set 1 1 - Kill Self");

-- Risen Drakkari Warrior SAI
SET @ENTRY := 26635;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,1000,3000,5000,9500,11,36093,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Drakkari Warrior - In Combat - Cast 'Ghost Strike' (Dungeon)"),
(@ENTRY,0,1,0,0,0,100,6,1000,3000,7250,10000,11,33661,0,0,0,0,0,2,0,0,0,0,0,0,0,"Risen Drakkari Warrior - In Combat - Cast 'Crush Armor' (Dungeon)"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Risen Drakkari Warrior - On Just Summoned - Start Random Movement");

DELETE FROM `creature_text` WHERE `entry`=26626;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(26626, 0, 0, 'Don''t be so quick to escape! I have a parting gift....', 14, 0, 100, 0, 0, 0, 26474, 0, 'Scourge Reanimator'),
(26626, 1, 0, 'Rise my warriors and fight for your new liege!', 14, 0, 100, 0, 0, 0, 26464, 0, 'Scourge Reanimator'),
(26626, 2, 0, 'Please enjoy their company, the Lich King sends his regards!', 14, 0, 100, 0, 0, 0, 26473, 0, 'Scourge Reanimator');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND  `SourceGroup`=1 AND `SourceEntry`=48597;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 48597, 0, 0, 31, 0, 3, 26620, 0, 0, 0, 0, '', 'Raise Dead - only targets Drakkari Guardian');

DELETE FROM `creature` WHERE `guid` IN (127436, 127437);
-- 
DELETE FROM `creature_addon` WHERE `guid` IN (127436, 127437);
DELETE FROM `linked_respawn` WHERE `guid` IN (127436, 127437);
DELETE FROM `spell_script_names` WHERE  `spell_id`=8283 AND `ScriptName`='spell_snufflenose_command';
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=26206;
-- 
UPDATE `smart_scripts` SET `action_param1`=1 WHERE  `entryorguid`=83600 AND `source_type`=9 AND `id`=2 AND `link`=0;
--
DELETE FROM `spell_target_position` WHERE `id` in (50859);
--
DELETE FROM `gameobject_template` WHERE `entry` IN (193977,193978);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `AIName`, `ScriptName`, `VerifiedBuild`) VALUES
(193977, 22, 8532, 'Bottle of Peaked Dalaran Red', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 61064, 5, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019),
(193978, 22, 8531, 'Cask of Peaked Dalaran Red', '', '', '', 0, 0, 0.8, 0, 0, 0, 0, 0, 0, 61064, 25, 1, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', -18019);
-- 
SET @CGUID := 56502; 

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=11789;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=-56500 AND `source_type`=0 AND `id`=0 AND `link`=2;

-- Scourge Reanimator SAI
SET @GUID := -(@CGUID+2);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26626;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,1,0,0,0,0,80,2662600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Reset - Run Script (No Repeat)"),
(@GUID,0,1,0,40,0,100,0,1,2662600,0,0,80,2662601,2,0,0,0,0,1,0,0,0,0,0,0,0,"Scourge Reanimator - On Waypoint 1 Reached - Run Script");

-- Drakkari Guardian SAI
SET @GUID := -(@CGUID); 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26620;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-543.121582,-582.083313,1.025425,2.120673,"Drakkari Guardian - Out of Combat - Move To Position (No Repeat)"),
(@GUID,0,1,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari Guardian - On Data Set 1 1 - Kill Self");

-- Drakkari Guardian SAI   
SET @GUID := -(@CGUID+1);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26620;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,1,2000,2000,0,0,69,0,0,0,0,0,0,8,0,0,0,-536.830505,-578.793091,1.913330,1.774444,"Drakkari Guardian - Out of Combat - Move To Position (No Repeat)"),
(@GUID,0,1,0,38,0,100,0,1,1,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari Guardian - On Data Set 1 1 - Kill Self");
-- 
-- Tome of Mel'Thandris SAI
SET @ENTRY := 19027;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,12,3946,2,40000,0,0,0,8,0,0,0,3169.15,-1211.71,216.95,4.59,"Tome of Mel'Thandris - On Gameobject State Changed - Summon Creature 'Velinde Starsong'");

UPDATE `creature_template` SET `AIName`='' WHERE  `entry`=11789;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=-56500;
-- 
-- King Mrgl-Mrgl SAI
SET @ENTRY := 25197;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,19,0,100,0,11571,0,0,0,11,45328,0,0,0,0,0,7,0,0,0,0,0,0,0,"King Mrgl-Mrgl - On Quest 'Learning to Communicate' Taken - Cast 'Water Breathing'");
-- 
DELETE FROM `creature_addon` WHERE `guid` IN (126051,125886,126038,125888,125891,125887,125967,125956,125971,125962,125960,125965,24084,125964,125963,125973,125968,125961,125954,125972,125957,125955,125970,125969,125966,125958,125897, 125902, 125900, 125899, 125894, 125895, 125898);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
-- 
(126038, 0, 0, 0, 1, 133, NULL),
(125888, 0, 0, 0, 1, 133, NULL),
(125891, 0, 0, 0, 1, 133, NULL),
(125887, 0, 0, 0, 1, 133, NULL),
(125886, 0, 0, 0, 1, 133, NULL),
(126051, 0, 0, 0, 1, 133, NULL),
-- 
(24084, 0, 0, 0, 1, 7, NULL),
(125964, 0, 0, 0, 1, 7, NULL),
(125963, 0, 0, 0, 1, 7, NULL),
(125973, 0, 0, 0, 1, 7, NULL),
(125968, 0, 0, 0, 1, 7, NULL),
(125961, 0, 0, 0, 1, 7, NULL),
(125954, 0, 0, 0, 1, 7, NULL),
(125972, 0, 0, 0, 1, 7, NULL),
(125957, 0, 0, 0, 1, 7, NULL),
(125955, 0, 0, 0, 1, 7, NULL),
(125970, 0, 0, 0, 1, 7, NULL),
(125969, 0, 0, 0, 1, 7, NULL),
(125966, 0, 0, 0, 1, 7, NULL),
(125958, 0, 0, 0, 1, 7, NULL),
(125965, 0, 0, 0, 1, 7, NULL),
(125960, 0, 0, 0, 1, 7, NULL),
(125962, 0, 0, 0, 1, 7, NULL),
(125971, 0, 0, 0, 1, 7, NULL),
(125956, 0, 0, 0, 1, 7, NULL),
(125967, 0, 0, 0, 1, 7, NULL),
-- 
(125897, 0, 0, 0, 1, 234, NULL),
(125902, 0, 0, 0, 1, 234, NULL),
(125898, 0, 0, 0, 1, 234, NULL),
(125900, 0, 0, 0, 1, 234, NULL),
(125899, 0, 0, 0, 1, 234, NULL),
(125894, 0, 0, 0, 1, 234, NULL),
(125895, 0, 0, 0, 1, 234, NULL);

-- update some addons
UPDATE `creature_addon` SET `emote`=7 WHERE  `guid` IN (126027, 126043, 126034);
UPDATE `creature_addon` SET `emote`=1 WHERE  `guid` IN (125889, 125892);

-- remove unneeded double spawned NPCs
DELETE FROM `creature` WHERE `guid` IN (125930,125917,125932,125921,125920,125918,125915,125927,125931,125914,125922,125913);
DELETE FROM `creature_addon` WHERE `guid` IN (125913,125922,125917,125918,125921,125920,125927,125930,125931,125932,125915,125914);
DELETE FROM `linked_respawn` WHERE `guid`=125913;

-- Pathing for  Entry: 24080 'TDB FORMAT' 
SET @NPC := 125909;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=344.5201,`position_y`=-55.29842,`position_z`=23.00489 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,344.5201,-55.29842,23.00489,0,0,0,0,100,0),
(@PATH,2,344.8939,-55.7041,23.00489,0,0,0,0,100,0),
(@PATH,3,320.806,-36.86301,23.00489,0,0,0,0,100,0),
(@PATH,4,302.7466,-35.83545,24.96675,0,0,0,0,100,0),
(@PATH,5,299.0615,-36.53833,24.92923,0,0,0,0,100,0),
(@PATH,6,301.0684,-37.2436,24.67861,0,0,0,0,100,0),
(@PATH,7,314.7549,-36.4743,23.21675,0,0,0,0,100,0),
(@PATH,8,337.0555,-52.25382,23.00652,0,0,0,0,100,0);
-- 0x1C16DC47C0178400002225000161EB2E .go 344.5201 -55.29842 23.00489

-- Pathing for  Entry: 24080 'TDB FORMAT' 
SET @NPC := 125906;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=257.9562,`position_y`=-66.89291,`position_z`=24.67863 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,133, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,257.9562,-66.89291,24.67863,0,0,0,0,100,0),
(@PATH,2,250.1216,-42.76279,24.92863,0,0,0,0,100,0),
(@PATH,3,249.5976,-35.35291,24.92862,0,15000,0,0,100,0),
(@PATH,4,249.2954,-37.17996,24.92863,0,0,0,0,100,0),
(@PATH,5,257.3498,-63.88337,24.92863,0,0,0,0,100,0),
(@PATH,6,258.2347,-66.07593,24.92863,0,15000,0,0,100,0);
-- 0x1C16DC47C0178400002225000061EB2E .go 257.9562 -66.89291 24.67863

-- Pathing for  Entry: 24080 'TDB FORMAT' 
SET @NPC := 125908;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,133, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 258.921, -35.9238, 24.6786, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 260.677, -43.4207, 24.6786, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 278.781, -38.9278, 24.6786, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 278.542, -38.2699, 24.6786, 0, 15000, 0, 0, 100, 0),
(@PATH, 5, 264.293, -43.8186, 24.6786, 0, 0, 0, 0, 100, 0);

-- Pathing for  Entry: 24080 'TDB FORMAT' 
SET @NPC := 125907;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,133, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 267.265, -61.16, 24.6786, 0, 15000, 0, 0, 100, 0),
(@PATH, 2, 265.899, -54.8942, 24.6786, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 280.857, -49.5784, 24.6786, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 281.25, -50.5522, 24.6786, 0, 15000, 0, 0, 100, 0),
(@PATH, 5, 266.912, -55.2328, 24.6786, 0, 0, 0, 0, 100, 0);

-- Dragonflayer Weaponsmith SAI
SET @ENTRY := 24080;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,0,4,0,50,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dragonflayer Weaponsmith - On Aggro - Say Line 1");

DELETE FROM `creature_text` WHERE `entry`=24080;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(24080, 0, 0, 'I spit on you!', 12, 0, 100, 0, 0, 0, 30503, 0, 'Dragonflayer Weaponsmith');

-- remove dublicated mounts
UPDATE `creature_template_addon` SET `mount`=0 WHERE  `entry`=24849;

DELETE FROM `creature_formations` WHERE `leaderGUID`=126042;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(126042, 126042, 0, 0, 2, 0, 0),
(126042, 126046, 0, 0, 2, 0, 0),
(126042, 126032, 0, 0, 2, 0, 0),
(126042, 126041, 0, 0, 2, 0, 0);

-- Pathing for  Entry: 23953 'TDB FORMAT' 
SET @NPC :=126025;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,5, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 188.578, 217.181, 40.8161, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 189.28, 217.307, 40.8161, 0, 5000, 0, 0, 100, 0),
(@PATH, 3, 189.676, 207.039, 40.8161, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 196.131, 196.306, 40.8161, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 196.648, 196.778, 40.8161, 0, 5000, 0, 0, 100, 0);

-- Pathing for  Entry: 24085 'TDB FORMAT' 
SET @NPC := 125976;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=91.42882,`position_y`=136.3092,`position_z`=65.76968 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,91.42882,136.3092,65.76968,0,0,0,0,100,0),
(@PATH,2,103.4925,101.8953,65.53214,0,0,0,0,100,0),
(@PATH,3,134.187,65.97398,65.85297,0,0,0,0,100,0);
-- 0x1C16DC47C0178540002225000061EB2F .go 91.42882 136.3092 65.76968

-- Pathing for  Entry: 28419 'TDB FORMAT' 
SET @NPC := 125874;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=121.963,`position_y`=76.88269,`position_z`=109.2261 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,121.963,76.88269,109.2261,0,0,1,0,100,0),
(@PATH,2,120.63,69.04591,109.1783,0,0,1,0,100,0),
(@PATH,3,104.7298,55.60048,109.2639,0,0,1,0,100,0),
(@PATH,4,97.1344,52.90959,109.2572,0,0,1,0,100,0),
(@PATH,5,111.4303,57.28569,109.2564,0,0,1,0,100,0),
(@PATH,6,122.7686,70.0456,109.2553,0,0,1,0,100,0),
(@PATH,7,119.7332,84.98322,104.3059,0,0,1,0,100,0),
(@PATH,8,115.1914,99.77232,93.62556,0,0,1,0,100,0),
(@PATH,9,112.8705,109.7669,87.9285,0,0,1,0,100,0),
(@PATH,10,102.7546,111.7725,87.55014,0,0,1,0,100,0),
(@PATH,11,91.52882,102.3952,87.59012,0,0,1,0,100,0),
(@PATH,12,96.81816,85.65864,78.54314,0,0,1,0,100,0),
(@PATH,13,98.63879,73.78115,70.11957,0,0,1,0,100,0),
(@PATH,14,104.1278,66.31367,66.21651,0,0,1,0,100,0),
(@PATH,15,116.6431,60.78297,65.94734,0,0,1,0,100,0),
(@PATH,16,122.0239,71.59913,65.95915,0,0,1,0,100,0),
(@PATH,17,110.5408,86.22773,65.63712,0,0,1,0,100,0),
(@PATH,18,101.1147,100.7187,65.54391,0,0,1,0,100,0),
(@PATH,19,94.89072,118.4349,65.71883,0,0,1,0,100,0),
(@PATH,20,89.14192,135.3132,65.73074,0,0,1,0,100,0),
(@PATH,21,84.60493,149.5575,59.07762,0,0,1,0,100,0),
(@PATH,22,79.19835,165.6029,51.65039,0,0,1,0,100,0),
(@PATH,23,78.87008,184.8075,49.66129,0,0,1,0,100,0),
(@PATH,24,81.16812,201.4986,49.43202,0,0,1,0,100,0),
(@PATH,25,82.937,212.6811,49.61001,0,0,1,0,100,0),
(@PATH,26,87.64849,237.4446,45.35562,0,0,1,0,100,0),
(@PATH,27,98.99787,249.9266,43.19844,0,0,1,0,100,0),
(@PATH,28,117.071,260.0121,43.11768,0,0,1,0,100,0),
(@PATH,29,117.3428,259.8461,43.11845,0,0,1,0,100,0),
(@PATH,30,98.82381,251.8302,43.11781,0,0,1,0,100,0),
(@PATH,31,97.55148,251.2241,43.11774,0,0,1,0,100,0),
(@PATH,32,112.3071,256.5493,43.11781,0,0,1,0,100,0),
-- 
(@PATH,63,120.63,69.04591,109.1783,0,0,1,0,100,0),
(@PATH,62,104.7298,55.60048,109.2639,0,0,1,0,100,0),
(@PATH,61,97.1344,52.90959,109.2572,0,0,1,0,100,0),
(@PATH,60,111.4303,57.28569,109.2564,0,0,1,0,100,0),
(@PATH,59,122.7686,70.0456,109.2553,0,0,1,0,100,0),
(@PATH,58,119.7332,84.98322,104.3059,0,0,1,0,100,0),
(@PATH,57,115.1914,99.77232,93.62556,0,0,1,0,100,0),
(@PATH,56,112.8705,109.7669,87.9285,0,0,1,0,100,0),
(@PATH,55,102.7546,111.7725,87.55014,0,0,1,0,100,0),
(@PATH,54,91.52882,102.3952,87.59012,0,0,1,0,100,0),
(@PATH,53,96.81816,85.65864,78.54314,0,0,1,0,100,0),
(@PATH,52,98.63879,73.78115,70.11957,0,0,1,0,100,0),
(@PATH,51,104.1278,66.31367,66.21651,0,0,1,0,100,0),
(@PATH,50,116.6431,60.78297,65.94734,0,0,1,0,100,0),
(@PATH,49,122.0239,71.59913,65.95915,0,0,1,0,100,0),
(@PATH,48,110.5408,86.22773,65.63712,0,0,1,0,100,0),
(@PATH,47,101.1147,100.7187,65.54391,0,0,1,0,100,0),
(@PATH,46,94.89072,118.4349,65.71883,0,0,1,0,100,0),
(@PATH,45,89.14192,135.3132,65.73074,0,0,1,0,100,0),
(@PATH,44,84.60493,149.5575,59.07762,0,0,1,0,100,0),
(@PATH,43,79.19835,165.6029,51.65039,0,0,1,0,100,0),
(@PATH,42,78.87008,184.8075,49.66129,0,0,1,0,100,0),
(@PATH,41,81.16812,201.4986,49.43202,0,0,1,0,100,0),
(@PATH,40,82.937,212.6811,49.61001,0,0,1,0,100,0),
(@PATH,39,87.64849,237.4446,45.35562,0,0,1,0,100,0),
(@PATH,38,98.99787,249.9266,43.19844,0,0,1,0,100,0),
(@PATH,37,117.071,260.0121,43.11768,0,0,1,0,100,0),
(@PATH,36,117.3428,259.8461,43.11845,0,0,1,0,100,0),
(@PATH,35,98.82381,251.8302,43.11781,0,0,1,0,100,0),
(@PATH,34,97.55148,251.2241,43.11774,0,0,1,0,100,0),
(@PATH,33,112.3071,256.5493,43.11781,0,0,1,0,100,0);
-- 0x1C16DC47C01BC0C00022250002E1EB2E .go 121.963 76.88269 109.2261

DELETE FROM `creature_formations` WHERE `leaderGUID`=125874;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(125874, 125874, 0, 0, 2, 0, 0),
(125874, 125876, 3, 90, 2, 0, 0),
(125874, 125875, 3, 270, 2, 0, 0);

-- Pathing for  Entry: 24085 'TDB FORMAT' 
SET @NPC := 125974;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 139.312, 280.748, 42.8666, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 150.295, 273.444, 42.8666, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 138.731, 281.758, 42.8666, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 129.301, 272.882, 42.8666, 0, 0, 0, 0, 100, 0);

-- Pathing for  Entry: 24085 'TDB FORMAT' 
SET @NPC := 125977;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 75.2556, 249.779, 42.8657, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 83.8848, 256.364, 42.866, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 99.3102, 261.128, 42.8661, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 84.1909, 256.288, 42.8661, 0, 0, 0, 0, 100, 0);

SET @NPC := 125883;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 77.3519, 205.89, 49.34, 0, 0, 1, 0, 100, 0),
(@PATH, 2, 86.5749, 199.366, 49.3541, 0, 0, 1, 0, 100, 0),
(@PATH, 3, 92.7536, 202.35, 49.3631, 0, 0, 1, 0, 100, 0),
(@PATH, 4, 94.5927, 208.849, 49.37, 0, 0, 1, 0, 100, 0),
(@PATH, 5, 86.0534, 216.692, 49.3855, 0, 0, 1, 0, 100, 0),
(@PATH, 6, 75.9458, 214.115, 49.361, 0, 0, 1, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=125883;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(125883, 125883, 0, 0, 2, 0, 0),
(125883, 125885, 5, 90, 2, 0, 0),
(125883, 125884, 5, 270, 2, 0, 0);

SET @NPC := 125975;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 97.1818, 193.375, 49.3721, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 97.6578, 205.356, 49.375, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 96.4575, 193.39, 49.372, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 96.9237, 185.571, 49.3659, 0, 0, 0, 0, 100, 0);

-- Pathing for  Entry: 24085 'TDB FORMAT' 
SET @NPC := 125976;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=108.85,`position_y`=88.22916,`position_z`=65.88628 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 104.324, 101.477, 65.4325, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 99.6436, 114.531, 65.4742, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 93.3592, 132.058, 65.5217, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 91.2544, 138.023, 65.5074, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 89.0365, 144.514, 61.6515, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 83.6051, 160.412, 54.041, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 80.7065, 169.333, 49.6367, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 78.4122, 180.724, 49.3771, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 80.8062, 169.721, 49.4824, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 84.2462, 158.583, 54.9073, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 89.1532, 144.915, 61.4908, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 91.498, 137.939, 65.5082, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 96.5665, 122.362, 65.495, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 101.592, 106.919, 65.4531, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 108.985, 87.2638, 65.5996, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 119.016, 74.4927, 65.7037, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 129.481, 61.1712, 65.6985, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 136.363, 63.0702, 65.6985, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 145.165, 65.8833, 65.6865, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 154.484, 68.9137, 65.6788, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 134.651, 62.0119, 65.6977, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 121.026, 71.1032, 65.7021, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 115.277, 81.3625, 65.7034, 0, 0, 0, 0, 100, 0);

UPDATE `smart_scripts` SET `action_param1`=1 WHERE  `entryorguid`=23956 AND `source_type`=0 AND `id`=0 AND `link`=1;
SET @NPC := 126033;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 92.0074, 91.8776, 83.1133, 0, 0, 0, 0, 100, 0),
(@PATH, 2, 94.4268, 84.0678, 77.4261, 0, 0, 0, 0, 100, 0),
(@PATH, 3, 97.4964, 75.2498, 71.1212, 0, 0, 0, 0, 100, 0),
(@PATH, 4, 100.256, 67.5835, 65.7404, 0, 0, 0, 0, 100, 0),
(@PATH, 5, 104.253, 56.1223, 65.7013, 0, 0, 0, 0, 100, 0),
(@PATH, 6, 99.9233, 68.46, 66.1115, 0, 0, 0, 0, 100, 0),
(@PATH, 7, 96.7413, 77.7433, 72.8654, 0, 0, 0, 0, 100, 0),
(@PATH, 8, 93.4206, 87.9519, 80.2184, 0, 0, 0, 0, 100, 0),
(@PATH, 9, 89.9479, 97.6074, 87.0594, 0, 0, 0, 0, 100, 0),
(@PATH, 10, 85.3204, 111.309, 87.294, 0, 0, 0, 0, 100, 0),
(@PATH, 11, 109.086, 121.066, 87.308, 0, 0, 0, 0, 100, 0),
(@PATH, 12, 114.25, 108.563, 87.465, 0, 0, 0, 0, 100, 0),
(@PATH, 13, 117.378, 100.272, 93.3328, 0, 0, 0, 0, 100, 0),
(@PATH, 14, 119.976, 92.7572, 98.707, 0, 0, 0, 0, 100, 0),
(@PATH, 15, 122.256, 85.8878, 103.744, 0, 0, 0, 0, 100, 0),
(@PATH, 16, 124.757, 78.354, 108.636, 0, 0, 0, 0, 100, 0),
(@PATH, 17, 129.66, 64.2292, 109.023, 0, 0, 0, 0, 100, 0),
(@PATH, 18, 131.063, 60.2705, 109.027, 0, 0, 0, 0, 100, 0),
(@PATH, 19, 108.086, 53.1456, 108.988, 0, 0, 0, 0, 100, 0),
(@PATH, 20, 131.63, 61.4828, 109.027, 0, 0, 0, 0, 100, 0),
(@PATH, 21, 125.35, 78.8325, 108.65, 0, 0, 0, 0, 100, 0),
(@PATH, 22, 121.873, 88.5025, 101.93, 0, 0, 0, 0, 100, 0),
(@PATH, 23, 117.766, 99.9247, 93.6416, 0, 0, 0, 0, 100, 0),
(@PATH, 24, 114.768, 108.264, 87.5181, 0, 0, 0, 0, 100, 0),
(@PATH, 25, 110.429, 120.332, 87.3079, 0, 0, 0, 0, 100, 0),
(@PATH, 26, 85.4045, 112.781, 87.2894, 0, 0, 0, 0, 100, 0),
(@PATH, 27, 88.3241, 102.455, 87.3183, 0, 0, 0, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=126033;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(126033, 126033, 0, 0, 2, 0, 0),
(126033, 125998, 2, 270, 2, 0, 0);

SET @NPC := 125879;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 53.1848, 39.7439, 115.029, 0, 0, 1, 0, 100, 0),
(@PATH, 2, 43.585, 41.2652, 115.029, 0, 0, 1, 0, 100, 0),
(@PATH, 3, 45.878, 32.8663, 115.029, 0, 0, 1, 0, 100, 0),
(@PATH, 4, 54.3001, 30.387, 115.029, 0, 0, 1, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=125879;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(125879, 125879, 0, 0, 2, 0, 0),
(125879, 125878, 3, 90, 2, 0, 0),
(125879, 125877, 2, 270, 2, 0, 0);

SET @NPC := 125882;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH, 1, 40.6954, -7.59713, 118.542, 0, 0, 1, 0, 100, 0),
(@PATH, 2, 41.5325, -16.0661, 118.775, 0, 0, 1, 0, 100, 0),
(@PATH, 3, 47.1018, -17.7693, 118.775, 0, 0, 1, 0, 100, 0),
(@PATH, 4, 46.6655, -3.88553, 118.775, 0, 0, 1, 0, 100, 0);

DELETE FROM `creature_formations` WHERE `leaderGUID`=125882;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(125882, 125882, 0, 0, 2, 0, 0),
(125882, 125880, 3, 90, 2, 0, 0),
(125882, 125881, 2, 270, 2, 0, 0);

DELETE FROM `creature_text` WHERE `entry` IN(18927,19171,19175,19177,19173,19172,19176,19148,19178,19169,20102) AND `groupid`=0;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(19178, 0, 0, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 0, 0, 0, 24334, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 0, 1, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 0, 2, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 0, 3, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 396, 0, 0, 24333, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 0, 4, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 0, 5, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 6, 0, 0, 24332, 'Forsaken Commoner to Forsaken Commoner'),
(19169, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 0, 0, 0, 24334, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 0, 2, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 0, 3, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 0, 4, 'The festival of the moon was ever more important to the kaldorei. The great festival of the druids is surely in full swing.', 12, 1, 100, 0, 0, 0, 16171, 'Blood Elf Commoner to Blood Elf Commoner'),
(19176, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Tauren Commoner to Tauren Commoner'),
(19176, 0, 1, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Tauren Commoner to Tauren Commoner'),
(19176, 0, 2, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Tauren Commoner to Tauren Commoner'),
(19176, 0, 3, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 0, 0, 0, 24334, 'Tauren Commoner to Tauren Commoner'),
(19175, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Orc Commoner to Orc Commoner'),
(19175, 0, 1, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Orc Commoner to Orc Commoner'),
(19175, 0, 2, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Orc Commoner to Orc Commoner'),
(19175, 0, 3, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 274, 0, 0, 24334, 'Orc Commoner to Orc Commoner'),
(19175, 0, 4, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 274, 0, 0, 24335, 'Orc Commoner to Orc Commoner'),
(19177, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Troll Commoner to Troll Commoner'),
(19177, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 0, 0, 0, 24334, 'Troll Commoner to Troll Commoner'),
(19177, 0, 2, 'We should go to Moonglade to see the druids'' great festival of the moon.', 12, 1, 100, 0, 0, 0, 0, 'Troll Commoner to Troll Commoner'),
(19177, 0, 3, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Troll Commoner to Troll Commoner'),
(19172, 0, 0, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 0, 0, 0, 24351, 'Gnome Commoner to Gnome Commoner'),
(19172, 0, 1, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 0, 0, 0, 24350, 'Gnome Commoner to Gnome Commoner'),
(19172, 0, 2, 'Lunar Festival is the best time of year for fireworks!', 12, 7, 100, 0, 0, 0, 0, 'Gnome Commoner to Gnome Commoner'),
(19172, 0, 3, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 0, 0, 0, 24352, 'Gnome Commoner to Gnome Commoner'),
(19171, 0, 0, 'It is no surprise that the people of this land hold a great festival of the moon. I should very much like to go to Moonglade to attend it.', 12, 7, 100, 6, 0, 0, 17428, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 274, 0, 0, 24351, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 2, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 0, 0, 0, 24351, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 3, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 0, 0, 0, 24352, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 4, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 273, 0, 0, 24351, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 5, 'It is no surprise that the people of this land hold a great festival of the moon. I should very much like to go to Moonglade to attend it.', 12, 7, 100, 273, 0, 0, 17428, 'Draenei Commoner to Draenei Commoner'),
(19171, 0, 6, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 0, 0, 0, 24350, 'Draenei Commoner to Draenei Commoner'),
(19173, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 0, 0, 0, 24350, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 0, 0, 0, 24351, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 0, 2, 'The Lunar Festival holds special meaning for the night elves. We seek out the wisdom of our elders across the world.', 12, 7, 100, 396, 0, 0, 16156, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 0, 3, 'The Lunar Festival holds special meaning for the night elves. We seek out the wisdom of our elders across the world.', 12, 7, 100, 0, 0, 0, 16156, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 0, 4, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 7, 100, 0, 0, 0, 24349, 'Night Elf Commoner to Night Elf Commoner'),
(18927, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 7, 100, 0, 0, 0, 24349, 'Human Commoner to Human Commoner'),
(18927, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 0, 0, 0, 24351, 'Human Commoner to Human Commoner'),
(18927, 0, 2, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 0, 0, 0, 24352, 'Human Commoner to Human Commoner'),
(18927, 0, 3, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 7, 100, 274, 0, 0, 24349, 'Human Commoner to Human Commoner'),
(18927, 0, 4, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 274, 0, 0, 24352, 'Human Commoner to Human Commoner'),
(18927, 0, 5, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 0, 0, 0, 24350, 'Human Commoner to Human Commoner'),
(19148, 0, 0, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 396, 0, 0, 24352, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 1, 'The Lunar Festival is a special time for us. We seek out our ancient elders, the Earthen, and pay homage to them.', 12, 7, 100, 396, 0, 0, 16153, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 2, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 7, 100, 0, 0, 0, 0, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 3, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 7, 100, 0, 0, 0, 24349, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 4, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 7, 100, 0, 0, 0, 24352, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 5, 'The Lunar Festival is a special time for us. We seek out our ancient elders, the Earthen, and pay homage to them.', 12, 7, 100, 0, 0, 0, 16153, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 0, 6, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 0, 0, 0, 24350, 'Dwarf Commoner to Dwarf Commoner'),
(20102, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 0, 100, 0, 0, 0, 16466, 'Goblin Commoner to Goblin Commoner'),
(20102, 0, 1, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 0, 100, 0, 0, 0, 16465, 'Goblin Commoner to Goblin Commoner'),
(20102, 0, 2, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 0, 100, 0, 0, 0, 16467, 'Goblin Commoner to Goblin Commoner'),
(20102, 0, 3, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 0, 100, 0, 0, 0, 16468, 'Goblin Commoner to Goblin Commoner');


DELETE FROM `smart_scripts` WHERE `entryorguid`IN(18927,19171,19175,19177,19173,19172,19176,19148,19169,19178,20102) AND `source_type`=0 AND `id`IN(0,10);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18927,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Human Commoner - OOC - Say'),
(19171,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dreani Commoner - OOC - Say'),
(19175,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Orc Commoner - OOC - Say'),
(19177,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Troll Commoner - OOC - Say'),
(19173,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Night Elf Commoner - OOC - Say'),
(19172,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gnome Commoner - OOC - Say'),
(19176,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tauren Commoner - OOC - Say'),
(19148,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dwarf Commoner - OOC - Say'),
(20102,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Commoner - OOC - Say'),
(19178,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Forsaken Commoner - OOC - Say'),
(19169,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood Elf Commoner - OOC - Say'),

(18927,0,10,0,64,0,100,0,0,0,0,0,98,7898, 9662,0,0,0,0,7,0,0,0,0,0,0,0,'Human Commoner - On Gossip Hello - Send Gossip Menu'),
(19148,0,10,0,64,0,100,0,0,0,0,0,98,7923, 9688,0,0,0,0,7,0,0,0,0,0,0,0,'Dwarf Commoner - On Gossip Hello - Send Gossip Menu'),
(19169,0,10,0,64,0,100,0,0,0,0,0,98,7921, 9700,0,0,0,0,7,0,0,0,0,0,0,0,'Blood Elf Commoner - On Gossip Hello - Send Gossip Menu'),
(19171,0,10,0,64,0,100,0,0,0,0,0,98,7922, 9696,0,0,0,0,7,0,0,0,0,0,0,0,'Draeni Commoner - On Gossip Hello - Send Gossip Menu'),
(19172,0,10,0,64,0,100,0,0,0,0,0,98,7931, 1915,0,0,0,0,7,0,0,0,0,0,0,0,'Gnome Commoner - On Gossip Hello - Send Gossip Menu'),
(19173,0,10,0,64,0,100,0,0,0,0,0,98,7924, 9692,0,0,0,0,7,0,0,0,0,0,0,0,'Night Elf Commoner - On Gossip Hello - Send Gossip Menu'),
(19175,0,10,0,64,0,100,0,0,0,0,0,98,7925, 9704,0,0,0,0,7,0,0,0,0,0,0,0,'Orc Commoner - On Gossip Hello - Send Gossip Menu'),
(19176,0,10,0,64,0,100,0,0,0,0,0,98,7926, 9708,0,0,0,0,7,0,0,0,0,0,0,0,'Tauren Commoner - On Gossip Hello - Send Gossip Menu'),
(19177,0,10,0,64,0,100,0,0,0,0,0,98,7935, 9716,0,0,0,0,7,0,0,0,0,0,0,0,'Troll Commoner - On Gossip Hello - Send Gossip Menu'),
(19178,0,10,0,64,0,100,0,0,0,0,0,98,7927, 9712,0,0,0,0,7,0,0,0,0,0,0,0,'Forsaken Commoner - On Gossip Hello - Send Gossip Menu'),
(20102,0,10,0,64,0,100,0,0,0,0,0,98,8064, 9964,0,0,0,0,7,0,0,0,0,0,0,0,'Goblin Commoner - On Gossip Hello - Send Gossip Menu');



DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` in(18927,19171,19175,19177,19173,19172,19176,19148,19169,19178,20102) AND `SourceGroup` IN(1,11);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 18927, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19148, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19169, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19171, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19172, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19173, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19175, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19176, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19177, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19178, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 20102, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),

(22, 11, 18927, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19148, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19169, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19171, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19172, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19173, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19175, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19176, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19177, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 19178, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 11, 20102, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active');

DELETE FROM `gossip_menu` WHERE `entry` IN(7931,7926,7925,7924,7898,7923,7921,7927,7935,7922,8064);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(7931, 1915), -- 19172
(7926, 9708), -- 19176
(7925, 9704), -- 19175*
(7924, 9692), -- 19173*
(7898, 9662), -- 18927*
(7923, 9688), -- 19148*
(7921, 9700), -- 19169*
(7927, 9712), -- 19178*
(7935, 9716), -- 19177*
(7922, 9696), -- 19171*
(8064, 9964); -- 20102*

DELETE FROM `npc_text` WHERE `ID` IN(9715,9708);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `VerifiedBuild`) VALUES 
(9715, 'Go to Ironforge''s Mystic Ward and speak with the night elf druids there. They can transport you to Moonglade to join in the Lunar Festival celebration.', 'Go to Ironforge''s Mystic Ward and speak with the night elf druids there. They can transport you to Moonglade to join in the Lunar Festival celebration.', 16214, 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9708, 'The largest celebration of the Lunar Festival takes place in Moonglade. Druids will transport you there from the Elder Rise of Thunder Bluff.', 'The largest celebration of the Lunar Festival takes place in Moonglade. Druids will transport you there from the Elder Rise of Thunder Bluff.', 16201, 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (2248200,2203800) AND `source_type`=9 AND `id` IN (2, 3, 4);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(2248200, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Script - Set Agressive'),
(2248200, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Script - Remove UnitFlag'),
(2248200, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mature Bone Sifter - Script - Root'),
(2203800, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hai shulud <The Bone Emperor> - Script - Set Agressive'),
(2203800, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hai shulud <The Bone Emperor> - Script - Remove UnitFlag'),
(2203800, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Hai shulud <The Bone Emperor> - Script - Root');

DELETE FROM `smart_scripts` WHERE `entryorguid`=16968 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16968,0,0,1,4,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - On Aggro - Remove UNIT_FLAG_NOT_SELECTABLE'),
(16968,0,1,2,61,0,100,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Link With Previous - Remove Tunnel Bore Passive'),
(16968,0,2,3,61,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Link With Previous - Cast Stand'),
(16968,0,3,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Link With Previous - Root'),
(16968,0,4,5,25,0,100,0,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Spawn/Respawn/OOC - Cast Tunnel Bore Passive'),
(16968,0,5,6,61,0,100,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Link With Previous Set UNIT_FLAG_NOT_SELECTABLE'),
(16968,0,6,0,61,0,100,0,0,0,0,0,11,37751,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tunneler - Link With Previous - Cast Submerge'),
(16968,0,7,0,0,0,100,0,1000,1000,2100,4500,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Tunneler - In Combat - Cast Poison'),
(16968,0,8,0,0,0,100,0,10400,10400,45000,50000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,'Tunneler - In Combat - Cast Bore'),
(16968,0,9,0,2,0,100,0,0,30,8000,8000,11,32714,1,0,0,0,0,1,0,0,0,0,0,0,0,"Tunneler - Between 0-30% Health - Cast 8599");

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=21849;
DELETE FROM `smart_scripts` WHERE `entryorguid`=21849 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(21849,0,0,1,4,0,100,0,0,0,0,0,19,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - On Aggro - Remove UNIT_FLAG_NOT_SELECTABLE'),
(21849,0,1,2,61,0,100,0,0,0,0,0,28,38885,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Link With Previous - Remove Tunnel Bore Passive'),
(21849,0,2,3,61,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Link With Previous - Cast Stand'),
(21849,0,3,0,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Link With Previous - Root'),
(21849,0,4,5,25,0,100,0,0,0,0,0,11,38885,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Spawn/Respawn/OOC - Cast Tunnel Bore Passive'),
(21849,0,5,6,61,0,100,0,0,0,0,0,18,33554432,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Link With Previous Set UNIT_FLAG_NOT_SELECTABLE'),
(21849,0,6,0,61,0,100,0,0,0,0,0,11,37751,0,0,0,0,0,1,0,0,0,0,0,0,0,'Bone Crawler - Link With Previous - Cast Submerge'),
(21849,0,7,0,0,0,100,0,1000,1000,2100,4500,11,31747,0,0,0,0,0,2,0,0,0,0,0,0,0,'Bone Crawler - In Combat - Cast Poison'),
(21849,0,8,0,0,0,100,0,10400,10400,45000,50000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,'Bone Crawler - In Combat - Cast Bore');
-- 
DELETE FROM `smart_scripts` WHERE `entryorguid`=-56501;
--
SET @CGUID := 49137;
DELETE FROM `creature` WHERE `guid` IN (@CGUID);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, 30142, 571, 1, 1, 8392.7, -1970.14, 1461.84, 0.0948219, 600, 0, 0);

SET @OGUID := 5501;
DELETE FROM `gameobject` WHERE `guid`= @OGUID;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `rotation2`, `rotation3`, `animprogress`, `state`) VALUES
(@OGUID, 192243, 571, 1, 1, 8531.9, -1971.44, 1467.57, -0.837757, 300, -0.406736, 0.913546, 100, 1);

UPDATE `creature_template` SET `unit_flags`=32832 WHERE `entry`=29730;
--
SET @CGUID :=    49141;

SET @Loken  :=    30396;
SET @Thorim :=    30399;
SET @Veranus:=    30420;
SET @Servant:=    30429;

UPDATE `creature_template` SET `gossip_menu_id`=9928, `minlevel`=82, `maxlevel`=82, `npcflag`=1, `speed_walk`=4.8, `speed_run`=3.142857, `rank`=3, `unit_flags`=320, `unit_flags2`=2099200, `AIName`='SmartAI', `type_flags`=0 WHERE  `entry`=@Thorim; -- thorim
UPDATE `creature_template` SET `faction`=14, `speed_walk`=1.6, `speed_run`=1.857143, `unit_flags`=320, `unit_flags2`=2099200, `AIName`='SmartAI' WHERE  `entry`=@Loken; -- loken
UPDATE `creature_template` SET `speed_walk`=3.2, `speed_run`=1.428571, `unit_flags`=33088, `unit_flags2`=2099200, `AIName`='SmartAI', `HoverHeight`=2.1, `InhabitType`=4 WHERE  `entry`=@Veranus;
UPDATE `creature_template` SET `faction`=2102, `unit_flags`=320,`AIName`='SmartAI' WHERE  `entry`=@Servant;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN(@Thorim*100,@Loken*100) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(@Thorim,@Loken,@Veranus,@Servant) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Loken,0,0,1,38,0,100,0,1,1,0,0,91,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - On Data Set 1 1 - Set Bytes 1"),
(@Loken,0,1,0,61,0,100,0,0,0,0,0,80,@Loken*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - On Data Set 1 1 - Run Script"),
(@Veranus,0,0,0,38,0,100,0,1,1,0,0,69,0,0,0,0,0,0,8,0,0,0,8609.171875, -636.665955, 967.317383, 2.124008,"Veranus - On Data Set 1 1 - move to pos"),
(@Veranus,0,1,2,38,0,100,0,2,2,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veranus - On Data Set 2 2 - Cast Ethereal Teleport"),
(@Veranus,0,2,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veranus - On Data Set 2 2 - Despawn After 1 Seconds"),
(@Veranus,0,3,0,1,0,100,0,160000,160000,160000,160000,70,0,0,0,0,0,0,10,@CGUID,@Thorim,0,0,0,0,0,"Veranus - Ooc - respawn target"),
(@Servant,0,0,1,38,0,100,0,2,2,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,"Runeforged Servant <Servant of Loken> - On Data Set 2 2 - Cast Ethereal Teleport"),
(@Servant,0,1,2,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,10,@CGUID,@Thorim,0,0,0,0,0,"Runeforged Servant <Servant of Loken> - On Data Set 2 2 - Despawn After 1 Seconds"),
(@Servant,0,2,3,61,0,100,0,0,0,0,0,41,0,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Runeforged Servant <Servant of Loken> - On Data Set 2 2 - Despawn After 1 Seconds"),
(@Servant,0,3,0,61,0,100,0,0,0,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Runeforged Servant <Servant of Loken> - On Data Set 2 2 - Despawn After 1 Seconds"),
(@Thorim,0,0,1,62,0,100,0,9928,0,0,0,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Thorim - On Gossip Option select - Store Targetlist"),
(@Thorim,0,1,2,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Thorim - On Gossip Option select - Close Gossip"), 
(@Thorim,0,2,3,61,0,100,0,0,0,0,0,28,54503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - On Gossip Option select - remove aura"),
(@Thorim,0,3,0,61,0,100,0,0,0,0,0,80,@Thorim*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - On Gossip Option select - Run Script"),
(@Thorim,0,4,0,40,0,100,0,2,@Thorim,0,0,1,1,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - On Reached WP2 - Say Line 2"),
(@Thorim,0,5,0,40,0,100,0,3,@Thorim,0,0,101,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - On Reached WP3 - Set Home Position"),
(@Thorim,0,6,0,8,0,100,0,56696,0,0,0,100,1,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - On Spellhit (Loken - Defeat Thorim) - Send Target List to Loken"),
(@Thorim,0,7,0,9,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - On Spawn - Set Invincibility hp"),
(@Thorim,0,8,0,25,0,100,0,1,1,0,0,75,54503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - On Reset - Add aura"),
(@Loken*100,9,0,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Set Run On"),
(@Loken*100,9,1,0,0,0,100,0,0,0,0,0,17,30,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - set stand none"),
(@Loken*100,9,2,0,0,0,100,0,2000,2000,0,0,11,56677,0,0,0,0,0,19,@Thorim,30,0,0,0,0,0,"Loken - Script - Cast Loken's Knockback"),
(@Loken*100,9,3,0,0,0,100,0,3000,3000,0,0,69,0,0,0,0,0,0,8,0,0,0,8591.518555, -610.456604, 925.558228, 5.241327,"Loken - Script - Say Line 1"),
(@Loken*100,9,5,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 1"),
(@Loken*100,9,6,0,0,0,100,0,1000,1000,0,0,5,25,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Play emote 25"),
(@Loken*100,9,7,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,8,0,0,0,8577.214844, -596.050659, 925.558289, 5.372476,"Loken - Script - Say Line 1"),
(@Loken*100,9,8,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 2"),
(@Loken*100,9,9,0,0,0,100,0,7000,7000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 3"),
(@Loken*100,9,10,0,0,0,100,0,6000,6000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 4"),
(@Loken*100,9,11,0,0,0,100,0,1000,1000,0,0,75,56696,0,0,0,0,0,10,@CGUID,@Thorim,0,0,0,0,0,"Loken - Script - Cast Loken - Defeat Thorim"),
(@Loken*100,9,12,0,0,0,100,0,0,0,0,0,11,46846,0,0,0,0,0,10,@CGUID,@Thorim,0,0,0,0,0,"Loken - Script - Cast Loken - Defeat Thorim"),
(@Loken*100,9,13,0,0,0,100,0,1000,1000,0,0,45,1,1,0,0,0,0,10,@CGUID+1,@Veranus,0,0,0,0,0,"Loken - Script - Set Data 1 1 to Veranus"), 
(@Loken*100,9,14,0,0,0,100,0,5000,5000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 5"),
(@Loken*100,9,15,0,0,0,100,0,7000,7000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Say Line 6"),
(@Loken*100,9,16,0,0,0,100,0,0,0,0,0,12,@Servant,1,60000,0,0,0,8,0,0,0,8622.837,-605.7887,926.2864,4.433136,"Loken - Script - Spawn Runeforged Servant <Servant of Loken>"),
(@Loken*100,9,17,0,0,0,100,0,0,0,0,0,12,@Servant,1,60000,0,0,0,8,0,0,0,8586.867,-564.764,925.6412,5.166174,"Loken - Script - Spawn Runeforged Servant <Servant of Loken>"),
(@Loken*100,9,18,0,0,0,100,0,7000,7000,0,0,1,6,0,0,0,0,0,21,50,0,0,0,0,0,0,"Loken - Script - Say Line 7"),
(@Loken*100,9,19,0,0,0,100,0,7000,7000,0,0,1,7,0,0,0,0,0,21,50,0,0,0,0,0,0,"Loken - Script - Say Line 8"),
(@Loken*100,9,20,0,0,0,100,0,0,0,0,0,28,46846,0,0,0,0,0,10,@CGUID,@Thorim,0,0,0,0,0,"Loken - Script - Say Line 1"),
(@Loken*100,9,21,0,0,0,100,0,5000,5000,0,0,11,56941,0,0,0,0,0,1,0,0,0,0,0,0,0,"Loken - Script - Cast Witness the Reckoning"),
(@Loken*100,9,22,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,10,@CGUID+1,@Veranus,0,0,0,0,0,"Loken - Script - Set Data 2 2 to Veranus"),
(@Loken*100,9,23,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,9,30429,0,200,0,0,0,0,"Loken - Script - Set Data 2 2 to Runeforged Servant <Servant of Loken>"), 
(@Thorim*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Set NPC Flags"),
(@Thorim*100,9,1,0,0,0,100,0,0,0,0,0,12,@Loken,1,180000,0,0,0,8,0,0,0,8564.411,-580.366,925.6412,5.5676,"Thorim - Script - Spawn Loken"),
(@Thorim*100,9,2,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Thorim - Script - Say Line 1"),
(@Thorim*100,9,3,0,0,0,100,0,3000,3000,0,0,53,0,@Thorim,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Start WP"),
(@Thorim*100,9,4,0,0,0,100,0,15000,15000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Say Line 3"),
(@Thorim*100,9,5,0,0,0,100,0,2000,2000,0,0,5,333,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Play Emote 333"),
(@Thorim*100,9,6,0,0,0,100,0,4000,4000,0,0,45,1,1,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - Script - Set Data 1 1 to Loken"),
(@Thorim*100,9,7,0,0,0,100,0,6000,6000,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Set Run On"),
(@Thorim*100,9,8,0,0,0,100,0,0,0,0,0,46,20,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Cast Move to Loken"),
(@Thorim*100,9,9,0,0,0,100,0,6000,6000,0,0,11,56688,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - Script - Cast Thorim's Knockback"),
(@Thorim*100,9,10,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Say Line 4"),
(@Thorim*100,9,11,0,0,0,100,0,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Say Line 5"),
(@Thorim*100,9,12,0,0,0,100,0,2000,2000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Thorim - Script - Say Line 6"),
(@Thorim*100,9,13,0,0,0,100,0,1000,1000,0,0,11,56694,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - Script - Cast Lightning Fury"),
(@Thorim*100,9,14,0,0,0,100,0,3000,3000,0,0,11,56695,0,0,0,0,0,19,@Loken,30,0,0,0,0,0,"Thorim - Script - Cast Thorim's Hammer");

DELETE FROM `spell_area` WHERE `spell`=54504 AND `area` IN(4543,4445);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
(54504, 4543, 13047, 13047, 0, 0, 2, 1, 8, 11),
(54504, 4445, 13047, 13047, 0, 0, 2, 1, 8, 11);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9928;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 9928, 0, 0, 0, 9, 0, 13047, 0, 0, 0, 0, 0, '', 'Gossip option requires the reckoning taken');

DELETE from `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56677;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 56677, 0, 31, 3, @Thorim, 0, 0, '', 'Loken''s Knockback');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56688;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 56688, 0, 31, 3, @Loken, 0, 0, '', 'Thorim''s Knockback');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56694;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 56694, 0, 31, 3, @Loken, 0, 0, '', 'Thorim''s Knockback');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=56695;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 56695, 0, 31, 3, @Loken, 0, 0, '', 'Thorim''s hammer');

DELETE FROM `creature_text` WHERE `entry` IN(@Thorim,@Loken);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES
(@Thorim, 0, 0, 'It is time I put an end to my brother''s madness.', 12, 0, 100, 0, 0, 0, 'Thorim', 31078),
(@Thorim, 1, 0, 'Loken!!', 14, 0, 100, 15, 0, 0, 'Thorim', 31079),
(@Thorim, 2, 0, 'Stand up and fight me, you worthless traitor!  ', 14, 0, 100, 53, 0, 0, 'Thorim', 31080),
(@Thorim, 3, 0, 'Do not dare...', 12, 0, 100, 0, 0, 0, 'Thorim', 31083),
(@Thorim, 4, 0, 'Speak...', 12, 0, 100, 0, 0, 0, 'Thorim', 31116),
(@Thorim, 5, 0, 'Her name!!', 12, 0, 100, 0, 0, 0, 'Thorim', 31117),
(@Loken, 0, 0, 'You seem eager to join your beloved Sif, brother.', 12, 0, 100, 0, 0, 0, 'Loken', 31082),
(@Loken, 1, 0, 'ENOUGH!', 14, 0, 100, 15, 0, 0, 'Loken', 31126),
(@Loken, 2, 0, 'Looks like you can still best me in a fair fight, little brother.', 12, 0, 100, 1, 0, 0, 'Loken', 31110),
(@Loken, 3, 0, 'Unfortunately for you.... this fight is anything but fair!', 12, 0, 100, 1, 0, 0, 'Loken', 31111),
(@Loken, 4, 0, 'Thanks to your little friend, you''ve left the Temple of Storms, where you were at your strongest.  Instead we fight closer to my master''s power.', 12, 0, 100, 0, 0, 0, 'Loken', 31112),
(@Loken, 5, 0, 'Minions!  Take my brother and his drake to their new dwellings.  Make sure the beast makes it alive.  I have special plans for the broodmother.', 12, 0, 100, 0, 0, 0, 'Loken', 31128),
(@Loken, 6, 0, 'As for your life, mortal.  I will be generous.  After all... why would I destroy my most useful servant?  I waited for you for weeks inside that Hyldnir mine.', 12, 0, 100, 0, 0, 0, 'Loken', 31127),
(@Loken, 7, 0, 'The shape wasn''t mine, of course.  And had you not been so reckless, you would''ve seen past my illusion.  But you came through for me, and for that... I must thank you!', 12, 0, 100, 0, 0, 0, 'Loken', 31133);

DELETE FROM `creature_template_addon` WHERE `entry` IN(@Thorim,@Loken,@Veranus);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@Thorim, 0, 0x10000, 0x1, '54503'), -- 30399 - 54503
(@Loken, 0, 0x1, 0x1, ''), -- 30396
(@Veranus, 0, 0x3010000, 0x1, '54503'); -- 30420 - 54503

DELETE FROM `creature` WHERE `id` IN(@Thorim,@Veranus);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, @Thorim, 571, 1, 1,  8703.806, -714.0443, 934.9764, 2.321288, 120, 0, 0), -- 30399 (Area: 67)
(@CGUID+1, @Veranus, 571, 1, 1,  8711.395, -754.7941, 955.1224, 2.338741, 120, 0, 0); -- 30420 (Area: 67)

DELETE FROM `gossip_menu` WHERE `entry`=9928;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(9928, 13800); -- 30399

DELETE FROM `gossip_menu_option` WHERE `menu_id`=9928;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(9928, 0, 0, 'I''m with you, Thorim.', 0, 1, 1, 0, 0, 0, 0, '', 31225);

DELETE FROM `waypoints` WHERE `entry` IN(@Thorim);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@Thorim, 1,8695.301, -703.0229, 933.7817, 'Thorim'),
(@Thorim, 2,8665.801, -675.7729, 927.5317, 'Thorim'),
(@Thorim, 3,8573.930664, -591.286133, 925.558167 , 'Thorim');

UPDATE creature_template SET InhabitType=4 WHERE entry IN (29747, 29790);
UPDATE `gossip_menu` SET `text_id`=9715 WHERE  `entry`=7931 AND `text_id`=1915;
-- Mug'gok SAI
SET @ENTRY := 18475;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100+00 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,0,18475,1,0,0,2,1,0,0,0,0,0,0,0,"Mug'gok - On Reset - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,1,18475,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Mug'gok - On Waypoint 1 Reached - Run Script"),
(@ENTRY,0,2,0,40,0,100,0,1,18475,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mug'gok - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY*100+00,9,0,0,0,0,100,0,2000,2000,0,0,1,0,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Mug'gok - On Script - Say Line 0"),
(@ENTRY*100+00,9,1,0,0,0,100,0,2000,2000,0,0,1,1,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Mug'gok - On Script - Say Line 1"),
(@ENTRY*100+00,9,3,0,0,0,100,0,2000,2000,0,0,1,2,3000,0,0,0,0,1,0,0,0,0,0,0,0,"Mug'gok - On Script - Say Line 2");

-- Add text
DELETE FROM `creature_text` WHERE `entry`=18475;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(18475, 0, 0, 'Come out, little birdies! Mug''gok want to play!', 14, 0, 100, 0, 0, 0, 'Muggok', 15463),
(18475, 1, 0, 'No hurt Mug''gok''s feelings, bird-men!', 14, 0, 100, 0, 0, 0, 'Muggok', 15464),
(18475, 2, 0, 'Fine! Birdies be dat way! Mug''gok find new friends!', 14, 0, 100, 14, 0, 0, 'Muggok', 15465);

-- Add waypoints
DELETE FROM `waypoints` WHERE `entry`=18475;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(18475, 1, -3586.119,5789.734,-4.249763, 'Muggok'),
(18475, 2, -3607.362,5802.457,-4.015522, 'Muggok'),
(18475, 3, -3611.601,5813.162,-4.286913, 'Muggok'),
(18475, 4, -3620.696,5832.479,0.1701524, 'Muggok'),
(18475, 5, -3632.274,5845.131,-0.2069848, 'Muggok'),
(18475, 6, -3644.935,5868.452,-4.990351, 'Muggok'),
(18475, 7, -3637.306,5910.221,-21.84441, 'Muggok'),
(18475, 8, -3641.046,5941.752,-30.85709, 'Muggok'),
(18475, 9, -3638.008,5970.188,-22.30242, 'Muggok'),
(18475, 10, -3625.294,5984.689,-19.98056, 'Muggok'),
(18475, 11, -3593.81,5984.915,-30.74051, 'Muggok'),
(18475, 12, -3560.429,5994.253,-34.44781, 'Muggok'),
(18475, 13, -3533.398,6024.583,-24.52451, 'Muggok'),
(18475, 14, -3525.008,6048.768,-20.22229, 'Muggok'),
(18475, 15, -3509.135,6060.514,-15.46761, 'Muggok'),
(18475, 16, -3465.905,6061.523,-15.65, 'Muggok'),
(18475, 17, -3455.743,6054.097,-12.08964, 'Muggok'),
(18475, 18, -3452,6032.292,-14.2308, 'Muggok'),
(18475, 19, -3449.686,6012.386,-17.47238, 'Muggok'),
(18475, 20, -3443.185,5993.315,-23.15056, 'Muggok'),
(18475, 21, -3440.388,5986.851,-24.24662, 'Muggok'),
(18475, 22, -3435.465,5956.201,-24.91395, 'Muggok'),
(18475, 23, -3446.49,5924.918,-33.08622, 'Muggok'),
(18475, 24, -3466.203,5894.721,-28.9427, 'Muggok'),
(18475, 25, -3483.424,5870.367,-23.49757, 'Muggok'),
(18475, 26, -3495.208,5849.559,-15.93699, 'Muggok'),
(18475, 27, -3507.46,5820.458,-12.90878, 'Muggok'),
(18475, 28, -3519.906,5799.604,-7.427849, 'Muggok'),
(18475, 29, -3532.312,5789.58,-6.70218, 'Muggok'),
(18475, 30, -3553.792,5784.59,-4.330991, 'Muggok'),
(18475, 31, -3562.554,5785.313,-1.650567, 'Muggok');
--
SET @ENTRY := 178905;
SET @Scion:= 13696;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (@Scion);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Scion AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,64,0,100,0,0,0,0,0,12,13696,2,60000,0,0,0,1,0,0,0,0,0,0,0,"Vylestem Vine - On Gossip Hello - Summon Creature 'Noxxious Scion'"),
(@Scion,0,0,0,4,0,100,1,0,0,0,0,11,21883,0,0,0,0,0,1,0,0,0,0,0,0,0,"Noxxious Scion - On Aggro -Cast 21883"),
(@Scion,0,1,0,63,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,20,0,0,0,0,0,0,"Noxxious Scion - On Just created - Attack");
--
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (31198, 31150);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (31198, 31150) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(31150,0,0,0,0,0,100,0,2000,8000,12000,15000,11,60678,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Plagued Fiend - IC - Plague Bite"),
(31198,0,0,0,0,0,100,0,2000,2000,15000,20000,11,38971,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Coprous the Defiled - IC - Cast Acid Geyser"),
(31198,0,1,0,0,0,100,0,5000,5000,10000,10000,11,5164,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Coprous the Defiled - IC - Cast Knockdown");
-- 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND  `SourceGroup`=1 AND `SourceEntry`=52654;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 52654, 0, 0, 31, 0, 3, 28823, 0, 0, 0, 0, '', 'Temper only target Volkhan\'s Anvil');
-- 
DELETE FROM `creature_template_addon` WHERE `entry` IN (25760, 25622, 25615);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(25760, 0, 0, 0, 0, 45, NULL),
(25622, 0, 0, 0, 0, 173, NULL),
(25615, 0, 0, 0, 0, 0, '45797');

UPDATE `creature_addon` SET `emote`=36 WHERE  `guid`=102838;

UPDATE `creature` SET `spawndist`=9, `MovementType`=1 WHERE  `id` IN (26202, 25715, 25668, 25791, 25792);

UPDATE `creature` SET `spawndist`=9, `MovementType`=1 WHERE  `id` IN (26126);

UPDATE `creature` SET `spawndist`=13, `MovementType`=1 WHERE  `id` IN (25452, 25615);

UPDATE `creature` SET `MovementType`=0 WHERE  `guid`=122669;

DELETE FROM `creature_formations` WHERE `leaderGUID`=111466;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(111466, 111466, 0, 0, 0, 0, 0),
(111466, 111467, 5, 10, 0, 0, 0);

-- Pathing for  Entry: 26790 'TDB FORMAT' 
SET @NPC := 111466;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3269.226,`position_y`=4429.583,`position_z`=25.58942 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3269.226,4429.583,25.58942,0,0,0,0,100,0),
(@PATH,2,3267.759,4388,25.7008,0,0,0,0,100,0),
(@PATH,3,3267.792,4381.39,25.73712,0,0,0,0,100,0),
(@PATH,4,3278.066,4307.007,24.88556,0,0,0,0,100,0),
(@PATH,5,3279.909,4296.206,24.66411,0,0,0,0,100,0),
(@PATH,6,3295.526,4235.11,26.38262,0,0,0,0,100,0),
(@PATH,7,3300.244,4216.931,27.75196,0,0,0,0,100,0),
(@PATH,8,3318.573,4152.362,27.67955,0,0,0,0,100,0),
(@PATH,9,3325.382,4131.279,26.32579,0,0,0,0,100,0),
(@PATH,10,3332.996,4089.244,27.17685,0,0,0,0,100,0),
(@PATH,11,3343.786,4049.672,25.98749,0,0,0,0,100,0),
(@PATH,12,3363.78,4008.359,26.03116,0,0,0,0,100,0),
(@PATH,13,3366.464,4003.271,25.94505,0,0,0,0,100,0),
(@PATH,14,3425.143,4003.964,27.52853,0,0,0,0,100,0),
(@PATH,15,3476.093,4013.513,26.82531,0,0,0,0,100,0),
(@PATH,16,3515.465,4026.42,22.9796,0,0,0,0,100,0),
(@PATH,17,3530.343,4051.534,21.97854,0,0,0,0,100,0),
(@PATH,18,3552.293,4122.889,21.95212,0,0,0,0,100,0),
(@PATH,19,3590.191,4148.155,21.84193,0,0,0,0,100,0),
(@PATH,20,3620.669,4159.591,25.41138,0,0,0,0,100,0),
(@PATH,21,3659.4,4169.95,25.3229,0,0,0,0,100,0),
(@PATH,22,3700.533,4186.467,24.96351,0,0,0,0,100,0),
(@PATH,23,3743.046,4216.556,24.08723,0,0,0,0,100,0),
(@PATH,24,3771.806,4239.74,25.29598,0,0,0,0,100,0),
(@PATH,25,3820.626,4241.001,27.25442,0,0,0,0,100,0),
(@PATH,26,3848.42,4209.31,28.84864,0,0,0,0,100,0),
(@PATH,27,3840.634,4170.563,28.2758,0,0,0,0,100,0),
(@PATH,28,3804.119,4155.879,27.68908,0,0,0,0,100,0),
(@PATH,29,3767.293,4171.405,26.47837,0,0,0,0,100,0),
(@PATH,30,3739.984,4183.705,24.70092,0,0,0,0,100,0),
(@PATH,31,3695.544,4177.419,25.40162,0,0,0,0,100,0),
(@PATH,32,3690.549,4175.297,25.46773,0,0,0,0,100,0),
(@PATH,33,3664.658,4165.97,25.39618,0,0,0,0,100,0),
(@PATH,34,3608.881,4156.498,24.01619,0,0,0,0,100,0),
(@PATH,35,3562.48,4159.697,23.3773,0,0,0,0,100,0),
(@PATH,36,3545.413,4159.953,22.43779,0,0,0,0,100,0),
(@PATH,37,3526.568,4167.223,15.17734,0,0,0,0,100,0),
(@PATH,38,3522.761,4171.347,12.94395,0,0,0,0,100,0),
(@PATH,39,3513.761,4183.413,12.85036,0,0,0,0,100,0),
(@PATH,40,3521.258,4190.762,12.85036,0,0,0,0,100,0),
(@PATH,41,3529.055,4194.656,12.85036,0,0,0,0,100,0),
(@PATH,42,3537.065,4186.435,12.85036,0,0,0,0,100,0),
(@PATH,43,3549.637,4182.573,12.84298,0,0,0,0,100,0),
(@PATH,44,3560.2,4184.638,12.84456,0,0,0,0,100,0),
(@PATH,45,3551.881,4191.742,12.85036,0,0,0,0,100,0),
(@PATH,46,3552.376,4284.875,12.60797,0,0,0,0,100,0),
(@PATH,47,3537.689,4185.746,12.85036,0,0,0,0,100,0),
(@PATH,48,3535.854,4184.324,12.85036,0,0,0,0,100,0),
(@PATH,49,3526.616,4197.904,12.85036,0,0,0,0,100,0),
(@PATH,50,3514.75,4185.95,12.85036,0,0,0,0,100,0),
(@PATH,51,3487.793,4170.192,17.39668,0,0,0,0,100,0),
(@PATH,52,3474.217,4172.794,17.44868,0,0,0,0,100,0),
(@PATH,53,3466.45,4161.327,17.44301,0,0,0,0,100,0),
(@PATH,54,3463.186,4144.002,17.44657,0,0,0,0,100,0),
(@PATH,55,3461.733,4133.489,15.50942,0,0,0,0,100,0),
(@PATH,56,3461.425,4131.252,15.57042,0,0,0,0,100,0),
(@PATH,57,3440.413,4107.955,16.253,0,0,0,0,100,0),
(@PATH,58,3439.38,4106.382,16.33916,0,0,0,0,100,0),
(@PATH,59,3384.195,4062.901,19.78522,0,0,0,0,100,0),
(@PATH,60,3350.907,4085.523,26.59955,0,0,0,0,100,0),
(@PATH,61,3336.268,4101.299,25.10432,0,0,0,0,100,0),
(@PATH,62,3313.968,4123.463,25.70841,0,0,0,0,100,0),
(@PATH,63,3298.833,4136.27,25.76038,0,0,0,0,100,0),
(@PATH,64,3284.301,4171.881,25.73615,0,0,0,0,100,0),
(@PATH,65,3260.152,4249.911,26.19264,0,0,0,0,100,0),
(@PATH,66,3265.231,4272.233,25.12194,0,0,0,0,100,0),
(@PATH,67,3267.608,4324.161,25.83903,0,0,0,0,100,0),
(@PATH,68,3266.102,4333.994,26.12407,0,0,0,0,100,0),
(@PATH,69,3269.841,4402.301,25.18758,0,0,0,0,100,0),
(@PATH,70,3287.93,4442.964,24.90842,0,0,0,0,100,0),
(@PATH,71,3330.486,4488.953,25.63785,0,0,0,0,100,0),
(@PATH,72,3346.958,4513.736,25.21837,0,0,0,0,100,0),
(@PATH,73,3370.701,4574.729,28.1356,0,0,0,0,100,0),
(@PATH,74,3329.835,4909.289,31.98566,0,0,0,0,100,0),
(@PATH,75,3260.729,4889.575,31.59256,0,0,0,0,100,0),
(@PATH,76,3254.577,4883.116,30.8572,0,0,0,0,100,0),
(@PATH,77,3244.599,4836.884,30.49381,0,0,0,0,100,0),
(@PATH,78,3274.862,4794.816,31.06407,0,0,0,0,100,0),
(@PATH,79,3312.659,4774.863,32.49248,0,0,0,0,100,0),
(@PATH,80,3349.351,4758.671,31.47926,0,0,0,0,100,0),
(@PATH,81,3287.93,4442.964,24.90842,0,0,0,0,100,0),
(@PATH,82,3330.486,4488.953,25.63785,0,0,0,0,100,0),
(@PATH,83,3346.958,4513.736,25.21837,0,0,0,0,100,0),
(@PATH,84,3370.701,4574.729,28.1356,0,0,0,0,100,0);
-- 0x1C39AC47601A298000000B00005AED7E .go 3269.226 4429.583 25.58942

-- Pathing for  Entry: 25793 'TDB FORMAT' 
SET @NPC := 57171;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3561.628,`position_y`=5005.68,`position_z`=-1.416187 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3561.628,5005.68,-1.416187,0,0,0,0,100,0),
(@PATH,2,3561.647,5005.603,-1.154766,0,0,0,0,100,0),
(@PATH,3,3548.455,4987.43,-1.165261,0,0,0,0,100,0),
(@PATH,4,3548.445,4987.507,-1.393345,0,0,0,0,100,0),
(@PATH,5,3548.703,4987.758,-1.156939,0,0,0,0,100,0),
(@PATH,6,3561.752,5006.026,-1.164443,0,0,0,0,100,0),
(@PATH,7,3561.628,5005.68,-1.416187,0,0,0,0,100,0);
-- 0x1C39AC47601930400000A3000065B380 .go 3561.628 5005.68 -1.416187

-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC :=  57156;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3653.617,`position_y`=4706.431,`position_z`=-12.93513 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3653.617,4706.431,-12.93513,0,0,0,0,100,0),
(@PATH,2,3644.772,4705.505,-13.09717,0,0,0,0,100,0),
(@PATH,3,3650.718,4705.053,-12.68797,0,0,0,0,100,0),
(@PATH,4,3657.83,4709.773,-12.6719,0,0,0,0,100,0),
(@PATH,5,3662.773,4713.923,-12.66263,0,0,0,0,100,0),
(@PATH,6,3683.912,4744.512,-13.18753,0,0,0,0,100,0),
(@PATH,7,3684.609,4746.4,-13.26137,0,0,0,0,100,0),
(@PATH,8,3681.26,4750.936,-12.83029,0,0,0,0,100,0),
(@PATH,9,3677.817,4771.657,-12.96236,0,0,0,0,100,0),
(@PATH,10,3677.802,4771.346,-13.06311,0,0,0,0,100,0),
(@PATH,11,3678.06,4771.458,-12.99139,0,0,0,0,100,0),
(@PATH,12,3683.749,4747.838,-13.2233,0,0,0,0,100,0),
(@PATH,13,3683.588,4743.549,-12.92916,0,0,0,0,100,0),
(@PATH,14,3676.425,4727.065,-12.68113,0,0,0,0,100,0),
(@PATH,15,3653.484,4706.284,-12.93378,0,0,0,0,100,0),
(@PATH,16,3644.924,4705.583,-13.21565,0,0,0,0,100,0);
-- 0x1C39AC47601904C000000C00006399A7 .go 3653.617 4706.431 -12.93513

-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC := 57154;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3668.695,`position_y`=4852.459,`position_z`=-12.74998 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3668.695,4852.459,-12.74998,0,0,0,0,100,0),
(@PATH,2,3664.671,4872.002,-12.99413,0,0,0,0,100,0),
(@PATH,3,3664.699,4871.859,-13.07822,0,0,0,0,100,0),
(@PATH,4,3665.02,4871.801,-13.02737,0,0,0,0,100,0),
(@PATH,5,3675.036,4847.65,-13.24574,0,0,0,0,100,0),
(@PATH,6,3689.288,4839.663,-12.73423,0,0,0,0,100,0),
(@PATH,7,3700.295,4827.3,-13.29157,0,0,0,0,100,0),
(@PATH,8,3702.61,4824.848,-13.29076,0,0,0,0,100,0),
(@PATH,9,3702.303,4824.782,-13.54672,0,0,0,0,100,0),
(@PATH,10,3696.016,4832.376,-12.71317,0,0,0,0,100,0),
(@PATH,11,3684.51,4841.927,-13.23423,0,0,0,0,100,0),
(@PATH,12,3671.438,4849.996,-12.73423,0,0,0,0,100,0),
(@PATH,13,3668.495,4852.239,-12.74998,0,0,0,0,100,0);
-- 0x1C39AC47601904C000000C00006398F7 .go 3668.695 4852.459 -12.74998

-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC := 97940;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3580.309,`position_y`=4549.389,`position_z`=-11.17193 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3580.309,4549.389,-11.17193,0,0,0,0,100,0),
(@PATH,2,3578.376,4553.744,-12.42194,0,0,0,0,100,0),
(@PATH,3,3568.719,4586.03,-13.21303,0,0,0,0,100,0),
(@PATH,4,3580.922,4608.78,-13.29673,0,0,0,0,100,0),
(@PATH,5,3569.915,4581.717,-12.73434,0,0,0,0,100,0),
(@PATH,6,3580.182,4549.349,-11.17194,0,0,0,0,100,0);
-- 0x1C39AC47601904C000000C0000635FEA .go 3580.309 4549.389 -11.17193

-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC := 97945;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3638.907,`position_y`=4590.849,`position_z`=-12.90129 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3638.907,4590.849,-12.90129,0,0,0,0,100,0),
(@PATH,2,3639.077,4591.158,-12.65275,0,0,0,0,100,0),
(@PATH,3,3657.039,4597.404,-12.65622,0,0,0,0,100,0),
(@PATH,4,3674.552,4584.037,-12.69051,0,0,0,0,100,0),
(@PATH,5,3691.104,4575.537,-12.92792,0,0,0,0,100,0),
(@PATH,6,3700.628,4561.468,-12.65065,0,0,0,0,100,0),
(@PATH,7,3700.406,4561.409,-12.89539,0,0,0,0,100,0),
(@PATH,8,3700.436,4561.741,-12.6833,0,0,0,0,100,0),
(@PATH,9,3690.878,4575.947,-12.68227,0,0,0,0,100,0),
(@PATH,10,3674.272,4584.251,-12.66346,0,0,0,0,100,0),
(@PATH,11,3656.891,4597.556,-12.65173,0,0,0,0,100,0),
(@PATH,12,3638.816,4591.054,-12.67964,0,0,0,0,100,0),
(@PATH,13,3638.907,4590.849,-12.90129,0,0,0,0,100,0);
-- 0x1C39AC47601904C000000C000063960F .go 3638.907 4590.849 -12.90129

-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC := 57150;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3540.325,`position_y`=4553.921,`position_z`=-11.9877 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3540.325,4553.921,-11.9877,0,0,0,0,100,0),
(@PATH,2,3551.097,4546.824,-12.09515,0,0,0,0,100,0),
(@PATH,3,3556.957,4542.564,-12.71872,0,0,0,0,100,0),
(@PATH,4,3572.592,4519.032,-12.57456,0,0,0,0,100,0),
(@PATH,5,3611.974,4514.621,-11.45239,0,0,0,0,100,0),
(@PATH,6,3596.514,4512.68,-11.4117,0,0,0,0,100,0),
(@PATH,7,3591.572,4513.184,-12.59506,0,0,0,0,100,0),
(@PATH,8,3572.187,4519.236,-12.62936,0,0,0,0,100,0),
(@PATH,9,3542.318,4553.094,-11.18209,0,0,0,0,100,0),
(@PATH,10,3538.412,4553.636,-12.23789,0,0,0,0,100,0),
(@PATH,11,3540.325,4553.921,-11.9877,0,0,0,0,100,0),
(@PATH,12,3551.078,4546.787,-12.28936,0,0,0,0,100,0);
-- 0x1C39AC47601904C00000A30000661A2D .go 3540.325 4553.921 -11.9877


-- Pathing for  Entry: 25619 'TDB FORMAT' 
SET @NPC := 57149;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3440.258,`position_y`=4514.217,`position_z`=-12.88582 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3440.258,4514.217,-12.88582,2,0,0,0,100,0),
(@PATH,2,3440.258,4514.217,-12.88582,2,0,0,0,100,0),
(@PATH,3,3440.896,4516.193,-12.89167,3,0,0,0,100,0),
(@PATH,4,3442.607,4496.93,-12.91095,0,0,0,0,100,0),
(@PATH,5,3447.15,4488.138,-12.65823,0,0,0,0,100,0),
(@PATH,6,3452.752,4476.723,-12.68911,0,0,0,0,100,0),
(@PATH,7,3476.311,4474.729,-12.71476,0,0,0,0,100,0),
(@PATH,8,3494.302,4476.382,-12.71264,0,0,0,0,100,0),
(@PATH,9,3494.728,4476.228,-12.96695,3,0,0,0,100,0),
(@PATH,10,3511.506,4473.141,-12.958,0,0,0,0,100,0),
(@PATH,11,3494.125,4476.339,-12.96727,0,0,0,0,100,0),
(@PATH,12,3494.088,4476.244,-12.71688,0,0,0,0,100,0),
(@PATH,13,3476.16,4474.544,-12.68911,0,0,0,0,100,0),
(@PATH,14,3444.08,4494.611,-12.66572,0,0,0,0,100,0),
(@PATH,15,3442.532,4497.133,-12.64838,0,0,0,0,100,0),
(@PATH,16,3440.716,4522.266,-12.63575,0,0,0,0,100,0),
(@PATH,17,3440.376,4522.044,-12.88582,0,0,0,0,100,0),
(@PATH,18,3440.543,4522.067,-12.6481,0,0,0,0,100,0),
(@PATH,19,3447.229,4487.997,-12.65975,0,0,0,0,100,0),
(@PATH,20,3452.721,4477.046,-12.68911,0,0,0,0,100,0);
-- 0x1C39AC47601904C000000A000063A957 .go 3440.258 4514.217 -12.88582

-- Pathing for  Entry: 25700 'TDB FORMAT' 
SET @NPC := 104890;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3649.046,`position_y`=3947.566,`position_z`=25.10987 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3649.046,3947.566,25.10987,0,0,0,0,100,0),
(@PATH,2,3670.215,3953.261,27.32766,0,0,0,0,100,0),
(@PATH,3,3661.302,3951.949,25.85034,0,0,0,0,100,0),
(@PATH,4,3647.474,3946.993,24.98032,0,0,0,0,100,0),
(@PATH,5,3631.758,3945.262,25.08576,0,0,0,0,100,0),
(@PATH,6,3635.313,3944.982,24.81682,0,0,0,0,100,0),
(@PATH,7,3649.313,3947.802,25.10083,0,0,0,0,100,0),
(@PATH,8,3670.304,3953.393,27.30864,0,0,0,0,100,0);
-- 0x1C39AC47601919000000A3000065CBC5 .go 3649.046 3947.566 25.10987

-- Pathing for  Entry: 25700 'TDB FORMAT' 
SET @NPC := 104873;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3612.053,`position_y`=3969.457,`position_z`=25.79908 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3612.053,3969.457,25.79908,0,0,0,0,100,0),
(@PATH,2,3612.913,3949.386,26.9285,0,0,0,0,100,0),
(@PATH,3,3606.506,3943.484,27.81473,0,0,0,0,100,0),
(@PATH,4,3599.383,3941.598,27.42816,0,0,0,0,100,0),
(@PATH,5,3613.519,3957.487,25.68642,0,0,0,0,100,0),
(@PATH,6,3610.85,3975.829,26.71345,0,0,0,0,100,0),
(@PATH,7,3610.689,3977.498,26.90823,0,0,0,0,100,0);
-- 0x1C39AC47601919000000A3000065CBB6 .go 3612.053 3969.457 25.79908

-- Pathing for  Entry: 25700 'TDB FORMAT' 
SET @NPC := 104885;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3547.306,`position_y`=3938.455,`position_z`=28.18571 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3547.306,3938.455,28.18571,0,0,0,0,100,0),
(@PATH,2,3547.207,3940.361,28.20439,0,0,0,0,100,0),
(@PATH,3,3549.885,3950.133,28.27749,0,0,0,0,100,0),
(@PATH,4,3547.638,3926.375,28.40306,0,0,0,0,100,0),
(@PATH,5,3546.562,3908.686,26.7371,0,0,0,0,100,0);
-- 0x1C39AC47601919000000990000649C8A .go 3547.306 3938.455 28.18571

-- Pathing for  Entry: 25700 'TDB FORMAT' 
SET @NPC := 104894;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3778.342,`position_y`=3912.803,`position_z`=29.24027 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3778.342,3912.803,29.24027,0,0,0,0,100,0),
(@PATH,2,3759.181,3931.342,27.90885,0,0,0,0,100,0),
(@PATH,3,3753.393,3933.303,27.37968,0,0,0,0,100,0),
(@PATH,4,3753.327,3933.25,27.1396,0,0,0,0,100,0),
(@PATH,5,3770.313,3927.754,29.42538,0,0,0,0,100,0),
(@PATH,6,3771.412,3927.011,29.40953,0,0,0,0,100,0),
(@PATH,7,3778.897,3901.917,30.91071,0,0,0,0,100,0);
-- 0x1C39AC476019190000000A00005F9DDF .go 3778.342 3912.803 29.24027


-- Pathing for  Entry: 25615 'TDB FORMAT' 
SET @NPC := 97719;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3952.9,`position_y`=3970.767,`position_z`=60.06356 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '45797');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3952.9,3970.767,60.06356,0,0,0,0,100,0),
(@PATH,2,3978.35,3999.136,62.92397,0,0,0,0,100,0),
(@PATH,3,4018.881,4028.354,68.87595,0,0,0,0,100,0),
(@PATH,4,4054.792,4041.589,78.42586,0,0,0,0,100,0),
(@PATH,5,4079.642,4057.923,86.41113,0,0,0,0,100,0),
(@PATH,6,4109.986,4083.86,91.92527,0,0,0,0,100,0),
(@PATH,7,4146.447,4095.262,94.97155,0,0,0,0,100,0),
(@PATH,8,4116.737,4088.786,92.95302,0,0,0,0,100,0),
(@PATH,9,4085.337,4060.936,87.70323,0,0,0,0,100,0),
(@PATH,10,4058.099,4043.569,79.66705,0,0,0,0,100,0),
(@PATH,11,4020.782,4029.594,69.42237,0,0,0,0,100,0),
(@PATH,12,3994.482,4012.06,64.00913,0,0,0,0,100,0),
(@PATH,13,3968.87,3988.12,59.70909,0,0,0,0,100,0),
(@PATH,14,3929.95,3947.708,63.23425,0,0,0,0,100,0),
(@PATH,15,3911.141,3924.254,62.15401,0,0,0,0,100,0),
(@PATH,16,3873.239,3894.211,53.25244,0,0,0,0,100,0),
(@PATH,17,3906.264,3919.628,61.43396,0,0,0,0,100,0),
(@PATH,18,3928.859,3946.259,63.19824,0,0,0,0,100,0),
(@PATH,19,3952.789,3970.748,60.02489,0,0,0,0,100,0);
-- 0x1C39AC47601903C00000FB00006640F7 .go 3952.9 3970.767 60.06356

-- Pathing for  Entry: 25684 'TDB FORMAT' 
SET @NPC := 103453;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4426.675,`position_y`=4548.689,`position_z`=105.0451 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4426.675,4548.689,105.0451,0,0,0,0,100,0),
(@PATH,2,4426.097,4567.237,105.0696,0,0,0,0,100,0),
(@PATH,3,4427.304,4550.866,105.1948,0,0,0,0,100,0),
(@PATH,4,4424.215,4542.484,104.0657,0,0,0,0,100,0),
(@PATH,5,4408.765,4527.845,109.2442,0,0,0,0,100,0),
(@PATH,6,4417.008,4531.223,106.1703,0,0,0,0,100,0),
(@PATH,7,4426.797,4548.548,105.0981,0,0,0,0,100,0),
(@PATH,8,4426.019,4567.411,105.0588,0,0,0,0,100,0);
-- 0x1C39AC47601915000000F80000663747 .go 4426.675 4548.689 105.0451

-- Cult Plaguebringer SAI
SET @ENTRY := 24957;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,900000,500000,700000,11,45850,2,0,0,0,0,1,0,0,0,0,0,0,0,"Cult Plaguebringer - Out of Combat - Cast 'Ghoul Summons'"),
(@ENTRY,0,1,0,11,0,100,0,0,0,0,0,11,45820,0,0,0,0,0,9,24021,0,30,0,0,0,0,"Cult Plaguebringer - On Respawn - Cast 'Plague Cauldron Beam'"),
(@ENTRY,0,2,0,0,0,30,0,1100,6300,8800,13800,11,50356,0,0,0,0,0,2,0,0,0,0,0,0,0,"Cult Plaguebringer - In Combat - Cast 'Inject Plague'"),
(@ENTRY,0,3,0,21,0,100,0,0,0,0,0,11,45820,0,0,0,0,0,9,24021,0,30,0,0,0,0,"Cult Plaguebringer - On Reached Home - Cast 'Plague Cauldron Beam'"),
(@ENTRY,0,4,0,1,0,100,0,5000,10000,10000,15000,11,45864,0,0,0,0,0,19,23837,20,0,0,0,0,0,"Cult Plaguebringer - Out of Combat - Cast 'Soul Missile'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND  `SourceGroup`=1 AND `SourceEntry`=45864;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 45864, 0, 0, 31, 0, 3, 23837, 0, 0, 0, 0, '', 'Visual - ony targets Dummy');

DELETE FROM `waypoints` WHERE `entry`=965560;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(965560, 1,3882.081,3605.613,47.20867, 'Darkfallen Bloodbearer'),
(965560, 2,3880.675,3604.947,46.98143, 'Darkfallen Bloodbearer'),
(965560, 3,3873.556,3605.217,47.1648, 'Darkfallen Bloodbearer'),
(965560, 4,3864.232,3594.599,46.89387, 'Darkfallen Bloodbearer'),
(965560, 5,3863.215,3593.009,46.80249, 'Darkfallen Bloodbearer'),
(965560, 6,3857.541,3589.546,46.89201, 'Darkfallen Bloodbearer'),
(965560, 7,3849.738,3589.315,47.19809, 'Darkfallen Bloodbearer'),
(965560, 8,3841.684,3593.68,47.05273, 'Darkfallen Bloodbearer'),
(965560, 9,3835.923,3599.622,47.26691, 'Darkfallen Bloodbearer'),
(965560, 10,3828.859,3599.792,47.14082, 'Darkfallen Bloodbearer'),
(965560, 11,3821.26,3598.35,46.8344, 'Darkfallen Bloodbearer'),
(965560, 12,3806.117,3590.271,48.67004, 'Darkfallen Bloodbearer'),
(965560, 13,3801.333,3586.158,49.71964, 'Darkfallen Bloodbearer');

-- Darkfallen Bloodbearer SAI
SET @GUID := -96556;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26115;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,0,0,0,0,0,53,0,965560,0,0,0,0,1,0,0,0,0,0,0,0,"Darkfallen Bloodbearer - On Reset - Start Waypoint"),
(@GUID,0,1,0,40,0,100,0,13,965560,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Darkfallen Bloodbearer - On Waypoint 13 Reached - Despawn In 2000 ms");
--
DELETE FROM `conditions` WHERE `SourceEntry`=56727;
DELETE FROM `conditions` WHERE `SourceEntry`=36546 AND `SourceGroup`=1;
DELETE FROM `conditions` WHERE `SourceEntry`=58118;
DELETE FROM `conditions` WHERE `SourceEntry`=48397 AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` WHERE `SourceEntry`= 44997 AND `SourceTypeOrReferenceId`=13;
DELETE FROM `conditions` WHERE `SourceEntry`= 70529;
UPDATE `conditions` SET `SourceGroup`=1 WHERE `SourceEntry`=70471;
UPDATE `conditions` SET `SourceGroup`=1 WHERE `SourceEntry`=71310;
UPDATE `smart_scripts` SET `action_param2`=9715 WHERE  `entryorguid`=19172 AND `source_type`=0 AND `id`=10 AND `link`=0;
--
UPDATE `creature_template` SET `npcflag`=2 WHERE `entry`=17587;
SET @ENTRY := 17587;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id` IN (11, 12, 13, 14, 15, 16);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@ENTRY, 0, 11, 0, 26, 0, 100, 0, 1, 15, 60000, 60000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Draenei Youngling - IC_LOS - TALK'),
(@ENTRY, 0, 12, 0, 53, 0, 100, 0, 1, 200000, 20000, 20000, 1, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Draenei Youngling - RECEIVE_HEAL - TALK'),
(@ENTRY, 0, 13, 0, 5, 0, 100, 0, 30000, 30000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Draenei Youngling - KILL - TALK'),
(@ENTRY, 0, 14, 0, 1, 0, 100, 0, 60000, 60000, 60000, 60000, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Draenei Youngling - OOC - TALK'),
(@ENTRY, 0, 15, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 25, 15, 0, 0, 0, 0, 0, 0, 'Draenei Youngling - AGGRO - TALK'),
(@ENTRY,0,16,0,11,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Draenei Youngling - On Respawn ' Remove npcflag");
DELETE FROM  smart_scripts  WHERE `entryorguid`=24178 AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(24178,0,3,0,8,0,0,0,43209,0,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Shatterhorn - On Place Meat spellhit remove unit flags');
-- 
-- Keritose Bloodblade SAI
SET @ENTRY := 30946;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,10110,0,0,0,85,58698,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keritose Bloodblade - On Gossip Option 0 Selected - Invoker Cast 'Possessed Skeletal Assault Gryphon'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=15 AND `SourceEntry`=0 AND `SourceGroup`=10110;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,10110,0,9,0,13172,0,0,0,'show gossip on quest 13172 taken');

-- Restless Lookout SAI
SET @ENTRY := 30951;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,45254,0,0,0,33,30951,0,0,0,0,0,21,50,0,0,0,0,0,0,"Restless Lookout - On Spellhit 'Suicide' - Quest Credit 'Honor is for the Weak'"),
(@ENTRY,0,2,0,8,0,100,0,59234,0,0,0,33,31555,0,0,0,0,0,7,0,0,0,0,0,0,0,"Restless Lookout - On Spellhit 'Firebomb' - Quest Credit 'Seeds of Chaos'");

-- Risen Laborer SAI
SET @ENTRY := 30949;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,59234,0,0,0,33,31555,0,0,0,0,0,7,0,0,0,0,0,0,0,"Risen Laborer - On Spellhit 'Firebomb' - Quest Credit 'Seeds of Chaos'");

/* gryphon */
DELETE FROM `creature_template_addon` WHERE `entry`=31157;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(31157, 0, 0, 33554432, 0, 0, '55971');
UPDATE `creature_template` SET `InhabitType`=4, `spell1`= 59234 WHERE `entry`=31157;

-- Skeletal Assault Gryphon SAI
SET @ENTRY := 31157;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,53,1,31157,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Assault Gryphon - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,2,40,0,100,0,35,31157,0,0,11,50630,2,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Assault Gryphon - On Waypoint 35 Reached - Cast 'Eject All Passengers'"),
(@ENTRY,0,2,0,61,0,100,0,36,31157,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Skeletal Assault Gryphon - On Waypoint 36 Reached - Despawn In 1000 ms");

DELETE FROM `waypoints` WHERE `entry`=31157;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(31157, 1, 8397.621, 2683.953, 657.3679, 'Skeletal Assault Gryphon'),
(31157, 2, 8370.314, 2727.218, 664.7281, 'Skeletal Assault Gryphon'),
(31157, 3, 8335.474, 2760.751, 670.5891, 'Skeletal Assault Gryphon'),
(31157, 4, 8289.219, 2785.704, 674.7277, 'Skeletal Assault Gryphon'),
(31157, 5, 8212.881, 2826.851, 661.2293, 'Skeletal Assault Gryphon'),
(31157, 6, 8070.518, 2879.992, 614.7838, 'Skeletal Assault Gryphon'),
(31157, 7, 7950.946, 2893.043, 570.5617, 'Skeletal Assault Gryphon'),
(31157, 8, 7859.049, 2925.734, 547.0621, 'Skeletal Assault Gryphon'),
(31157, 9, 7804.694, 2973.792, 558.8955, 'Skeletal Assault Gryphon'),
(31157, 10, 7725.221, 3051.099, 570.2289, 'Skeletal Assault Gryphon'),
(31157, 11, 7658.346, 3084.103, 576.8101, 'Skeletal Assault Gryphon'),
(31157, 12, 7591.941, 3146.263, 587.5597, 'Skeletal Assault Gryphon'),
(31157, 13, 7576.145, 3203.526, 598.5592, 'Skeletal Assault Gryphon'),
(31157, 14, 7622.536, 3240.809, 611.8931, 'Skeletal Assault Gryphon'),
(31157, 15, 7703.133, 3210.107, 613.2822, 'Skeletal Assault Gryphon'),
(31157, 16, 7796.588, 3149.966, 615.9203, 'Skeletal Assault Gryphon'),
(31157, 17, 7889.656, 3088.229, 614.7259, 'Skeletal Assault Gryphon'),
(31157, 18, 7983.687, 3018.498, 597.3369, 'Skeletal Assault Gryphon'),
(31157, 19, 8053.703, 2943.441, 588.1163, 'Skeletal Assault Gryphon'),
(31157, 20, 8076.742, 2864.08, 582.1427, 'Skeletal Assault Gryphon'),
(31157, 21, 8005.022, 2790.798, 556.4193, 'Skeletal Assault Gryphon'),
(31157, 22, 7897.278, 2831.605, 550.6705, 'Skeletal Assault Gryphon'),
(31157, 23, 7847.702, 2963.348, 561.8926, 'Skeletal Assault Gryphon'),
(31157, 24, 7792.906, 3089.349, 590.8646, 'Skeletal Assault Gryphon'),
(31157, 25, 7735.124, 3173.07, 604.7814, 'Skeletal Assault Gryphon'),
(31157, 26, 7620.355, 3179.519, 599.2814, 'Skeletal Assault Gryphon'),
(31157, 27, 7590.6, 3106.805, 591.0317, 'Skeletal Assault Gryphon'),
(31157, 28, 7650.019, 3055.191, 581.8378, 'Skeletal Assault Gryphon'),
(31157, 29, 7734.892, 3021.323, 573.1149, 'Skeletal Assault Gryphon'),
(31157, 30, 7862.496, 2979.27, 572.5039, 'Skeletal Assault Gryphon'),
(31157, 31, 7956.528, 2972.131, 575.9482, 'Skeletal Assault Gryphon'),
(31157, 32, 8039.022, 2947.35, 576.0869, 'Skeletal Assault Gryphon'),
(31157, 33, 8155.893, 2883.776, 606.1532, 'Skeletal Assault Gryphon'),
(31157, 34, 8239.198, 2805.797, 654.0699, 'Skeletal Assault Gryphon'),
(31157, 35, 8290.536, 2766.505, 682.2192, 'Skeletal Assault Gryphon'),
(31157, 36, 8353.981, 2708.914, 714.5253, 'Skeletal Assault Gryphon');
-- 
UPDATE `creature_template` SET `ainame`='SmartAI' WHERE entry IN (29364,29365);
UPDATE `creature_template` SET `unit_flags`=`unit_flags`|33554560 WHERE `entry`=29365;
UPDATE `creature_template` SET `flags_extra`=`flags_extra`|2 WHERE `entry`=29364;

-- Void Sentry SAI
SET @ENTRY := 29365;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,25,0,100,2,0,0,0,0,11,54342,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Reset - Cast 'Zuramat Add 2' (Normal Dungeon)"),
(@ENTRY,0,1,2,25,0,100,4,0,0,0,0,11,59747,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Reset - Cast 'Zuramat Add 2' (Heroic Dungeon)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,54351,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Reset - Cast 'Zuramat Add' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - In Combat - Disable Combat Movement"),
(@ENTRY,0,4,0,38,0,100,0,1,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Data Set 1 1 - Despawn Instant");

-- Void Sentry SAI
SET @ENTRY := 29364;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - In Combat - Disable Combat Movement"),
(@ENTRY,0,1,2,25,0,100,0,0,0,0,0,11,54341,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Reset - Cast 'Zuramat Add'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,11,54351,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Reset - Cast 'Zuramat Add'"),
(@ENTRY,0,3,0,11,0,100,0,0,0,0,0,11,58650,0,0,0,0,0,1,0,0,0,0,0,0,0,"Void Sentry - On Respawn - Cast 'Summon Void Sentry Ball'"),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,29365,10,0,0,0,0,0,"Void Sentry - On Just Died - Set Data 1 1");
--
DELETE FROM `creature` WHERE `id` = 29498;
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (29500) AND `accessory_entry` IN (29498);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`)VALUES
(29500,29498,0,1,'Brunnhildar Warbear',8,0);

DELETE FROM `creature` WHERE `id` = 30175;
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (30174) AND `accessory_entry` IN (30175);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`)VALUES
(30174,30175,0,1,'Hyldsmeet Warbear',8,0);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` in(6626,6627,6628,6629,6630);

INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(6626, 20, 30, 0, ''), -- Alterac Valley
(6627, 20, 529, 0, ''), -- Arathi Basin
(6628, 20, 489, 0, ''), -- Warsong Glutch
(6629, 20, 607, 0, ''), -- Strand of the Ancients
(6630, 20, 566, 0, ''); -- Eye of the Storm

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132553;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3852.509,`position_y`=3183.065,`position_z`=439.9884 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3852.509,3183.065,439.9884,0,0,0,0,100,0),
(@PATH,2,-3819.889,3184.794,439.9884,0,0,0,0,100,0),
(@PATH,3,-3782.827,3181.228,439.9884,0,0,0,0,100,0),
(@PATH,4,-3750.342,3182.072,439.9884,0,0,0,0,100,0),
(@PATH,5,-3722.763,3185.583,439.9884,0,0,0,0,100,0),
(@PATH,6,-3686.632,3214.135,439.9884,0,0,0,0,100,0),
(@PATH,7,-3656.386,3240.646,439.9884,0,0,0,0,100,0),
(@PATH,8,-3626.851,3272.052,439.9884,0,0,0,0,100,0),
(@PATH,9,-3614.448,3315.655,439.9884,0,0,0,0,100,0),
(@PATH,10,-3607.889,3352.559,439.9884,0,0,0,0,100,0),
(@PATH,11,-3585.032,3376.603,439.9884,0,0,0,0,100,0),
(@PATH,12,-3587.389,3402.663,439.9884,0,0,0,0,100,0),
(@PATH,13,-3579.043,3438.117,439.9884,0,0,0,0,100,0),
(@PATH,14,-3548.228,3462.314,439.9884,0,0,0,0,100,0),
(@PATH,15,-3537.522,3491.375,439.9884,0,0,0,0,100,0),
(@PATH,16,-3536.816,3529.879,439.9884,0,0,0,0,100,0),
(@PATH,17,-3531.781,3565.558,439.9884,0,0,0,0,100,0),
(@PATH,18,-3534.733,3584.761,439.9884,0,0,0,0,100,0),
(@PATH,19,-3540.309,3619.033,439.9884,0,0,0,0,100,0),
(@PATH,20,-3548.71,3648.066,439.9884,0,0,0,0,100,0),
(@PATH,21,-3565.15,3673.789,439.9884,0,0,0,0,100,0),
(@PATH,22,-3593.257,3700.032,439.9884,0,0,0,0,100,0),
(@PATH,23,-3629.609,3714.834,439.9884,0,0,0,0,100,0),
(@PATH,24,-3663.73,3728.198,439.9884,0,0,0,0,100,0),
(@PATH,25,-3699.584,3743.161,439.9884,0,0,0,0,100,0),
(@PATH,26,-3730.971,3758.693,439.9884,0,0,0,0,100,0),
(@PATH,27,-3763.805,3764.051,439.9884,0,0,0,0,100,0),
(@PATH,28,-3796.277,3791.6,439.9884,0,0,0,0,100,0),
(@PATH,29,-3829.475,3825.91,439.9884,0,0,0,0,100,0),
(@PATH,30,-3866.195,3833.057,439.9884,0,0,0,0,100,0),
(@PATH,31,-3901.688,3854.476,439.9884,0,0,0,0,100,0),
(@PATH,32,-3932.767,3851.711,439.9884,0,0,0,0,100,0),
(@PATH,33,-3965.585,3849.424,439.9884,0,0,0,0,100,0),
(@PATH,34,-3999.315,3846.842,439.9884,0,0,0,0,100,0),
(@PATH,35,-4034.047,3812.782,439.9884,0,0,0,0,100,0),
(@PATH,36,-4053.754,3766.908,439.9884,0,0,0,0,100,0),
(@PATH,37,-4065.977,3737.402,439.9884,0,0,0,0,100,0),
(@PATH,38,-4097.885,3717.781,439.9884,0,0,0,0,100,0),
(@PATH,39,-4102.042,3680.511,439.9884,0,0,0,0,100,0),
(@PATH,40,-4104.036,3655.926,439.9884,0,0,0,0,100,0),
(@PATH,41,-4101.168,3611.585,439.9884,0,0,0,0,100,0),
(@PATH,42,-4102.894,3574.591,439.9884,0,0,0,0,100,0),
(@PATH,43,-4103.932,3544.913,439.9884,0,0,0,0,100,0),
(@PATH,44,-4104.642,3508.564,439.9884,0,0,0,0,100,0),
(@PATH,45,-4106.799,3476.665,439.9884,0,0,0,0,100,0),
(@PATH,46,-4107.433,3449.932,439.9884,0,0,0,0,100,0),
(@PATH,47,-4104.114,3418.243,439.9884,0,0,0,0,100,0),
(@PATH,48,-4089.375,3376.191,439.9884,0,0,0,0,100,0),
(@PATH,49,-4055.623,3343.717,446.405,0,0,0,0,100,0),
(@PATH,50,-4011.469,3341.788,448.6551,0,0,0,0,100,0),
(@PATH,51,-3975.74,3311.974,446.6827,0,0,0,0,100,0),
(@PATH,52,-3947.277,3278.158,445.544,0,0,0,0,100,0),
(@PATH,53,-3922.814,3246.151,445.7939,0,0,0,0,100,0),
(@PATH,54,-3886.357,3212.919,439.9884,0,0,0,0,100,0);
-- 0x1C393042401682C000002B0003B619B4 .go -3852.509 3183.065 439.9884

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86115;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3844.01,`position_y`=3755.452,`position_z`=357.5598 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3844.01,3755.452,357.5598,0,0,0,0,100,0),
(@PATH,2,-3852.51,3791.215,357.0599,0,0,0,0,100,0),
(@PATH,3,-3890.182,3810.264,355.8931,0,0,0,0,100,0),
(@PATH,4,-3916.092,3784.685,356.5043,0,0,0,0,100,0),
(@PATH,5,-3923.033,3754.531,361.0602,0,0,0,0,100,0),
(@PATH,6,-3922.995,3732.825,381.1874,0,0,0,0,100,0),
(@PATH,7,-3926.192,3702.992,389.9645,0,0,0,0,100,0),
(@PATH,8,-3920.217,3670.407,389.9645,0,0,0,0,100,0),
(@PATH,9,-3902.139,3652.927,389.9645,0,0,0,0,100,0),
(@PATH,10,-3881.576,3654.323,389.9645,0,0,0,0,100,0),
(@PATH,11,-3865.405,3672.89,381.4647,0,0,0,0,100,0),
(@PATH,12,-3862.587,3682.567,374.4212,0,0,0,0,100,0),
(@PATH,13,-3856.335,3709.221,366.0322,0,0,0,0,100,0);
-- 0x1C393042401682C000002C00003804ED .go -3844.01 3755.452 357.5598

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 79017;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3712.47,`position_y`=3449.822,`position_z`=329.5283 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3712.47,3449.822,329.5283,0,0,0,0,100,0),
(@PATH,2,-3692.213,3483.701,323.2226,0,0,0,0,100,0),
(@PATH,3,-3682.306,3518.447,319.0838,0,0,0,0,100,0),
(@PATH,4,-3686.292,3551.121,328.0282,0,0,0,0,100,0),
(@PATH,5,-3704.019,3589.462,327.0838,0,0,0,0,100,0),
(@PATH,6,-3720.923,3618.094,323.1671,0,0,0,0,100,0),
(@PATH,7,-3746.331,3629.958,322.9449,0,0,0,0,100,0),
(@PATH,8,-3788.036,3651.199,328.056,0,0,0,0,100,0),
(@PATH,9,-3829.155,3656.951,343.6671,0,0,0,0,100,0),
(@PATH,10,-3864.913,3641.72,343.6671,0,0,0,0,100,0),
(@PATH,11,-3899.767,3634.007,334.5004,0,0,0,0,100,0),
(@PATH,12,-3932.793,3625.805,327.7227,0,0,0,0,100,0),
(@PATH,13,-3965.984,3604.831,323.5561,0,0,0,0,100,0),
(@PATH,14,-3994.316,3568.82,324.0004,0,0,0,0,100,0),
(@PATH,15,-4020.807,3533.474,321.6671,0,0,0,0,100,0),
(@PATH,16,-4017.46,3505.427,320.4171,0,0,0,0,100,0),
(@PATH,17,-4012.915,3469.437,318.2504,0,0,0,0,100,0),
(@PATH,18,-4008.829,3443.473,322.9727,0,0,0,0,100,0),
(@PATH,19,-3987.128,3409.836,320.0283,0,0,0,0,100,0),
(@PATH,20,-3956.549,3381.68,323.2782,0,0,0,0,100,0),
(@PATH,21,-3917.093,3373.904,324.1949,0,0,0,0,100,0),
(@PATH,22,-3879.394,3373.863,331.1393,0,0,0,0,100,0),
(@PATH,23,-3846.889,3379.781,335.556,0,0,0,0,100,0),
(@PATH,24,-3815.72,3383.242,336.0282,0,0,0,0,100,0),
(@PATH,25,-3785.73,3387.147,333.7504,0,0,0,0,100,0),
(@PATH,26,-3745.971,3412.045,331.7226,0,0,0,0,100,0);
-- 0x1C393042401682C00000D80000384658 .go -3712.47 3449.822 329.5283

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132567;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3800.044,`position_y`=3329.872,`position_z`=342.0992 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3800.044,3329.872,342.0992,0,0,0,0,100,0),
(@PATH,2,-3820.034,3366.339,344.5435,0,0,0,0,100,0),
(@PATH,3,-3848.72,3382.158,349.6544,0,0,0,0,100,0),
(@PATH,4,-3866.445,3399.19,356.9323,0,0,0,0,100,0),
(@PATH,5,-3892.608,3428.64,364.4878,0,0,0,0,100,0),
(@PATH,6,-3875.494,3457.741,364.4878,0,0,0,0,100,0),
(@PATH,7,-3846.305,3462.793,364.4878,0,0,0,0,100,0),
(@PATH,8,-3835.524,3455.278,363.4879,0,0,0,0,100,0),
(@PATH,9,-3826.342,3432.901,363.4879,0,0,0,0,100,0),
(@PATH,10,-3833.529,3403.362,349.9602,0,0,0,0,100,0),
(@PATH,11,-3849.905,3384.756,348.2379,0,0,0,0,100,0),
(@PATH,12,-3869.018,3342.68,345.9046,0,0,0,0,100,0),
(@PATH,13,-3866.873,3308.942,344.5435,0,0,0,0,100,0),
(@PATH,14,-3833.351,3299.779,344.5435,0,0,0,0,100,0);
-- 0x1C393042401682C00000D80000389A53 .go -3800.044 3329.872 342.0992

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132557;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4027.127,`position_y`=3236.136,`position_z`=342.3879 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4027.127,3236.136,342.3879,0,0,0,0,100,0),
(@PATH,2,-4050.725,3247.826,342.3879,0,0,0,0,100,0),
(@PATH,3,-4074.902,3254.402,339.4433,0,0,0,0,100,0),
(@PATH,4,-4099.817,3279.177,340.388,0,0,0,0,100,0),
(@PATH,5,-4090.614,3300.566,342.3879,0,0,0,0,100,0),
(@PATH,6,-4066.256,3322.034,342.3879,0,0,0,0,100,0),
(@PATH,7,-4034.025,3315.976,340.4436,0,0,0,0,100,0),
(@PATH,8,-4000.627,3300.234,340.7216,0,0,0,0,100,0),
(@PATH,9,-3962.779,3269.458,342.3879,0,0,0,0,100,0),
(@PATH,10,-3932.333,3241.691,350.61,0,0,0,0,100,0),
(@PATH,11,-3924.384,3214.195,353.11,0,0,0,0,100,0),
(@PATH,12,-3948.188,3192.575,352.915,0,0,0,0,100,0),
(@PATH,13,-3975.502,3190.098,351.4991,0,0,0,0,100,0),
(@PATH,14,-4002.08,3217.684,348.0821,0,0,0,0,100,0);
-- 0x1C393042401682C00000D800003947B4 .go -4027.127 3236.136 342.3879

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86099;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3617.656,`position_y`=3768.498,`position_z`=321.4414 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3617.656,3768.498,321.4414,0,0,0,0,100,0),
(@PATH,2,-3621.72,3753.039,319.025,0,0,0,0,100,0),
(@PATH,3,-3619.644,3727.897,309.8305,0,0,0,0,100,0),
(@PATH,4,-3627.178,3681.108,308.5527,0,0,0,0,100,0),
(@PATH,5,-3656.429,3650.599,304.2195,0,0,0,0,100,0),
(@PATH,6,-3696.808,3638.603,303.0528,0,0,0,0,100,0),
(@PATH,7,-3734.566,3654.597,302.6361,0,0,0,0,100,0),
(@PATH,8,-3766.324,3670.245,301.1362,0,0,0,0,100,0),
(@PATH,9,-3799.271,3684.971,303.1361,0,0,0,0,100,0),
(@PATH,10,-3832.15,3705.031,308.4691,0,0,0,0,100,0),
(@PATH,11,-3868.131,3721.502,318.4415,0,0,0,0,100,0),
(@PATH,12,-3909.399,3735.214,328.5527,0,0,0,0,100,0),
(@PATH,13,-3931.017,3766.784,334.3581,0,0,0,0,100,0),
(@PATH,14,-3917.445,3807.967,334.4695,0,0,0,0,100,0),
(@PATH,15,-3890.349,3823.759,327.1638,0,0,0,0,100,0),
(@PATH,16,-3849.03,3819.391,319.025,0,0,0,0,100,0),
(@PATH,17,-3822.998,3781.306,314.3583,0,0,0,0,100,0),
(@PATH,18,-3792.191,3762.3,302.9972,0,0,0,0,100,0),
(@PATH,19,-3753.88,3777.921,300.1917,0,0,0,0,100,0),
(@PATH,20,-3738.559,3813.297,304.1084,0,0,0,0,100,0),
(@PATH,21,-3707.912,3826.754,304.9972,0,0,0,0,100,0),
(@PATH,22,-3666.76,3801.158,304.9972,0,0,0,0,100,0),
(@PATH,23,-3632.452,3787.691,313.8025,0,0,0,0,100,0);
-- 0x1C393042401682C00000D800003950AB .go -3617.656 3768.498 321.4414

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132562;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3740.354,`position_y`=3781.2,`position_z`=318.1236 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3740.354,3781.2,318.1236,0,0,0,0,100,0),
(@PATH,2,-3733.342,3800.063,318.5958,0,0,0,0,100,0),
(@PATH,3,-3700.761,3815.838,314.9293,0,0,0,0,100,0),
(@PATH,4,-3684.377,3790.57,311.3183,0,0,0,0,100,0),
(@PATH,5,-3673.302,3755.679,311.3183,0,0,0,0,100,0),
(@PATH,6,-3654.191,3733.858,317.7345,0,0,0,0,100,0),
(@PATH,7,-3627.812,3735.349,321.0125,0,0,0,0,100,0),
(@PATH,8,-3620.85,3745.508,318.7352,0,0,0,0,100,0),
(@PATH,9,-3616.733,3766.586,318.0404,0,0,0,0,100,0),
(@PATH,10,-3633.59,3782.3,318.1792,0,0,0,0,100,0),
(@PATH,11,-3666.707,3773.215,316.2348,0,0,0,0,100,0),
(@PATH,12,-3699.968,3755.006,317.2626,0,0,0,0,100,0),
(@PATH,13,-3728.831,3766.574,318.1514,0,0,0,0,100,0);
-- 0x1C393042401682C00000D800003955EA .go -3740.354 3781.2 318.1236

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132558;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3889.631,`position_y`=3647.446,`position_z`=379.841 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3889.631,3647.446,379.841,0,0,0,0,100,0),
(@PATH,2,-3867.698,3661.597,374.2303,0,0,0,0,100,0),
(@PATH,3,-3829.105,3657.187,352.5638,0,0,0,0,100,0),
(@PATH,4,-3781.735,3660.671,339.2026,0,0,0,0,100,0),
(@PATH,5,-3733.907,3659.38,326.0082,0,0,0,0,100,0),
(@PATH,6,-3700.169,3654.304,306.0638,0,0,0,0,100,0),
(@PATH,7,-3666.533,3646.272,305.6747,0,0,0,0,100,0),
(@PATH,8,-3633.503,3666.819,305.6747,0,0,0,0,100,0),
(@PATH,9,-3615.833,3700.001,308.675,0,0,0,0,100,0),
(@PATH,10,-3612.93,3733.396,310.8136,0,0,0,0,100,0),
(@PATH,11,-3620.4,3766.181,312.2859,0,0,0,0,100,0),
(@PATH,12,-3633.891,3791.979,308.6469,0,0,0,0,100,0),
(@PATH,13,-3672.738,3787.063,303.5358,0,0,0,0,100,0),
(@PATH,14,-3699.661,3766.161,308.3416,0,0,0,0,100,0),
(@PATH,15,-3722.004,3734.262,307.3692,0,0,0,0,100,0),
(@PATH,16,-3758.981,3700.716,303.9804,0,0,0,0,100,0),
(@PATH,17,-3780.951,3669.244,307.3969,0,0,0,0,100,0),
(@PATH,18,-3823.718,3662.368,306.5638,0,0,0,0,100,0),
(@PATH,19,-3855.767,3696.363,309.2023,0,0,0,0,100,0),
(@PATH,20,-3888.813,3716.222,313.5079,0,0,0,0,100,0),
(@PATH,21,-3922.735,3736.949,316.8968,0,0,0,0,100,0),
(@PATH,22,-3932.095,3764.875,321.5081,0,0,0,0,100,0),
(@PATH,23,-3910.485,3799.088,334.758,0,0,0,0,100,0),
(@PATH,24,-3868.099,3812.761,342.1745,0,0,0,0,100,0),
(@PATH,25,-3842.411,3793.997,354.0078,0,0,0,0,100,0),
(@PATH,26,-3820.221,3754.304,346.8967,0,0,0,0,100,0),
(@PATH,27,-3833.732,3709.265,337.0357,0,0,0,0,100,0),
(@PATH,28,-3851.1,3670.116,337.0357,0,0,0,0,100,0),
(@PATH,29,-3880.107,3634.346,337.0357,0,0,0,0,100,0),
(@PATH,30,-3922.091,3616.533,325.3135,0,0,0,0,100,0),
(@PATH,31,-3965.485,3605.971,311.0912,0,0,0,0,100,0),
(@PATH,32,-3990.204,3580.163,305.9802,0,0,0,0,100,0),
(@PATH,33,-4011.796,3540.719,305.9802,0,0,0,0,100,0),
(@PATH,34,-4011.68,3508.126,305.9802,0,0,0,0,100,0),
(@PATH,35,-3987.115,3486.282,305.9802,0,0,0,0,100,0),
(@PATH,36,-3945.38,3469.3,318.369,0,0,0,0,100,0),
(@PATH,37,-3915.382,3492.937,334.7857,0,0,0,0,100,0),
(@PATH,38,-3903.774,3531.629,345.4246,0,0,0,0,100,0),
(@PATH,39,-3920.156,3565.949,365.369,0,0,0,0,100,0),
(@PATH,40,-3933.356,3594.115,376.4244,0,0,0,0,100,0),
(@PATH,41,-3912.393,3631.522,376.4244,0,0,0,0,100,0);
-- 0x1C393042401682C00000D8000039560D .go -3889.631 3647.446 379.841

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86116;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3876.833,`position_y`=3314.512,`position_z`=379.5609 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3876.833,3314.512,379.5609,0,0,0,0,100,0),
(@PATH,2,-3886.097,3325.345,379.5609,0,0,0,0,100,0),
(@PATH,3,-3911.672,3347.092,379.5609,0,0,0,0,100,0),
(@PATH,4,-3945.02,3355.806,379.5609,0,0,0,0,100,0),
(@PATH,5,-3972.972,3374.654,379.5609,0,0,0,0,100,0),
(@PATH,6,-4009.497,3393.97,379.5609,0,0,0,0,100,0),
(@PATH,7,-4038.995,3394.833,379.5609,0,0,0,0,100,0),
(@PATH,8,-4084.306,3383.78,379.5609,0,0,0,0,100,0),
(@PATH,9,-4114.101,3348.398,379.5609,0,0,0,0,100,0),
(@PATH,10,-4121.285,3315.157,359.6998,0,0,0,0,100,0),
(@PATH,11,-4133.357,3269.041,344.6721,0,0,0,0,100,0),
(@PATH,12,-4127.872,3224.243,336.2553,0,0,0,0,100,0),
(@PATH,13,-4088.58,3195.296,338.8943,0,0,0,0,100,0),
(@PATH,14,-4068.468,3153.282,341.0054,0,0,0,0,100,0),
(@PATH,15,-4070.876,3123.454,342.6997,0,0,0,0,100,0),
(@PATH,16,-4097.591,3094.782,347.3387,0,0,0,0,100,0),
(@PATH,17,-4122.666,3063.981,348.1721,0,0,0,0,100,0),
(@PATH,18,-4162.276,3056.197,349.6165,0,0,0,0,100,0),
(@PATH,19,-4202.113,3083.117,358.5054,0,0,0,0,100,0),
(@PATH,20,-4214.216,3116.871,357.2553,0,0,0,0,100,0),
(@PATH,21,-4193.599,3157.323,355.2832,0,0,0,0,100,0),
(@PATH,22,-4155.592,3185.045,347.0332,0,0,0,0,100,0),
(@PATH,23,-4111.882,3181.491,345.0887,0,0,0,0,100,0),
(@PATH,24,-4062.104,3179.68,348.9498,0,0,0,0,100,0),
(@PATH,25,-4020.427,3179.234,361.4219,0,0,0,0,100,0),
(@PATH,26,-3982.672,3180.415,363.0051,0,0,0,0,100,0),
(@PATH,27,-3951.448,3159.866,363.561,0,0,0,0,100,0),
(@PATH,28,-3937.524,3133.349,370.6444,0,0,0,0,100,0),
(@PATH,29,-3931.404,3105.327,376.0884,0,0,0,0,100,0),
(@PATH,30,-3933.873,3066.744,379.5609,0,0,0,0,100,0),
(@PATH,31,-3940.64,3017.597,385.5607,0,0,0,0,100,0),
(@PATH,32,-3962.612,2986.642,387.3109,0,0,0,0,100,0),
(@PATH,33,-3987.704,2976.624,388.1721,0,0,0,0,100,0),
(@PATH,34,-4028.228,2974.074,379.5609,0,0,0,0,100,0),
(@PATH,35,-4068.643,2997.102,369.2554,0,0,0,0,100,0),
(@PATH,36,-4093.04,3026.769,367.2279,0,0,0,0,100,0),
(@PATH,37,-4081.151,3058.765,357.4498,0,0,0,0,100,0),
(@PATH,38,-4050.25,3086.566,362.8388,0,0,0,0,100,0),
(@PATH,39,-4009.628,3109.691,361.9498,0,0,0,0,100,0),
(@PATH,40,-3962.259,3115.2,365.2273,0,0,0,0,100,0),
(@PATH,41,-3931.493,3131.271,371.1159,0,0,0,0,100,0),
(@PATH,42,-3901.853,3157.168,376.1166,0,0,0,0,100,0),
(@PATH,43,-3882.195,3190.008,374.5609,0,0,0,0,100,0),
(@PATH,44,-3907.507,3233.704,369.0056,0,0,0,0,100,0),
(@PATH,45,-3930.386,3264.117,346.8111,0,0,0,0,100,0),
(@PATH,46,-3952.398,3305.412,329.4775,0,0,0,0,100,0),
(@PATH,47,-3949.958,3344.656,317.033,0,0,0,0,100,0),
(@PATH,48,-3933.078,3390.3,316.2833,0,0,0,0,100,0),
(@PATH,49,-3924.384,3438.506,320.0887,0,0,0,0,100,0),
(@PATH,50,-3908.001,3480.083,321.7832,0,0,0,0,100,0),
(@PATH,51,-3881.964,3513.231,323.2551,0,0,0,0,100,0),
(@PATH,52,-3844.591,3536.472,335.8942,0,0,0,0,100,0),
(@PATH,53,-3822.905,3535.266,339.8388,0,0,0,0,100,0),
(@PATH,54,-3792.544,3507.122,337.1997,0,0,0,0,100,0),
(@PATH,55,-3760.572,3487.132,351.5052,0,0,0,0,100,0),
(@PATH,56,-3744.966,3453.418,364.5887,0,0,0,0,100,0),
(@PATH,57,-3744.307,3416.908,367.4221,0,0,0,0,100,0),
(@PATH,58,-3740.536,3368.536,367.0887,0,0,0,0,100,0),
(@PATH,59,-3734.622,3321.623,379.5609,0,0,0,0,100,0),
(@PATH,60,-3731.181,3282.171,379.5609,0,0,0,0,100,0),
(@PATH,61,-3694.877,3249.842,379.5609,0,0,0,0,100,0),
(@PATH,62,-3655.565,3261.063,379.5609,0,0,0,0,100,0),
(@PATH,63,-3641.669,3284.071,367.7832,0,0,0,0,100,0),
(@PATH,64,-3641.303,3315.587,364.9221,0,0,0,0,100,0),
(@PATH,65,-3654.031,3343.666,369.4221,0,0,0,0,100,0),
(@PATH,66,-3680.551,3352.762,367.6165,0,0,0,0,100,0),
(@PATH,67,-3714.793,3358.927,363.9776,0,0,0,0,100,0),
(@PATH,68,-3753.792,3357.834,379.5609,0,0,0,0,100,0),
(@PATH,69,-3787.513,3323.292,384.7554,0,0,0,0,100,0),
(@PATH,70,-3817.402,3284.448,390.9497,0,0,0,0,100,0),
(@PATH,71,-3855.805,3289.496,379.5609,0,0,0,0,100,0);
-- 0x1C393042401682C00000D80000395FE7 .go -3876.833 3314.512 379.5609

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132564;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3811.575,`position_y`=3318.012,`position_z`=350.0489 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3811.575,3318.012,350.0489,0,0,0,0,100,0),
(@PATH,2,-3839.544,3360.737,346.5213,0,0,0,0,100,0),
(@PATH,3,-3844.532,3382.859,327.4657,0,0,0,0,100,0),
(@PATH,4,-3824.744,3421.51,330.4099,0,0,0,0,100,0),
(@PATH,5,-3815.863,3458.307,331.2989,0,0,0,0,100,0),
(@PATH,6,-3810.683,3497.717,331.2989,0,0,0,0,100,0),
(@PATH,7,-3813.658,3530.778,320.3824,0,0,0,0,100,0),
(@PATH,8,-3816.187,3562.303,309.2156,0,0,0,0,100,0),
(@PATH,9,-3807.29,3592.113,304.2435,0,0,0,0,100,0),
(@PATH,10,-3785.319,3618.569,304.2435,0,0,0,0,100,0),
(@PATH,11,-3745.147,3632.447,304.2435,0,0,0,0,100,0),
(@PATH,12,-3709.023,3627.542,304.2435,0,0,0,0,100,0),
(@PATH,13,-3675.768,3604.466,304.2435,0,0,0,0,100,0),
(@PATH,14,-3671.146,3576.667,304.2435,0,0,0,0,100,0),
(@PATH,15,-3681.459,3543.929,304.2435,0,0,0,0,100,0),
(@PATH,16,-3683.946,3516.303,304.2435,0,0,0,0,100,0),
(@PATH,17,-3690.97,3482.81,304.2435,0,0,0,0,100,0),
(@PATH,18,-3718.609,3446.152,304.2435,0,0,0,0,100,0),
(@PATH,19,-3752.872,3415.494,304.2435,0,0,0,0,100,0),
(@PATH,20,-3787.441,3393.248,306.6046,0,0,0,0,100,0),
(@PATH,21,-3819.708,3391.489,304.2435,0,0,0,0,100,0),
(@PATH,22,-3843.183,3389.003,306.9379,0,0,0,0,100,0),
(@PATH,23,-3878.647,3381.219,308.4658,0,0,0,0,100,0),
(@PATH,24,-3917.604,3385.046,313.9101,0,0,0,0,100,0),
(@PATH,25,-3948.888,3388.875,314.6601,0,0,0,0,100,0),
(@PATH,26,-3981.859,3411.407,311.4101,0,0,0,0,100,0),
(@PATH,27,-4006.548,3451.265,312.8823,0,0,0,0,100,0),
(@PATH,28,-4013.026,3483.869,313.6044,0,0,0,0,100,0),
(@PATH,29,-4007.704,3522.086,312.9934,0,0,0,0,100,0),
(@PATH,30,-3979.958,3551.535,309.1602,0,0,0,0,100,0),
(@PATH,31,-3949.836,3557.036,311.2711,0,0,0,0,100,0),
(@PATH,32,-3916.583,3556.782,310.1602,0,0,0,0,100,0),
(@PATH,33,-3878.491,3547.684,308.91,0,0,0,0,100,0),
(@PATH,34,-3848.358,3529.306,308.3823,0,0,0,0,100,0),
(@PATH,35,-3810.661,3519.969,310.9657,0,0,0,0,100,0),
(@PATH,36,-3788.128,3509.623,314.0764,0,0,0,0,100,0),
(@PATH,37,-3746.377,3484.105,314.4373,0,0,0,0,100,0),
(@PATH,38,-3720.415,3453.266,311.1879,0,0,0,0,100,0),
(@PATH,39,-3711.39,3414.835,316.1873,0,0,0,0,100,0),
(@PATH,40,-3695.241,3382.754,310.2711,0,0,0,0,100,0),
(@PATH,41,-3690.628,3349.262,309.5486,0,0,0,0,100,0),
(@PATH,42,-3707.501,3320.029,317.0488,0,0,0,0,100,0),
(@PATH,43,-3743.783,3305.247,330.9655,0,0,0,0,100,0),
(@PATH,44,-3787.108,3314.23,339.9933,0,0,0,0,100,0);
-- 0x1C393042401682C00000D80000397863 .go -3811.575 3318.012 350.0489

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132554;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4096.788,`position_y`=3033.959,`position_z`=360.6063 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4096.788,3033.959,360.6063,0,0,0,0,100,0),
(@PATH,2,-4104.214,3041.3,359.5785,0,0,0,0,100,0),
(@PATH,3,-4125.444,3052.258,358.9676,0,0,0,0,100,0),
(@PATH,4,-4159.867,3033.596,358.9952,0,0,0,0,100,0),
(@PATH,5,-4186.089,3020.478,361.662,0,0,0,0,100,0),
(@PATH,6,-4216.206,3023.308,363.8009,0,0,0,0,100,0),
(@PATH,7,-4219.776,3049.481,362.9398,0,0,0,0,100,0),
(@PATH,8,-4205.974,3076.206,360.8285,0,0,0,0,100,0),
(@PATH,9,-4175.602,3071.705,356.4121,0,0,0,0,100,0),
(@PATH,10,-4149.558,3039.067,356.4121,0,0,0,0,100,0),
(@PATH,11,-4139.287,3016.167,361.1343,0,0,0,0,100,0),
(@PATH,12,-4115.834,2995.427,363.3842,0,0,0,0,100,0),
(@PATH,13,-4089.456,3009.014,362.3842,0,0,0,0,100,0);
-- 0x1C393042401682C00000D80000397B33 .go -4096.788 3033.959 360.6063

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 83238;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3740.354,`position_y`=3781.2,`position_z`=318.1236 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3740.354,3781.2,318.1236,0,0,0,0,100,0),
(@PATH,2,-3733.342,3800.063,318.5958,0,0,0,0,100,0),
(@PATH,3,-3700.761,3815.838,314.9293,0,0,0,0,100,0),
(@PATH,4,-3684.377,3790.57,311.3183,0,0,0,0,100,0),
(@PATH,5,-3673.302,3755.679,311.3183,0,0,0,0,100,0),
(@PATH,6,-3654.191,3733.858,317.7345,0,0,0,0,100,0),
(@PATH,7,-3627.812,3735.349,321.0125,0,0,0,0,100,0),
(@PATH,8,-3620.85,3745.508,318.7352,0,0,0,0,100,0),
(@PATH,9,-3616.733,3766.586,318.0404,0,0,0,0,100,0),
(@PATH,10,-3633.59,3782.3,318.1792,0,0,0,0,100,0),
(@PATH,11,-3666.707,3773.215,316.2348,0,0,0,0,100,0),
(@PATH,12,-3699.968,3755.006,317.2626,0,0,0,0,100,0),
(@PATH,13,-3728.831,3766.574,318.1514,0,0,0,0,100,0);
-- 0x1C393042401682C00000D800003989DF .go -3740.354 3781.2 318.1236

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132566;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3671.494,`position_y`=3402.642,`position_z`=324.4617 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3671.494,3402.642,324.4617,0,0,0,0,100,0),
(@PATH,2,-3675.101,3400.796,324.5731,0,0,0,0,100,0),
(@PATH,3,-3695.996,3378.851,323.7954,0,0,0,0,100,0),
(@PATH,4,-3677.757,3333.374,329.4622,0,0,0,0,100,0),
(@PATH,5,-3671.793,3306.185,341.9066,0,0,0,0,100,0),
(@PATH,6,-3691.331,3277.393,341.9066,0,0,0,0,100,0),
(@PATH,7,-3714.71,3287.554,341.9066,0,0,0,0,100,0),
(@PATH,8,-3715.633,3314.267,336.4897,0,0,0,0,100,0),
(@PATH,9,-3681.489,3340.859,327.934,0,0,0,0,100,0),
(@PATH,10,-3648.484,3360.056,326.1562,0,0,0,0,100,0),
(@PATH,11,-3641.23,3384.09,325.4897,0,0,0,0,100,0),
(@PATH,12,-3655.433,3406.725,325.0451,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE000039182E .go -3671.494 3402.642 324.4617

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132556;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4209.313,`position_y`=3165.873,`position_z`=345.6776 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4209.313,3165.873,345.6776,0,0,0,0,100,0),
(@PATH,2,-4209.917,3166.669,345.6776,0,0,0,0,100,0),
(@PATH,3,-4214.472,3180.67,347.2502,0,0,0,0,100,0),
(@PATH,4,-4216.52,3213.613,345.6775,0,0,0,0,100,0),
(@PATH,5,-4208.682,3255.884,339.0109,0,0,0,0,100,0),
(@PATH,6,-4189.062,3300.134,333.0109,0,0,0,0,100,0),
(@PATH,7,-4149.259,3324.875,328.7887,0,0,0,0,100,0),
(@PATH,8,-4108.452,3350.17,317.011,0,0,0,0,100,0),
(@PATH,9,-4062.702,3352.578,312.0665,0,0,0,0,100,0),
(@PATH,10,-4014.43,3348.026,315.1498,0,0,0,0,100,0),
(@PATH,11,-3986.476,3375.022,322.1496,0,0,0,0,100,0),
(@PATH,12,-3981.146,3423.131,315.4276,0,0,0,0,100,0),
(@PATH,13,-3984.354,3463.035,318.9552,0,0,0,0,100,0),
(@PATH,14,-3983.076,3512.558,312.2053,0,0,0,0,100,0),
(@PATH,15,-3966.213,3540.754,323.3442,0,0,0,0,100,0),
(@PATH,16,-3949.22,3584.559,328.372,0,0,0,0,100,0),
(@PATH,17,-3913.326,3616.715,336.8163,0,0,0,0,100,0),
(@PATH,18,-3871.808,3634.682,342.0666,0,0,0,0,100,0),
(@PATH,19,-3845.71,3666.634,355.0107,0,0,0,0,100,0),
(@PATH,20,-3851.377,3715.548,351.7607,0,0,0,0,100,0),
(@PATH,21,-3821.307,3750.763,351.2052,0,0,0,0,100,0),
(@PATH,22,-3795.161,3777.228,334.7328,0,0,0,0,100,0),
(@PATH,23,-3763.429,3800.694,324.3996,0,0,0,0,100,0),
(@PATH,24,-3732.729,3778.102,316.9553,0,0,0,0,100,0),
(@PATH,25,-3699.662,3753.815,315.6498,0,0,0,0,100,0),
(@PATH,26,-3666.87,3741.209,315.7607,0,0,0,0,100,0),
(@PATH,27,-3634.06,3717.237,319.2329,0,0,0,0,100,0),
(@PATH,28,-3613.867,3678.084,317.8165,0,0,0,0,100,0),
(@PATH,29,-3622.779,3632.821,322.9277,0,0,0,0,100,0),
(@PATH,30,-3620.368,3590.816,320.0942,0,0,0,0,100,0),
(@PATH,31,-3625.737,3551.353,323.3442,0,0,0,0,100,0),
(@PATH,32,-3626.56,3508.485,328.3718,0,0,0,0,100,0),
(@PATH,33,-3652.823,3477.152,326.2332,0,0,0,0,100,0),
(@PATH,34,-3666.577,3433.208,328.844,0,0,0,0,100,0),
(@PATH,35,-3689.016,3394.729,323.7608,0,0,0,0,100,0),
(@PATH,36,-3716.738,3363.748,323.2885,0,0,0,0,100,0),
(@PATH,37,-3754.879,3351.833,332.8161,0,0,0,0,100,0),
(@PATH,38,-3795.422,3366.06,336.0938,0,0,0,0,100,0),
(@PATH,39,-3839.274,3378.524,336.0663,0,0,0,0,100,0),
(@PATH,40,-3884.272,3383.12,331.8162,0,0,0,0,100,0),
(@PATH,41,-3923.974,3361.845,329.0664,0,0,0,0,100,0),
(@PATH,42,-3938.367,3317.121,327.0108,0,0,0,0,100,0),
(@PATH,43,-3970.304,3289.182,332.4276,0,0,0,0,100,0),
(@PATH,44,-4001.49,3256,340.0942,0,0,0,0,100,0),
(@PATH,45,-4017.281,3211.053,337.8997,0,0,0,0,100,0),
(@PATH,46,-4034.001,3168.051,336.3162,0,0,0,0,100,0),
(@PATH,47,-4060.109,3128.304,345.6775,0,0,0,0,100,0),
(@PATH,48,-4089.788,3088.067,342.4553,0,0,0,0,100,0),
(@PATH,49,-4130.021,3082.164,339.8998,0,0,0,0,100,0),
(@PATH,50,-4161.369,3103.56,345.6775,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE0000391BB1 .go -4209.313 3165.873 345.6776

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132565;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3700.187,`position_y`=3268.531,`position_z`=332.5694 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3700.187,3268.531,332.5694,0,0,0,0,100,0),
(@PATH,2,-3712.445,3309.058,332.5694,0,0,0,0,100,0),
(@PATH,3,-3731.05,3347.229,317.6805,0,0,0,0,100,0),
(@PATH,4,-3716.804,3386.164,312.5971,0,0,0,0,100,0),
(@PATH,5,-3714.796,3416.085,310.3194,0,0,0,0,100,0),
(@PATH,6,-3726.431,3460.464,311.0414,0,0,0,0,100,0),
(@PATH,7,-3753.865,3482.538,314.9584,0,0,0,0,100,0),
(@PATH,8,-3788.998,3508.942,314.9305,0,0,0,0,100,0),
(@PATH,9,-3824.704,3524.107,309.9028,0,0,0,0,100,0),
(@PATH,10,-3848.736,3512.536,316.0972,0,0,0,0,100,0),
(@PATH,11,-3888.76,3485.173,326.2916,0,0,0,0,100,0),
(@PATH,12,-3912.334,3450.138,334.236,0,0,0,0,100,0),
(@PATH,13,-3915.319,3410.722,336.7916,0,0,0,0,100,0),
(@PATH,14,-3881.387,3385.134,337.5138,0,0,0,0,100,0),
(@PATH,15,-3847.486,3374.93,332.5694,0,0,0,0,100,0),
(@PATH,16,-3805.386,3361.039,326.6804,0,0,0,0,100,0),
(@PATH,17,-3773.776,3364.174,321.6806,0,0,0,0,100,0),
(@PATH,18,-3746.576,3378.93,320.8195,0,0,0,0,100,0),
(@PATH,19,-3711.678,3399.851,324.7638,0,0,0,0,100,0),
(@PATH,20,-3677.318,3417.94,324.6248,0,0,0,0,100,0),
(@PATH,21,-3633.113,3400.247,323.4301,0,0,0,0,100,0),
(@PATH,22,-3626.553,3376.975,323.0689,0,0,0,0,100,0),
(@PATH,23,-3616.881,3334.872,332.5694,0,0,0,0,100,0),
(@PATH,24,-3627.39,3296.557,332.5694,0,0,0,0,100,0),
(@PATH,25,-3664.143,3265.263,332.5694,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE0000391D86 .go -3700.187 3268.531 332.5694

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132555;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3910.414,`position_y`=2965.875,`position_z`=390.4576 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3910.414,2965.875,390.4576,0,0,0,0,100,0),
(@PATH,2,-3933.329,2966.657,390.4576,0,0,0,0,100,0),
(@PATH,3,-3954.885,2975.502,382.291,0,0,0,0,100,0),
(@PATH,4,-3963.788,3013.65,381.3741,0,0,0,0,100,0),
(@PATH,5,-3969.197,3050.419,375.9853,0,0,0,0,100,0),
(@PATH,6,-3984.531,3090.169,372.0131,0,0,0,0,100,0),
(@PATH,7,-3972.277,3135.571,367.5407,0,0,0,0,100,0),
(@PATH,8,-3947.474,3178.757,362.0132,0,0,0,0,100,0),
(@PATH,9,-3930.654,3222.331,346.0132,0,0,0,0,100,0),
(@PATH,10,-3944.785,3269.054,337.6526,0,0,0,0,100,0),
(@PATH,11,-3988.984,3283.474,328.0133,0,0,0,0,100,0),
(@PATH,12,-4020.175,3305.831,332.7634,0,0,0,0,100,0),
(@PATH,13,-4043.304,3338.783,339.9855,0,0,0,0,100,0),
(@PATH,14,-4076.572,3375.872,343.2631,0,0,0,0,100,0),
(@PATH,15,-4067.485,3424.765,347.1243,0,0,0,0,100,0),
(@PATH,16,-4037.804,3458.173,351.3187,0,0,0,0,100,0),
(@PATH,17,-4007.092,3452.119,341.2909,0,0,0,0,100,0),
(@PATH,18,-3969.205,3437.343,334.1797,0,0,0,0,100,0),
(@PATH,19,-3932.203,3431.731,332.2077,0,0,0,0,100,0),
(@PATH,20,-3896.705,3421.381,327.7629,0,0,0,0,100,0),
(@PATH,21,-3871.978,3389.38,331.041,0,0,0,0,100,0),
(@PATH,22,-3827.513,3390.714,332.2075,0,0,0,0,100,0),
(@PATH,23,-3802.128,3368.306,336.7633,0,0,0,0,100,0),
(@PATH,24,-3790.874,3332.89,343.6242,0,0,0,0,100,0),
(@PATH,25,-3808.656,3291.044,352.0409,0,0,0,0,100,0),
(@PATH,26,-3817.205,3243.875,361.9853,0,0,0,0,100,0),
(@PATH,27,-3841.924,3206.913,365.2077,0,0,0,0,100,0),
(@PATH,28,-3882.906,3183.564,363.3185,0,0,0,0,100,0),
(@PATH,29,-3903.045,3142.097,372.3742,0,0,0,0,100,0),
(@PATH,30,-3883.694,3111.339,382.5131,0,0,0,0,100,0),
(@PATH,31,-3856.857,3076.734,390.4576,0,0,0,0,100,0),
(@PATH,32,-3843.808,3035.878,390.4576,0,0,0,0,100,0),
(@PATH,33,-3833.452,2993.256,390.4576,0,0,0,0,100,0),
(@PATH,34,-3866.545,2965.673,390.4576,0,0,0,0,100,0),
(@PATH,35,-3910.414,2965.875,390.4576,0,0,0,0,100,0),
(@PATH,36,-3933.329,2966.657,390.4576,0,0,0,0,100,0),
(@PATH,37,-3954.885,2975.502,382.291,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE0000393AF6 .go -3910.414 2965.875 390.4576

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 132560;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4210.051,`position_y`=3036.035,`position_z`=359.2715 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4210.051,3036.035,359.2715,0,0,0,0,100,0),
(@PATH,2,-4197.814,3024.344,366.188,0,0,0,0,100,0),
(@PATH,3,-4166.595,3015.782,353.327,0,0,0,0,100,0),
(@PATH,4,-4119.361,3000.518,350.3828,0,0,0,0,100,0),
(@PATH,5,-4078.058,3004.437,346.7713,0,0,0,0,100,0),
(@PATH,6,-4047.495,3033.212,346.8269,0,0,0,0,100,0),
(@PATH,7,-4037.817,3075.937,350.9382,0,0,0,0,100,0),
(@PATH,8,-4037.221,3122.487,345.1326,0,0,0,0,100,0),
(@PATH,9,-4020.077,3150.257,329.8825,0,0,0,0,100,0),
(@PATH,10,-3983.114,3172.777,330.1326,0,0,0,0,100,0),
(@PATH,11,-3945.796,3163.176,338.4935,0,0,0,0,100,0),
(@PATH,12,-3906.744,3138.077,347.0493,0,0,0,0,100,0),
(@PATH,13,-3872.958,3116.541,357.4377,0,0,0,0,100,0),
(@PATH,14,-3857.695,3086.127,367.6046,0,0,0,0,100,0),
(@PATH,15,-3866.051,3043.046,372.1045,0,0,0,0,100,0),
(@PATH,16,-3902.363,3025,374.7159,0,0,0,0,100,0),
(@PATH,17,-3939.945,3047.438,368.138,0,0,0,0,100,0),
(@PATH,18,-3976.81,3075.321,357.9659,0,0,0,0,100,0),
(@PATH,19,-4015.781,3101.057,352.3272,0,0,0,0,100,0),
(@PATH,20,-4057.297,3120.64,344.0215,0,0,0,0,100,0),
(@PATH,21,-4093.992,3151.9,340.0216,0,0,0,0,100,0),
(@PATH,22,-4133.575,3148.626,338.077,0,0,0,0,100,0),
(@PATH,23,-4161.596,3113.013,348.6326,0,0,0,0,100,0),
(@PATH,24,-4193.336,3081.118,359.2715,0,0,0,0,100,0),
(@PATH,25,-4214.105,3060.078,359.2715,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE0000393F44 .go -4210.051 3036.035 359.2715

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86117;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3894.564,`position_y`=3430.655,`position_z`=372.4708 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3894.564,3430.655,372.4708,0,0,0,0,100,0),
(@PATH,2,-3857.21,3447.031,372.4708,0,0,0,0,100,0),
(@PATH,3,-3823.56,3471.693,372.4708,0,0,0,0,100,0),
(@PATH,4,-3784.599,3479.697,372.4708,0,0,0,0,100,0),
(@PATH,5,-3742.468,3490.947,353.0265,0,0,0,0,100,0),
(@PATH,6,-3709.652,3520.501,345.0263,0,0,0,0,100,0),
(@PATH,7,-3664.314,3533.171,334.0263,0,0,0,0,100,0),
(@PATH,8,-3616.403,3539.115,323.9706,0,0,0,0,100,0),
(@PATH,9,-3582.801,3553.028,325.193,0,0,0,0,100,0),
(@PATH,10,-3589.008,3587.388,329.9429,0,0,0,0,100,0),
(@PATH,11,-3636.932,3603.025,325.1376,0,0,0,0,100,0),
(@PATH,12,-3663.247,3624.526,321.2208,0,0,0,0,100,0),
(@PATH,13,-3704.071,3625.825,318.6652,0,0,0,0,100,0),
(@PATH,14,-3750.566,3629.281,322.7488,0,0,0,0,100,0),
(@PATH,15,-3785.251,3646.629,322.5265,0,0,0,0,100,0),
(@PATH,16,-3821.648,3660.992,332.4431,0,0,0,0,100,0),
(@PATH,17,-3844.523,3693.082,347.1931,0,0,0,0,100,0),
(@PATH,18,-3873.079,3712.225,349.1932,0,0,0,0,100,0),
(@PATH,19,-3903.724,3693.448,347.4153,0,0,0,0,100,0),
(@PATH,20,-3935.185,3680.15,346.9429,0,0,0,0,100,0),
(@PATH,21,-3961.531,3655.501,345.2486,0,0,0,0,100,0),
(@PATH,22,-3966.79,3606.822,348.2763,0,0,0,0,100,0),
(@PATH,23,-3973.929,3571.161,341.0261,0,0,0,0,100,0),
(@PATH,24,-3980.9,3522.605,335.8875,0,0,0,0,100,0),
(@PATH,25,-4004.451,3487.919,317.9431,0,0,0,0,100,0),
(@PATH,26,-4001.448,3441.261,334.3042,0,0,0,0,100,0),
(@PATH,27,-3966.929,3406.75,330.5819,0,0,0,0,100,0),
(@PATH,28,-3922.993,3396.193,351.9707,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE00003946C7 .go -3894.564 3430.655 372.4708

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86131;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3884.442,`position_y`=3113.831,`position_z`=389.185 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3884.442,3113.831,389.185,0,0,0,0,100,0),
(@PATH,2,-3869.677,3093.181,392.3522,0,0,0,0,100,0),
(@PATH,3,-3876.115,3078.8,392.3522,0,0,0,0,100,0),
(@PATH,4,-3900.006,3066.922,392.3522,0,0,0,0,100,0),
(@PATH,5,-3934.172,3083.277,392.3522,0,0,0,0,100,0),
(@PATH,6,-3942.406,3108.275,392.3522,0,0,0,0,100,0),
(@PATH,7,-3955.406,3132.591,392.3522,0,0,0,0,100,0),
(@PATH,8,-3983.802,3151.235,400.1577,0,0,0,0,100,0),
(@PATH,9,-4018.729,3167.318,408.8244,0,0,0,0,100,0),
(@PATH,10,-4048.56,3146.723,397.5466,0,0,0,0,100,0),
(@PATH,11,-4034.677,3106.917,375.3246,0,0,0,0,100,0),
(@PATH,12,-3999.241,3105.82,364.3524,0,0,0,0,100,0),
(@PATH,13,-3976.743,3112.321,363.4634,0,0,0,0,100,0),
(@PATH,14,-3934.065,3120.998,373.4079,0,0,0,0,100,0),
(@PATH,15,-3904.763,3124.439,386.7683,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE0000394785 .go -3884.442 3113.831 389.185

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 83237;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-3620.779,`position_y`=3761.98,`position_z`=319.1757 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-3620.779,3761.98,319.1757,0,0,0,0,100,0),
(@PATH,2,-3621.137,3762.914,319.1757,0,0,0,0,100,0),
(@PATH,3,-3621.72,3753.039,319.025,0,0,0,0,100,0),
(@PATH,4,-3619.644,3727.897,309.8305,0,0,0,0,100,0),
(@PATH,5,-3627.178,3681.108,308.5527,0,0,0,0,100,0),
(@PATH,6,-3656.429,3650.599,304.2195,0,0,0,0,100,0),
(@PATH,7,-3696.808,3638.603,303.0528,0,0,0,0,100,0),
(@PATH,8,-3734.566,3654.597,302.6361,0,0,0,0,100,0),
(@PATH,9,-3766.324,3670.245,301.1362,0,0,0,0,100,0),
(@PATH,10,-3799.271,3684.971,303.1361,0,0,0,0,100,0),
(@PATH,11,-3832.15,3705.031,308.4691,0,0,0,0,100,0),
(@PATH,12,-3868.131,3721.502,318.4415,0,0,0,0,100,0),
(@PATH,13,-3909.399,3735.214,328.5527,0,0,0,0,100,0),
(@PATH,14,-3931.017,3766.784,334.3581,0,0,0,0,100,0),
(@PATH,15,-3917.445,3807.967,334.4695,0,0,0,0,100,0),
(@PATH,16,-3890.349,3823.759,327.1638,0,0,0,0,100,0),
(@PATH,17,-3849.03,3819.391,319.025,0,0,0,0,100,0),
(@PATH,18,-3822.998,3781.306,314.3583,0,0,0,0,100,0),
(@PATH,19,-3792.191,3762.3,302.9972,0,0,0,0,100,0),
(@PATH,20,-3753.88,3777.921,300.1917,0,0,0,0,100,0),
(@PATH,21,-3738.559,3813.297,304.1084,0,0,0,0,100,0),
(@PATH,22,-3707.912,3826.754,304.9972,0,0,0,0,100,0),
(@PATH,23,-3666.76,3801.158,304.9972,0,0,0,0,100,0),
(@PATH,24,-3632.452,3787.691,313.8025,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE00003981C1 .go -3620.779 3761.98 319.1757

-- Pathing for Monstrous Kaliri Entry: 23051 'TDB FORMAT' 
SET @NPC := 86133;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-4210.051,`position_y`=3036.035,`position_z`=359.2715 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-4210.051,3036.035,359.2715,0,0,0,0,100,0),
(@PATH,2,-4197.814,3024.344,366.188,0,0,0,0,100,0),
(@PATH,3,-4166.595,3015.782,353.327,0,0,0,0,100,0),
(@PATH,4,-4119.361,3000.518,350.3828,0,0,0,0,100,0),
(@PATH,5,-4078.058,3004.437,346.7713,0,0,0,0,100,0),
(@PATH,6,-4047.495,3033.212,346.8269,0,0,0,0,100,0),
(@PATH,7,-4037.817,3075.937,350.9382,0,0,0,0,100,0),
(@PATH,8,-4037.221,3122.487,345.1326,0,0,0,0,100,0),
(@PATH,9,-4020.077,3150.257,329.8825,0,0,0,0,100,0),
(@PATH,10,-3983.114,3172.777,330.1326,0,0,0,0,100,0),
(@PATH,11,-3945.796,3163.176,338.4935,0,0,0,0,100,0),
(@PATH,12,-3906.744,3138.077,347.0493,0,0,0,0,100,0),
(@PATH,13,-3872.958,3116.541,357.4377,0,0,0,0,100,0),
(@PATH,14,-3857.695,3086.127,367.6046,0,0,0,0,100,0),
(@PATH,15,-3866.051,3043.046,372.1045,0,0,0,0,100,0),
(@PATH,16,-3902.363,3025,374.7159,0,0,0,0,100,0),
(@PATH,17,-3939.945,3047.438,368.138,0,0,0,0,100,0),
(@PATH,18,-3976.81,3075.321,357.9659,0,0,0,0,100,0),
(@PATH,19,-4015.781,3101.057,352.3272,0,0,0,0,100,0),
(@PATH,20,-4057.297,3120.64,344.0215,0,0,0,0,100,0),
(@PATH,21,-4093.992,3151.9,340.0216,0,0,0,0,100,0),
(@PATH,22,-4133.575,3148.626,338.077,0,0,0,0,100,0),
(@PATH,23,-4161.596,3113.013,348.6326,0,0,0,0,100,0),
(@PATH,24,-4193.336,3081.118,359.2715,0,0,0,0,100,0),
(@PATH,25,-4214.105,3060.078,359.2715,0,0,0,0,100,0);
-- 0x1C393042401682C00000DE00003985F0 .go -4210.051 3036.035 359.2715

UPDATE `waypoint_data` SET `move_type`=1 WHERE  `id` IN (132553 * 10, 86115 * 10, 79017 * 10, 132567 * 10, 132557 * 10, 86099 * 10, 132562 * 10, 132558 * 10, 86116 * 10, 132564 * 10, 132554 * 10, 83238 * 10, 132566 * 10, 132556 * 10, 132565 * 10, 132555 * 10, 132560 * 10, 86117 * 10, 86131 * 10, 83237 * 10, 86133 * 10);

-- Pathing for Bonechewer Devastator Entry: 16772 'TDB FORMAT' 
SET @NPC := 57784;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2979.448,`position_y`=3526.724,`position_z`=-5.101617 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2979.448,3526.724,-5.101617,0,0,0,0,100,0),
(@PATH,2,-2986.465,3536.819,-4.151853,0,0,0,0,100,0),
(@PATH,3,-2999.478,3533.506,-2.088938,0,0,0,0,100,0),
(@PATH,4,-3001.169,3532.58,-1.651159,0,0,0,0,100,0),
(@PATH,5,-3001.333,3532.634,-1.814128,0,0,0,0,100,0),
(@PATH,6,-2988.259,3537.786,-3.722197,0,0,0,0,100,0),
(@PATH,7,-2983.174,3532.755,-5.044437,0,0,0,0,100,0),
(@PATH,8,-2984.85,3516.351,-3.515834,0,0,0,0,100,0);
-- 0x1C393042401061000000DE0000397551 .go -2979.448 3526.724 -5.101617
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (6847, 7849);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(6847, 12, 0, 0, ''),
(7849, 12, 1, 0, '');
DELETE FROM `spell_proc_event` WHERE `entry` IN (33953);
INSERT INTO `spell_proc_event` (`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`) VALUES
(33953, 0x00, 0x00, 0x00000000, 0x00000000, 0x00000000, 0x00004400, 0x00000000, 0, 0, 45);
-- Actionlist SAI
SET @ENTRY := 6192700;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,1,0,0,0,100,0,60000,60000,0,0,12,2202,3,120000,0,0,0,8,0,0,0,4988.25,568.897,3.15542,5,"Bonfire - On Script - Summon Creature 'Greymist Coastrunner'"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,2202,3,120000,0,0,0,8,0,0,0,4998.76,568.891,3.21375,5,"Bonfire - On Script - Summon Creature 'Greymist Coastrunner'"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,12,2202,3,120000,0,0,0,8,0,0,0,4994.69,573.448,2.4842,5,"Bonfire - On Script - Summon Creature 'Greymist Coastrunner'"),
(@ENTRY,9,4,0,0,0,100,0,60000,60000,0,0,12,2205,3,120000,0,0,0,8,0,0,0,4988.25,568.897,3.15542,5,"Bonfire - On Script - Summon Creature 'Greymist Warrior'"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,12,2205,3,120000,0,0,0,8,0,0,0,4998.76,568.891,3.21375,5,"Bonfire - On Script - Summon Creature 'Greymist Warrior'"),
(@ENTRY,9,6,0,0,0,100,0,60000,60000,0,0,12,2206,3,120000,0,0,0,8,0,0,0,4998.76,568.891,3.21375,5,"Bonfire - On Script - Summon Creature 'Greymist Hunter'"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,12,10323,3,120000,0,0,0,8,0,0,0,4994.69,573.448,2.4842,5,"Bonfire - On Script - Summon Creature 'Murkdeep'");

-- Bonfire SAI
SET @ENTRY := 61927;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,38,0,100,0,0,1,0,0,80,6192700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bonfire - On Data Set 0 1 - Run Script");

-- Greymist Hunter SAI
SET @GUID := -37989;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=2206;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,6,0,100,0,0,1,0,0,45,0,1,0,0,0,0,14,48515,61927,0,0,0,0,0,"Greymist Hunter - On Just Died -Set Data 0 1");
DELETE FROM `spell_group` WHERE `id`=1 AND `spell_id`=63729;
INSERT INTO `spell_group` (`id`, `spell_id`) VALUES 
(1, 63729);
-- Delete wrong data for achiev Flirt With Disaster
DELETE FROM `player_factionchange_achievement` WHERE `alliance_id`=1280 AND `horde_id`=1279;
SET @gob:=192492;
SET @spell:=56649;
SET @Veranus:=30393;
SET @Thorim:= 30390;
SET @Jokkum:=30331;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Veranus, @Thorim, @Jokkum);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Veranus, @Thorim, @Jokkum);
UPDATE `creature_template` SET `ScriptName`="", `MovementType`=2 WHERE `entry`=@Jokkum;

DELETE FROM `creature_template_addon` WHERE `entry`=@Veranus;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(@Veranus, 0, 0, 33554432, 0, 0, '55971');

DELETE FROM `vehicle_template_accessory` where `entry` IN (@Veranus) AND `accessory_entry` in (@Thorim);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`)VALUES
(@Veranus,@Thorim,0,0,'Veranus',8,0);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@Veranus);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@Veranus, 46598, 1, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9900;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,9900,0,0,0,9,0,13010,0,0,0,0,'','Show gossip if player has quest completed'),
(15,9900,0,0,0,5,0,1119,704,0,0,0,'','Show gossip if player is at least friendly');

DELETE FROM `smart_scripts` WHERE `entryorguid` = @Jokkum AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Thorim AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Veranus AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Jokkum*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Thorim*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Thorim*100+1 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Thorim*100+2 AND `source_type` = 9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Jokkum, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 53, 1, @Jokkum*100, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - JustSummoned - Start WP'),
(@Jokkum, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - JustSummoned - Talk1'),
(@Jokkum, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 768, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - JustSummoned - Add unit flag'),
(@Jokkum, 0, 3, 0, 40, 0, 100, 0, 22, @Jokkum*100, 0, 0, 80, @Jokkum*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - On way pont 22 - Actionlist'),
(@Jokkum*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, @spell, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Cast spell to summon'),
(@Jokkum*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 103, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Root'),
(@Jokkum*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Talk2'),
(@Jokkum*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 53, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Emote'),
(@Jokkum*100, 9, 4, 0, 0, 0, 100, 0, 24000, 24000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 5, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 6, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 7, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 8, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - remove kneel'),
(@Jokkum*100, 9, 10, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 11, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 12, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 80, @Thorim*100+1, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Actionlist'),
(@Jokkum*100, 9, 13, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 14, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, @Thorim, 30, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 15, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'),
(@Jokkum*100, 9, 16, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - talk'), 
(@Jokkum*100, 9, 17, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 56545, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Cast credit'),
(@Jokkum*100, 9, 18, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Cast eject passenger'),
(@Jokkum*100, 9, 19, 0, 0, 0, 100, 0, 0, 0, 0, 0, 103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - remove root'),
(@Jokkum*100, 9, 20, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 53, 1, @Jokkum*100+1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jokkum - ActionList - Start WP2'),
(@Thorim*100+1, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 50, @gob, 400000, 0, 0, 0, 0, 8, 0, 0, 0, 7867.189453, -3255.752930, 853.379700, 2.321934, 'Thorim - ActionList - Spawn gob'),
(@Thorim*100+1, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 50, 188142, 400000, 0, 0, 0, 0, 8, 0, 0, 0, 7867.189453, -3255.752930, 850.467590, 2.321934, 'Thorim - ActionList - Spawn gob'),
(@Thorim, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, @Thorim*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - Just created - actionlist'),
(@Thorim*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - ActionList - set run ON'),
(@Thorim*100, 9, 1, 0, 0, 0, 100, 0, 18000, 18000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 7886.027344, -3239.358887, 849.435791, 3.769581, 'Thorim - ActionList - go to pos'), 
(@Thorim*100, 9, 2, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - ActionList - Aura state kneel'),
(@Thorim*100, 9, 3, 0, 0, 0, 100, 0, 460000, 460000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - ActionList - Aura state kneel'),
(@Thorim, 0, 1, 0, 19, 0, 100, 0, 13057, 0, 0, 0, 80, @Thorim*100+2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - Just created - actionlist'),
(@Thorim*100+2, 9, 0, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Thorim - ActionList - Aura state kneel'),
(@Veranus, 0, 0, 1, 54, 0, 100, 0, 0, 0, 0, 0, 53, 1, @Veranus*100, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Veranus - JustSummoned - Start WP'),
(@Veranus, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 33554432, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Veranus - JustSummoned - Set unit_flag not selectable'),
(@Veranus, 0, 2, 0, 40, 0, 100, 0, 2, 0, 0, 0, 11, 50630, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Veranus - On waypoint 2 - Eject passenger');

DELETE FROM `waypoint_data` WHERE `id` IN (2072200, 2072201);

DELETE FROM `waypoints` WHERE `entry`IN (@Jokkum*100+1, @Jokkum*100, @Veranus*100);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@Jokkum*100+1,1,7837.09, -3235.54, 853.878, '@Jokkum'),
(@Jokkum*100+1,2,7828.62, -3230.38, 855.915, '@Jokkum'),
(@Jokkum*100+1,3,7793.78, -3219.74, 861.146, '@Jokkum'),
(@Jokkum*100+1,4,7765.22, -3225.37, 864.083, '@Jokkum'),
(@Jokkum*100+1,5,7736.73, -3226.5, 861.458, '@Jokkum'),
(@Jokkum*100,1,7357.09,-2865.4,803.501, '@Jokkum'),
(@Jokkum*100,2,7355.18,-2904.32,821.008, '@Jokkum'),
(@Jokkum*100,3,7355.47,-2946.65,833.092, '@Jokkum'),
(@Jokkum*100,4,7358.79,-2974.21,845.018, '@Jokkum'),
(@Jokkum*100,5,7360.87,-2994.78,845.989, '@Jokkum'),
(@Jokkum*100,6,7378.76,-3035.89,840.6, '@Jokkum'),
(@Jokkum*100,7,7411.66,-3072.21,837.577, '@Jokkum'),
(@Jokkum*100,8,7454,-3088.7,837.577, '@Jokkum'),
(@Jokkum*100,9,7496.08,-3113.92,837.583, '@Jokkum'),
(@Jokkum*100,10,7536.84,-3136.49,837.581, '@Jokkum'),
(@Jokkum*100,11,7564.74,-3145.14,844.831, '@Jokkum'),
(@Jokkum*100,12,7604.36,-3171.26,850.887, '@Jokkum'),
(@Jokkum*100,13,7635.47,-3207.21,857.19, '@Jokkum'),
(@Jokkum*100,14,7657.86,-3219.26,863.19, '@Jokkum'),
(@Jokkum*100,15,7685.42,-3218.98,867.141, '@Jokkum'),
(@Jokkum*100,16,7706.54,-3219.74,864.333, '@Jokkum'),
(@Jokkum*100,17,7747.33,-3226.99,862.458, '@Jokkum'),
(@Jokkum*100,18,7796.66,-3221.78,860.646, '@Jokkum'),
(@Jokkum*100,19,7827.6, -3229.27,856.415, '@Jokkum'),
(@Jokkum*100,20,7846.17,-3253.24,852.128, '@Jokkum'),
(@Jokkum*100,21,7849.41,-3270.86,854.538, '@Jokkum'),
(@Jokkum*100,22,7853.12,-3268.03,853.50, '@Jokkum'),
(@Veranus*100,1, 7915.017578, -3202.903076, 899.580872, '@Veranus'),
(@Veranus*100,2, 7889.363770, -3236.394043, 899.580872, '@Veranus'),  
(@Veranus*100,3, 7865.838867, -3266.453369, 899.580872, '@Veranus'),
(@Veranus*100,4, 7929.517578, -3369.971191, 899.580872, '@Veranus');
UPDATE `spell_area` SET `quest_end`='13157', `quest_end_status`='1' WHERE `spell`='57674' and`area`='4504' and`quest_start`='13086' and`aura_spell`='0' and`racemask`='0' and`gender`='2';
-- North Sea Kraken SAI
SET @ENTRY := 34925;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,6000,9000,7000,9000,11,66514,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Sea Kraken - IC - Cast Frost Breath'),
(@ENTRY,0, 1,0,8,0,25,0,66588,0,0,0,80,@ENTRY*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'North Sea Kraken - On Spell hit Flaming Sphere - actionList'),
(@ENTRY*100,9,0,0,0,0,100,0,0,0,0,0,11,66717,0,0,0,0,0,7,0,0,0,0,0,0,0,'North Sea Kraken - actionList - Cast 66717'),
(@ENTRY*100,9,1,0,0,0,100,0,0,0,0,0,11,50142,2,0,0,0,0,1,0,0,0,0,0,0,0,'North Sea Kraken - actionList - Cast 50142'),
(@ENTRY*100,9,2,0,0,0,100,0,3000,3000,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Sea Kraken - actionList - Turn Invisible'),
(@ENTRY*100,9,3,0,0,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'North Sea Kraken - actionList - Evade'),
(@ENTRY, 0, 2, 0, 1, 0, 100, 0, 30000, 30000, 30000, 30000, 47, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - OOC - Make Visible'),
(@ENTRY, 0, 3, 4, 2, 0, 100, 1, 1, 6, 0, 0, 11, 66994, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - On Between 1 and 6% HP - Cast Kraken Tooth Explosion'),
(@ENTRY, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 11, 66717, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - Linked with previous event - Give quest credit'),
(@ENTRY, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - Linked With Previous Event die'),
(@ENTRY, 0, 6, 0, 1, 0, 100, 0, 30000, 30000, 30000, 30000, 11, 68909, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - OOC - Cast Submerge '),
(@ENTRY, 0, 7, 0, 0, 0, 100, 0, 15000, 20000, 15000, 20000, 11, 66511, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northsea Kraken - IC - Whirl');
SET @Defender          := 10948; -- Darrowshire Defender
SET @Skeleton          := 10952; -- Maraudin Skeleton
SET @Corpse            := 10951; -- Marauding Corpse
SET @Silver            := 10949; -- Silver hand disciple
SET @Sevant            := 10953; -- Sevant of Horgus
SET @Lightfire         := 10944; -- Davil Lightfire
SET @Horgus            := 10946; -- Horgus the Ravager
SET @Betrayer          := 10947; -- Darrowshire Betrayer
SET @Redpath           := 10937; -- Captain Redpath 
SET @Bloodletter       := 10954; -- Bloodletter
SET @Marduk            := 10939; -- Marduk the Black
SET @CorruptedRed      := 10938; -- Redpath the Corrupted
SET @Joseph            := 10936; -- Joseph Redpath
SET @Davil             := 10945; -- Davil Crokford
SET @Pamela            := 10926; -- Pamela Redpath
SET @Relic             := 177526; -- Relic Bundle, spell:=18987

DELETE FROM `creature_template_addon` WHERE `entry` IN(@Silver ,@Lightfire, @Defender, @Joseph, @Davil, @Pamela, @Horgus);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(@Silver, 0, 0, 0, '17327'),
(@Lightfire, 0, 0, 0, '17327'), 
(@Defender, 0, 0, 0, '17327'),
(@Joseph, 0, 0, 0, '17327'),
(@Davil, 0, 0, 0, '17327'), 
(@Pamela, 0, 0, 0, '17327'),
(@Horgus, 0, 0, 0, '17467');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Defender, @Skeleton, @Corpse, @Sevant, @Lightfire, @Horgus, @Betrayer, @Redpath, @Bloodletter, @Marduk, @CorruptedRed, @Joseph, @Pamela, @Davil, @CorruptedRed);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=@Relic;
UPDATE `gameobject` SET `position_x`=1439.81, `position_y`=-3702.22, `position_z`=77.12 WHERE `guid`=99891;
UPDATE `creature` SET `Orientation`=2.276223 WHERE `id`=@Pamela;

DELETE FROM `creature_summon_groups` WHERE `summonerid`=@Redpath;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(@Redpath,0,0,@Defender,1484.442993, -3676.545410, 79.871506, 0.169049,8,0),
(@Redpath,0,0,@Defender,1497.560669, -3637.805176, 85.364410, 3.957781,8,0),  
(@Redpath,0,0,@Defender,1509.516357, -3640.667969, 88.113441, 4.707833,8,0), 
(@Redpath,0,0,@Defender,1511.495483, -3650.671631, 88.055191, 1.052592,8,0),
(@Redpath,0,0,@Defender,1503.856812, -3664.068359, 83.389610, 1.052592,8,0),
(@Redpath,0,0,@Defender,1494.220215, -3656.542725, 83.329399, 0.954417,8,0),
(@Redpath,0,0,@Defender,1495.856445, -3684.522461, 80.549515, 0.002224,8,0), 
(@Redpath,0,0,@Defender,1494.905640, -3678.563477, 80.728012, 6.140110,8,0), 
(@Redpath,0,0,@Defender,1494.013916, -3671.843262, 81.187721, 0.139665,8,0), 
(@Redpath,0,0,@Defender,1493.794922, -3665.639893, 81.787727, 5.719919,8,0),
(@Redpath,0,0,@Defender,1513.222290, -3693.317627, 84.312233, 2.388256,8,0),
(@Redpath,0,0,@Defender,1508.203369, -3701.367188, 81.152023, 1.888743,8,0),
(@Redpath,0,0,@Defender,1516.244263, -3706.704346, 82.785568, 5.756826,8,0),
(@Redpath,0,0,@Defender,1511.111084, -3709.822998, 82.240448, 2.073311,8,0),
(@Redpath,0,0,@Defender,1504.386353, -3709.648193, 81.169960, 0.557490,8,0),
(@Redpath,0,1,@Skeleton, 1497.560669, -3637.805176, 85.364410, 3.957781,8,0),  -- phase 1
(@Redpath,0,1,@Corpse, 1509.516357, -3640.667969, 88.113441, 4.707833,8,0), 
(@Redpath,0,1,@Skeleton ,1511.495483, -3650.671631, 88.055191, 1.052592,8,0),
(@Redpath,0,1,@Corpse, 1503.856812, -3664.068359, 83.389610, 1.052592,8,0),
(@Redpath,0,1,@Skeleton ,1494.220215, -3656.542725, 83.329399, 0.954417,8,0),
(@Redpath,0,1,@Skeleton, 1495.856445, -3684.522461, 80.549515, 0.002224,8,0), 
(@Redpath,0,1,@Corpse, 1494.905640, -3678.563477, 80.728012, 6.140110,8,0), 
(@Redpath,0,1,@Skeleton, 1494.013916, -3671.843262, 81.187721, 0.139665,8,0), 
(@Redpath,0,1,@Corpse, 1493.794922, -3665.639893, 81.787727, 5.719919,8,0),
(@Redpath,0,1,@Skeleton, 1513.222290, -3693.317627, 84.312233, 2.388256,8,0),
(@Redpath,0,1,@Corpse, 1508.203369, -3701.367188, 81.152023, 1.888743,8,0),
(@Redpath,0,1,@Skeleton, 1516.244263, -3706.704346, 82.785568, 5.756826,8,0),
(@Redpath,0,1,@Corpse, 1511.111084, -3709.822998, 82.240448, 2.073311,8,0),
(@Redpath,0,1,@Skeleton, 1504.386353, -3709.648193, 81.169960, 0.557490,8,0),
(@Redpath,0,2,@Sevant, 1497.560669, -3637.805176, 85.364410, 3.957781,8,0),  -- phase 2
(@Redpath,0,2,@Sevant, 1509.516357, -3640.667969, 88.113441, 4.707833,8,0), 
(@Redpath,0,2,@Sevant, 1511.495483, -3650.671631, 88.055191, 1.052592,8,0),
(@Redpath,0,2,@Sevant, 1503.856812, -3664.068359, 83.389610, 1.052592,8,0),
(@Redpath,0,2,@Sevant, 1494.220215, -3656.542725, 83.329399, 0.954417,8,0),
(@Redpath,0,2,@Sevant, 1495.856445, -3684.522461, 80.549515, 0.002224,8,0), 
(@Redpath,0,2,@Sevant, 1494.905640, -3678.563477, 80.728012, 6.140110,8,0), 
(@Redpath,0,2,@Sevant, 1494.013916, -3671.843262, 81.187721, 0.139665,8,0), 
(@Redpath,0,2,@Sevant, 1493.794922, -3665.639893, 81.787727, 5.719919,8,0),
(@Redpath,0,2,@Sevant, 1513.222290, -3693.317627, 84.312233, 2.388256,8,0),
(@Redpath,0,2,@Sevant, 1508.203369, -3701.367188, 81.152023, 1.888743,8,0),
(@Redpath,0,2,@Sevant, 1516.244263, -3706.704346, 82.785568, 5.756826,8,0),
(@Redpath,0,2,@Sevant, 1511.111084, -3709.822998, 82.240448, 2.073311,8,0),
(@Redpath,0,2,@Sevant, 1504.386353, -3709.648193, 81.169960, 0.557490,8,0),
(@Redpath,0,3,@Silver,1495.857910, -3682.440674,80.630501, 0.022911,8,0), 
(@Redpath,0,3,@Silver,1490.361938, -3684.647705, 80.350754, 0.285233,8,0), 
(@Redpath,0,3,@Silver,1495.075928, -3670.077148, 81.964828, 0.846651,8,0), 
(@Redpath,0,3,@Silver,1489.382568, -3666.546875, 81.307182, 0.058259,8,0),
(@Redpath,0,4,@Betrayer, 1497.560669, -3637.805176, 85.364410, 3.957781,8,0),  -- phase3
(@Redpath,0,4,@Betrayer, 1509.516357, -3640.667969, 88.113441, 4.707833,8,0), 
(@Redpath,0,4,@Betrayer, 1511.495483, -3650.671631, 88.055191, 1.052592,8,0),
(@Redpath,0,4,@Betrayer, 1503.856812, -3664.068359, 83.389610, 1.052592,8,0),
(@Redpath,0,4,@Betrayer, 1494.220215, -3656.542725, 83.329399, 0.954417,8,0),
(@Redpath,0,4,@Bloodletter, 1495.856445, -3684.522461, 80.549515, 0.002224,8,0), 
(@Redpath,0,4,@Bloodletter, 1494.905640, -3678.563477, 80.728012, 6.140110,8,0), 
(@Redpath,0,4,@Bloodletter, 1494.013916, -3671.843262, 81.187721, 0.139665,8,0), 
(@Redpath,0,4,@Bloodletter, 1493.794922, -3665.639893, 81.787727, 5.719919,8,0),
(@Redpath,0,4,@Betrayer, 1513.222290, -3693.317627, 84.312233, 2.388256,8,0),
(@Redpath,0,4,@Betrayer, 1508.203369, -3701.367188, 81.152023, 1.888743,8,0),
(@Redpath,0,4,@Betrayer, 1516.244263, -3706.704346, 82.785568, 5.756826,8,0),
(@Redpath,0,4,@Betrayer, 1511.111084, -3709.822998, 82.240448, 2.073311,8,0),
(@Redpath,0,4,@Betrayer, 1504.386353, -3709.648193, 81.169960, 0.557490,8,0);

DELETE FROM `smart_scripts` WHERE `entryorguid` = @Relic AND `source_type` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Relic*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lightfire  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lightfire *100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Defender  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Defender *100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marduk AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marduk*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Horgus AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Horgus*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Redpath*100+1 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @CorruptedRed AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @CorruptedRed*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Davil AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph*100 AND `source_type` = 9; 
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Joseph*100+1 AND `source_type` = 9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Relic, 1, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, @Relic*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Relic - On spawn - action list'),
(@Relic*100, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 12, @Redpath, 6, 6000, 0, 0, 0, 8, 0, 0, 0, 1453.091431, -3693.156494, 76.784241, 0.486776, 'Relic - action list - spawn Redpath'),
(@Redpath, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, @Redpath*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - On spawn - action list'),
(@Redpath*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Set invisible - action list'),
(@Redpath*100, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 107, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn groupe 1 - action list'),
(@Redpath*100, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Defender, 40, 0, 0, 0, 0, 0, 'Defender - talk1 - action list'),
(@Redpath*100, 9, 3, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g2 wave1- action list'),
(@Redpath*100, 9, 4, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g2 wave2 - action list'),
(@Redpath*100, 9, 5, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 12, @Lightfire, 6, 6000, 0, 0, 0, 8, 0, 0, 0, 1453.091431, -3693.156494, 76.784241, 0.486776, 'Redpath - spawn Lightfire - action list'),
(@Redpath*100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, @Davil, 8, 600000, 0, 0, 0, 8, 0, 0, 0, 1464.515991, -3678.878418, 78.043877, 0.577881, 'Redpath - Spawn Davil - action list'),
(@Redpath*100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 107, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g3 wave1 - action list'),
(@Redpath*100, 9, 8, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 107, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g4 wave1 - action list'),
(@Redpath*100, 9, 9, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 107, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g4 wave2 - action list'),
(@Redpath*100, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, @Horgus, 6, 6000, 0, 0, 0, 8, 0, 0, 0, 1501.275024, -3675.826172, 81.447624, 3.300069, 'Redpath - Spawn Horgus - action list'),
(@Redpath*100, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Horgus, 100, 0, 0, 0, 0, 0, 'Horgus - talk1 - action list'),
(@Horgus, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 11, 29060, 1, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Horgus - On spawn - cast spell 29060'),
(@Lightfire, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 53, 1,@Lightfire, 0, 0, 9000000, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Lightfire - On spawn - waypoint1'),
(@Lightfire, 0, 1, 0, 63, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lightfire - On spawn - texte1'),
(@Davil, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - On spawn - action list'),
(@Davil, 0, 1, 0, 63, 0, 100, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lightfire - On spawn - texte2'),
(@Joseph, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, @Joseph*100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - On spawn - action list'),
(@Joseph*100, 9, 0, 0, 0, 0, 100, 0, 30000, 30000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - despawn - action list'),
(@Joseph*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 0, @Joseph, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - Start Script - waypoint '),
(@Joseph*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - Start Script - remove npcflag'),
(@Joseph, 0, 1, 0, 40, 0, 100, 0, 4, 0, 0, 0, 80, @Joseph*100+1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - On waypoint4 - Start Script'),
(@Joseph*100+1, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - On Script - Talk1'),
(@Joseph*100+1, 9, 1, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Pamela, 10, 0, 0, 0, 0, 0, 'Pamela - On Script - Talk1'),
(@Joseph*100+1, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Pamela, 10, 0, 0, 0, 0, 0, 'Pamela - On Script - Talk2'),
(@Joseph*100+1, 9, 3, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @Pamela, 10, 0, 0, 0, 0, 0, 'Pamela - On Script - Talk3'),
(@Joseph*100+1, 9, 4, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, @Pamela, 10, 0, 0, 0, 0, 0, 'Pamela - On Script - Talk4'),
(@Joseph*100+1, 9, 5, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - On Script - Talk2'),
(@Joseph*100+1, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Joseph - despawn - action list'),
(@Joseph, 0, 2, 0, 64, 0, 100, 0, 0, 0, 0, 0, 33, @Joseph, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Joseph - On waypoint4 - Start Script'),
(@Horgus, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 80, @Horgus*100, 2, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Horgus - On death - action list'),
(@Horgus*100, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire -  talk 2 - action list'),
(@Horgus*100, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - talk 2 - action list'),
(@Horgus*100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire -  talk 3 - action list'),
(@Horgus*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire -  talk 3 - action list'),
(@Horgus*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire - On Script - Set React Passive'),
(@Horgus*100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0,19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire - On Script - Set Immune To NPC'),
(@Horgus*100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire - On Script - evade'),
(@Horgus*100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5, 65, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire - play emote - action list'),
(@Horgus*100, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, @Lightfire, 100, 0, 0, 0, 0, 0, 'Lightfire - despawn - action list'),
(@Horgus*100, 9, 9, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 47, 1, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - Visible On - action list'),
(@Horgus*100, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 53, 1, @Redpath, 0, 0, 0, 2, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - waypoint 1 - action list'),
(@Horgus*100, 9, 11, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath -  talk 1 - action list'),
(@Horgus*100, 9, 12, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Redpath -  talk 2 - action list'),
(@Horgus*100, 9, 13, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 107, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g1 wave3 - action list'),
(@Horgus*100, 9, 14, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 107, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g4 wave1 - action list'),
(@Horgus*100, 9, 15, 0, 0, 0, 100, 0, 25000, 25000, 0, 0, 107, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - Spawn g4 wave2 - action list'),
(@Horgus*100, 9, 16, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 86, 18650, 2, 19, @Redpath, 50, 0, 19, @Redpath, 50, 0, 0, 0, 0, 0, 'Redpath - Spawn Marduk - action list'),
(@Horgus*100, 9, 17, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Marduk, 100, 0, 0, 0, 0, 0, 'Marduk - talk 1 - action list'),
(@Horgus*100, 9, 18, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - On Script - Set React Passive'),
(@Horgus*100, 9, 19, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0,19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - On Script - Set Immune To NPC'),
(@Horgus*100, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - On Script - evade'),
(@Horgus*100, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 0, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - set visible off - action list'),
(@Horgus*100, 9, 22, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 12, @CorruptedRed, 6, 60000, 0, 0, 0, 8, 0, 0, 0, 1494.081055, -3676.041748,80.846764, 6.269975, 'Redpath - Spawn CorruptedRed - action list'),
(@Horgus*100, 9, 23, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @CorruptedRed, 40, 0, 0, 0, 0, 0, 'CorruptedRed - talk 1 - action list'),
(@Horgus*100, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @CorruptedRed, 40, 0, 0, 0, 0, 0, 'CorruptedRed - On talk 2 - action list'),
(@Horgus*100, 9, 25, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 41, 2, 0, 0, 0, 0, 0, 19, @Marduk, 40, 0, 0, 0, 0, 0, 'Marduk - Despawn - action list'),
(@Marduk, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 80, @Marduk*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Horgus - On spawn - ActionList'),
(@Marduk*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marduk - On Script - Root'),
(@Marduk*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marduk - On Script - Set React Passive'),
(@Marduk*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marduk - On Script - Unit flag non attackable'),
(@Marduk*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - On Script - Set Immune To NPC'),
(@Marduk*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 131072, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Redpath - On Script - Set PACIFIED'),
(@CorruptedRed, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 80, @CorruptedRed*100, 2, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'CorruptedRed - On death - action list'),
(@CorruptedRed*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, @Joseph, 8, 60000, 0, 0, 0, 8, 0, 0, 0, 1444.337891, -3702.661133, 77.368271, 0.860624, 'Joseph - Spawn  - action list'),
(@CorruptedRed*100, 9, 1, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 19, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - talk3 - action list'),
(@CorruptedRed*100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - talk4 - action list'),
(@CorruptedRed*100, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 19, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - talk5 - action list'),
(@CorruptedRed*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 47, 1, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - Set visible - action list'),
(@CorruptedRed*100, 9, 5, 0, 0, 0, 100, 0, 10000, 10000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - despawn - action list'),
(@CorruptedRed*100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Silver, 100, 0, 0, 0, 0, 0, 'Silver - despawn - action list'),
(@CorruptedRed*100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - despawn - action list'),
(@CorruptedRed*100, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Betrayer, 100, 0, 0, 0, 0, 0, 'Silver - despawn - action list'),
(@Lightfire, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 80, @Lightfire*100, 2, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Lightfire - On death - action list'),
(@Lightfire*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - talk4 - action list'),
(@Lightfire*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 6, 5721, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 0, 'Player - Quest failed - action list'),
(@Lightfire*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - despawn - action list'),
(@Lightfire*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Silver, 100, 0, 0, 0, 0, 0, 'Silver - despawn - action list'),
(@Lightfire*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @CorruptedRed, 100, 0, 0, 0, 0, 0, 'CorruptedRed - despawn - action list'),
(@Lightfire*100, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Betrayer, 100, 0, 0, 0, 0, 0, 'Betrayer - despawn - action list'),
(@Lightfire*100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Bloodletter, 100, 0, 0, 0, 0, 0, 'Bloodletter - despawn - action list'),
(@Lightfire*100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Sevant, 100, 0, 0, 0, 0, 0, 'Sevant - despawn - action list'),
(@Lightfire*100, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Horgus, 100, 0, 0, 0, 0, 0, 'Horgus - despawn - action list'),
(@Lightfire*100, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Skeleton, 100, 0, 0, 0, 0, 0, 'Skeleton - despawn - action list'),
(@Lightfire*100, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Corpse, 100, 0, 0, 0, 0, 0, 'Corpse - despawn - action list'),
(@Lightfire*100, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, @Redpath, 100, 0, 0, 0, 0, 0, 'Redpath - despawn - action list'),
(@Lightfire*100, 9, 12, 0, 0, 0, 100, 0, 1000, 4000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - despawn - action list'),
(@Redpath, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 80, @Redpath*100+1, 2, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Redpath - On death - action list'),
(@Redpath*100+1, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - talk1 - action list'),
(@Redpath*100+1, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 6, 5721, 0, 0, 0, 0, 0, 18, 100, 0, 0, 0, 0, 0, 0, 'Player - quest failed - action list'),
(@Redpath*100+1, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Defender, 100, 0, 0, 0, 0, 0, 'Defender - despawn - action list'),
(@Redpath*100+1, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Silver, 100, 0, 0, 0, 0, 0, 'Silver - despawn - action list'),
(@Redpath*100+1, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @CorruptedRed, 100, 0, 0, 0, 0, 0, 'CorruptedRed - despawn - action list'),
(@Redpath*100+1, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Betrayer, 100, 0, 0, 0, 0, 0, 'Betrayer - despawn - action list'),
(@Redpath*100+1, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Bloodletter, 100, 0, 0, 0, 0, 0, 'Bloodletter - despawn - action list'),
(@Redpath*100+1, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Sevant, 100, 0, 0, 0, 0, 0, 'Sevant - despawn - action list'),
(@Redpath*100+1, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Horgus, 100, 0, 0, 0, 0, 0, 'Horgus - despawn - action list'),
(@Redpath*100+1, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Skeleton, 100, 0, 0, 0, 0, 0, 'Skeleton - despawn - action list'),
(@Redpath*100+1, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, @Corpse, 100, 0, 0, 0, 0, 0, 'Corpse - despawn - action list'),
(@Redpath*100+1, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 19, @Davil, 100, 0, 0, 0, 0, 0, 'Davil - despawn - action list'),
(@Defender,0,0,0,0,0,100,0,3000,5000,5000,8000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,'Darrowshire Defender - In Combat - Cast Strike'),
(@Defender,0,1,0,0,0,100,0,5000,7000,7000,10000,11,12169,1,0,0,0,0,1,0,0,0,0,0,0,0,'Darrowshire Defender - In Combat - Cast Shield Block'),
(@Lightfire,0,4,0,4,0,100,1,0,0,0,0,11,17232,0,0,0,0,0,1,0,0,0,0,0,0,0,'Davil Lightfire - On Aggro - Cast Devotion Aura'),
(@Lightfire,0,5,0,0,0,100,0,5000,7000,8000,10000,11,17284,0,0,0,0,0,2,0,0,0,0,0,0,0,'Davil Lightfire - In Combat - Cast Holy Strike'),
(@Lightfire,0,6,0,0,0,100,0,8000,11000,15000,20000,11,13005,0,0,0,0,0,5,0,0,0,0,0,0,0,'Davil Lightfire - In Combat - Cast Hammer of Justice'),
(@Redpath,0,2,0,0,0,100,0,5000,7000,8000,10000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Cleave'),
(@Redpath,0,3,0,0,0,100,0,8000,10000,14000,18000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Backhand'),
(@Redpath,0,4,0,0,0,100,0,3000,5000,15000,20000,11,9128,0,0,0,0,0,1,0,0,0,0,0,0,0,'Captain Redpath - In Combat - Cast Battle Shout'),
(@Horgus,0,2,0,0,0,100,0,3000,5000,6000,8000,11,3391,0,0,0,0,0,1,0,0,0,0,0,0,0,'Horgus the Ravager - In Combat - Cast Thrash'),
(@Horgus,0,3,0,0,0,100,0,8000,11000,9000,12000,11,15608,1,0,0,0,0,2,0,0,0,0,0,0,0,'Horgus the Ravager - In Combat - Cast Ravenous Claw'),
(@CorruptedRed,0,1,0,0,0,100,0,3000,5000,5000,7000,11,15580,0,0,0,0,0,2,0,0,0,0,0,0,0,'Redpath the Corrupted - In Combat - Cast Strike'),
(@CorruptedRed,0,2,0,0,0,100,0,8000,10000,14000,18000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,'Redpath the Corrupted - In Combat - Cast Backhand'),
(@CorruptedRed,0,3,0,0,0,100,0,3000,5000,15000,20000,11,16244,0,0,0,0,0,1,0,0,0,0,0,0,0,'Redpath the Corrupted - In Combat - Cast Demoralizing Shout'),
(@CorruptedRed,0,4,0,0,0,100,0,5000,7000,9000,14000,11,12542,1,0,0,0,0,6,0,0,0,0,0,0,0,'Redpath the Corrupted - In Combat - Cast Fear');

DELETE FROM `waypoints` WHERE `entry` IN (@Lightfire, @Redpath, @Joseph);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@Lightfire,1, 1501.275024, -3675.826172, 81.447624,'Lightfire'),
(@joseph,1, 1433.060059, -3682.163086, 76.364197 , 'Joseph'),
(@joseph,2, 1433.873169, -3640.699707, 78.194763, 'Joseph'),
(@joseph,3, 1454.325439, -3595.439941, 86.951950, 'Joseph'),
(@joseph,4, 1455.368286, -3596.347900, 86.950905, 'Joseph'),
(@Redpath,1, 1501.275024, -3675.826172, 81.447624,'Redpath');

UPDATE `npc_text` SET `BroadcastTextID0`=7454  WHERE `ID`=4777;
DELETE FROM `gossip_menu` WHERE `entry`=3922 AND `text_id`=4777;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3922,4777);
UPDATE `creature_template` SET `gossip_menu_id`=3922 WHERE `entry`=10945;
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=10945;
UPDATE `npc_text` SET `BroadcastTextID0`=7455  WHERE `ID`=4778;
DELETE FROM `gossip_menu` WHERE `entry`=3861 AND `text_id`=4778;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3861,4778);
UPDATE `creature_template` SET `gossip_menu_id`=3861 WHERE `entry`=10936;
UPDATE `creature_template` SET `npcflag`=1 WHERE `entry`=10936;

DELETE FROM `creature_text` WHERE `entry` IN (@Defender, @Lightfire, @Horgus, @Redpath, @Marduk, @CorruptedRed, @Joseph, @Pamela, @Davil) ;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(@Defender, 0, 0, 'Darrowshire, to arms! The Scourge approach!', 14, 0, 100, 0, 0, 0, 'Defender1', 7358),
(@Lightfire, 0, 0, 'Do not lose hope, Darrowshire! We will not fall!', 14, 0, 100, 0, 0, 0, 'Lightfire1', 7343),
(@Horgus, 0, 0, 'The light burns bright in you, Davil, I will enjoy snuffing it out.', 14, 0, 100, 0, 0, 0, 'Horgus', 7344),
(@Lightfire, 1, 0, 'Horgus, your nightmare ends! Now!', 14, 0, 100, 0, 0, 0, 'Lightfire2', 7346),
(@Defender, 1, 0, 'Horgus is slain! Take heat, defenders of Darrowshire.', 14, 0, 100, 0, 0, 0, 'Defender2', 7368),
(@Lightfire, 2, 0, 'Ah! My wounds are too severe. Defenders, fight on without me!', 12, 0, 100, 0, 0, 0, 'Lightfire2', 7227),
(@Lightfire, 3, 0, 'Davil Lightfire has succumbed to his wounds!', 16, 0, 100, 0, 0, 0, 'Lightfire2', 7367),
(@Redpath, 0, 0, 'Defenders of Darrowshire! Rally! we must prevail!', 14, 0, 100, 0, 0, 0, 'Redpath1', 7355),
(@Davil, 1, 0, 'Captain Redpath has appeared on the battlefield! Protect him!', 41, 0, 100, 0, 0, 0, 'Redpath2', 45683),
(@Davil, 0, 0, 'Captain Redpath!  How could you forsake us!', 41, 0, 100, 0, 0, 0, 'Redpath3', 7212),
(@Davil, 2, 0, 'Protect Davil Lightfire!', 41, 0, 100, 0, 0, 0, 'Lightfire1', 45681),
(@Davil, 3, 0, 'Davil Lightfire is defeated!  Darrowshire is lost!', 41, 0, 100, 0, 0, 0, 'Redpath4', 7366),
(@Marduk, 0, 0, 'Redpath! Your life ends, here and now!', 12, 0, 100, 0, 0, 0, 'Marduk1', 7471),
(@CorruptedRed, 0, 0, 'Darrowshire! Your are doomed!', 14, 0, 100, 0, 0, 0, 'CorruptedRed1', 7356),
(@CorruptedRed, 1, 0, 'Captain Joseph Redpath has been corrupted! Kill him quickly!', 41, 0, 100, 0, 0, 0, 'CorruptedRed2', 45684),
(@Defender, 2, 0, 'Captain Redpath is slain!', 14, 0, 100, 0, 0, 0, 'Defender3', 7369),
(@Defender, 3, 0, 'The Scourge are defeated! Darrowshire is saved!', 14, 0, 100, 0, 0, 0, 'Defender4', 7407),
(@Defender, 4, 0, 'Speak with Joseph Redpath in the center of Darrowshire.', 41, 0, 100, 0, 0, 0, 'Defender5', 45685),
(@Joseph, 0, 0, 'Pamela? Are you there, honey?', 12, 0, 100, 0, 0, 0, 'Joseph1', 7397),
(@Pamela, 0, 0, 'Daddy!', 12, 0, 100, 0, 0, 0, 'Pamela1', 7399),
(@Pamela, 1, 0, 'Daddy! You''re back!', 12, 0, 100, 0, 0, 0, 'Pamela2', 7400),
(@Pamela, 2, 0, 'Let''s go play! No, tell me a story, Daddy! No... let''s go pick flowers! And play tea time! I found my dollie, did I tell you?', 12, 0, 100, 0, 0, 0, 'Pamela3', 7401),
(@Pamela, 3, 0, 'I missed you so much, Daddy!', 12, 0, 100, 0, 0, 0, 'Pamela4', 7402),
(@Joseph, 1, 0, 'I missed you too, honey. And I''m finally home...', 12, 0, 100, 0, 0, 0, 'Joseph2', 7403);
DELETE FROM `spell_scripts` WHERE `id`= 66477;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(66477, 0, 0, 15, 66622, 2, 1, 0, 0, 0, 0),
(66477, 0, 0, 15, 66478, 2, 1, 0, 0, 0, 0),
(66477, 0, 0, 15, 66041, 2, 1, 0, 0, 0, 0);
-- A Distraction For Akama
SET @Maiev          := 22989; -- Maev
SET @Akama          := 22990; -- Akama
SET @Vagath         := 23152; -- Vagath 
SET @IllidariShadow := 22988; -- IllidariShadow
SET @Ashtongue      := 21701; -- Ashtongue
SET @FanOfBlades    := 39954; -- Maev spell
SET @Stealth        := 34189; -- Maev spell
SET @ChainLightning := 39945; -- Akama spell 
SET @Xiri           := 18528; -- XI'RI
SET @IllidariRavag  := 22857; -- Illidari Ravager
SET @LightOfTheNaa1 := 39829; -- XI'RI spell
SET @LightOfTheNaa2 := 39831; -- XI'RI spell
SET @FyraDawnstar   := 22864; -- FyraDawnstar
SET @Caalen         := 22862; -- Anachorete Caalen
SET @Lightsworn     := 22861; -- Lightsworn Vindicator
SET @Magister       := 22863; -- Seasoned Magister
SET @ID             := 8650;  -- Gossip Menu

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (22989, 22990, 23152, 22988, 21701, 18528, 22857, 22864, 22863, 22862, 22861);
UPDATE `creature_template` SET `npcflag`=0 where `entry`=22990;
DELETE FROM creature_summon_groups WHERE summonerid=@Xiri;
INSERT INTO `creature_summon_groups` (`summonerId`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `summonType`, `summonTime`) VALUES
(@Xiri,0,0,@Akama,-3557.775635,624.185852,6.244853,4.687259,3,300000),
(@Xiri,0,0,@Maiev,-3563.998047,623.326050,6.134195,4.687259,3,300000),  
(@Xiri,0,0,@Ashtongue,-3568.963867,627.467407,5.477327,4.742220,3,300000), 
(@Xiri,0,0,@Ashtongue,-3565.453125,627.804199,5.458982,4.801125,3,300000),
(@Xiri,0,0,@Ashtongue,-3561.734375,628.002930,5.536494,4.76578,3,300000),
(@Xiri,0,0,@Ashtongue,-3557.638428,628.221863,5.681130,4.76578,3,300000),
(@Xiri,0,0,@Ashtongue,-3554.038574,628.414246,5.853768,4.76578,3,300000), 
(@Xiri,0,0,@Ashtongue,-3557.367188,632.975952,5.016828,4.830713,3,300000), 
(@Xiri,0,0,@Ashtongue,-3561.433350,632.492554,4.889128,4.830713,3,300000), 
(@Xiri,0,0,@Ashtongue,-3565.568848,632.000916,4.862391,4.830713,3,300000),
(@Xiri,0,0,@Vagath,-3564.023438,406.373199,29.640791,1.577282,3,300000),
(@Xiri,0,0,@IllidariRavag,-3570.985840,408.893219,29.715797,1.529191,3,300000),
(@Xiri,0,0,@IllidariRavag,-3556.721924,409.166534,29.495508,1.599877,3,300000),
(@Xiri,0,0,@IllidariShadow,-3571.129395,418.261780,28.846333,1.556680,3,300000),
(@Xiri,0,0,@IllidariShadow,-3581.750977,417.807861,30.357321,1.560607,3,300000),
(@Xiri,0,0,@IllidariShadow,-3576.343506,424.403748,28.781679,1.482065,3,300000),
(@Xiri,0,0,@IllidariShadow,-3568.493652,427.238312,28.031080,1.609870,3,300000),
(@Xiri,0,0,@IllidariShadow,-3559.938232,428.418793,27.697611,1.641286,3,300000),
(@Xiri,0,0,@IllidariShadow,-3564.919678,432.020447,27.485765,1.633432,3,300000);

DELETE FROM `creature_text` WHERE `entry` IN (@Akama, @FyraDawnstar, @Caalen, @Vagath, @Maiev, @Xiri) ;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES
(@FyraDawnstar, 0, 0, 'Onward, Scryers! Show Illidan''s lackeys the temper of our steel!', 14, 0, 100, 0, 0, 0, 'Fyra Downstar', 20696),
(@Caalen, 0, 0, 'Come closer, demon! Death awaits!', 12, 0, 100, 0, 0, 0, 'Caalen', 20670),
(@Caalen, 0, 1, 'Illidan''s lapdogs! Destroy them all!', 12, 0, 100, 0, 0, 0, 'Caalen', 20669),
(@Caalen, 0, 2, 'I''ve a message for your master, scum!', 12, 0, 100, 0, 0, 0, 'Caalen', 20672),
(@Caalen, 0, 3, 'Pathetic worm... your master''s days are over!', 12, 0, 100, 0, 0, 0, 'Caalen', 20671),
(@Caalen, 0, 4, 'For Xi''ri!  For the Sha''tar!', 12, 0, 100, 0, 0, 0, 'Caalen', 20667),
(@Caalen, 0, 5, 'Your end is at hand, Illidari!', 12, 0, 100, 0, 0, 0, 'Caalen', 20668),
(@Vagath, 0, 0, 'Pitiful wretches. You dared invade Illidan''s temple? Very well, I shall make it your death bed!', 14, 0, 100, 0, 0, 0, 'Vagath', 20719),
(@Akama, 0, 0, 'Now is the time, Maiev! Unleash your wrath!', 14, 0, 100, 0, 0, 0, 'Akama', 20742),
(@Maiev, 0, 0, 'I''ve waited for this moment for years. Illidan and his lapdogs will be destroyed!', 14, 0, 100, 0, 0, 0, 'Maiev', 20743),
(@Akama, 1, 0, 'Slay all who see us! Word must not get back to Illidan.', 14, 0, 100, 0, 0, 0, 'Akama', 20744),
(@Maiev, 1, 0, 'Meet your end, demon!', 12, 0, 100, 0, 0, 0, 'Maiev', 0),
(@Vagath, 1, 0, 'You''ve sealed you fate, Akama. The Master will learn from your betrayal!', 14, 0, 100, 0, 0, 0, 'Vagath', 20745),
(@Akama, 2, 0, 'Akama has no master, not anymore.', 12, 0, 100, 0, 0, 0, 'Akama', 20746),
(@Akama, 3, 0, 'Our plans are in danger already. It appears Maiev''s decided to do things her own way.', 12, 0, 100, 0, 0, 0, 'Akama', 20748),
(@Akama, 4, 0, '%s''s attention shifts to a crack along the temple''s southern wall.', 16, 0, 100, 0, 0, 0, 'Akama', 20749),
(@Akama, 5, 0, 'We must carry on with or without Maiev. Inside! Quickly!', 12, 0, 100, 0, 0, 0, 'Akama', 20750),
(@Xiri, 0, 0, '%s falls silent and a quiet tension falls over nearby Sha''tar forces as Xi''ri makes his decision.', 16, 0, 100, 0, 0, 0, 'Xiri', 20737),
(@Xiri, 1, 0, '%s begins channeling the powers of the light.', 16, 0, 100, 0, 0, 0, 'Xiri', 20693);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 8650 AND `id` = 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `OptionBroadcastTextID`) VALUES 
(8650,0,0, 'I am ready to join you for the battle, Xi''ri.',1,1,0,0,0,0, '', 21003);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@ID;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@ID,0,0,9,10985,0,0,0,'','Show gossip menu if player accept the quest A distraction for Akama');

DELETE FROM `smart_scripts` WHERE `entryorguid` = @Akama AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Akama*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Maiev AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Maiev*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Xiri AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Xiri*100 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Xiri*100+1 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Xiri*100+2 AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Ashtongue AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Vagath AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lightsworn AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Magister AND `source_type` = 0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Xiri, 0, 0, 0, 62, 0, 100, 0, 8650, 0, 0, 0, 80, @Xiri*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - On Gossip use - ActionList'),
(@Xiri*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Close gossip'),
(@Xiri*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 83, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Remove npcflag'),
(@Xiri*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Talk'),
(@Xiri*100, 9, 3, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Talk'),
(@Xiri*100, 9, 4, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 39828, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Cast'),
(@Xiri*100, 9, 5, 0, 0, 0, 100, 0, 12000, 12000, 0, 0, 107, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Summon Group'),
(@Xiri*100, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Caalen, 60, 0, 0, 0, 0, 0, 'Caalen - On Gossip use - Talk'),
(@Xiri*100, 9, 7, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @FyraDawnstar, 60, 0, 0, 0, 0, 0, 'Caalen - On Gossip use - Talk'),
(@Xiri*100, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 11, 39831, 0, 0, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 'Xiri - ActionList - Cast'),
(@Xiri*100, 9, 9, 0, 0, 0, 100, 0, 40000, 40000, 0, 0, 82, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - ActionList - Add npcflag'),
(@Akama, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 53, 1, @Akama, 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On Gossip use - Start Waypoint'),
(@Ashtongue, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 53, 1, @Ashtongue, 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Ashtongue - On Gossip use - Start Waypoint'),
(@Maiev, 0, 0, 0, 63, 0, 100, 0, 0, 0, 0, 0, 53, 1, @Maiev, 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 'Ashtongue - On Gossip use - Start Waypoint'),
(@Xiri, 0, 1, 0, 62, 0, 100, 0, 8650, 0, 0, 0, 80, @Xiri*100+1, 2, 0, 0, 0, 0, 11, @Lightsworn, 80, 0, 0, 0, 0, 0, 'Xiri - On Gossip use - Start waypoint'),
(@Xiri*100+1, 9, 0, 0, 0, 0, 100, 0, 27000, 27000, 0, 0, 53, 1, @Lightsworn, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - On Gossip use - Start waypoint'),
(@Xiri, 0, 2, 0, 62, 0, 100, 0, 8650, 0, 0, 0, 80, @Xiri*100+2, 2, 0, 0, 0, 0, 11, @Magister, 80, 0, 0, 0, 0, 0, 'Xiri - On Gossip use - Start waypoint'),
(@Xiri*100+2, 9, 0, 0, 0, 0, 100, 0, 27000, 27000, 0, 0, 53, 1, @Magister, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'Xiri - On Gossip use - Start waypoint'),
(@Maiev, 0, 1, 0, 40, 0, 100, 0, 1, 0, 0, 0, 80, @Maiev*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vagath - On waypoint1 - Start Script'),
(@Maiev*100, 9, 0, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Vagath, 80, 0, 0, 0, 0, 0, 'Vagath - On Script - Talk1'),
(@Maiev*100, 9, 1, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, @Akama, 20, 0, 0, 0, 0, 0, 'Akama - On Script - Talk1'),
(@Maiev*100, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - Talk1'),
(@Maiev*100, 9, 3, 0, 0, 0, 100, 0, 2500, 2500, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, @Akama, 20, 0, 0, 0, 0, 0, 'Akama - On Script - Talk2'),
(@Maiev*100, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - Talk2'),
(@Maiev*100, 9, 5, 0, 0, 0, 100, 0, 15000, 15000, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - Set React Passive'),
(@Maiev*100, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 18, 512, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - Set Immune To NPC'),
(@Maiev*100, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 24, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - evade'),
(@Maiev*100, 9, 8, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 34189, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maiev - On Script - Stealth'),
(@Vagath, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 1, 1, 14000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Vagath - On aggro - Talk2'),
(@Vagath, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 1, 2, 14000, 0, 0, 0, 0, 19, @Akama, 20, 0, 0, 0, 0, 0, 'Akama - On Vagath death - Talk3'),
(@Akama, 0, 1, 0, 40, 0, 100, 0, 2, 0, 0, 0, 80, @Akama*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On waypoint2 - Start Script'),
(@Akama*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 54, 12000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On Script - pause Waypoint'),
(@Akama*100, 9, 2, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 3, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On Script - Talk4'),
(@Akama*100, 9, 3, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 1, 4, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On Script - Talk5'),
(@Akama*100, 9, 4, 0, 0, 0, 100, 0, 8000, 8000, 0, 0, 1, 5, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On Script - Talk6'),
(@Ashtongue, 0, 1, 0, 40, 0, 100, 0, 2, 0, 0, 0, 54, 23000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On waypoint2 - event'),
(@Akama, 0, 2, 0, 40, 0, 100, 0, 6, 0, 0, 0, 11, 39932, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Akama - On waypoint3 - Cast Spell'),
(@Akama, 0, 3, 0, 0, 0, 100, 0, 1000, 1000, 4000, 4000, 11, @ChainLightning, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akama - IC - Cast Spell'),
(@Maiev, 0, 2, 0, 0, 0, 100, 0, 1000, 1000, 3000, 3000, 11, @FanOfBlades, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Maiev - IC - Cast Spell'),
(@Magister, 0, 0, 0, 75, 0, 100, 0, 0, @IllidariRavag, 10, 5000, 49, 0, 0, 0, 0, 0, 0, 19, @IllidariRavag, 10, 0, 0, 0, 0, 0, 'Magister - On los ooc - Attack'),
(@Lightsworn, 0, 0, 0, 75, 0, 100, 0, 0, @IllidariRavag, 10, 5000, 49, 0, 0, 0, 0, 0, 0, 19, @IllidariRavag, 10, 0, 0, 0, 0, 0, 'Lightsworn - On los ooc - Attacka'), 
(@Magister, 0, 1, 0, 75, 0, 100, 0, 0, @IllidariShadow, 10, 5000, 49, 0, 0, 0, 0, 0, 0, 19, @IllidariShadow, 10, 0, 0, 0, 0, 0, 'Magister - On los ooc - Attack'),
(@Lightsworn, 0, 1, 0, 75, 0, 100, 0, 0, @IllidariShadow, 10, 5000, 49, 0, 0, 0, 0, 0, 0, 19, @IllidariShadow, 10, 0, 0, 0, 0, 0, 'Lightsworn - On los ooc - Attacka'),
(@Magister, 0, 2, 0, 0, 0, 100, 0, 1000, 1000, 4000, 4000, 11, 9053, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akama - IC - Cast Spell'),
(@Lightsworn, 0, 2, 0, 0, 0, 100, 0, 1000, 1000, 4000, 4000, 11, 33632, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akama - IC - Cast Spell'),
(@Lightsworn, 0, 3, 0, 0, 0, 100, 0, 5000, 5000, 10000, 10000, 11, 13005, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Akama - IC - Cast Spell'),
(@Lightsworn, 0, 4, 0, 0, 0, 100, 0, 3000, 8000, 5000, 8000, 11, 13952, 0, 0, 0, 0, 0, 26, 10, 0, 0, 0, 0, 0, 0, 'Akama - IC - Cast Spell');

DELETE FROM `waypoints` WHERE entry in (@Akama, @Maiev, @Ashtongue, @Lightsworn, @Magister);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@Akama,1,-3562.123291, 486.208344, 22.091547,'Akama1'),
(@Akama,2,-3569.400879, 408.074738, 29.698217,'Akama2'),  
(@Akama,3,-3578.632568, 353.128601, 35.888973,'Ashtongue3'),
(@Akama,4,-3600.931885, 322.053955, 39.085770,'Ashtongue3'),
(@Akama,5,-3617.203125, 320.658691, 39.697262,'Ashtongue3'),
(@Akama,6,-3651.692627, 317.280975, 35.914421,'Akama3'),
(@Maiev,1,-3567.418457, 485.073334, 22.376778,'Maiev1'),
(@Maiev,2,-3567.913086, 400.602386, 30.253670,'Maiev2'), 
(@Maiev,3,-3567.458740, 371.282898, 32.955494,'Maiev3'),
(@Maiev,4,-3651.692627, 317.280975, 35.914421,'Maiev4'),
(@Lightsworn,1,-3562.123291, 486.208344, 22.091547,'Lightsworn1'),
(@Lightsworn,2,-3569.400879, 408.074738, 29.698217,'Lightsworn2'),
(@Magister,1,-3562.123291, 486.208344, 22.091547,'Magister1'),
(@Magister,2,-3569.400879, 408.074738, 29.698217,'Magister2'),
(@Ashtongue,1,-3562.123291, 486.208344, 22.091547,'Ashtongue1'),
(@Ashtongue,2,-3569.400879, 408.074738, 29.698217,'Ashtongue2'),
(@Ashtongue,3,-3578.632568, 353.128601, 35.888973,'Ashtongue3'),
(@Ashtongue,4,-3600.931885, 322.053955, 39.085770,'Ashtongue3'),
(@Ashtongue,5,-3617.203125, 320.658691, 39.697262,'Ashtongue3'),   
(@Ashtongue,6,-3651.692627, 317.280975, 35.914421,'Ashtongue3');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 39831;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 39831, 0, 31, 3, @Ashtongue, 0, 0, '', NULL),
(13, 3, 39831, 1, 31, 3, @Akama, 0, 0, '', NULL),
(13, 3, 39831, 2, 31, 3, @Maiev, 0, 0, '', NULL),
(13, 3, 39831, 3, 31, 3, @Lightsworn, 0, 0, '', NULL),
(13, 3, 39831, 4, 31, 3, @Magister, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 39832;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 39832, 0, 31, 3, @Ashtongue, 0, 0, '', NULL),
(13, 3, 39832, 1, 31, 3, @Akama, 0, 0, '', NULL),
(13, 3, 39832, 2, 31, 3, @Maiev, 0, 0, '', NULL),
(13, 3, 39832, 3, 31, 3, @Lightsworn, 0, 0, '', NULL),
(13, 3, 39832, 4, 31, 3, @Magister, 0, 0, '', NULL);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 39932;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 2, 39932, 0, 8, 13429 , 0, 0, 0, '', 'Eye of the Witness Distraction for Akama');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` =17 AND `SourceEntry`=56448;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 56448, 0, 0, 31, 1, 3, 30142, 0, 0, 0, 0, '', 'Storm Hammer only targets only The Iron Watcher');
DELETE FROM `disables` WHERE `sourceType`=0 AND `entry`=35113;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 35113, 64, '', '', 'Ignore LOS on Warp Measurement');
--
DELETE FROM `gossip_menu` WHERE `entry`=9821 AND `text_id`=13557; 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9821,13557);
UPDATE `creature_template` SET `gossip_menu_id`=9821 WHERE `entry`=9977;

DELETE FROM `gossip_menu` WHERE `entry`=4841 AND `text_id`=5894;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4841,5894);
UPDATE `creature_template` SET `gossip_menu_id`=4841 WHERE `entry`=12997;

DELETE FROM `gossip_menu` WHERE `entry`=4845 AND `text_id`=5920;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (4845,5920);
UPDATE `creature_template` SET `gossip_menu_id`=4845 WHERE `entry`=13018;

DELETE FROM `gossip_menu` WHERE `entry`=10631 AND `text_id`=14724;
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (10631,14724);
UPDATE `creature_template` SET `gossip_menu_id`=10631 WHERE `entry`=35073;

DELETE FROM `gossip_menu` WHERE `entry`=3501 AND `text_id`=4253; 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (3501,4253);
UPDATE `creature_template` SET `gossip_menu_id`=3501 WHERE `entry`=1694;

UPDATE `creature_template` SET `npcflag`=0 WHERE `entry`=13076;

DELETE FROM `gossip_menu` WHERE `entry`=9027 AND `text_id` IN (12198); 
INSERT INTO `gossip_menu` (`entry`,`text_id`) VALUES (9027,12198);
