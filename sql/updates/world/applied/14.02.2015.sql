-- Magmoth Shaman SAI
SET @ENTRY := 25428;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,5,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magmoth Shaman - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Magmoth Shaman - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,2,0,25,0,100,0,0,0,0,0,11,45575,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magmoth Shaman - On Reset - Cast 'Magmoth Fire Totem'");

-- Magmoth Fire Totem SAI
SET @ENTRY := 25444;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magmoth Fire Totem - On Just Summoned - Enable Combat Movement"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,4000,4000,11,45580,0,0,0,0,0,2,0,0,0,0,0,0,0,"Magmoth Fire Totem - In Combat - Cast 'Fireball'"),
(@ENTRY,0,2,0,1,0,100,0,100,100,20000,20000,11,45576,0,0,0,0,0,19,24021,30,0,0,0,0,0,"Magmoth Fire Totem - Out of Combat - Cast 'Cosmetic - New Fire Beam Channel (Mouth)'"),
(@ENTRY,0,3,0,7,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magmoth Fire Totem - On Evade - Despawn Instant");
--
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND  `SourceGroup`=1 AND `SourceEntry`=45465;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 45465, 0, 0, 31, 0, 3, 24862, 0, 0, 0, 0, '', 'Mage Hunter Channel - targets Bunny');

-- Beryl Treasure Hunter SAI
SET @ENTRY := 25353;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,1000,12500,15500,11,50658,0,0,0,0,0,2,0,0,0,0,0,0,0,"Beryl Treasure Hunter - In Combat - Cast 'Focus Beam'"),
(@ENTRY,0,1,0,1,0,100,0,5000,5000,15000,15000,11,45465,0,0,0,0,0,19,24862,60,0,0,0,0,0,"Beryl Treasure Hunter - Out of Combat - Cast 'Mage Hunter Channel'");
-- Kvaldir Mist Lord SAI
SET @GUID := -110298;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=25496;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,25,0,100,0,0,0,0,0,53,0,2549600,1,0,0,2,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Reset - Start Waypoint"),
(@GUID,0,1,0,40,0,100,0,2,2549600,0,0,80,2549600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Waypoint 2 Reached - Run Script"),
(@GUID,0,2,0,40,0,100,0,4,2549600,0,0,80,2549600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Waypoint 4 Reached - Run Script"),
(@GUID,0,3,0,40,0,100,0,6,2549600,0,0,80,2549600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Waypoint 6 Reached - Run Script"),
(@GUID,0,4,0,40,0,100,0,8,2549600,0,0,80,2549600,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Waypoint 8 Reached - Run Script");

-- Actionlist SAI
SET @ENTRY := 2549600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,7000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,10,110382,25242,0,0,0,0,0,"Kvaldir Mist Lord - On Script - Set Orientation Closest Creature 'Warsong Battleguard'"),
(@ENTRY,9,2,0,0,0,100,0,1000,1000,0,0,5,53,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Script - Play Emote 53"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kvaldir Mist Lord - On Script - Say Line 0"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,11,45667,0,0,0,0,0,19,25244,50,0,0,0,0,0,"Kvaldir Mist Lord - On Script - Cast 'Torch Corpse'");

DELETE FROM `waypoints` WHERE `entry`=2549600;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(2549600, 1, 2943.3, 6805.71, 6.86362, 'Kvaldir Mist Lord'),
(2549600, 2, 2946.38, 6808.99, 6.89997, 'Kvaldir Mist Lord'),
(2549600, 3, 2952.22, 6815.03, 5.49191, 'Kvaldir Mist Lord'),
(2549600, 4, 2956.26, 6811.33, 5.7004, 'Kvaldir Mist Lord'),
(2549600, 5, 2959.27, 6809.55, 5.73998, 'Kvaldir Mist Lord'),
(2549600, 6, 2958.56, 6804.6, 6.10027, 'Kvaldir Mist Lord'),
(2549600, 7, 2958.36, 6799.58, 6.55177, 'Kvaldir Mist Lord'),
(2549600, 8, 2953.32, 6798.66, 6.69609, 'Kvaldir Mist Lord');

DELETE FROM `creature_text` WHERE `entry`=25496;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(25496, 0, 0, 'You are dismissed, $n.', 12, 0, 100, 113, 0, 0, 1242, 0, 'Marshal McBride');

DELETE FROM `creature_text` WHERE `entry`=25496;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(25496, 0, 0, 'Become ashes in the mist!', 12, 0, 50, 53, 0, 0, 24719, 'Kvaldir Mist Lord'),
(25496, 0, 1, 'The subjugation of these people has only just begun... so much time for fun and games.', 12, 0, 50, 53, 0, 0, 24718, 'Kvaldir Mist Lord'),
(25496, 0, 2, 'Burn, land dweller! BURN!', 12, 0, 50, 53, 0, 0, 24717, 'Kvaldir Mist Lord');
-- Fireguard Destroyer SAI
SET @ENTRY := 8911;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,2,0,30,9000,11000,11,15243,0,0,0,0,0,1,0,0,0,0,0,0,0,"Fireguard Destroyer - Within 0-30 Range - Cast 'Fireball Volley' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,0,5000,8000,5000,8000,11,16788,64,0,0,0,0,2,0,0,0,0,0,0,0,"Fireguard Destroyer - In Combat - Cast 'Fireball'");
--
UPDATE `conditions` SET `ConditionValue1`=11332 WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9546 AND `SourceEntry`=1 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=12298 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=8195 WHERE `menu_id`=9546 AND `id`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23859;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(23859, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 80, 2385900, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Greer Orehammer - On aggro - Run Script'),
(23859, 0, 1, 0, 62, 0, 100, 0, 9546, 1, 0, 0, 56, 33634, 10, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Greer Orehammer - On gossip option select - give player 10 Orehammer\'s Precision Bombs'),
(23859, 0, 2, 0, 62, 0, 100, 0, 9546, 1, 0, 0, 52, 745, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Greer Orehammer - On gossip option select - Plague This Taxi Start');

-- New Agamand Plague Tank Bunny SAI
SET @ENTRY := 24290;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,43404,0,0,0,33,24290,0,0,0,0,0,7,0,0,0,0,0,0,0,"New Agamand Plague Tank Bunny - On Spellhit 'Mission: Plague This!: Orehammer's Precision Bombs Dummy' - Quest Credit 'Mission: Plague This!'");
-- Pathing for  Entry: 25979 'TDB FORMAT' 
SET @NPC := 107300;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3289.213,`position_y`=5620.369,`position_z`=51.0953 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3289.213,5620.369,51.0953,0,0,0,0,100,0),
(@PATH,2,3289.156,5612.807,51.6523,0,0,0,0,100,0),
(@PATH,3,3285.626,5645.205,51.53279,0,0,0,0,100,0),
(@PATH,4,3283.541,5652.846,52.70237,0,0,0,0,100,0),
(@PATH,5,3280.611,5683.929,54.8549,0,0,0,0,100,0),
(@PATH,6,3303.37,5707.606,60.20351,0,0,0,0,100,0),
(@PATH,7,3282.027,5687.42,56.04992,0,0,0,0,100,0),
(@PATH,8,3279.962,5672.618,53.23326,0,0,0,0,100,0),
(@PATH,9,3284.723,5649.133,52.33985,0,0,0,0,100,0);
-- 0x1C09144760195EC000000C0000579A79 .go 3289.213 5620.369 51.0953
-- Inquisitor Salrand SAI
SET @ENTRY := 25584;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=6;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,6,0,1,0,100,0,5000,5000,10000,10000,11,45777,0,0,0,0,0,10,119586,25594,0,0,0,0,0,"Inquisitor Salrand - Out of Combat - Cast 'Salrand's Beam'");

-- Pathing for  Entry: 25217 'TDB FORMAT' 
SET @NPC := 122872;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4113.013,`position_y`=6276.871,`position_z`=25.68058 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4113.013,6276.871,25.68058,0,0,0,0,100,0),
(@PATH,2,4090.676,6280.604,27.56935,0,0,0,0,100,0),
(@PATH,3,4074.31,6276.669,26.26191,0,0,0,0,100,0),
(@PATH,4,4063.338,6284.883,23.54415,0,0,0,0,100,0),
(@PATH,5,4060.495,6308.033,24.63371,0,0,0,0,100,0),
(@PATH,6,4064.796,6325.54,25.33357,0,0,0,0,100,0),
(@PATH,7,4062.167,6349.621,24.96839,0,0,0,0,100,0),
(@PATH,8,4055.423,6363.151,27.49203,0,0,0,0,100,0),
(@PATH,9,4061.251,6351.451,25.36894,0,0,0,0,100,0),
(@PATH,10,4064.368,6335.375,25.38478,0,0,0,0,100,0),
(@PATH,11,4061.08,6310.811,24.90634,0,0,0,0,100,0),
(@PATH,12,4059.284,6298.654,24.53846,0,0,0,0,100,0),
(@PATH,13,4069.346,6279.003,24.92667,0,0,0,0,100,0),
(@PATH,14,4084.886,6280.17,27.70065,0,0,0,0,100,0),
(@PATH,15,4107.833,6280.248,25.45559,0,0,0,0,100,0);
-- 0x1C0914476018A04000000C000057EEC0 .go 4113.013 6276.871 25.68058

-- Pathing for  Entry: 25611 'TDB FORMAT' 
SET @NPC := 57031;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2797.154,`position_y`=6620.249,`position_z`=48.24942 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2797.154,6620.249,48.24942,0,0,0,0,100,0),
(@PATH,2,2807.472,6623.047,46.9419,0,0,0,0,100,0),
(@PATH,3,2822.777,6620.003,48.07745,0,0,0,0,100,0),
(@PATH,4,2828.091,6608.199,49.87174,0,0,0,0,100,0),
(@PATH,5,2829.904,6600.112,50.43536,0,0,0,0,100,0),
(@PATH,6,2825.405,6583.044,51.32146,0,0,0,0,100,0),
(@PATH,7,2812.032,6576.637,50.3959,0,0,0,0,100,0),
(@PATH,8,2808.558,6575.663,49.55042,0,0,0,0,100,0),
(@PATH,9,2791.914,6578.114,49.39709,0,0,0,0,100,0),
(@PATH,10,2790.871,6579.394,49.35609,0,0,0,0,100,0),
(@PATH,11,2793.273,6598.499,49.21821,0,0,0,0,100,0),
(@PATH,12,2797.287,6620.314,48.24408,0,0,0,0,100,0);
-- 0x1C091447601902C000000C0000588B21 .go 2797.154 6620.249 48.24942

-- Pathing for  Entry: 25611 'TDB FORMAT' 
SET @NPC := 97489;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2755.648,`position_y`=6516.167,`position_z`=52.22083 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2755.648,6516.167,52.22083,0,0,0,0,100,0),
(@PATH,2,2739.121,6534.617,51.25744,0,0,0,0,100,0),
(@PATH,3,2736.37,6540.505,50.52654,0,0,0,0,100,0),
(@PATH,4,2736.999,6568.931,49.45178,0,0,0,0,100,0),
(@PATH,5,2745.165,6582.929,49.87815,0,0,0,0,100,0),
(@PATH,6,2749.685,6588.33,49.43536,0,0,0,0,100,0),
(@PATH,7,2764.539,6590.529,49.07096,0,0,0,0,100,0),
(@PATH,8,2783.451,6578.873,49.38116,0,0,0,0,100,0),
(@PATH,9,2790.408,6542.078,51.47867,0,0,0,0,100,0),
(@PATH,10,2781.756,6526.21,53.26818,0,0,0,0,100,0),
(@PATH,11,2759.35,6514.721,52.89858,0,0,0,0,100,0);
-- 0x1C091447601902C000000C0001588AE6 .go 2755.648 6516.167 52.22083

-- Pathing for  Entry: 25611 'TDB FORMAT' 
SET @NPC := 97486;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2959.18,`position_y`=6518.749,`position_z`=72.95694 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2959.18,6518.749,72.95694,0,0,0,0,100,0),
(@PATH,2,2943.816,6531.531,70.15851,0,0,0,0,100,0),
(@PATH,3,2922.839,6548.202,66.36589,0,0,0,0,100,0),
(@PATH,4,2905.143,6556.469,64.68446,0,0,0,0,100,0),
(@PATH,5,2886.449,6562.177,61.95524,0,0,0,0,100,0),
(@PATH,6,2870.039,6568.242,58.85592,0,0,0,0,100,0),
(@PATH,7,2849.421,6573.922,54.75926,0,0,0,0,100,0),
(@PATH,8,2864.578,6570.402,57.7508,0,0,0,0,100,0),
(@PATH,9,2880.555,6564.39,60.65393,0,0,0,0,100,0),
(@PATH,10,2900.065,6558.482,64.16826,0,0,0,0,100,0),
(@PATH,11,2916.618,6552.232,65.66638,0,0,0,0,100,0),
(@PATH,12,2939.966,6534.6,69.45979,0,0,0,0,100,0),
(@PATH,13,2950.899,6526.294,71.31409,0,0,0,0,100,0),
(@PATH,14,2978.666,6499.601,75.67303,0,0,0,0,100,0),
(@PATH,15,2959.18,6518.749,72.95694,0,0,0,0,100,0);
-- 0x1C091447601902C000000C00005893B1 .go 2959.18 6518.749 72.95694

-- Pathing for  Entry: 25611 'TDB FORMAT' 
SET @NPC := 97472;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3132.141,`position_y`=6364.85,`position_z`=87.00642 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3132.141,6364.85,87.00642,0,0,0,0,100,0),
(@PATH,2,3145.254,6377.429,86.04013,0,0,0,0,100,0),
(@PATH,3,3150.995,6384.529,85.66245,0,0,0,0,100,0),
(@PATH,4,3150.954,6413.424,86.59067,0,0,0,0,100,0),
(@PATH,5,3148.383,6418.564,87.16897,0,0,0,0,100,0),
(@PATH,6,3127.888,6445.25,85.42545,0,0,0,0,100,0),
(@PATH,7,3125.299,6448.726,84.63122,0,0,0,0,100,0),
(@PATH,8,3098.482,6453.096,86.2816,0,0,0,0,100,0),
(@PATH,9,3092.813,6430.465,86.18443,0,0,0,0,100,0),
(@PATH,10,3092.439,6429.254,86.16457,0,0,0,0,100,0),
(@PATH,11,3090.803,6416.944,86.47922,0,0,0,0,100,0),
(@PATH,12,3080.703,6420.038,86.92494,0,0,0,0,100,0),
(@PATH,13,3066.926,6403.042,89.00624,0,0,0,0,100,0),
(@PATH,14,3071.34,6388.575,89.95999,0,0,0,0,100,0),
(@PATH,15,3071.793,6387.598,89.86023,0,0,0,0,100,0),
(@PATH,16,3092.656,6366.145,89.73042,0,0,0,0,100,0),
(@PATH,17,3109.781,6356.525,88.38365,0,0,0,0,100,0),
(@PATH,18,3114.204,6357.174,87.74312,0,0,0,0,100,0),
(@PATH,19,3132.181,6364.944,87.00461,0,0,0,0,100,0);
-- 0x1C091447601902C000000A000058AB81 .go 3132.141 6364.85 87.00642

-- Pathing for  Entry: 25475 'TDB FORMAT' 
SET @NPC := 107800;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2814.188,`position_y`=6720.133,`position_z`=9.794792 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2814.188,6720.133,9.794792,0,0,0,0,100,0),
(@PATH,2,2810.317,6723.547,9.082146,0,0,0,0,100,0);
-- 0x1C0914476018E0C000000C00005660EE .go 2814.188 6720.133 9.794792

-- Pathing for  Entry: 25496 'TDB FORMAT' 
SET @NPC := 110300;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3067.602,`position_y`=6705.609,`position_z`=6.230121 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3067.602,6705.609,6.230121,0,0,0,0,100,0),
(@PATH,2,3051.766,6718.588,6.615577,0,0,0,0,100,0),
(@PATH,3,3024.569,6720.975,9.706598,0,0,0,0,100,0),
(@PATH,4,3031.904,6726.806,7.207738,0,0,0,0,100,0),
(@PATH,5,3033.154,6727.66,6.58389,0,0,0,0,100,0),
(@PATH,6,3068.976,6704.811,5.953619,0,0,0,0,100,0),
(@PATH,7,3095.539,6680.229,6.846659,0,0,0,0,100,0),
(@PATH,8,3095.83,6662.607,9.923321,0,0,0,0,100,0),
(@PATH,9,3099.785,6674.892,7.75151,0,0,0,0,100,0),
(@PATH,10,3090.089,6685.671,6.213068,0,0,0,0,100,0),
(@PATH,11,3067.523,6705.942,6.221252,0,0,0,0,100,0);
-- 0x1C0914476018E60000000C000058AEB8 .go 3067.602 6705.609 6.230121

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE  `id` IN (25244);
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE  `guid`=57067;

-- Pathing for  Entry: 25496 'TDB FORMAT' 
SET @NPC := 57066;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2431.173,`position_y`=6827.691,`position_z`=4.434509 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2431.173,6827.691,4.434509,0,0,0,0,100,0),
(@PATH,2,2417.92,6818.268,3.808835,0,0,0,0,100,0),
(@PATH,3,2401.83,6806.687,1.444491,0,0,0,0,100,0),
(@PATH,4,2397.053,6803.022,1.261812,0,0,0,0,100,0),
(@PATH,5,2415.603,6771.807,2.460288,0,0,0,0,100,0),
(@PATH,6,2444.461,6781.449,6.446399,0,0,0,0,100,0),
(@PATH,7,2448.987,6792.239,6.01413,0,0,0,0,100,0),
(@PATH,8,2466.415,6808.424,4.947993,0,0,0,0,100,0),
(@PATH,9,2479.129,6823.808,2.68948,0,0,0,0,100,0),
(@PATH,10,2480.822,6831.567,1.405943,0,0,0,0,100,0),
(@PATH,11,2481.074,6846.526,1.077314,0,0,0,0,100,0),
(@PATH,12,2453.165,6857.935,1.077329,0,0,0,0,100,0),
(@PATH,13,2438.796,6843.509,1.671256,0,0,0,0,100,0);
-- 0x1C0914476018E60000000A0000586C4C .go 2431.173 6827.691 4.434509

-- Pathing for  Entry: 25496 'TDB FORMAT' 
SET @NPC := 57059;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2414.351,`position_y`=6738.811,`position_z`=2.7648 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2414.351,6738.811,2.7648,0,0,0,0,100,0),
(@PATH,2,2411.604,6704.709,6.068311,0,0,0,0,100,0),
(@PATH,3,2411.347,6702.018,6.760894,0,0,0,0,100,0),
(@PATH,4,2452.357,6721.351,6.010249,0,0,0,0,100,0),
(@PATH,5,2466.691,6738.082,6.927616,0,0,0,0,100,0),
(@PATH,6,2495.109,6765.589,6.517776,0,0,0,0,100,0),
(@PATH,7,2513.06,6790.916,4.482207,0,0,0,0,100,0),
(@PATH,8,2523.949,6806.354,1.703682,0,0,0,0,100,0),
(@PATH,9,2532.222,6817.983,1.145756,0,0,0,0,100,0),
(@PATH,10,2546.355,6838.362,1.049538,0,0,0,0,100,0),
(@PATH,11,2548.539,6846.931,0.8498411,0,0,0,0,100,0),
(@PATH,12,2506.485,6784.912,5.38059,0,0,0,0,100,0),
(@PATH,13,2483.945,6763.865,6.803366,0,0,0,0,100,0),
(@PATH,14,2480.173,6760.685,6.7745,0,0,0,0,100,0),
(@PATH,15,2419.531,6764.058,3.010518,0,0,0,0,100,0),
(@PATH,16,2414.283,6738.649,2.879114,0,0,0,0,100,0);
-- 0x1C0914476018E60000000C0000587988 .go 2414.351 6738.811 2.7648

DELETE FROM `creature_addon` WHERE `guid` IN (110289,57070,57063, 57065, 57067,57064,57062,57068,57060,57058,57057, 57056,57061,110291,110301,110290,110285,57072);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(57063, 0, 0, 0, 0, 69, ''),
(57065, 0, 0, 0, 0, 234, ''),
(57067, 0, 0, 0, 0, 234, ''),
(57064, 0, 0, 0, 0, 234, ''),
(57062, 0, 0, 0, 0, 69, ''),
(57068, 0, 0, 0, 0, 234, ''),
(57060, 0, 0, 0, 0, 234, ''),
(57058, 0, 0, 0, 0, 234, ''),
(57057, 0, 0, 0, 0, 234, ''),
(57056, 0, 0, 0, 0, 234, ''),
(57061, 0, 0, 0, 0, 27, ''),
(110291, 0, 0, 0, 0, 27, ''),
(110301, 0, 0, 0, 0, 69, ''),
(110290, 0, 0, 0, 0, 27, ''),
(110285, 0, 0, 0, 0, 27, ''),
(57072, 0, 0, 0, 0, 69, ''),
(110289, 0, 0, 0, 0, 27, ''),
(57070, 0, 0, 0, 0, 27, '');

