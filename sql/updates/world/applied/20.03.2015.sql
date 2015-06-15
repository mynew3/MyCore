SET @CGUID  := 76001;
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI' WHERE `entry`=177746;
UPDATE `gameobject` SET `position_x`=-2288.696777, `position_y`=1345.580078, `position_z`=66.123787 WHERE `guid`=99892;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (11560);
DELETE FROM `creature_template_addon` WHERE `entry`=11560;
INSERT INTO `creature_template_addon` (`entry`,`bytes2`,`auras`) VALUES 
(11560,1,17327);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (11560, 1156000, 177746, 17774600);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(177746, 1, 0, 0, 1, 0, 100, 1, 6000, 6000, 6000, 6000, 50, 177749, 180000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ghost Magnet - OOC no repeat - Summon gob'), -- A gob cannot summon a gob
(177746, 1, 1, 0, 1, 0, 100, 0, 6000, 6000, 6000, 6000, 45, 0, 1, 0, 0, 0, 0, 19, 11560, 70, 0, 0, 0, 0, 0, 'Ghost Magnet - ActionList - Set data 0'),
(11560, 0, 0, 1, 38, 0, 100, 1, 0, 1, 0, 0, 28, 34426, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - On dataset 0 1 - remove aura'),
(11560, 0, 1, 2, 61, 0, 100, 1, 0, 0, 0, 0, 80, 1156000, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - on link - Start script'),
(1156000, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - On script - Set run off'),
(1156000, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 20, 177746, 70, 0, 0, 0, 0, 0, 'Magrami Spectre - On script - move to pos'),
(1156000, 9, 2, 0, 0, 0, 100, 0, 7000, 7000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - On script - ATTACK'),
(11560, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 70000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - On Link - Despawn'),
(11560, 0, 2, 3, 25, 0, 100, 1, 0, 0, 0, 0, 11, 34426, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - on Reset - add aura'),
(11560, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 17327, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - on Reset - add aura'),
(11560, 0, 4, 0, 0, 0, 100, 1, 5000, 5000, 0, 0, 11, 18159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - on script - add aura'),
(11560, 0, 5, 0, 0, 0, 100, 0, 2000, 2000, 7000, 7000, 11, 12531, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Magrami Spectre - on script - add aura');

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+16;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 11560, 1, 1, 1,  -2254.859, 1330.685, 63.67144, 5.253441, 120, 0, 0),
(@CGUID+1, 11560, 1, 1, 1,  -2288.117, 1333.648, 63.67144, 5.427974, 120, 0, 0),
(@CGUID+2, 11560, 1, 1, 1,  -2317.772, 1378.803, 63.67144, 2.548181, 120, 0, 0),
(@CGUID+3, 11560, 1, 1, 1,  -2245.802, 1315.414, 63.67144, 3.176499, 120, 0, 0),
(@CGUID+4, 11560, 1, 1, 1,  -2276.162, 1328.752, 63.82001, 5.811946, 120, 0, 0),
(@CGUID+5, 11560, 1, 1, 1,  -2281.066, 1339.434, 63.67144, 2.426008, 120, 0, 0),
(@CGUID+6, 11560, 1, 1, 1,  -2265.949, 1334.62, 63.67144, 3.874631, 120, 0, 0),
(@CGUID+7, 11560, 1, 1, 1,  -2266.548, 1308.922, 64.06808, 2.09432, 120, 0, 0),
(@CGUID+8, 11560, 1, 1, 1,  -2275.962, 1315.779, 63.94889, 5.846853, 120, 0, 0),
(@CGUID+9, 11560, 1, 1, 1,  -2285.754, 1323.675, 63.68898, 5.707227, 120, 0, 0),
(@CGUID+10, 11560, 1, 1, 1,  -2311.181, 1387.165, 63.67143, 4.39823, 120, 0, 0),
(@CGUID+11, 11560, 1, 1, 1,  -2255.519, 1311.52, 63.72472, 5.969026, 120, 0, 0),
(@CGUID+12, 11560, 1, 1, 1,  -2292.626, 1380.353, 63.68015, 3.001966, 120, 0, 0),
(@CGUID+13, 11560, 1, 1, 1,  -2309.959, 1347.675, 63.67144, 1.216367, 120, 0, 0),
(@CGUID+14, 11560, 1, 1, 1,  -2295.897, 1361.538, 63.6894, 2.80998, 120, 0, 0),
(@CGUID+15, 11560, 1, 1, 1,  -2305.648, 1359.731, 63.69492, 4.485496, 120, 0, 0),
(@CGUID+16, 11560, 1, 1, 1,  -2256.498, 1321.57, 63.67144, 5.148721, 120, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id`=1285 WHERE  `entry`=8436;
UPDATE `smart_scripts` SET `event_param1`=1286 WHERE  `entryorguid`=8436 AND `source_type`=0 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_menu_id`=0 WHERE  `menu_id`=1286;
UPDATE `creature` SET `guid`=76001 WHERE  `guid`=214003;
UPDATE `creature` SET `guid`=76002 WHERE  `guid`=214004;
UPDATE `creature` SET `guid`=76003 WHERE  `guid`=214005;
UPDATE `creature` SET `guid`=76004 WHERE  `guid`=214006;
UPDATE `creature` SET `guid`=76005 WHERE  `guid`=214007;
UPDATE `creature` SET `guid`=76006 WHERE  `guid`=214008;
UPDATE `creature` SET `guid`=76007 WHERE  `guid`=214009;
UPDATE `creature` SET `guid`=76008 WHERE  `guid`=214010;
UPDATE `creature` SET `guid`=76009 WHERE  `guid`=214011;
UPDATE `creature` SET `guid`=76010 WHERE  `guid`=214012;
UPDATE `creature` SET `guid`=76011 WHERE  `guid`=214013;
UPDATE `creature` SET `guid`=76012 WHERE  `guid`=214014;
UPDATE `creature` SET `guid`=76013 WHERE  `guid`=214015;
UPDATE `creature` SET `guid`=76014 WHERE  `guid`=214016;
UPDATE `creature` SET `guid`=76015 WHERE  `guid`=214017;
UPDATE `creature` SET `guid`=76016 WHERE  `guid`=214018;
UPDATE `creature` SET `guid`=76017 WHERE  `guid`=214019;
SET @GUID:=14830; -- 6 free GO guid required (spell focus)
SET @SUMMON := 49991;
SET @GOLEM  := 24825;
SET @BENCH  := 186958;
SET @Relic := 24824;
SET @Triggger :=24845;
SET @IronDwarf :=24846;
SET @LOKEN := 24847;
SET @Ouvrier:= 23672;
SET @Maitre:=23675;
SET @Garde:=23673;
SET @IRONGolem:=24271;
SET @Earth:=24340; 
SET @A1A2:=24826;
SET @B1B2:=24827;
SET @C1C2:=24828;
SET @D1:=24831;
SET @D2:=24829;
SET @D3:=24832;

DELETE FROM `spell_target_position` WHERE `id` in (49992); 
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(49992, 571, 478.951782, -5941.529297, 308.749969, 0.419872);

UPDATE `creature_template` SET `spell1`=44608, `spell2`=44610, `spell3`=44609,`AIName`='SmartAI', `InhabitType`=5 WHERE `entry`=@GOLEM;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@LOKEN, @IronDwarf, @Triggger, @Relic, @Ouvrier, @Maitre, @Garde, @IRONGolem, @Earth, @A1A2, @B1B2, @C1C2, @D1, @D2, @D3);
UPDATE `creature_template` SET `faction`= 1954 WHERE `entry`=@LOKEN;
UPDATE `creature_template` SET `flags_extra`= 0 WHERE `entry`=@Triggger;

DELETE FROM `creature` WHERE `id` IN (24846, 24847);
DELETE FROM `creature_addon` WHERE `guid` =97731;
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`= @Triggger;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GOLEM AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Relic AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@BENCH AND `source_type`=1 AND `id` IN (6,7);
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Triggger AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Triggger*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IronDwarf AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IronDwarf*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@LOKEN AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@LOKEN*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Garde AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Garde*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Garde*100+1 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Ouvrier AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Ouvrier*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Ouvrier*100+1 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Earth AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Maitre AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Maitre*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@Maitre*100+1 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IRONGolem AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IRONGolem*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@IRONGolem*100+1 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@A1A2*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@B1B2*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@C1C2*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@D1*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@D2*100 AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@D3*100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@BENCH,1,6,7,62,0,100,0,9024,3,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Work Bench - Gossip select - Close gossip'),
(@BENCH,1,7,0,61,0,100,0,0,0,0,0,85,@SUMMON,2,0,0,0,0,7,0,0,0,0,0,0,0,'Work Bench - Gossip select - Summon Iron Rune Construct'),
(@GOLEM,0,0,0,54,0,100,0,0,0,0,0,75,44643,0,0,0,0,0,23,0,0,0,0,0,0,0,'Iron Rune Construct - Just Summoned - Add aura to owner'),
(@GOLEM,0,1,0,28,0,100,0,0,0,0,0,28,44643,0,0,0,0,0,23,0,0,0,0,0,0,0,'Iron Rune Construct - Passenger removed - remove aura from owner'),
(@Relic,0,0,0,8,0,100,0,44610,0,0,0,41,5000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Relict - SpellHit - Despawn'),
(@Triggger,0,0,0,10,0,100,0,1,20,180000,180000,80,@Triggger*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Triggger - LOS - Action list'),
(@Triggger*100,9,0,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,306.098907, -5706.150391, 102.435051, 4.96977,'Triggger - Action list - Summon'),    
(@Triggger*100,9,1,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,311.025482, -5702.801270, 101.934959, 5.187225,'Triggger - Action list - Summon'),
(@Triggger*100,9,2,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,309.754456, -5703.156250, 102.070854, 5.187225,'Triggger - Action list - Summon'),
(@Triggger*100,9,3,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,308.222504, -5703.797363, 102.231758, 5.187225,'Triggger - Action list - Summon'),
(@Triggger*100,9,4,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,307.043610, -5704.315430, 102.356087, 5.187225,'Triggger - Action list - Summon'),  
(@Triggger*100,9,5,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,304.169464, -5706.838379, 102.696602, 5.187225,'Triggger - Action list - Summon'),
(@Triggger*100,9,6,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,303.129547, -5707.277344, 102.978165, 5.187225,'Triggger - Action list - Summon'),  
(@Triggger*100,9,7,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,297.246,-5726.82,96.2681,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,8,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,292.82,-5726.04,96.5843,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,9,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,292.562,-5728.57,96.5857,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,10,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,292.15,-5727.42,96.5874,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,11,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,294.578,-5730.09,96.2958,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,12,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,296.196,-5730.17,96.0082,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,13,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,297.603,-5730.79,95.6955,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,14,0,0,0,100,0,0,0,0,0,12,@IronDwarf,5,0,0,0,0,8,0,0,0,299.397,-5729.56,95.7274,0.347607,'Triggger - Action list - Summon'),
(@Triggger*100,9,15,0,0,0,100,0,0,0,0,0,12,@LOKEN,5,0,0,0,0,8,0,0,0,315.101,-5723.06,96.2541,3.05433,'Triggger - Action list - Summon'),
(@Triggger*100,9,16,0,0,0,100,0,70000,70000,0,0,41,0,0,0,0,0,0,11,@IronDwarf,40,0,0,0,0,0,'Triggger - Action List - Despawn'),
(@Triggger,0,1,0,25,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Triggger - On reset - set Invisible'),
(@IronDwarf,0,0,0,54,0,100,0,0,0,0,0,80,@IronDwarf*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'IronDwarf - Just Summoned - Action List'),
(@IronDwarf*100,9,0,0,0,0,100,0,0,0,0,0,59,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'IronDwarf - Action List - Set run off'),
(@IronDwarf*100,9,1,0,0,0,100,0,0,0,0,0,46,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'IronDwarf - Action List - Move forward'),
(@IronDwarf*100,9,2,0,0,0,100,0,4000,4000,0,0,11,68442,0,0,0,0,0,1,0,0,0,0,0,0,0,'IronDwarf - Action List - Cast Kneels'),
(@LOKEN,0,0,0,54,0,100,0,0,0,0,0,80,@LOKEN*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Just Summoned - Action List'),
(@LOKEN*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,1,0,0,0,100,0,6000,6000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,2,0,0,0,100,0,6000,6000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,3,0,0,0,100,0,8000,8000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,4,0,0,0,100,0,9000,9000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,5,0,0,0,100,0,9000,9000,0,0,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,6,0,0,0,100,0,7000,7000,0,0,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Talk'),
(@LOKEN*100,9,7,0,0,0,100,0,0,0,0,0,11,44682,0,0,0,0,0,21,30,0,0,0,0,0,0,'LOKEN - Action List - Cast Credit'),
(@LOKEN*100,9,8,0,0,0,100,0,2000,2000,0,0,41,0,0,0,0,0,0,11,@IronDwarf,40,0,0,0,0,0,'LOKEN - Action List - Despawn Dwarfs'),
(@LOKEN*100,9,9,0,0,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - Action List - Despawn'),
(@IronDwarf,0,1,0,4,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'IronDwarf - On aggro - despawn'),
(@LOKEN,0,1,0,4,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - On aggro - despawn'),
(@Garde,0,0,0,10,0,20,0,1,9,60000,60000,80,@Garde*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - LOS - Action list'),
(@Garde*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - TALK'),
(@Garde*100,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - Set Event phase1'),
(@Garde*100,9,2,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - Root'),
(@Garde*100,9,3,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Garde - Action list - Set Orientation'),
(@Garde*100,9,4,0,0,0,100,0,10000,10000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - remove root'),
(@Garde*100,9,5,0,0,1,100,0,0,0,0,0,28,44643,0,0,0,0,0,21,50,0,0,0,0,0,0,'Garde - Action list - remove Aura'),
(@Garde*100,9,6,0,0,1,100,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Garde - Action list - Talk'),
(@Garde,0,1,0,8,1,100,0,44609,0,0,0,80,@Garde*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - spell hit - action list'),
(@Garde*100+1,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - Set Event phase 0'),
(@Garde*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Garde - Action list - TALK'),
(@Garde*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Garde - Action list - TALK'),
(@Garde,0,2,0,0,0,100,0,5000,5000,30000,30000,11,42580,0,0,0,0,0,2,0,0,0,0,0,0,0,'Garde - IC - Cast'),
(@Garde,0,3,0,4,0,100,0,0,0,0,0,11,49758,0,0,0,0,0,2,0,0,0,0,0,0,0,'Garde - On aggro - Cast'),
(@Ouvrier,0,0,0,10,0,20,0,1,9,60000,60000,80,@Ouvrier*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - LOS - Action list'),
(@Ouvrier*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - TALK'),
(@Ouvrier*100,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - Set Event phase1'),
(@Ouvrier*100,9,2,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - Root'),
(@Ouvrier*100,9,3,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Ouvrier - Action list - Set Orientation'),
(@Ouvrier*100,9,4,0,0,0,100,0,10000,10000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - remove root'),
(@Ouvrier*100,9,5,0,0,1,100,0,0,0,0,0,28,44643,0,0,0,0,0,21,50,0,0,0,0,0,0,'Ouvrier - Action list - remove Aura'),
(@Ouvrier*100,9,6,0,0,1,100,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ouvrier - Action list - Talk'),
(@Ouvrier,0,1,0,8,1,100,0,44609,0,0,0,80,@Ouvrier*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - spell hit - action list'),
(@Ouvrier*100+1,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - Set Event phase 0'),
(@Ouvrier*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Ouvrier - Action list - TALK'),
(@Ouvrier*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Ouvrier - Action list - TALK'),
(@Ouvrier,0,2,0,0,0,100,0,5000,5000,5000,8000,11,49749,0,0,0,0,0,2,0,0,0,0,0,0,0,'Ouvrier - IC - Cast'),
(@Maitre,0,0,0,10,0,20,0,1,9,60000,60000,80,@Maitre*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - LOS - Action list'),
(@Maitre*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - TALK'),
(@Maitre*100,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - Set Event phase1'),
(@Maitre*100,9,2,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - Root'),
(@Maitre*100,9,3,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Maitre - Action list - Set Orientation'),
(@Maitre*100,9,4,0,0,0,100,0,10000,10000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - remove root'),
(@Maitre*100,9,5,0,0,1,100,0,0,0,0,0,28,44643,0,0,0,0,0,21,50,0,0,0,0,0,0,'Maitre - Action list - remove Aura'),
(@Maitre*100,9,6,0,0,1,100,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'Maitre - Action list - Talk'),
(@Maitre,0,1,0,8,1,100,0,44609,0,0,0,80,@Maitre*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - spell hit - action list'),
(@Maitre*100+1,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - Set Event phase 0'),
(@Maitre*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'Maitre - Action list - TALK'),
(@Maitre*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'Maitre - Action list - TALK'),
(@Maitre,0,2,0,0,0,100,0,5000,5000,7000,10000,11,49753,0,0,0,0,0,2,0,0,0,0,0,0,0,'Garde - IC - Cast'),
(@IRONGolem,0,0,0,10,0,20,0,1,9,60000,60000,80,@IRONGolem*100,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - LOS - Action list'),
(@IRONGolem*100,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - TALK'),
(@IRONGolem*100,9,1,0,0,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - Set Event phase1'),
(@IRONGolem*100,9,2,0,0,0,100,0,0,0,0,0,103,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - Root'),
(@IRONGolem*100,9,3,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'IRONGolem - Action list - Set Orientation'),
(@IRONGolem*100,9,4,0,0,0,100,0,10000,10000,0,0,103,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - remove root'),
(@IRONGolem*100,9,5,0,0,1,100,0,0,0,0,0,28,44643,0,0,0,0,0,21,50,0,0,0,0,0,0,'IRONGolem - Action list - remove Aura'),
(@IRONGolem*100,9,6,0,0,1,100,0,0,0,0,0,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,'IRONGolem - Action list - talk'),
(@IRONGolem,0,1,0,8,1,100,0,44609,0,0,0,80,@IRONGolem*100+1,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - spell hit - action list'),
(@IRONGolem*100+1,9,0,0,0,0,100,0,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - Set Event phase 0'),
(@IRONGolem*100+1,9,1,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,19,@GOLEM,20,0,0,0,0,0,'IRONGolem - Action list - TALK'),
(@IRONGolem*100+1,9,2,0,0,0,100,0,5000,5000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - Action list - TALK'),
(@IRONGolem,0,2,0,0,0,100,0,5000,5000,7000,10000,11,49729,0,0,0,0,0,2,0,0,0,0,0,0,0,'IRONGolem - IC - Cast'),
(@IRONGolem,0,3,0,1,0,100,0,50000,60000,60000,90000,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'IRONGolem - ooc - talk'),
(@Earth,0,0,0,0,0,100,0,2000,5000,6000,8000,11,49742,0,0,0,0,0,2,0,0,0,0,0,0,0,'IRONGolem - IC - Cast'),
(@GOLEM,0,2,0,8,0,100,0,44626,0,5000,5000,80,@A1A2*100,0,0,0,0,0,19,@A1A2,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@A1A2*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,57776,186953,0,0,0,0,0,'A1A2 - Action list - Activate Gobject'),
(@A1A2*100,9,1,0,0,0,100,0,0,0,0,0,45,0,1,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'A1A2 - Action list - SetData'),
(@GOLEM,0,3,0,8,0,100,0,44626,0,5000,5000,80,@B1B2*100,0,0,0,0,0,19,@B1B2,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@B1B2*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,57915,186960,0,0,0,0,0,'B1B2 - Action list - Activate Gobject'),
(@B1B2*100,9,1,0,0,0,100,0,0,0,0,0,45,0,2,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'B1B2 - Action list - SetData'),
(@GOLEM,0,4,0,8,0,100,0,44626,0,5000,5000,80,@C1C2*100,0,0,0,0,0,19,@C1C2,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@C1C2*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,57963,186961,0,0,0,0,0,'C1C2 - Action list - Activate Gobject'),
(@C1C2*100,9,1,0,0,0,100,0,0,0,0,0,45,0,3,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'C1C2 - Action list - SetData'),
(@GOLEM,0,5,0,8,0,100,0,44626,0,5000,5000,80,@D1*100,0,0,0,0,0,19,@D1,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@D1*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,57972,186962,0,0,0,0,0,'D1 - Action list - Activate Gobject'),
(@D1*100,9,1,0,0,0,100,0,0,0,0,0,45,0,4,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'D1 - Action list - SetData'),
(@GOLEM,0,6,0,8,0,100,0,44626,0,5000,5000,80,@D2*100,0,0,0,0,0,19,@D2,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@D2*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,57988,186963,0,0,0,0,0,'D2 - Action list - Activate Gobject'),
(@D2*100,9,1,0,0,0,100,0,0,0,0,0,45,0,5,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'D2 - Action list - SetData'),
(@GOLEM,0,7,0,8,0,100,0,44626,0,5000,5000,80,@D3*100,0,0,0,0,0,19,@D3,1,0,0,0,0,0,'Iron Rune Construct - On spellhit  - Action List'),
(@D3*100,9,0,0,0,0,100,0,0,0,0,0,9,0,0,0,0,0,0,14,66097,186964,0,0,0,0,0,'D3 - Action list - Activate Gobject'),
(@D3*100,9,1,0,0,0,100,0,0,0,0,0,45,0,6,0,0,0,0,19,@GOLEM,10,0,0,0,0,0,'D3 - Action list - SetData'),
(@GOLEM,0,8,0,38,0,100,0,0,1,0,0,53,1,@A1A2,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,9,0,38,0,100,0,0,2,0,0,53,1,@B1B2,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,10,0,38,0,100,0,0,3,0,0,53,1,@C1C2,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,11,0,38,0,100,0,0,4,0,0,53,1,@D1,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,12,0,38,0,100,0,0,5,0,0,53,1,@D2,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,13,0,38,0,100,0,0,6,0,0,53,1,@D3,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On data set - Start waypoint'),
(@GOLEM,0,14,0,58,0,100,0,0,0,0,0,28,44626,0,0,0,0,0,1,0,0,0,0,0,0,0,'Iron Rune Construct - On waypoint end - Remove aura');

DELETE FROM `waypoints` WHERE `entry` IN (@C1C2, @B1B2, @A1A2, @D1, @D2, @D3);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@C1C2,1, 250.667023, -5770.241699, 252.249847,'Iron Rune Construct'),
(@C1C2,2, 158.802368, -5823.064941, 7.080285,'Iron Rune Construct'),
(@B1B2,1, 268.167053, -5814.819824, 282.507080,'Iron Rune Construct'),
(@B1B2,2, 255.435913, -5891.186035, 83.068146,'Iron Rune Construct'),
(@A1A2,1, 221.699432, -5736.851074, 289.626099,'Iron Rune Construct'),
(@A1A2,2, 157.139877, -5712.004883, 189.551346,'Iron Rune Construct'),
(@D1,1, 212.711884, -5808.783691, 297.261902,'Iron Rune Construct'),
(@D1,2, 276.179016, -5755.332031, 268.456543,'Iron Rune Construct'),
(@D2,1, 228.848938, -5740.563477, 283.448700,'Iron Rune Construct'),
(@D2,2, 278.266785, -5758.165039, 268.454834,'Iron Rune Construct'),
(@D3,1, 266.918884, -5837.802246, 304.154144,'Iron Rune Construct'),
(@D3,2, 280.913208, -5761.616699, 268.456696,'Iron Rune Construct');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@Triggger;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@Triggger,0,31,3,24825,0,0,'','event require npc 24825');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@IRONGolem;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@IRONGolem,0,31,3,24825,0,0,'','event require npc 24825');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@Garde;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@Garde,0,31,3,24825,0,0,'','event require npc 24825');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@Maitre;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@Maitre,0,31,3,24825,0,0,'','event require npc 24825');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@Ouvrier;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@Ouvrier,0,31,3,24825,0,0,'','event require npc 24825');

DELETE FROM `creature_text` WHERE `entry`IN (@LOKEN, @GOLEM, @Garde, @Ouvrier, @Maitre, @IRONGolem); 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`, `BroadcastTextID`) VALUES
(@LOKEN,0,0,"The sound of thunder roars throughout the cavern.",41,9,100,0,0,0,'LOKEN', 23927),
(@LOKEN,1,0,"Come, minions! Your master calls!",14,9,100,0,0,0,'LOKEN', 23922),
(@LOKEN,2,0,"The work of your brothers in the Storm Peaks has reached a frenzied pace. Soon, Father will be freed.",14,9,100,0,0,0,'LOKEN', 23923),
(@LOKEN,3,0,"Your brothers to the north have subjugated the stone behemoths and set them on the path to Ulduar. Soon, the remaining defenses of the Pantheon will be neutralized.",14,9,100,0,0,0,'LOKEN', 23924),
(@LOKEN,4,0,"The three fissures opened by the mortals of this region must be silenced. The earth hears and sees what we do and will continue to interfere with our efforts if the way is not closed.",14,9,100,0,0,0,'LOKEN', 23925),
(@LOKEN,5,0,"Bury this place! Your master demands it!",14,9,100,0,0,0,'LOKEN', 23926),
(@LOKEN,6,0,"The sound of thunder dissipates.",41,9,100,0,0,0,'LOKEN', 23928),
(@GOLEM,0,0,"Alert! Alert! Construct senses that enemies have breeched our defenses. Increase pace.",12,9,100,0,0,0,'GOLEM', 23895),
(@GOLEM,0,1,"Construct class carrier reporting for duty. Primary function: Overseeing.",12,9,100,0,0,0,'GOLEM', 23896),
(@GOLEM,0,2,"There is nothing to see here. Proceed with your mandated duties.",12,9,100,0,0,0,'GOLEM', 23897),
(@GOLEM,0,3,"To interfere with construct's function results in termination. Move along.",12,9,100,0,0,0,'GOLEM', 23899),
(@GOLEM,0,4,"Construct must not be questioned by iron dwarf servant. Commence deconstruction.",12,9,100,0,0,0,'GOLEM', 23900),
(@GOLEM,0,5,"Construct is not authorized to communicate with lesser beings. Being must double their efforts.",12,9,100,0,0,0,'GOLEM', 23901),
(@GOLEM,0,6,"Did you lose your wallet? Construct has found wallet with overabundance of currency.",12,9,100,0,0,0,'GOLEM', 23902),
(@Garde,0,0,"Halt! Identify yourself immediately!",12,9,100,0,0,0,'Garde', 23903),
(@Garde,0,1,"This section is off-limits!",12,9,100,0,0,0,'Garde', 23904),
(@Garde,0,2,"I've never seen one of you around here.",12,9,100,0,0,0,'Garde', 23905),
(@Garde,0,3,"Hold it! Stop!",12,9,100,0,0,0,'Garde', 23906),
(@Garde,0,4,"Stop!! Stop!!! Scrap metal moves itself now?",12,9,100,0,0,0,'Garde', 23907),
(@Garde,1,2,"Right... my bad. Now where was I?",12,9,100,0,0,0,'Garde', 23910),
(@Garde,1,3,"All hail the great creator!",12,9,100,0,0,0,'Garde', 23911),
(@Garde,1,4,"You're right, of course. Carry on.",12,9,100,0,0,0,'Garde', 23912),
(@Garde,1,5,"Forgive my insolence!",12,9,100,0,0,0,'Garde', 23913),
(@Garde,1,6,"We will double our efforts!",12,9,100,0,0,0,'Garde', 23915),
(@Garde,2,0,"Destroy earthen infestation.",12,9,100,0,0,0,'Garde', 23921),
(@Garde,2,1,"Wrong answer!",12,9,100,0,0,0,'Garde', 23908),
(@Ouvrier,0,0,"Halt! Identify yourself immediately!",12,9,100,0,0,0,'Garde', 23903),
(@Ouvrier,0,1,"This section is off-limits!",12,9,100,0,0,0,'Garde', 23904),
(@Ouvrier,0,2,"I've never seen one of you around here.",12,9,100,0,0,0,'Garde', 23905),
(@Ouvrier,0,3,"Hold it! Stop!",12,9,100,0,0,0,'Garde', 23906),
(@Ouvrier,0,4,"Stop!! Stop!!! Scrap metal moves itself now?",12,9,100,0,0,0,'Garde', 23907),
(@Ouvrier,1,2,"Right... my bad. Now where was I?",12,9,100,0,0,0,'Garde', 23910),
(@Ouvrier,1,3,"All hail the great creator!",12,9,100,0,0,0,'Garde', 23911),
(@Ouvrier,1,4,"You're right, of course. Carry on.",12,9,100,0,0,0,'Garde', 23912),
(@Ouvrier,1,5,"Forgive my insolence!",12,9,100,0,0,0,'Garde', 23913),
(@Ouvrier,1,6,"We will double our efforts!",12,9,100,0,0,0,'Garde', 23915),
(@Ouvrier,2,0,"Destroy earthen infestation.",12,9,100,0,0,0,'Garde', 23921),
(@Ouvrier,2,1,"Wrong answer!",12,9,100,0,0,0,'Garde', 23908),
(@Maitre,0,0,"Halt! Identify yourself immediately!",12,9,100,0,0,0,'Garde', 23903),
(@Maitre,0,1,"This section is off-limits!",12,9,100,0,0,0,'Garde', 23904),
(@Maitre,0,2,"I've never seen one of you around here.",12,9,100,0,0,0,'Garde', 23905),
(@Maitre,0,3,"Hold it! Stop!",12,9,100,0,0,0,'Garde', 23906),
(@Maitre,0,4,"Stop!! Stop!!! Scrap metal moves itself now?",12,9,100,0,0,0,'Garde', 23907),
(@Maitre,1,2,"Right... my bad. Now where was I?",12,9,100,0,0,0,'Garde', 23910),
(@Maitre,1,3,"All hail the great creator!",12,9,100,0,0,0,'Garde', 23911),
(@Maitre,1,4,"You're right, of course. Carry on.",12,9,100,0,0,0,'Garde', 23912),
(@Maitre,1,5,"Forgive my insolence!",12,9,100,0,0,0,'Garde', 23913),
(@Maitre,1,6,"We will double our efforts!",12,9,100,0,0,0,'Garde', 23915),
(@Maitre,2,0,"Destroy earthen infestation.",12,9,100,0,0,0,'Garde', 23921),
(@Maitre,2,1,"Wrong answer!",12,9,100,0,0,0,'Garde', 23908),
(@IRONGolem,0,0,"Halt! Identify yourself immediately!",12,9,100,0,0,0,'Garde', 23903),
(@IRONGolem,0,1,"This section is off-limits!",12,9,100,0,0,0,'Garde', 23904),
(@IRONGolem,0,2,"I've never seen one of you around here.",12,9,100,0,0,0,'Garde', 23905),
(@IRONGolem,0,3,"Hold it! Stop!",12,9,100,0,0,0,'Garde', 23906),
(@IRONGolem,0,4,"Stop!! Stop!!! Scrap metal moves itself now?",12,9,100,0,0,0,'Garde', 23907),
(@IRONGolem,1,2,"Right... my bad. Now where was I?",12,9,100,0,0,0,'Garde', 23910),
(@IRONGolem,1,3,"All hail the great creator!",12,9,100,0,0,0,'Garde', 23911),
(@IRONGolem,1,4,"You're right, of course. Carry on.",12,9,100,0,0,0,'Garde', 23912),
(@IRONGolem,1,5,"Forgive my insolence!",12,9,100,0,0,0,'Garde', 23913),
(@IRONGolem,1,6,"We will double our efforts!",12,9,100,0,0,0,'Garde', 23915),
(@IRONGolem,2,0,"Destroy earthen infestation.",12,9,100,0,0,0,'Garde', 23921),
(@IRONGolem,2,1,"Wrong answer!",12,9,100,0,0,0,'Garde', 23908),
(@IRONGolem,3,0,"Continue deconstruction.",12,9,100,0,0,0,'Garde', 23919),
(@IRONGolem,3,1,"Do not loiter.",12,9,100,0,0,0,'Garde', 23918),
(@IRONGolem,3,2,"Work must continue. Double your efforts.",12,9,100,0,0,0,'Garde', 23916),
(@IRONGolem,3,3,"Brontes sees all.",12,9,100,0,0,0,'Garde', 23917),
(@IRONGolem,3,4,"Reinforcements en route. Function must be unabated.",12,9,100,0,0,0,'Garde', 23920),
(@IRONGolem,3,5,"Do you bring word from the creator?",12,9,100,0,0,0,'Garde', 23914),
(@IRONGolem,3,6,"All hail the great creator.",12,9,100,0,0,0,'Garde', 23898);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=44609;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 44609, 0, 31, 3, 24271, 0, 0, '', 'Bluff target'),
(13, 1, 44609, 1, 31, 3, 23673, 0, 0, '', 'Bluff target'),
(13, 1, 44609, 2, 31, 3, 23672, 0, 0, '', 'Bluff target'),
(13, 1, 44609, 3, 31, 3, 23675, 0, 0, '', 'Bluff target');

SET @ID := 9024;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=@ID AND `SourceEntry`=3;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,@ID,3,0,9,11495,0,0,0,'','Show gossip option if player has quest The Delicate Sound of Thunder'),
(15,@ID,3,1,9,11494,0,0,0,'','Show gossip option if player has quest Lightning Infused Relics');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=44610;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 44610, 0, 31, 3, 24824, 0, 0, '', 'Collect Data target');

DELETE FROM `gameobject` WHERE `guid` in (@GUID+0, @GUID+1, @GUID+2, @GUID+3, @GUID+4, @GUID+5);
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GUID+0,186959,571,1,1,276.169006, -5755.250000, 268.455994,0,0,0,0,1,120,255,1),
(@GUID+1,186959,571,1,1,278.528992, -5758.350098, 268.455994,0,0,0,0,1,120,255,1),
(@GUID+2,186959,571,1,1,280.851990, -5761.399902, 268.455994,0,0,0,0,1,120,255,1),
(@GUID+3,186959,571,1,1,158.707001, -5823.319824, 7.006820,0,0,0,0,1,120,255,1),
(@GUID+4,186959,571,1,1,157.201996, -5712.160156, 189.315002,0,0,0,0,1,120,255,1),
(@GUID+5,186959,571,1,1,255.533997, -5891.359863, 82.992897,0,0,0,0,1,120,255,1);

UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id` IN (24828, 24829, 24831, 24832, 24826, 24827);

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 44608;
INSERT INTO `spell_linked_spell` VALUES (44608, 44626, 0, 'Rocket Jump');
-- scriptsupport for questaccept of [Q] Eranikus, Tyrant of the Dream
-- Malfurion Stormrage SAI
SET @ENTRY := 15362;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,83,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Malfurion Stormrage - On Just Summoned - Remove Npc Flag Questgiver"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Malfurion Stormrage - On Just Summoned - Run Script");

-- Actionlist SAI
SET @ENTRY := 1536200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,1500,1500,0,0,5,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 2"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 1"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,1,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 2"),
(@ENTRY,9,4,0,0,0,100,0,2000,2000,0,0,1,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 3"),
(@ENTRY,9,5,0,0,0,100,0,2000,2000,0,0,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 4"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,82,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Add Npc Flag Questgiver");

DELETE FROM `creature_text` WHERE `entry`=15362;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(15362, 0, 0, 'The walls of the chamber tremble. Something is happening...', 16, 0, 100, 0, 0, 0, 11191, 0, 'Malfurion Stormrage'),
(15362, 1, 0, 'Be steadfast, champion. I know why it is that you are here and I know what it is that you seek. Eranikus will not give up the shard freely. He has been twisted... twisted by the same force that you seek to destroy.', 12, 0, 100, 0, 0, 0, 11193, 0, 'Malfurion Stormrage'),
(15362, 2, 0, 'Are you really surprised? Is it hard to believe that the power of an Old God could reach even inside the Dream? It is true - Eranikus, Tyrant of the Dream, wages a battle against us all. The Nightmare follows in his wake of destruction.', 12, 0, 100, 0, 0, 0, 11194, 0, 'Malfurion Stormrage'),
(15362, 3, 0, 'Understand this, Eranikus wants nothing more than to be brought to Azeroth from the Dream. Once he is out, he will stop at nothing to destroy my physical manifestation. This, however, is the only way in which you could recover the scepter shard.', 12, 0, 100, 0, 0, 0, 11195, 0, 'Malfurion Stormrage'),
(15362, 4, 0, 'You will bring him back into this world, champion.', 12, 0, 100, 0, 0, 0, 11196, 0, 'Malfurion Stormrage');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=15362;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 15362, 0, 0, 23, 0, 1477, 0, 0, 0, 0, 0, '', 'Malfurion Stormrage - Only run SAI in the Sunken Temple');
-- 
-- William Pestle SAI
SET @ENTRY := 253;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,112,0,0,0,80,@ENTRY*100+00,0,2,0,0,0,1,0,0,0,0,0,0,0,"William Pestle - On Quest 'Collecting Kelp' Finished - Run Script");

-- Actionlist SAI
SET @ENTRY := 25300;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"William Pestle - On Script - Say Line 0"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,1.45219,"William Pestle - On Script - Set Orientation 1,45219"),
(@ENTRY,9,2,0,0,0,100,0,1000,1000,0,0,5,69,0,0,0,0,0,1,0,0,0,0,0,0,0,"William Pestle - On Script - Play Emote 69"),
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,66,0,0,0,0,0,0,21,10,0,0,0,0,0,0,"William Pestle - On Script - Set Orientation Closest Player"),
(@ENTRY,9,4,0,0,0,100,0,1000,1000,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"William Pestle - On Script - Say Line 1");

-- Maybell Maclure SAI
SET @ENTRY := 251;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,114,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Maybell Maclure - On Quest 'The Escape' Finished - Run Script");

-- Actionlist SAI
SET @ENTRY := 25100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,5.39307,"On Script - Set Orientation 5,39307"),
(@ENTRY,9,1,0,0,0,100,0,2000,2000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Say Line 0"),
(@ENTRY,9,2,0,0,0,100,0,2000,2000,0,0,5,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Play Emote 7"),
(@ENTRY,9,3,0,0,0,100,0,4000,4000,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn Instant");

DELETE FROM `creature_text` WHERE `entry`=251;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(251, 0, 0, 'Here goes nothing...', 12, 0, 100, 0, 0, 0, 1862, 0, 'Maybell Maclure');
-- 
-- Tortured Skeleton SAI
SET @ENTRY := 18797;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,91,7,0,0,0,0,0,1,0,0,0,0,0,0,0,"Tortured Skeleton - On Aggro - Remove Flag Standstate Dead");
-- 
-- Senetil Selarin spawn after completition of quest=995 or quest=994
UPDATE `creature_template` SET `speed_walk`=1 WHERE  `entry`=3694;
UPDATE `quest_template` SET `PrevQuestId`=0 WHERE `Id`=990;
-- Terenthis SAI
SET @ENTRY := 3693;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,20,0,100,0,995,0,0,0,12,3694,6,180000,0,0,0,8,0,0,0,6339.14,341.764,24.3387,0.498114,"Terenthis - On Quest 'Escape Through Stealth' Finished - Summon Creature 'Sentinel Selarin'"),
(@ENTRY,0,1,0,20,0,100,0,994,0,0,0,12,3694,6,180000,0,0,0,8,0,0,0,6339.14,341.764,24.3387,0.498114,"Terenthis - On Quest 'Escape Through Force' Finished - Summon Creature 'Sentinel Selarin'");

-- Sentinel Selarin SAI
SET @ENTRY := 3694;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,2,54,0,100,0,0,0,0,0,53,1,3694,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,23,3694,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 23 Reached - Despawn Instant"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Just Summoned - Set Active On"),
(@ENTRY,0,3,0,40,0,100,0,1,3694,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 1 Reached - Pause Waypoint"),
(@ENTRY,0,4,0,40,0,100,0,12,3694,0,0,54,120000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sentinel Selarin - On Waypoint 12 Reached - Pause Waypoint");

DELETE FROM `waypoints` WHERE `entry`=3694;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(3694, 1, 6339.14,341.764,24.3387, 'Sentinel Selarin'),
(3694, 2, 6353.39,354.557,22.3779, 'Sentinel Selarin'),
(3694, 3, 6368.99,357.894,21.5712, 'Sentinel Selarin'),
(3694, 4, 6387.81,359.455,18.9899, 'Sentinel Selarin'),
(3694, 5, 6398.12,363.588,17.366, 'Sentinel Selarin'),
(3694, 6, 6403.68,370.92,15.6815, 'Sentinel Selarin'),
(3694, 7, 6416.57,392.998,12.0215, 'Sentinel Selarin'),
(3694, 8, 6424.95,399.193,10.9586, 'Sentinel Selarin'),
(3694, 9, 6428.93,396.971,11.1736, 'Sentinel Selarin'),
(3694, 10, 6432,388.708,13.7662, 'Sentinel Selarin'),
(3694, 11, 6436.71,375.264,13.9403, 'Sentinel Selarin'),
(3694, 12, 6434.92,367.203,13.9403, 'Sentinel Selarin'), 
(3694, 13, 6436.9,374.833,13.9403, 'Sentinel Selarin'),
(3694, 14, 6431.63,389.723,13.5875, 'Sentinel Selarin'),
(3694, 15, 6428.84,397.45,11.0941, 'Sentinel Selarin'),
(3694, 16, 6424,400.084,10.9784, 'Sentinel Selarin'),
(3694, 17, 6413.76,392.804,12.2825, 'Sentinel Selarin'),
(3694, 18, 6401.4,368.195,16.4249, 'Sentinel Selarin'),
(3694, 19, 6393.69,360.887,18.1549, 'Sentinel Selarin'),
(3694, 20, 6377.21,357.731,20.6589, 'Sentinel Selarin'),
(3694, 21, 6358.35,357.353,22.2106, 'Sentinel Selarin'),
(3694, 22, 6348.45,352.662,22.6056, 'Sentinel Selarin'),
(3694, 23, 6322.42,326.649,25.3338, 'Sentinel Selarin');
-- Dread Tactician
-- Pathing for  Entry: 16959 'TDB FORMAT' 
SET @NPC := 59170;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-306.8688,`position_y`=1556.233,`position_z`=41.73843 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-306.8688,1556.233,41.73843,0,0,0,0,100,0),
(@PATH,2,-303.8688,1555.983,40.73843,0,0,0,0,100,0),
(@PATH,3,-299.8688,1555.483,40.23843,0,0,0,0,100,0),
(@PATH,4,-297.8688,1555.233,39.48843,0,0,0,0,100,0),
(@PATH,5,-295.1188,1554.983,38.73843,0,0,0,0,100,0),
(@PATH,6,-292.1188,1554.483,38.48843,0,0,0,0,100,0),
(@PATH,7,-289.1188,1554.233,37.73843,0,0,0,0,100,0),
(@PATH,8,-287.1188,1553.983,37.23843,0,0,0,0,100,0),
(@PATH,9,-284.1188,1553.983,36.48843,0,0,0,0,100,0),
(@PATH,10,-283.8904,1553.79,36.20832,0,0,0,0,100,0),
(@PATH,11,-281.8904,1553.54,35.95832,0,0,0,0,100,0),
(@PATH,12,-275.6404,1556.04,35.70832,0,0,0,0,100,0),
(@PATH,13,-269.0029,1558.513,35.23201,0,0,0,0,100,0),
(@PATH,14,-270.5029,1562.263,35.98201,0,0,0,0,100,0),
(@PATH,15,-271.7529,1565.013,36.48201,0,0,0,0,100,0),
(@PATH,16,-272.7529,1567.513,36.98201,0,0,0,0,100,0),
(@PATH,17,-274.0029,1570.263,37.73201,0,0,0,0,100,0),
(@PATH,18,-275.0029,1573.013,38.48201,0,0,0,0,100,0),
(@PATH,19,-276.4716,1576.198,39.42199,0,0,0,0,100,0),
(@PATH,20,-278.2216,1576.948,39.92199,0,0,0,0,100,0),
(@PATH,21,-280.9716,1578.448,40.92199,0,0,0,0,100,0),
(@PATH,22,-283.7216,1579.698,41.67199,0,0,0,0,100,0),
(@PATH,23,-285.4716,1580.448,42.17199,0,0,0,0,100,0),
(@PATH,24,-287.9716,1581.698,42.92199,0,0,0,0,100,0),
(@PATH,25,-289.7216,1582.448,43.67199,0,0,0,0,100,0),
(@PATH,26,-291.4716,1583.448,44.42199,0,0,0,0,100,0),
(@PATH,27,-294.2216,1584.698,45.17199,0,0,0,0,100,0),
(@PATH,28,-294.3971,1584.785,45.42167,0,0,0,0,100,0),
(@PATH,29,-295.1471,1585.035,45.42167,0,0,0,0,100,0),
(@PATH,30,-304.3971,1576.535,45.92167,0,0,0,0,100,0),
(@PATH,31,-312.2731,1568.967,46.45709,0,0,0,0,100,0),
(@PATH,32,-318.7731,1561.467,45.70709,0,0,0,0,100,0),
(@PATH,33,-333.8887,1543.732,45.3224,0,0,0,0,100,0),
(@PATH,34,-333.6387,1540.732,44.5724,0,0,0,0,100,0),
(@PATH,35,-333.3887,1538.732,43.8224,0,0,0,0,100,0),
(@PATH,36,-333.3887,1536.732,43.3224,0,0,0,0,100,0),
(@PATH,37,-333.1387,1533.732,42.5724,0,0,0,0,100,0),
(@PATH,38,-332.8887,1531.732,41.8224,0,0,0,0,100,0),
(@PATH,39,-332.8887,1529.732,41.0724,0,0,0,0,100,0),
(@PATH,40,-332.6387,1527.732,40.5724,0,0,0,0,100,0),
(@PATH,41,-332.3887,1525.732,39.8224,0,0,0,0,100,0),
(@PATH,42,-332.3887,1523.732,39.3224,0,0,0,0,100,0),
(@PATH,43,-332.1387,1521.982,38.8224,0,0,0,0,100,0),
(@PATH,44,-331.8887,1518.982,38.3224,0,0,0,0,100,0),
(@PATH,45,-331.8887,1516.982,37.5724,0,0,0,0,100,0),
(@PATH,46,-331.8887,1513.982,36.8224,0,0,0,0,100,0),
(@PATH,47,-331.6387,1510.982,36.3224,0,0,0,0,100,0),
(@PATH,48,-331.3887,1508.232,35.5724,0,0,0,0,100,0),
(@PATH,49,-331.1387,1505.232,34.8224,0,0,0,0,100,0),
(@PATH,50,-330.8887,1502.232,34.3224,0,0,0,0,100,0),
(@PATH,51,-330.4729,1499.82,33.45189,0,0,0,0,100,0),
(@PATH,52,-325.4729,1496.82,32.70189,0,0,0,0,100,0),
(@PATH,53,-320.9729,1494.32,31.95189,0,0,0,0,100,0),
(@PATH,54,-316.2229,1491.57,31.45189,0,0,0,0,100,0),
(@PATH,55,-311.7229,1489.07,30.95189,0,0,0,0,100,0),
(@PATH,56,-307.4729,1486.57,30.20189,0,0,0,0,100,0),
(@PATH,57,-307.3154,1486.395,29.88731,0,0,0,0,100,0),
(@PATH,58,-305.8154,1485.645,29.63731,0,0,0,0,100,0),
(@PATH,59,-299.8154,1485.645,28.88731,0,0,0,0,100,0),
(@PATH,60,-294.0654,1485.395,28.38731,0,0,0,0,100,0),
(@PATH,61,-287.0654,1485.395,27.88731,0,0,0,0,100,0),
(@PATH,62,-281.0654,1485.395,27.38731,0,0,0,0,100,0),
(@PATH,63,-280.6106,1485.449,27.23963,0,0,0,0,100,0),
(@PATH,64,-278.6106,1485.199,27.23963,0,0,0,0,100,0),
(@PATH,65,-270.6106,1498.699,27.48963,0,0,0,0,100,0),
(@PATH,66,-268.6106,1502.199,27.98963,0,0,0,0,100,0),
(@PATH,67,-268.5272,1502.318,28.20654,0,0,0,0,100,0),
(@PATH,68,-267.5272,1503.818,28.20654,0,0,0,0,100,0),
(@PATH,69,-270.5272,1504.568,28.70654,0,0,0,0,100,0),
(@PATH,70,-274.2772,1505.568,29.20654,0,0,0,0,100,0),
(@PATH,71,-278.5582,1506.635,29.73862,0,0,0,0,100,0),
(@PATH,72,-290.8082,1500.885,30.23862,0,0,0,0,100,0),
(@PATH,73,-296.4533,1498.203,30.9129,0,0,0,0,100,0),
(@PATH,74,-300.2033,1498.953,31.4129,0,0,0,0,100,0),
(@PATH,75,-304.2033,1499.703,31.9129,0,0,0,0,100,0),
(@PATH,76,-307.9533,1500.453,32.4129,0,0,0,0,100,0),
(@PATH,77,-313.7033,1501.203,33.1629,0,0,0,0,100,0),
(@PATH,78,-317.4067,1502.011,33.47455,0,0,0,0,100,0),
(@PATH,79,-319.6567,1504.011,33.97455,0,0,0,0,100,0),
(@PATH,80,-322.1567,1506.511,34.47455,0,0,0,0,100,0),
(@PATH,81,-325.2614,1509.541,35.46749,0,0,0,0,100,0),
(@PATH,82,-325.7614,1512.541,35.96749,0,0,0,0,100,0),
(@PATH,83,-326.0114,1515.541,36.71749,0,0,0,0,100,0),
(@PATH,84,-326.2614,1517.541,37.21749,0,0,0,0,100,0),
(@PATH,85,-326.2614,1520.541,38.21749,0,0,0,0,100,0),
(@PATH,86,-326.5114,1522.541,38.71749,0,0,0,0,100,0),
(@PATH,87,-326.7614,1525.291,39.46749,0,0,0,0,100,0),
(@PATH,88,-327.0114,1527.291,39.96749,0,0,0,0,100,0),
(@PATH,89,-327.2614,1529.291,40.71749,0,0,0,0,100,0),
(@PATH,90,-327.7614,1533.291,41.46749,0,0,0,0,100,0),
(@PATH,91,-328.0114,1535.041,41.96749,0,0,0,0,100,0),
(@PATH,92,-328.2614,1538.041,42.71749,0,0,0,0,100,0);
-- 0x1C39AC4240108FC00000210000037184 .go -306.8688 1556.233 41.73843


-- Pathing for  Entry: 16959 'TDB FORMAT' 
SET @NPC := 59171;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=-110.5204,`position_y`=1566.893,`position_z`=42.31397 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,-110.5204,1566.893,42.31397,0,0,0,0,100,0),
(@PATH,2,-120.2704,1568.393,41.81397,0,0,0,0,100,0),
(@PATH,3,-127.0204,1569.893,41.31397,0,0,0,0,100,0),
(@PATH,4,-134.6927,1571.43,40.71382,0,0,0,0,100,0),
(@PATH,5,-139.6927,1571.68,40.21382,0,0,0,0,100,0),
(@PATH,6,-144.6927,1571.93,39.46382,0,0,0,0,100,0),
(@PATH,7,-149.4427,1572.18,38.71382,0,0,0,0,100,0),
(@PATH,8,-152.4427,1572.43,38.21382,0,0,0,0,100,0),
(@PATH,9,-155.4427,1572.68,37.71382,0,0,0,0,100,0),
(@PATH,10,-158.4427,1572.68,36.96382,0,0,0,0,100,0),
(@PATH,11,-161.4427,1572.93,36.46382,0,0,0,0,100,0),
(@PATH,12,-163.4427,1573.18,35.71382,0,0,0,0,100,0),
(@PATH,13,-163.4854,1573.449,35.89986,0,0,0,0,100,0),
(@PATH,14,-164.2354,1573.449,35.64986,0,0,0,0,100,0),
(@PATH,15,-163.9854,1576.449,36.39986,0,0,0,0,100,0),
(@PATH,16,-163.7824,1580.185,36.84877,0,0,0,0,100,0),
(@PATH,17,-161.7824,1580.435,37.59877,0,0,0,0,100,0),
(@PATH,18,-159.0324,1580.935,38.34877,0,0,0,0,100,0),
(@PATH,19,-155.0324,1581.935,38.84877,0,0,0,0,100,0),
(@PATH,20,-152.2824,1582.685,39.59877,0,0,0,0,100,0),
(@PATH,21,-148.5324,1583.435,40.34877,0,0,0,0,100,0),
(@PATH,22,-145.5324,1584.185,41.09877,0,0,0,0,100,0),
(@PATH,23,-145.3761,1584.15,41.32778,0,0,0,0,100,0),
(@PATH,24,-144.1261,1584.4,41.57778,0,0,0,0,100,0),
(@PATH,25,-139.1261,1583.9,42.32778,0,0,0,0,100,0),
(@PATH,26,-135.1261,1583.65,43.07778,0,0,0,0,100,0),
(@PATH,27,-130.1261,1583.15,43.57778,0,0,0,0,100,0),
(@PATH,28,-126.3761,1582.65,44.07778,0,0,0,0,100,0),
(@PATH,29,-123.3761,1582.4,44.82778,0,0,0,0,100,0),
(@PATH,30,-117.3761,1582.15,45.32778,0,0,0,0,100,0),
(@PATH,31,-113.3761,1581.65,46.07778,0,0,0,0,100,0),
(@PATH,32,-109.0603,1580.944,46.36949,0,0,0,0,100,0),
(@PATH,33,-84.0918,1569.51,46.44577,0,0,0,0,100,0),
(@PATH,34,-82.3418,1566.01,45.44577,0,0,0,0,100,0),
(@PATH,35,-81.3418,1564.26,44.94577,0,0,0,0,100,0),
(@PATH,36,-80.0918,1561.51,44.19577,0,0,0,0,100,0),
(@PATH,37,-79.0918,1559.76,43.69577,0,0,0,0,100,0),
(@PATH,38,-78.0918,1558.01,42.94577,0,0,0,0,100,0),
(@PATH,39,-76.5918,1554.76,42.19577,0,0,0,0,100,0),
(@PATH,40,-75.8418,1553.01,41.69577,0,0,0,0,100,0),
(@PATH,41,-74.8418,1551.26,41.19577,0,0,0,0,100,0),
(@PATH,42,-73.3418,1548.51,40.44577,0,0,0,0,100,0),
(@PATH,43,-72.5918,1546.76,39.94577,0,0,0,0,100,0),
(@PATH,44,-71.5918,1545.01,39.19577,0,0,0,0,100,0),
(@PATH,45,-70.3418,1542.26,38.69577,0,0,0,0,100,0),
(@PATH,46,-70.29829,1541.94,38.42153,0,0,0,0,100,0),
(@PATH,47,-69.29829,1540.19,37.67153,0,0,0,0,100,0),
(@PATH,48,-69.54829,1538.19,37.17153,0,0,0,0,100,0),
(@PATH,49,-70.04829,1535.19,36.17153,0,0,0,0,100,0),
(@PATH,50,-70.04829,1533.44,35.67153,0,0,0,0,100,0),
(@PATH,51,-70.54829,1529.44,35.17153,0,0,0,0,100,0),
(@PATH,52,-71.04829,1525.69,34.42153,0,0,0,0,100,0),
(@PATH,53,-71.54829,1521.69,33.92153,0,0,0,0,100,0),
(@PATH,54,-71.54829,1518.69,33.17153,0,0,0,0,100,0),
(@PATH,55,-72.10271,1515.561,32.53027,0,0,0,0,100,0),
(@PATH,56,-73.35271,1512.811,31.53027,0,0,0,0,100,0),
(@PATH,57,-74.35271,1511.061,30.78027,0,0,0,0,100,0),
(@PATH,58,-75.10271,1509.311,30.28027,0,0,0,0,100,0),
(@PATH,59,-76.35271,1506.561,29.78027,0,0,0,0,100,0),
(@PATH,60,-78.10271,1502.811,29.03027,0,0,0,0,100,0),
(@PATH,61,-79.10271,1500.311,30.03027,0,0,0,0,100,0),
(@PATH,62,-82.35271,1493.061,29.28027,0,0,0,0,100,0),
(@PATH,63,-84.10271,1489.561,28.53027,0,0,0,0,100,0),
(@PATH,64,-84.42598,1489.16,28.3833,0,0,0,0,100,0),
(@PATH,65,-85.17598,1487.41,28.1333,0,0,0,0,100,0),
(@PATH,66,-102.3677,1477.751,27.65215,0,0,0,0,100,0),
(@PATH,67,-123.1177,1477.501,26.90215,0,0,0,0,100,0),
(@PATH,68,-137.5984,1477.31,26.80837,0,0,0,0,100,0),
(@PATH,69,-145.5984,1482.56,27.05837,0,0,0,0,100,0),
(@PATH,70,-153.8199,1488.331,27.38618,0,0,0,0,100,0),
(@PATH,71,-178.7361,1511.036,27.3082,0,0,0,0,100,0),
(@PATH,72,-185.2269,1510.27,27.05297,0,0,0,0,100,0),
(@PATH,73,-182.9769,1508.27,27.05297,0,0,0,0,100,0),
(@PATH,74,-172.9769,1500.02,26.80297,0,0,0,0,100,0),
(@PATH,75,-170.7269,1498.27,27.05297,0,0,0,0,100,0),
(@PATH,76,-169.2269,1496.02,27.05297,0,0,0,0,100,0),
(@PATH,77,-167.7269,1494.02,26.80297,0,0,0,0,100,0),
(@PATH,78,-167.7269,1492.02,26.80297,0,0,0,0,100,0),
(@PATH,79,-167.7269,1489.77,26.80297,0,0,0,0,100,0),
(@PATH,80,-167.4919,1489.571,26.64043,0,0,0,0,100,0),
(@PATH,81,-168.4919,1488.071,26.64043,0,0,0,0,100,0),
(@PATH,82,-158.2419,1482.071,26.14043,0,0,0,0,100,0),
(@PATH,83,-147.591,1475.386,26.25293,0,0,0,0,100,0),
(@PATH,84,-139.841,1477.636,27.00293,0,0,0,0,100,0),
(@PATH,85,-132.341,1479.636,27.25293,0,0,0,0,100,0),
(@PATH,86,-125.591,1481.386,28.00293,0,0,0,0,100,0),
(@PATH,87,-121.841,1482.636,28.50293,0,0,0,0,100,0),
(@PATH,88,-120.2695,1483.081,29.04744,0,0,0,0,100,0),
(@PATH,89,-118.5195,1484.081,29.54744,0,0,0,0,100,0),
(@PATH,90,-115.7695,1485.331,30.29744,0,0,0,0,100,0),
(@PATH,91,-115.0195,1485.831,31.04744,0,0,0,0,100,0),
(@PATH,92,-113.0195,1486.831,32.04744,0,0,0,0,100,0),
(@PATH,93,-107.0195,1489.581,31.29744,0,0,0,0,100,0),
(@PATH,94,-95.5195,1495.331,30.79744,0,0,0,0,100,0),
(@PATH,95,-95.16714,1495.663,31.08524,0,0,0,0,100,0),
(@PATH,96,-94.66714,1495.913,31.08524,0,0,0,0,100,0),
(@PATH,97,-93.66714,1499.913,31.33524,0,0,0,0,100,0),
(@PATH,98,-92.16714,1506.413,31.83524,0,0,0,0,100,0),
(@PATH,99,-90.66714,1512.163,32.58524,0,0,0,0,100,0),
(@PATH,100,-89.91714,1514.913,31.83524,0,0,0,0,100,0),
(@PATH,101,-89.75613,1515.401,32.07003,0,0,0,0,100,0),
(@PATH,102,-89.25613,1516.401,31.82003,0,0,0,0,100,0),
(@PATH,103,-89.25613,1523.401,32.57003,0,0,0,0,100,0),
(@PATH,104,-89.25613,1524.401,33.32003,0,0,0,0,100,0),
(@PATH,105,-89.25613,1525.401,34.07003,0,0,0,0,100,0),
(@PATH,106,-89.00613,1526.401,34.57003,0,0,0,0,100,0),
(@PATH,107,-89.00613,1528.401,35.82003,0,0,0,0,100,0),
(@PATH,108,-89.00613,1529.401,36.07003,0,0,0,0,100,0),
(@PATH,109,-88.75613,1533.151,36.82003,0,0,0,0,100,0),
(@PATH,110,-88.75613,1535.151,37.32003,0,0,0,0,100,0),
(@PATH,111,-88.50613,1538.151,38.07003,0,0,0,0,100,0),
(@PATH,112,-88.50613,1541.151,38.82003,0,0,0,0,100,0),
(@PATH,113,-88.25613,1544.151,39.57003,0,0,0,0,100,0),
(@PATH,114,-88.1545,1544.429,39.72079,0,0,0,0,100,0),
(@PATH,115,-88.1545,1545.429,39.97079,0,0,0,0,100,0),
(@PATH,116,-91.1545,1548.179,40.47079,0,0,0,0,100,0),
(@PATH,117,-94.6545,1551.679,40.97079,0,0,0,0,100,0),
(@PATH,118,-99.4045,1556.429,41.72079,0,0,0,0,100,0),
(@PATH,119,-110.481,1566.873,42.2832,0,0,0,0,100,0),
(@PATH,120,-120.231,1568.623,41.7832,0,0,0,0,100,0),
(@PATH,121,-126.981,1569.873,41.2832,0,0,0,0,100,0);
-- 0x1C39AC4240108FC000002100007FC923 .go -110.5204 1566.893 42.31397
-- 
DELETE FROM `event_scripts` WHERE `id`=2313;
INSERT INTO `event_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`) VALUES 
(2313, 0, 10, 7411, 3000000, 0, 9639.5,2528.97,1331.72,5.28395);

-- Spirit of Sathrah SAI
SET @ENTRY := 7411;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,54,0,100,0,0,0,0,0,53,0,7411,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Sathrah - On Just Summoned - Start Waypoint"),
(@ENTRY,0,1,0,40,0,100,0,9,7411,0,0,41,3000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Spirit of Sathrah - On Waypoint 9 Reached - Despawn In 3000 ms");

DELETE FROM `waypoints` WHERE `entry`=7411;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(7411, 1, 9642.47,2523.25,1331.54, 'Spirit of Sathrah'),
(7411, 2, 9640.32,2517.43,1331.57, 'Spirit of Sathrah'),
(7411, 3, 9635.62,2514.35,1331.4, 'Spirit of Sathrah'),
(7411, 4, 9630.91,2515.59,1331.72, 'Spirit of Sathrah'),
(7411, 5, 9626.52,2520.1,1331.73, 'Spirit of Sathrah'),
(7411, 6, 9625.02,2526.36,1331.61, 'Spirit of Sathrah'),
(7411, 7, 9630.56,2532.58,1331.39, 'Spirit of Sathrah'),
(7411, 8, 9636.59,2532.65,1331.73, 'Spirit of Sathrah'),
(7411, 9, 9640.05,2529.06,1331.77, 'Spirit of Sathrah');
-- 
-- Portal Burn Action
-- Portal Kruul SAI
SET @ENTRY := 184289;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,50,183816,30,0,0,0,0,8,0,0,0,147.0184, 1717.341, 37.46404,0,"Portal Kruul - On Gameobject State Changed - Summon Gameobject 'Hellfire Fire'");

-- Portal Xilus SAI
SET @ENTRY := 184290;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,50,183816,30,0,0,0,0,8,0,0,0,-84.5415, 1881.739, 73.82645,5.782852,"Portal Xilus - On Gameobject State Changed - Summon Gameobject 'Hellfire Fire'");

-- Portal Grimh SAI
SET @ENTRY := 184414;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,50,183816,30,0,0,0,0,8,0,0,0,-418.627, 1847.49, 80.7808,0,"Portal Grimh - On Gameobject State Changed - Summon Gameobject 'Hellfire Fire'");

-- Portal Kaalez SAI
SET @ENTRY := 184415;
UPDATE `gameobject_template` SET `AIName`="SmartGameObjectAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,50,183816,30,0,0,0,0,8,0,0,0,-545.2587, 1781.167, 56.22634,0,"Portal Kaalez - On Gameobject State Changed - Summon Gameobject 'Hellfire Fire'");
-- 
-- Pathing for  Entry: 22410 'TDB FORMAT' 
SET @NPC := 78754;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3009.127,`position_y`=5920.842,`position_z`=130.9854 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,14332,0,4097,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3009.127,5920.842,130.9854,0,0,1,0,100,0),
(@PATH,2,3018.56,5944.067,131.0012,0,0,1,0,100,0),
(@PATH,3,3028.687,5971.723,131.0047,0,0,1,0,100,0),
(@PATH,4,3039.209,5998.325,130.9491,0,0,1,0,100,0),
(@PATH,5,3041.459,6004.325,130.9491,0,0,1,0,100,0),
(@PATH,6,3042.709,6007.575,130.9491,0,0,1,0,100,0),
(@PATH,7,3043.459,6009.825,130.9491,0,0,1,0,100,0),
(@PATH,8,3048.21,6021.786,130.8358,0,0,1,0,100,0),
(@PATH,9,3058.211,6046.689,130.7168,0,0,1,0,100,0),
(@PATH,10,3065.155,6064.995,130.614,0,0,1,0,100,0),
(@PATH,11,3078.91,6073.112,130.3709,0,0,1,0,100,0),
(@PATH,12,3084.571,6056.194,130.4195,0,0,1,0,100,0),
(@PATH,13,3079.821,6040.444,130.6695,0,0,1,0,100,0),
(@PATH,14,3079.655,6040.126,130.764,0,0,1,0,100,0),
(@PATH,15,3079.405,6039.626,130.764,0,0,1,0,100,0),
(@PATH,16,3078.905,6038.126,130.764,0,0,1,0,100,0),
(@PATH,17,3069.25,6014.667,130.9082,0,0,1,0,100,0),
(@PATH,18,3064,6000.667,130.9082,0,0,1,0,100,0),
(@PATH,19,3060.452,5991.971,130.99,0,0,1,0,100,0),
(@PATH,20,3050.27,5967.535,130.9908,0,0,1,0,100,0),
(@PATH,21,3045.52,5954.535,130.9908,0,0,1,0,100,0),
(@PATH,22,3039.294,5938.282,130.9514,0,0,1,0,100,0),
(@PATH,23,3028.456,5913.517,130.8795,0,0,1,0,100,0),
(@PATH,24,3019.764,5891.665,130.7868,0,0,1,0,100,0),
(@PATH,25,3016.764,5884.415,130.7868,0,0,1,0,100,0),
(@PATH,26,3012.264,5873.915,130.7868,0,0,1,0,100,0),
(@PATH,27,3009.264,5866.915,130.7868,0,0,1,0,100,0),
(@PATH,28,3012.196,5873.788,130.7515,0,0,1,0,100,0),
(@PATH,29,3008.946,5866.788,130.7515,0,0,1,0,100,0),
(@PATH,30,3008.446,5865.038,130.7515,0,0,1,0,100,0),
(@PATH,31,2995.446,5836.038,130.5015,0,0,1,0,100,0),
(@PATH,32,2995.104,5835.657,130.3808,0,0,1,0,100,0),
(@PATH,33,2991.854,5828.407,130.6308,0,0,1,0,100,0),
(@PATH,34,2990.604,5827.907,130.3808,0,0,1,0,100,0),
(@PATH,35,2976.186,5821.571,130.1743,0,0,1,0,100,0),
(@PATH,36,2970.518,5837.316,130.481,0,0,1,0,100,0),
(@PATH,37,2971.768,5840.066,130.481,0,0,1,0,100,0),
(@PATH,38,2980.487,5859.262,131.0515,0,0,1,0,100,0),
(@PATH,39,2983.987,5866.762,131.0515,0,0,1,0,100,0),
(@PATH,40,2989.237,5876.512,131.3015,0,0,1,0,100,0);
-- 0x1C3998424015E28000002300007FC920 .go 3009.127 5920.842 130.9854

DELETE FROM `creature_formations` WHERE `leaderGUID`=78754;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(78754, 78754, 0, 0, 2, 0, 0),
(78754, 78755, 7, 0, 0, 0, 0);

-- Expedition Warden SAI
SET @GUID := -63549;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17855;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,100,200,5000,10000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Expedition Warden - Out of Combat - Play Emote 1");

-- Expedition Warden SAI
SET @GUID := -63548;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=17855;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,100,200,10000,40000,5,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Expedition Warden - Out of Combat - Play Emote 1");

-- Pathing for  Entry: 17855 'TDB FORMAT' 
SET @NPC := 63550;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3022.651,`position_y`=5963.609,`position_z`=130.7766 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3022.651,5963.609,130.7766,0,6000,0,0,100,0),
(@PATH,2,3032.096,5959.558,130.6869,0,6000,0,0,100,0);
-- 0x1C39984240116FC000002300027FC920 .go 3022.651 5963.609 130.7766
-- 
-- Pathing for  Entry: 2802 'TDB FORMAT' 
SET @NPC := 38101;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=1442.487,`position_y`=36.32697,`position_z`=-62.02626 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,1442.487,36.32697,-62.02626,0,0,0,0,100,0),
(@PATH,2,1435.487,32.07697,-62.02626,0,0,0,0,100,0),
(@PATH,3,1416.445,21.46703,-62.02588,0,0,0,0,100,0),
(@PATH,4,1405.551,23.91475,-62.0261,0,0,0,0,100,0),
(@PATH,5,1402.301,26.41475,-62.0261,0,0,0,0,100,0),
(@PATH,6,1387.127,36.88569,-62.02647,0,0,0,0,100,0),
(@PATH,7,1381.627,49.88569,-62.02647,0,0,0,0,100,0),
(@PATH,8,1379.005,56.32278,-62.02669,0,0,0,0,100,0),
(@PATH,9,1379.755,60.82278,-62.02669,0,0,0,0,100,0),
(@PATH,10,1383.399,83.51677,-62.03289,0,0,0,0,100,0),
(@PATH,11,1388.399,87.51677,-62.03289,0,0,0,0,100,0),
(@PATH,12,1395.899,94.01677,-62.28289,0,0,0,0,100,0),
(@PATH,13,1400.163,97.49232,-62.05746,0,0,0,0,100,0),
(@PATH,14,1412.663,127.9923,-62.05746,0,0,0,0,100,0),
(@PATH,15,1413.663,130.2423,-62.05746,0,0,0,0,100,0),
(@PATH,16,1415.163,134.2423,-62.05746,0,0,0,0,100,0),
(@PATH,17,1418.154,141.2391,-62.04066,0,0,0,0,100,0),
(@PATH,18,1423.404,143.7391,-62.04066,0,0,0,0,100,0),
(@PATH,19,1434.169,149.9652,-62.03992,0,0,0,0,100,0),
(@PATH,20,1435.669,148.4652,-62.03992,0,0,0,0,100,0),
(@PATH,21,1445.419,139.4652,-62.03992,0,0,0,0,100,0),
(@PATH,22,1447.836,137.2073,-61.75176,0,0,0,0,100,0),
(@PATH,23,1450.836,133.7073,-61.75176,0,0,0,0,100,0),
(@PATH,24,1452.086,132.4573,-61.75176,0,0,0,0,100,0),
(@PATH,25,1453.836,130.4573,-60.00176,0,0,0,0,100,0),
(@PATH,26,1456.336,127.4573,-60.00176,0,0,0,0,100,0),
(@PATH,27,1462.008,120.8724,-59.94119,0,0,0,0,100,0),
(@PATH,28,1465.152,111.2505,-59.94151,0,0,0,0,100,0),
(@PATH,29,1471.402,105.7505,-59.94151,0,0,0,0,100,0),
(@PATH,30,1479.847,98.11646,-59.9706,0,0,0,0,100,0),
(@PATH,31,1480.847,97.36646,-59.9706,0,0,0,0,100,0),
(@PATH,32,1482.847,96.11646,-61.4706,0,0,0,0,100,0),
(@PATH,33,1484.347,95.11646,-61.7206,0,0,0,0,100,0),
(@PATH,34,1483.158,95.78064,-61.62843,0,0,0,0,100,0),
(@PATH,35,1484.658,94.78064,-61.87843,0,0,0,0,100,0),
(@PATH,36,1485.158,94.53064,-61.87843,0,0,0,0,100,0),
(@PATH,37,1489.658,90.78064,-61.87843,0,0,0,0,100,0),
(@PATH,38,1499.658,82.28064,-61.87843,0,0,0,0,100,0),
(@PATH,39,1499.686,82.06802,-62.047,0,0,0,0,100,0),
(@PATH,40,1500.436,81.31802,-62.047,0,0,0,0,100,0),
(@PATH,41,1494.936,71.31802,-62.047,0,0,0,0,100,0),
(@PATH,42,1481.826,47.66472,-62.03592,0,0,0,0,100,0),
(@PATH,43,1469.576,44.16472,-62.03592,0,0,0,0,100,0),
(@PATH,44,1466.576,43.41472,-62.03592,0,0,0,0,100,0),
(@PATH,45,1464.826,42.91472,-62.03592,0,0,0,0,100,0),
(@PATH,46,1452.326,39.16472,-62.03592,0,0,0,0,100,0),
(@PATH,47,1442.51,36.29097,-62.02619,0,0,0,0,100,0),
(@PATH,48,1435.51,32.29097,-62.02619,0,0,0,0,100,0),
(@PATH,49,1416.5,21.42531,-62.02593,0,0,0,0,100,0);
-- 0x1C191C000002BC80000028000002D330 .go 1442.487 36.32697 -62.02626
-- 
DELETE FROM `gossip_menu` WHERE `entry`=5004;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (5004, 6062);
-- 
-- Scarlet Initiate SAI
SET @ENTRY := 1507;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,7,0,0,0,100,0,0,0,3500,5000,11,20793,64,0,0,0,0,2,0,0,0,0,0,0,0,"Scarlet Initiate - In Combat - Cast 'Fireball'"),
(@ENTRY,0,10,0,23,0,100,0,12544,0,5000,10000,11,12544,0,0,0,0,0,1,0,0,0,0,0,0,0,"Scarlet Initiate - On Has Aura 'Frost Armor' - Cast 'Frost Armor'");
-- 
-- Keryn Sylvius SAI
SET @ENTRY := 917;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,62,0,100,0,381,4,0,0,11,21100,0,0,0,0,0,7,0,0,0,0,0,0,0,"Keryn Sylvius - On Gossip Option 4 Selected - Cast 'Conjure Elegant Letter'");

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=381 AND `SourceEntry`=4;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 381, 4, 0, 0, 15, 0, 8, 0, 0, 0, 0, 0, '', 'Show gossip text if player is a rogue'),
(15, 381, 4, 0, 0, 27, 0, 24, 3, 0, 0, 0, 0, '', 'Show gossip text if level >= 24'),
(15, 381, 4, 0, 0, 2, 0, 17126, 1, 0, 1, 0, 0, '', 'Show gossip option if player does not have Elegant Letter');
-- A Crew Under Fire
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry`=8380;
UPDATE `quest_template` SET `SpecialFlags`=2 WHERE  `Id`=3382;
UPDATE `creature_template` SET `ScriptName`='' WHERE  `entry` IN (12205, 12204);
UPDATE `creature` SET orientation = 2.43043 WHERE guid = 35899;

-- Captain Vanessa Beltis SAI
SET @ENTRY := 8380;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,19,0,100,0,3382,0,0,0,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Quest 'A Crew Under Fire' Taken - Run Script"),
(@ENTRY,0,1,4,61,0,100,0,3382,0,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Quest 'A Crew Under Fire' Taken - Set Faction 250"),
(@ENTRY,0,2,5,11,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Respawn - Set Faction 35"),
(@ENTRY,0,3,0,6,0,100,0,0,0,0,0,6,3382,0,0,0,0,0,17,0,50,0,0,0,0,0,"Captain Vanessa Beltis - On Just Died - Fail Quest 'A Crew Under Fire'"),
(@ENTRY,0,4,0,61,0,100,0,3382,0,0,0,82,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Quest 'A Crew Under Fire' Taken - Add Npc Flag "),
(@ENTRY,0,5,0,61,0,100,0,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Respawn - Add Npc Flags Gossip & Questgiver");

-- Spitelash Witch SAI
SET @ENTRY := 12205;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,118,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,1,0,8,0,100,0,12824,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,2,0,8,0,100,0,12825,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,3,0,8,0,100,0,12826,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,4,0,54,0,100,0,0,0,0,0,53,1,12205,0,0,0,2,1,0,0,0,0,0,0,0,"Spitelash Witch - On Just Summoned - Start Waypoint"),
(@ENTRY,0,5,0,1,0,100,0,1000,1000,60000,60000,11,12550,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Witch - Out of Combat - Cast 'Lightning Shield'"),
(@ENTRY,0,6,0,0,0,100,0,2000,2000,4000,5000,11,9672,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Witch - In Combat - Cast 'Frostbolt'");

DELETE FROM `waypoints` WHERE `entry`=12205;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(12205, 1, 2370.83,-5893.06,10.6607, 'Spitelash Witch'),
(12205, 2, 2377.23,-5904.07,11.067, 'Spitelash Witch'),
(12205, 3, 2378.04,-5915.15,10.7378, 'Spitelash Witch'),
(12205, 4, 2374.96,-5932,9.66682, 'Spitelash Witch'),
(12205, 5, 2374.06,-5963.62,9.89577, 'Spitelash Witch');

-- Spitelash Raider SAI
SET @ENTRY := 12204;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,118,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Raider - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,1,0,8,0,100,0,12824,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Raider - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,2,0,8,0,100,0,12825,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Raider - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,3,0,8,0,100,0,12826,0,8000,8000,80,@ENTRY*100+00,2,0,0,0,0,1,0,0,0,0,0,0,0,"Spitelash Raider - On Spellhit 'Polymorph' - Run Script"),
(@ENTRY,0,4,0,54,0,100,0,0,0,0,0,53,1,12204,0,0,0,2,1,0,0,0,0,0,0,0,"Spitelash Raider - On Just Summoned - Start Waypoint"),
(@ENTRY,0,5,0,0,0,100,0,40,1000,6500,9000,11,12545,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Raider - In Combat - Cast 'Spitelash'"),
(@ENTRY,0,6,0,0,0,100,0,1000,2500,11000,15000,11,12548,0,0,0,0,0,2,0,0,0,0,0,0,0,"Spitelash Raider - In Combat - Cast 'Frost Shock'");

DELETE FROM `waypoints` WHERE `entry`=12204;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(12204, 1, 2370.83,-5893.06,10.6607, 'Spitelash Raider'),
(12204, 2, 2379.97,-5904.9,10.7712, 'Spitelash Raider'),
(12204, 3, 2376.15,-5924.8,9.84824, 'Spitelash Raider'),
(12204, 4, 2373.41,-5962.79,9.70075, 'Spitelash Raider');

-- Actionlist SAI
SET @ENTRY := 1220500;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,11,29124,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Polymorph'"),
(@ENTRY,9,1,0,0,0,100,0,5000,5000,0,0,11,28406,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Polymorph Backfire'"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,11,6924,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Cast 'Remove Polymorph'"),
(@ENTRY,9,3,0,0,0,100,0,1000,1000,0,0,41,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"On Script - Despawn Instant");

-- Actionlist SAI
SET @ENTRY := 838000;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,0,0,0,0,100,0,0,0,0,0,48,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Script - Set Active On"),
(@ENTRY,9,1,0,0,0,100,0,1000,1000,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Script - Say Line 0"),
(@ENTRY,9,2,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,9,0,0,50,0,0,0,0,"Captain Vanessa Beltis - On Script - Set Data 1 1"),
-- 1. wave
(@ENTRY,9,3,0,0,0,100,0,4000,4000,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,-5893.06,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,4,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,5,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,6,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
-- 2nd wave
(@ENTRY,9,7,0,0,0,100,0,50000,50000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,10.6607,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,8,0,0,0,100,0,1000,1000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,9,0,0,0,100,0,0,0,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,10,0,0,0,100,0,1000,1000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
-- 3. wave
(@ENTRY,9,11,0,0,0,100,0,52000,52000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,10.6607,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,12,0,0,0,100,0,1000,1000,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,13,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,14,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
-- 4. wave
(@ENTRY,9,15,0,0,0,100,0,54000,54000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,10.6607,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,16,0,0,0,100,0,1000,1000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,17,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,18,0,0,0,100,0,0,0,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
-- 5. wave
(@ENTRY,9,19,0,0,0,100,0,55000,55000,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,10.6607,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,20,0,0,0,100,0,1000,1000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,21,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,22,0,0,0,100,0,0,0,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
-- 6. wave
(@ENTRY,9,23,0,0,0,100,0,55000,55000,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2370.83,-5893.06,10.6607,5.45564,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,24,0,0,0,100,0,1000,1000,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2367.58,-5889.81,11.3931,5.36209,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,25,0,0,0,100,0,0,0,0,0,12,12204,6,300000,0,0,0,8,0,0,0,2369.53,-5888.84,11.2888,5.23643,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Raider'"),
(@ENTRY,9,26,0,0,0,100,0,0,0,0,0,12,12205,6,300000,0,0,0,8,0,0,0,2366.15,-5891.65,11.72,5.46812,"Captain Vanessa Beltis - On Script - Summon Creature 'Spitelash Witch'"),
(@ENTRY,9,27,0,0,0,100,0,10000,10000,0,0,15,3382,0,0,0,0,0,17,0,30,0,0,0,0,0,"Captain Vanessa Beltis - On Script - Quest Credit 'A Crew Under Fire'"),
(@ENTRY,9,28,0,0,0,100,0,0,0,0,0,48,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Script - Set Active Off"),
(@ENTRY,9,29,0,0,0,100,0,0,0,0,0,45,2,2,0,0,0,0,9,0,0,50,0,0,0,0,"Captain Vanessa Beltis - On Script - Set Data 2 2"),
(@ENTRY,9,30,0,0,0,100,0,0,0,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Script - Set Faction 35"),
(@ENTRY,9,31,0,0,0,100,0,0,0,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Captain Vanessa Beltis - On Script - set NPC-Flag");

DELETE FROM `creature_text` WHERE `entry`=8380;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextId`) VALUES 
(8380, 0, 0, 'Stand Prepared! The naga won\'t wait long to press their advantage once they know we\'re alive.', 12, 0, 100, 0, 0, 0, 'Captain Vanessa Beltis', 4658);

-- Lindros SAI
SET @ENTRY := 8381;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lindros - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lindros - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,11975,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lindros - On Aggro - Cast 'Arcane Explosion'"),
(@ENTRY,0,3,0,0,0,100,0,1000,4000,3000,4000,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,"Lindros - In Combat - Cast 'Fireball'");

-- Alexandra Blazen SAI
SET @ENTRY := 8378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,1006,2,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - On Aggro - Cast 'Inner Fire'"),
(@ENTRY,0,3,0,2,0,100,0,0,0,20000,20000,11,11640,0,0,0,0,0,1,0,0,0,0,0,0,0,"Alexandra Blazen - Between 0-0% Health - Cast 'Renew'");

-- Patrick Mills SAI
SET @ENTRY := 8382;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,4,0,100,0,0,0,0,0,11,1032,2,0,0,0,0,1,0,0,0,0,0,0,0,"Patrick Mills - On Aggro - Cast 'Devotion Aura'"),
(@ENTRY,0,3,0,0,0,100,0,2000,2000,4000,4000,11,17143,0,0,0,0,0,2,0,0,0,0,0,0,0,"Patrick Mills - In Combat - Cast 'Holy Strike'");

-- Horizon Scout Crewman SAI
SET @ENTRY := 8386;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,38,0,100,0,1,1,0,0,2,250,0,0,0,0,0,1,0,0,0,0,0,0,0,"Horizon Scout Crewman - On Data Set 1 1 - Set Faction 250"),
(@ENTRY,0,1,0,38,0,100,0,2,2,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Horizon Scout Crewman - On Data Set 2 2 - Set Faction 35"),
(@ENTRY,0,2,0,0,0,100,0,2000,2000,4000,4000,11,6660,2,0,0,0,0,2,0,0,0,0,0,0,0,"Horizon Scout Crewman - In Combat - Cast 'Shoot'");
-- 
DELETE FROM `creature_text` WHERE `entry`=18209;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(18209, 0, 0, 'It''s an ambush! Defend yourself!', 12, 0, 100, 0, 0, 0, 15044, 0, 'Kurenai Captive'),
(18209, 1, 0, 'More of them coming! Watch out!', 12, 0, 100, 0, 0, 0, 15000, 0, 'Kurenai Captive'),
(18209, 2, 0, 'Ride the lightning, filth!', 12, 1, 100, 0, 0, 0, 15006, 0, 'Kurenai Captive'),
(18209, 3, 0, 'We are surrounded!', 14, 0, 100, 0, 0, 0, 15047, 0, 'Kurenai Captive'),
(18209, 4, 0, 'Up ahead is the road to Telaar. We will split up when we reach the fork as they will surely send more Murkblood after us. Hopefully one of us makes it back to Telaar alive.', 14, 7, 100, 0, 0, 0, 15048, 0, 'Kurenai Captive');
-- Portal Kruul SAI
SET @ENTRY := 184289;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,11,34386,0,0,0,0,0,19,19652,10,0,0,0,0,0,"Portal Kruul - On Gameobject State Changed - Cast spell 'Hellfire Fire'");
-- Portal Xilus SAI
SET @ENTRY := 184290;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,11,34386,0,0,0,0,0,19,19717,10,0,0,0,0,0,"Portal Xilus - On Gameobject State Changed - Cast spell 'Hellfire Fire'");
-- Portal Grimh SAI
SET @ENTRY := 184414;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,11,34386,0,0,0,0,0,19,19652,10,0,0,0,0,0,"Portal Grimh - On Gameobject State Changed - Cast spell 'Hellfire Fire'");
-- Portal Kaalez SAI
SET @ENTRY := 184415;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,1,0,0,70,0,100,0,2,0,0,0,11,34386,0,0,0,0,0,19,19717,10,0,0,0,0,0,"Portal Kaalez - On Gameobject State Changed - Cast spell 'Hellfire Fire'");
--
UPDATE `creature_template` SET `faction` = 1576 WHERE `entry` = 8564;
-- Azure Spellweaver SAI
SET @ENTRY := 31403;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,34447,64,0,0,0,0,2,0,0,0,0,0,0,0,"Azure Spellweaver - Combat CMC - Cast 'Arcane Missiles'");

-- Gatekeeper Melindra SAI
SET @ENTRY := 32373;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,1000,1000,1800000,1800000,11,12544,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gatekeeper Melindra - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,17290,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gatekeeper Melindra - Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,0,0,100,0,8000,11000,19000,25000,11,12738,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gatekeeper Melindra - In Combat - Cast 'Amplify Damage'");

-- Syreian the Bonecarver SAI
SET @ENTRY := 32438;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,3,4,0,100,1,0,0,0,0,11,38952,64,0,0,0,0,2,0,0,0,0,0,0,0,"Syreian the Bonecarver - On Aggro CMC - Cast 'Frost Arrow' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,2300,3900,2300,3900,11,50092,64,0,0,0,0,2,0,0,0,0,0,0,0,"Syreian the Bonecarver - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,2,0,0,0,100,0,12000,15000,11000,14000,11,38952,1,0,0,0,0,2,0,0,0,0,0,0,0,"Syreian the Bonecarver - In Combat - Cast 'Frost Arrow'"),
(@ENTRY,0,3,0,9,0,100,0,0,5,12000,16000,11,47168,1,0,0,0,0,2,0,0,0,0,0,0,0,"Syreian the Bonecarver - Within 0-5 Range - Cast 'Improved Wing Clip'");

-- Unbound Seer SAI
SET @ENTRY := 33422;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,38204,64,0,0,0,0,2,0,0,0,0,0,0,0,"Unbound Seer - Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,9000,12000,12000,15000,11,58667,33,0,0,0,0,5,0,0,0,0,0,0,0,"Unbound Seer - In Combat - Cast 'Ley Curse'");

-- Mistcaller Yngvar SAI
SET @ENTRY := 34965;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,1000,1000,0,0,11,45658,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mistcaller Yngvar - Out of Combat - Cast 'Call of the Mist'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mistcaller Yngvar - Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,6000,9000,12000,17000,11,49816,0,0,0,0,0,5,0,0,0,0,0,0,0,"Mistcaller Yngvar - Combat - Cast 'Mist of Strangulation'"),
(@ENTRY,0,3,0,2,0,100,0,0,30,120000,120000,11,49871,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mistcaller Yngvar - 0-30% Health - Cast 'Rune of Retribution'");

-- Drottinn Hrothgar SAI
SET @ENTRY := 34980;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,11,66625,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drottinn Hrothgar - Out of Combat - Cast 'Cloud Aura' (No Repeat)"),
(@ENTRY,0,1,0,1,0,100,1,1500,1500,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Drottinn Hrothgar - Out of Combat - Say Line 0 (No Repeat)"),
(@ENTRY,0,2,0,9,0,100,0,0,5,5000,7000,11,15496,0,0,0,0,0,2,0,0,0,0,0,0,0,"Drottinn Hrothgar - Within 0-5 Range - Cast 'Cleave'"),
(@ENTRY,0,3,0,0,0,100,0,12000,16000,15000,21000,11,67038,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drottinn Hrothgar - In Combat - Cast 'Smash'");

-- Ornolf the Scarred SAI
SET @ENTRY := 35012;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,1000,1000,8000,11000,11,38557,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ornolf the Scarred - Combat - Cast 'Throw'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,7000,11,43410,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ornolf the Scarred - Within 0-5 Range - Cast 'Chop'"),
(@ENTRY,0,2,0,0,0,100,0,8000,11000,8000,11000,11,67037,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ornolf the Scarred - Combat - Cast 'Whirlwind'"),
(@ENTRY,0,3,0,2,0,100,0,0,30,40000,40000,11,3019,1,0,0,0,0,1,0,0,0,0,0,0,0,"Ornolf the Scarred - 0-30% Health - Cast 'Frenzy'");

-- Kul the Reckless SAI
SET @ENTRY := 34956;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,8,0,100,0,66531,0,0,0,80,3495600,0,0,0,0,0,1,0,0,0,0,0,0,0,"Kul the Reckless - On Spellhit 'Open Black Cage' - Run Script");

-- Kvaldir Harpooner SAI
SET @ENTRY := 34907;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,66489,64,0,0,0,0,2,0,0,0,0,0,0,0,"Kvaldir Harpooner - Combat CMC - Cast 'Spear Throw'");

-- Deep Jormungar SAI
SET @ENTRY := 34920;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,1,0,100,1,0,0,500,500,11,56503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Out of Combat - Cast 'Submerge' (No Repeat)"),
(@ENTRY,0,1,0,61,0,100,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Out of Combat - Set Flags Not Attackable & Not Selectable (No Repeat)"),
(@ENTRY,0,2,3,4,0,100,1,0,0,0,0,28,56503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Aggro - Remove Aura 'Submerge' (No Repeat)"),
(@ENTRY,0,3,4,61,0,100,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Aggro - Remove Aura 'Tunnel Bore Passive' (No Repeat)"),
(@ENTRY,0,4,5,61,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Aggro - Cast 'Stand' (No Repeat)"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Aggro - Disable Combat Movement (No Repeat)"),
(@ENTRY,0,6,0,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Aggro - Remove Flags Not Attackable & Not Selectable (No Repeat)"),
(@ENTRY,0,7,0,0,0,100,0,1000,1000,3000,5000,11,61597,64,0,0,0,0,2,0,0,0,0,0,0,0,"Deep Jormungar - In Combat CMC - Cast 'Acid Spit'"),
(@ENTRY,0,8,0,0,0,100,0,11000,16000,15000,20000,11,61598,1,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - In Combat - Cast 'Sweep'"),
(@ENTRY,0,9,0,0,0,100,0,10000,20000,45000,50000,11,32738,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deep Jormungar - In Combat - Cast 'Bore'"),
(@ENTRY,0,10,11,9,0,100,1,30,60,0,0,11,56503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 30-60 Range - Cast 'Submerge' (No Repeat)"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 30-60 Range - Cast 'Tunnel Bore Passive' (No Repeat)"),
(@ENTRY,0,12,13,9,0,100,1,0,8,0,0,28,56503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 0-8 Range - Remove Aura 'Submerge' (No Repeat)"),
(@ENTRY,0,13,14,61,0,100,0,0,0,0,0,28,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 0-8 Range - Remove Aura 'Tunnel Bore Passive' (No Repeat)"),
(@ENTRY,0,14,15,61,0,100,0,0,0,0,0,11,37752,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 0-8 Range - Cast 'Stand' (No Repeat)"),
(@ENTRY,0,15,16,61,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 0-8 Range - Disable Combat Movement (No Repeat)"),
(@ENTRY,0,16,0,61,0,100,0,0,0,0,0,19,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - Within 0-8 Range - Remove Flags Not Attackable & Not Selectable (No Repeat)"),
(@ENTRY,0,17,18,7,0,100,1,0,0,0,0,11,56503,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Evade - Cast 'Submerge' (No Repeat)"),
(@ENTRY,0,18,19,61,0,100,0,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Evade - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,19,20,61,0,100,0,0,0,0,0,11,29147,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Evade - Cast 'Tunnel Bore Passive' (No Repeat)"),
(@ENTRY,0,20,21,61,0,100,0,0,0,0,0,14,0,100,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Evade - Set All Threat 0-100 (No Repeat)"),
(@ENTRY,0,21,0,61,0,100,0,0,0,0,0,18,33554434,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deep Jormungar - On Evade - Set Flags Not Attackable & Not Selectable (No Repeat)");
-- Gnarlhide SAI
SET @ENTRY := 30003;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,38391,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gnarlhide - Combat CMC - Cast 'Scorch'"),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,20000,25000,11,60290,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gnarlhide - Combat - Cast 'Blast Wave'"),
(@ENTRY,0,2,0,0,0,100,0,9000,12000,19000,24000,11,35250,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gnarlhide - Combat - Cast 'Dragon's Breath'"),
(@ENTRY,0,3,0,0,0,100,0,5000,8000,9000,12000,11,20832,0,0,0,0,0,5,0,0,0,0,0,0,0,"Gnarlhide - Combat - Cast 'Fire Blast'");

-- Yulda the Stormspeaker SAI
SET @ENTRY := 30046;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,32018,64,0,0,0,0,2,0,0,0,0,0,0,0,"Yulda the Stormspeaker - Combat CMC - Cast 'Call Lightning'"),
(@ENTRY,0,1,0,0,0,100,0,9000,12000,15000,18000,11,55087,0,0,0,0,0,2,0,0,0,0,0,0,0,"Yulda the Stormspeaker - Combat - Cast 'Typhoon'");

-- Sigrid Iceborn SAI
SET @ENTRY := 30086;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,4100,11,61168,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sigrid Iceborn - Combat CMC - Cast 'Throw'"),
(@ENTRY,0,1,0,0,0,100,0,3000,7000,13000,16700,11,61164,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sigrid Iceborn - Combat - Cast 'Impale'"),
(@ENTRY,0,2,0,13,0,100,0,12000,18000,0,0,11,57635,0,0,0,0,0,6,1,0,0,0,0,0,0,"Sigrid Iceborn - Target Casting - Cast 'Disengage'"),
(@ENTRY,0,3,0,1,0,100,0,500,1000,600000,600000,11,61165,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - Out of Combat - Cast 'Frostbite Weapon'"),
(@ENTRY,0,4,5,62,0,100,0,9870,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sigrid Iceborn - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - On Gossip Option 0 Selected - Set Invincibility Hp 1"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - On Gossip Option 0 Selected - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - On Gossip Option 0 Selected - Set Faction 14"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,9,10,2,0,100,0,0,1,0,0,33,30086,0,0,0,0,0,7,0,0,0,0,0,0,0,"Sigrid Iceborn - Between 0-1% Health - Quest Credit 'Eliminate the Competition'"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - Between 0-1% Health - Set Faction 0"),
(@ENTRY,0,11,12,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - Between 0-1% Health - Say Line 1"),
(@ENTRY,0,12,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Sigrid Iceborn - Between 0-1% Health - Evade");

-- Twilight Worshipper SAI
SET @ENTRY := 30111;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,17290,64,0,0,0,0,2,0,0,0,0,0,0,0,"Twilight Worshipper - Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,5000,8000,11,61567,64,0,0,0,0,5,0,0,0,0,0,0,0,"Twilight Worshipper - Combat CMC - Cast 'Fireball' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,12000,14000,17000,11,56858,1,0,0,0,0,5,0,0,0,0,0,0,0,"Twilight Worshipper - Combat - Cast 'Flamestrike' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,9000,12000,14000,17000,11,61568,1,0,0,0,0,5,0,0,0,0,0,0,0,"Twilight Worshipper - Combat - Cast 'Flamestrike' (Heroic Dungeon)");

-- Onu'zun SAI
SET @ENTRY := 30180;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,500,1000,600000,600000,11,18100,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - Out of Combat - Cast 'Frost Armor'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,3400,4700,11,15242,64,0,0,0,0,2,0,0,0,0,0,0,0,"Onu'zun - Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,0,0,100,0,5000,5000,14500,17800,11,15244,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onu'zun - Combat - Cast 'Cone of Cold'"),
(@ENTRY,0,3,0,13,0,100,0,12000,18000,0,0,11,15122,0,0,0,0,0,6,1,0,0,0,0,0,0,"Onu'zun - Target Casting - Cast 'Counterspell'"),
(@ENTRY,0,4,5,62,0,100,0,9878,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onu'zun - On Gossip Option 0 Selected - Close Gossip"),
(@ENTRY,0,5,6,61,0,100,0,0,0,0,0,42,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - On Gossip Option 0 Selected - Set Invincibility Hp 1"),
(@ENTRY,0,6,7,61,0,100,0,0,0,0,0,19,768,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - On Gossip Option 0 Selected - Remove Flags Immune To Players & Immune To NPC's"),
(@ENTRY,0,7,8,61,0,100,0,0,0,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - On Gossip Option 0 Selected - Set Faction 14"),
(@ENTRY,0,8,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - On Gossip Option 0 Selected - Say Line 0"),
(@ENTRY,0,9,10,2,0,100,0,0,1,0,0,33,30180,0,0,0,0,0,7,0,0,0,0,0,0,0,"Onu'zun - Between 0-1% Health - Quest Credit 'Eliminate the Competition'"),
(@ENTRY,0,10,11,61,0,100,0,0,0,0,0,2,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - Between 0-1% Health - Set Faction 0"),
(@ENTRY,0,11,0,61,0,100,0,0,0,0,0,24,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onu'zun - Between 0-1% Health - Evade");

-- Sunreaver Scout SAI
SET @ENTRY := 30233;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Scout - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,8000,13000,11,17174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Scout - Within 5-30 Range - Cast 'Concussive Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,15000,25000,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Scout - Within 5-30 Range - Cast 'Multi-Shot'");

-- Silver Covenant Scout SAI
SET @ENTRY := 30238;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Scout - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,8000,13000,11,17174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Scout - Within 5-30 Range - Cast 'Concussive Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,15000,25000,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Scout - Within 5-30 Range - Cast 'Multi-Shot'");

-- Silver Covenant Horseman SAI
SET @ENTRY := 30263;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Horseman - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,8000,13000,11,17174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Horseman - Within 5-30 Range - Cast 'Concussive Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,15000,25000,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Silver Covenant Horseman - Within 5-30 Range - Cast 'Multi-Shot'");

-- Sunreaver Hawkrider SAI
SET @ENTRY := 30265;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Hawkrider - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,8000,13000,11,17174,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Hawkrider - Within 5-30 Range - Cast 'Concussive Shot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,15000,25000,11,14443,0,0,0,0,0,2,0,0,0,0,0,0,0,"Sunreaver Hawkrider - Within 5-30 Range - Cast 'Multi-Shot'");

-- Ahn'kahar Spell Flinger SAI
SET @ENTRY := 30278;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,23000,27000,11,56698,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ahn'kahar Spell Flinger - Combat CMC - Cast 'Shadow Blast' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,23000,27000,11,59102,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ahn'kahar Spell Flinger - Combat CMC - Cast 'Shadow Blast' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,10000,14000,13000,16000,11,56702,65,0,0,0,0,1,0,0,0,0,0,0,0,"Ahn'kahar Spell Flinger - Combat CMC - Cast 'Shadow Sickle' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,10000,14000,13000,16000,11,59103,65,0,0,0,0,1,0,0,0,0,0,0,0,"Ahn'kahar Spell Flinger - Combat CMC - Cast 'Shadow Sickle' (Heroic Dungeon)");

-- Eye of Taldaram SAI
SET @ENTRY := 30285;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,17439,64,0,0,0,0,2,0,0,0,0,0,0,0,"Eye of Taldaram - Combat CMC - Cast 'Shadow Shock' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,17289,64,0,0,0,0,2,0,0,0,0,0,0,0,"Eye of Taldaram - Combat CMC - Cast 'Shadow Shock' (Heroic Dungeon)"),
(@ENTRY,0,2,0,13,0,100,3,0,0,0,0,11,56730,0,0,0,0,0,7,0,0,0,0,0,0,0,"Eye of Taldaram - Target Casting - Cast 'Dark Counterspell' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,3,0,13,0,100,5,0,0,0,0,11,59111,0,0,0,0,0,7,0,0,0,0,0,0,0,"Eye of Taldaram - Target Casting - Cast 'Dark Counterspell' (No Repeat) (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,6,15000,19000,23000,27000,11,56728,1,0,0,0,0,2,0,0,0,0,0,0,0,"Eye of Taldaram - Combat - Cast 'Eyes in the Dark' (Dungeon)"),
(@ENTRY,0,5,0,6,0,100,3,0,0,0,0,11,56733,7,0,0,0,0,2,0,0,0,0,0,0,0,"Eye of Taldaram - Just Died - Cast 'Shadowfury' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,6,0,6,0,100,5,0,0,0,0,11,61463,7,0,0,0,0,2,0,0,0,0,0,0,0,"Eye of Taldaram - Just Died - Cast 'Shadowfury' (No Repeat) (Heroic Dungeon)");

-- Frostbringer SAI
SET @ENTRY := 30286;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,57825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Frostbringer - Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,61461,64,0,0,0,0,2,0,0,0,0,0,0,0,"Frostbringer - Combat CMC - Cast 'Frostbolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,12000,15000,18000,11,15063,1,0,0,0,0,1,0,0,0,0,0,0,0,"Frostbringer - Combat - Cast 'Frost Nova' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,9000,12000,15000,18000,11,61462,1,0,0,0,0,1,0,0,0,0,0,0,0,"Frostbringer - Combat - Cast 'Frost Nova' (Heroic Dungeon)"),
(@ENTRY,0,4,0,2,0,100,6,0,30,120000,130000,11,56716,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frostbringer - 0-30% Health - Cast 'Icy Winds' (Dungeon)");

-- Stormforged Amplifier SAI
SET @ENTRY := 30591;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Stormforged Amplifier - Combat CMC - Cast 'Lightning Bolt'");

-- Veteran Mage Hunter SAI
SET @ENTRY := 30665;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,0,0,11,58040,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veteran Mage Hunter - Out of Combat - Cast 'Destroy Door Seal' (Dungeon)"),
(@ENTRY,0,1,0,4,0,100,6,0,0,0,0,30,1,2,3,0,0,0,1,0,0,0,0,0,0,0,"Veteran Mage Hunter - Aggro - Set Random Phase(1, 2, 3) (Dungeon)"),
(@ENTRY,0,2,0,0,1,100,2,0,0,2400,3800,11,15043,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Frostbolt' (Phase 1) (Normal Dungeon)"),
(@ENTRY,0,3,0,0,1,100,4,0,0,2400,3800,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Frostbolt' (Phase 1) (Heroic Dungeon)"),
(@ENTRY,0,4,0,9,2,100,2,0,0,2400,3800,11,12466,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Fireball' (Phase 2) (Normal Dungeon)"),
(@ENTRY,0,5,0,9,2,100,4,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Fireball' (Phase 2) (Heroic Dungeon)"),
(@ENTRY,0,6,0,9,4,100,2,0,0,2400,3800,11,13748,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Arcane Bolt' (Phase 3) (Normal Dungeon)"),
(@ENTRY,0,7,0,9,4,100,4,0,0,2400,3800,11,20829,64,0,0,0,0,2,0,0,0,0,0,0,0,"Veteran Mage Hunter - Combat CMC - Cast 'Arcane Bolt' (Phase 3) (Heroic Dungeon)"),
(@ENTRY,0,8,0,2,0,100,7,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Veteran Mage Hunter - Between 0-15% Health - Flee For Assist (No Repeat) (Dungeon)");

-- Portal Keeper SAI
SET @ENTRY := 30695;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,6000,8000,11,58531,64,0,0,0,0,2,0,0,0,0,0,0,0,"Portal Keeper - Combat CMC - Cast 'Arcane Missiles' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,6000,8000,11,61593,64,0,0,0,0,2,0,0,0,0,0,0,0,"Portal Keeper - Combat CMC - Cast 'Arcane Missiles' (Heroic Dungeon)"),
(@ENTRY,0,2,0,9,0,100,2,0,8,13000,19000,11,58532,1,0,0,0,0,1,0,0,0,0,0,0,0,"Portal Keeper - 0-8 Range - Cast 'Frostbolt Volley' (Normal Dungeon)"),
(@ENTRY,0,3,0,9,0,100,4,0,8,13000,19000,11,61594,1,0,0,0,0,1,0,0,0,0,0,0,0,"Portal Keeper - 0-8 Range - Cast 'Frostbolt Volley' (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,6,0,8,9000,14000,11,58534,1,0,0,0,0,6,0,0,0,0,0,0,0,"Portal Keeper - Combat - Cast 'Deep Freeze' (Dungeon)");

-- Nesingwary Game Warden SAI
SET @ENTRY := 30737;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,16100,64,0,0,0,0,2,0,0,0,0,0,0,0,"Nesingwary Game Warden - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,0,20,9000,13000,11,6533,1,0,0,0,0,2,0,0,0,0,0,0,0,"Nesingwary Game Warden - 0-20 Range - Cast 'Net'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,8000,10000,11,31942,0,0,0,0,0,5,0,0,0,0,0,0,0,"Nesingwary Game Warden - 5-30 Range - Cast 'Multi-Shot'"),
(@ENTRY,0,3,0,9,0,100,0,0,45,7000,9000,11,23337,1,0,0,0,0,6,0,0,0,0,0,0,0,"Nesingwary Game Warden - 0-45 Range - Cast 'Shoot'");

-- Unbound Dryad SAI
SET @ENTRY := 30860;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,55217,64,0,0,0,0,2,0,0,0,0,0,0,0,"Unbound Dryad - Combat CMC - Cast 'Throw Spear'"),
(@ENTRY,0,1,0,0,0,100,0,3000,9000,9000,13000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Unbound Dryad - In Combat - Cast 'Strike'");

-- Shandaral Hunter Spirit SAI
SET @ENTRY := 30864;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Shandaral Hunter Spirit - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,9000,14000,11,54615,1,0,0,0,0,2,0,0,0,0,0,0,0,"Shandaral Hunter Spirit - Combat - Cast 'Aimed Shot'"),
(@ENTRY,0,2,0,0,0,100,0,9000,15000,15000,22000,11,47168,0,0,0,0,0,5,0,0,0,0,0,0,0,"Shandaral Hunter Spirit - Combat - Cast 'Improved Wing Clip'");

-- Unbound Corrupter SAI
SET @ENTRY := 30868;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,5400,11,38204,64,0,0,0,0,2,0,0,0,0,0,0,0,"Unbound Corrupter - Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,20000,30000,45000,60000,11,58667,1,0,0,0,0,2,0,0,0,0,0,0,0,"Unbound Corrupter - Combat - Cast 'Ley Curse'"),
(@ENTRY,0,2,0,2,0,100,0,0,30,30000,35000,11,58270,1,0,0,0,0,1,0,0,0,0,0,0,0,"Unbound Corrupter - 0-30% Health - Cast 'Transferred Power'");

-- Portal Keeper SAI
SET @ENTRY := 30893;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,45,6000,8000,11,58536,64,0,0,0,0,2,0,0,0,0,0,0,0,"Portal Keeper - Combat CMC - Cast 'Arcane Volley' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,45,6000,8000,11,61591,64,0,0,0,0,2,0,0,0,0,0,0,0,"Portal Keeper - Combat CMC - Cast 'Arcane Volley' (Heroic Dungeon)"),
(@ENTRY,0,2,0,9,0,100,2,0,45,13000,19000,11,58535,0,0,0,0,0,5,0,0,0,0,0,0,0,"Portal Keeper - 0-45 Range - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,3,0,9,0,100,4,0,45,13000,19000,11,61590,0,0,0,0,0,5,0,0,0,0,0,0,0,"Portal Keeper - 0-45 Range - Cast 'Frostbolt' (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,6,0,8,9000,14000,11,58537,1,0,0,0,0,6,0,0,0,0,0,0,0,"Portal Keeper - Combat - Cast 'Polymorph' (Dungeon)");

-- Azure Binder SAI
SET @ENTRY := 31007;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,0,0,3400,4800,11,58456,64,0,0,0,0,2,0,0,0,0,0,0,0,"Azure Binder - Combat CMC - Cast 'Arcane Barrage' (Dungeon)"),
(@ENTRY,0,1,0,9,0,100,2,0,8,9000,15000,11,58455,1,0,0,0,0,1,0,0,0,0,0,0,0,"Azure Binder - 0-8 Range - Cast 'Arcane Explosion' (Normal Dungeon)"),
(@ENTRY,0,2,0,9,0,100,4,0,8,9000,15000,11,59257,1,0,0,0,0,1,0,0,0,0,0,0,0,"Azure Binder - 0-8 Range - Cast 'Arcane Blast' (Heroic Dungeon)");
-- Spirit of Koosu SAI
SET @ENTRY := 29034;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3500,4100,11,21971,64,0,0,0,0,2,0,0,0,0,0,0,0,"Spirit of Koosu - Combat CMC - Cast 'Poison Bolt'");

-- Anub'ar Necromancer SAI
SET @ENTRY := 29064;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,0,0,4000,6000,11,53333,64,0,0,0,0,2,0,0,0,0,0,0,0,"Anub'ar Necromancer - Combat CMC - Cast 'Shadow Bolt' (Dungeon)"),
(@ENTRY,0,1,0,0,0,100,6,14000,17000,23000,27000,11,53334,1,0,0,0,0,1,0,0,0,0,0,0,0,"Anub'ar Necromancer - Combat - Cast 'Animate Bones' (Dungeon)");

-- Anub'ar Necromancer SAI
SET @ENTRY := 29098;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,0,0,4000,6000,11,53333,64,0,0,0,0,2,0,0,0,0,0,0,0,"Anub'ar Necromancer - Combat CMC - Cast 'Shadow Bolt' (Dungeon)"),
(@ENTRY,0,1,0,0,0,100,6,14000,17000,23000,27000,11,53334,1,0,0,0,0,1,0,0,0,0,0,0,0,"Anub'ar Necromancer - Combat - Cast 'Animate Bones' (Dungeon)");


-- Anub'ar Prime Guard SAI
SET @ENTRY := 29128;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,10000,13000,11,54309,64,0,0,0,0,5,0,0,0,0,0,0,0,"Anub'ar Prime Guard - Combat CMC - Cast 'Mark of Darkness' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,10000,13000,11,59352,64,0,0,0,0,5,0,0,0,0,0,0,0,"Anub'ar Prime Guard - Combat CMC - Cast 'Mark of Darkness' (Heroic Dungeon)"),
(@ENTRY,0,2,0,9,0,100,7,0,5,0,0,11,54314,33,0,0,0,0,1,0,0,0,0,0,0,0,"Anub'ar Prime Guard - 0-5 Range - Cast 'Drain Power' (No Repeat) (Dungeon)");


-- Lost Drakkari Spirit SAI
SET @ENTRY := 29129;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,23,0,100,0,17327,0,2000,2000,11,17327,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lost Drakkari Spirit - On Has Aura 'Spirit Particles' - Cast 'Spirit Particles'"),
(@ENTRY,0,1,0,0,0,100,0,0,0,1500,1500,11,37361,65,0,0,0,0,2,0,0,0,0,0,0,0,"Lost Drakkari Spirit - Combat CMC - Cast 'Arcane Bolt'"),
(@ENTRY,0,2,0,0,0,100,0,10000,16000,15000,18000,11,24050,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lost Drakkari Spirit - In Combat - Cast 'Spirit Burst'");

-- Onslaught Harbor Guard SAI
SET @ENTRY := 29330;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Onslaught Harbor Guard - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,8000,8000,12000,14000,11,50750,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Harbor Guard - Combat - Cast 'Raven Heal'");

-- Sifreldar Runekeeper SAI
SET @ENTRY := 29331;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20792,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sifreldar Runekeeper - Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,1,0,2,0,100,1,0,30,15000,22000,11,52714,1,0,0,0,0,1,0,0,0,0,0,0,0,"Sifreldar Runekeeper - 0-30% Health - Cast 'Revitalizing Rune' (No Repeat)");

-- Onslaught Raven Bishop SAI
SET @ENTRY := 29338;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4700,11,50740,64,0,0,0,0,2,0,0,0,0,0,0,0,"Onslaught Raven Bishop - Combat CMC - Cast 'Raven Flock'"),
(@ENTRY,0,1,0,2,0,100,1,10,50,2000,8000,11,50750,0,0,0,0,0,2,0,0,0,0,0,0,0,"Onslaught Raven Bishop - 10-50% Health - Cast 'Raven Heal'  (No Repeat)");

-- Savage Hill Scavenger SAI
SET @ENTRY := 29404;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,5000,8000,11,50403,64,0,0,0,0,5,0,0,0,0,0,0,0,"Savage Hill Scavenger - Combat CMC - Cast 'Bone Toss'");

-- Savage Hill Mystic SAI
SET @ENTRY := 29622;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4400,5800,11,50273,64,0,0,0,0,2,0,0,0,0,0,0,0,"Savage Hill Mystic - Combat CMC - Cast 'Arcane Barrage'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Savage Hill Mystic - 0-15% Health - Flee For Assist");

-- Stormforged Tracker SAI
SET @ENTRY := 29652;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Stormforged Tracker - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,9000,12000,9000,12000,11,46982,1,0,0,0,0,5,0,0,0,0,0,0,0,"Stormforged Tracker - Combat - Cast 'Lightning Gun Shot'");

-- Spitting Cobra SAI
SET @ENTRY := 29774;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,12000,15000,11,32860,64,0,0,0,0,2,0,0,0,0,0,0,0,"Spitting Cobra - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,12000,15000,11,38378,64,0,0,0,0,2,0,0,0,0,0,0,0,"Spitting Cobra - Combat CMC - Cast 'Shadow Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,5000,10000,17000,20000,11,55703,64,0,0,0,0,2,0,0,0,0,0,0,0,"Spitting Cobra - Combat CMC - Cast 'Cobra Strike' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,5000,10000,17000,20000,11,59020,64,0,0,0,0,2,0,0,0,0,0,0,0,"Spitting Cobra - Combat CMC - Cast 'Cobra Strike' (Heroic Dungeon)");

-- Drakkari God Hunter SAI
SET @ENTRY := 29820;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,5000,11,35946,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,2300,5000,11,59146,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat CMC - Cast 'Shoot' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,7000,10000,12000,15000,11,55624,1,0,0,0,0,5,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat - Cast 'Arcane Shot' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,7000,10000,12000,15000,11,58973,1,0,0,0,0,5,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat - Cast 'Arcane Shot' (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,6,3000,5000,33000,37000,11,55798,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat - Cast 'Flare' (Dungeon)"),
(@ENTRY,0,5,0,0,0,100,6,18000,21000,19000,23000,11,55625,0,0,0,0,0,5,0,0,0,0,0,0,0,"Drakkari God Hunter - Combat - Cast 'Tranquillizing Shot' (Dungeon)"),
(@ENTRY,0,6,0,2,0,100,6,0,30,12000,15000,11,31567,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari God Hunter - 0-30% Health - Cast 'Deterrence' (Dungeon)");

-- Drakkari Fire Weaver SAI
SET @ENTRY := 29822;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,8000,9000,11,55659,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Fire Weaver - Combat CMC - Cast 'Lava Burst' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,8000,9000,11,58972,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Fire Weaver - Combat CMC - Cast 'Lava Burst' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,4000,7000,12000,15000,11,55613,65,0,0,0,0,5,0,0,0,0,0,0,0,"Drakkari Fire Weaver - Combat CMC - Cast 'Flame Shock' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,4000,7000,10000,14000,11,58971,65,0,0,0,0,5,0,0,0,0,0,0,0,"Drakkari Fire Weaver - Combat CMC - Cast 'Flame Shock' (Heroic Dungeon)"),
(@ENTRY,0,4,0,9,0,100,6,0,5,10000,16000,11,61362,1,0,0,0,0,1,0,0,0,0,0,0,0,"Drakkari Fire Weaver - 0-5 Range - Cast 'Blast Wave' (Dungeon)");

-- Drakkari Battle Rider SAI
SET @ENTRY := 29836;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,5000,7000,11,55348,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Battle Rider - Combat CMC - Cast 'Throw' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,5000,7000,11,58966,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Battle Rider - Combat CMC - Cast 'Throw' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,12000,15000,16000,22000,11,55521,33,0,0,0,0,6,0,0,0,0,0,0,0,"Drakkari Battle Rider - Combat - Cast 'Poisoned Spear' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,12000,15000,16000,22000,11,58967,33,0,0,0,0,6,0,0,0,0,0,0,0,"Drakkari Battle Rider - Combat - Cast 'Poisoned Spear' (Heroic Dungeon)");

-- Mildred the Cruel SAI
SET @ENTRY := 29885;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,30,3400,4800,11,15587,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mildred the Cruel - Combat CMC - Cast 'Mind Blast'"),
(@ENTRY,0,1,0,0,0,100,0,7000,11000,12000,15000,11,14032,0,0,0,0,0,5,0,0,0,0,0,0,0,"Mildred the Cruel - Combat - Cast 'Shadow Word: Pain'"),
(@ENTRY,0,2,0,2,0,100,0,0,15,10000,15000,11,47697,1,0,0,0,0,5,0,0,0,0,0,0,0,"Mildred the Cruel - 0-15% Health - Cast 'Shadow Word: Death'");

-- K3 Bruiser SAI
SET @ENTRY := 29910;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,1,0,20,11000,16000,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,"K3 Bruiser - Within 0-20 Range - Cast 'Net' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,23337,64,0,0,0,0,2,0,0,0,0,0,0,0,"K3 Bruiser - Combat CMC - Cast 'Shoot'");

-- Earthen Stoneguard SAI
SET @ENTRY := 29960;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,1,0,20,11000,16000,11,12024,1,0,0,0,0,2,0,0,0,0,0,0,0,"Earthen Stoneguard - Within 0-20 Range - Cast 'Net' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,23337,64,0,0,0,0,2,0,0,0,0,0,0,0,"Earthen Stoneguard - Combat CMC - Cast 'Shoot'");

-- Iron Dwarf Magus SAI
SET @ENTRY := 29979;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,30,3400,4800,11,12058,64,0,0,0,0,2,0,0,0,0,0,0,0,"Iron Dwarf Magus - Combat CMC - Cast 'Chain Lightning'");
-- Wastes Scavenger SAI
SET @ENTRY := 28005;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3000,5000,11,50403,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wastes Scavenger - Combat CMC - Cast 'Bone Toss'"),
(@ENTRY,0,1,0,8,0,100,0,50430,0,0,0,80,2800500,2,0,0,0,0,1,0,0,0,0,0,0,0,"Wastes Scavenger - On spellhit Devour Ghoul - Run script");

-- Emperor Cobra SAI
SET @ENTRY := 28011;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,32093,32,0,0,0,0,2,0,0,0,0,0,0,0,"Emperor Cobra - Combat CMC - Cast 'Poison Spit'");

-- Rainspeaker Oracle SAI
SET @ENTRY := 28025;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,6000,8000,11,15305,64,0,0,0,0,2,0,0,0,0,0,0,0,"Rainspeaker Oracle - Combat CMC - Cast 'Chain Lightning'"),
(@ENTRY,0,1,0,0,0,100,0,3000,6000,12000,15000,11,54919,1,0,0,0,0,5,0,0,0,0,0,0,0,"Rainspeaker Oracle - Combat - Cast 'Warped Armor'");

-- Frenzyheart Tracker SAI
SET @ENTRY := 28077;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,1,54,0,100,0,0,0,0,0,66,0,0,0,0,0,0,21,50,0,0,0,0,0,0,"Frenzyheart Tracker - On Just Summoned  - Set Orientation"),
(@ENTRY,0,1,2,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frenzyheart Tracker - On Just Summoned  - Say Line 1"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,41,8000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frenzyheart Tracker - On Just Summoned  - Despawn After 8 seconds"),
(@ENTRY,0,3,0,0,0,100,0,0,0,3000,5000,11,22907,64,0,0,0,0,2,0,0,0,0,0,0,0,"Frenzyheart Tracker - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,4,0,0,0,100,0,10000,14000,60000,65000,11,53432,1,0,0,0,0,1,0,0,0,0,0,0,0,"Frenzyheart Tracker - Combat - Cast 'Bear Trap'");

-- Frenzyheart Hunter SAI
SET @ENTRY := 28079;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,15547,64,0,0,0,0,2,0,0,0,0,0,0,0,"Frenzyheart Hunter - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,8000,11000,12000,15000,11,52270,1,0,0,0,0,5,0,0,0,0,0,0,0,"Frenzyheart Hunter - Combat - Cast 'Multi-Shot'");

-- Frenzyheart Scavenger SAI
SET @ENTRY := 28081;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,54617,64,0,0,0,0,2,0,0,0,0,0,0,0,"Frenzyheart Scavenger - Combat CMC - Cast 'Throw Spear'");

-- Sparktouched Oracle SAI
SET @ENTRY := 28112;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,54916,64,0,0,0,0,2,0,0,0,0,0,0,0,"Sparktouched Oracle - Combat CMC - Cast 'Lightning Burst'"),
(@ENTRY,0,1,0,9,0,100,0,0,30,9000,12000,11,12549,1,0,0,0,0,2,0,0,0,0,0,0,0,"Sparktouched Oracle - Within 0-30 Range - Cast 'Forked Lightning'");

-- Don Carlos SAI
SET @ENTRY := 28132;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,7,1000,1000,0,0,11,50736,1,0,0,0,0,1,0,0,0,0,0,0,0,"Don Carlos - Out of Combat - Cast 'Summon Guerrero' (No Repeat) (Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2300,5000,11,16100,64,0,0,0,0,2,0,0,0,0,0,0,0,"Don Carlos - Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,4,0,0,2300,5000,11,16496,64,0,0,0,0,2,0,0,0,0,0,0,0,"Don Carlos - Combat CMC - Cast 'Shoot' (Heroic Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,9000,14000,22000,26000,11,12024,1,0,0,0,0,5,0,0,0,0,0,0,0,"Don Carlos - In Combat - Cast 'Net' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,4,9000,14000,22000,26000,11,50762,1,0,0,0,0,5,0,0,0,0,0,0,0,"Don Carlos - In Combat - Cast 'Net' (Heroic Dungeon)");

-- Snowflake SAI
SET @ENTRY := 28153;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,50721,64,0,0,0,0,2,0,0,0,0,0,0,0,"Snowflake - Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,59280,64,0,0,0,0,2,0,0,0,0,0,0,0,"Snowflake - Combat CMC - Cast 'Frostbolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,7,5000,9000,0,0,11,44604,0,0,0,0,0,1,0,0,0,0,0,0,0,"Snowflake - In Combat - Cast 'Enchantment of Spell Haste' (No Repeat) (Dungeon)");

-- Dark Necromancer SAI
SET @ENTRY := 28200;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,5000,7000,11,15537,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Necromancer - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,5000,7000,11,61558,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Necromancer - Combat CMC - Cast 'Shadow Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,7000,11000,21000,25000,11,20812,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Necromancer - Combat - Cast 'Cripple' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,7000,11000,21000,25000,11,52498,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dark Necromancer - Combat - Cast 'Cripple' (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,14000,18000,15000,21000,11,58772,1,0,0,0,0,6,0,0,0,0,0,0,0,"Dark Necromancer - Combat - Cast 'Drain Mana' (Normal Dungeon)"),
(@ENTRY,0,5,0,0,0,100,4,14000,18000,15000,21000,11,58770,1,0,0,0,0,6,0,0,0,0,0,0,0,"Dark Necromancer - Combat - Cast 'Drain Mana' (Heroic Dungeon)");

-- Drakkari Water Binder SAI
SET @ENTRY := 28303;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Water Binder - Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,8000,16000,25000,30000,11,54399,1,0,0,0,0,2,0,0,0,0,0,0,0,"Drakkari Water Binder - Combat - Cast 'Water Bubble'");

-- Ymirjar Necromancer SAI
SET @ENTRY := 28368;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,5000,7000,11,51432,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ymirjar Necromancer - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,5000,7000,11,59254,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ymirjar Necromancer - Combat CMC - Cast 'Shadow Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,14000,18000,22000,11,49205,0,0,0,0,0,5,0,0,0,0,0,0,0,"Ymirjar Necromancer - Combat - Cast 'Shadow Bolt Volley' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,4,9000,14000,18000,22000,11,59255,0,0,0,0,0,5,0,0,0,0,0,0,0,"Ymirjar Necromancer - Combat - Cast 'Shadow Bolt Volley' (Heroic Dungeon)");

-- Har'koan Subduer SAI
SET @ENTRY := 28403;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2000,20000,40000,60000,80,2840300,2,0,0,0,0,1,0,0,0,0,0,0,0,"Har'koan Subduer - Out of Combat - Run Script"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2800,3500,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,"Har'koan Subduer - Combat CMC - Cast 'Frostbolt'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Har'koan Subduer - 0-15% Health - Flee For Assist (No Repeat)");

-- Dragonflayer Spiritualist SAI
SET @ENTRY := 28410;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,6,0,0,2400,3800,11,51587,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonflayer Spiritualist - Combat CMC - Cast 'Lightning Bolt' (Dungeon)"),
(@ENTRY,0,1,0,0,0,100,6,1500,4000,8000,10000,11,51588,1,0,0,0,0,2,0,0,0,0,0,0,0,"Dragonflayer Spiritualist - Combat - Cast 'Flame Shock' (Dungeon)"),
(@ENTRY,0,2,0,14,0,100,6,7000,100,7000,7000,11,51586,1,0,0,0,0,7,0,0,0,0,0,0,0,"Dragonflayer Spiritualist - Friendly At 7000 Health - Cast 'Healing Wave' (Dungeon)");

-- Hath'ar Broodmaster SAI
SET @ENTRY := 28412;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hath'ar Broodmaster - Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,3000,5000,15000,25000,11,54453,1,0,0,0,0,2,0,0,0,0,0,0,0,"Hath'ar Broodmaster - Combat - Cast 'Web Wrap'");

-- Hemet Nesingwary SAI
SET @ENTRY := 28451;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,51742,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hemet Nesingwary - Combat CMC - Cast 'Arcane Shot'");

-- Storming Vortex SAI
SET @ENTRY := 28547;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,53044,64,0,0,0,0,2,0,0,0,0,0,0,0,"Storming Vortex - Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,3400,4800,11,59169,64,0,0,0,0,2,0,0,0,0,0,0,0,"Storming Vortex - Combat CMC - Cast 'Lightning Bolt' (Heroic Dungeon)"),
(@ENTRY,0,2,0,9,0,100,6,0,5,9000,18000,11,60236,0,0,0,0,0,6,0,0,0,0,0,0,0,"Storming Vortex - Within 0-5 Range - Cast 'Cyclone' (Dungeon)");

-- Hardened Steel Skycaller SAI
SET @ENTRY := 28580;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,5000,11,16100,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,4,0,0,2300,5000,11,61515,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat CMC - Cast 'Shoot' (Heroic Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,9000,12000,15000,20000,11,52754,0,0,0,0,0,5,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat - Cast 'Impact Shot' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,7000,12000,12000,18000,11,52775,0,0,0,0,0,5,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat - Cast 'Impact Multi-Shot' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,4,9000,12000,15000,20000,11,59148,0,0,0,0,0,5,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat - Cast 'Impact Shot' (Heroic Dungeon)"),
(@ENTRY,0,5,0,0,0,100,4,7000,12000,12000,18000,11,59147,0,0,0,0,0,5,0,0,0,0,0,0,0,"Hardened Steel Skycaller - Combat - Cast 'Impact Multi-Shot' (Heroic Dungeon)"),
(@ENTRY,0,6,0,9,0,100,6,0,5,6000,9000,11,61507,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hardened Steel Skycaller - 0-5 Range - Cast 'Disengage' (Dungeon)");

-- Titanium Vanguard SAI
SET @ENTRY := 28838;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,3,0,0,0,0,11,53059,0,0,0,0,0,2,0,0,0,0,0,0,0,"Titanium Vanguard - On Aggro - Cast 'Poison Tipped Spear' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,9,0,100,2,5,30,14000,21000,11,53059,0,0,0,0,0,2,0,0,0,0,0,0,0,"Titanium Vanguard - Within 5-30 Range - Cast 'Poison Tipped Spear' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,5,0,0,0,0,11,59178,0,0,0,0,0,2,0,0,0,0,0,0,0,"Titanium Vanguard - On Aggro - Cast 'Poison Tipped Spear' (No Repeat) (Heroic Dungeon)"),
(@ENTRY,0,3,0,9,0,100,4,5,30,14000,21000,11,59178,0,0,0,0,0,2,0,0,0,0,0,0,0,"Titanium Vanguard - Within 5-30 Range - Cast 'Poison Tipped Spear' (Heroic Dungeon)"),
(@ENTRY,0,4,0,0,0,100,7,4000,6000,0,0,11,58619,0,0,0,0,0,2,0,0,0,0,0,0,0,"Titanium Vanguard - In Combat - Cast 'Charge' (No Repeat) (Dungeon)"),
(@ENTRY,0,5,0,0,0,100,6,12000,15000,12000,15000,11,58619,0,0,0,0,0,6,0,0,0,0,0,0,0,"Titanium Vanguard - In Combat - Cast 'Charge' (Dungeon)");
-- 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=17 AND `SourceEntry`=46104;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`NegativeCondition`,`ErrorType`,`ErrorTextId`,`ScriptName`,`Comment`) VALUES
(17,0,46104,0,0,31,1,3,25835,0,0,0,0,'','Nesingwary Trapper can be killed by the Trapped!');

DELETE FROM `creature_text` WHERE `entry` IN (25835) ;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(25835, 0, 0, 'It''s a miracle! The beast skinned itself!', 12, 0, 100, 0, 0, 0, 'Nesingwary Trapper', 25029),
(25835, 0, 1, 'Jackpot!', 12, 0, 100, 0, 0, 0, 'Nesingwary Trapper', 25034),
(25835, 0, 2, 'Stupid beasts!', 12, 0, 100, 0, 0, 0, 'Nesingwary Trapper', 25030),
(25835, 0, 3, 'This is the last one that I need for the set of Nesingwary steak knives!', 12, 0, 100, 0, 0, 0, 'Nesingwary Trapper', 25031);
-- Prince Raze SAI
SET @ENTRY := 10647;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,4700,5800,11,9053,64,0,0,0,0,2,0,0,0,0,0,0,0,"Prince Raze - Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,9,0,100,0,0,40,13000,16000,11,16570,1,0,0,0,0,5,0,0,0,0,0,0,0,"Prince Raze - 0-40 Range - Cast 'Charged Arcane Bolt'"),
(@ENTRY,0,2,0,9,0,100,0,0,8,12000,18000,11,11969,1,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Raze - 0-8 Range - Cast 'Fire Nova'"),
(@ENTRY,0,3,4,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Raze - 0-15% Health - Flee For Assist (No Repeat)"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,11,6925,1,0,0,0,0,1,0,0,0,0,0,0,0,"Prince Raze - 0-15% Health - Cast 'Gift of the Xavian' (No Repeat)");

-- Summoned Blackhand Dreadweaver SAI
SET @ENTRY := 10680;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Summoned Blackhand Dreadweaver - Out of Combat - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,6400,11,12739,64,0,0,0,0,2,0,0,0,0,0,0,0,"Summoned Blackhand Dreadweaver - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,14500,19200,27600,39600,11,7068,0,0,0,0,0,2,0,0,0,0,0,0,0,"Summoned Blackhand Dreadweaver - Combat - Cast 'Veil of Shadow' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,"Summoned Blackhand Dreadweaver - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,4,0,1,0,100,2,10000,10000,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Summoned Blackhand Dreadweaver - Out of Combat - Kill Self (No Repeat) (Normal Dungeon)");

-- Duggan Wildhammer SAI
SET @ENTRY := 10817;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,15547,64,0,0,0,0,2,0,0,0,0,0,0,0,"Duggan Wildhammer - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,6000,9000,11,15284,1,0,0,0,0,2,0,0,0,0,0,0,0,"Duggan Wildhammer - 0-5 Range - Cast 'Cleave'"),
(@ENTRY,0,2,0,2,0,100,0,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Duggan Wildhammer - 0-15% Health - Flee For Assist");

-- Death-Hunter Hawkspear SAI
SET @ENTRY := 10824;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,9,0,100,0,0,5,2300,3900,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ranger Lord Hawkspear - 0-5 Range - Cast 'Strike'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,7000,9000,11,11978,1,0,0,0,0,2,0,0,0,0,0,0,0,"Ranger Lord Hawkspear - 0-5 Range - Cast 'Kick'");

-- Deathspeaker Selendre SAI
SET @ENTRY := 10827;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3000,5000,11,12471,64,0,0,0,0,2,0,0,0,0,0,0,0,"Deathspeaker Selendre - Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,3000,5000,15000,18000,11,12889,1,0,0,0,0,2,0,0,0,0,0,0,0,"Deathspeaker Selendre - Combat - Cast 'Curse of Tongues'"),
(@ENTRY,0,2,0,2,0,100,0,0,30,12000,19000,11,17238,0,0,0,0,0,2,0,0,0,0,0,0,0,"Deathspeaker Selendre - 0-30% Health - Cast 'Drain Life'");

-- Risen Rifleman SAI
SET @ENTRY := 11054;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,17353,64,0,0,0,0,2,0,0,0,0,0,0,0,"Crimson Rifleman - Combat CMC - Cast 'Shoot' (Normal Dungeon)");

-- Ragefire Shaman SAI
SET @ENTRY := 11319;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ragefire Shaman - Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,74,0,100,3,0,40,30000,35000,11,11986,1,0,0,0,0,9,0,0,0,0,0,0,0,"Ragefire Shaman - On Friendly Between 0-40% Health - Cast 'Healing Wave' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Ragefire Shaman - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Searing Blade Warlock SAI
SET @ENTRY := 11324;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,3,1000,1000,0,0,11,12746,0,0,0,0,0,1,0,0,0,0,0,0,0,"Searing Blade Warlock - Out of Combat - Cast 'Summon Voidwalker' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,3400,6500,11,20791,64,0,0,0,0,2,0,0,0,0,0,0,0,"Searing Blade Warlock - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Searing Blade Warlock - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Gordok Ogre-Mage SAI
SET @ENTRY := 11443;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordok Ogre-Mage - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,2,0,0,0,100,0,5000,12000,35000,45000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Combat - Cast 'Bloodlust'"),
(@ENTRY,0,3,0,4,0,20,3,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordok Ogre-Mage - On Aggro - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,5,0,0,0,100,2,5000,12000,35000,45000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Combat - Cast 'Bloodlust' (Normal Dungeon)");

-- Gordok Mage-Lord SAI
SET @ENTRY := 11444;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,3,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordok Mage-Lord - On Aggro - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,15530,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Mage-Lord - Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,7000,14000,12000,15000,11,14145,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Mage-Lord - Combat - Cast 'Fire Blast' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,12000,17000,19000,25000,11,16102,0,0,0,0,0,5,0,0,0,0,0,0,0,"Gordok Mage-Lord - Combat - Cast 'Flamestrike' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,7000,9000,16000,20000,11,13323,1,0,0,0,0,6,0,0,0,0,0,0,0,"Gordok Mage-Lord - Combat - Cast 'Polymorph' (Normal Dungeon)"),
(@ENTRY,0,5,6,2,0,100,3,0,30,0,0,11,16170,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Mage-Lord - Between 0-30% Health - Cast 'Bloodlust' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,6,0,61,0,100,3,0,30,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Mage-Lord - Between 0-30% Health - Say Line 1 (No Repeat) (Normal Dungeon)");

-- Gordok Warlock SAI
SET @ENTRY := 11448;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Warlock - Out of Combat - Cast 'Demon Armor' (Normal Dungeon)"),
(@ENTRY,0,1,0,1,0,100,3,3000,3000,0,0,11,22865,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Warlock - Out of Combat - Cast 'Summon Doomguard' (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,2,0,4,0,20,3,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Warlock - On Aggro - Say Line 0 (No Repeat) (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,0,0,2400,3800,11,15232,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Warlock - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,9000,15000,26000,30000,11,17883,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Warlock - Combat - Cast 'Immolate' (Normal Dungeon)"),
(@ENTRY,0,5,0,0,0,100,2,5000,9000,20000,25000,11,13338,0,0,0,0,0,5,0,0,0,0,0,0,0,"Gordok Warlock - Combat - Cast 'Curse of Tongues' (Normal Dungeon)"),
(@ENTRY,0,6,0,0,0,100,2,7000,15000,20000,26000,11,8994,1,0,0,0,0,6,0,0,0,0,0,0,0,"Gordok Warlock - Combat - Cast 'Banish' (Normal Dungeon)");

-- Wildspawn Betrayer SAI
SET @ENTRY := 11454;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,16100,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Betrayer - Combat CMC - Cast 'Shoot' (Normal Dungeon)"),
(@ENTRY,0,1,0,9,0,100,2,5,30,7800,11400,11,18649,40,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Betrayer - 5-30 Range - Cast 'Shadow Shot' (Normal Dungeon)"),
(@ENTRY,0,2,0,9,0,100,2,5,30,9900,13600,11,7896,40,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Betrayer - 5-30 Range - Cast 'Exploding Shot' (Normal Dungeon)"),
(@ENTRY,0,3,0,9,0,100,2,0,5,6000,11000,11,11428,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Betrayer - 0-5 Range - Cast 'Knockdown' (Normal Dungeon)"),
(@ENTRY,0,4,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wildspawn Betrayer - Between 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Wildspawn Felsworn SAI
SET @ENTRY := 11455;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,12542,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wildspawn Felsworn - Out of Combat - Cast 'Fear' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,15537,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Felsworn - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,7000,12000,38000,45000,11,22417,1,0,0,0,0,1,0,0,0,0,0,0,0,"Wildspawn Felsworn - Combat - Cast 'Shadow Shield' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,1,100,2,11000,17000,23000,30000,11,15654,0,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Felsworn - Combat - Cast 'Shadow Word: Pain' (Normal Dungeon)"),
(@ENTRY,0,4,0,0,0,100,2,6000,10000,10000,15000,11,12542,1,0,0,0,0,5,0,0,0,0,0,0,0,"Wildspawn Felsworn - Combat - Cast 'Fear' (Normal Dungeon)");

-- Wildspawn Hellcaller SAI
SET @ENTRY := 11457;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,15228,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Hellcaller - Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,8000,14000,18000,25000,11,20754,3,0,0,0,0,2,0,0,0,0,0,0,0,"Wildspawn Hellcaller - Combat - Cast 'Rain of Fire' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wildspawn Hellcaller - 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Highborne Summoner SAI
SET @ENTRY := 11466;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2400,3800,11,12466,64,0,0,0,0,2,0,0,0,0,0,0,0,"Highborne Summoner - Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,8000,11000,9000,12000,11,13341,0,0,0,0,0,5,0,0,0,0,0,0,0,"Highborne Summoner - Combat - Cast 'Fire Blast' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,12000,16000,18000,22000,11,15063,1,0,0,0,0,1,0,0,0,0,0,0,0,"Highborne Summoner - Combat - Cast 'Frost Nova' (Normal Dungeon)");

-- Eldreth Apparition SAI
SET @ENTRY := 11471;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,1800000,1800000,11,18100,1,0,0,0,0,1,0,0,0,0,0,0,0,"Eldreth Apparition - Out of Combat - Cast 'Frost Armor' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,16799,64,0,0,0,0,2,0,0,0,0,0,0,0,"Eldreth Apparition - Combat CMC - Cast 'Frostbolt' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,7000,12000,20000,27500,11,22744,1,0,0,0,0,6,0,0,0,0,0,0,0,"Eldreth Apparition - Combat - Cast 'Chains of Ice' (Normal Dungeon)"),
(@ENTRY,0,3,0,0,0,100,2,11000,14000,20000,30000,11,15244,1,0,0,0,0,2,0,0,0,0,0,0,0,"Eldreth Apparition - Combat - Cast 'Cone of Cold' (Normal Dungeon)");

-- Irondeep Shaman SAI
SET @ENTRY := 11600;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,15801,64,0,0,0,0,2,0,0,0,0,0,0,0,"Irondeep Shaman - Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,7000,9000,55000,65000,11,15786,1,0,0,0,0,1,0,0,0,0,0,0,0,"Irondeep Shaman - Combat - Cast 'Earthbind Totem' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,50,15000,20000,11,12492,1,0,0,0,0,1,0,0,0,0,0,0,0,"Irondeep Shaman - 0-50% Health - Cast 'Healing Wave' (Normal Dungeon)"),
(@ENTRY,0,3,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Irondeep Shaman - 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Whitewhisker Geomancer SAI
SET @ENTRY := 11604;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,15228,64,0,0,0,0,2,0,0,0,0,0,0,0,"Whitewhisker Geomancer - Combat CMC - Cast 'Fireball' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,500,1000,600000,600000,11,18968,1,0,0,0,0,1,0,0,0,0,0,0,0,"Whitewhisker Geomancer - Combat - Cast 'Fire Shield' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,3,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Whitewhisker Geomancer - 0-15% Health - Flee For Assist (No Repeat) (Normal Dungeon)");

-- Morloch SAI
SET @ENTRY := 11657;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,15537,64,0,0,0,0,2,0,0,0,0,0,0,0,"Morloch - Combat CMC - Cast 'Shadow Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,6000,9000,120000,130000,11,12741,1,0,0,0,0,2,0,0,0,0,0,0,0,"Morloch - Combat - Cast 'Curse of Weakness' (Normal Dungeon)"),
(@ENTRY,0,2,0,0,0,100,2,11000,14000,9000,15000,11,17228,0,0,0,0,0,2,0,0,0,0,0,0,0,"Morloch - Combat - Cast 'Shadow Bolt Volley' (Normal Dungeon)");

-- Snowblind Windcaller SAI
SET @ENTRY := 11675;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Snowblind Windcaller - Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,5000,8000,12000,16000,11,9532,1,0,0,0,0,6,0,0,0,0,0,0,0,"Snowblind Windcaller - Combat - Cast 'Lightning Bolt' (Normal Dungeon)");

-- Horde Scout SAI
SET @ENTRY := 11680;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,15,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Horde Scout - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Horde Scout - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,2,0,9,0,100,0,5,30,12000,15000,11,18545,0,0,0,0,0,2,0,0,0,0,0,0,0,"Horde Scout - Within 5-30 Range - Cast 'Scorpid Sting'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Horde Scout - 0-15% Health - Flee For Assist (No Repeat)");

-- Warsong Shaman SAI
SET @ENTRY := 11683;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20805,64,0,0,0,0,2,0,0,0,0,0,0,0,"Warsong Shaman - Combat CMC - Cast 'Lightning Bolt'"),
(@ENTRY,0,1,0,2,0,100,0,0,30,30000,35000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Shaman - 0-30% Health - Cast 'Bloodlust'"),
(@ENTRY,0,2,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Shaman - 0-15% Health - Flee For Assist (No Repeat)");

-- Wildpaw Mystic SAI
SET @ENTRY := 11838;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,3400,4800,11,37361,64,0,0,0,0,2,0,0,0,0,0,0,0,"Wildpaw Mystic - Combat CMC - Cast 'Arcane Bolt' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,6000,9000,16000,19000,11,12058,1,0,0,0,0,2,0,0,0,0,0,0,0,"Wildpaw Mystic - Combat - Cast 'Chain Lightning' (Normal Dungeon)"),
(@ENTRY,0,2,0,2,0,100,2,0,50,12000,16000,11,11986,1,0,0,0,0,1,0,0,0,0,0,0,0,"Wildpaw Mystic - 0-50% Health - Cast 'Healing Wave' (Normal Dungeon)");

-- Nathanos Blightcaller SAI
SET @ENTRY := 11878;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Nathanos Blightcaller - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,0,0,100,0,4000,6000,8000,11000,11,18651,0,0,0,0,0,5,0,0,0,0,0,0,0,"Nathanos Blightcaller - Combat - Cast 'Multi-Shot'"),
(@ENTRY,0,2,0,9,0,100,0,0,5,7000,9000,11,6253,1,0,0,0,0,2,0,0,0,0,0,0,0,"Nathanos Blightcaller - 0-5 Range - Cast 'Backhand'"),
(@ENTRY,0,3,0,15,0,100,1,0,0,10,0,11,13704,1,0,0,0,0,1,0,0,0,0,0,0,0,"Nathanos Blightcaller - Friendly Crowd Controlled - Cast 'Psychic Scream'");

-- Lord Vyletongue SAI
SET @ENTRY := 12236;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,2,0,0,2300,3900,11,16100,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lord Vyletongue - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,2,5,30,7000,9500,11,21390,1,0,0,0,0,2,0,0,0,0,0,0,0,"Lord Vyletongue - 5-30 Range - Cast 'Multi-Shot'"),
(@ENTRY,0,2,0,0,0,100,2,20000,30000,20000,30000,11,21655,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Vyletongue - Combat - Cast 'Blink'"),
(@ENTRY,0,3,0,0,0,100,2,8000,12000,14000,18000,11,7964,0,0,0,0,0,1,0,0,0,0,0,0,0,"Lord Vyletongue - Combat - Cast 'Smoke Bomb'");

-- Quel'Lithien Protector SAI
SET @ENTRY := 12322;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,15547,64,0,0,0,0,2,0,0,0,0,0,0,0,"Quel'Lithien Protector - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,7000,11,12057,0,0,0,0,0,2,0,0,0,0,0,0,0,"Quel'Lithien Protector - 0-5 Range - Cast 'Strike'"),
(@ENTRY,0,2,0,9,0,100,0,0,5,8000,13000,11,11978,0,0,0,0,0,2,0,0,0,0,0,0,0,"Quel'Lithien Protector - 0-5 Range - Cast 'Kick'"),
(@ENTRY,0,3,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Quel'Lithien Protector - 0-15% Health - Flee For Assist (No Repeat)");

-- Damned Soul SAI
SET @ENTRY := 12378;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,3400,4800,11,20825,64,0,0,0,0,2,0,0,0,0,0,0,0,"Damned Soul - Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,7000,9000,7000,9000,11,13748,0,0,0,0,0,2,0,0,0,0,0,0,0,"Damned Soul - Combat - Cast 'Arcane Bolt'");

-- Mastok Wrilehiss SAI
SET @ENTRY := 12737;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,15620,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mastok Wrilehiss - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,0,5,5000,7000,11,15284,0,0,0,0,0,2,0,0,0,0,0,0,0,"Mastok Wrilehiss - 0-5 Range - Cast 'Cleave'"),
(@ENTRY,0,2,0,0,0,100,0,9000,15000,14000,18000,11,23600,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mastok Wrilehiss - Combat - Cast 'Piercing Howl'"),
(@ENTRY,0,3,4,2,0,100,0,0,30,120000,130000,11,8599,1,0,0,0,0,1,0,0,0,0,0,0,0,"Mastok Wrilehiss - 0-30% Health - Cast 'Enrage'"),
(@ENTRY,0,4,0,61,0,100,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mastok Wrilehiss - 0-30% Health - Say 0");

DELETE FROM `creature_text` WHERE `entry` IN (12737);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`BroadcastTextId`,`comment`) VALUES
(12737,0,0,'$s becomes enraged!',16,0,100,0,0,0,24144,'Mastok Wrilehiss enrage at 30%');

-- Ashenvale Outrunner SAI
SET @ENTRY := 12856;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ashenvale Outrunner - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,35900,52300,11,18545,1,0,0,0,0,2,0,0,0,0,0,0,0,"Ashenvale Outrunner - Within 5-30 Range - Cast 'Scorpid Sting'"),
(@ENTRY,0,2,0,9,0,100,0,0,5,7100,15300,11,8646,0,0,0,0,0,2,0,0,0,0,0,0,0,"Ashenvale Outrunner - Within 0-5 Range - Cast 'Snap Kick'");

-- Warsong Scout SAI
SET @ENTRY := 12862;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Warsong Scout - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Scout - 0-15% Health - Flee For Assist (No Repeat)");

-- Warsong Runner SAI
SET @ENTRY := 12863;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Warsong Runner - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warsong Runner - 0-15% Health - Flee For Assist (No Repeat)");

-- Warsong Outrider SAI
SET @ENTRY := 12864;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Warsong Outrider - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,9,0,100,0,5,30,35900,52300,11,18545,1,0,0,0,0,2,0,0,0,0,0,0,0,"Warsong Outrider - Within 5-30 Range - Cast 'Scorpid Sting'");

-- Ambassador Malcin SAI
SET @ENTRY := 12865;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,9613,64,0,0,0,0,2,0,0,0,0,0,0,0,"Ambassador Malcin - Combat CMC - Cast 'Shadow Bolt'"),
(@ENTRY,0,1,0,0,0,100,0,5000,9000,15000,25000,11,8282,32,0,0,0,0,2,0,0,0,0,0,0,0,"Ambassador Malcin - Combat - Cast 'Curse of Blood'");

-- Silverwing Sentinel SAI
SET @ENTRY := 12896;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Silverwing Sentinel - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Silverwing Sentinel - 0-15% Health - Flee For Assist (No Repeat)");

-- Lorgus Jett SAI
SET @ENTRY := 12902;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,2,1000,1000,600000,600000,11,12550,1,0,0,0,0,1,0,0,0,0,0,0,0,"Lorgus Jett - Out of Combat - Cast 'Lightning Shield' (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,0,0,2400,3800,11,12167,64,0,0,0,0,2,0,0,0,0,0,0,0,"Lorgus Jett - Combat CMC - Cast 'Lightning Bolt' (Normal Dungeon)");

-- Mounted Ironforge Mountaineer SAI
SET @ENTRY := 12996;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2300,3900,11,6660,64,0,0,0,0,2,0,0,0,0,0,0,0,"Mounted Ironforge Mountaineer - Combat CMC - Cast 'Shoot'"),
(@ENTRY,0,1,0,2,0,100,1,0,15,0,0,25,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Mounted Ironforge Mountaineer - 0-15% Health - Flee For Assist (No Repeat)");
DELETE FROM `smart_scripts` WHERE `entryorguid`=202443 AND `source_type`=1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=20244300 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(202443, 1, 0, 1, 64, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Dedication of Honor - On Gossip Hello - Store Targetlist'),
(202443, 1, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 80, 20244300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dedication of Honor - On Gossip Hello - Run Script'),
(202443, 1, 2, 0, 1, 0, 100, 1, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 0, 14, 151164, 202616, 0, 0, 0, 0, 0, 'Dedication of Honor - OOC - Activate Go (No Repeat)'),
(20244300, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 68, 16, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Dedication of Honor - On Script - Play Movie 16');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry`=202443 and `SourceId`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(22, 1, 202443, 1, 0, 17, 0, 4530, 0, 0, 0, 0, 0, '', 'Only run SAI if Player has  achievement'),
(22, 1, 202443, 1, 1, 17, 0, 4597, 0, 0, 0, 0, 0, '', 'Only run SAI if Player has  achievement'),
(22, 3, 202443, 1, 0, 40, 1, 4576, 0, 0, 0, 0, 0, '', 'Only run SAI if realm first rewarded');
UPDATE `gameobject` SET `state`=1 WHERE  `guid`=151164;
UPDATE `gameobject_template` SET `flags`=32 WHERE  `entry`=202616;
DELETE FROM `creature_text` WHERE `entry` = 16287 AND `groupid`= 0;
DELETE FROM `creature_text` WHERE `entry` = 10181 AND `groupid` = 2;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(16287, 0, 0, 'That could have gone better. $n, come here, please. I have something I need you to take care of for me.', 15, 0, 100, 0, 0, 0, 12157, 0, 'Ambassador Sunsorrow SAY_SUNSORROW_WHISPER'),
(10181, 2, 0, '%s looks down at the discarded necklace. In her sadness, the lady incants a glamour, which beckons forth Highborne spirits. The chamber resonates with their ancient song about the Sin''dorei...', 16, 0, 100, 0, 0, 0, 19197, 0, 'Lady Sylvanas Windrunner EMOTE_LAMENT');
 
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 7178 AND `id`= 0;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextId`) VALUES
(7178, 0, 0, 'What is it that you have for me, ambassador?', 19205, 1, 1, 7178, 0, 0, 0, '', 0);
 
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 16287;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 16287 AND `source_type` = 0 AND `id` IN (0, 1, 2);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(16287,0,0,1,62,0,100,0,7178,0,0,0,11,37084,1,0,0,0,0,7,0,0,0,0,0,0,0,'Ambassador Sunsorrow - On Gossip Option 0 Selected - Create Item \'Lament of the Highborne\''),
(16287,0,1,0,61,0,100,0,0,0,0,0,98,7178,10378,0,0,0,0,7,0,0,0,0,0,0,0,'Ambassador Sunsorrow - On Gossip Option 0 Selected - SEND_GOSSIP_MENU TEXT'),
(16287,0,2,0,64,0,100,0,0,0,0,0,98,7178,8458,0,0,0,0,7,0,0,0,0,0,0,0,'Ambassador Sunsorrow - On Gossip Hello - SEND_GOSSIP_MENU TEXT');
 
DELETE FROM `npc_text` WHERE  `id` IN (10378, 8458);
INSERT INTO `npc_text` (`id`, `text0_0`, `text0_1`, `prob0`, `em0_1`, `BroadcastTextID0`) VALUES
(8458, "Greetings, $r.  I am Ambassador Sunsorrow of the sin'dorei, or blood elves as we are commonly known.  I have high hopes that this new bond between us and the Horde will be mutually beneficial.", "Greetings, $r.  I am Ambassador Sunsorrow of the sin'dorei, or blood elves as we are commonly known.  I have high hopes that this new bond between us and the Horde will be mutually beneficial.", 1, 2, 12161),
(10378, "Just a small songbook that I thought you might like to have.  It contains the lyrics to a song known as the Lament of the Highborne; the one that Lady Sylvanas glamoured from the air.", "", 1, 1, 19206);
 
DELETE FROM `gossip_menu` WHERE `entry`=7178 AND `text_id` IN (10378, 8458, 8740);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(7178,10378),
(7178,8740),
(7178,8458);
 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 7178 AND `SourceEntry` = 0 AND `SourceId` = 0;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7178, 0, 0, 0, 8, 0, 9180, 0, 0, 0, 0, 0, '', 'Ambassador Sunsorrow show gossip only if quest Journey to Undercity is rewarded'),
(15, 7178, 0, 0, 0, 16, 0, 512, 0, 0, 0, 0, 0, '', 'Ambassador Sunsorrow show gossip only if player is Blood Elf'),
(15, 7178, 0, 0, 0, 2, 0, 30632, 1, 0, 1, 0, 0, '', 'Ambassador Sunsorrow show gossip only if player doesn\'t have item Lament of Highborn');

UPDATE `creature_text` SET `type` = 12 WHERE `entry` = 10181 AND `groupid` = 1;
UPDATE `trinity_string` SET `content_default` = 'Map: %u (%s) Zone: %u (%s) Area: %u (%s) Phase: %u\nX: %f Y: %f Z: %f Orientation: %f' WHERE `entry` = 101;
DELETE FROM `trinity_string` WHERE `entry` = 178;
INSERT INTO `trinity_string` (`entry`, `content_default`) VALUES
(178, 'grid[%u,%u]cell[%u,%u] InstanceID: %u\n ZoneX: %f ZoneY: %f\nGroundZ: %f FloorZ: %f Have height data (Map: %u VMap: %u MMap: %u)');
