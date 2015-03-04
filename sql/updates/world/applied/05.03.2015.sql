SET @SUMMON := 49991;
SET @GOLEM  := 24825;
SET @BENCH  := 186958;
SET @Relic := 24824;
SET @Triggger :=24845;
SET @IronDwarf :=24846;
SET @LOKEN := 24847;

DELETE FROM `spell_target_position` WHERE `id` in (49992); 
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(49992, 571, 478.951782, -5941.529297, 308.749969, 0.419872);

UPDATE `creature_template` SET `spell1`=44608, `spell2`=44610, `spell3`=44609,`AIName`='SmartAI', `InhabitType`=5 WHERE `entry`=@GOLEM;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (@LOKEN, @IronDwarf, @Triggger, @Relic);
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
(@LOKEN,0,1,0,4,0,100,0,0,0,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'LOKEN - On aggro - despawn');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceGroup`=1 AND `SourceEntry`=@Triggger;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(22,1,@Triggger,0,31,3,24825,0,0,'','event require npc 24825');

DELETE FROM `creature_text` WHERE `entry`IN (@LOKEN); 
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`, `BroadcastTextID`) VALUES
(@LOKEN,0,0,"The sound of thunder roars throughout the cavern.",41,9,100,0,0,0,'LOKEN', 23927),
(@LOKEN,1,0,"Come, minions! Your master calls!",14,9,100,0,0,0,'LOKEN', 23922),
(@LOKEN,2,0,"The work of your brothers in the Storm Peaks has reached a frenzied pace. Soon, Father will be freed.",14,9,100,0,0,0,'LOKEN', 23923),
(@LOKEN,3,0,"Your brothers to the north have subjugated the stone behemoths and set them on the path to Ulduar. Soon, the remaining defenses of the Pantheon will be neutralized.",14,9,100,0,0,0,'LOKEN', 23924),
(@LOKEN,4,0,"The three fissures opened by the mortals of this region must be silenced. The earth hears and sees what we do and will continue to interfere with our efforts if the way is not closed.",14,9,100,0,0,0,'LOKEN', 23925),
(@LOKEN,5,0,"Bury this place! Your master demands it!",14,9,100,0,0,0,'LOKEN', 23926),
(@LOKEN,6,0,"The sound of thunder dissipates.",41,9,100,0,0,0,'LOKEN', 23928);

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