DELETE FROM `creature_addon` WHERE `guid` IN (112665,112663,112662,112660,112659,112666,112679,112673,112678,112671,112667,112672,56752,112741,56327,112661,112658,56325, 112668, 112670, 112669, 56322);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(56325, 0, 0, 0, 0, 4, ''),
(112668, 0, 0, 0, 0, 4, ''),
(112670, 0, 0, 0, 0, 4, ''),
(112669, 0, 0, 0, 0, 4, ''),
(56322, 0, 0, 0, 0, 4, ''),
(112661, 0, 0, 0, 0, 234, ''),
(112658, 0, 0, 0, 0, 234, ''),
(56327, 0, 0, 0, 0, 234, ''),
(112741, 0, 0, 0, 0, 27, ''),
(56752, 0, 0, 0, 0, 27, ''),
(112672, 0, 0, 1, 0, 0, ''),
-- 
(112678, 0, 0, 0, 0, 4, ''),
(112671, 0, 0, 0, 0, 4, ''),
(112667, 0, 0, 0, 0, 4, ''),
-- 
(112673, 0, 0, 1, 0, 0, ''),
(112679, 0, 0, 1, 0, 0, ''),
(112666, 0, 0, 0, 0, 234, ''),
(112665, 0, 0, 0, 0, 234, ''),
(112659, 0, 0, 0, 0, 234, ''),
(112660, 0, 0, 0, 0, 234, ''),
(112663, 0, 0, 0, 0, 234, ''),
(112662, 0, 0, 0, 0, 234, '');

-- Pathing for  Entry: 25522 'TDB FORMAT' 
SET @NPC := 112755;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1863.071,`position_y`=5721.263,`position_z`=0.5444731 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1863.071,5721.263,0.5444731,0,0,0,0,100,0),
(@PATH,2,1871.592,5727.264,0.5210824,0,0,0,0,100,0),
(@PATH,3,1865.804,5766.675,0.8066133,0,0,0,0,100,0),
(@PATH,4,1861.19,5769.085,0.636929,0,0,0,0,100,0),
(@PATH,5,1853.291,5777.555,0.8031902,0,0,0,0,100,0),
(@PATH,6,1838.134,5783.222,0.6275423,0,0,0,0,100,0),
(@PATH,7,1838.138,5783.196,0.5076787,0,0,0,0,100,0),
(@PATH,8,1838.279,5783.279,0.609849,0,0,0,0,100,0),
(@PATH,9,1853.601,5777.178,0.8158144,0,0,0,0,100,0),
(@PATH,10,1872.918,5754.421,0.8373558,0,0,0,0,100,0),
(@PATH,11,1873.445,5750.554,0.7919877,0,0,0,0,100,0),
(@PATH,12,1857.673,5717.76,0.05196175,0,0,0,0,100,0),
(@PATH,13,1863.071,5721.263,0.5444731,0,0,0,0,100,0),
(@PATH,14,1871.617,5727.281,0.5215871,0,0,0,0,100,0),
(@PATH,15,1865.804,5766.67,0.806583,0,0,0,0,100,0),
(@PATH,16,1861.121,5769.259,0.6014363,0,0,0,0,100,0),
(@PATH,17,1853.309,5777.537,0.8029698,0,0,0,0,100,0),
(@PATH,18,1838.146,5783.217,0.6276386,0,0,0,0,100,0),
(@PATH,19,1838.138,5783.196,0.5076787,0,0,0,0,100,0),
(@PATH,20,1838.511,5783.279,0.6102685,0,0,0,0,100,0),
(@PATH,21,1853.596,5777.181,0.8157681,0,0,0,0,100,0),
(@PATH,22,1872.897,5754.442,0.837615,0,0,0,0,100,0),
(@PATH,23,1873.44,5750.595,0.7921225,0,0,0,0,100,0),
(@PATH,24,1857.677,5717.557,0.05224757,0,0,0,0,100,0),
(@PATH,25,1863.071,5721.263,0.5444731,0,0,0,0,100,0),
(@PATH,26,1871.631,5727.291,0.5218816,0,0,0,0,100,0),
(@PATH,27,1865.809,5766.73,0.8069472,0,0,0,0,100,0),
(@PATH,28,1861.136,5769.112,0.6354876,0,0,0,0,100,0);
-- 0x1C0914476018EC8000000B0000D90C39 .go 1863.071 5721.263 0.5444731

-- Pathing for  Entry: 25522 'TDB FORMAT' 
SET @NPC := 112671;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1853.63,`position_y`=5846.966,`position_z`=2.740726 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1853.63,5846.966,2.740726,0,0,0,0,100,0),
(@PATH,2,1874.7,5836.919,4.813838,0,0,0,0,100,0),
(@PATH,3,1876.592,5812.892,4.801723,0,0,0,0,100,0),
(@PATH,4,1872.844,5797.556,3.118221,0,0,0,0,100,0),
(@PATH,5,1875.815,5806.438,3.974422,0,0,0,0,100,0),
(@PATH,6,1876.563,5816.451,5.334268,0,0,0,0,100,0),
(@PATH,7,1877.032,5828.594,4.914,0,0,0,0,100,0),
(@PATH,8,1862.273,5842.986,4.152772,0,0,0,0,100,0),
(@PATH,9,1853.646,5846.958,2.74155,0,0,0,0,100,0),
(@PATH,10,1849.364,5848.809,2.105818,0,0,0,0,100,0);
-- 0x1C0914476018EC8000000B0000D90AF7 .go 1853.63 5846.966 2.740726


-- Pathing for  Entry: 25522 'TDB FORMAT' 
SET @NPC := 112766;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1821.645,`position_y`=5874.956,`position_z`=2.705887 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1821.645,5874.956,2.705887,0,0,0,0,100,0),
(@PATH,2,1824.808,5874.413,2.800447,0,0,0,0,100,0),
(@PATH,3,1827.45,5854.379,1.631521,0,0,0,0,100,0),
(@PATH,4,1822.537,5840.488,1.119883,0,0,0,0,100,0),
(@PATH,5,1819.79,5826.655,0.8782115,0,0,0,0,100,0),
(@PATH,6,1816.417,5813.835,0.7204496,0,0,0,0,100,0),
(@PATH,7,1816.219,5813.744,0.5043496,0,0,0,0,100,0),
(@PATH,8,1816.581,5813.962,0.5907121,0,0,0,0,100,0),
(@PATH,9,1820.05,5826.836,0.8006111,0,0,0,0,100,0),
(@PATH,10,1828.175,5856.271,1.831071,0,0,0,0,100,0),
(@PATH,11,1828.932,5859.332,2.491501,0,0,0,0,100,0),
(@PATH,12,1816.584,5895.463,0.9250998,0,0,0,0,100,0),
(@PATH,13,1821.645,5874.956,2.705887,0,0,0,0,100,0);
-- 0x1C0914476018EC8000000B000159120F .go 1821.645 5874.956 2.705887

UPDATE `creature` SET `spawndist`=10 WHERE  `guid` IN (112682, 112762);

-- Pathing for  Entry: 25522 'TDB FORMAT' 
SET @NPC := 112761;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1869.091,`position_y`=5953.953,`position_z`=6.38201 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1869.091,5953.953,6.38201,0,0,0,0,100,0),
(@PATH,2,1879.48,5943.066,7.114405,0,0,0,0,100,0),
(@PATH,3,1905.42,5926.519,12.31866,0,0,0,0,100,0),
(@PATH,4,1907.966,5924.864,12.90823,0,0,0,0,100,0),
(@PATH,5,1907.694,5924.906,12.73229,0,0,0,0,100,0),
(@PATH,6,1888.924,5936.15,8.416003,0,0,0,0,100,0),
(@PATH,7,1885.86,5938.519,7.107553,0,0,0,0,100,0),
(@PATH,8,1879.301,5943.302,7.06257,0,0,0,0,100,0),
(@PATH,9,1863.642,5963.351,5.116355,0,0,0,0,100,0),
(@PATH,10,1848.166,5986.37,2.711081,0,0,0,0,100,0),
(@PATH,11,1856.702,5973.741,4.321182,0,0,0,0,100,0),
(@PATH,12,1868.008,5955.694,6.300377,0,0,0,0,100,0),
(@PATH,13,1869.092,5953.951,6.382379,0,0,0,0,100,0);
-- 0x1C0914476018EC8000000B00005916B8 .go 1869.091 5953.953 6.38201

-- Pathing for  Entry: 25522 'TDB FORMAT' 
SET @NPC := 112764;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1949.82,`position_y`=5779.809,`position_z`=10.0687 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1949.82,5779.809,10.0687,0,0,0,0,100,0),
(@PATH,2,1949.888,5780.269,10.04539,0,0,0,0,100,0),
(@PATH,3,1959.407,5805.928,11.8103,0,0,0,0,100,0),
(@PATH,4,1955.581,5821.07,13.57725,0,0,0,0,100,0),
(@PATH,5,1949.136,5832.18,12.86915,0,0,0,0,100,0),
(@PATH,6,1947.718,5833.966,12.66496,0,0,0,0,100,0),
(@PATH,7,1944.919,5838.312,12.17096,0,0,0,0,100,0),
(@PATH,8,1945.014,5838.031,12.05043,0,0,0,0,100,0),
(@PATH,9,1945.333,5838.103,12.31259,0,0,0,0,100,0),
(@PATH,10,1950.632,5829.593,14.2812,0,0,0,0,100,0),
(@PATH,11,1959.209,5813.076,12.95494,0,0,0,0,100,0),
(@PATH,12,1958.309,5800.833,11.20766,0,0,0,0,100,0),
(@PATH,13,1953.69,5789.138,10.24553,0,0,0,0,100,0),
(@PATH,14,1952.009,5763.52,9.059128,0,0,0,0,100,0),
(@PATH,15,1949.82,5779.809,10.0687,0,0,0,0,100,0);
-- 0x1C0914476018EC8000000B0001D91590 .go 1949.82 5779.809 10.0687

-- Pathing for  Entry: 25464 'TDB FORMAT' 
SET @NPC := 132708;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=2822.261,`position_y`=5519.366,`position_z`=53.74162 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,2822.261,5519.366,53.74162,0,0,0,0,100,0),
(@PATH,2,2823.339,5522.105,53.3661,0,0,0,0,100,0),
(@PATH,3,2816.756,5522.176,52.7483,0,0,0,0,100,0),
(@PATH,4,2815.625,5523.958,52.19855,0,0,0,0,100,0),
(@PATH,5,2815.16,5520.309,52.78535,0,0,0,0,100,0),
(@PATH,6,2820.333,5521.584,53.39899,0,0,0,0,100,0),
(@PATH,7,2824.778,5510.136,55.34394,0,0,0,0,100,0),
(@PATH,8,2815.103,5518.417,53.53315,0,0,0,0,100,0),
(@PATH,9,2819.598,5522.154,52.91368,0,0,0,0,100,0),
(@PATH,10,2822.082,5521.53,53.60404,0,0,0,0,100,0),
(@PATH,11,2818.371,5523.108,52.66743,0,0,0,0,100,0),
(@PATH,12,2819.409,5516.978,53.96194,0,0,0,0,100,0),
(@PATH,13,2823.384,5522.104,53.37409,0,0,0,0,100,0),
(@PATH,14,2825.392,5523.739,52.87629,0,0,0,0,100,0),
(@PATH,15,2815.691,5521.912,52.45197,0,0,0,0,100,0),
(@PATH,16,2814.33,5518.599,52.92414,0,0,0,0,100,0),
(@PATH,17,2815.653,5522.167,52.41706,0,0,0,0,100,0),
(@PATH,18,2821.683,5522.525,53.24909,0,0,0,0,100,0),
(@PATH,19,2822.436,5520.497,53.40412,0,0,0,0,100,0),
(@PATH,20,2822.451,5523.602,53.0274,0,0,0,0,100,0),
(@PATH,21,2815.243,5522.016,52.44831,0,0,0,0,100,0),
(@PATH,22,2818.638,5521.292,53.17999,0,0,0,0,100,0),
(@PATH,23,2822.181,5517.789,54.00129,0,0,0,0,100,0),
(@PATH,24,2822.296,5519.241,53.7021,0,0,0,0,100,0),
(@PATH,25,2816.71,5523.35,52.70033,0,0,0,0,100,0),
(@PATH,26,2819.778,5520.425,53.55138,0,0,0,0,100,0),
(@PATH,27,2824.004,5522.665,53.19855,0,0,0,0,100,0),
(@PATH,28,2822.11,5517.678,54.01472,0,0,0,0,100,0),
(@PATH,29,2823.61,5518.823,53.80622,0,0,0,0,100,0),
(@PATH,30,2824.499,5512.02,55.12739,0,0,0,0,100,0),
(@PATH,31,2824.968,5518.775,54.21228,0,0,0,0,100,0),
(@PATH,32,2822.294,5517.814,53.99824,0,0,0,0,100,0),
(@PATH,33,2818.368,5520.58,53.24421,0,0,0,0,100,0),
(@PATH,34,2822.198,5523.147,52.89338,0,0,0,0,100,0),
(@PATH,35,2819.597,5521.721,53.0246,0,0,0,0,100,0),
(@PATH,36,2822.367,5519.021,53.98109,0,0,0,0,100,0),
(@PATH,37,2826.401,5522.089,53.23542,0,0,0,0,100,0),
(@PATH,38,2816.553,5521.619,52.96187,0,0,0,0,100,0),
(@PATH,39,2825.091,5521.14,53.50007,0,0,0,0,100,0),
(@PATH,40,2822.17,5524.09,52.63996,0,0,0,0,100,0),
(@PATH,41,2823.85,5520.973,53.41511,0,0,0,0,100,0),
(@PATH,42,2823.884,5524.132,52.88813,0,0,0,0,100,0),
(@PATH,43,2823.595,5521.119,53.4554,0,0,0,0,100,0),
(@PATH,44,2822.149,5521.591,53.26643,0,0,0,0,100,0),
(@PATH,45,2825.091,5523.302,52.98078,0,0,0,0,100,0);
-- 0x1C0914476018DE0000000B00005919F4 .go 2822.261 5519.366 53.74162

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122683;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3856.668,`position_y`=6592.438,`position_z`=165.8591 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3856.668,6592.438,165.8591,0,0,0,0,100,0),
(@PATH,2,3845.146,6580.313,167.2839,0,0,0,0,100,0),
(@PATH,3,3819.979,6552.679,171.2212,0,0,0,0,100,0),
(@PATH,4,3834.785,6568.925,168.5641,0,0,0,0,100,0),
(@PATH,5,3856.229,6592.091,166.1844,0,0,0,0,100,0),
(@PATH,6,3856.884,6592.668,166.1273,0,0,0,0,100,0),
(@PATH,7,3856.668,6592.438,165.8591,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005923F6 .go 3856.668 6592.438 165.8591

DELETE FROM `creature_formations` WHERE `leaderGUID`=122683;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122683, 122683, 0, 0, 2, 0, 0),
(122683, 122668, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122679;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3877.737,`position_y`=6617.055,`position_z`=165.4812 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3877.737,6617.055,165.4812,0,0,0,0,100,0),
(@PATH,2,3876.591,6615.319,165.2154,0,0,0,0,100,0),
(@PATH,3,3876.513,6615.291,165.0491,0,0,0,0,100,0),
(@PATH,4,3881.765,6622.608,165.9126,0,0,0,0,100,0),
(@PATH,5,3887.004,6630.904,166.6272,0,0,0,0,100,0),
(@PATH,6,3890.648,6642.739,166.3096,0,0,0,0,100,0),
(@PATH,7,3895.043,6655.15,167.9105,0,0,0,0,100,0),
(@PATH,8,3892.582,6650.448,166.6568,0,0,0,0,100,0),
(@PATH,9,3890.725,6641.271,166.7931,0,0,0,0,100,0),
(@PATH,10,3886.259,6630.026,166.4984,0,0,0,0,100,0),
(@PATH,11,3877.767,6616.941,165.558,0,0,0,0,100,0),
(@PATH,12,3876.568,6615.188,165.1826,0,0,0,0,100,0),
(@PATH,13,3876.513,6615.291,165.0491,0,0,0,0,100,0),
(@PATH,14,3881.689,6622.583,165.9073,0,0,0,0,100,0),
(@PATH,15,3886.83,6631.109,166.6665,0,0,0,0,100,0),
(@PATH,16,3890.699,6642.743,166.3585,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005923E0 .go 3877.737 6617.055 165.4812

DELETE FROM `creature_formations` WHERE `leaderGUID`=122679;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122679, 122679, 0, 0, 2, 0, 0),
(122679, 122664, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122682;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3802.633,`position_y`=6610.85,`position_z`=160.9254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3802.633,6610.85,160.9254,0,0,0,0,100,0),
(@PATH,2,3814.249,6608.161,162.6728,0,0,0,0,100,0),
(@PATH,3,3817.92,6607.578,162.962,0,0,0,0,100,0),
(@PATH,4,3817.757,6607.444,162.8091,0,0,0,0,100,0),
(@PATH,5,3809.16,6609.176,161.7681,0,0,0,0,100,0),
(@PATH,6,3794.561,6613.893,159.8145,0,0,0,0,100,0),
(@PATH,7,3787.977,6622.479,157.1806,0,0,0,0,100,0),
(@PATH,8,3777.748,6635.708,153.5259,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C000059215B .go 3802.633 6610.85 160.9254

DELETE FROM `creature_formations` WHERE `leaderGUID`=122682;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122682, 122682, 0, 0, 2, 0, 0),
(122682, 122667, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122671;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3876.684,`position_y`=6542.924,`position_z`=175.354 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3876.684,6542.924,175.354,0,0,0,0,100,0),
(@PATH,2,3865.112,6532.595,176.6299,0,0,0,0,100,0),
(@PATH,3,3868.344,6534.336,176.2356,0,0,0,0,100,0),
(@PATH,4,3880.712,6554.647,173.5269,0,0,0,0,100,0),
(@PATH,5,3880.566,6581.678,168.6076,0,0,0,0,100,0),
(@PATH,6,3881.85,6561.938,171.8416,0,0,0,0,100,0),
(@PATH,7,3876.725,6542.939,175.2055,0,0,0,0,100,0),
(@PATH,8,3864.951,6532.556,176.746,0,0,0,0,100,0),
(@PATH,9,3868.344,6534.336,176.2356,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C0000592014 .go 3876.684 6542.924 175.354

DELETE FROM `creature_formations` WHERE `leaderGUID`=122671;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122671, 122671, 0, 0, 2, 0, 0),
(122671, 122660, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122681;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3856.668,`position_y`=6592.438,`position_z`=165.8591 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3856.668,6592.438,165.8591,0,0,0,0,100,0),
(@PATH,2,3845.146,6580.313,167.2839,0,0,0,0,100,0),
(@PATH,3,3819.979,6552.679,171.2212,0,0,0,0,100,0),
(@PATH,4,3834.785,6568.925,168.5641,0,0,0,0,100,0),
(@PATH,5,3856.229,6592.091,166.1844,0,0,0,0,100,0),
(@PATH,6,3856.884,6592.668,166.1273,0,0,0,0,100,0),
(@PATH,7,3856.668,6592.438,165.8591,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005923F6 .go 3856.668 6592.438 165.8591

DELETE FROM `creature_formations` WHERE `leaderGUID`=122681;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122681, 122681, 0, 0, 2, 0, 0),
(122681, 122666, 4, 0, 2, 0, 0);

UPDATE `creature` SET `spawndist`=15 WHERE  `guid`=122549;
UPDATE `creature` SET `spawndist`=20 WHERE  `guid`=122548;

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122675;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3772.382,`position_y`=6700.643,`position_z`=150.745 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3772.382,6700.643,150.745,0,0,0,0,100,0),
(@PATH,2,3765.955,6706.445,152.0959,0,0,0,0,100,0),
(@PATH,3,3760.302,6711.588,152.1358,0,0,0,0,100,0),
(@PATH,4,3750.747,6726.564,151.7103,0,0,0,0,100,0),
(@PATH,5,3749.879,6729.181,151.658,0,0,0,0,100,0),
(@PATH,6,3750.81,6726.225,151.6613,0,0,0,0,100,0),
(@PATH,7,3771.484,6701.582,151.0565,0,0,0,0,100,0),
(@PATH,8,3772.745,6700.572,150.9297,0,0,0,0,100,0),
(@PATH,9,3772.382,6700.643,150.745,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C0000592493 .go 3772.382 6700.643 150.745

DELETE FROM `creature_formations` WHERE `leaderGUID`=122675;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122675, 122675, 0, 0, 2, 0, 0),
(122675, 122661, 4, 0, 2, 0, 0);


-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122678;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3765.189,`position_y`=6646.188,`position_z`=152.2007 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3765.189,6646.188,152.2007,0,0,0,0,100,0),
(@PATH,2,3761.339,6649.458,151.591,0,0,0,0,100,0),
(@PATH,3,3761.412,6649.275,151.5081,0,0,0,0,100,0),
(@PATH,4,3775.332,6638.132,152.7523,0,0,0,0,100,0),
(@PATH,5,3784.681,6626.98,155.8878,0,0,0,0,100,0),
(@PATH,6,3791.935,6616.86,158.9415,0,0,0,0,100,0),
(@PATH,7,3802.772,6610.692,160.7068,0,0,0,0,100,0),
(@PATH,8,3814.205,6608.264,162.5391,0,0,0,0,100,0),
(@PATH,9,3817.96,6607.651,162.9075,0,0,0,0,100,0),
(@PATH,10,3817.757,6607.444,162.8091,0,0,0,0,100,0),
(@PATH,11,3809.104,6609.054,161.8425,0,0,0,0,100,0),
(@PATH,12,3794.503,6613.823,159.8757,0,0,0,0,100,0),
(@PATH,13,3788.144,6622.311,157.2462,0,0,0,0,100,0),
(@PATH,14,3777.916,6635.792,153.5504,0,0,0,0,100,0),
(@PATH,15,3765.363,6646.322,152.2002,0,0,0,0,100,0),
(@PATH,16,3761.535,6649.459,151.5641,0,0,0,0,100,0),
(@PATH,17,3761.412,6649.275,151.5081,0,0,0,0,100,0),
(@PATH,18,3775.165,6638.005,152.7578,0,0,0,0,100,0),
(@PATH,19,3784.59,6626.891,155.6862,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C0000592B08 .go 3765.189 6646.188 152.2007

DELETE FROM `creature_formations` WHERE `leaderGUID`=122678;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122678, 122678, 0, 0, 2, 0, 0),
(122678, 122663, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122684;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3726.047,`position_y`=6604.721,`position_z`=171.6309 WHERE `guid` IN (@NPC, 122669);
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3726.047,6604.721,171.6309,0,0,0,0,100,0),
(@PATH,2,3737.404,6582.727,172.9987,0,0,0,0,100,0),
(@PATH,3,3752.602,6559.511,175.07,0,0,0,0,100,0),
(@PATH,4,3757.825,6548.518,176.1503,0,0,0,0,100,0),
(@PATH,5,3741.299,6576.517,173.8608,0,0,0,0,100,0),
(@PATH,6,3731.644,6593.12,172.3642,0,0,0,0,100,0),
(@PATH,7,3725.372,6606.514,171.4347,0,0,0,0,100,0),
(@PATH,8,3726.047,6604.721,171.6309,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C0000592BE0 .go 3726.047 6604.721 171.6309

DELETE FROM `creature_formations` WHERE `leaderGUID`=122684;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122684, 122684, 0, 0, 2, 0, 0),
(122684, 122669, 4, 0, 2, 0, 0);

