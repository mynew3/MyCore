-- Мердж до d443a768c3a163f22794713dad07dd62358b6ec0
--
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE entry IN (32451);

UPDATE `creature` SET `modelid`=0, movementType=2 WHERE guid IN (114330, 114331);

DELETE FROM creature_addon WHERE guid = 114331;
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote,auras) VALUES (114331, 1143310, 0, 0, 1, 0, '');

DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` IN (32451);
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32451, 0, 0, 0, 1, 0, 100, 0, 5000, 5000, 120000, 120000, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dalaran Citizen - Ooc - talk');

DELETE FROM waypoint_data WHERE id=1143310;
INSERT INTO waypoint_data (id, POINT, position_x, position_y, position_z, orientation, delay, move_type, ACTION, action_chance, wpguid) VALUES
(1143310, 1, 5961.356445, 661.699219, 641.721252, 0, 0, 0, 0, 100, 0),
(1143310, 2, 5954.011230, 657.709167, 641.991577, 0, 0, 0, 0, 100, 0),
(1143310, 3, 5947.983887, 658.844055, 642.101562, 0, 0, 0, 0, 100, 0),
(1143310, 4, 5950.894043, 662.109314, 641.363831, 0, 0, 0, 0, 100, 0),
(1143310, 5, 5959.004395, 674.209778, 640.880432, 0, 0, 0, 0, 100, 0),
(1143310, 6, 5961.065430, 680.407043, 640.494263, 0, 0, 0, 0, 100, 0),
(1143310, 7, 5962.776367, 679.769470, 640.680603, 0, 0, 0, 0, 100, 0),
(1143310, 8, 5963.701172, 675.173035, 640.749817, 0, 0, 0, 0, 100, 0),
(1143310, 9, 5963.879883, 666.781982, 641.512024, 0, 20000, 0, 0, 100, 0);

DELETE FROM creature_text WHERE entry IN (32451);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(32451, 0, 0, 'She said to meet her right here... maybe I''m in the wrong place?', 12, 0, 100, 1, 0, 0, 'Dalaran Citizen', 33069), 
(32451, 0, 1, 'Luckily, the Lich King''s grasp has not reached Dalaran yet.', 12, 0, 100, 1, 0, 0, 'Dalaran Citizen', 33068), 
(32451, 0, 2, 'Sometimes it''s nice to get away from the sanctum and get some fresh air.', 12, 0, 100, 1, 0, 0, 'Dalaran Citizen', 33067);

UPDATE `creature` SET movementType=2 WHERE guid IN (28686);

DELETE FROM creature_addon WHERE guid IN (28686);
INSERT INTO creature_addon (guid, path_id, mount, bytes1, bytes2, emote,auras) 
VALUES (28686, 286860, 0, 0, 0, 0, '');

DELETE FROM waypoint_data WHERE id IN (286860);
INSERT INTO waypoint_data (id, POINT, position_x, position_y, position_z, orientation, delay, move_type, ACTION, action_chance, wpguid)VALUES
(286860, 1, 5960.950195, 598.314026, 650.627014, 0, 0, 0, 0, 100, 0),
(286860, 2, 5957.295898, 617.082153, 650.627258, 0, 0, 0, 0, 100, 0), 
(286860, 3, 5894.468262, 657.878052, 644.688843, 0, 0, 0, 0, 100, 0), 
(286860, 4, 5823.077637, 714.962402, 641.066895, 0, 0, 0, 0, 100, 0), 
(286860, 5, 5799.794922, 719.503174, 640.661865, 0, 0, 0, 0, 100, 0), 
(286860, 6, 5770.590820, 703.946777, 641.473755, 0, 0, 0, 0, 100, 0), 
(286860, 7, 5728.678223, 659.602661, 645.874878, 0, 0, 0, 0, 100, 0), 
(286860, 8, 5716.125977, 657.985718, 646.207947, 0, 0, 0, 0, 100, 0), 
(286860, 9, 5701.286621, 654.542480, 646.277710, 0, 0, 0, 0, 100, 0),
(286860, 10, 5697.024902, 648.178040, 646.409180, 0, 0, 0, 0, 100, 0),
(286860, 11, 5728.723633, 617.990295, 647.119080, 0, 0, 0, 0, 100, 0),
(286860, 12, 5764.286621, 595.154358, 649.794617, 0, 0, 0, 0, 100, 0),
(286860, 13, 5771.400391, 598.777588, 650.299805, 0, 0, 0, 0, 100, 0),
(286860, 14, 5798.370605, 631.354919, 647.415161, 0, 20000, 0, 0, 100, 0),
(286860, 15, 5809.011719, 632.435669, 647.466370, 0, 0, 0, 0, 100, 0),
(286860, 16, 5813.840332, 639.437012, 647.445251, 0, 0, 0, 0, 100, 0),
(286860, 17, 5812.633301, 647.708679, 647.411682, 0, 0, 0, 0, 100, 0),
(286860, 18, 5837.737305, 679.004089, 643.481323, 0, 0, 0, 0, 100, 0),
(286860, 19, 5863.233887, 672.251282, 644.026489, 0, 0, 0, 0, 100, 0),
(286860, 20, 5872.090332, 660.963562, 644.639648, 0, 0, 0, 0, 100, 0),
(286860, 21, 5871.882812, 655.302795, 645.210327, 0, 0, 0, 0, 100, 0),
(286860, 22, 5866.628906, 656.807068, 645.358337, 0, 0, 0, 0, 100, 0),
(286860, 23, 5858.618164, 665.766174, 647.507935, 0, 0, 0, 0, 100, 0),
(286860, 24, 5854.410645, 663.378418, 647.491699, 0, 0, 0, 0, 100, 0),
(286860, 25, 5853.316406, 646.056763, 647.511597, 0, 0, 0, 0, 100, 0),
(286860, 26, 5855.305664, 646.037170, 647.511597, 0, 20000, 0, 0, 100, 0),
(286860, 27, 5853.801270, 644.892761, 647.511597, 0, 0, 0, 0, 100, 0),
(286860, 28, 5854.399902, 639.586365, 647.511597, 0, 0, 0, 0, 100, 0),
(286860, 29, 5861.342773, 632.158997, 647.913147, 0, 0, 0, 0, 100, 0),
(286860, 30, 5873.931152, 637.613953, 646.993347, 0, 0, 0, 0, 100, 0),
(286860, 31, 5888.598145, 639.828796, 646.219421, 0, 0, 0, 0, 100, 0),
(286860, 32, 5911.427246, 634.141296, 645.621460, 0, 0, 0, 0, 100, 0),
(286860, 33, 5944.164062, 622.176941, 650.655151, 0, 0, 0, 0, 100, 0),
(286860, 34, 5958.649414, 608.832092, 650.627136, 0, 0, 0, 0, 100, 0),
(286860, 35, 5960.950195, 598.314026, 650.627014, 0, 20000, 0, 0, 100, 0);

-- deprecated on 4.x
DELETE FROM `creature_text` WHERE `entry`=14875;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES 
(14875, 0, 0, 'Begin the ritual, my servants. We must banish the heart of Hakkar back into the void!', 14, 0, 100, 0, 0, 0, 'Molthor'),
(14875, 1, 0, 'All Hail $n, slayer of Hakkar, and hero of Azeroth!', 14, 0, 100, 0, 0, 0, 'Molthor');

DELETE FROM `locales_creature_text` WHERE `entry`=14875;
INSERT INTO `locales_creature_text` (`entry`, `groupid`, `id`, `text_loc3`) VALUES
(14875, 0, 0, 'Beginnt mit dem Ritual. Wir mussen das Herz von Hakkar zuruck in die Leere verbannen!'),
(14875, 1, 0, 'All Hail $n, Bezwinger von Hakkar und Held von Azeroth!');

-- Molthor SAI
SET @ENTRY := 14875;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,64,0,100,0,0,0,0,0,5,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Gossip Hello - Play Emote 4"),
(@ENTRY,0,1,0,20,0,100,0,8183,0,0,0,53,0,14875,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Quest 'The Heart of Hakkar' Finished - Start Waypoint"),
(@ENTRY,0,2,0,40,0,100,0,11,14875,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Waypoint 12 Reached - Run Script"),
(@ENTRY,0,3,0,40,0,100,0,11,14875,0,0,54,39000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Waypoint 12 Reached - Pause Waypoint");

-- Actionlist SAI
SET @ENTRY := 1487500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,24203,2,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Script - Cast 'Heart of Hakkar Banning'"),
(@ENTRY,9,1,0,0,0,100,0,0,0,0,0,12,15080,6,0,0,0,0,8,0,0,0,-11817,1324,1,1,"Molthor - On Script - Summon Creature 'Servant of the Hand'"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,12,15080,6,0,0,0,0,8,0,0,0,-11831.5,1331.15,1.839,0.615,"Molthor - On Script - Summon Creature 'Servant of the Hand'"),
(@ENTRY,9,3,0,0,0,100,0,0,0,0,0,12,15080,6,0,0,0,0,8,0,0,0,-11834.8,1349.83,2.009,5.864,"Molthor - On Script - Summon Creature 'Servant of the Hand'"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,15080,6,0,0,0,0,8,0,0,0,-11801,1335.25,1.261,2.808,"Molthor - On Script - Summon Creature 'Servant of the Hand'"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,12,15069,2,38000,0,0,0,8,0,0,0,-11818.9,1343.2,7.905,4.3411,"Molthor - On Script - Summon Creature 'Heart of Hakkar'"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Script - Say Line 1"),
(@ENTRY,9,7,0,0,0,100,0,36000,36000,0,0,85,24425,0,0,0,0,0,17,0,2000,0,0,0,0,0,"Molthor - On Script - Invoker Cast 'Spirit of Zandalar'"),
(@ENTRY,9,8,0,0,0,100,0,0,0,0,0,59,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Script - Set Run On"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Molthor - On Script - Say Line 1"),
(@ENTRY,9,10,0,0,0,100,0,0,0,0,0,11,24425,2,0,0,0,0,17,0,2000,0,0,0,0,0,"Molthor - On Script - Cast 'Spirit of Zandalar'");

-- Servant of the Hand SAI
SET @ENTRY := 15080;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Servant of the Hand - On Just Summoned - Run Script");

-- Actionlist SAI
SET @ENTRY := 1508000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,24602,2,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Create Heart of Hakkar Summon Circle'"),
(@ENTRY,9,1,0,0,0,100,0,4000,4000,0,0,11,24217,64,0,0,0,0,19,15069,200,0,0,0,0,0,"On Script - Cast 'Quest - Heart of Hakkar, Ritual Cast Visual'"),
(@ENTRY,9,2,0,0,0,100,0,34000,34000,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn Instant");

-- Heart of Hakkar SAI
SET @ENTRY := 15069;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,100,100,5000,5000,11,24202,2,0,0,0,0,1,0,0,0,0,0,0,0,"Heart of Hakkar - Out of Combat - Cast 'Create Heart of Hakkar Rift'"),
(@ENTRY,0,1,0,1,0,100,0,38000,38000,0,0,41,10,0,0,0,0,0,1,0,0,0,0,0,0,0,"Heart of Hakkar - Out of Combat - Despawn In 10 ms");

DELETE FROM `waypoints` WHERE `entry`=14875;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(14875, 1, -11813.9, 1257.9, 6.00591, 'Molthor'),
(14875, 2, -11816, 1253.34, 4.10438, 'Molthor'),
(14875, 3, -11817.8, 1250.34, 2.64272, 'Molthor'),
(14875, 4, -11822.2, 1248.5, 2.45973, 'Molthor'),
(14875, 5, -11823, 1248.43, 2.43644, 'Molthor'),
(14875, 6, -11830.2, 1262.37, 1.60647, 'Molthor'),
(14875, 7, -11833.6, 1272.28, 1.51623, 'Molthor'),
(14875, 8, -11836.3, 1282.42, 1.74283, 'Molthor'),
(14875, 9, -11836.9, 1294, 0.464341, 'Molthor'),
(14875, 10, -11835.6, 1297.62, 0.654105, 'Molthor'),
(14875, 11, -11826.2, 1322.37, 0.217855, 'Molthor'),
(14875, 21, -11813.9, 1257.9, 6.00591, 'Molthor'),
(14875, 20, -11816, 1253.34, 4.10438, 'Molthor'),
(14875, 19, -11817.8, 1250.34, 2.64272, 'Molthor'),
(14875, 18, -11822.2, 1248.5, 2.45973, 'Molthor'),
(14875, 17, -11823, 1248.43, 2.43644, 'Molthor'),
(14875, 16, -11830.2, 1262.37, 1.60647, 'Molthor'),
(14875, 15, -11833.6, 1272.28, 1.51623, 'Molthor'),
(14875, 14, -11836.3, 1282.42, 1.74283, 'Molthor'),
(14875, 13, -11836.9, 1294, 0.464341, 'Molthor'),
(14875, 12, -11835.6, 1297.62, 0.654105, 'Molthor'),
(14875, 22, -11811.491, 1262.42, 6.004, 'Molthor'),
(14875, 23, -11812.52, 1260.45, 6.004, 'Molthor');
--
DELETE FROM `spell_proc_event` WHERE `entry` IN (71174,71198);
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`) VALUES
(71174, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0),
(71198, 4, 11, 0, 0, 0, 0, 0, 0, 0, 0);
-- Adding missing spawn Bleeding Hollow Dark Shaman Entry: 16873
SET @GUID := 29978;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`, `MovementType`) VALUES
(@GUID, 16873, 530, -945.313, 1948.252, 58.1359, 67.06455, 300, 3984, 2434, 2);

-- Bleeding Hollow Dark Shaman SAI
SET @ENTRY := 16873;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Out of Combat - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,1,0,1,0,100,0,1000,1000,1800000,1800000,11,12550,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Out of Combat - Cast 'Lightning Shield' (No Repeat)"),
(@ENTRY,0,2,3,4,0,100,1,0,0,0,0,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - On Aggro - Cast 'Shadow Bolt' (No Repeat)"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - On Aggro - Increment Phase By 1 (No Repeat)"),
(@ENTRY,0,4,0,9,1,100,0,0,40,2400,3800,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Within 0-40 Range - Cast 'Shadow Bolt' (No Repeat)"),
(@ENTRY,0,5,6,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,6,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,7,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,8,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,9,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,10,0,3,2,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,11,0,2,0,100,1,0,30,0,0,11,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-30% Health - Cast 'Bloodlust' (Phase 1) (No Repeat)"),
(@ENTRY,0,12,0,0,0,100,0,4000,8000,30000,45000,11,32062,1,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - In Combat - Cast 'Fire Nova Totem' (Phase 1) (No Repeat)"),
(@ENTRY,0,13,14,2,0,100,1,0,15,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-15% Health - Set Event Phase 3 (No Repeat)"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-15% Health - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,15,0,61,0,100,0,0,0,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - Between 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,16,0,5,0,100,1,0,0,0,0,11,34013,1,0,0,0,0,7,0,0,0,0,0,0,0,"Bleeding Hollow Dark Shaman - On Killed Unit - Cast 'Raise Soul' (No Repeat)");

-- Pathing for Bleeding Hollow Dark Shaman Entry: 16873 'TDB FORMAT' 
SET @NPC := 58257;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1058.69,`position_y`=2123.373,`position_z`=51.63616 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1058.69,2123.373,51.63616,0,0,0,0,100,0),
(@PATH,2,-1057.219,2099.756,59.51154,0,0,0,0,100,0),
(@PATH,3,-1044.785,2080.962,64.48811,0,0,0,0,100,0),
(@PATH,4,-1027.752,2060.003,67.17399,0,0,0,0,100,0),
(@PATH,5,-1035.883,2045.864,67.88428,0,0,0,0,100,0),
(@PATH,6,-1024.891,2036.104,67.17399,0,0,0,0,100,0),
(@PATH,7,-1011.885,2038.549,67.04899,0,0,0,0,100,0),
(@PATH,8,-993.7006,2017.729,67.06455,0,0,0,0,100,0),
(@PATH,9,-1008.182,1997.039,67.06455,0,0,0,0,100,0),
(@PATH,10,-992.9711,2018.175,67.06455,0,0,0,0,100,0),
(@PATH,11,-971.9114,2014.351,67.06455,0,0,0,0,100,0),
(@PATH,12,-992.9711,2018.175,67.06455,0,0,0,0,100,0),
(@PATH,13,-1008.182,1997.039,67.06455,0,0,0,0,100,0),
(@PATH,14,-1008.182,1997.039,67.06455,0,0,0,0,100,0),
(@PATH,15,-993.7006,2017.729,67.06455,0,0,0,0,100,0),
(@PATH,16,-1011.885,2038.549,67.04899,0,0,0,0,100,0),
(@PATH,17,-1011.885,2038.549,67.04899,0,0,0,0,100,0),
(@PATH,18,-1024.891,2036.104,67.17399,0,0,0,0,100,0),
(@PATH,19,-1035.883,2045.864,67.88428,0,0,0,0,100,0),
(@PATH,20,-1027.752,2060.003,67.17399,0,0,0,0,100,0),
(@PATH,21,-1027.752,2060.003,67.17399,0,0,0,0,100,0),
(@PATH,22,-1044.785,2080.966,64.57795,0,0,0,0,100,0),
(@PATH,23,-1057.219,2099.756,59.51154,0,0,0,0,100,0);
-- 0xF13041E90060F72D .go -1058.69 2123.373 51.63616

-- Pathing for Bleeding Hollow Dark Shaman Entry: 16873 'TDB FORMAT' 
SET @NPC := 58256;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1144.076,`position_y`=1954.738,`position_z`=80.57024 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1144.076,1954.738,80.57024,0,0,0,0,100,0),
(@PATH,2,-1133.44,1972.225,73.66801,0,0,0,0,100,0),
(@PATH,3,-1122.611,1999.216,68.83028,0,0,0,0,100,0),
(@PATH,4,-1099.563,2031.872,67.05327,0,0,0,0,100,0),
(@PATH,5,-1084.684,2065.122,66.82748,0,0,0,0,100,0),
(@PATH,6,-1070.713,2090.635,62.18363,0,0,0,0,100,0),
(@PATH,7,-1100.243,2084.849,66.59998,0,0,0,0,100,0),
(@PATH,8,-1129.753,2078.135,67.00842,0,0,0,0,100,0),
(@PATH,9,-1100.243,2084.849,66.59998,0,0,0,0,100,0),
(@PATH,10,-1070.713,2090.635,62.18363,0,0,0,0,100,0),
(@PATH,11,-1084.646,2065.203,66.72787,0,0,0,0,100,0),
(@PATH,12,-1099.563,2031.872,67.05327,0,0,0,0,100,0),
(@PATH,13,-1122.611,1999.216,68.83028,0,0,0,0,100,0),
(@PATH,14,-1133.43,1972.312,73.66801,0,0,0,0,100,0);
-- 0xF13041E900612D35 .go -1144.076 1954.738 80.57024

-- Pathing for Bleeding Hollow Dark Shaman Entry: 16873 'TDB FORMAT' 
SET @NPC := 58258;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1060.848,`position_y`=2105.119,`position_z`=58.13591 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1060.848,2105.119,58.13591,0,0,0,0,100,0),
(@PATH,2,-1037.167,2107.136,59.97014,0,0,0,0,100,0),
(@PATH,3,-1018.748,2084.713,68.99667,0,0,0,0,100,0),
(@PATH,4,-990.0961,2053.444,67.06454,0,0,0,0,100,0),
(@PATH,5,-961.8248,2037.499,67.04703,0,0,0,0,100,0),
(@PATH,6,-938.3379,2024.596,65.73439,0,0,0,0,100,0),
(@PATH,7,-921.1564,2015.199,62.66013,0,0,0,0,100,0),
(@PATH,8,-909.5775,1992.915,67.29996,0,0,0,0,100,0),
(@PATH,9,-889.6608,1985.54,67.38715,0,0,0,0,100,0),
(@PATH,10,-879.1632,1955.284,67.81312,0,0,0,0,100,0),
(@PATH,11,-877.1085,1921.789,70.60205,0,0,0,0,100,0),
(@PATH,12,-901.7319,1883,76.4217,0,0,0,0,100,0),
(@PATH,13,-877.1085,1921.789,70.60205,0,0,0,0,100,0),
(@PATH,14,-879.1632,1955.284,67.81312,0,0,0,0,100,0),
(@PATH,15,-889.6608,1985.54,67.38715,0,0,0,0,100,0),
(@PATH,16,-909.5775,1992.915,67.29996,0,0,0,0,100,0),
(@PATH,17,-921.1564,2015.199,62.66013,0,0,0,0,100,0),
(@PATH,18,-938.3379,2024.596,65.73439,0,0,0,0,100,0),
(@PATH,19,-961.8248,2037.499,67.04703,0,0,0,0,100,0),
(@PATH,20,-990.0961,2053.444,67.06454,0,0,0,0,100,0),
(@PATH,21,-1018.748,2084.713,68.99667,0,0,0,0,100,0),
(@PATH,22,-1037.167,2107.136,59.97014,0,0,0,0,100,0),
(@PATH,23,-1060.848,2105.119,58.13591,0,0,0,0,100,0);
-- 0xF13041E90061464D .go -1060.848 2105.119 58.13591

-- Pathing for Bleeding Hollow Dark Shaman Entry: 16873 'TDB FORMAT' 
SET @NPC := 6747;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-945.313,`position_y`=1948.252,`position_z`=67.06455 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-945.313,1948.252,67.06455,0,0,0,0,100,0),
(@PATH,2,-946.7964,1966.628,67.06455,0,0,0,0,100,0),
(@PATH,3,-932.1639,1983.549,66.96194,0,0,0,0,100,0),
(@PATH,4,-914.9733,1976.555,67.05032,0,0,0,0,100,0),
(@PATH,5,-929.8001,1991.014,66.44107,0,0,0,0,100,0),
(@PATH,6,-929.8001,1991.014,66.44107,0,0,0,0,100,0),
(@PATH,7,-941.426,2015.632,66.31691,0,0,0,0,100,0),
(@PATH,8,-965.7396,2015.727,67.03322,0,0,0,0,100,0),
(@PATH,9,-968.4443,2047.705,67.06454,0,0,0,0,100,0),
(@PATH,10,-965.7396,2015.727,67.03322,0,0,0,0,100,0),
(@PATH,11,-965.7396,2015.727,67.03322,0,0,0,0,100,0),
(@PATH,12,-941.426,2015.632,66.31691,0,0,0,0,100,0),
(@PATH,13,-929.8001,1991.014,66.44107,0,0,0,0,100,0),
(@PATH,14,-914.9733,1976.555,67.05032,0,0,0,0,100,0),
(@PATH,15,-914.9733,1976.555,67.05032,0,0,0,0,100,0),
(@PATH,16,-932.1639,1983.549,66.96194,0,0,0,0,100,0),
(@PATH,17,-946.7964,1966.628,67.06455,0,0,0,0,100,0);
-- 0xF13041E90061F326 .go -945.313 1948.252 67.06455
-- Updating SAI
-- Dreadcaller SAI
SET @ENTRY := 19434;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Out of Combat - Enable Combat Movement (No Repeat)"),
(@ENTRY,0,1,2,4,0,100,1,0,0,0,0,11,32666,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dreadcaller - On Aggro - Cast 'Shadow Bolt' (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - On Aggro - Increment Phase By 1 (No Repeat)"),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,32666,0,0,0,0,0,2,0,0,0,0,0,0,0,"Dreadcaller - Within 0-40 Range - Cast 'Shadow Bolt' (No Repeat)"),
(@ENTRY,0,4,5,3,1,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Between 0-15% Mana - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,5,0,61,1,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Between 0-15% Mana - Increment Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Within 35-80 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Within 5-15 Range - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Within 0-5 Range - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Dreadcaller - Between 30-100% Mana - Decrement Phase By 1 (Phase 1) (No Repeat)"),
(@ENTRY,0,10,0,0,0,100,0,4000,9000,18100,24000,11,11443,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dreadcaller - In Combat - Cast 'Cripple' (Phase 1) (No Repeat)");

-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69502;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=177.5729,`position_y`=2268.238,`position_z`=48.5948 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,177.5729,2268.238,48.5948,0,0,0,0,100,0),
(@PATH,2,206.0571,2228.519,54.04856,0,0,0,0,100,0);
-- 0xF1304BEA00397367 .go 177.5729 2268.238 48.5948

-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69501;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=190.7178,`position_y`=2286.323,`position_z`=49.66181 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,190.7178,2286.323,49.66181,0,0,0,0,100,0),
(@PATH,2,210.6431,2285.845,53.60326,0,0,0,0,100,0),
(@PATH,3,222.5459,2286.666,56.13475,0,0,0,0,100,0),
(@PATH,4,231.5569,2296.63,60.31371,0,0,0,0,100,0),
(@PATH,5,220.7462,2308.746,60.02021,0,0,0,0,100,0),
(@PATH,6,208.7211,2311.991,57.36103,0,0,0,0,100,0),
(@PATH,7,195.7977,2312.93,53.85427,0,0,0,0,100,0),
(@PATH,8,181.254,2297.919,50.28107,0,0,0,0,100,0);
-- 0xF1304BEA00396ED6 .go 190.7178 2286.323 49.66181

-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69500;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=233.3709,`position_y`=2074.927,`position_z`=39.10539 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,233.3709,2074.927,39.10539,0,0,0,0,100,0),
(@PATH,2,228.1582,2076.218,39.70464,0,0,0,0,100,0),
(@PATH,3,226.8357,2086.181,39.48833,0,0,0,0,100,0),
(@PATH,4,227.4231,2100.461,39.53439,0,0,0,0,100,0),
(@PATH,5,231.5971,2104.666,38.92635,0,0,0,0,100,0),
(@PATH,6,237.6874,2098.439,39.00676,0,0,0,0,100,0),
(@PATH,7,241.6207,2088.015,38.11906,0,0,0,0,100,0),
(@PATH,8,238.947,2078.802,38.06547,0,0,0,0,100,0);
-- 0xF1304BEA00353517 .go 233.3709 2074.927 39.10539


-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69503;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-523.7537,`position_y`=2008.213,`position_z`=82.43176 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-523.7537,2008.213,82.43176,0,0,0,0,100,0),
(@PATH,2,-513.3772,2034.226,82.13103,0,0,0,0,100,0),
(@PATH,3,-501.1374,2063.957,81.46646,0,0,0,0,100,0),
(@PATH,4,-490.7202,2097.977,79.50304,0,0,0,0,100,0),
(@PATH,5,-495.6437,2124.143,75.1469,0,0,0,0,100,0),
(@PATH,6,-500.0753,2152.032,70.07507,0,0,0,0,100,0),
(@PATH,7,-497.6553,2131.211,73.99121,0,0,0,0,100,0),
(@PATH,8,-488.903,2108.3,78.71799,0,0,0,0,100,0),
(@PATH,9,-496.6252,2076.111,81.08714,0,0,0,0,100,0),
(@PATH,10,-505.7927,2051.876,81.88617,0,0,0,0,100,0),
(@PATH,11,-519.2833,2018.794,82.35017,0,0,0,0,100,0),
(@PATH,12,-523.7976,2008.294,82.49103,0,0,0,0,100,0);
-- 0x1C09E4424012FA8000002000004E9B0D .go -523.7537 2008.213 82.43176

-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69499;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-558.5822,`position_y`=2003.227,`position_z`=98.30606 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-558.5822,2003.227,98.30606,0,0,0,0,100,0),
(@PATH,2,-557.4218,2005.291,99.07405,0,0,0,0,100,0),
(@PATH,3,-559.7542,2056.054,96.38632,0,0,0,0,100,0),
(@PATH,4,-540.9093,2062.701,104.2178,0,0,0,0,100,0),
(@PATH,5,-538.0739,2083.637,102.7935,0,0,0,0,100,0),
(@PATH,6,-531.9629,2100.469,104.145,0,0,0,0,100,0),
(@PATH,7,-540.8042,2121.509,97.44407,0,0,0,0,100,0),
(@PATH,8,-542.6715,2139.263,94.42299,0,0,0,0,100,0),
(@PATH,9,-542.0955,2125.005,96.38588,0,0,0,0,100,0),
(@PATH,10,-531.0101,2105.611,103.8495,0,0,0,0,100,0),
(@PATH,11,-533.4691,2097.096,103.5421,0,0,0,0,100,0),
(@PATH,12,-539.8324,2066.038,103.8721,0,0,0,0,100,0),
(@PATH,13,-559.5454,2057.871,96.58672,0,0,0,0,100,0),
(@PATH,14,-557.4636,2005.37,98.92694,0,0,0,0,100,0);
-- 0x1C09E4424012FA8000002D00001EC994 .go -558.5822 2003.227 98.30606

-- Pathing for Dreadcaller Entry: 19434 'TDB FORMAT' 
SET @NPC := 69504;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-506.4011,`position_y`=1982.52,`position_z`=85.11931 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-506.4011,1982.52,85.11931,0,0,0,0,100,0),
(@PATH,2,-491.8763,2002.533,90.20009,0,0,0,0,100,0),
(@PATH,3,-475.5587,2034.282,93.52704,0,0,0,0,100,0),
(@PATH,4,-459.14,2057.011,93.19531,0,0,0,0,100,0),
(@PATH,5,-488.9269,2006.812,90.64146,0,0,0,0,100,0),
(@PATH,6,-506.4684,1982.384,85.10349,0,0,0,0,100,0),
(@PATH,7,-459.1624,2056.984,93.22046,0,0,0,0,100,0),
(@PATH,8,-453.0856,2078.318,92.4622,0,0,0,0,100,0),
(@PATH,9,-458.4782,2105.915,91.30417,0,0,0,0,100,0),
(@PATH,10,-453.1829,2091.579,91.92897,0,0,0,0,100,0),
(@PATH,11,-454.6579,2067.877,92.86068,0,0,0,0,100,0),
(@PATH,12,-471.7339,2040.147,93.86339,0,0,0,0,100,0),
(@PATH,13,-488.8954,2006.772,90.6447,0,0,0,0,100,0),
(@PATH,14,-506.3882,1982.291,85.0636,0,0,0,0,100,0);
-- 0x1C09E4424012FA8000002D00001EC026 .go -506.4011 1982.52 85.11931
-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69477;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-975.6777,`position_y`=1903.692,`position_z`=84.41418 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-975.6777,1903.692,84.41418,0,0,0,0,100,0),
(@PATH,2,-973.8419,1939.495,70.39467,0,0,0,0,100,0),
(@PATH,3,-955.7029,1969.015,68.00587,0,0,0,0,100,0),
(@PATH,4,-933.9344,1986.529,66.71876,0,0,0,0,100,0),
(@PATH,5,-920.0254,2004.145,64.96164,0,0,0,0,100,0),
(@PATH,6,-912.637,2028.022,56.54257,0,0,0,0,100,0),
(@PATH,7,-891.1589,2064.74,34.64294,0,0,0,0,100,0),
(@PATH,8,-869.7386,2091.601,23.5704,0,0,0,0,100,0),
(@PATH,9,-858.7391,2124.865,17.03608,0,0,0,0,100,0),
(@PATH,10,-823.7175,2119.571,16.5663,0,0,0,0,100,0),
(@PATH,11,-792.2368,2090.261,22.4062,0,0,0,0,100,0),
(@PATH,12,-783.2084,2054.525,29.63973,0,0,0,0,100,0),
(@PATH,13,-779.9326,2023.77,34.75321,0,0,0,0,100,0),
(@PATH,14,-800.3509,1985.585,39.80645,0,0,0,0,100,0),
(@PATH,15,-814.7488,1949.572,47.55807,0,0,0,0,100,0),
(@PATH,16,-822.0464,1919.74,54.06172,0,0,0,0,100,0),
(@PATH,17,-847.4603,1891.778,64.08673,0,0,0,0,100,0),
(@PATH,18,-885.2077,1883.808,72.72009,0,0,0,0,100,0),
(@PATH,19,-915.132,1902.349,70.37255,0,0,0,0,100,0),
(@PATH,20,-940.0393,1898.689,74.6819,0,0,0,0,100,0),
(@PATH,21,-958.8931,1878.34,92.07265,0,0,0,0,100,0),
(@PATH,22,-967.469,1873.979,94.75582,0,0,0,0,100,0),
(@PATH,23,-976.3881,1877.903,94.82088,0,0,0,0,100,0);
-- 0xF1304BE000608B4F .go -975.6777 1903.692 84.41418

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69471;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1157.17,`position_y`=1943.396,`position_z`=81.40363 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1157.17,1943.396,81.40363,0,0,0,0,100,0),
(@PATH,2,-1151.672,1940.954,81.40428,0,0,0,0,100,0),
(@PATH,3,-1143.042,1932.632,81.42173,0,0,0,0,100,0),
(@PATH,4,-1139.161,1923.026,81.20094,0,0,0,0,100,0),
(@PATH,5,-1138.57,1918.28,81.37885,0,0,0,0,100,0),
(@PATH,6,-1135.403,1912.328,81.4029,0,0,0,0,100,0),
(@PATH,7,-1138.515,1901.65,81.35353,0,0,0,0,100,0),
(@PATH,8,-1145.631,1891.622,81.32314,0,0,0,0,100,0),
(@PATH,9,-1139.867,1899.911,81.37244,0,0,0,0,100,0),
(@PATH,10,-1155.281,1909.135,81.45526,0,0,0,0,100,0),
(@PATH,11,-1139.867,1899.911,81.37244,0,0,0,0,100,0),
(@PATH,12,-1145.631,1891.622,81.32314,0,0,0,0,100,0),
(@PATH,13,-1138.515,1901.65,81.35353,0,0,0,0,100,0),
(@PATH,14,-1135.493,1912.019,81.39507,0,0,0,0,100,0),
(@PATH,15,-1138.57,1918.28,81.37885,0,0,0,0,100,0),
(@PATH,16,-1139.161,1923.026,81.20094,0,0,0,0,100,0),
(@PATH,17,-1142.842,1932.44,81.40112,0,0,0,0,100,0),
(@PATH,18,-1151.672,1940.954,81.40428,0,0,0,0,100,0);
-- 0xF1304BE00060877C .go -1157.17 1943.396 81.40363

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69476;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1033.498,`position_y`=2016.301,`position_z`=67.98228 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1033.498,2016.301,67.98228,0,0,0,0,100,0),
(@PATH,2,-1000.079,2017.703,67.06455,0,0,0,0,100,0),
(@PATH,3,-954.4206,2015.588,67.03322,0,0,0,0,100,0),
(@PATH,4,-915.6917,2025.381,58.45187,0,0,0,0,100,0),
(@PATH,5,-886.038,2057.447,35.91393,0,0,0,0,100,0),
(@PATH,6,-886.0889,2092.425,24.59444,0,0,0,0,100,0),
(@PATH,7,-915.6437,2115.709,20.89748,0,0,0,0,100,0),
(@PATH,8,-914.2065,2149.265,14.4707,0,0,0,0,100,0),
(@PATH,9,-922.1042,2170.104,12.60829,0,0,0,0,100,0),
(@PATH,10,-945.8377,2185.868,12.26309,0,0,0,0,100,0),
(@PATH,11,-961.3444,2217.514,9.387299,0,0,0,0,100,0),
(@PATH,12,-957.1495,2247.785,6.748508,0,0,0,0,100,0),
(@PATH,13,-984.4343,2282.687,6.486638,0,0,0,0,100,0),
(@PATH,14,-1016.313,2306.371,8.956036,0,0,0,0,100,0),
(@PATH,15,-1048.225,2313.089,14.2006,0,0,0,0,100,0),
(@PATH,16,-1081.711,2312.186,20.69922,0,0,0,0,100,0),
(@PATH,17,-1087.714,2285.604,24.63902,0,0,0,0,100,0),
(@PATH,18,-1067.954,2244.344,24.47042,0,0,0,0,100,0),
(@PATH,19,-1052.511,2214.931,19.66574,0,0,0,0,100,0),
(@PATH,20,-1051.316,2178.967,24.62208,0,0,0,0,100,0),
(@PATH,21,-1055.739,2145.756,39.92072,0,0,0,0,100,0),
(@PATH,22,-1057.033,2106.794,57.37517,0,0,0,0,100,0),
(@PATH,23,-1046.553,2082.452,64.01545,0,0,0,0,100,0),
(@PATH,24,-1029.464,2056.926,67.17399,0,0,0,0,100,0),
(@PATH,25,-1056.46,2029.947,67.56455,0,0,0,0,100,0),
(@PATH,26,-1084.9,1998.348,67.47117,0,0,0,0,100,0),
(@PATH,27,-1065.154,1984.061,69.4269,0,0,0,0,100,0),
(@PATH,28,-1084.9,1998.348,67.47117,0,0,0,0,100,0),
(@PATH,29,-1056.46,2029.947,67.56455,0,0,0,0,100,0),
(@PATH,30,-1029.464,2056.926,67.17399,0,0,0,0,100,0),
(@PATH,31,-1046.553,2082.452,64.01545,0,0,0,0,100,0),
(@PATH,32,-1057.033,2106.794,57.37517,0,0,0,0,100,0),
(@PATH,33,-1055.739,2145.756,39.92072,0,0,0,0,100,0),
(@PATH,34,-1051.316,2178.967,24.62208,0,0,0,0,100,0),
(@PATH,35,-1052.511,2214.931,19.66574,0,0,0,0,100,0),
(@PATH,36,-1067.954,2244.344,24.47042,0,0,0,0,100,0),
(@PATH,37,-1087.714,2285.604,24.63902,0,0,0,0,100,0),
(@PATH,38,-1081.711,2312.186,20.69922,0,0,0,0,100,0),
(@PATH,39,-1048.225,2313.089,14.2006,0,0,0,0,100,0),
(@PATH,40,-1016.313,2306.371,8.956036,0,0,0,0,100,0),
(@PATH,41,-984.4343,2282.687,6.486638,0,0,0,0,100,0),
(@PATH,42,-957.1495,2247.785,6.748508,0,0,0,0,100,0),
(@PATH,43,-961.3444,2217.514,9.387299,0,0,0,0,100,0),
(@PATH,44,-945.8377,2185.868,12.26309,0,0,0,0,100,0),
(@PATH,45,-922.1042,2170.104,12.60829,0,0,0,0,100,0),
(@PATH,46,-914.2065,2149.265,14.4707,0,0,0,0,100,0),
(@PATH,47,-915.6437,2115.709,20.89748,0,0,0,0,100,0),
(@PATH,48,-886.0889,2092.425,24.59444,0,0,0,0,100,0),
(@PATH,49,-886.038,2057.447,35.91393,0,0,0,0,100,0),
(@PATH,50,-915.6917,2025.381,58.45187,0,0,0,0,100,0),
(@PATH,51,-954.4206,2015.588,67.03322,0,0,0,0,100,0),
(@PATH,52,-1000.079,2017.703,67.06455,0,0,0,0,100,0),
(@PATH,53,-1033.498,2016.301,67.98228,0,0,0,0,100,0);
-- 0xF1304BE00060AF73 .go -1033.498 2016.301 67.98228

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69479;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-887.3162,`position_y`=2100.392,`position_z`=22.98137 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-887.3162,2100.392,22.98137,0,0,0,0,100,0),
(@PATH,2,-902.8832,2104.852,22.5635,0,0,0,0,100,0),
(@PATH,3,-915.3331,2120.114,20.053,0,0,0,0,100,0),
(@PATH,4,-914.8217,2141.304,15.65685,0,0,0,0,100,0),
(@PATH,5,-920.6898,2180.254,11.73329,0,0,0,0,100,0),
(@PATH,6,-928.6917,2208.044,9.395775,0,0,0,0,100,0),
(@PATH,7,-935.8201,2223.378,8.009735,0,0,0,0,100,0),
(@PATH,8,-957.2545,2229.223,7.933442,0,0,0,0,100,0),
(@PATH,9,-962.3887,2210.646,10.17673,0,0,0,0,100,0),
(@PATH,10,-949.9908,2203.8,9.920502,0,0,0,0,100,0),
(@PATH,11,-929.2674,2205.433,9.8395,0,0,0,0,100,0),
(@PATH,12,-897.6884,2189.902,10.51884,0,0,0,0,100,0),
(@PATH,13,-862.864,2165.974,11.53246,0,0,0,0,100,0),
(@PATH,14,-840.7776,2152.851,13.35741,0,0,0,0,100,0),
(@PATH,15,-837.7058,2133.558,15.67247,0,0,0,0,100,0),
(@PATH,16,-852.1836,2118.362,17.45734,0,0,0,0,100,0),
(@PATH,17,-871.5316,2098.868,21.64986,0,0,0,0,100,0);
-- 0xF1304BE0006135E2 .go -887.3162 2100.392 22.98137

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69481;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1072.546,`position_y`=2254.384,`position_z`=25.03121 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1072.546,2254.384,25.03121,0,0,0,0,100,0),
(@PATH,2,-1050.309,2248.466,22.70865,0,0,0,0,100,0),
(@PATH,3,-1016.866,2228.801,13.34218,0,0,0,0,100,0),
(@PATH,4,-975.5443,2209.247,10.59319,0,0,0,0,100,0),
(@PATH,5,-950.7357,2192.689,11.50015,0,0,0,0,100,0),
(@PATH,6,-915.4313,2157.962,13.552,0,0,0,0,100,0),
(@PATH,7,-912.6307,2132.925,17.52908,0,0,0,0,100,0),
(@PATH,8,-912.6307,2132.925,17.52908,0,0,0,0,100,0),
(@PATH,9,-915.4313,2157.962,13.552,0,0,0,0,100,0),
(@PATH,10,-950.7357,2192.689,11.50015,0,0,0,0,100,0),
(@PATH,11,-975.5443,2209.247,10.59319,0,0,0,0,100,0),
(@PATH,12,-1016.866,2228.801,13.34218,0,0,0,0,100,0),
(@PATH,13,-1050.309,2248.466,22.70865,0,0,0,0,100,0),
(@PATH,14,-1072.546,2254.384,25.03121,0,0,0,0,100,0);
-- 0xF1304BE00061378F .go -1072.546 2254.384 25.03121

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69480;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1000.677,`position_y`=2218.161,`position_z`=11.39956 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1000.677,2218.161,11.39956,0,0,0,0,100,0),
(@PATH,2,-1034.118,2233.885,16.91886,0,0,0,0,100,0),
(@PATH,3,-1000.677,2218.161,11.39956,0,0,0,0,100,0),
(@PATH,4,-960.3612,2199.009,11.10769,0,0,0,0,100,0),
(@PATH,5,-929.8221,2168.747,12.79615,0,0,0,0,100,0),
(@PATH,6,-917.9709,2134.846,17.4569,0,0,0,0,100,0),
(@PATH,7,-899.0653,2097.202,24.10116,0,0,0,0,100,0),
(@PATH,8,-867.7588,2092.518,23.16903,0,0,0,0,100,0),
(@PATH,9,-834.6699,2065.056,28.35329,0,0,0,0,100,0),
(@PATH,10,-834.6699,2065.056,28.35329,0,0,0,0,100,0),
(@PATH,11,-867.7588,2092.518,23.16903,0,0,0,0,100,0),
(@PATH,12,-899.0653,2097.202,24.10116,0,0,0,0,100,0),
(@PATH,13,-917.9709,2134.846,17.4569,0,0,0,0,100,0),
(@PATH,14,-929.8221,2168.747,12.79615,0,0,0,0,100,0),
(@PATH,15,-960.3612,2199.009,11.10769,0,0,0,0,100,0),
(@PATH,16,-1000.677,2218.161,11.39956,0,0,0,0,100,0),
(@PATH,17,-1034.118,2233.885,16.91886,0,0,0,0,100,0),
(@PATH,18,-1000.677,2218.161,11.39956,0,0,0,0,100,0);
-- 0xF1304BE000613CEA .go -1000.677 2218.161 11.39956

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69474;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1141.451,`position_y`=2039.274,`position_z`=67.06458 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1141.451,2039.274,67.06458,0,0,0,0,100,0),
(@PATH,2,-1098.165,2044.068,66.97787,0,0,0,0,100,0),
(@PATH,3,-1053.092,2025.227,67.56455,0,0,0,0,100,0),
(@PATH,4,-1011.46,2004.103,67.06455,0,0,0,0,100,0),
(@PATH,5,-983.9862,1982.55,68.81455,0,0,0,0,100,0),
(@PATH,6,-984.9029,1950.981,70.32558,0,0,0,0,100,0),
(@PATH,7,-974.4434,1917.587,77.03918,0,0,0,0,100,0),
(@PATH,8,-951.4631,1888.722,82.49074,0,0,0,0,100,0),
(@PATH,9,-918.9573,1886.185,78.15961,0,0,0,0,100,0),
(@PATH,10,-918.9573,1886.185,78.15961,0,0,0,0,100,0),
(@PATH,11,-951.4631,1888.722,82.49074,0,0,0,0,100,0),
(@PATH,12,-974.4434,1917.587,77.03918,0,0,0,0,100,0),
(@PATH,13,-984.9029,1950.981,70.32558,0,0,0,0,100,0),
(@PATH,14,-983.9862,1982.55,68.81455,0,0,0,0,100,0),
(@PATH,15,-1011.46,2004.103,67.06455,0,0,0,0,100,0),
(@PATH,16,-1053.092,2025.227,67.56455,0,0,0,0,100,0),
(@PATH,17,-1098.165,2044.068,66.97787,0,0,0,0,100,0),
(@PATH,18,-1141.451,2039.274,67.06458,0,0,0,0,100,0);
-- 0xF1304BE00061420D .go -1141.451 2039.274 67.06458

-- Pathing for Bleeding Hollow Tormentor Entry: 19424 'TDB FORMAT' 
SET @NPC := 69478;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-824.4816,`position_y`=1990.778,`position_z`=38.91302 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,9562,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-824.4816,1990.778,38.91302,0,0,0,0,100,0),
(@PATH,2,-800.973,2019.102,38.81275,0,0,0,0,100,0),
(@PATH,3,-801.4883,2043.102,41.42069,0,0,0,0,100,0),
(@PATH,4,-820.149,2057.47,35.70707,0,0,0,0,100,0),
(@PATH,5,-830.2311,2072.128,25.74135,0,0,0,0,100,0),
(@PATH,6,-842.6055,2101.628,19.20734,0,0,0,0,100,0),
(@PATH,7,-854.4006,2133.824,15.76549,0,0,0,0,100,0),
(@PATH,8,-854.3831,2150.491,13.76549,0,0,0,0,100,0),
(@PATH,9,-871.9949,2163.9,11.56941,0,0,0,0,100,0),
(@PATH,10,-900.2237,2167.077,11.69764,0,0,0,0,100,0),
(@PATH,11,-900.2237,2167.077,11.69764,0,0,0,0,100,0),
(@PATH,12,-871.9949,2163.9,11.56941,0,0,0,0,100,0),
(@PATH,13,-854.3831,2150.491,13.76549,0,0,0,0,100,0),
(@PATH,14,-854.4006,2133.824,15.76549,0,0,0,0,100,0),
(@PATH,15,-842.6055,2101.628,19.20734,0,0,0,0,100,0),
(@PATH,16,-830.2311,2072.128,25.74135,0,0,0,0,100,0),
(@PATH,17,-820.149,2057.47,35.70707,0,0,0,0,100,0),
(@PATH,18,-801.4883,2043.102,41.42069,0,0,0,0,100,0),
(@PATH,19,-800.973,2019.102,38.81275,0,0,0,0,100,0),
(@PATH,20,-824.4816,1990.778,38.91302,0,0,0,0,100,0);
-- 0xF1304BE0006192D2 .go -824.4816 1990.778 38.91302

-- Pathing for Worg Master Kruush Entry: 19442 'TDB FORMAT' 
SET @NPC := 69634;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-1057.877,`position_y`=1996.641,`position_z`=67.34181 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-1057.877,1996.641,67.34181,0,0,0,0,100,0),
(@PATH,2,-1050.188,2009.977,67.06455,0,0,0,0,100,0);
-- 0xF1304BF20060E90B .go -1057.877 1996.641 67.34181
--
UPDATE `smart_scripts` SET `action_param2` = 0 WHERE `entryorguid`=37007 AND `id`=1;
DELETE FROM `creature_formations` WHERE `leaderGUID`=38429;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES
(38429, 38429, 0, 0, 2),
(38429, 38430, 3, 270, 2);

-- Pathing for Mattie Alred Entry: 5668 'TDB FORMAT'
SET @NPC := 38429;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1717.818,`position_y`=303.1138,`position_z`=-61.47988 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1717.818,303.1138,-61.47988,0,0,0,0,100,0),
(@PATH,2,1724.056,285.5189,-62.18394,0,0,0,0,100,0),
(@PATH,3,1725.809,279.2398,-62.18219,0,0,0,0,100,0),
(@PATH,4,1728.313,268.6199,-62.17767,0,0,0,0,100,0),
(@PATH,5,1730.295,250.8002,-62.17767,0,0,0,0,100,0),
(@PATH,6,1716.658,240.3017,-62.17767,0,0,0,0,100,0),
(@PATH,7,1692.596,241.7838,-62.17767,0,0,0,0,100,0),
(@PATH,8,1672.504,242.9413,-62.17767,0,0,0,0,100,0),
(@PATH,9,1665.619,249.5088,-62.1778,0,0,0,0,100,0),
(@PATH,10,1663.849,264.2947,-62.17823,0,0,0,0,100,0),
(@PATH,11,1659.715,273.889,-62.17942,0,0,0,0,100,0),
(@PATH,12,1652.447,286.605,-62.18125,0,0,0,0,100,0),
(@PATH,13,1637.696,299.425,-62.17578,0,0,0,0,100,0),
(@PATH,14,1621.363,308.3512,-62.17768,0,0,0,0,100,0),
(@PATH,15,1605.388,311.2079,-62.17768,0,0,0,0,100,0),
(@PATH,16,1598.25,318.9116,-62.17767,0,0,0,0,100,0),
(@PATH,17,1598.482,334.9213,-62.17767,0,0,0,0,100,0),
(@PATH,18,1599.09,358.2072,-62.17767,0,0,0,0,100,0),
(@PATH,19,1598.418,367.1544,-62.22174,0,0,0,0,100,0),
(@PATH,20,1610.374,374.7628,-62.17767,0,0,0,0,100,0),
(@PATH,21,1627.031,371.8268,-62.17767,0,0,0,0,100,0),
(@PATH,22,1637.79,368.5305,-62.16847,0,0,0,0,100,0),
(@PATH,23,1655.578,358.9601,-60.74146,0,0,0,0,100,0),
(@PATH,24,1657.84,352.9977,-60.72892,0,0,0,0,100,0),
(@PATH,25,1654.79,342.4309,-62.17167,0,0,0,0,100,0),
(@PATH,26,1668.162,325.3488,-62.15568,0,0,0,0,100,0),
(@PATH,27,1680.751,314.6597,-62.15656,0,0,0,0,100,0),
(@PATH,28,1694.482,302.0437,-62.16363,0,0,0,0,100,0);
-- 0xF13016240000906A .go 1717.818 303.1138 -61.47988
--
SET @GUID  := 75088;
DELETE FROM `creature` WHERE id IN (33630,33639,33642,33645);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `VerifiedBuild`) VALUES
(@GUID+0, 33630, 530, 0, 0, 1, 1, 0, 1, -2091.979, 5634.983, 50.31123, 2.844887, 300, 0, 0, 2266, 6015, 0, 0, 0, 0, 0),
(@GUID+1, 33639, 530, 0, 0, 1, 1, 0, 1, -2093.764, 5632.878, 50.31123, 2.513274, 300, 0, 0, 3237, 0, 0, 0, 0, 0, 0),
(@GUID+2, 33642, 530, 0, 0, 1, 1, 0, 1, -2254.972, 5560.913, 67.10059, 5.951573, 300, 0, 0, 2835, 7196, 0, 0, 0, 0, 0),
(@GUID+3, 33645, 571, 0, 0, 1, 1, 0, 1, 8579.87, 749.8559, 547.376, 6.08289, 300, 0, 0, 10635, 0, 0, 0, 0, 0, 0);
--
SET @CGUID := 75092;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+7;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 29854, 571, 1, 1, 6712.09, -533.401, 1211.94, 1.69635, 0, 0, 0),
(@CGUID+1, 29854, 571, 1, 1, 6695.85, -487.759, 1195.42, 1.80238, 0, 0, 0),
(@CGUID+2, 29854, 571, 1, 1, 6675.19, -420.657, 1184.11, 3.36925, 0, 15, 1),
(@CGUID+3, 29854, 571, 1, 1, 6647.07, -477.868, 1167.51, 2.68202, 0, 0, 0),
(@CGUID+4, 29854, 571, 1, 1, 6706.95, -521.231, 1211.49, 5.17959, 0, 0, 0),
(@CGUID+5, 29854, 571, 1, 1, 6697.77, -462.455, 1178.17, 5.77257, 0, 0, 0),
(@CGUID+6, 29854, 571, 1, 1, 6671.19, -467.731, 1178.39, 6.27915, 0, 0, 0);

UPDATE `creature_template` SET `InhabitType`=4 WHERE `entry` IN (29854, 30013);

DELETE FROM `creature` WHERE `guid` IN (99014, 99015, 99017, 99172, 121713, 121358); -- vehicle accessory and wrong spawn

DELETE FROM `vehicle_template_accessory` WHERE `entry`= 30013;
INSERT INTO `vehicle_template_accessory` (`entry`,`accessory_entry`,`seat_id`,`minion`,`description`,`summontype`,`summontimer`) VALUES
(30013,29730,0,1,'Stormcrest Eagle',5,0);

UPDATE `creature` SET movementType=2 WHERE `guid` IN (101713, 101714, 101715, 101801);

DELETE FROM `creature_addon` WHERE `guid` IN (101713, 101714, 101715, 101801);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`,`auras`) VALUES
(101713, 1017130, 0, 0, 1, 0, ''),
(101714, 1017140, 0, 0, 1, 0, ''),
(101715, 1017150, 0, 0, 1, 0, ''),
(101801, 1018010, 0, 0, 1, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (1017130, 1017140, 1017150, 1018010);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(1017130, 1, 6580.963, -341.5958, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 2, 6595.587, -274.2542, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 3, 6603.651, -214.6846, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 4, 6598.268, -139.6636, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 5, 6583.247, -70.26400, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 6, 6517.861, -27.37788, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 7, 6334.042, -80.26796, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 8, 6302.791, -214.7384, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 9, 6306.531, -372.1047, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 10, 6347.108, -523.2972, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 11, 6469.087, -575.7284, 1025.59, 0, 0, 1, 0, 100, 0),
(1017130, 12, 6543.881, -476.6713, 1025.59, 0, 0, 1, 0, 100, 0),
(1017140, 1, 6558.544, -152.0257, 1054.933, 0, 0, 1, 0, 100, 0),
(1017140, 2, 6609.241, -127.7897, 1055.322, 0, 0, 1, 0, 100, 0),
(1017140, 3, 6701.458, -107.1807, 1059.877, 0, 0, 1, 0, 100, 0),
(1017140, 4, 6774.843, -197.2011, 1078.129, 0, 0, 1, 0, 100, 0),
(1017140, 5, 6777.308, -292.3615, 1095.376, 0, 0, 1, 0, 100, 0),
(1017140, 6, 6703.971, -329.4862, 1100.933, 0, 0, 1, 0, 100, 0),
(1017140, 7, 6606.578, -326.3456, 1091.265, 0, 0, 1, 0, 100, 0),
(1017140, 8, 6552.779, -289.719, 1077.712, 0, 0, 1, 0, 100, 0),
(1017140, 9, 6536.85, -189.0296, 1059.237, 0, 0, 1, 0, 100, 0),
(1017150, 1, 6630.098, -152.5961, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 2, 6663.148, -136.3936, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 3, 6705.553, -94.23096, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 4, 6728.896, 43.04465, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 5, 6628.838, 175.6433, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 6, 6520.246, 148.9764, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 7, 6386.172, -22.66618, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 8, 6253.463, -195.8139, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 9, 6330.91, -276.6109, 999.0965, 0, 0, 1, 0, 100, 0),
(1017150, 10, 6537.496, -198.9901, 999.0965, 0, 0, 1, 0, 100, 0),
(1018010, 1, 6725.225586, -25.534340, 999.721313, 0, 0, 1, 0, 100, 0),
(1018010, 2, 6638.638184, -52.154530, 991.158203, 0, 0, 1, 0, 100, 0),
(1018010, 3, 6567.925293, -153.043152, 1001.600220, 0, 0, 1, 0, 100, 0),
(1018010, 4, 6591.385742, -224.502579, 1003.976013, 0, 0, 1, 0, 100, 0),
(1018010, 5, 6695.518555, -252.929214, 1022.529175, 0, 0, 1, 0, 100, 0),
(1018010, 6, 6802.429199, -243.025558, 1022.408691, 0, 0, 1, 0, 100, 0),
(1018010, 7, 6798.217285, -161.789276, 1046.530518, 0, 0, 1, 0, 100, 0);
-- The Brewmaiden SAI
SET @ENTRY := 36021;

UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;

DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,22,0,100,0,101,0,0,0,11,48249,1,0,0,0,0,7,0,0,0,0,0,0,0,"The Brewmaiden - Received Emote 101 - Cast 'Brewfest Brew Toss'"),
(@ENTRY,0,1,2,54,0,100,0,0,0,0,0,75,68269,0,0,0,0,0,23,0,0,0,0,0,0,0,"The Brewmaiden - On Just Summoned - Add Aura 'The Brewmaiden's Blessing'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"The Brewmaiden - On Just Summoned - Run Script");
-- Actionlist SAI
SET @ENTRY := 3602100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,34000,34000,0,0,28,68269,0,0,0,0,0,23,0,0,0,0,0,0,0,"On Script - Remove Aura 'The Brewmaiden's Blessing'");
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE  `Id` IN(10995,10996,10997);
UPDATE `quest_template` SET `ExclusiveGroup`=10983 WHERE  `Id` IN(10983,10989);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN(19,20) AND `SourceEntry` IN(10995,10996,10997);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 10995, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Grulloc Has Two Skulls after Mog dorg the Wizened'),
(20, 0, 10995, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Grulloc Has Two Skulls after Mog dorg the Wizened'),
(19, 0, 10995, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Grulloc Has Two Skulls after Mog dorg the Wizened'),
(20, 0, 10995, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Grulloc Has Two Skulls after Mog dorg the Wizened'),
(19, 0, 10996, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Maggocs Treasure Chest after Mog dorg the Wizened'),
(20, 0, 10996, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Maggocs Treasure Chest after Mog dorg the Wizened'),
(19, 0, 10996, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Maggocs Treasure Chest after Mog dorg the Wizened'),
(20, 0, 10996, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Maggocs Treasure Chest after Mog dorg the Wizened'),
(19, 0, 10997, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Even Gronn Have Standards after Mog dorg the Wizened'),
(20, 0, 10997, 0, 0, 8, 0, 10989, 0, 0, 0, 0, 0, '', 'Even Gronn Have Standards after Mog dorg the Wizened'),
(19, 0, 10997, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Even Gronn Have Standards after Mog dorg the Wizened'),
(20, 0, 10997, 0, 1, 8, 0, 10983, 0, 0, 0, 0, 0, '', 'Even Gronn Have Standards after Mog dorg the Wizened');