-- Coldarra Spellweaver SAI
SET @ENTRY := 25722;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,600,5300,11,34447,64,0,0,0,0,2,0,0,0,0,0,0,0,"Coldarra Spellweaver - In Combat - Cast 'Arcane Missiles'"),
(@ENTRY,0,1,0,1,0,100,0,100,100,45000,45000,11,39550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coldarra Spellweaver - Out of Combat - Cast 'Arcane Channeling'");

-- Coldarra Spellbinder SAI
SET @ENTRY := 25719;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3900,5800,11,9672,64,0,0,0,0,2,0,0,0,0,0,0,0,"Coldarra Spellbinder - In Combat - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,1700,13500,172100,172100,11,50583,1,0,0,0,0,1,0,0,0,0,0,0,0,"Coldarra Spellbinder - In Combat - Cast 'Summon Frozen Spheres'"),
(@ENTRY,0,2,0,1,0,100,0,100,100,45000,45000,11,39550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Coldarra Spellbinder - Out of Combat - Cast 'Arcane Channeling'");

-- Inquisitor Caleras SAI
SET @ENTRY := 25720;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,6200,11,15043,64,0,0,0,0,2,0,0,0,0,0,0,0,"Inquisitor Caleras - In Combat - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,0,0,100,0,9800,21300,18400,18400,11,32192,1,0,0,0,0,1,0,0,0,0,0,0,0,"Inquisitor Caleras - In Combat - Cast 'Frost Nova'"),
(@ENTRY,0,2,0,1,0,100,0,100,100,45000,45000,11,39550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Inquisitor Caleras - Out of Combat - Cast 'Arcane Channeling'");

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122676;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3839.049,`position_y`=6746.131,`position_z`=150.8772 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3839.049,6746.131,150.8772,0,0,0,0,100,0),
(@PATH,2,3838.777,6746.075,150.6292,0,0,0,0,100,0),
(@PATH,3,3838.793,6746.344,150.9143,0,0,0,0,100,0),
(@PATH,4,3826.649,6753.63,150.9941,0,0,0,0,100,0),
(@PATH,5,3811.169,6750.051,150.4951,0,0,0,0,100,0),
(@PATH,6,3811.172,6750.112,150.299,0,0,0,0,100,0),
(@PATH,7,3811.489,6750.411,150.5408,0,0,0,0,100,0),
(@PATH,8,3826.923,6753.677,150.8951,0,0,0,0,100,0),
(@PATH,9,3839.046,6746.012,150.8834,0,0,0,0,100,0),
(@PATH,10,3838.777,6746.075,150.6292,0,0,0,0,100,0),
(@PATH,11,3838.828,6746.229,150.9149,0,0,0,0,100,0),
(@PATH,12,3826.723,6753.648,150.7468,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005924AC .go 3839.049 6746.131 150.8772

DELETE FROM `creature_formations` WHERE `leaderGUID`=122676;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122676, 122676, 0, 0, 2, 0, 0),
(122676, 122662, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122680;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3863.127,`position_y`=6753.518,`position_z`=150.5189 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3863.127,6753.518,150.5189,0,0,0,0,100,0),
(@PATH,2,3860.453,6741.29,150.7381,0,0,0,0,100,0),
(@PATH,3,3875.973,6736.009,151.0474,0,0,0,0,100,0),
(@PATH,4,3886.431,6727.403,151.3167,0,0,0,0,100,0),
(@PATH,5,3886.167,6727.198,151.1895,0,0,0,0,100,0),
(@PATH,6,3886.265,6727.485,151.3074,0,0,0,0,100,0),
(@PATH,7,3875.836,6736.28,151.0612,0,0,0,0,100,0),
(@PATH,8,3860.38,6741.66,150.7448,0,0,0,0,100,0),
(@PATH,9,3862.974,6753.514,150.6811,0,0,0,0,100,0),
(@PATH,10,3867.98,6753.716,150.6562,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005924B3 .go 3863.127 6753.518 150.5189

DELETE FROM `creature_formations` WHERE `leaderGUID`=122680;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122680, 122680, 0, 0, 2, 0, 0),
(122680, 122665, 4, 0, 2, 0, 0);

-- Pathing for  Entry: 25719 'TDB FORMAT' 
SET @NPC := 122685;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3908.275,`position_y`=6757.146,`position_z`=150.8441 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3908.275,6757.146,150.8441,0,0,0,0,100,0),
(@PATH,2,3893.045,6770.693,150.8547,0,0,0,0,100,0),
(@PATH,3,3880.528,6782.54,150.7091,0,0,0,0,100,0),
(@PATH,4,3880.478,6782.537,150.6073,0,0,0,0,100,0),
(@PATH,5,3880.76,6782.527,150.8653,0,0,0,0,100,0),
(@PATH,6,3893.34,6770.562,150.8441,0,0,0,0,100,0),
(@PATH,7,3908.603,6756.879,150.896,0,0,0,0,100,0),
(@PATH,8,3925.911,6721.284,153.766,0,0,0,0,100,0),
(@PATH,9,3920.531,6713.925,153.515,0,0,0,0,100,0),
(@PATH,10,3906.757,6706.551,151.9455,0,0,0,0,100,0),
(@PATH,11,3894.688,6701.577,151.5052,0,0,0,0,100,0),
(@PATH,12,3894.756,6701.676,151.4043,0,0,0,0,100,0),
(@PATH,13,3916.371,6709.826,152.6267,0,0,0,0,100,0),
(@PATH,14,3921.297,6714.496,153.5745,0,0,0,0,100,0),
(@PATH,15,3929.399,6745.379,151.6542,0,0,0,0,100,0),
(@PATH,16,3919.581,6752.038,150.9705,0,0,0,0,100,0),
(@PATH,17,3908.269,6757.149,150.8441,0,0,0,0,100,0),
(@PATH,18,3893.047,6770.691,150.8547,0,0,0,0,100,0),
(@PATH,19,3880.51,6782.556,150.7091,0,0,0,0,100,0);
-- 0x1C09144760191DC000000C00005932EB .go 3908.275 6757.146 150.8441

DELETE FROM `creature_formations` WHERE `leaderGUID`=122685;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(122685, 122685, 0, 0, 2, 0, 0),
(122685, 122670, 4, 0, 2, 0, 0);

UPDATE `creature` SET `spawndist`=20 WHERE  `guid`=122550;

UPDATE `creature` SET `spawndist`=15 WHERE `id`=25721;

-- Pathing for  Entry: 25717 'TDB FORMAT' 
SET @NPC := 122652;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4071.958,`position_y`=7059.748,`position_z`=166.7365 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4071.958,7059.748,166.7365,0,0,0,0,100,0),
(@PATH,2,4072.932,7060.661,166.5419,0,0,0,0,100,0),
(@PATH,3,4087.155,7066.582,166.7904,0,0,0,0,100,0),
(@PATH,4,4086.809,7066.466,166.6568,0,0,0,0,100,0),
(@PATH,5,4086.776,7066.416,166.7174,0,0,0,0,100,0),
(@PATH,6,4062.645,7049.889,167.7236,0,0,0,0,100,0),
(@PATH,7,4054.082,7027.509,166.672,0,0,0,0,100,0),
(@PATH,8,4059.144,7041.778,167.9961,0,0,0,0,100,0),
(@PATH,9,4071.981,7059.813,166.7345,0,0,0,0,100,0);
-- 0x1C09144760191D4000000C00005932C9 .go 4071.958 7059.748 166.7365

-- General Cerulean SAI
SET @ENTRY := 25716;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,10200,13600,10000,12000,11,15499,0,0,0,0,0,2,0,0,0,0,0,0,0,"General Cerulean - In Combat - Cast 'Frost Shock'"),
(@ENTRY,0,1,0,1,0,100,0,100,100,45000,45000,11,39550,0,0,0,0,0,1,0,0,0,0,0,0,0,"General Cerulean - Out of Combat - Cast 'Arcane Channeling'");

UPDATE `creature` SET `spawndist`=20 WHERE  `guid` IN (122547, 122551);

-- Pathing for  Entry: 25713 'TDB FORMAT' 
SET @NPC := 122611;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3820.672,`position_y`=7153.959,`position_z`=163.4258 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3820.672,7153.959,163.4258,0,0,0,0,100,0),
(@PATH,2,3816.873,7173.65,161.3409,0,0,0,0,100,0),
(@PATH,3,3819.527,7160.829,162.4046,0,0,0,0,100,0),
(@PATH,4,3821.152,7145.412,164.2622,0,0,0,0,100,0),
(@PATH,5,3820.075,7133.457,165.5549,0,0,0,0,100,0),
(@PATH,6,3819.108,7129.334,166.0357,0,0,0,0,100,0),
(@PATH,7,3819.164,7129.457,165.8505,0,0,0,0,100,0),
(@PATH,8,3820.722,7140.354,165.1108,0,0,0,0,100,0),
(@PATH,9,3820.762,7154.072,163.3669,0,0,0,0,100,0),
(@PATH,10,3816.832,7173.758,161.5131,0,0,0,0,100,0);
-- 0x1C09144760191C4000000C0000590957 .go 3820.672 7153.959 163.4258

-- Pathing for  Entry: 25713 'TDB FORMAT' 
SET @NPC := 122643;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3715.234,`position_y`=7159.224,`position_z`=160.5815 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3715.234,7159.224,160.5815,0,0,0,0,100,0),
(@PATH,2,3712.465,7168.071,160.3927,0,0,0,0,100,0),
(@PATH,3,3711.697,7180.112,160.1553,0,0,0,0,100,0),
(@PATH,4,3712.53,7195.874,160.5102,0,0,0,0,100,0),
(@PATH,5,3712.202,7195.61,160.2491,0,0,0,0,100,0),
(@PATH,6,3712.354,7195.505,160.5099,0,0,0,0,100,0),
(@PATH,7,3711.637,7179.952,160.1052,0,0,0,0,100,0),
(@PATH,8,3712.478,7167.976,160.2884,0,0,0,0,100,0),
(@PATH,9,3715.501,7158.848,160.5296,0,0,0,0,100,0),
(@PATH,10,3715.303,7158.94,160.4226,0,0,0,0,100,0),
(@PATH,11,3715.255,7159.067,160.5904,0,0,0,0,100,0),
(@PATH,12,3712.359,7168.119,160.3639,0,0,0,0,100,0),
(@PATH,13,3711.62,7180.215,160.1398,0,0,0,0,100,0),
(@PATH,14,3712.332,7195.925,160.5264,0,0,0,0,100,0);
-- 0x1C09144760191C4000000C0000592DB7 .go 3715.234 7159.224 160.5815

-- Warbringer Goredrak SAI
SET @ENTRY := 25712;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,200,16900,21200,11,50534,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warbringer Goredrak - In Combat - Cast 'Power Sap'"),
(@ENTRY,0,1,0,0,0,100,0,5900,6700,16800,21200,11,50545,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warbringer Goredrak - In Combat - Cast 'Arcane Blast'"),
(@ENTRY,0,2,0,1,0,100,0,100,100,45000,45000,11,39550,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warbringer Goredrak - Out of Combat - Cast 'Arcane Channeling'");

UPDATE `creature` SET `spawndist`=10 WHERE  `guid`=122806;
UPDATE `creature` SET `spawndist`=15 WHERE  `guid` IN (122824, 122545);
-- Pathing for  Entry: 25709 'TDB FORMAT' 
SET @NPC := 122562;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3821.72,`position_y`=7226.874,`position_z`=165.7941 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3821.72,7226.874,165.7941,0,0,0,0,100,0),
(@PATH,2,3840.45,7225.532,167.5351,0,0,0,0,100,0),
(@PATH,3,3854.693,7219.692,168.801,0,0,0,0,100,0),
(@PATH,4,3872.789,7201.074,168.0432,0,0,0,0,100,0),
(@PATH,5,3877.849,7192.911,167.4686,0,0,0,0,100,0),
(@PATH,6,3853.227,7162.686,166.2984,0,0,0,0,100,0),
(@PATH,7,3831.403,7190.82,162.3192,0,0,0,0,100,0),
(@PATH,8,3821.685,7226.815,165.7664,0,0,0,0,100,0);
-- 0x1C09144760191B4000000C00005929B2 .go 3821.72 7226.874 165.7941

-- Pathing for  Entry: 25717 'TDB FORMAT' 
SET @NPC := 122655;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4158.797,`position_y`=7025.598,`position_z`=165.7506 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4158.797,7025.598,165.7506,0,0,0,0,100,0),
(@PATH,2,4158.771,7025.846,166.0288,0,0,0,0,100,0),
(@PATH,3,4149.362,7040.18,166.0216,0,0,0,0,100,0),
(@PATH,4,4141.375,7046.86,165.9186,0,0,0,0,100,0),
(@PATH,5,4128.7,7050.973,165.6986,0,0,0,0,100,0),
(@PATH,6,4128.795,7050.833,165.5718,0,0,0,0,100,0),
(@PATH,7,4129.043,7050.743,165.6772,0,0,0,0,100,0),
(@PATH,8,4141.438,7046.565,166.0175,0,0,0,0,100,0),
(@PATH,9,4149.486,7040.006,166.0294,0,0,0,0,100,0),
(@PATH,10,4159.022,7025.654,165.9743,0,0,0,0,100,0);
-- 0x1C09144760191D4000000C000059272B .go 4158.797 7025.598 165.7506
--
SET @NPC:= 25968;
UPDATE `creature_template` SET `VehicleId`=30 WHERE `entry`=@NPC;
DELETE FROM `vehicle_template_accessory` where `entry` in (@NPC) AND `accessory_entry` IN (25801);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(@NPC,25801,0,0,'Lunchbox',8,0);
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = @NPC;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@NPC, 46598, 1, 0);

-- Nedar, Lord of Rhinos SAI
SET @ENTRY := 25801;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - On Aggro - Say Line 0 (Phase 1) (No Repeat)"),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - On Aggro - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,4,1,100,1,0,0,0,0,11,41440,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - On Aggro - Cast 'Shoot' (Phase 1) (No Repeat)"),
(@ENTRY,0,4,0,9,1,100,0,5,30,3500,4100,11,41440,0,0,0,0,0,2,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - Within 5-30 Range - Cast 'Shoot' (Phase 1)"),
(@ENTRY,0,5,0,9,1,100,0,30,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - Within 30-100 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,9,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - Within 9-15 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - Within 0-5 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,5,30,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nedar, Lord of Rhinos - Within 5-30 Range - Disable Combat Movement (Phase 1)");
-- Complete the Broadcast_text
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(@ENTRY, 0, 0, 'Your impetuousness will be your end!', 12, 0, 100, 0, 0, 0, 'Nedar', 25103),
(@ENTRY, 0, 1, 'You dare challenge Nedar, lord of the tundral!?', 12, 0, 100, 0, 0, 0, 'Nedar', 25102),
(@ENTRY, 0, 2, 'You don''t stand a chance!', 12, 0, 100, 0, 0, 0, 'Nedar', 25104);

-- Pathing for  Entry: 25968 'TDB FORMAT' 
SET @NPC := 106302;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3170.232,`position_y`=5968.757,`position_z`=96.36165 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3170.232,5968.757,96.36165,0,0,0,0,100,0),
(@PATH,2,3159.33,5950.815,95.96857,0,0,0,0,100,0),
(@PATH,3,3162.685,5902.838,96.0918,0,0,0,0,100,0),
(@PATH,4,3169.452,5888.983,97.71611,0,0,0,0,100,0),
(@PATH,5,3204.079,5874.618,97.02065,0,0,0,0,100,0),
(@PATH,6,3238.726,5868.98,94.07452,0,0,0,0,100,0),
(@PATH,7,3266.804,5867.507,86.87187,0,0,0,0,100,0),
(@PATH,8,3300.308,5874.12,83.72194,0,0,0,0,100,0),
(@PATH,9,3328.993,5853.078,78.86817,0,0,0,0,100,0),
(@PATH,10,3344.677,5812.18,67.82541,0,0,0,0,100,0),
(@PATH,11,3341.184,5774.667,61.2993,0,0,0,0,100,0),
(@PATH,12,3357.205,5767.466,65.42284,0,0,0,0,100,0),
(@PATH,13,3357.227,5799.264,67.74834,0,0,0,0,100,0),
(@PATH,14,3359.967,5824.072,71.90356,0,0,0,0,100,0),
(@PATH,15,3354.479,5873.997,76.9686,0,0,0,0,100,0),
(@PATH,16,3341.863,5907.724,79.92758,0,0,0,0,100,0),
(@PATH,17,3316.034,5925.089,85.70946,0,0,0,0,100,0),
(@PATH,18,3293.812,5947.116,82.76896,0,0,0,0,100,0);
-- 0x2009144760195C0000000C000057E949 .go 3170.232 5968.757 96.36165
--
UPDATE `creature` SET `MovementType`=0 WHERE  `guid` IN (126701,126703,126711);
UPDATE `creature` SET `equipment_id`=0 WHERE `id` IN (12237,  12224);
--
UPDATE `creature` SET `MovementType`=0 WHERE `guid` = 58021;
UPDATE `creature` SET `MovementType`=1 WHERE `guid` IN (122545, 122824);
--
UPDATE `creature_template` SET `unit_class`=4 WHERE  `entry`=32535;
UPDATE `creature_template_addon` SET`auras`="" WHERE`entry` IN (26608, 31306); -- vehicle auras appear only when the npc ride a vehicle or when he's mounted
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=35427;
--
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND  `SourceGroup`=1 AND `SourceEntry`=49947;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 1, 49947, 0, 0, 31, 0, 3, 19871, 0, 0, 0, 0, '', 'Laser - only targets Bunny');

-- Scavenge-bot 004-A8 SAI
SET @ENTRY := 25752;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id` >=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,3,0,1,0,100,0,5000,5000,15000,20000,11,49947,0,0,0,0,0,19,19871,25,0,0,0,0,0,"Scavenge-bot 004-A8 - Out of Combat - Cast 'Cutting Laser'"),
(@ENTRY,0,4,0,1,0,100,0,20000,25000,35000,40000,5,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scavenge-bot 004-A8 - Out of Combat - Play Emote 35");
-- Pathing for Stonebreaker Grunt Entry: 18973 'TDB FORMAT' 
SET @NPC := 68131;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2562.284,`position_y`=4397.473,`position_z`=58.68661 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2562.284,4397.473,58.68661,0,0,0,0,100,0),
(@PATH,2,-2551.224,4407.652,53.44283,0,0,0,0,100,0),
(@PATH,3,-2547.335,4405.842,52.35535,0,0,0,0,100,0),
(@PATH,4,-2543.202,4397.742,52.17545,0,0,0,0,100,0),
(@PATH,5,-2547.734,4388.876,52.18408,0,0,0,0,100,0),
(@PATH,6,-2556.611,4386.977,52.1886,0,0,0,0,100,0),
(@PATH,7,-2556.627,4386.753,51.9386,0,0,0,0,100,0),
(@PATH,8,-2556.481,4387.06,52.1886,0,0,0,0,100,0),
(@PATH,9,-2543.486,4397,52.17455,0,0,0,0,100,0),
(@PATH,10,-2547.152,4405.732,52.17457,0,0,0,0,100,0),
(@PATH,11,-2558.628,4405.742,57.89645,0,0,0,0,100,0),
(@PATH,12,-2562.429,4397.533,58.73559,0,0,0,0,100,0),
(@PATH,13,-2562.816,4394.701,58.72124,0,0,0,0,100,0),
(@PATH,14,-2547.645,4388.162,58.39926,0,0,0,0,100,0),
(@PATH,15,-2545.306,4391.472,58.38942,0,0,0,0,100,0),
(@PATH,16,-2543.268,4397.77,58.69866,0,0,0,0,100,0),
(@PATH,17,-2543.174,4397.481,58.44216,0,0,0,0,100,0),
(@PATH,18,-2545.374,4391.247,58.40757,0,0,0,0,100,0),
(@PATH,19,-2554.22,4387.671,58.65759,0,0,0,0,100,0),
(@PATH,20,-2562.223,4394.01,58.45053,0,0,0,0,100,0),
(@PATH,21,-2562.396,4397.497,58.69535,0,0,0,0,100,0),
(@PATH,22,-2551.103,4407.721,53.44612,0,0,0,0,100,0),
(@PATH,23,-2547.447,4405.818,52.24909,0,0,0,0,100,0),
(@PATH,24,-2543.19,4397.657,52.17642,0,0,0,0,100,0),
(@PATH,25,-2547.777,4388.548,52.18584,0,0,0,0,100,0),
(@PATH,26,-2556.725,4387.103,52.1886,0,0,0,0,100,0),
(@PATH,27,-2556.627,4386.753,51.9386,0,0,0,0,100,0),
(@PATH,28,-2556.351,4386.949,52.1886,0,0,0,0,100,0),
(@PATH,29,-2543.485,4397.102,52.17455,0,0,0,0,100,0),
(@PATH,30,-2547.133,4405.784,52.17457,0,0,0,0,100,0),
(@PATH,31,-2558.618,4405.514,57.89614,0,0,0,0,100,0),
(@PATH,32,-2562.308,4397.42,58.72334,0,0,0,0,100,0),
(@PATH,33,-2562.909,4394.518,58.71896,0,0,0,0,100,0),
(@PATH,34,-2547.697,4388.187,58.39987,0,0,0,0,100,0),
(@PATH,35,-2545.525,4391.353,58.41209,0,0,0,0,100,0),
(@PATH,36,-2543.177,4397.777,58.7028,0,0,0,0,100,0),
(@PATH,37,-2543.174,4397.481,58.44216,0,0,0,0,100,0),
(@PATH,38,-2545.295,4391.392,58.40459,0,0,0,0,100,0),
(@PATH,39,-2554.367,4387.682,58.65977,0,0,0,0,100,0),
(@PATH,40,-2562.382,4393.967,58.45837,0,0,0,0,100,0);
-- 0x1C3930424012874000002C0003BF2EBC .go -2562.284 4397.473 58.68661

-- Pathing for Stonebreaker Grunt Entry: 18973 'TDB FORMAT' 
SET @NPC := 68132;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2582.699,`position_y`=4367.507,`position_z`=27.14433 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2582.699,4367.507,27.14433,240000,0,0,0,100,0),
(@PATH,2,-2595.828,4382.915,29.9575,0,0,0,0,100,0),
(@PATH,3,-2613.849,4391.314,33.12907,0,0,0,0,100,0),
(@PATH,4,-2632.729,4386.462,35.28672,0,0,0,0,100,0),
(@PATH,5,-2636.813,4385.448,35.57519,0,0,0,0,100,0),
(@PATH,6,-2667.237,4407.722,35.60794,0,0,0,0,100,0),
(@PATH,7,-2701.92,4386.847,28.3668,0,0,0,0,100,0),
(@PATH,8,-2708.737,4383.311,26.62656,0,0,0,0,100,0),
(@PATH,9,-2671.687,4406.917,35.27893,0,0,0,0,100,0),
(@PATH,10,-2638.984,4412.332,35.20811,0,0,0,0,100,0),
(@PATH,11,-2613.415,4394.945,33.2278,0,0,0,0,100,0),
(@PATH,12,-2591.59,4381.07,29.3395,0,0,0,0,100,0);
-- 0x1C3930424012874000002C00023F2EBA .go -2582.699 4367.507 27.14433

-- Pathing for Stonebreaker Peon Entry: 19048 'TDB FORMAT' 
SET @NPC := 68353;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2607.763,`position_y`=4381.312,`position_z`=33.58602 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,69, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2607.763,4381.312,33.58602,0,0,0,0,100,0),
(@PATH,2,-2633.11,4379.769,35.77549,0,0,0,0,100,0),
(@PATH,3,-2634.318,4379.514,35.83887,0,0,0,0,100,0),
(@PATH,4,-2647.237,4382.08,36.08328,0,240000,0,0,100,0),
(@PATH,5,-2642.319,4381.9,35.72264,0,0,0,0,100,0),
(@PATH,6,-2642.08,4381.872,35.9688,0,0,0,0,100,0),
(@PATH,7,-2607.333,4387.602,31.9885,0,0,0,0,100,0),
(@PATH,8,-2603.056,4389.318,31.18134,0,0,0,0,100,0),
(@PATH,9,-2598.985,4391.519,30.64458,0,240000,0,0,100,0),
(@PATH,10,-2592.19,4391.983,30.50177,0,240000,0,0,100,0),
(@PATH,11,-2568.814,4388.118,33.5708,0,0,0,0,100,0),
(@PATH,12,-2567.081,4387.359,34.20564,0,240000,0,0,100,0);
-- 0x1C39304240129A0000002C00023F2EBC .go -2607.763 4381.312 33.58602

-- Update Keb'ezil's movement, he should be running around as an imp.
UPDATE `creature` SET `MovementType`=1 WHERE `guid`=66944;
UPDATE `creature` SET `spawndist`=5 WHERE `guid`=66944;

-- Update coordinates of Ru'zah
UPDATE `creature` SET `position_x`=-2627.9, `position_y`=4486.034, `position_z`=36.21471 WHERE `guid`=74329;
-- Urdak SAI
SET @ENTRY := 18541;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Out of Combat - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,1,0,0,0,0,11,32924,1,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - In Combat - Cast 'Power of Kran'aish' (No Repeat)"),
(@ENTRY,0,2,3,4,0,100,1,0,0,0,0,11,38465,0,0,0,0,0,2,0,0,0,0,0,0,0,"Urdak - On Aggro - Cast 'Lightning Bolt' (No Repeat)"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - On Aggro - Increment Phase By 1 (No Repeat)"),
(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,38465,0,0,0,0,0,2,0,0,0,0,0,0,0,"Urdak - Within 0-40 Range - Cast 'Lightning Bolt' (No Repeat)"),
(@ENTRY,0,5,6,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,7,0,9,1,100,1,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,8,0,9,1,100,1,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,9,0,9,1,100,1,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,10,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,11,0,0,0,100,0,6000,10000,12000,16000,11,32907,1,0,0,0,0,2,0,0,0,0,0,0,0,"Urdak - In Combat - Cast 'Arakkoa Blast' (Phase 1) (No Repeat)"),
(@ENTRY,0,12,0,0,0,100,0,10000,14000,18000,25000,11,6728,1,0,0,0,0,6,0,0,0,0,0,0,0,"Urdak - In Combat - Cast 'Enveloping Winds' (Phase 1) (No Repeat)"),
(@ENTRY,0,13,14,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Between 0-15% Health - Set Event Phase 3 (No Repeat)"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Urdak - Between 0-15% Health - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Urdak - Between 0-15% Health - Flee For Assist (No Repeat)");

-- Pathing for Urdak Entry: 18541 'TDB FORMAT' 
SET @NPC := 66701;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2531.757,`position_y`=5367.723,`position_z`=27.48038 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2531.757,5367.723,27.48038,0,0,0,0,100,0),
(@PATH,2,-2522.244,5363.866,27.5043,0,0,0,0,100,0),
(@PATH,3,-2511.568,5370.136,27.19551,0,0,0,0,100,0),
(@PATH,4,-2509.842,5376.426,27.17996,0,0,0,0,100,0),
(@PATH,5,-2514.843,5388.665,27.42471,0,0,0,0,100,0),
(@PATH,6,-2525.896,5389.706,27.21724,0,0,0,0,100,0),
(@PATH,7,-2531.956,5386.355,27.44649,0,0,0,0,100,0),
(@PATH,8,-2535.825,5377.078,27.48491,0,0,0,0,100,0);
-- 0x1C39304240121B400000D00000395D5F .go -2531.757 5367.723 27.48038

DELETE FROM `creature_formations` WHERE `leaderGUID`=66960;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(66960, 66960, 0, 0, 2),
(66960, 57334, 3, 270, 2);

-- Pathing for Shadowy Hunter Entry: 18718 'TDB FORMAT' 
SET @NPC := 66960;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2399.251,`position_y`=4948.647,`position_z`=33.51818 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2399.251,4948.647,33.51818,0,0,0,0,100,0),
(@PATH,2,-2382.013,4957.111,36.26661,0,0,0,0,100,0),
(@PATH,3,-2386.387,4964.082,33.5477,0,0,0,0,100,0),
(@PATH,4,-2396.421,4967.332,32.63216,0,0,0,0,100,0),
(@PATH,5,-2404.207,4968.344,32.13279,0,0,0,0,100,0),
(@PATH,6,-2411.476,4973.782,31.9511,0,0,0,0,100,0),
(@PATH,7,-2419.75,5004.045,29.51139,0,0,0,0,100,0),
(@PATH,8,-2423.043,5009.497,29.88427,0,0,0,0,100,0),
(@PATH,9,-2425.305,5012.542,29.87346,0,0,0,0,100,0),
(@PATH,10,-2452.268,5014.185,28.21556,0,0,0,0,100,0),
(@PATH,11,-2455.99,5026.977,25.38416,0,0,0,0,100,0),
(@PATH,12,-2461.66,5046.541,20.78516,0,0,0,0,100,0),
(@PATH,13,-2468.601,5062.008,17.91999,0,0,0,0,100,0),
(@PATH,14,-2471.484,5074.755,15.08363,0,0,0,0,100,0),
(@PATH,15,-2462.648,5034.314,23.94722,0,0,0,0,100,0),
(@PATH,16,-2458.38,5013.544,27.85468,0,0,0,0,100,0),
(@PATH,17,-2460.833,5004.856,28.65945,0,0,0,0,100,0),
(@PATH,18,-2468.316,4978.999,31.72539,0,0,0,0,100,0),
(@PATH,19,-2469.694,4960.631,33.31852,0,0,0,0,100,0),
(@PATH,20,-2466.243,4944.808,34.89827,0,0,0,0,100,0),
(@PATH,21,-2466.676,4930.218,36.72472,0,0,0,0,100,0),
(@PATH,22,-2473.81,4922.928,38.69386,0,0,0,0,100,0),
(@PATH,23,-2476.339,4921.196,39.03951,0,0,0,0,100,0),
(@PATH,24,-2486.696,4911.087,38.99028,0,0,0,0,100,0),
(@PATH,25,-2488.085,4899.312,39.16518,0,0,0,0,100,0),
(@PATH,26,-2466.59,4887.837,36.24532,0,0,0,0,100,0),
(@PATH,27,-2459.039,4893.131,34.30416,0,0,0,0,100,0),
(@PATH,28,-2456.6,4895.325,33.89172,0,0,0,0,100,0),
(@PATH,29,-2455.763,4912.572,33.6131,0,0,0,0,100,0),
(@PATH,30,-2459.973,4922.549,33.84817,0,0,0,0,100,0),
(@PATH,31,-2454.409,4941.216,34.89568,0,0,0,0,100,0),
(@PATH,32,-2453.032,4942.258,34.88249,0,0,0,0,100,0),
(@PATH,33,-2441.288,4944.204,34.91498,0,0,0,0,100,0),
(@PATH,34,-2424.706,4957.187,34.11639,0,0,0,0,100,0),
(@PATH,35,-2420.334,4960.088,33.7532,0,0,0,0,100,0),
(@PATH,36,-2399.827,4949.04,33.55933,0,0,0,0,100,0);
-- 0x1C393042401247800000D80000395139 .go -2399.251 4948.647 33.51818

DELETE FROM `creature_formations` WHERE `leaderGUID`=66959;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(66959, 66959, 0, 0, 2),
(66959, 57324, 3, 270, 2);

-- Pathing for Shadowy Hunter Entry: 18718 'TDB FORMAT' 
SET @NPC := 66959;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-2458.59,`position_y`=4883.933,`position_z`=34.63649 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-2458.59,4883.933,34.63649,0,0,0,0,100,0),
(@PATH,2,-2454.139,4881.942,34.18031,0,0,0,0,100,0),
(@PATH,3,-2441.338,4867.939,34.96668,0,0,0,0,100,0),
(@PATH,4,-2447.259,4881.18,33.54724,0,0,0,0,100,0),
(@PATH,5,-2454.204,4888.805,33.82166,0,0,0,0,100,0),
(@PATH,6,-2455.784,4897.667,33.77719,0,0,0,0,100,0),
(@PATH,7,-2455.145,4910.682,33.57897,0,0,0,0,100,0),
(@PATH,8,-2459.188,4921.684,33.73078,0,0,0,0,100,0),
(@PATH,9,-2455.591,4939.817,34.61909,0,0,0,0,100,0),
(@PATH,10,-2453.116,4941.684,35.0243,0,0,0,0,100,0),
(@PATH,11,-2443.437,4943.616,34.76263,0,0,0,0,100,0),
(@PATH,12,-2431.095,4940.732,36.18304,0,0,0,0,100,0),
(@PATH,13,-2422.104,4931.316,35.36322,0,0,0,0,100,0),
(@PATH,14,-2418.187,4924.916,36.3769,0,0,0,0,100,0),
(@PATH,15,-2425.994,4937.722,36.55001,0,0,0,0,100,0),
(@PATH,16,-2430.061,4945.802,35.26893,0,0,0,0,100,0),
(@PATH,17,-2429.3,4947.917,34.86908,0,0,0,0,100,0),
(@PATH,18,-2424.078,4963.271,33.09982,0,0,0,0,100,0),
(@PATH,19,-2421.393,4974.704,31.43381,0,0,0,0,100,0),
(@PATH,20,-2421.332,4975.644,31.21901,0,0,0,0,100,0),
(@PATH,21,-2418.137,5000.565,30.00104,0,0,0,0,100,0),
(@PATH,22,-2417.527,5002.019,29.37036,0,0,0,0,100,0),
(@PATH,23,-2416.402,5010.205,29.2325,0,0,0,0,100,0),
(@PATH,24,-2417.669,5014.722,28.97691,0,0,0,0,100,0),
(@PATH,25,-2428.226,5012.224,29.9898,0,0,0,0,100,0),
(@PATH,26,-2444.966,5008.044,29.51899,0,0,0,0,100,0),
(@PATH,27,-2453.993,5013.485,28.19345,0,0,0,0,100,0),
(@PATH,28,-2456.664,5023.554,26.07574,0,0,0,0,100,0),
(@PATH,29,-2459.761,5038.568,22.79576,0,0,0,0,100,0),
(@PATH,30,-2465.731,5053.402,19.17121,0,0,0,0,100,0),
(@PATH,31,-2467.348,5032.213,24.09672,0,0,0,0,100,0),
(@PATH,32,-2467.405,5023.126,25.73068,0,0,0,0,100,0),
(@PATH,33,-2467.814,5012.714,28.07976,0,0,0,0,100,0),
(@PATH,34,-2470.525,4997.041,29.28029,0,0,0,0,100,0),
(@PATH,35,-2471.126,4980.461,31.38793,0,0,0,0,100,0),
(@PATH,36,-2477.811,4974.808,32.3695,0,0,0,0,100,0),
(@PATH,37,-2497.777,4966.848,35.28411,0,0,0,0,100,0),
(@PATH,38,-2506.064,4953.317,38.70324,0,0,0,0,100,0),
(@PATH,39,-2510.001,4942.142,39.95487,0,0,0,0,100,0),
(@PATH,40,-2510.834,4938.938,40.30884,0,0,0,0,100,0),
(@PATH,41,-2510.035,4921.547,39.56293,0,0,0,0,100,0),
(@PATH,42,-2510.577,4918.453,39.31087,0,0,0,0,100,0),
(@PATH,43,-2507.691,4905.567,39.31522,0,0,0,0,100,0),
(@PATH,44,-2500.221,4899.546,39.09933,0,0,0,0,100,0),
(@PATH,45,-2490.795,4896.659,39.47167,0,0,0,0,100,0);
-- 0x1C393042401247800000D800003955BB .go -2458.59 4883.933 34.63649

-- Remove 1 too many 'Shadowy Executioner'
DELETE FROM `creature` WHERE `guid`=57323;
--
DELETE FROM `disables` WHERE `sourceType` =0 AND `entry` IN (71599, 71024) AND `flags`=64;
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(0, 71599, 64, '', '', 'Ignore LOS for Cosmetic - Explosion (Chemical Wagon)'),
(0, 71024, 64, '', '', 'Ignore LOS for Throw Bomb');
--
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=26191;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(26191, 46978, 2, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceGroup`=26191 AND `SourceEntry`=46978;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 26191, 46978, 0, 0, 9, 0, 11956, 0, 0, 0, 0, 0, '', 'Required quest ''Finding the Phylactery'' active for spellclick');

UPDATE `creature_template` SET `minlevel`=80, `maxlevel`=80, `rank`=3, `speed_walk`=2.5, `speed_run`=2.5 WHERE `entry`=28182;

-- Dusk SAI
SET @ENTRY := 28182;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,53,1,28182,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,21,28182,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Waypoint 21 Reached - Despawn Instant"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Just Summoned - Set Reactstate Passive"),
(@ENTRY,0,3,0,28,0,100,0,0,0,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dusk - On Passenger Removed - Despawn Instant");

DELETE FROM `waypoints` WHERE `entry`=28182;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(28182, 1,3137.103,3835.605,23.80482, 'Dusk'),
(28182, 2,3151.105,3841.837,26.15598, 'Dusk'),
(28182, 3,3190.882,3844.668,28.8679, 'Dusk'),
(28182, 4,3232.1,3838.992,27.33721, 'Dusk'),
(28182, 5,3282.762,3832.855,27.20968, 'Dusk'),
(28182, 6,3307.908,3829.667,28.43119, 'Dusk'),
(28182, 7,3340.627,3826.012,25.35527, 'Dusk'),
(28182, 8,3352.079,3823.348,27.22523, 'Dusk'),
(28182, 9,3399.218,3818.613,27.66385, 'Dusk'),
(28182, 10,3439.386,3828.509,27.79152, 'Dusk'),
(28182, 11,3456.517,3835.027,29.58427, 'Dusk'),
(28182, 12,3482.749,3841.445,32.40864, 'Dusk'),
(28182, 13,3531.002,3843.39,33.53048, 'Dusk'),
(28182, 14,3549.508,3830.051,39.22393, 'Dusk'),
(28182, 15,3561.163,3818.268,40.28746, 'Dusk'),
(28182, 16,3573.922,3785.856,36.752, 'Dusk'),
(28182, 17,3574.622,3781.316,36.74898, 'Dusk'),
(28182, 18,3583.712,3758.963,36.55262, 'Dusk'),
(28182, 19,3603.148,3712.664,36.74012, 'Dusk'),
(28182, 20,3605.655,3702.697,36.80239, 'Dusk'),
(28182, 21,3618.601,3670.745,35.97186, 'Dusk');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=10 AND `SourceGroup`=10016 AND `SourceEntry`=46004;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(10, 10016, 46004, 0, 0, 8, 0, 13845, 0, 0, 1, 0, 0, '', 'Sealed vial of poison only drops if player is not rewarded for quest sealed vial of poison');
UPDATE `gossip_menu_option` SET `npc_option_npcflag`=1 WHERE  `menu_id`=9546 AND `id`=1;
--
UPDATE `smart_scripts` SET `target_type`=2 WHERE `entryorguid`=28557 AND `source_type`=0 AND `id`=0;
-- Fix 'Teleport to Lake Wintergrasp'
DELETE FROM `spell_scripts` WHERE `id`=58622;
INSERT INTO `spell_scripts` (`id`, `effIndex`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES
(58622, 0, 1, 6, 571, 0, 0, 5386.05, 2840.97, 418.675, 3.14159);
-- Magnataur Huntress SAI
SET @ENTRY := 24469;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,8,0,100,0,46012,0,0,0,36,25788,0,0,0,0,0,1,0,0,0,0,0,0,0,"Magnataur Huntress - On Spellhit 'Bloodspore Poison' - Update Template To 'Weakened Magnataur Huntress'");
-- Festering Corpse SAI
SET @ENTRY := 31130;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,1,58641,0,0,0,80,@ENTRY*100+00,0,0,0,0,0,1,0,0,0,0,0,0,0,"Festering Corpse - On Spellhit 'Olakin's Torch' - Run Script (No Repeat)");

-- Actionlist SAI
SET @ENTRY := 3113000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,59216,0,0,0,0,0,1,0,0,0,0,0,0,0,"Festering Corpse - On Script - Cast 'Burning Corpse'"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,33,31130,0,0,0,0,0,7,0,0,0,0,0,0,0,"Festering Corpse - On Script - Quest Credit 'By Fire Be Purged'"),
(@ENTRY,9,2,0,0,0,100,0,6000,9000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Festering Corpse - On Script - Despawn Instant");
--
DELETE FROM `event_scripts` WHERE `id` = 14394;
INSERT INTO `event_scripts` (`id`,`delay`,`command`,`datalong`,`datalong2`,`dataint`,`x`,`y`,`z`,`o`) VALUES
(14394,0,8,22395,0,0,0,0,0,0);
--
UPDATE `creature_template` SET `npcflag`=16777217, `InhabitType`=4 WHERE  `entry`=27923;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=27923;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(27923,46598,1,1);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9045 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=8 AND `ConditionTarget`=0 AND `ConditionValue1`=11509 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=9045 AND `SourceEntry`=0 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=28 AND `ConditionTarget`=0 AND `ConditionValue1`=11509 AND `ConditionValue2`=0 AND `ConditionValue3`=0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 9045, 0, 0, 0, 8, 0, 11509, 0, 0, 0, 0, 0, '', 'Lou the Cabin Boy - Show gossip option only if player has taken quest 11509');
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (15, 9045, 0, 0, 1, 28, 0, 11509, 0, 0, 0, 0, 0, '', 'Lou the Cabin Boy - Show gossip option only if player has taken quest 11509');

-- Lou the Cabin Boy SAI
SET @ENTRY := 27923;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,53,1,27923,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,0,28,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Passenger Removed - Despawn Instant"),
(@ENTRY,0,2,0,54,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Just Summoned - Set Reactstate Passive"),
(@ENTRY,0,3,0,40,0,100,0,13,27923,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lou the Cabin Boy - On Waypoint 13 Reached - Despawn Instant");

DELETE FROM `waypoints` WHERE `entry`=27923;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(27923, 1, 556.8802, -2811.598, -0.076807, 'Lou'),
(27923, 2, 482.0306, -2834.213, -0.049029, 'Lou'),
(27923, 3, 454.4951, -2891.859, -0.049029, 'Lou'),
(27923, 4, 335.4129, -2946.441, -0.049029, 'Lou'),
(27923, 5, 262.8804, -3016.949, -0.021251, 'Lou'),
(27923, 6, 147.2193, -3176.037, -0.049029, 'Lou'),
(27923, 7, 86.28928, -3239.844, -0.021251, 'Lou'),
(27923, 8, -22.49794, -3241.448, -0.076807, 'Lou'),
(27923, 9, -151.2886, -3296.966, 0.006526, 'Lou'),
(27923, 10, -195.9667, -3366.19, -0.132362, 'Lou'),
(27923, 11, -255.5049, -3519.14, -0.021251, 'Lou'),
(27923, 12, -217.6928, -3555.593, -0.076807, 'Lou'),
(27923, 13, -201.783, -3548.484, -0.021251, 'Lou');
--
UPDATE `creature_template` SET `spell1`=52331,`spell2`=52358,`spell3`=53032,`spell4`=52327,`spell5`=52321 WHERE `entry`=28115;
-- Dawnblade Marksman SAI
SET @ENTRY := 24979;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,10,0,100,0,0,70,7000,13000,11,45101,0,0,0,0,0,7,0,0,0,0,0,0,0,"Dawnblade Marksman - Within 0-70 Range Out of Combat LoS - Cast 'Flaming Arrow'"),
(@ENTRY,0,1,0,1,0,100,0,3000,3000,5000,5000,11,45101,0,0,0,0,0,19,5202,26,0,0,0,0,0,"Dawnblade Marksman - Out of Combat - Cast 'Flaming Arrow'");

-- Pathing for  Entry: 25001 'TDB FORMAT' 
SET @NPC := 93967;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=12616.02,`position_y`=-6826.477,`position_z`=13.30631 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,12616.02,-6826.477,13.30631,0,0,0,0,100,0),
(@PATH,2,12615.95,-6826.547,13.58466,0,0,0,0,100,0),
(@PATH,3,12607.38,-6830.652,13.76608,0,0,0,0,100,0),
(@PATH,4,12591.51,-6834.896,13.87594,0,0,0,0,100,0),
(@PATH,5,12566.56,-6827.448,16.54662,0,0,0,0,100,0),
(@PATH,6,12579.94,-6832.642,14.98803,0,0,0,0,100,0),
(@PATH,7,12584.21,-6834.116,14.20888,0,0,0,0,100,0),
(@PATH,8,12591.75,-6834.886,13.74139,0,0,0,0,100,0),
(@PATH,9,12607.81,-6830.203,13.69277,0,0,0,0,100,0),
(@PATH,10,12616.39,-6826.547,13.49831,0,0,0,0,100,0),
(@PATH,11,12616.02,-6826.477,13.30631,0,0,0,0,100,0),
(@PATH,12,12615.95,-6826.547,13.5846,0,0,0,0,100,0),
(@PATH,13,12607.6,-6830.664,13.76679,0,0,0,0,100,0),
(@PATH,14,12591.65,-6834.927,13.87652,0,0,0,0,100,0),
(@PATH,15,12566.47,-6827.438,16.55291,0,0,0,0,100,0),
(@PATH,16,12579.94,-6832.642,14.98803,0,0,0,0,100,0),
(@PATH,17,12584.21,-6834.114,14.20937,0,0,0,0,100,0),
(@PATH,18,12591.73,-6834.884,13.74244,0,0,0,0,100,0),
(@PATH,19,12607.78,-6830.21,13.69292,0,0,0,0,100,0),
(@PATH,20,12616.38,-6826.549,13.49841,0,0,0,0,100,0),
(@PATH,21,12616.02,-6826.477,13.30631,0,0,0,0,100,0),
(@PATH,22,12615.95,-6826.547,13.58466,0,0,0,0,100,0),
(@PATH,23,12607.59,-6830.418,13.76704,0,0,0,0,100,0);
-- 0x1C09084240186A4000002E000055E86A .go 12616.02 -6826.477 13.30631

-- Pathing for  Entry: 25001 'TDB FORMAT' 
SET @NPC := 93966;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=12488.71,`position_y`=-6887.34,`position_z`=16.40788 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,12488.71,-6887.34,16.40788,0,0,0,0,100,0),
(@PATH,2,12495.96,-6887.744,16.62086,0,0,0,0,100,0),
(@PATH,3,12491.32,-6874.924,17.07642,0,0,0,0,100,0);
-- 0x1C09084240186A4000002E0000558FDB .go 12488.71 -6887.34 16.40788
--
SET @Ameer  :=20482; -- Image of Commander Ameer
SET @SpellSummon:=35679; -- Summons Protectorate. 
SET @Protectorate:=20802; -- Protectorate Demolitionist
SET @Cleave :=30619; -- Protectorate Demolitionist's Cleave
SET @Hamstring  :=31553; -- Protectorate Demolitionist's Hamstring 
SET @Strike :=16856; -- Protectorate Demolitionist's Mortal Striket
SET @Stalker    :=20474; -- Ethereum Nexus-Stalker
SET @Sshadowtouched:=36515; -- Ethereum Nexus-Stalker's Shadowtouched
SET @Sshadowsurge:=36517; -- Ethereum Nexus-Stalker's Shadowsurge

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@Ameer,@Protectorate,@Stalker);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`= @Ameer AND id IN (5,6);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (@Protectorate,@Stalker);
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid` IN (@Protectorate*100);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@Ameer,0,5,0,19,0,100,0,10406,0,0,0,85,@SpellSummon,2,0,0,0,0,7,0,0,0,0,0,0,0,'Image of Commander Ameer - On Quest 10406 accepted - Cast Summon Protectorate Demolitionist'),
(@Ameer,0,6,0,20,0,100,0,10406,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Image of Commander Ameer - On Quest 10406 accepted - Cast Summon Protectorate Demolitionist'),
(@Protectorate,0,0,0,54,0,100,0,0,0,0,0,1,0,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Just Summoned - Say 0'),
(@Protectorate,0,1,0,52,0,100,0,0,@Protectorate,0,0,53,0,@Protectorate,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Text Over - Start Wp'),
(@Protectorate,0,2,3,40,0,100,0,3,@Protectorate,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Reached WP 3 - Pause Wp'),
(@Protectorate,0,3,0,61,0,100,0,0,0,0,0,1,1,5000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Link Event - Say 1'),
(@Protectorate,0,4,5,40,0,100,0,5,@Protectorate,0,0,54,4000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Reached WP 5 - Pause Wp'),
(@Protectorate,0,5,0,61,0,100,0,0,0,0,0,1,2,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Link Event - Say 2'),
(@Protectorate,0,6,7,40,0,100,0,7,@Protectorate,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Reached WP 7 - Pause Wp'),
(@Protectorate*100,9,0,0,0,0,100,0,0,0,0,0,1,3,14000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Say 3'),
(@Protectorate*100,9,1,0,0,0,100,0,500,500,0,0,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Emote Work'),
(@Protectorate*100,9,2,0,0,0,100,0,3500,3500,0,0,12,@Stalker,2,30000,1,0,0,8,0,0,0,3866.837402,2321.753418,113.736206,0.120686,'Protectorate Demolitionist - Script - Summon Nexus-Stalker'),
(@Protectorate*100,9,3,0,0,0,100,0,0,0,0,0,12,@Stalker,2,30000,1,0,0,8,0,0,0,3879.268799,2321.939209,115.065338,3.137270,'Protectorate Demolitionist - Script - Summon Nexus-Stalker'),
(@Protectorate*100,9,4,0,0,0,100,0,6000,6000,0,0,1,4,4000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Say 4'),
(@Protectorate*100,9,5,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Run'),
(@Protectorate*100,9,6,0,0,0,100,0,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Resume WP'),
(@Protectorate*100,9,7,0,0,0,100,0,0,0,0,0,5,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Script - Emote Work'),
(@Protectorate,0,7,0,61,0,100,0,0,0,0,0,80,@Protectorate*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Link - Start Script'),
(@Protectorate,0,8,9,40,0,100,0,8,@Protectorate,0,0,54,10000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Reached WP 8 - Pause Wp'),
(@Protectorate,0,9,10,61,0,100,0,0,0,0,0,1,5,6000,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Link - Say 5'),
(@Protectorate,0,10,0,61,0,100,0,0,0,0,0,15,10406,0,0,0,0,0,21,15,0,0,0,0,0,0,'Protectorate Demolitionist - Link - Complete Quest'),
(@Protectorate,0,11,12,52,0,100,0,5,@Protectorate,0,0,11,35517,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Text Over - cast teleportaion visual'),
(@Protectorate,0,12,0,61,0,100,0,0,0,0,0,41,2000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - Text Over - despawn'),
(@Protectorate,0,13,0,4,0,100,0,0,0,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Protectorate Demolitionist - On aggro - talk'),
(@Stalker,0,0,0,54,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ethereum Nexus-Stalker - On respawn - Say 0'),
(@Stalker,0,1,0,0,0,100,0,200,200,5000,5000,11,@Sshadowtouched,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ethereum Nexus-Stalker - IC - Cast Shadowtouched'),
(@Stalker,0,2,0,0,0,100,0,500,2000,10000,12000,11,@Sshadowsurge,0,0,0,0,0,2,0,0,0,0,0,0,0,'Ethereum Nexus-Stalker -IC - Cast Shadowsurge');

DELETE FROM `creature_text` WHERE `entry` IN (@Protectorate,@Stalker, @Ameer);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextID`) VALUES
(@Protectorate,0,0,'Let''s do this... Just keep me covered and I''ll deliver the package.',12,0,100,0,0,0,'Protectorate Demolitionist - Comienza escort', 18432),
(@Protectorate,1,0,'By the second sun of K''aresh, look at this place! I can only imagine what Salhadaar is planning. Come on, let''s keep going.',12,0,100,0,0,0,'Protectorate Demolitionist - Waypoint 1', 18433),
(@Protectorate,2,0,'Look there, fleshling! Salhadaar''s conduits! He''s keeping well fed...',12,0,100,0,0,0,'Protectorate Demolitionist - Waypoint 4', 18435),
(@Protectorate,3,0,'Alright, keep me protected while I plant this disruptor. This shouldn''t take very long..',12,0,100,0,0,0,'Protectorate Demolitionist - Waypoint 6', 18436),
(@Protectorate,4,0,'Done! Back up! Back up!',12,0,100,0,0,0,'Protectorate Demolitionist - Disruptor', 18437),
(@Protectorate,5,0,'Looks like my work here is done. Report to the holo-image of Ameer over at the transporter.',12,0,100,0,0,0,'Protectorate Demolitionist - Waypoint 7', 18442),
(@Protectorate,6,0,'I''m under attack! I repeat, I am under attack!',12,0,100,0,0,0,'Protectorate Demolitionist - Being attacked', 18439),
(@Protectorate,6,1,'Keep these things off me!',12,0,100,0,0,0,'Protectorate Demolitionist - Being attacked', 18438),
(@Stalker,0,0,'Protect the conduit! Stop the intruders!',12,0,100,0,0,0,'Ethereum Nexus-Stalker - Protect Conduct',18441),
(@Ameer,0,0,'Hostiles detected. Ending transmission.',12,0,100,15,0,0,'Image of Commander Ameer - On aggro', 18190),
(@Ameer,1,0,'Protectorate transmission complete.',12,0,100,0,0,0,'Ameer - Quest rewarded',18191);

DELETE FROM `waypoints` WHERE `entry`=@Protectorate;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@Protectorate,1,4006.368652,2323.582520,111.407501,'Protectorate Demolitionist'),
(@Protectorate,2,3946.502441,2329.601074,113.647179,'Protectorate Demolitionist'),
(@Protectorate,3,3934.442383,2333.215088,110.971733,'Protectorate Demolitionist'),
(@Protectorate,4,3912.811035,2339.968018,113.876434,'Protectorate Demolitionist'),
(@Protectorate,5,3887.416748,2408.539063,113.081406,'Protectorate Demolitionist'),
(@Protectorate,6,3863.596191,2348.160645,115.446754,'Protectorate Demolitionist'),
(@Protectorate,7,3872.944580,2321.384766,114.501541,'Protectorate Demolitionist'),
(@Protectorate,8,3859.826416,2360.402588,114.603340,'Protectorate Demolitionist');
--
UPDATE creature_template SET npcflag=0 WHERE entry=6776;
-- 
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=2983;
-- The Plains Vision SAI
SET @ENTRY := 2983;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,53,1,2983,0,0,0,0,1,0,0,0,0,0,0,0,"The Plains Vision - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,50,2983,0,0,41,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"The Plains Vision - On Waypoint 50 Reached - Despawn In 1000 ms");

DELETE FROM `waypoints` WHERE `entry`=@ENTRY;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(@ENTRY, 1, -2226.32, -408.095, -9.36235, 'The Plains Vision'), 
(@ENTRY, 2, -2203.04, -437.212, -5.72498, 'The Plains Vision'),  
(@ENTRY, 3, -2163.91, -457.851, -7.09049, 'The Plains Vision'),
(@ENTRY, 4, -2123.87, -448.137, -9.29591, 'The Plains Vision'),    
(@ENTRY, 5, -2104.66, -427.166, -6.49513, 'The Plains Vision'),  
(@ENTRY, 6, -2101.48, -422.826, -5.3567, 'The Plains Vision'),   
(@ENTRY, 7, -2097.56, -417.083, -7.16716, 'The Plains Vision'),   
(@ENTRY, 8, -2084.87, -398.626, -9.88973, 'The Plains Vision'),
(@ENTRY, 9, -2072.71, -382.324, -10.2488, 'The Plains Vision'),  
(@ENTRY, 10, -2054.05, -356.728, -6.22468, 'The Plains Vision'),
(@ENTRY, 11, -2051.8, -353.645, -5.35791, 'The Plains Vision'), 
(@ENTRY, 12, -2049.08, -349.912, -6.15723, 'The Plains Vision'), 
(@ENTRY, 13, -2030.6, -310.724, -9.59302, 'The Plains Vision'),    
(@ENTRY, 14, -2002.15, -249.308, -10.8124, 'The Plains Vision'), 
(@ENTRY, 15, -1972.85, -195.811, -10.6316, 'The Plains Vision'),
(@ENTRY, 16, -1940.93, -147.652, -11.7055, 'The Plains Vision'),
(@ENTRY, 17, -1888.06, -81.943, -11.4404, 'The Plains Vision'), 
(@ENTRY, 18, -1837.05, -34.0109, -12.258, 'The Plains Vision'), 
(@ENTRY, 19, -1796.12, -14.6462, -10.3581, 'The Plains Vision'), 
(@ENTRY, 20, -1732.61, -4.27746, -10.0213, 'The Plains Vision'), 
(@ENTRY, 21, -1688.94, -0.829945, -11.7103, 'The Plains Vision'), 
(@ENTRY, 22, -1681.32, 13.0313, -9.48056, 'The Plains Vision'), 
(@ENTRY, 23, -1677.04, 36.8349, -7.10318, 'The Plains Vision'), 
(@ENTRY, 24, -1675.2, 68.559, -8.95384, 'The Plains Vision'),
(@ENTRY, 25, -1676.57, 89.023, -9.65104, 'The Plains Vision'), 
(@ENTRY, 26, -1678.16, 110.939, -10.1782, 'The Plains Vision'), 
(@ENTRY, 27, -1677.86, 128.681, -5.73869, 'The Plains Vision'), 
(@ENTRY, 28, -1675.27, 144.324, -3.47916, 'The Plains Vision'), 
(@ENTRY, 29, -1671.7, 163.169, -1.23098, 'The Plains Vision'),
(@ENTRY, 30, -1666.61, 181.584, 5.26145, 'The Plains Vision'), 
(@ENTRY, 31, -1661.51, 196.154,  8.95252, 'The Plains Vision'), 
(@ENTRY, 32, -1655.47, 210.811, 8.38727, 'The Plains Vision'), 
(@ENTRY, 33, -1647.07, 226.947, 5.27755, 'The Plains Vision'), 
(@ENTRY, 34, -1621.65, 232.91, 2.69579, 'The Plains Vision'), 
(@ENTRY, 35, -1600.23, 237.641, 2.98539, 'The Plains Vision'),
(@ENTRY, 36, -1576.07, 242.546, 4.66541, 'The Plains Vision'),
(@ENTRY, 37, -1554.57, 248.494, 6.60377, 'The Plains Vision'), 
(@ENTRY, 38, -1547.53, 259.302, 10.6741, 'The Plains Vision'),
(@ENTRY, 39, -1541.7, 269.847, 16.4418, 'The Plains Vision'), 
(@ENTRY, 40, -1539.83, 278.989, 21.0597, 'The Plains Vision'),
(@ENTRY, 41, -1540.16, 290.219, 27.8247, 'The Plains Vision'), 
(@ENTRY, 42, -1538.99, 298.983, 34.0032, 'The Plains Vision'),
(@ENTRY, 43, -1540.38, 307.337, 41.3557, 'The Plains Vision'), 
(@ENTRY, 44, -1536.61, 314.884, 48.0179, 'The Plains Vision'),
(@ENTRY, 45, -1532.42, 323.277, 55.6667, 'The Plains Vision'),
(@ENTRY, 46, -1528.77, 329.774, 61.1525, 'The Plains Vision'), 
(@ENTRY, 47, -1525.65, 333.18, 63.2161, 'The Plains Vision'),  
(@ENTRY, 48, -1517.01, 350.713, 62.4286, 'The Plains Vision'), 
(@ENTRY, 49, -1511.39, 362.537, 62.4539, 'The Plains Vision'), 
(@ENTRY, 50, -1508.68, 366.822, 62.733, 'The Plains Vision');  
SET @NPC_BLACK_KNIGHT := 33785;
SET @NPC_CAVIN := 33522;
SET @SPELL_CHARGE := 63003;
SET @SPELL_SHIELD_BREAKER := 65147;
SET @SPELL_DARK_SHIELD := 64505;
SET @SPELL_BLACK_NIGHT_TRANSFORM := 64490; -- Apply Aura: Change Model (34104)
SET @SPELL_BLACK_NIGHT_TRANSFORM_2 := 64498; -- Apply Aura: Increase Max Health
SET @SPELL_FULL_HEAL := 25840;
SET @GOSSIP := 10383;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@NPC_BLACK_KNIGHT, @NPC_CAVIN);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_BLACK_KNIGHT;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@NPC_BLACK_KNIGHT*100;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@NPC_BLACK_KNIGHT*100+1;
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid`=@NPC_CAVIN;
DELETE FROM `smart_scripts` WHERE `source_type`=9 AND `entryorguid`=@NPC_CAVIN*100;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@NPC_CAVIN,0,0,1,62,0,100,0,@GOSSIP,0,0,0,80,@NPC_CAVIN*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Cavin - On gossip option select - Run script'),
(@NPC_CAVIN,0,1,2,61,0,100,0,0,0,0,0,12,@NPC_BLACK_KNIGHT,1,120000,0,0,0,8,0,0,0,8482.370117, 964.506653, 547.292908, 3.253865,'Cavin - On gossip option select - Summon the Black Knight'),
(@NPC_CAVIN,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cavin - On gossip option select - Close gossip'),
(@NPC_CAVIN*100,9,0,0,0,0,100,0,0,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Cavin - On Script - Turn off Gossip & Gossip flags'),
(@NPC_CAVIN*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cavin - On Script - Say text 0'),
(@NPC_CAVIN*100,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,7,0,0,0,0,0,0,0,'Cavin - On Script - Say text 1'),
(@NPC_BLACK_KNIGHT,0,0,0,54,0,100,1,0,0,0,0,80,@NPC_BLACK_KNIGHT*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - Just Summoned - Mount to entry'),
(@NPC_BLACK_KNIGHT*100+1,9,0,0,0,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,8426.153320, 962.307861, 544.675293, 6.273711,'Blackknight - On Script - MOVE TO POS'),
(@NPC_BLACK_KNIGHT*100+1,9,1,0,0,0,100,0,10000,10000,0,0,19,256,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - REMOVE IMMUNE TO PC'),
(@NPC_BLACK_KNIGHT*100+1,9,2,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - REMOVE IMMUNE TO PC'),
(@NPC_BLACK_KNIGHT*100+1,9,3,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,19,33782,25,0,0,0,0,0,'Blackknight - On Script - attack'),
(@NPC_BLACK_KNIGHT,0,1,0,4,0,100,0,0,0,0,0,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0,'Blackknight - On Aggro - Cast Charge'),
(@NPC_BLACK_KNIGHT,0,2,0,4,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Aggro - Set Phase 1'),
(@NPC_BLACK_KNIGHT,0,3,0,0,1,100,0,10000,10000,15000,15000,25,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - In Phase 1 - Flee for assist'),
(@NPC_BLACK_KNIGHT,0,4,0,9,1,100,0,5,30,1000,1000,11,@SPELL_CHARGE,0,0,0,0,0,2,0,0,0,0,0,0,0,'Blackknight - In Phase 1& On Range - Cast Charge'),
(@NPC_BLACK_KNIGHT,0,5,0,9,1,100,0,3,30,1500,2000,11,@SPELL_SHIELD_BREAKER,0,0,0,0,0,2,0,0,0,0,0,0,0,'Blackknight - In Phase 1 & On Range - Cast Shield Breaker'),
(@NPC_BLACK_KNIGHT,0,6,0,6,0,100,0,0,0,0,0,81,1,0,0,0,0,0,10,85140,@NPC_CAVIN,0,0,0,0,0,'Blackknight - On Death - Turn on Gossip & Gossip flags on Cavin'),
(@NPC_BLACK_KNIGHT,0,7,8,1,0,100,0,20000,20000,20000,20000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - Out Of Combat after 20s - Despawn'),
(@NPC_BLACK_KNIGHT,0,8,0,61,0,100,0,0,0,0,0,81,1,0,0,0,0,0,10,85140,@NPC_CAVIN,0,0,0,0,0,'Blackknight - Out Of Combat after 20s - Turn on Gossip & Gossip flags on Cavin'),
(@NPC_BLACK_KNIGHT,0,9,0,2,1,100,1,0,25,0,0,80,@NPC_BLACK_KNIGHT*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On 25% health - Run script'),
(@NPC_BLACK_KNIGHT*100,9,0,0,0,0,100,0,0,0,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - State passive'),
(@NPC_BLACK_KNIGHT*100,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Say text 0'),
(@NPC_BLACK_KNIGHT*100,9,2,0,0,0,100,0,0,0,0,0,43,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Unmount'),
(@NPC_BLACK_KNIGHT*100,9,3,0,0,0,100,0,0,0,0,0,51,0,0,0,0,0,0,19,33782,30,0,0,0,0,0,'Blackknight - On Script - Unmount player'),
(@NPC_BLACK_KNIGHT*100,9,4,0,0,0,100,0,0,0,0,0,11,@SPELL_DARK_SHIELD,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Cast Dark Shield'),
(@NPC_BLACK_KNIGHT*100,9,5,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Aggro - Set Phase 0'),
(@NPC_BLACK_KNIGHT*100,9,6,0,0,0,100,0,6000,6000,0,0,11,@SPELL_BLACK_NIGHT_TRANSFORM,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Apply Aura'),
(@NPC_BLACK_KNIGHT*100,9,7,0,0,0,100,0,0,0,0,0,11,@SPELL_FULL_HEAL,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Full hp'),
(@NPC_BLACK_KNIGHT*100,9,8,0,0,0,100,0,1000,1000,0,0,11,@SPELL_BLACK_NIGHT_TRANSFORM_2,2,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Increase Max Health'),
(@NPC_BLACK_KNIGHT*100,9,9,0,0,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - State Aggresive'),
(@NPC_BLACK_KNIGHT*100,9,10,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blackknight - On Script - Say text 1'),
(@NPC_BLACK_KNIGHT*100,9,11,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,15,0,0,0,0,0,0,'Blackknight - On Script - Start Attack');

DELETE FROM `creature_text` WHERE `entry`IN (@NPC_BLACK_KNIGHT, @NPC_CAVIN);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextID`) VALUES
(@NPC_BLACK_KNIGHT,0,0,'Get off that horse and fight me man-to-man!',14,0,100,0,0,0,'yell',34169),
(@NPC_BLACK_KNIGHT,1,0,'I will not fail you, master!',14,0,100,0,0,0,'yell',34185),
(@NPC_CAVIN,0,0,'$N challenges the Black Knight to trial by combat!',14,0,100,0,0,0,'yell',33803),
(@NPC_CAVIN,1,0,'Good luck, $N.',12,0,100,0,0,0,'say',33804);

UPDATE `conditions` SET `ConditionValue2`=1 WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=10383 AND `SourceEntry`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=1 AND `ConditionValue1`=63663;
--
SET @KC_FIRST_PROPHECY                  := 22798;
SET @KC_SECOND_PROPHECY                 := 22799;
SET @KC_THIRD_PROPHECY                  := 22800;
SET @KC_FOURTH_PROPHECY                 := 22801;
SET @QUEST_WHISPERS_RAVEN_GOD           := 10607;
SET @NPC_VISION_RAVEN_GOD               := 21861;
SET @SPELL_UNDERSTANDING_RAVENSPEECH    := 37466;
SET @AURA_UNDERSTANDING_RAVENSPEECH     := 37642;
SET @Falconwing                         := 19988;
SET @Harbinger                          := 19989;
SET @Scorncrow                          := 19990;

UPDATE `creature_template` SET `exp`='1', `minlevel`='67', `maxlevel`='67', `unit_flags`='768', `type`='7' WHERE `entry`=@NPC_VISION_RAVEN_GOD;

DELETE FROM `creature_text` WHERE `entry`=@NPC_VISION_RAVEN_GOD;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(@NPC_VISION_RAVEN_GOD,0,0,'From the darkest night shall rise again the raven, shall take flight in the shadows, shall reveal the nature of its kind. Prepare yourself for its coming, for the faithful shall be elevated to take flight with the raven, the rest be forgotten to walk upon the ground, clipped wings and shame.',15,0,100,0,0,0,'The Voice of the Raven God - The First Prophecy', 19475),
(@NPC_VISION_RAVEN_GOD,1,0,'Steel your minds and guard your thoughts. The dark wings will cloud and consume the minds of the weak, a flock of thralls whose feet may never leave the ground.', 15,0,100,0,0,0,'The Voice of the Raven God - The Second Prophecy', 19476),
(@NPC_VISION_RAVEN_GOD,2,0,'The Old blood will flow once again with the coming of the raven, the return of the darkness in the skies. Scarlet night, and the rise of the old.', 15,0,100,0,0,0,'The Voice of the Raven God - The Third Prophecy', 19477),
(@NPC_VISION_RAVEN_GOD,3,0,'The raven was struck down once for flying too high, unready. The eons have prepared the Dark Watcher for its ascent, to draw the dark cloak across the horizon.', 15,0,100,0,0,0,'The Voice of the Raven God - The Fourth Prophecy', 19478);

UPDATE creature_template SET AIName="SmartAI" WHERE entry IN (@Falconwing, @Harbinger, @Scorncrow,@NPC_VISION_RAVEN_GOD);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry` IN (184950,184967,184968,184969);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Falconwing, @Harbinger, @Scorncrow,@NPC_VISION_RAVEN_GOD) AND `source_type`=0; -- Npcs
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (184950,184967,184968,184969) AND `source_type`=1; -- Gameobjects (totems)
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
-- Npcs a matar para que te den el buff
(@Falconwing,0,0,0,0,0,100,0,2500,5500,10000,11000,11,37587,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Grishna Falconwing - In Combat - Cast Bestial Wrath"),
(@Falconwing,0,1,0,6,0,35,0,0,0,0,0,85,@SPELL_UNDERSTANDING_RAVENSPEECH,2,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Grishna Falconwing - On Death - Cast Understanding Ravenspeech"),
(@Harbinger,0,0,0,0,0,100,0,2500,5500,20000,21000,11,37589,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Grishna Harbinger - In Combat - Cast Shriveling Gaze"),
(@Harbinger,0,1,0,0,0,100,0,1000,6000,10000,15000,11,9532,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Grishna Harbinger - In Combat - Cast Lightning Bolt"),
(@Harbinger,0,2,0,6,0,35,0,0,0,0,0,85,@SPELL_UNDERSTANDING_RAVENSPEECH,2,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Grishna Harbringer - On Death - Cast Understanding Ravenspeech"),
(@Scorncrow,0,0,0,0,0,100,0,2500,5500,10000,11000,11,35321,0,0,0,0,0,2,0,0,0,0.0,0.0,0.0,0.0,"Grishna Scorncrow - In Combat - Cast Gushing Wound"),
(@Scorncrow,0,1,0,6,0,35,0,0,0,0,0,85,@SPELL_UNDERSTANDING_RAVENSPEECH,2,0,0,0,0,7,0,0,0,0.0,0.0,0.0,0.0,"Grishna Scorncrow - On Death - Cast Understanding Ravenspeech"),
-- Vision Of Raven God
(@NPC_VISION_RAVEN_GOD,0,0,1,38,0,100,0,1,1,0,0,33,@KC_FIRST_PROPHECY,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Call Killedmonster"),
(@NPC_VISION_RAVEN_GOD,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 0"),
(@NPC_VISION_RAVEN_GOD,0,2,3,38,0,100,0,1,2,0,0,33,@KC_SECOND_PROPHECY,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Call Killedmonster"),
(@NPC_VISION_RAVEN_GOD,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 1"),
(@NPC_VISION_RAVEN_GOD,0,4,5,38,0,100,0,1,3,0,0,33,@KC_THIRD_PROPHECY ,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Call Killedmonster"),
(@NPC_VISION_RAVEN_GOD,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 2"),
(@NPC_VISION_RAVEN_GOD,0,6,7,38,0,100,0,1,4,0,0,33,@KC_FOURTH_PROPHECY,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Call Killedmonster"),
(@NPC_VISION_RAVEN_GOD,0,7,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 3"),
-- GOB Totems
(184950,1,0,1,64,0,100,0,0,0,0,0,12,@NPC_VISION_RAVEN_GOD,3,6000,0,0,0,8,0,0,0,3779.987061,6729.603027,180.498413,5.71490,"First Prophecy - On Gossip Hello - Summon Whisper Raven God"),
(184950,1,1,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,@NPC_VISION_RAVEN_GOD,20,0,0,0,0,0,"First Prophecy - Link - Set Data 1 to Raven God"),
(184967,1,0,1,64,0,100,0,0,0,0,0,12,@NPC_VISION_RAVEN_GOD,3,6000,0,0,0,8,0,0,0,3629.285889,6542.140137,155.004669,2.56267,"Second Prophecy - On Gossip Hello - Summon Whisper Raven God"),
(184967,1,1,0,61,0,100,0,0,0,0,0,45,1,2,0,0,0,0,11,@NPC_VISION_RAVEN_GOD,20,0,0,0,0,0,"Second Prophecy - Link - Set Data 2 to Raven God"),
(184968,1,0,1,64,0,100,0,0,0,0,0,12,@NPC_VISION_RAVEN_GOD,3,6000,0,0,0,8,0,0,0,3736.950439,6640.749023,133.674530,3.33629,"Third Prophecy - On Gossip Hello - Summon Whisper Raven God"),
(184968,1,1,0,61,0,100,0,0,0,0,0,45,1,3,0,0,0,0,11,@NPC_VISION_RAVEN_GOD,20,0,0,0,0,0,"Third Prophecy - Link - Set Data 3 to Raven God"),
(184969,1,0,1,64,0,100,0,0,0,0,0,12,@NPC_VISION_RAVEN_GOD,3,6000,0,0,0,8,0,0,0,3572.574219,6669.196289,128.455444,5.62290,"Four Prophecy - On Gossip Hello - Summon Whisper Raven God"),
(184969,1,1,0,61,0,100,0,0,0,0,0,45,1,4,0,0,0,0,11,@NPC_VISION_RAVEN_GOD,20,0,0,0,0,0,"Fourth Prophecy - Link - Set Data 4 to Raven God");

DELETE FROM `conditions` WHERE `ConditionValue1`=@AURA_UNDERSTANDING_RAVENSPEECH AND `sourcetypeorreferenceid`=22;
DELETE FROM `conditions` WHERE `ConditionValue1`=@NPC_VISION_RAVEN_GOD AND `sourcetypeorreferenceid`=22;
DELETE FROM `conditions` WHERE `SourceEntry`=@NPC_VISION_RAVEN_GOD AND `sourcetypeorreferenceid`=22;
INSERT INTO `conditions` (SourceTypeOrReferenceId,SourceGroup,SourceEntry,SourceId,ElseGroup,ConditionTypeOrReference,ConditionTarget,ConditionValue1,ConditionValue2,ConditionValue3,NegativeCondition,ErrorType,ErrorTextId,ScriptName,`Comment`) VALUES
(22,1,184950,1,0,1 ,0,@AURA_UNDERSTANDING_RAVENSPEECH,0,0,0,0,0,'','GOb First Prophecy - SAI 1, only if player has aura Understanding Ravenspeech'),
(22,1,184950,1,0,29,0,@NPC_VISION_RAVEN_GOD,20,0,1,0,0,'','GOb First Prophecy - SAI 1, only if Raven God is not near'),
(22,1,184967,1,0,1 ,0,@AURA_UNDERSTANDING_RAVENSPEECH,0,0,0,0,0,'','GOb Second Prophecy - SAI 1, only if player has aura Understanding Ravenspeech'),
(22,1,184967,1,0,29,0,@NPC_VISION_RAVEN_GOD,20,0,1,0,0,'','GOb Second Prophecy - SAI 1, only if Raven God is not near'),
(22,1,184968,1,0,1 ,0,@AURA_UNDERSTANDING_RAVENSPEECH,0,0,0,0,0,'','GOb Third Prophecy - SAI 1, only if player has aura Understanding Ravenspeech'),
(22,1,184968,1,0,29,0,@NPC_VISION_RAVEN_GOD,20,0,1,0,0,'','GOb Third Prophecy - SAI 1, only if Raven God is not near'),
(22,1,184969,1,0,1 ,0,@AURA_UNDERSTANDING_RAVENSPEECH,0,0,0,0,0,'','GOb Fourth Prophecy - SAI 1, only if player has aura Understanding Ravenspeech'),
(22,1,184969,1,0,29,0,@NPC_VISION_RAVEN_GOD,20,0,1,0,0,'','GOb Fourth Prophecy - SAI 1, only if Raven God is not near');
--
DELETE FROM `areatrigger_scripts` WHERE `ScriptName` IN ('at_twiggy_flathead','at_madrigosa','at_eye_of_eternity_improvised_floor');

UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName` IN ('go_defias_cannon','go_door_lever_dm','go_kael_orb','go_movie_orb');

UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='internalitemhandler';

UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` IN ('do_nothing','npc_aran_blizzard','npc_bladespire_ogre','npc_blaze','npc_crystalline_tangler','npc_demon_fire','npc_flame_crash','npc_generic_harpoon_cannon','npc_homunculus','npc_invis_legion_teleporter','npc_magnetic_core','npc_mindless_skeleton','npc_nether_vapor','npc_novos_minion','npc_sliver','npc_thuzadin_acolyte','npc_tracy_proudwell','npc_vereth_the_cunning','npc_void_zone','npc_yauj_brood');

DELETE FROM `spell_script_names` WHERE `scriptname` IN ('spell_ex_463', 'spell_ex_5581', 'spell_ex_66244', 'spell_ex_absorb_aura', 'spell_mimiron_flame_suppressant');

UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=37120 AND `source_type`=0 AND `id`=3 AND `link`=7;

-- Grand Necrolord Antiok SAI
SET @ENTRY := 28006;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,7000,7000,18000,18000,11,32863,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Necrolord Antiok - In Combat - Cast 'Seed of Corruption'"),
(@ENTRY,0,1,0,0,0,100,0,1100,1100,20000,20000,11,50455,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Necrolord Antiok - In Combat - Cast 'Shadow Bolt'"),
(@ENTRY,0,2,0,1,0,100,0,10000,10000,40000,40000,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Necrolord Antiok - Out of Combat - Say Line 1"),
(@ENTRY,0,3,0,2,0,100,1,0,25,0,0,11,50497,1,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Necrolord Antiok - Between 0-25% Health - Cast 'Scream of Chaos' (No Repeat)"),
(@ENTRY,0,4,0,6,0,100,0,0,0,0,0,11,50472,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Necrolord Antiok - On Just Died - Cast 'Drop Scythe of Antiok'"),
(@ENTRY,0,5,6,4,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Necrolord Antiok - On Aggro - Say Line 0"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,11,55984,1,0,0,0,0,2,0,0,0,0,0,0,0,"Grand Necrolord Antiok - On Aggro - Cast 'Shadow Bolt'"),
(@ENTRY,0,7,8,4,0,100,0,0,0,0,0,51,0,0,0,0,0,0,19,27996,20,0,0,0,0,0,"Grand Necrolord Antiok - On Aggro - Kill Target"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,28,50494,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grand Necrolord Antiok - On Aggro - Remove Aura 'Shroud of Lightning'");

UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=27987 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`=11 WHERE  `entryorguid`=27788 AND `source_type`=0 AND `id`=2 AND `link`=12;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=26701 AND `source_type`=0 AND `id`=0 AND `link`=1;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=24035 AND `source_type`=0 AND `id`=0 AND `link`=1;

-- Ara Technician SAI
SET @ENTRY := 20438;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,38,0,100,0,4,4,0,0,8,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Data Set 4 4 - Set Reactstate Defensive"),
(@ENTRY,0,1,0,61,0,100,0,4,4,0,0,87,2043900,2043901,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Data Set 4 4 - Run Random Script"),
(@ENTRY,0,2,0,1,1,100,1,12000,12000,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,"Ara Technician - Out of Combat - Set Data 1 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,3,4,40,0,100,0,1,0,0,0,11,35176,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Waypoint 1 Reached - Cast 'Interrupt Shutdown'"),
(@ENTRY,0,4,0,61,0,100,0,1,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Waypoint 1 Reached - Set Event Phase 1"),
(@ENTRY,0,5,6,4,0,100,0,1,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Aggro - Set Event Phase 0"),
(@ENTRY,0,6,7,61,0,100,0,1,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Aggro - Set Reactstate Aggressive"),
(@ENTRY,0,7,8,61,0,100,0,1,0,0,0,20,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Aggro - Start Attacking"),
(@ENTRY,0,8,0,61,0,100,0,1,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ara Technician - On Aggro - Enable Combat Movement"),
(@ENTRY,0,9,0,7,0,100,0,0,0,0,0,45,1,1,0,0,0,0,20,184312,0,0,0,0,0,0,"Ara Technician - On Evade - Set Data 1 1");

-- Audrid SAI
SET @ENTRY := 18903;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,53,0,18903,1,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Respawn - Start Waypoint"),
(@ENTRY,0,1,11,40,0,100,0,4,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 4 Reached - Pause Waypoint"),
(@ENTRY,0,2,12,40,0,100,0,9,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 9 Reached - Pause Waypoint"),
(@ENTRY,0,3,13,40,0,100,0,11,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 11 Reached - Pause Waypoint"),
(@ENTRY,0,4,14,40,0,100,0,12,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 12 Reached - Pause Waypoint"),
(@ENTRY,0,5,15,40,0,100,0,13,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 13 Reached - Pause Waypoint"),
(@ENTRY,0,6,16,40,0,100,0,14,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 14 Reached - Pause Waypoint"),
(@ENTRY,0,7,17,40,0,100,0,17,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 17 Reached - Pause Waypoint"),
(@ENTRY,0,8,18,40,0,100,0,22,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 22 Reached - Pause Waypoint"),
(@ENTRY,0,9,19,40,0,100,0,25,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 25 Reached - Pause Waypoint"),
(@ENTRY,0,10,20,40,0,100,0,28,18903,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 28 Reached - Pause Waypoint"),
(@ENTRY,0,11,21,61,0,100,0,4,18903,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 4 Reached - Run Script"),
(@ENTRY,0,12,22,61,0,100,0,9,18903,0,0,80,@ENTRY*100+01,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 9 Reached - Run Script"),
(@ENTRY,0,13,22,61,0,100,0,11,18903,0,0,80,@ENTRY*100+02,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 11 Reached - Run Script"),
(@ENTRY,0,14,23,61,0,100,0,12,18903,0,0,80,@ENTRY*100+03,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 12 Reached - Run Script"),
(@ENTRY,0,15,21,61,0,100,0,13,18903,0,0,80,@ENTRY*100+04,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 13 Reached - Run Script"),
(@ENTRY,0,16,24,61,0,100,0,14,18903,0,0,80,@ENTRY*100+05,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 14 Reached - Run Script"),
(@ENTRY,0,17,22,61,0,100,0,17,18903,0,0,80,@ENTRY*100+06,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 17 Reached - Run Script"),
(@ENTRY,0,18,21,61,0,100,0,22,18903,0,0,80,@ENTRY*100+07,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 22 Reached - Run Script"),
(@ENTRY,0,19,21,61,0,100,0,25,18903,0,0,80,@ENTRY*100+08,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 25 Reached - Run Script"),
(@ENTRY,0,20,21,61,0,100,0,28,18903,0,0,80,@ENTRY*100+09,2,0,0,0,0,1,0,0,0,0,0,0,0,"Audrid - On Waypoint 28 Reached - Run Script"),
(@ENTRY,0,21,0,61,0,100,0,4,18903,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.5,"Audrid - On Waypoint 4 Reached - Set Orientation 1,5"),
(@ENTRY,0,22,0,61,0,100,0,9,18903,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3,"Audrid - On Waypoint 9 Reached - Set Orientation 3"),
(@ENTRY,0,23,0,61,0,100,0,12,18903,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.5,"Audrid - On Waypoint 12 Reached - Set Orientation 4,5"),
(@ENTRY,0,24,0,61,0,100,0,14,18903,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,6,"Audrid - On Waypoint 14 Reached - Set Orientation 6");

UPDATE `smart_scripts` SET `event_type`=61 WHERE  `entryorguid`=26670 AND `source_type`=0 AND `id`=19 AND `link`=20;
UPDATE `smart_scripts` SET `link`=20 WHERE  `entryorguid`=17892 AND `source_type`=0 AND `id`=19 AND `link`=0;
UPDATE `smart_scripts` SET `link`=7 WHERE  `entryorguid`=17892 AND `source_type`=0 AND `id`=6 AND `link`=0;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=37952 AND `source_type`=0 AND `id`=1 AND `link`=2;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=26787 AND `source_type`=0 AND `id`=0 AND `link`=1;

-- Mad Voidwalker SAI
SET @ENTRY := 15146;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,11,0,100,0,0,0,0,0,89,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mad Voidwalker - On Respawn - Start Random Movement"),
(@ENTRY,0,1,0,0,0,100,2,7000,9000,11000,13000,11,24614,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mad Voidwalker - In Combat - Cast 'Consuming Shadows' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,3000,4000,8000,8000,11,24616,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mad Voidwalker - In Combat - Cast 'Shadow Shock' (Normal Dungeon)"),
(@ENTRY,0,3,0,1,0,100,0,0,0,0,0,41,180000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mad Voidwalker - Out of Combat - Despawn In 180000 ms");

UPDATE `smart_scripts` SET `link`=9 WHERE  `entryorguid`=12236 AND `source_type`=0 AND `id`=8 AND `link`=0;
UPDATE `smart_scripts` SET `link`=9 WHERE  `entryorguid`=13196 AND `source_type`=0 AND `id`=8 AND `link`=0;

-- Scarlet Curate SAI
SET @ENTRY := 9450;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,40,3400,4800,11,25054,64,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Curate - Within 0-40 Range - Cast 'Holy Smite'"),
(@ENTRY,0,1,0,15,0,100,1,0,0,30,0,11,17201,1,0,0,0,0,7,0,0,0,0,0,0,0,"Scarlet Curate - On Friendly Crowd Controlled - Cast 'Dispel Magic' (No Repeat)"),
(@ENTRY,0,2,0,74,0,100,0,0,40,25000,35000,11,17201,1,0,0,0,0,9,0,0,0,0,0,0,0,"Scarlet Curate - On Friendly Between 0-40% Health - Cast 'Dispel Magic'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Curate - Between 0-15% Health - Flee For Assist (No Repeat)");

UPDATE `smart_scripts` SET `link`=25 WHERE  `entryorguid`=4880 AND `source_type`=0 AND `id`=24 AND `link`=26;
UPDATE `smart_scripts` SET `link`=22, `event_type`=61 WHERE  `entryorguid`=4880 AND `source_type`=0 AND `id`=21 AND `link`=0;
UPDATE `smart_scripts` SET `link`=16 WHERE  `entryorguid`=31279 AND `source_type`=0 AND `id`=15 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=1535 AND `source_type`=0 AND `id`=0 AND `link`=0;
DELETE FROM `smart_scripts` WHERE  `entryorguid`=2719 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=4484 AND `source_type`=0 AND `id`=24 AND `link`=25;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=13601 AND `source_type`=0 AND `id`=2 AND `link`=0;

-- Short John Mithril SAI
SET @ENTRY := 14508;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,68,0,100,0,16,0,0,0,53,0,14508,0,0,0,0,1,0,0,0,0,0,0,0,"Short John Mithril - On Game Event 16 Started - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,1,14508,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Short John Mithril - On Waypoint 1 Reached - Say Line 0"),
(@ENTRY,0,2,3,40,0,100,0,16,14508,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Short John Mithril - On Waypoint 16 Reached - Say Line 1"),
(@ENTRY,0,3,0,61,0,100,0,16,14508,0,0,11,23176,0,0,0,0,0,1,0,0,0,0,0,0,0,"Short John Mithril - On Waypoint 16 Reached - Cast 'Summon Pirate Booty (DND)'"),
(@ENTRY,0,4,0,40,0,100,0,33,14508,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,4.41568,"Short John Mithril - On Waypoint 33 Reached - Set Orientation 4,41568");

UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=15324 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=15526 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=17397 AND `source_type`=0 AND `id`=0 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=18554 AND `source_type`=0 AND `id`=9 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=18554 AND `source_type`=0 AND `id`=13 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=18554 AND `source_type`=0 AND `id`=14 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=18938 AND `source_type`=0 AND `id`=2 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5 WHERE  `entryorguid`=19354 AND `source_type`=0 AND `id`=4 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=23669 AND `source_type`=0 AND `id`=3 AND `link`=0;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=24198 AND `source_type`=0 AND `id`=3 AND `link`=4;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=55036 WHERE  `entryorguid`=29903 AND `source_type`=0 AND `id`=6 AND `link`=7;
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=58190 WHERE  `entryorguid`=30894 AND `source_type`=0 AND `id`=2 AND `link`=3;
UPDATE `smart_scripts` SET `action_type`=5, `action_param1`=1 WHERE  `entryorguid`=30945 AND `source_type`=0 AND `id`=9 AND `link`=0;

UPDATE `creature_template_addon` SET`auras`="" WHERE`entry` IN (26608, 31306); -- vehicle auras appear only when the npc ride a vehicle or when he's mounted
UPDATE `creature_template` SET `npcflag`=16777216 WHERE `entry`=35427;
DELETE FROM `gameobject_loot_template` WHERE `entry`IN (1414,1415,1417,1418,1419,1420,1421,1733,1734,2513) AND `item`=5056;
INSERT INTO `gameobject_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(1414, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1415, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1417, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1418, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1419, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1420, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1421, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1733, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(1734, 5056, 0, 100, 1, 1, 0, 1, 1, NULL),
(2513, 5056, 0, 100, 1, 1, 0, 1, 1, NULL);
--
UPDATE `smart_scripts` SET `target_o`=0 WHERE `entryorguid`=177490 AND `source_type`=1 AND `id`=0;
UPDATE `smart_scripts` SET `target_o`=0 WHERE `entryorguid`=177490 AND `source_type`=1 AND `id`=2;
UPDATE `smart_scripts` SET `target_o`=0 WHERE `entryorguid`=2749200 AND `source_type`=9 AND `id`=5;
-- 
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=23616;
UPDATE `creature` SET `MovementType`=0 WHERE  `guid`=24762;
DELETE FROM `creature_addon` WHERE  `guid`=24762;
DELETE FROM `waypoint_data` WHERE `id`=247620; 
DELETE FROM `waypoints` WHERE `entry`=23616;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(23616, 1, -2454.94, -482.136, -8.97948, 'Kyle'),
(23616, 2, -2445.34, -476.395, -8.92086, 'Kyle'),
(23616, 3, -2433.79, -468.785, -9.20522, 'Kyle'),
(23616, 4, -2422.01, -460.858, -9.1759, 'Kyle'),
(23616, 5, -2407.47, -451.07, -8.70993, 'Kyle'),
(23616, 6, -2395.98, -443.42, -8.42222, 'Kyle'),
(23616, 7, -2383.8, -436.212, -8.78844, 'Kyle'),
(23616, 8, -2367.83, -425.967, -9.38671, 'Kyle'),
(23616, 9, -2355.15, -413.835, -9.75652, 'Kyle'),
(23616, 10, -2345.39, -403.032, -8.87064, 'Kyle'),
(23616, 11, -2338.73, -387.213, -7.97681, 'Kyle'),
(23616, 12, -2330.27, -374.08, -8.37519, 'Kyle'),
(23616, 13, -2314.64, -365.663, -9.41672, 'Kyle'),
(23616, 14, -2295.45, -360.874, -9.42468, 'Kyle'),
(23616, 15, -2279.85, -357.148, -9.42468, 'Kyle'),
(23616, 16, -2263.83, -363.376, -9.42468, 'Kyle'),
(23616, 17, -2248.52, -370.238, -9.42468, 'Kyle'),
(23616, 18, -2226.43, -386.156, -9.42468, 'Kyle'),
(23616, 19, -2232.14, -416.578, -9.42205, 'Kyle'),
(23616, 20, -2247.29, -439.615, -9.42475, 'Kyle'),
(23616, 21, -2252.91, -448.416, -9.09973, 'Kyle'),
(23616, 22, -2257.71, -455.921, -8.15442, 'Kyle'),
(23616, 23, -2271.66, -475.713, -7.80418, 'Kyle'),
(23616, 24, -2293.85, -483.264, -7.86093, 'Kyle'),
(23616, 25, -2302.71, -490.694, -7.92982, 'Kyle'),
(23616, 26, -2306.74, -494.585, -8.44247, 'Kyle'),
(23616, 27, -2324.17, -516.494, -9.32393, 'Kyle'),
(23616, 28, -2340.11, -535.209, -9.2326, 'Kyle'),
(23616, 29, -2357.69, -538.25, -9.158, 'Kyle'),
(23616, 30, -2372.68, -528.41, -9.15687, 'Kyle'),
(23616, 31, -2391.28, -518.477, -8.4459, 'Kyle'),
(23616, 32, -2404.81, -514.866, -7.4283, 'Kyle'),
(23616, 33, -2418.06, -510.431, -6.09458, 'Kyle'),
(23616, 34, -2431.22, -505.672, -6.06301, 'Kyle'),
(23616, 35, -2443.9, -499.738, -7.60161, 'Kyle'),
(23616, 36, -2462.4, -488.247, -9.27003, 'Kyle');

SET @ENTRY := 23616;
SET @Friendly:= 23622;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`IN (@ENTRY, @Friendly);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Friendly AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Friendly*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,53,1,23616,1,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Reset - Start Waypoint"),
(@ENTRY,0,1,2,8,0,100,0,42222,0,55000,55000,64,1,0,0,0,0,0,7,0,0,0,0,0,0,0,"Kyle the Frenzied - On Spellhit 'Lunch for Kyle' - Store Targetlist"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Spellhit 'Lunch for Kyle' - Run Script");

-- Actionlist SAI
SET @ENTRY := 2361600;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,54,55000,0,0,0,0,0,1,186265,50,0,0,0,0,0,"Kyle the Frenzied - On Script - Pause Waypoint"),
(@ENTRY,9,1,0,0,0,100,1,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Script - Say Line 0 (No Repeat)"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,17,393,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Script - Set Emote State 393"),
(@ENTRY,9,3,0,0,0,100,0,5000,5000,0,0,69,0,0,0,0,0,0,20,186265,50,0,0,0,0,0,"Kyle the Frenzied - On Script - Move To Closest Gameobject 'Kyle's Lunch'"),
(@ENTRY,9,4,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Script - Say Line 1"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,17,69,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Frenzied - On Script - Set Emote State 69"),
(@ENTRY,9,6,0,0,0,100,0,4000,4000,0,0,12,@Friendly,8,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Summon Kyle the Friendly"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn"),

(@Friendly,0,0,0,25,0,100,0,0,0,0,0,80,@Friendly*100,2,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Friendly - On Reset - Run Script"),
(@Friendly*100,9,0,0,0,0,100,0,5000,5000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Friendly - On Script - Say Line 2"),
(@Friendly*100,9,1,0,0,0,100,0,0,0,0,0,17,400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Friendly - On Script - Set Emote State 400"),
(@Friendly*100,9,2,0,0,0,100,0,0,0,0,0,33,23616,0,0,0,0,0,21,10,0,0,0,0,0,0,"Kyle the Friendly - On Script - Quest Credit 'Kyle's Gone Missing!'"),
(@Friendly*100,9,3,0,0,0,100,0,30000,30000,0,0,70,0,0,0,0,0,0,10,24762,23616,0,0,0,0,0,"Kyle the Friendly - On Script - respawn Kyle the Frenzied"),
(@Friendly*100,9,4,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kyle the Friendly -On Script - Despawn");
--
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=34935;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(34935,43671,1,0); -- Horde Gunship Cannon - Ride Vehicle

SET @NPC_VISION_RAVEN_GOD           := 21861;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@NPC_VISION_RAVEN_GOD) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@NPC_VISION_RAVEN_GOD,0,0,1,38,0,100,0,1,1,0,0,11,39426,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Cast credit"),
(@NPC_VISION_RAVEN_GOD,0,1,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 0"),
(@NPC_VISION_RAVEN_GOD,0,2,3,38,0,100,0,1,2,0,0,11,39428,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Cast credit"),
(@NPC_VISION_RAVEN_GOD,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 1"),
(@NPC_VISION_RAVEN_GOD,0,4,5,38,0,100,0,1,3,0,0,11,39430,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Cast credit"),
(@NPC_VISION_RAVEN_GOD,0,5,0,61,0,100,0,0,0,0,0,1,2,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 2"),
(@NPC_VISION_RAVEN_GOD,0,6,7,38,0,100,0,1,4,0,0,11,39431,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - On Data Set 4 - Cast credit"),
(@NPC_VISION_RAVEN_GOD,0,7,0,61,0,100,0,0,0,0,0,1,3,0,0,0,0,0,21,20,0,0,0.0,0.0,0.0,0.0,"Vision of Raven God - Link - Say 3");

SET @ENTRY := 24290;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,43404,0,0,0,11,43419,0,0,0,0,0,7,0,0,0,0,0,0,0,"New Agamand Plague Tank Bunny - On Spellhit 'Mission: Plague This!: Orehammer's Precision Bombs Dummy' - Quest Credit 'Mission: Plague This!'");

UPDATE `smart_scripts` SET `action_param1`=25068 WHERE  `entryorguid`=24999 AND `source_type`=0 AND `id`=2 AND `link`=0;
--
SET @Zuluhed                   := 11980;
SET @Portal                    := 22336;
SET @Arcubus                   := 22338;
SET @Infusion                  := 38853;
SET @SummonPortal              := 38876;
SET @Rain                      := 19717;
SET @SummonArcubus             := 38877;

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (@Zuluhed, @Portal, @Arcubus);

DELETE FROM `creature_text` WHERE `entry`=@Zuluhed;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(@Zuluhed,0,0,'Indeed, the time has come to end this charade.',14,0,100,0,0,0,'Zuluhed the Whacked', 20128),
(@Zuluhed,1,0,'Destroy them! Destroy them all!', 14,0,100,0,0,0,'Zuluhed the Whacked', 20129),
(@Zuluhed,2,0,'Foolish mortals. Did you think that I would not strike you down for your transgressions?', 14,0,100,0,0,0,'Zuluhed the Whacked', 20127),
(@Zuluhed,3,0,'Lord Illidan, bless me with the power of the flight!', 14,0,100,0,0,0,'Zuluhed the Whacked', 20126);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Zuluhed, @Portal, @Arcubus) AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@Zuluhed*100, @Zuluhed*100+1, @Portal*100)  AND `source_type`=9; 
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
(@Zuluhed,0,0,0,54,0,100,0,0,0,0,0,80,@Zuluhed*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - Just Summoned - action list"),
(@Zuluhed*100,9,0,0,0,0,100,0,0,0,0,0,1,2,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - action list - text"),
(@Zuluhed*100,9,1,0,0,0,100,0,5000,5000,0,0,1,0,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - action list - text"),
(@Zuluhed*100,9,2,0,0,0,100,0,4000,4000,0,0,1,1,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - action list - text"),
(@Zuluhed,0,1,0,0,0,100,0,12000,12000,12000,12000,11,@Rain,0,0,0,0,0,5,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - IC - Cast rain"),
(@Zuluhed,0,2,0,0,0,100,0,30000,30000,60000,60000,11,@SummonPortal,0,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - IC - Summon portal"),
(@Zuluhed,0,3,0,2,0,100,1,0,25,0,0,80,@Zuluhed*100+1,2,0,0,0,0,1,0,0,0,0,0,0,0,'Zuluhed the Whacked - On 25% health - ActionList'),
(@Zuluhed*100+1,9,0,0,0,0,100,0,0,0,0,0,11,@Infusion,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zuluhed the Whacked - ActionList - Cast Infusion'),
(@Zuluhed*100+1,9,1,0,0,0,100,0,0,0,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Zuluhed the Whacked - ActionList - Text'),
(@Arcubus,0,0,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,10,0,0,0.0,0.0,0.0,0.0,"Zuluhed the Whacked - Just Summoned - Attack player on 10 yards"),
(@Portal,0,0,0,54,0,100,1,0,0,0,0,80,@Portal*100,2,0,0,0,0,1,0,0,0,0.0,0.0,0.0,0.0,"Portal - Just Summoned - action list"), 
(@Portal*100,9,0,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Portal - ActionList - SET_ROOT'),
(@Portal*100,9,1,0,0,0,100,0,15000,15000,0,0,11,@SummonArcubus,0,0,0,0,0,1,0,0,0,0,0,0,0,'Portal - ActionList - Cast SummonArcubus');
--
UPDATE `smart_scripts` SET `action_param1`=25068 WHERE  `entryorguid`=25002 AND `source_type`=0 AND `id`=0 AND `link`=0;

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=35427;
INSERT INTO `npc_spellclick_spells` (`npc_entry`,`spell_id`,`cast_flags`,`user_type`) VALUES
(35427,43671,1,0);

UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=38162 WHERE  `entryorguid`=19937 AND `source_type`=0 AND `id` IN (1, 3, 12);
UPDATE `smart_scripts` SET `action_type`=11, `action_param1`=70606 WHERE  `entryorguid`=37826 AND `source_type`=0 AND `id` = 0;
UPDATE `smart_scripts` SET `link`=0 WHERE  `entryorguid`=25359 AND `source_type`=0 AND `id`=1;
UPDATE `smart_scripts` SET `link`=6 WHERE  `entryorguid`=25335 AND `source_type`=0 AND `id`=5;
UPDATE `smart_scripts` SET `link`=10 WHERE  `entryorguid`=25335 AND `source_type`=0 AND `id`=9;
UPDATE `smart_scripts` SET `event_type`=61, `link`=0 WHERE  `entryorguid`=4880 AND `source_type`=0 AND `id`=21;
UPDATE `smart_scripts` SET `event_param1`=0 WHERE  `entryorguid`=4880 AND `source_type`=0 AND `id`=23;
UPDATE `smart_scripts` SET `link`=16 WHERE  `entryorguid`=28122 AND `source_type`=0 AND `id`=15;
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 12752 AND `type` = 11;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(12752, 11, 0, 0, 'achievement_bronjahm_soul_power');
--
UPDATE `conditions` SET `ConditionValue3`=0 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=48363 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=27315 AND `ConditionValue2`=5 AND `ConditionValue3`=1;
UPDATE `conditions` SET `ConditionValue3`=0 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=48363 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=27336 AND `ConditionValue2`=5 AND `ConditionValue3`=1;
UPDATE `conditions` SET `ConditionValue3`=0 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=48397 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=27315 AND `ConditionValue2`=5 AND `ConditionValue3`=1;
UPDATE `conditions` SET `ConditionValue3`=0 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=48397 AND `SourceId`=0 AND `ElseGroup`=1 AND `ConditionTypeOrReference`=29 AND `ConditionTarget`=0 AND `ConditionValue1`=27336 AND `ConditionValue2`=5 AND `ConditionValue3`=1;
UPDATE `conditions` SET `ConditionTypeOrReference`=29, `ConditionValue1`=37852, `ConditionValue2`=10 WHERE  `SourceTypeOrReferenceId`=17 AND `SourceGroup`=0 AND `SourceEntry`=70586 AND `SourceId`=0 AND `ElseGroup`=0 AND `ConditionTypeOrReference`=18 AND `ConditionTarget`=0 AND `ConditionValue1`=1 AND `ConditionValue2`=37852 AND `ConditionValue3`=0;
UPDATE `conditions` SET `ConditionValue2`=0 WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=23286 AND `SourceEntry`=32726 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=11081 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
UPDATE `conditions` SET `ConditionValue2`=0 WHERE  `SourceTypeOrReferenceId`=1 AND `SourceGroup`=23324 AND `SourceEntry`=32726 AND `SourceId`=0 AND `ElseGroup`=2 AND `ConditionTypeOrReference`=9 AND `ConditionTarget`=0 AND `ConditionValue1`=11081 AND `ConditionValue2`=1 AND `ConditionValue3`=0;
--
DELETE FROM `creature_formations` WHERE `leaderGUID`=57528;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57528, 57528, 0, 0, 2),
(57528, 57527, 3, 90, 2);

-- Pathing for Thrallmar Grunt Entry: 16580 'TDB FORMAT' 
SET @NPC := 57528;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=132.3433,`position_y`=2762.987,`position_z`=102.3826 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,132.3433,2762.987,102.3826,0,0,0,0,100,0),
(@PATH,2,121.0521,2749.356,98.25848,0,0,0,0,100,0),
(@PATH,3,109.0274,2741.556,94.49025,0,0,0,0,100,0),
(@PATH,4,95.7988,2726.423,89.95798,0,0,0,0,100,0),
(@PATH,5,83.33932,2712.466,86.36182,0,0,0,0,100,0),
(@PATH,6,75.62203,2702.179,84.19798,0,0,0,0,100,0),
(@PATH,7,68.19456,2688.539,81.85039,0,0,0,0,100,0),
(@PATH,8,66.99038,2685.902,81.33047,0,0,0,0,100,0),
(@PATH,9,82.17162,2678.548,81.62874,0,0,0,0,100,0),
(@PATH,10,96.37463,2678.292,82.75209,0,0,0,0,100,0),
(@PATH,11,112.1558,2676.275,83.38298,0,0,0,0,100,0),
(@PATH,12,119.6769,2675.056,83.7209,0,0,0,0,100,0),
(@PATH,13,111.278,2648.706,80.93124,0,0,0,0,100,0),
(@PATH,14,109.0044,2646.347,80.20769,0,0,0,0,100,0),
(@PATH,15,116.2792,2653.762,81.89182,0,0,0,0,100,0),
(@PATH,16,122.4159,2660.933,84.18261,0,0,0,0,100,0),
(@PATH,17,123.3134,2662.276,84.17096,0,0,0,0,100,0),
(@PATH,18,103.6847,2670.964,83.00417,0,0,0,0,100,0),
(@PATH,19,80.54628,2673.75,81.59075,0,0,0,0,100,0),
(@PATH,20,73.74189,2676.277,80.69298,0,0,0,0,100,0),
(@PATH,21,69.13676,2697.863,83.02922,0,0,0,0,100,0),
(@PATH,22,75.02055,2712.901,85.39117,0,0,0,0,100,0),
(@PATH,23,87.82365,2724.378,88.41669,0,0,0,0,100,0),
(@PATH,24,104.5768,2742.848,93.40324,0,0,0,0,100,0),
(@PATH,25,117.3608,2752.192,97.77188,0,0,0,0,100,0),
(@PATH,26,129.486,2763.919,102.3025,0,0,0,0,100,0);
-- 0x1C09E4424010310000002C00015AED53 .go 132.3433 2762.987 102.3826

DELETE FROM `creature_formations` WHERE `leaderGUID`=57506;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57506, 57506, 0, 0, 2),
(57506, 57507, 3, 90, 2);

-- Pathing for Thrallmar Grunt Entry: 16580 'TDB FORMAT' 
SET @NPC := 57506;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=160.0679,`position_y`=2783.137,`position_z`=111.3373 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,160.0679,2783.137,111.3373,0,0,0,0,100,0),
(@PATH,2,162.4358,2778.617,110.5461,0,0,0,0,100,0),
(@PATH,3,172.7094,2774.508,110.6423,0,0,0,0,100,0),
(@PATH,4,186.6513,2777.03,113.5835,0,0,0,0,100,0),
(@PATH,5,200.0523,2782.693,116.7996,0,0,0,0,100,0),
(@PATH,6,209.4241,2784.837,118.5891,0,0,0,0,100,0),
(@PATH,7,222.8512,2785.429,121.0061,0,0,0,0,100,0),
(@PATH,8,233.1155,2787.613,123.6816,0,0,0,0,100,0),
(@PATH,9,237.861,2791.877,125.6136,0,0,0,0,100,0),
(@PATH,10,239.1323,2799.748,127.3235,0,0,0,0,100,0),
(@PATH,11,239.1207,2795.199,126.621,0,0,0,0,100,0),
(@PATH,12,235.6156,2789.706,124.6459,0,0,0,0,100,0),
(@PATH,13,227.0757,2786.192,122.1876,0,0,0,0,100,0),
(@PATH,14,212.622,2785.389,119.2345,0,0,0,0,100,0),
(@PATH,15,205.132,2784.269,117.806,0,0,0,0,100,0),
(@PATH,16,188.0606,2777.626,114.1675,0,0,0,0,100,0),
(@PATH,17,175.7908,2774.627,111.4541,0,0,0,0,100,0),
(@PATH,18,168.39,2775.401,110.4383,0,0,0,0,100,0),
(@PATH,19,160.1083,2782.976,111.366,0,0,0,0,100,0);
-- 0x1C09E4424010310000002C00015AED54 .go 160.0679 2783.137 111.3373

DELETE FROM `creature_formations` WHERE `leaderGUID`=57965;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(57594, 57594, 0, 0, 2),
(57594, 57595, 5, 0, 2),
(57594, 57596, 10, 0, 2),
(57594, 57597, 15, 0, 2);

-- Pathing for Thrallmar Wolf Rider Entry: 16599 'TDB FORMAT' 
SET @NPC := 57594;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=196.28,`position_y`=2781.241,`position_z`=115.9637 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,14334,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,196.28,2781.241,115.9637,0,0,1,0,100,0),
(@PATH,2,173.7009,2773.865,111.0617,0,0,1,0,100,0),
(@PATH,3,144.2007,2764.989,105.126,0,0,1,0,100,0),
(@PATH,4,113.7401,2748.569,96.21298,0,0,1,0,100,0),
(@PATH,5,94.41273,2728.12,89.81252,0,0,1,0,100,0),
(@PATH,6,65.77112,2693.39,82.38187,0,0,1,0,100,0),
(@PATH,7,36.76459,2661.932,76.78915,0,0,1,0,100,0),
(@PATH,8,17.91903,2638.404,72.61198,0,0,1,0,100,0),
(@PATH,9,5.355525,2605.847,68.47747,0,0,1,0,100,0),
(@PATH,10,8.97837,2575.031,65.2146,0,0,1,0,100,0),
(@PATH,11,18.05011,2542.307,61.65181,0,0,1,0,100,0),
(@PATH,12,20.63871,2501.002,57.12801,0,0,1,0,100,0),
(@PATH,13,14.14331,2460.918,53.1017,0,0,1,0,100,0),
(@PATH,14,7.45386,2419.164,52.73537,0,0,1,0,100,0),
(@PATH,15,-14.25867,2395.82,52.69493,0,0,1,0,100,0),
(@PATH,16,-31.19849,2384.302,53.77038,0,0,1,0,100,0),
(@PATH,17,0.05626106,2409.986,52.19868,0,0,1,0,100,0),
(@PATH,18,13.30882,2456.084,52.34318,0,0,1,0,100,0),
(@PATH,19,20.00414,2492.995,56.18382,0,0,1,0,100,0),
(@PATH,20,19.18841,2536.792,60.81985,0,0,1,0,100,0),
(@PATH,21,11.05238,2567.616,64.15677,0,0,1,0,100,0),
(@PATH,22,4.750309,2601.44,67.78731,0,0,1,0,100,0),
(@PATH,23,13.32799,2630.8,71.16357,0,0,1,0,100,0),
(@PATH,24,32.40791,2656.75,75.65665,0,0,1,0,100,0),
(@PATH,25,62.52131,2689.98,81.53972,0,0,1,0,100,0),
(@PATH,26,92.98247,2726.685,89.31989,0,0,1,0,100,0),
(@PATH,27,109.4178,2744.999,94.76643,0,0,1,0,100,0),
(@PATH,28,142.0419,2764.24,104.1994,0,0,1,0,100,0),
(@PATH,29,171.1686,2772.708,110.2985,0,0,1,0,100,0);
-- 0x1C09E442401035C000002C00005AED54 .go 196.28 2781.241 115.9637

-- Pathing for Thrallmar Peon Entry: 16591 'TDB FORMAT' 
SET @NPC := 57575;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=55.27306,`position_y`=2654.043,`position_z`=78.42071 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,69, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,55.27306,2654.043,78.42071,0,0,0,0,100,0),
(@PATH,2,60.95808,2657.462,79.7836,0,0,0,0,100,0),
(@PATH,3,64.60378,2660.895,80.497,0,0,0,0,100,0),
(@PATH,4,66.75615,2663.12,80.74207,0,0,0,0,100,0),
(@PATH,5,65.12799,2682.579,80.74263,0,0,0,0,100,0),
(@PATH,6,65.82681,2693.285,82.36795,0,0,0,0,100,0),
(@PATH,7,75.21483,2707.858,84.6664,0,0,0,0,100,0),
(@PATH,8,84.96182,2718.535,87.05235,0,0,0,0,100,0),
(@PATH,9,95.03929,2728.742,90.13913,0,0,0,0,100,0),
(@PATH,10,106.4619,2744.316,94.00992,0,0,0,0,100,0),
(@PATH,11,123.8118,2755.292,99.37874,0,0,0,0,100,0),
(@PATH,12,135.8948,2760.833,102.7533,0,0,0,0,100,0),
(@PATH,13,155.0525,2769.579,107.7352,0,0,0,0,100,0),
(@PATH,14,158.3794,2773.243,108.8904,0,0,0,0,100,0),
(@PATH,15,159.9402,2783.268,111.4848,0,0,0,0,100,0),
(@PATH,16,161.3573,2786.643,112.5604,0,0,0,0,100,0),
(@PATH,17,165.1619,2790.098,113.5347,0,120000,0,0,100,0),
(@PATH,18,165.2408,2775.052,109.6661,3,0,0,0,100,0),
(@PATH,19,161.6743,2781.431,111.1523,0,0,0,0,100,0),
(@PATH,20,161.0955,2772.586,109.2963,0,0,0,0,100,0),
(@PATH,21,143.7382,2764.468,104.6033,0,0,0,0,100,0),
(@PATH,22,122.8,2754.483,99.03847,0,0,0,0,100,0),
(@PATH,23,109.0177,2745.05,94.75985,0,0,0,0,100,0),
(@PATH,24,96.74924,2729.785,90.4996,0,0,0,0,100,0),
(@PATH,25,83.87657,2715.537,86.72665,0,0,0,0,100,0),
(@PATH,26,75.78943,2705.43,84.61099,0,0,0,0,100,0),
(@PATH,27,64.73528,2690.525,81.81812,0,0,0,0,100,0),
(@PATH,28,62.68444,2679.1,80.26672,0,0,0,0,100,0),
(@PATH,29,62.20171,2674.227,80.11406,0,0,0,0,100,0),
(@PATH,30,62.53893,2659.067,79.85791,0,0,0,0,100,0),
(@PATH,31,53.87121,2650.147,77.64667,0,0,0,0,100,0),
(@PATH,32,52.78874,2648.066,76.98107,0,120000,0,0,100,0);
-- 0x1C09E442401033C000002C00005AED55 .go 55.27306 2654.043 78.42071
-- Shakes O'Breen SAI
SET @ENTRY := 2610;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', ScriptName='' WHERE `entry`=113531;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 113531  AND `source_type` = 1;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,3,19,0,100,0,667,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Quest 'Death From Below' Taken - Run Script"),
(@ENTRY,0,1,0,6,0,100,0,0,0,0,0,6,667,0,0,0,0,0,18,30,0,0,0,0,0,0,"Shakes O'Breen - On Just Died - Fail Quest 'Death From Below'"),
(@ENTRY,0,2,0,11,0,100,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Respawn - Add Npc Flag Questgiver"),
(@ENTRY,0,3,4,61,0,100,0,667,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Quest 'Death From Below' Taken - Remove Npc Flag Questgiver"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Just Created - react agressive"),
(113531,1,0,0,64,0,100,0,0,0,0,0,51,0,0,0,0,0,0,11,2775,50,0,0,0,0,0,"Shakes O'Breen - On gossip hello - kill");

-- Actionlist SAI
SET @ENTRY := 261000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,106,4,0,0,0,0,0,14,210721,113531,0,0,0,0,0,"Shakes O'Breen - On Script - remove flag from gob "),
(@ENTRY,9,2,0,0,0,100,0,9000,9000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.637939, -1967.593628, 15.347894, 5.525547,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.894531, -1968.629517, 15.641345, 5.462712,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.246582, -1965.681763, 15.063377, 5.600158,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.358643, -1971.417480, 15.596241, 4.967206,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,6,0,0,0,100,0,20000,20000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.637939, -1967.593628, 15.347894, 5.525547,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,7,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.894531, -1968.629517, 15.641345, 5.462712,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.246582, -1965.681763, 15.063377, 5.600158,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,9,0,0,0,100,0,3000,3000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Say Line 1"),
(@ENTRY,9,10,0,0,0,100,0,15000,15000,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2158.637939, -1967.593628, 15.347894, 5.525547,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,11,0,0,0,100,0,0,0,0,0,12,2775,1,60000,0,0,0,8,0,0,0,-2161.894531, -1968.629517, 15.641345, 5.462712,"Shakes O'Breen - On Script - Summon Creature 'Daggerspine Marauder'"),
(@ENTRY,9,12,0,0,0,100,0,0,0,0,0,105,4,0,0,0,0,0,14,210721,113531,0,0,0,0,0,"Shakes O'Breen - On Script - Add  Flag to gob "),
(@ENTRY,9,13,0,0,0,100,0,30000,30000,0,0,15,667,0,0,0,0,0,17,0,100,0,0,0,0,0,"Shakes O'Breen - On Script - Quest Credit 'Death From Below'"),
(@ENTRY,9,14,0,0,0,100,0,30000,30000,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Shakes O'Breen - On Script - Add Npc Flag ");

-- Daggerspine Marauder SAI
SET @ENTRY := 2775;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,63,0,30,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Marauder - On Just Created - Say Line 0"),
(@ENTRY,0,1,0,63,0,100,0,0,0,0,0,69,0,0,0,0,0,0,8,0,0,0,-2086.070068, -2028.859985, 3.220880, 2.670350,"Daggerspine Marauder - On Just Created - go to pos"),
(@ENTRY,0,2,0,63,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Daggerspine Marauder - On Just Created - react agressive"),
(@ENTRY,0,3,0,10,0,100,0,0,30,3000,3000,49,0,0,0,0,0,0,19,2610,30,0,0,0,0,0,"Daggerspine Marauder - OOCLOS - Attack start");

DELETE FROM `creature_text` WHERE `entry` IN (2775, 2610);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(2775, 0, 0, 'Nothing will stop us! You will die!', 14, 0, 100, 0, 0, 0, 855, 0, 'Daggerspine Marauder'),
(2775, 0, 1, 'You''ve plundered our treasures too long.  Prepare to meet your watery grave!', 14, 0, 100, 0, 0, 0, 854, 0, 'Daggerspine Marauder'),
(2610, 0, 0, 'All hands to battle stations! Naga incoming!', 14, 0, 100, 0, 0, 0, 6372, 0, 'Shakes Breen'),
(2610, 1, 0, 'If we can just hold them now, I am sure we will be in the clear.', 12, 0, 100, 0, 0, 0, 863, 0, 'Shakes Breen');
UPDATE `item_template` SET `BuyCount`=5 WHERE  `entry`IN(22218,49856,49857,49858,49859,49860,49861,22200,50163);
--
UPDATE `creature_template` SET `vehicleId`=196 WHERE `entry`=30108;
DELETE FROM `vehicle_template_accessory` WHERE `entry`=30108 AND `accessory_entry` IN (30401);
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`)VALUES
(30108,30401,1,1,'Stormcrest Eagle',8,0);

UPDATE `creature_template` SET `ScriptName` = 'npc_stormcrest_eagle' WHERE `entry` = 30108;
DELETE FROM `gossip_menu_option` WHERE `menu_id`=9891 AND `id`=0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES
(9891, 0, 0, 'King Stormheart sent me to be tested as a frostborn would. I am ready for my test, Fjorlin', 32929, 1, 1, 0, 0, 0, 0, '',0);
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceID`=15 AND `SourceEntry`=0 AND `SourceGroup`=9891;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`elseGroup`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`Comment`) VALUES
(15,9891,0,9,0,12874,0,0,0,'show gossip on quest 12874 taken');

-- Fjorlin Frostbrow SAI
SET @ENTRY := 29732;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,62,0,100,0,9891,1,0,0,11,56411,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fjorlin Frostbrow - On Gossip Option 1 Selected - Cast 'Forcecast Summon Scripted Eagle'"),
(@ENTRY,0,1,0,61,0,100,0,9891,1,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fjorlin Frostbrow - On Gossip Option 1 Selected - Close Gossip"),
(@ENTRY,0,2,3,62,0,100,0,9891,0,0,0,85,55942,2,0,0,0,0,7,0,0,0,0,0,0,0,"Fjorlin Frostbrow - On Gossip Option 0 Selected - Invoker Cast 'Summon Battle Eagle'"),
(@ENTRY,0,3,0,61,0,100,0,9891,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Fjorlin Frostbrow - On Gossip Option 0 Selected - Close Gossip");

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=30108;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(30108,46598,1,0);

UPDATE `creature_template` SET `ScriptName`='', `InhabitType`=4 WHERE  `entry`=30108;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=30108;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 30108, 0, 0, 9, 0, 12874, 0, 0, 0, 0, 0, '', 'SAI triggers only if player on quest 12874');

DELETE FROM `creature_text` WHERE `entry`=30401;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`,`BroadcastTextId`) VALUES
(30401, 0, 0, 'King Stormheart is putting you to the test, eh? He must see something in you to begin with or I doubt he''d put you through such a sacred ritual.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30942),
(30401, 1, 0, 'I know you''re new to our kind, so I''ll catch you up a bit while we''re on our way over.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30943),
(30401, 2, 0, 'Years back, my father and several other frostborn were returning from a trek across Dragonblight. There was a heavy blizzard... far worse than we''ve ever seen since.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30944),
(30401, 3, 0, 'They crossed a trail of blood-soaked snow and followed it to find a dwarf wandering and speaking in a dialect they couldn''t make out... and not a dwarf of our kind mind you, but a mountain dwarf - something our kind had never seen before.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30945),
(30401, 4, 0, 'The dwarf seemed lost, having no memory of where he came from, or even of his own name. Not being the kind to leave a dwarven cousin to die in the snow, my father''s party took him in and continued back towards Frosthold.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30946),
(30401, 5, 0, 'Not long later, out of nowhere, the snow burst before them and a jormungar the size of Veranus herself came down upon their party... one of them was swallowed whole before they even had time to react.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30947),
(30401, 6, 0, 'My father thought they were all doomed... but behind him, a furious roar rumbled across the snow, and he turned to see the mountain dwarf growing in size, his skin taking on a stone-like texture, and his hands sizzling with lightning.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30948),
(30401, 7, 0, 'The dwarf barreled forward with a sound like rolling thunder and hurled a shining metal hammer, lightning coursing over its surface, directly into the jormungar''s throat.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30949),
(30401, 8, 0, 'The jormungar collapsed instantly, its head barely still attached to its convulsing body. My father turned to the dwarf in awe and raised a fist in praise...', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30950),
(30401, 9, 0, 'The stranger having no name of his own, my father deemed \"Yorg,\" a name reserved for champions of legend. Years later, he now stands before us as Yorg Stormheart, King of the Frostborn.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30952),
(30401, 10, 0, 'King Stormheart has trained us well... turned us into even more fearsome warriors than we could have boasted during the time of our war with the Frost Giants.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30953),
(30401, 11, 0, 'And as one of the fiercest tests put upon a warrior of the frostborn, we are made to face a creature far larger than ourselves--giants, dragons, jormungar--as a testament to the fact that size will never be our weakness.', 12, 0, 100, 0, 0, 0, 'Velog Icebellow',30955),
(30401, 12, 0, 'This is the test put before you this day. Return to us only once The Iron Watcher is dead, and be revered as a warrior of the frostborn.', 14, 0, 100, 0, 0, 0, 'Velog Icebellow',30956),
(30401, 13, 0, 'He is slow from the rust of the ages... be quick on your feet and he will not best you. You have King Stormheart''s favor - do not disappoint.', 14, 0, 100, 0, 0, 0, 'Velog Icebellow',31343);

DELETE FROM `creature_template_addon` WHERE `entry`=30108;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(30108,0,0,0,1,0,'52211'); -- Flight Aura

DELETE FROM `spell_target_position` WHERE id=55942;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(55942, 571, 6610.838379, -280.558685, 984.428772, 3.598404);

-- Stormcrest Eagle SAI
SET @ENTRY := 30108;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,27,0,100,0,0,0,0,0,53,1,30108,0,0,0,0,1,0,0,0,0,0,0,0,"Stormcrest Eagle - On Passenger Boarded - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,1,30108,0,0,1,0,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 1 Reached - Say Line 0"),
(@ENTRY,0,2,0,40,0,100,0,2,30108,0,0,1,1,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 2 Reached - Say Line 1"),
(@ENTRY,0,3,0,40,0,100,0,4,30108,0,0,1,2,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 4 Reached - Say Line 2"),
(@ENTRY,0,4,0,40,0,100,0,6,30108,0,0,1,3,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 6 Reached - Say Line 3"),
(@ENTRY,0,5,0,40,0,100,0,8,30108,0,0,1,4,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 8 Reached - Say Line 4"),
(@ENTRY,0,6,0,40,0,100,0,10,30108,0,0,1,5,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 10 Reached - Say Line 5"),
(@ENTRY,0,7,0,40,0,100,0,12,30108,0,0,1,6,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 12 Reached - Say Line 6"),
(@ENTRY,0,8,0,40,0,100,0,14,30108,0,0,1,7,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 14 Reached - Say Line 7"),
(@ENTRY,0,9,0,40,0,100,0,16,30108,0,0,1,8,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 16 Reached - Say Line 8"),
(@ENTRY,0,10,0,40,0,100,0,18,30108,0,0,1,9,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 18 Reached - Say Line 9"),
(@ENTRY,0,12,0,40,0,100,0,22,30108,0,0,1,10,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 22 Reached - Say Line 10"),
(@ENTRY,0,13,0,40,0,100,0,24,30108,0,0,1,11,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 24 Reached - Say Line 11"),
(@ENTRY,0,14,0,40,0,100,0,25,30108,0,0,1,12,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 25 Reached - Say Line 12"),
(@ENTRY,0,15,0,40,0,100,0,26,30108,0,0,1,13,0,0,0,0,0,19,30401,10,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 26 Reached - Say Line 13"),
(@ENTRY,0,16,0,40,0,100,0,28,30108,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Stormcrest Eagle - On Waypoint 28 Reached - Despawn Instant");

DELETE FROM `waypoints` WHERE `entry`=30108;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(30108, 1, 6586.2, -294.997, 989.82, 'Eagle'),
(30108, 2, 6519.83, -384.722, 994.117, 'Eagle'),
(30108, 3, 6519.97, -524.613, 986.315, 'Eagle'),
(30108, 4, 6582.99, -676.868, 973.055, 'Eagle'),
(30108, 5, 6687.48, -733.39, 964.698, 'Eagle'),
(30108, 6, 6855.16, -744.853, 961.192, 'Eagle'),
(30108, 7, 6994.31, -760.115, 959.543, 'Eagle'),
(30108, 8, 7119.54, -785.058, 970.552, 'Eagle'),
(30108, 9, 7245.46, -832.456, 982.112, 'Eagle'),
(30108, 10, 7372.43, -884.75, 992.92, 'Eagle'),
(30108, 11, 7451.38, -912.608, 999.791, 'Eagle'),
(30108, 12, 7550.54, -946.482, 1008.39, 'Eagle'),
(30108, 13, 7627.06, -969.296, 1025.31, 'Eagle'),
(30108, 14, 7701.49, -991.429, 1041.78, 'Eagle'),
(30108, 15, 7767.2, -1011.33, 1056.82, 'Eagle'),
(30108, 16, 7837.09, -1032.49, 1072.82, 'Eagle'),
(30108, 17, 7898.99, -1053.29, 1090.37, 'Eagle'),
(30108, 18, 7944.64, -1070.18, 1112.88, 'Eagle'),
(30108, 19, 7995.38, -1111.07, 1138.38, 'Eagle'),
(30108, 20, 8075.38, -1184.51, 1180.87, 'Eagle'),
(30108, 21, 8133, -1259.6, 1214.29, 'Eagle'),
(30108, 22, 8221.79, -1381.51, 1271, 'Eagle'),
(30108, 23, 8300.22, -1485.87, 1321.57, 'Eagle'),
(30108, 24, 8367.07, -1592.58, 1382.36, 'Eagle'),
(30108, 25, 8414.48, -1701.68, 1449.03, 'Eagle'),
(30108, 26, 8456.78, -1783.6, 1462.78, 'Eagle'),
(30108, 27, 8482.2, -1838.47, 1470, 'Eagle'),
(30108, 28, 8526.7, -1956.21, 1473.59, 'Eagle');
