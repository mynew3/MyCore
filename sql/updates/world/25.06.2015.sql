-- Jademir Tree Warder SAI
SET @ENTRY := 5319;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,20656,64,0,0,0,0,2,0,0,0,0,0,0,0,"Jademir Tree Warder - On Aggro - Cast 'Faerie Fire'"),
(@ENTRY,0,1,0,0,0,100,0,4000,5000,20000,25000,11,20654,64,0,0,0,0,2,0,0,0,0,0,0,0,"Jademir Tree Warder - In Combat - Cast 'Entangling Roots'");

-- Jademir Oracle SAI
SET @ENTRY := 5317;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,20664,64,0,0,0,0,1,0,0,0,0,0,0,0,"Jademir Oracle - On Aggro - Cast 'Rejuvenation'"),
(@ENTRY,0,1,0,2,0,100,1,0,30,0,0,11,20665,64,0,0,0,0,1,0,0,0,0,0,0,0,"Jademir Oracle - Between 0-30% Health - Cast 'Regrowth' (No Repeat)");

-- Jademir Boughguard SAI
SET @ENTRY := 5320;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,5000,6000,10000,11,20666,2,0,0,0,0,2,0,0,0,0,0,0,0,"Jademir Boughguard - In Combat - Cast 'Cleave'"),
(@ENTRY,0,1,0,0,0,100,0,3000,8000,8000,12000,75,15708,0,0,0,0,0,2,0,0,0,0,0,0,0,"Jademir Boughguard - In Combat - Add Aura 'Mortal Strike'");

-- Hatecrest Wave Rider SAI
SET @ENTRY := 5332;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,8000,15000,11,10987,2,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Wave Rider - In Combat - Cast 'Geyser'");

-- Hatecrest Warrior SAI
SET @ENTRY := 5331;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,7164,2,0,0,0,0,1,0,0,0,0,0,0,0,"Hatecrest Warrior - On Aggro - Cast 'Defensive Stance'"),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,5000,10000,11,6713,2,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Warrior - In Combat - Cast 'Disarm'");

-- Hatecrest Sorceress SAI
SET @ENTRY := 5336;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,3000,4000,11,20822,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Sorceress - In Combat - Cast 'Frostbolt'");

-- Hatecrest Siren SAI
SET @ENTRY := 5337;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,3000,3000,4000,11,9532,64,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Siren - In Combat - Cast 'Lightning Bolt'");

-- Hatecrest Serpent Guard SAI
SET @ENTRY := 5333;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,8058,2,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Serpent Guard - On Aggro - Cast 'Frost Shock'");

-- Hatecrest Screamer SAI
SET @ENTRY := 5335;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,2,0,100,1,0,30,0,0,11,6078,2,0,0,0,0,1,0,0,0,0,0,0,0,"Hatecrest Screamer - Between 0-30% Health - Cast 'Renew' (No Repeat)"),
(@ENTRY,0,1,0,0,0,100,0,4000,8000,4000,8000,11,8281,2,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Screamer - In Combat - Cast 'Sonic Burst'");

-- Hatecrest Myrmidon SAI
SET @ENTRY := 5334;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,6533,2,0,0,0,0,2,0,0,0,0,0,0,0,"Hatecrest Myrmidon - On Aggro - Cast 'Net'");

-- Groddoc Thunderer SAI
SET @ENTRY := 5262;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,10000,12000,11,8078,2,0,0,0,0,2,0,0,0,0,0,0,0,"Groddoc Thunderer - In Combat - Cast 'Thunderclap'");

-- Grimtotem Shaman SAI
SET @ENTRY := 7727;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,2000,4000,11,930,64,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Shaman - In Combat - Cast 'Chain Lightning'"),
(@ENTRY,0,1,0,2,0,100,1,0,50,0,0,11,8499,2,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Shaman - Between 0-50% Health - Cast 'Fire Nova' (No Repeat)"),
(@ENTRY,0,2,0,2,0,100,0,0,30,0,0,11,8005,64,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Shaman - Between 0-30% Health - Cast 'Healing Wave'");

-- Grimtotem Raider SAI
SET @ENTRY := 7725;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,7366,2,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Raider - On Aggro - Cast 'Berserker Stance'"),
(@ENTRY,0,1,0,0,0,100,0,2000,5000,5000,8000,11,6533,2,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Raider - In Combat - Cast 'Net'");

-- Grimtotem Naturalist SAI
SET @ENTRY := 7726;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Aggro - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Aggro - Cast 'Wrath' (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,9,1,100,0,0,40,3400,4700,11,9739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Naturalist - Within 0-40 Range - Cast 'Wrath' (Phase 1)"),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Within 40-100 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Within 10-15 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Within 0-40 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 0-15% Mana - Set Event Phase 2 (Phase 1)"),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 0-15% Mana - Enable Combat Movement (Phase 2)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 30-100% Mana - Set Event Phase 1 (Phase 2)"),
(@ENTRY,0,10,0,7,1,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Evade - Set Event Phase 0 (Phase 1) (No Repeat)"),
(@ENTRY,0,11,12,2,1,100,1,0,50,0,0,22,3,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 0-50% Health - Set Event Phase 3 (Phase 1) (No Repeat)"),
(@ENTRY,0,12,13,61,1,100,1,0,50,0,0,11,19030,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 0-50% Health - Cast 'Bear Form' (Phase 1) (No Repeat)"),
(@ENTRY,0,13,0,61,1,100,1,0,50,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - Between 0-50% Health - Enable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,14,0,0,4,100,0,3000,4500,12000,13000,11,12161,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grimtotem Naturalist - In Combat - Cast 'Maul' (Phase 4)"),
(@ENTRY,0,15,0,0,4,100,0,8000,9000,25000,26000,11,15727,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - In Combat - Cast 'Demoralizing Roar' (Phase 4)"),
(@ENTRY,0,16,0,7,4,100,1,0,0,0,0,28,19030,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Evade - Remove Aura 'Bear Form' (Phase 4) (No Repeat)"),
(@ENTRY,0,17,0,7,4,100,1,0,0,0,0,22,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grimtotem Naturalist - On Evade - Set Event Phase 0 (Phase 4) (No Repeat)");

-- Gordunni Warlord SAI
SET @ENTRY := 5241;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,15000,20000,11,10967,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlord - In Combat - Cast 'Echoing Roar'");

-- Gordunni Warlock SAI
SET @ENTRY := 5240;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,1,0,0,0,0,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - On Aggro - Set Event Phase 1 (No Repeat)"),
(@ENTRY,0,1,0,4,1,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - On Aggro - Disable Combat Movement (Phase 1) (No Repeat)"),
(@ENTRY,0,2,0,4,1,100,1,0,0,0,0,11,7289,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Warlock - On Aggro - Cast 'Shrink' (Phase 1) (No Repeat)"),
(@ENTRY,0,3,0,9,1,100,0,0,40,3000,4500,11,7289,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Warlock - Within 0-40 Range - Cast 'Shrink' (Phase 1)"),
(@ENTRY,0,4,0,9,1,100,0,40,100,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Within 40-100 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,9,1,100,0,10,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Within 10-15 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,6,0,9,1,100,0,0,40,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Within 0-40 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,3,1,100,0,0,15,0,0,22,2,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Between 0-15% Mana - Set Event Phase 2 (Phase 1)"),
(@ENTRY,0,8,0,3,2,100,0,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Between 0-15% Mana - Enable Combat Movement (Phase 2)"),
(@ENTRY,0,9,0,3,2,100,0,30,100,100,100,22,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Between 30-100% Mana - Set Event Phase 1 (Phase 2)"),
(@ENTRY,0,10,0,0,1,100,0,5000,6000,20000,25000,11,7289,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Warlock - In Combat - Cast 'Shrink' (Phase 1)"),
(@ENTRY,0,11,0,4,1,20,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordunni Warlock - On Aggro - Say Line 0 (Phase 1) (No Repeat)"),
(@ENTRY,0,12,0,9,1,100,0,0,8,13600,14500,11,20298,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Warlock - Within 0-8 Range - Cast 'Shadow Bolt' (Phase 1)");

-- NPC talk text insert
SET @ENTRY := 5240;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`, `BroadcastTextId`) VALUES
(@ENTRY,0,0, 'I''ll crush you!',12,0,50,0,0,0, 'on Aggro Text', 1925),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text', 1926),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text', 1927);

-- Gordunni Shaman SAI
SET @ENTRY := 5236;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,20,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordunni Shaman - On Aggro - Say Line 0 (No Repeat)"),
(@ENTRY,0,1,0,0,1,100,0,5000,5000,19000,22000,11,26369,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Shaman - In Combat - Cast 'Lightning Shield' (Phase 1)"),
(@ENTRY,0,2,0,1,0,100,0,500,1000,600000,600000,11,8134,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Shaman - Out of Combat - Cast 'Lightning Shield'"),
(@ENTRY,0,3,0,16,0,100,0,19514,1,15000,30000,11,8134,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Shaman - On Friendly Unit Missing Buff 'Lightning Shield' - Cast 'Lightning Shield'"),
(@ENTRY,0,4,0,14,0,100,0,450,40,15000,18000,11,8005,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordunni Shaman - Friendly At 450 Health - Cast 'Healing Wave'"),
(@ENTRY,0,5,0,2,0,100,0,0,40,14000,21000,11,8005,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Shaman - Between 0-40% Health - Cast 'Healing Wave'");

-- NPC talk text insert
SET @ENTRY := 5236;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0, 'I''ll crush you!',12,0,50,0,0,0, 'on Aggro Text',1925),
(@ENTRY,0,1, 'Me smash! You die!',12,0,50,0,0,0, 'on Aggro Text',1926),
(@ENTRY,0,2, 'Raaar!!! Me smash $r!',12,0,50,0,0,0, 'on Aggro Text',1927);

-- Gordunni Ogre Mage SAI
SET @ENTRY := 5237;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - On Reset - Disable Combat Movement"),
(@ENTRY,0,1,2,4,0,100,0,0,0,0,0,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Ogre Mage - On Aggro - Cast 'Lightning Bolt'"),
(@ENTRY,0,2,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - On Aggro - Increment Phase"),
(@ENTRY,0,3,0,9,1,100,0,0,40,2400,3800,11,9532,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Within 0-40 Range - Cast 'Lightning Bolt' (Phase 1)"),
(@ENTRY,0,4,5,3,1,100,0,0,15,100,100,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Between 0-15% Mana - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,5,0,61,1,100,1,0,15,100,100,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Between 0-15% Mana - Increment Phase (Phase 1) (No Repeat)"),
(@ENTRY,0,6,0,9,1,100,0,35,80,100,100,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Within 35-80 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,7,0,9,1,100,0,5,15,100,100,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Within 5-15 Range - Disable Combat Movement (Phase 1)"),
(@ENTRY,0,8,0,9,1,100,0,0,5,100,100,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Within 0-5 Range - Enable Combat Movement (Phase 1)"),
(@ENTRY,0,9,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Between 30-100% Mana - Decrement Phase"),
(@ENTRY,0,10,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Ogre Mage - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Gordunni Mauler SAI
SET @ENTRY := 5234;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,3000,5000,11,3391,2,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Mauler - In Combat - Cast 'Thrash'");

-- Gordunni Mage-Lord SAI
SET @ENTRY := 5239;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,0,0,2400,3800,11,20823,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Mage-Lord - In Combat CMC - Cast 'Fireball'"),
(@ENTRY,0,1,0,0,0,100,0,5000,9000,20000,26000,11,20827,1,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Mage-Lord - In Combat - Cast 'Flamestrike'"),
(@ENTRY,0,2,0,2,0,100,1,0,30,0,0,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Mage-Lord - Between 0-30% Health - Cast 'Bloodlust' (No Repeat)");

-- Gordunni Brute SAI
SET @ENTRY := 5232;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,8000,15000,11,10966,2,0,0,0,0,2,0,0,0,0,0,0,0,"Gordunni Brute - In Combat - Cast 'Uppercut'");

-- Gordunni Battlemaster SAI
SET @ENTRY := 5238;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,13730,2,0,0,0,0,1,0,0,0,0,0,0,0,"Gordunni Battlemaster - On Aggro - Cast 'Demoralizing Shout'");

-- Gordok Ogre-Mage SAI
SET @ENTRY := 11443;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,1,0,0,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Out Of Combat - Disallow Combat Movement"),
(@ENTRY,0,1,2,4,0,10,1,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordok Ogre-Mage - On Aggro - Say Line 0"),
(@ENTRY,0,2,3,61,0,100,0,0,0,0,0,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Ogre-Mage - On Aggro - Cast 20823"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - On Aggro - Increment Event Phase"),
(@ENTRY,0,4,0,9,2,100,0,0,40,2400,3800,11,20823,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 0-40 Range - Cast 20823 (Phase 2)"),
(@ENTRY,0,5,6,3,2,100,1,0,15,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 0-15% Mana - Allow Combat Movement (Phase 2)"),
(@ENTRY,0,6,0,61,2,100,0,0,0,0,0,23,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 0-15% Mana - Increment Event Phase (Phase 2)"),
(@ENTRY,0,7,0,9,2,100,0,35,80,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 35-80 Range - Allow Combat Movement (Phase 2)"),
(@ENTRY,0,8,0,9,2,100,0,5,15,0,0,21,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 5-15 Range - Disallow Combat Movement (Phase 2)"),
(@ENTRY,0,9,0,9,2,100,0,0,5,0,0,21,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 0-5 Range - Allow Combat Movement (Phase 2)"),
(@ENTRY,0,10,0,3,0,100,0,30,100,100,100,23,0,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - Between 30-100% Mana - Decrement Event Phase"),
(@ENTRY,0,11,0,0,0,100,0,5000,12000,35000,45000,11,6742,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Ogre-Mage - In Combat - Cast 6742");
-- Texts for Gordok Ogre-Mage
SET @ENTRY := 11443;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $r!",12,0,100,0,0,0,"Gordok Ogre-Mage",1925),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Ogre-Mage",1926),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Ogre-Mage",1927);

-- Gordok Mauler SAI
SET @ENTRY := 11442;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,10,3,0,0,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Gordok Mauler - On Aggro - Say Line 0 (Normal Dungeon)"),
(@ENTRY,0,1,0,0,0,100,2,5000,10000,8000,12000,11,3391,0,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Mauler - In Combat - Cast 3391 (Normal Dungeon)"),
(@ENTRY,0,2,3,2,0,100,3,0,30,0,0,11,8269,1,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Mauler - Between 0-30% Health - Cast 8269 (Normal Dungeon)"),
(@ENTRY,0,3,0,61,0,100,0,0,0,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Gordok Mauler - Between 0-30% Health - Say Line 1 (Normal Dungeon)");
-- Texts for Gordok Mauler
SET @ENTRY := 11442;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0,"Raaar!!! Me smash $r!",12,0,100,0,0,0,"Gordok Mauler",1925),
(@ENTRY,0,1,"Me smash! You die!",12,0,100,0,0,0,"Gordok Mauler",1926),
(@ENTRY,0,2,"I'll crush you!",12,0,100,0,0,0,"Gordok Mauler",1927),
(@ENTRY,1,0,"%s becomes enraged!",16,0,100,0,0,0,"Gordok Mauler", 7798);

-- Gordok Hyena SAI
SET @ENTRY := 12418;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,4000,7000,15000,20000,11,13445,32,0,0,0,0,2,0,0,0,0,0,0,0,"Gordok Hyena - In Combat - Cast Rend");

-- Gnarl Leafbrother SAI
SET @ENTRY := 5354;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,11922,64,0,0,0,0,2,0,0,0,0,0,0,0,"Gnarl Leafbrother - On Aggro - Cast 'Entangling Roots'");

-- Frayfeather Stagwing SAI
SET @ENTRY := 5304;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,5000,5000,8000,11,5708,2,0,0,0,0,2,0,0,0,0,0,0,0,"Frayfeather Stagwing - In Combat - Cast 'Swoop'");

-- Frayfeather Skystormer SAI
SET @ENTRY := 5305;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,20000,25000,11,6535,2,0,0,0,0,2,0,0,0,0,0,0,0,"Frayfeather Skystormer - In Combat - Cast 'Lightning Cloud'");

-- Enraged Feral Scar SAI
SET @ENTRY := 5295;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,11831,2,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Feral Scar - On Aggro - Cast 'Frost Nova'"),
(@ENTRY,0,1,0,0,0,100,0,3000,4000,3000,4000,11,8398,64,0,0,0,0,2,0,0,0,0,0,0,0,"Enraged Feral Scar - In Combat - Cast 'Frostbolt Volley'");

-- Elder Rage Scar SAI
SET @ENTRY := 5297;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,6507,2,0,0,0,0,1,0,0,0,0,0,0,0,"Elder Rage Scar - On Aggro - Cast 'Battle Roar'");

-- Dreamroarer SAI
SET @ENTRY := 12497;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,8000,20000,25000,11,18435,64,0,0,0,0,2,0,0,0,0,0,0,0,"Dreamroarer - In Combat - Cast 'Flame Breath'");

-- Diamond Head SAI
SET @ENTRY := 5345;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,15000,20000,11,5164,2,0,0,0,0,2,0,0,0,0,0,0,0,"Diamond Head - In Combat - Cast 'Knockdown'");

-- Coast Crawl Deepseer SAI
SET @ENTRY := 5328;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,10000,10000,10000,10000,11,12544,2,0,0,0,0,1,0,0,0,0,0,0,0,"Coast Crawl Deepseer - Out of Combat - Cast 'Frost Armor'");

-- Chimaerok SAI
SET @ENTRY := 12800;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,4,0,100,0,0,0,0,0,11,20629,2,0,0,0,0,2,0,0,0,0,0,0,0,"Chimaerok - On Aggro - Cast 'Corrosive Venom Spit'"),
(@ENTRY,0,1,0,0,0,100,0,2000,4000,3000,4000,11,20627,64,0,0,0,0,2,0,0,0,0,0,0,0,"Chimaerok - In Combat - Cast 'Lightning Breath'"),
(@ENTRY,0,2,0,0,0,100,0,10000,15000,10000,15000,11,18144,2,0,0,0,0,2,0,0,0,0,0,0,0,"Chimaerok - In Combat - Cast 'Swoop'");

-- Bloodroar the Stalker SAI
SET @ENTRY := 5346;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,4000,17000,22000,11,3264,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodroar the Stalker - In Combat - Cast 'Blood Howl'"),
(@ENTRY,0,1,2,2,0,100,1,0,30,0,0,11,8599,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodroar the Stalker - Between 0-30% Health - Cast 'Enrage' (No Repeat)"),
(@ENTRY,0,2,0,61,0,100,1,0,30,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodroar the Stalker - Between 0-30% Health - Say Line 0 (No Repeat)");

-- NPC talk text insert
SET @ENTRY := 5346;
DELETE FROM `creature_text` WHERE `entry`=@ENTRY;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0, '%s becomes enraged!',16,0,100,0,0,0, 'combat Enrage', 7798);

-- Arcane Chimaerok SAI
SET @ENTRY := 12801;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,3000,4000,11,20630,64,0,0,0,0,2,0,0,0,0,0,0,0,"Arcane Chimaerok - In Combat - Cast 'Lightning Breath'"),
(@ENTRY,0,1,0,2,0,100,1,0,50,0,0,11,20223,2,0,0,0,0,1,0,0,0,0,0,0,0,"Arcane Chimaerok - Between 0-50% Health - Cast 'Magic Reflection' (No Repeat)");

-- Arash-ethis SAI
SET @ENTRY := 5349;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,3000,6000,3000,4000,11,15117,64,0,0,0,0,2,0,0,0,0,0,0,0,"Arash-ethis - In Combat - Cast 'Chain Lightning'"),
(@ENTRY,0,1,0,0,0,100,0,5000,8000,10000,12000,11,12553,2,0,0,0,0,2,0,0,0,0,0,0,0,"Arash-ethis - In Combat - Cast 'Shock'");

-- Antilus the Soarer SAI
SET @ENTRY := 5347;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,0,0,100,0,2000,4000,15000,20000,11,13445,2,0,0,0,0,2,0,0,0,0,0,0,0,"Antilus the Soarer - In Combat - Cast 'Rend'");

DELETE FROM `creature_addon` WHERE `guid` IN (90888,90738,46620,48168,91011,90741,91066);
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES 
(90888,0,0,0,4097,10,'14869'),
(90738,0,0,0,4097,10,'14869'),
(46620,0,0,0,4097,10,'14869'),
(48168,0,0,0,4097,10,''),
(91011,0,0,0,4097,10,''),
(90741,0,0,0,4097,10,''),
(91066,0,0,0,4097,10,'');
UPDATE `creature_template_addon` SET `auras`="14869" WHERE `entry` IN (9554);
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry` IN (9545, 9547, 9554, 9499, 9500);
UPDATE `gameobject_template` SET `AIName`='SmartGameObjectAI', `ScriptName`='' WHERE  `entry` IN (165738, 165739, 165578);
DELETE FROM `smart_scripts` WHERE `source_type`=1 AND `entryorguid`IN(165738, 165739, 165578);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (949900, 954700, 954500, 955400, 950000) AND `source_type`=9;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (9545, 9547, 9554, 9499, -48172, -90884, -91064, 9500) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(9545,0,0,0,0,0,100,0,3000,5000,5000,8000,11,15610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grim Patron - In Combat - Cast 'Kick'"),
(9545,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9545,0,2,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Play Random Emotes"),
(9545,0,3,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Grim Patron - On Data set - Start Attack"),
(9545,0,4,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - On Data set - Action list"),
(954500,9,0,0,0,0,100,0,5000,5000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Grim Patron - Action list - Set loot state"),
(954500,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Cast Drink Dark Iron Brewer"),
(954500,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(954500,9,3,0,0,0,100,0,5000,5000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Action list - Remove aura"), 
(9547,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(9547,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(9547,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9547,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(9547,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(9547,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(954700,9,0,0,0,0,100,0,1000,1000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Guzzling Patron - Action list - Set loot state"),
(954700,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Cast Drink Dark Iron Brewer"),
(954700,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(954700,9,3,0,0,0,100,0,7000,7000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Action list - Remove aura"),
(9554,0,0,0,0,0,100,0,3000,5000,5000,8000,11,6253,0,0,0,0,0,2,0,0,0,0,0,0,0,"Hammered Patron - In Combat - Cast 'Backhand'"),
(9554,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(9554,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - OOC - Play Random Emotes"),
(9554,0,4,0,38,0,100,0,1,4,0,0,80,955400,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - On Data set - Action list"),
(955400,9,0,0,0,0,100,0,1000,1000,0,0,99,3,0,0,0,0,0,20,165578,10,0,0,0,0,0,"Hammered Patron - Action list - Set loot state"),
(955400,9,1,0,0,0,100,0,0,0,0,0,11,50631,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Cast Drink Dark Iron Brewer"),
(955400,9,2,0,0,0,100,0,2000,2000,0,0,11,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Cast Dark Iron Brewer is Swaggering"),
(955400,9,3,0,0,0,100,0,7000,7000,0,0,28,50651,0,0,0,0,0,1,0,0,0,0,0,0,0,"Hammered Patron - Action list - Remove aura"),
(9499,0,0,0,1,0,100,0,7000,15000,35000,45000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - OOC - Say text 1"),
(9499,0,1,0,0,0,100,0,3000,5000,15000,18000,11,13338,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Curse of Tongues'"),
(9499,0,2,0,0,0,100,0,5000,7000,12000,15000,11,12742,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Immolate'"),
(9499,0,3,0,0,0,100,0,1000,2000,3000,4000,11,12739,0,0,0,0,0,2,0,0,0,0,0,0,0,"Plugger Spazzring - In Combat - Cast 'Shadow Bolt'"),
(9499,0,4,0,23,0,100,0,13787,0,10000,10000,11,13787,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On aura missing - Cast 'Demon Armor'"),
(9499,0,5,0,4,0,100,0,0,0,0,0,1,3,0,0,0,0,0,7,0,0,0,0,0,0,0,"Plugger Spazzring - On aggro - Say text 4"),
(9499,0,6,7,38,0,100,0,1,1,0,0,1,1,0,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On Data set - Say text 2"),
(9499,0,7,0,61,0,100,0,0,0,0,0,63,1,1,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On Data set - Increment counter1"),
(9499,0,8,0,77,0,100,0,1,3,0,0,80,949900,2,0,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - On counter set- Actionlist"),
(949900,9,0,0,0,0,100,0,0,0,0,0,63,1,1,1,0,0,0,1,0,0,0,0,0,0,0,"Plugger Spazzring - Actionlist - Reset counter1"),
(949900,9,1,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,9545,7,0,0,0,0,0,"Plugger Spazzring - Actionlist - Set data"),
(949900,9,2,0,0,0,100,0,0,0,0,0,45,1,1,0,0,0,0,11,9547,7,0,0,0,0,0,"Plugger Spazzring - Actionlist - Set data"),
(949900,9,3,0,0,0,100,0,0,0,0,0,49,0,0,0,0,0,0,21,35,0,0,0,0,0,0,"Plugger Spazzring - Actionlist - Start attack"),
(9499,0,9,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9554,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,10,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9545,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,11,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9547,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(9499,0,12,0,6,0,100,0,0,0,0,0,2,14,0,0,0,0,0,11,9502,100,0,0,0,0,0,"Plugger Spazzring - On Death  - Set faction"),
(165739, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,1,0,0,0,0,19,9499,35,0,0,0,0,0, 'Grim Guzzler Boar - On State Changed - Set Data'),
(165738, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,1,0,0,0,0,19,9499,35,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 0 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9545,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 1 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9547,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(165578, 1, 2 ,0, 70, 0, 100, 0, 1, 0, 0,0,45,1,4,0,0,0,0,19,9554,5,0,0,0,0,0, 'Dark Iron Ale Mug - On State Changed - Set Data'),
(-48172,0,0,0,0,0,100,0,3000,5000,5000,8000,11,15610,0,0,0,0,0,2,0,0,0,0,0,0,0,"Grim Patron - In Combat - Cast 'Kick'"),
(-48172,0,1,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-48172,0,2,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Play Random Emotes"),
(-48172,0,3,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Grim Patron - On Data set - Start Attack"),
(-48172,0,4,0,38,0,100,0,1,4,0,0,80,954500,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - On Data set - Action list"),
(-48172,0,5,6,1,0,100,0,30000,30000,55000,60000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Grim Patron - OOC - Say text1"),
(-48172,0,6,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Grim Patron - OOC - Set data"),
(-90884,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(-90884,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(-90884,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-90884,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(-90884,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(-90884,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(-90884,0,6,7,1,0,100,0,150000,150000,12000,180000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Say text1"),
(-90884,0,7,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Guzzling Patron - OOC - Set data"),
(-91064,0,0,0,0,0,100,0,1000,2000,15000,15000,11,14868,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Curse of Agony'"),
(-91064,0,1,0,0,0,100,0,3000,4000,3000,4000,11,20825,0,0,0,0,0,2,0,0,0,0,0,0,0,"Guzzling Patron - In Combat - Cast 'Shadow Bolt'"),
(-91064,0,2,0,2,0,100,1,0,30,0,0,11,14822,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - Between 0-30% Health - Cast 'Drunken Rage' (No Repeat)"),
(-91064,0,3,0,1,0,55,0,7000,15000,7000,15000,10,1,4,11,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Play Random Emotes"),
(-91064,0,4,0,38,0,100,0,1,1,0,0,49,0,0,0,0,0,0,21,30,0,0,0,0,0,0,"Guzzling Patron - On Data set - Start Attack"),
(-91064,0,5,0,38,0,100,0,1,4,0,0,80,954700,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - On Data set - Action list"),
(-91064,0,6,7,1,0,100,0,220000,200000,550000,600000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Guzzling Patron - OOC - Say text1"),
(-91064,0,7,0,61,0,100,0,0,0,0,0,45,1,1,0,0,0,0,19,9500,50,0,0,0,0,0,"Guzzling Patron - OOC - Set data"),
(9500,0,0,0,38,0,100,0,1,1,0,0,80,950000,0,0,0,0,0,1,0,0,0,0,0,0,0,"Nagmara - On Data set - Say text 1"),
(950000,9,0,0,0,0,100,0,4000,4000,0,0,1,0,0,0,0,0,0,7,0,0,0,0,0,0,0,"Nagmara - On Data set - Say text 1");

SET @ENTRY := 9499;
DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY,9545, 9554, 9547, 9500, 9503);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@ENTRY,0,0,"Drink up! There''s more where that came from!",12,0,100,0,0,0, 'Plugger_Spazzring', 5307),
(@ENTRY,0,1,"Enjoy! You won''t find better ale anywhere!",12,0,100,0,0,0, 'Plugger_Spazzring', 5308),
(@ENTRY,0,2,"Have you tried the Dark Iron Ale? It''s the best!",12,0,100,0,0,0, 'Plugger_Spazzring', 5309),
(@ENTRY,0,3,"Try the boar! It''s my new recipe!",12,0,100,0,0,0, 'Plugger_Spazzring', 5310),
(@ENTRY,1,0,"What are you doing over there?",14,0,100,0,0,0, 'Plugger_Spazzring', 5054),
(@ENTRY,1,1,"Hey! Get away from that!",14,0,100,0,0,0, 'Plugger_Spazzring', 5053),
(@ENTRY,1,2,"Hey! Stop that!",14,0,100,0,0,0, 'Plugger_Spazzring', 5056),
(@ENTRY,1,3,"No stealing the goods!",14,0,100,0,0,0, 'Plugger_Spazzring', 5055),
(@ENTRY,1,4,"Phalanx, I think you need to teach thos person a lesson.",14,0,100,0,0,0, 'Plugger_Spazzring', 5057),
(@ENTRY,2,0,"Hey, my pockets were picked!",14,0,100,0,0,0, 'Plugger_Spazzring', 5266),
(@ENTRY,2,1,"That''s it! No more beer until this mess is sorted out!",14,0,100,0,0,0, 'Plugger_Spazzring', 5267),
(@ENTRY,3,0,"That''s it! You''re going down!",14,0,100,0,0,0, 'Plugger_Spazzring', 5060),
(9545,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9545,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9545,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9545,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9554,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9554,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9554,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9554,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9547,0,0,"Hey Nagmara!  How about a mug of Dark Iron Ale?",12,0,100,0,0,0, 'Patron', 4984),
(9547,0,1,"Nagmara!  Have any mutton left?",12,0,100,0,0,0, 'Patron', 4985),
(9547,0,2,"Mistress, you tell Plugger that I want more of his ale.  I can't get enough!",12,0,100,0,0,0, 'Patron', 4986),
(9547,0,3,"Hey Nag, how about you slice me off a piece of that...",12,0,100,0,0,0, 'Patron', 4987),
(9500,0,0,"You got it!",12,0,100,0,0,0, 'Nagmara', 4979),
(9500,0,1,"Coming right up!",12,0,100,0,0,0, 'Nagmara', 4980),
(9500,0,2,"I'll bring it right over, baby...",12,0,100,0,0,0, 'Nagmara', 4981),
(9500,1,0,"Hey, Rocknot!",12,0,100,0,0,0, 'Nagmara', 5000),
(9500,2,0,"Let's go, honey.",12,0,100,0,0,0, 'Nagmara', 5001),
(9500,3,0,"%s kisses her lover.",12,0,100,0,0,0, 'Nagmara', 5002),
(9503,0,0,"Ah, hits the spot!",12,0,100,0,0,0, 'Rocknot', 5172),
(9503,1,0,"I want more ale! Give me more ale!",12,0,100,0,0,0, 'Rocknot', 5166),
(9503,2,0,"That one's empty!!",12,0,100,0,0,0, 'Rocknot', 5167),
(9503,3,0,"Ah, empty again!",12,0,100,0,0,0, 'Rocknot', 5168),
(9503,4,0,"ALE!",12,0,100,0,0,0, 'Rocknot', 5169),
(9503,5,0,"%s kisses Mistress Nagmara",12,0,100,0,0,0, 'Rocknot', 5003),
(9503,6,0,"I'm getting out of here!",12,0,100,0,0,0, 'Rocknot', 5281);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` IN (15) AND `SourceGroup`=2076;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 2076, 0, 0, 0, 8, 0, 4201, 0, 0, 0, 0, 0, '', 'Show the gossip option for Nagmara if the quest The Love Potion is rewarded');

UPDATE `creature_template` SET `npcflag`=`npcflag`|1|4194304 WHERE `entry`= 9988;

SET @GUID := 12482;
DELETE FROM `creature` WHERE `guid`= @GUID;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`) VALUES
(@GUID,28067,230,1,1,0,0,891.271,-174.899,-43.925,0.445,180,0,0,2215,0,0

DELETE FROM `creature_equip_template` WHERE `entry` IN (29519, 29520, 29565, 29566, 29567);
INSERT INTO `creature_equip_template` (`entry`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(29519, 1, 38707, 0, 0, 0),
(29520, 1, 38707, 0, 0, 0),
(29565, 1, 38707, 0, 0, 0),
(29566, 1, 38707, 0, 0, 0),
(29567, 1, 38707, 0, 0, 0);

-- Spawn Borderzone to Zul'Drak
SET @CGUID := 52283;
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+0 AND @CGUID+39;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+0, 26965, 571, 1, 1, 4851.188, -1375.803, 168.173, 2.495821, 120, 0, 0), -- 26965 (Area: 65)
(@CGUID+1, 26965, 571, 1, 1, 4857.981, -1376.318, 168.6309, 2.670354, 120, 0, 0), -- 26965 (Area: 65)
(@CGUID+2, 26942, 571, 1, 1, 4835.941, -1356.574, 168.1345, 3.508112, 120, 0, 0), -- 26942 (Area: 65)
(@CGUID+3, 26943, 571, 1, 1, 4794.83, -1363.528, 168.2291, 2.879793, 120, 0, 0), -- 26943 (Area: 65) (Auras: 31261 - 31261)
(@CGUID+4, 26942, 571, 1, 1, 4824.749, -1351.297, 168.1345, 5.201081, 120, 0, 0), -- 26942 (Area: 65)
(@CGUID+5, 26965, 571, 1, 1, 4845.405, -1390.947, 168.3004, 2.426008, 120, 0, 0), -- 26965 (Area: 65)
(@CGUID+6, 26948, 571, 1, 1, 4879.886, -1359.748, 170.6132, 1.32645, 120, 0, 0), -- 26948 (Area: 65)
(@CGUID+7, 27122, 571, 1, 1, 4861.432, -1393.793, 174.2825, 2.408554, 120, 0, 0), -- 27122 (Area: 65)
(@CGUID+8, 26942, 571, 1, 1, 4818.89, -1360.14, 168.1345, 0.05235988, 120, 0, 0), -- 26942 (Area: 65)
(@CGUID+9, 26943, 571, 1, 1, 4824.268, -1309.96, 168.1351, 1.815142, 120, 0, 0), -- 26943 (Area: 65) (Auras: 31261 - 31261)
(@CGUID+10, 26965, 571, 1, 1, 4813.782, -1379.419, 168.1394, 0.715585, 120, 0, 0), -- 26965 (Area: 65)
(@CGUID+11, 26948, 571, 1, 1, 4787.675, -1357.641, 168.1228, 5.608262, 120, 5, 1), -- 26948 (Area: 65) (possible waypoints or random movement)
(@CGUID+12, 27180, 571, 1, 1, 4828.494, -1359.478, 168.9354, 3.595378, 120, 0, 0), -- 27180 (Area: 65) (Auras: )
(@CGUID+13, 26965, 571, 1, 1, 4759.144, -1324.293, 168.1289, 1.239184, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+14, 26965, 571, 1, 1, 4830.825, -1281.564, 168.1345, 2.478368, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+15, 26942, 571, 1, 1, 4882.462, -1296.305, 168.9128, 5.967298, 120, 5, 1), -- 26942 (Area: 4194) (possible waypoints or random movement)
(@CGUID+16, 26942, 571, 1, 1, 4825.333, -1271.901, 168.1345, 1.466077, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+17, 26965, 571, 1, 1, 4839.098, -1278.017, 168.1345, 2.443461, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+18, 26942, 571, 1, 1, 4776.366, -1298.084, 168.1923, 2.459157, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+19, 26948, 571, 1, 1, 4780.881, -1323.59, 170.382, 5.497787, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+20, 26948, 571, 1, 1, 4860.839, -1288.24, 168.1761, 5.231593, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+21, 26965, 571, 1, 1, 4756.153, -1322.307, 168.082, 1.117011, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+22, 26948, 571, 1, 1, 4828.986, -1302.488, 168.1761, 3.63614, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+23, 26942, 571, 1, 1, 4817.282, -1265.442, 168.1345, 0.3316126, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+24, 26942, 571, 1, 1, 4835.445, -1268.463, 168.1345, 2.548181, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+25, 26942, 571, 1, 1, 4848.663, -1267.707, 168.1599, 5.433909, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+26, 26948, 571, 1, 1, 4835.497, -1239.648, 168.0885, 2.040028, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+27, 26965, 571, 1, 1, 4843.369, -1234.644, 168.1397, 3.926991, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+28, 26943, 571, 1, 1, 4887.302, -1264.812, 171.437, 4.607669, 120, 0, 0), -- 26943 (Area: 4194)
(@CGUID+29, 26965, 571, 1, 1, 4869.199, -1266.455, 168.1345, 5.026548, 120, 0, 0), -- 26965 (Area: 4194)
(@CGUID+30, 27180, 571, 1, 1, 4826.384, -1262.595, 169.1476, 5.51524, 120, 0, 0), -- 27180 (Area: 4194) (Auras: )
(@CGUID+31, 26948, 571, 1, 1, 4883.104, -1231.949, 171.7453, 2.377072, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+32, 26948, 571, 1, 1, 4777.86, -1257.964, 170.2508, 5.732042, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+33, 26943, 571, 1, 1, 4787.492, -1245.858, 170.2264, 0.3839724, 120, 0, 0), -- 26943 (Area: 4194) (Auras: 31261 - 31261)
(@CGUID+34, 26948, 571, 1, 1, 4894.829, -1239.824, 171.6914, 6.06022, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+35, 26616, 571, 1, 1, 4835.255, -1185.161, 169.3726, 0.5858352, 120, 0, 0), -- 26616 (Area: 4194)
(@CGUID+36, 29328, 571, 1, 1, 4751.768, -1247.785, 165.9524, 6.012752, 120, 0, 0), -- 29328 (Area: 4194)
(@CGUID+37, 26942, 571, 1, 1, 4797.997, -1199.684, 168.015, 3.508836, 120, 0, 0), -- 26942 (Area: 4194)
(@CGUID+38, 26948, 571, 1, 1, 4820.067, -1186.061, 168.7476, 1.778343, 120, 0, 0), -- 26948 (Area: 4194)
(@CGUID+39, 26948, 571, 1, 1, 4745.205, -1261.961, 166.8819, 5.879832, 120, 0, 0); -- 26948 (Area: 4194)

-- 1. Arctic Grizzly
SET @NPC := 106511;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4455.596,`position_y`=-826.0573,`position_z`=157.3699 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4455.596,-826.0573,157.3699,0,0,0,0,100,0),
(@PATH,2,4455.596,-823.0573,156.6199,0,0,0,0,100,0),
(@PATH,3,4455.596,-820.3073,156.1199,0,0,0,0,100,0),
(@PATH,4,4455.846,-817.3073,155.6199,0,0,0,0,100,0),
(@PATH,5,4455.846,-814.3073,154.8699,0,0,0,0,100,0),
(@PATH,6,4456.21,-814.3221,155.0774,0,0,0,0,100,0),
(@PATH,7,4456.21,-813.3221,154.8274,0,0,0,0,100,0),
(@PATH,8,4464.21,-813.3221,155.0774,0,0,0,0,100,0),
(@PATH,9,4472.21,-813.5721,154.8274,0,0,0,0,100,0),
(@PATH,10,4482.96,-813.5721,154.0774,0,0,0,0,100,0),
(@PATH,11,4491.96,-813.5721,154.8274,0,0,0,0,100,0),
(@PATH,12,4500.96,-813.8221,155.0774,0,0,0,0,100,0),
(@PATH,13,4501.19,-813.7798,155.2957,0,0,0,0,100,0),
(@PATH,14,4502.94,-813.7798,155.2957,0,0,0,0,100,0),
(@PATH,15,4504.69,-817.2798,156.0457,0,0,0,0,100,0),
(@PATH,16,4506.19,-819.7798,156.5457,0,0,0,0,100,0),
(@PATH,17,4508.19,-823.2798,157.2957,0,0,0,0,100,0),
(@PATH,18,4510.19,-827.0298,158.0457,0,0,0,0,100,0),
(@PATH,19,4510.94,-828.7798,158.7957,0,0,0,0,100,0),
(@PATH,20,4512.19,-831.2798,159.2957,0,0,0,0,100,0),
(@PATH,21,4513.69,-833.7798,159.7957,0,0,0,0,100,0),
(@PATH,22,4515.19,-836.2798,160.5457,0,0,0,0,100,0),
(@PATH,23,4516.94,-839.7798,161.2957,0,0,0,0,100,0),
(@PATH,24,4519.44,-844.2798,162.0457,0,0,0,0,100,0),
(@PATH,25,4521.19,-847.7798,162.7957,0,0,0,0,100,0),
(@PATH,26,4521.416,-848.0215,163.045,0,0,0,0,100,0),
(@PATH,27,4522.166,-849.2715,163.045,0,0,0,0,100,0),
(@PATH,28,4511.916,-853.5215,163.795,0,0,0,0,100,0),
(@PATH,29,4506.666,-855.7715,164.295,0,0,0,0,100,0),
(@PATH,30,4502.916,-857.2715,165.045,0,0,0,0,100,0),
(@PATH,31,4500.166,-858.5215,165.545,0,0,0,0,100,0),
(@PATH,32,4495.666,-860.2715,166.295,0,0,0,0,100,0),
(@PATH,33,4493.258,-861.2418,166.6318,0,0,0,0,100,0),
(@PATH,34,4476.508,-854.7418,165.8818,0,0,0,0,100,0),
(@PATH,35,4470.258,-852.4918,165.1318,0,0,0,0,100,0),
(@PATH,36,4465.508,-850.7418,164.6318,0,0,0,0,100,0),
(@PATH,37,4461.008,-848.7418,164.1318,0,0,0,0,100,0),
(@PATH,38,4457.258,-847.4918,163.6318,0,0,0,0,100,0),
(@PATH,39,4457.196,-847.1956,163.4145,0,0,0,0,100,0),
(@PATH,40,4454.696,-846.1956,162.9145,0,0,0,0,100,0),
(@PATH,41,4454.696,-844.1956,162.1645,0,0,0,0,100,0),
(@PATH,42,4454.946,-841.1956,161.4145,0,0,0,0,100,0),
(@PATH,43,4454.946,-839.1956,160.6645,0,0,0,0,100,0),
(@PATH,44,4455.196,-837.1956,160.1645,0,0,0,0,100,0),
(@PATH,45,4455.196,-834.1956,159.4145,0,0,0,0,100,0),
(@PATH,46,4455.446,-832.1956,158.9145,0,0,0,0,100,0);

-- 2. Arctic Grizzly
SET @NPC := 106526;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4449.314,`position_y`=-732.3552,`position_z`=139.431 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4449.314,-732.3552,139.431,0,0,0,0,100,0),
(@PATH,2,4448.814,-731.3552,138.931,0,0,0,0,100,0),
(@PATH,3,4450.064,-729.6052,138.431,0,0,0,0,100,0),
(@PATH,4,4451.564,-727.1052,137.681,0,0,0,0,100,0),
(@PATH,5,4452.814,-725.3552,136.931,0,0,0,0,100,0),
(@PATH,6,4454.314,-722.8552,136.181,0,0,0,0,100,0),
(@PATH,7,4455.564,-721.3552,135.431,0,0,0,0,100,0),
(@PATH,8,4457.314,-719.1052,134.681,0,0,0,0,100,0),
(@PATH,9,4458.064,-717.3552,134.181,0,0,0,0,100,0),
(@PATH,10,4459.814,-714.8552,133.431,0,0,0,0,100,0),
(@PATH,11,4460.814,-713.1052,132.681,0,0,0,0,100,0),
(@PATH,12,4462.564,-710.6052,131.681,0,0,0,0,100,0),
(@PATH,13,4463.564,-709.1052,130.931,0,0,0,0,100,0),
(@PATH,14,4465.314,-706.6052,130.431,0,0,0,0,100,0),
(@PATH,15,4465.617,-706.4352,130.1077,0,0,0,0,100,0),
(@PATH,16,4466.367,-705.1852,129.8577,0,0,0,0,100,0),
(@PATH,17,4489.202,-704.9454,130.1116,0,0,0,0,100,0),
(@PATH,18,4489.952,-706.9454,130.6116,0,0,0,0,100,0),
(@PATH,19,4490.702,-708.6954,131.3616,0,0,0,0,100,0),
(@PATH,20,4491.452,-710.4454,132.1116,0,0,0,0,100,0),
(@PATH,21,4492.702,-713.4454,132.8616,0,0,0,0,100,0),
(@PATH,22,4493.452,-715.1954,133.6116,0,0,0,0,100,0),
(@PATH,23,4494.202,-716.9454,134.1116,0,0,0,0,100,0),
(@PATH,24,4494.952,-718.9454,134.8616,0,0,0,0,100,0),
(@PATH,25,4495.952,-721.6954,135.6116,0,0,0,0,100,0),
(@PATH,26,4496.702,-723.4454,136.3616,0,0,0,0,100,0),
(@PATH,27,4497.452,-725.1954,136.8616,0,0,0,0,100,0),
(@PATH,28,4498.202,-726.9454,137.3616,0,0,0,0,100,0),
(@PATH,29,4499.452,-729.6954,138.1116,0,0,0,0,100,0),
(@PATH,30,4500.202,-731.4454,138.8616,0,0,0,0,100,0),
(@PATH,31,4500.952,-733.4454,139.3616,0,0,0,0,100,0),
(@PATH,32,4501.702,-735.1954,139.8616,0,0,0,0,100,0),
(@PATH,33,4502.702,-737.9454,140.6116,0,0,0,0,100,0),
(@PATH,34,4503.452,-739.9454,141.3616,0,0,0,0,100,0),
(@PATH,35,4504.452,-741.6954,142.1116,0,0,0,0,100,0),
(@PATH,36,4505.202,-743.4454,142.8616,0,0,0,0,100,0),
(@PATH,37,4488.686,-705.0179,129.7006,0,0,0,0,100,0),
(@PATH,38,4489.704,-706.9329,130.6221,0,0,0,0,100,0),
(@PATH,39,4490.454,-708.6829,131.3721,0,0,0,0,100,0),
(@PATH,40,4491.204,-710.4329,132.1221,0,0,0,0,100,0),
(@PATH,41,4492.454,-713.4329,132.8721,0,0,0,0,100,0),
(@PATH,42,4493.204,-715.1829,133.6221,0,0,0,0,100,0),
(@PATH,43,4493.954,-716.9329,134.3721,0,0,0,0,100,0),
(@PATH,44,4494.704,-718.9329,134.8721,0,0,0,0,100,0),
(@PATH,45,4495.954,-721.6829,135.6221,0,0,0,0,100,0),
(@PATH,46,4496.704,-723.4329,136.3721,0,0,0,0,100,0),
(@PATH,47,4497.204,-725.1829,136.8721,0,0,0,0,100,0),
(@PATH,48,4497.954,-726.9329,137.3721,0,0,0,0,100,0),
(@PATH,49,4499.204,-729.6829,138.1221,0,0,0,0,100,0),
(@PATH,50,4499.954,-731.4329,138.8721,0,0,0,0,100,0),
(@PATH,51,4500.704,-733.4329,139.3721,0,0,0,0,100,0),
(@PATH,52,4501.454,-735.1829,139.8721,0,0,0,0,100,0),
(@PATH,53,4502.704,-737.9329,140.6221,0,0,0,0,100,0),
(@PATH,54,4503.454,-739.6829,141.3721,0,0,0,0,100,0),
(@PATH,55,4504.204,-741.6829,142.1221,0,0,0,0,100,0),
(@PATH,56,4505.454,-744.4329,142.8721,0,0,0,0,100,0),
(@PATH,57,4505.363,-744.7341,143.1125,0,0,0,0,100,0),
(@PATH,58,4505.613,-745.2341,143.3625,0,0,0,0,100,0),
(@PATH,59,4505.113,-747.2341,144.1125,0,0,0,0,100,0),
(@PATH,60,4504.613,-749.2341,145.1125,0,0,0,0,100,0),
(@PATH,61,4504.113,-751.2341,145.6125,0,0,0,0,100,0),
(@PATH,62,4503.363,-753.7341,146.3625,0,0,0,0,100,0),
(@PATH,63,4502.863,-755.7341,146.8625,0,0,0,0,100,0),
(@PATH,64,4502.613,-757.7341,147.6125,0,0,0,0,100,0),
(@PATH,65,4501.863,-760.4841,148.3625,0,0,0,0,100,0),
(@PATH,66,4501.113,-763.4841,148.8625,0,0,0,0,100,0),
(@PATH,67,4500.878,-763.7328,148.9358,0,0,0,0,100,0),
(@PATH,68,4500.878,-764.2328,148.9358,0,0,0,0,100,0),
(@PATH,69,4492.878,-765.2328,148.4358,0,0,0,0,100,0),
(@PATH,70,4485.878,-765.9828,147.6858,0,0,0,0,100,0),
(@PATH,71,4480.378,-766.9828,147.4358,0,0,0,0,100,0),
(@PATH,72,4470.456,-768.4113,146.689,0,0,0,0,100,0),
(@PATH,73,4468.456,-764.9113,145.939,0,0,0,0,100,0),
(@PATH,74,4466.456,-761.4113,145.439,0,0,0,0,100,0),
(@PATH,75,4464.956,-758.9113,144.689,0,0,0,0,100,0),
(@PATH,76,4462.956,-755.4113,143.939,0,0,0,0,100,0),
(@PATH,77,4460.956,-752.1613,143.189,0,0,0,0,100,0),
(@PATH,78,4459.456,-749.6613,142.689,0,0,0,0,100,0),
(@PATH,79,4457.456,-746.1613,142.189,0,0,0,0,100,0),
(@PATH,80,4454.956,-741.9113,141.689,0,0,0,0,100,0),
(@PATH,81,4453.456,-739.4113,140.939,0,0,0,0,100,0),
(@PATH,82,4451.456,-735.9113,140.439,0,0,0,0,100,0);

-- 3. Arctic Grizzly
SET @NPC := 106524;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4497.59,`position_y`=-893.8101,`position_z`=166.2068 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4497.59,-893.8101,166.2068,0,0,0,0,100,0),
(@PATH,2,4506.247,-894.3373,166.1922,0,0,0,0,100,0),
(@PATH,3,4506.506,-894.2155,166.6691,0,0,0,0,100,0),
(@PATH,4,4514.256,-898.7155,167.1691,0,0,0,0,100,0),
(@PATH,5,4521.006,-902.4655,167.9191,0,0,0,0,100,0),
(@PATH,6,4525.506,-904.7155,168.1691,0,0,0,0,100,0),
(@PATH,7,4529.006,-906.7155,168.9191,0,0,0,0,100,0),
(@PATH,8,4531.506,-908.2155,169.6691,0,0,0,0,100,0),
(@PATH,9,4534.895,-910.2976,170.6145,0,0,0,0,100,0),
(@PATH,10,4533.645,-916.0476,170.8645,0,0,0,0,100,0),
(@PATH,11,4531.895,-922.7976,171.3645,0,0,0,0,100,0),
(@PATH,12,4530.395,-930.5476,172.1145,0,0,0,0,100,0),
(@PATH,13,4530.322,-930.6996,172.1171,0,0,0,0,100,0),
(@PATH,14,4529.822,-932.4496,172.1171,0,0,0,0,100,0),
(@PATH,15,4524.822,-932.9496,171.6171,0,0,0,0,100,0),
(@PATH,16,4516.072,-934.1996,171.3671,0,0,0,0,100,0),
(@PATH,17,4494.955,-936.9406,171.2598,0,0,0,0,100,0),
(@PATH,18,4485.705,-932.9406,170.5098,0,0,0,0,100,0),
(@PATH,19,4476.705,-928.6906,170.0098,0,0,0,0,100,0),
(@PATH,20,4465.955,-924.1906,169.7598,0,0,0,0,100,0),
(@PATH,21,4457.705,-920.4406,169.0098,0,0,0,0,100,0),
(@PATH,22,4457.823,-920.1961,168.8619,0,0,0,0,100,0),
(@PATH,23,4455.823,-919.1961,168.6119,0,0,0,0,100,0),
(@PATH,24,4464.823,-892.9461,168.3619,0,0,0,0,100,0),
(@PATH,25,4455.874,-918.874,168.5312,0,0,0,0,100,0),
(@PATH,26,4464.785,-893.3854,168.254,0,0,0,0,100,0),
(@PATH,27,4465.062,-893.3198,168.0946,0,0,0,0,100,0),
(@PATH,28,4465.562,-891.8198,168.0946,0,0,0,0,100,0),
(@PATH,29,4476.312,-892.5698,167.5946,0,0,0,0,100,0),
(@PATH,30,4484.312,-893.0698,167.0946,0,0,0,0,100,0),
(@PATH,31,4492.062,-893.5698,166.5946,0,0,0,0,100,0);

-- 4. Arctic Grizzly
SET @NPC := 106525;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4568.884,`position_y`=-844.4005,`position_z`=165.7502 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4568.884,-844.4005,165.7502,0,0,0,0,100,0),
(@PATH,2,4567.384,-842.4005,165.2502,0,0,0,0,100,0),
(@PATH,3,4539.384,-858.9005,165.0002,0,0,0,0,100,0),
(@PATH,4,4547.863,-854.0766,165.1171,0,0,0,0,100,0),
(@PATH,5,4534.446,-861.8645,164.7767,0,0,0,0,100,0),
(@PATH,6,4534.374,-862.3221,164.8531,0,0,0,0,100,0),
(@PATH,7,4532.874,-863.0721,164.8531,0,0,0,0,100,0),
(@PATH,8,4533.624,-868.0721,165.3531,0,0,0,0,100,0),
(@PATH,9,4534.624,-874.0721,166.1031,0,0,0,0,100,0),
(@PATH,10,4535.874,-879.8221,166.8531,0,0,0,0,100,0),
(@PATH,11,4536.874,-885.8221,167.6031,0,0,0,0,100,0),
(@PATH,12,4537.624,-890.5721,167.8531,0,0,0,0,100,0),
(@PATH,13,4538.374,-895.3221,168.6031,0,0,0,0,100,0),
(@PATH,14,4538.874,-898.3221,169.1031,0,0,0,0,100,0),
(@PATH,15,4539.374,-901.3221,169.6031,0,0,0,0,100,0),
(@PATH,16,4539.874,-904.3221,170.3531,0,0,0,0,100,0),
(@PATH,17,4540.624,-908.0721,170.8531,0,0,0,0,100,0),
(@PATH,18,4540.836,-908.4626,171.0686,0,0,0,0,100,0),
(@PATH,19,4541.336,-910.9626,171.8186,0,0,0,0,100,0),
(@PATH,20,4545.336,-910.9626,172.3186,0,0,0,0,100,0),
(@PATH,21,4549.336,-910.7126,172.5686,0,0,0,0,100,0),
(@PATH,22,4555.336,-910.4626,173.3186,0,0,0,0,100,0),
(@PATH,23,4564.086,-910.2126,173.8186,0,0,0,0,100,0),
(@PATH,24,4580.394,-909.6721,174.1334,0,0,0,0,100,0),
(@PATH,25,4593.894,-898.1721,173.6334,0,0,0,0,100,0),
(@PATH,26,4596.875,-895.4355,173.4156,0,0,0,0,100,0),
(@PATH,27,4590.375,-880.1855,172.9156,0,0,0,0,100,0),
(@PATH,28,4588.625,-875.4355,172.6656,0,0,0,0,100,0),
(@PATH,29,4586.889,-871.8877,172.1367,0,0,0,0,100,0),
(@PATH,30,4585.139,-869.3877,171.3867,0,0,0,0,100,0),
(@PATH,31,4583.139,-865.8877,170.6367,0,0,0,0,100,0),
(@PATH,32,4581.889,-864.3877,169.8867,0,0,0,0,100,0),
(@PATH,33,4579.639,-860.8877,168.8867,0,0,0,0,100,0),
(@PATH,34,4578.139,-858.3877,168.6367,0,0,0,0,100,0),
(@PATH,35,4577.139,-857.1377,167.8867,0,0,0,0,100,0),
(@PATH,36,4575.139,-853.6377,167.1367,0,0,0,0,100,0),
(@PATH,37,4572.389,-849.3877,166.6367,0,0,0,0,100,0);

-- 5. Hulking Atrocity
SET @NPC := 52303;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4873.201,`position_y`=-1293.072,`position_z`=168.7106 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4873.201,-1293.072,168.7106,0,0,0,0,100,0),
(@PATH,2,4884.201,-1296.572,169.4606,0,0,0,0,100,0),
(@PATH,3,4887.201,-1297.572,169.9606,0,0,0,0,100,0),
(@PATH,4,4888.951,-1298.322,170.7106,0,0,0,0,100,0),
(@PATH,5,4890.951,-1298.822,171.4606,0,0,0,0,100,0),
(@PATH,6,4891.121,-1298.756,171.5394,0,0,0,0,100,0),
(@PATH,7,4891.621,-1299.006,171.5394,0,0,0,0,100,0),
(@PATH,8,4897.621,-1296.006,172.2894,0,0,0,0,100,0),
(@PATH,9,4899.621,-1295.506,173.0394,0,0,0,0,100,0),
(@PATH,10,4900.371,-1295.256,173.5394,0,0,0,0,100,0),
(@PATH,11,4902.371,-1294.256,174.7894,0,0,0,0,100,0),
(@PATH,12,4901.395,-1294.679,173.9983,0,0,0,0,100,0),
(@PATH,13,4899.395,-1295.679,173.2483,0,0,0,0,100,0),
(@PATH,14,4897.895,-1296.179,172.2483,0,0,0,0,100,0),
(@PATH,15,4893.395,-1298.179,171.7483,0,0,0,0,100,0),
(@PATH,16,4891.389,-1298.837,171.4858,0,0,0,0,100,0),
(@PATH,17,4889.389,-1298.337,170.4858,0,0,0,0,100,0),
(@PATH,18,4886.639,-1297.337,169.7358,0,0,0,0,100,0),
(@PATH,19,4883.639,-1296.587,169.2358,0,0,0,0,100,0),
(@PATH,20,4880.139,-1295.587,168.7358,0,0,0,0,100,0),
(@PATH,21,4872.796,-1292.83,168.4547,0,0,0,0,100,0);

-- 6. Hulking Atrocity
SET @NPC := 52309;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4833.301,`position_y`=-1250.246,`position_z`=168.0729 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4833.301,-1250.246,168.0729,0,0,0,0,100,0),
(@PATH,2,4833.497,-1250.006,168.2503,0,0,0,0,100,0),
(@PATH,3,4833.301,-1250.246,168.0729,0,0,0,0,100,0),
(@PATH,4,4833.65,-1250.326,168.146,0,0,0,0,100,0),
(@PATH,5,4833.301,-1250.246,168.0729,0,0,0,0,100,0);

-- 7. Decrepit Necromancer
SET @NPC := 52301;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4783.401,`position_y`=-1303.945,`position_z`=168.4535 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4783.401,-1303.945,168.4535,0,0,0,0,100,0),
(@PATH,2,4781.151,-1301.695,168.4535,0,0,0,0,100,0),
(@PATH,3,4781.063,-1301.9,168.1761,0,0,0,0,100,0),
(@PATH,4,4774.518,-1296.581,168.1986,6.020476,0,0,0,100,0),
(@PATH,5,4781.063,-1301.9,168.1761,0,0,0,0,100,0),
(@PATH,6,4781.41,-1301.784,168.4261,0,0,0,0,100,0),
(@PATH,7,4783.66,-1304.284,168.4261,0,0,0,0,100,0),
(@PATH,8,4788.66,-1308.284,168.4261,0,0,0,0,100,0),
(@PATH,9,4789.16,-1310.284,168.4261,0,0,0,0,100,0),
(@PATH,10,4789.16,-1311.284,168.4261,0,0,0,0,100,0),
(@PATH,11,4789.16,-1312.284,168.4261,0,0,0,0,100,0),
(@PATH,12,4789.66,-1316.534,168.4261,0,0,0,0,100,0),
(@PATH,13,4792.242,-1318.595,168.6807,0,0,0,0,100,0),
(@PATH,14,4788.742,-1322.345,169.1807,0,0,0,0,100,0),
(@PATH,15,4787.242,-1323.595,169.6807,0,0,0,0,100,0),
(@PATH,16,4785.492,-1325.595,170.4307,0,0,0,0,100,0),
(@PATH,17,4783.992,-1327.095,170.9307,0,0,0,0,100,0),
(@PATH,18,4784.781,-1326.539,170.3771,0,0,0,0,100,0),
(@PATH,19,4786.781,-1324.289,169.8771,0,0,0,0,100,0),
(@PATH,20,4788.531,-1322.539,169.1271,0,0,0,0,100,0),
(@PATH,21,4791.907,-1318.56,168.3817,0,0,0,0,100,0),
(@PATH,22,4789.657,-1316.31,168.3817,0,0,0,0,100,0),
(@PATH,23,4789.157,-1312.31,168.3817,0,0,0,0,100,0),
(@PATH,24,4789.157,-1311.56,168.3817,0,0,0,0,100,0),
(@PATH,25,4789.157,-1310.31,168.3817,0,0,0,0,100,0),
(@PATH,26,4788.657,-1308.31,168.3817,0,0,0,0,100,0),
(@PATH,27,4783.657,-1304.06,168.3817,0,0,0,0,100,0);

-- 8. Hulking Atrocity
SET @NPC := 52309;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4833.096,`position_y`=-1235.037,`position_z`=168.1427 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4833.096,-1235.037,168.1427,0,0,0,0,100,0),
(@PATH,2,4815.159,-1247.104,168.4296,0,0,0,0,100,0),
(@PATH,3,4848.274,-1264.722,168.3758,0,0,0,0,100,0),
(@PATH,4,4833.156,-1235.177,168.138,0,0,0,0,100,0),
(@PATH,5,4814.97,-1247.315,168.4292,0,0,0,0,100,0),
(@PATH,6,4848.213,-1264.69,168.3758,0,0,0,0,100,0);

-- 9. Battered Drakkari Berserker
SET @NPC := 52286;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4795.928,`position_y`=-1359.065,`position_z`=168.3463 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4795.928,-1359.065,168.3463,0,0,0,0,100,0),
(@PATH,2,4793.178,-1361.315,168.3463,0,0,0,0,100,0),
(@PATH,3,4793.178,-1360.565,168.3463,0,0,0,0,100,0),
(@PATH,4,4791.678,-1359.065,168.3463,0,0,0,0,100,0),
(@PATH,5,4790.678,-1358.315,168.3463,0,0,0,0,100,0),
(@PATH,6,4786.428,-1355.815,169.0963,0,0,0,0,100,0),
(@PATH,7,4783.678,-1354.065,168.5963,0,0,0,0,100,0),
(@PATH,8,4787.492,-1356.543,168.6921,0,0,0,0,100,0),
(@PATH,9,4782.413,-1357.459,168.132,0,0,0,0,100,0),
(@PATH,10,4783.502,-1354.219,168.7146,0,0,0,0,100,0),
(@PATH,11,4788.502,-1358.219,168.2146,0,0,0,0,100,0),
(@PATH,12,4789.502,-1359.469,168.2146,0,0,0,0,100,0),
(@PATH,13,4791.252,-1360.219,168.4646,0,0,0,0,100,0),
(@PATH,14,4791.752,-1360.469,168.7146,0,0,0,0,100,0),
(@PATH,15,4791.417,-1360.317,168.4067,0,0,0,0,100,0),
(@PATH,16,4791.917,-1360.567,168.6567,0,0,0,0,100,0),
(@PATH,17,4793.417,-1361.317,168.4067,0,0,0,0,100,0),
(@PATH,18,4793.417,-1361.817,168.1567,0,0,0,0,100,0),
(@PATH,19,4796.167,-1361.317,168.1567,0,0,0,0,100,0),
(@PATH,20,4798.917,-1358.067,168.1567,0,0,0,0,100,0),
(@PATH,21,4799.917,-1357.067,168.1567,0,0,0,0,100,0),
(@PATH,22,4807.036,-1350.74,168.3832,0,0,0,0,100,0),
(@PATH,23,4819.165,-1338.013,168.4106,0,0,0,0,100,0),
(@PATH,24,4804.908,-1316.614,168.1761,0,0,0,0,100,0),
(@PATH,25,4799.671,-1308.67,168.1761,0,0,0,0,100,0),
(@PATH,26,4819.17,-1338.246,168.1345,0,0,0,0,100,0),
(@PATH,27,4819.192,-1338.354,168.4123,0,0,0,0,100,0),
(@PATH,28,4806.981,-1351.038,168.4544,0,0,0,0,100,0),
(@PATH,29,4800.231,-1357.038,168.2044,0,0,0,0,100,0),
(@PATH,30,4799.231,-1358.038,168.2044,0,0,0,0,100,0),
(@PATH,31,4795.981,-1359.038,168.2044,0,0,0,0,100,0);

-- 10. Decrepit Necromancer
SET @NPC := 52298;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4889.711,`position_y`=-1307.407,`position_z`=172.0003 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4889.711,-1307.407,172.0003,0,0,0,0,100,0),
(@PATH,2,4890.461,-1307.907,172.0003,0,0,0,0,100,0),
(@PATH,3,4897.94,-1294.326,172,0,0,0,0,100,0),
(@PATH,4,4896.19,-1293.326,171,0,0,0,0,100,0),
(@PATH,5,4894.44,-1292.576,170.25,0,0,0,0,100,0),
(@PATH,6,4892.44,-1291.826,170,0,0,0,0,100,0),
(@PATH,7,4888.94,-1290.076,169.25,0,0,0,0,100,0),
(@PATH,8,4882.44,-1287.576,168.75,0,0,0,0,100,0),
(@PATH,9,4865.969,-1279.812,168.4411,0,0,0,0,100,0),
(@PATH,10,4863.719,-1283.312,168.4411,0,0,0,0,100,0),
(@PATH,11,4862.719,-1284.312,168.4411,0,0,0,0,100,0),
(@PATH,12,4860.719,-1287.312,168.4411,0,0,0,0,100,0),
(@PATH,13,4862.719,-1290.812,168.4411,0,0,0,0,100,0),
(@PATH,14,4862.351,-1292.805,168.5391,0,0,0,0,100,0),
(@PATH,15,4879.851,-1302.305,169.2891,0,0,0,0,100,0),
(@PATH,16,4882.351,-1303.555,170.0391,0,0,0,0,100,0),
(@PATH,17,4885.101,-1305.055,170.5391,0,0,0,0,100,0),
(@PATH,18,4886.851,-1306.055,171.2891,0,0,0,0,100,0),
(@PATH,19,4889.351,-1307.555,172.0391,0,0,0,0,100,0);

-- 11. Hulking Atrocity
SET @NPC := 52302;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4797.891,`position_y`=-1316.5,`position_z`=168.4261 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4797.891,-1316.5,168.4261,0,0,0,0,100,0),
(@PATH,2,4791.748,-1300.289,168.1761,0,0,0,0,100,0),
(@PATH,3,4788.525,-1291.622,168.1761,0,0,0,0,100,0),
(@PATH,4,4788.608,-1291.644,168.4261,0,0,0,0,100,0),
(@PATH,5,4775.032,-1307.969,169.1507,0,0,0,0,100,0),
(@PATH,6,4775.532,-1309.969,168.4007,0,0,0,0,100,0),
(@PATH,7,4775.782,-1310.969,167.6507,0,0,0,0,100,0),
(@PATH,8,4776.032,-1311.719,167.1507,0,0,0,0,100,0),
(@PATH,9,4776.282,-1313.719,166.6507,0,0,0,0,100,0),
(@PATH,10,4775.782,-1315.969,166.6507,0,0,0,0,100,0),
(@PATH,11,4776.282,-1318.469,166.6507,0,0,0,0,100,0),
(@PATH,12,4777.032,-1319.469,167.6507,0,0,0,0,100,0),
(@PATH,13,4778.032,-1320.469,169.4007,0,0,0,0,100,0),
(@PATH,14,4779.282,-1321.719,170.4007,0,0,0,0,100,0),
(@PATH,15,4782.282,-1324.719,170.6507,0,0,0,0,100,0),
(@PATH,16,4782.53,-1324.803,170.7992,0,0,0,0,100,0),
(@PATH,17,4783.53,-1326.053,170.7992,0,0,0,0,100,0),
(@PATH,18,4786.03,-1324.553,170.0492,0,0,0,0,100,0),
(@PATH,19,4789.28,-1322.303,169.2992,0,0,0,0,100,0),
(@PATH,20,4793.28,-1319.803,168.5492,0,0,0,0,100,0),
(@PATH,21,4797.741,-1316.434,168.4261,0,0,0,0,100,0),
(@PATH,22,4788.488,-1291.569,168.4261,0,0,0,0,100,0),
(@PATH,23,4767.418,-1289.177,168.6507,0,0,0,0,100,0),
(@PATH,24,4771.168,-1299.927,168.6507,0,0,0,0,100,0),
(@PATH,25,4773.168,-1308.177,168.1507,0,0,0,0,100,0),
(@PATH,26,4773.918,-1309.927,167.4007,0,0,0,0,100,0),
(@PATH,27,4774.668,-1312.177,166.9007,0,0,0,0,100,0),
(@PATH,28,4776.418,-1313.677,166.6507,0,0,0,0,100,0),
(@PATH,29,4775.668,-1315.927,166.6507,0,0,0,0,100,0),
(@PATH,30,4776.168,-1318.427,166.6507,0,0,0,0,100,0),
(@PATH,31,4777.168,-1319.427,167.6507,0,0,0,0,100,0),
(@PATH,32,4778.168,-1320.677,169.4007,0,0,0,0,100,0),
(@PATH,33,4779.168,-1321.677,170.4007,0,0,0,0,100,0),
(@PATH,34,4782.168,-1324.677,170.6507,0,0,0,0,100,0);

-- 12. Hulking Atrocity
SET @NPC := 52315;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4786.356,`position_y`=-1263.052,`position_z`=170.254 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4786.356,-1263.052,170.254,0,0,0,0,100,0),
(@PATH,2,4779.106,-1258.552,170.754,0,0,0,0,100,0),
(@PATH,3,4773.106,-1254.802,170.254,0,0,0,0,100,0),
(@PATH,4,4772.703,-1254.717,170.2665,0,0,0,0,100,0),
(@PATH,5,4771.203,-1253.467,169.7665,0,0,0,0,100,0),
(@PATH,6,4770.953,-1250.467,169.2665,0,0,0,0,100,0),
(@PATH,7,4770.203,-1246.467,168.7665,0,0,0,0,100,0),
(@PATH,8,4769.703,-1242.967,168.2665,0,0,0,0,100,0),
(@PATH,9,4768.953,-1237.967,167.7665,0,0,0,0,100,0),
(@PATH,10,4771.858,-1254.272,169.9462,0,0,0,0,100,0),
(@PATH,11,4770.951,-1249.199,169.4025,0,0,0,0,100,0),
(@PATH,12,4770.451,-1246.199,168.6525,0,0,0,0,100,0),
(@PATH,13,4769.951,-1242.449,168.1525,0,0,0,0,100,0),
(@PATH,14,4768.951,-1236.449,167.4025,0,0,0,0,100,0),
(@PATH,15,4771.091,-1251.908,169.4031,0,0,0,0,100,0),
(@PATH,16,4771.341,-1253.658,169.9031,0,0,0,0,100,0),
(@PATH,17,4775.591,-1256.408,170.6531,0,0,0,0,100,0),
(@PATH,18,4787.091,-1263.408,169.9031,0,0,0,0,100,0),
(@PATH,19,4786.356,-1263.052,170.254,0,0,0,0,100,0);


-- Dragonblight - Scarlet Point

-- 1. Onslaught Infantry
SET @NPC := 114254;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4572.629,`position_y`=-514.3341,`position_z`=155.2067 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4572.629,-514.3341,155.2067,0,0,0,0,100,0),
(@PATH,2,4577.129,-522.0841,155.2067,0,0,0,0,100,0),
(@PATH,3,4577.187,-522.428,155.2298,0,0,0,0,100,0),
(@PATH,4,4577.687,-522.928,155.2298,0,0,0,0,100,0),
(@PATH,5,4577.687,-526.928,155.2298,0,0,0,0,100,0),
(@PATH,6,4578.187,-531.678,155.2298,0,0,0,0,100,0),
(@PATH,7,4577.187,-532.928,155.2298,0,0,0,0,100,0),
(@PATH,8,4578.359,-535.9939,155.2575,0,0,0,0,100,0),
(@PATH,9,4576.859,-539.7439,155.2575,0,0,0,0,100,0),
(@PATH,10,4576.359,-541.2439,155.2575,0,0,0,0,100,0),
(@PATH,11,4575.859,-542.4939,155.2575,0,0,0,0,100,0),
(@PATH,12,4574.067,-547.567,155.2375,0,0,0,0,100,0),
(@PATH,13,4572.817,-547.817,155.2375,0,0,0,0,100,0),
(@PATH,14,4570.817,-548.567,155.2375,0,0,0,0,100,0),
(@PATH,15,4566.067,-550.067,155.2375,0,0,0,0,100,0),
(@PATH,16,4560.803,-551.7219,155.0219,0,0,0,0,100,0),
(@PATH,17,4555.803,-548.9719,155.0219,0,0,0,0,100,0),
(@PATH,18,4548.898,-545.5068,155.2439,0,0,0,0,100,0),
(@PATH,19,4548.148,-544.0068,155.2439,0,0,0,0,100,0),
(@PATH,20,4545.398,-539.5068,154.9939,0,0,0,0,100,0),
(@PATH,21,4545.385,-539.1914,154.97,0,0,0,0,100,0),
(@PATH,22,4544.385,-537.1914,155.22,0,0,0,0,100,0),
(@PATH,23,4544.885,-533.4414,155.22,0,0,0,0,100,0),
(@PATH,24,4545.635,-527.1914,155.22,0,0,0,0,100,0),
(@PATH,25,4545.818,-526.8594,155.2668,0,0,0,0,100,0),
(@PATH,26,4545.818,-526.3594,155.2668,0,0,0,0,100,0),
(@PATH,27,4549.318,-521.8594,155.0168,0,0,0,0,100,0),
(@PATH,28,4551.818,-518.1094,155.0168,0,0,0,0,100,0),
(@PATH,29,4552.098,-517.9098,155.1916,0,0,0,0,100,0),
(@PATH,30,4553.848,-515.9098,155.1916,0,0,0,0,100,0),
(@PATH,31,4556.598,-515.6598,155.1916,0,0,0,0,100,0),
(@PATH,32,4558.098,-515.6598,155.1916,0,0,0,0,100,0),
(@PATH,33,4562.348,-515.1598,155.1916,0,0,0,0,100,0),
(@PATH,34,4566.348,-514.9098,155.1916,0,0,0,0,100,0);

-- 2. Workemotes
-- Onslaught Mason SAI
SET @ENTRY := 27333;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,1,0,100,0,2000,2000,2000,2000,5,28,0,0,0,0,0,1,0,0,0,0,0,0,0,"Onslaught Mason - Out of Combat - Play Emote 28");

-- 3. Onslaught Raven Archon 
UPDATE `smart_scripts` SET `action_param1`=1 WHERE  `entryorguid`=27357 AND `source_type`=0 AND `id`=0 AND `link`=0;
SET @NPC := 117141;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4602.237,`position_y`=-548.184,`position_z`=157.1292 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4602.237,-548.184,157.1292,0,0,0,0,100,0),
(@PATH,2,4599.987,-549.934,156.3792,0,0,0,0,100,0),
(@PATH,3,4596.987,-552.184,155.8792,0,0,0,0,100,0),
(@PATH,4,4593.737,-554.434,155.3792,0,0,0,0,100,0),
(@PATH,5,4594.211,-554.0303,155.7048,0,0,0,0,100,0),
(@PATH,6,4597.211,-552.0303,155.9548,0,0,0,0,100,0),
(@PATH,7,4600.461,-549.5303,156.7048,0,0,0,0,100,0),
(@PATH,8,4600.543,-549.354,156.9763,0,0,0,0,100,0),
(@PATH,9,4602.543,-547.854,157.2263,0,0,0,0,100,0),
(@PATH,10,4607.293,-546.604,158.2263,0,0,0,0,100,0),
(@PATH,11,4610.293,-546.104,158.7263,0,0,0,0,100,0),
(@PATH,12,4613.043,-545.354,159.2263,0,0,0,0,100,0),
(@PATH,13,4614.793,-544.854,159.9763,0,0,0,0,100,0),
(@PATH,14,4617.793,-543.854,160.7263,0,0,0,0,100,0),
(@PATH,15,4620.543,-543.104,161.4763,0,0,0,0,100,0),
(@PATH,16,4622.543,-542.604,162.2263,0,0,0,0,100,0),
(@PATH,17,4622.75,-542.4305,162.4348,0,0,0,0,100,0),
(@PATH,18,4623.5,-542.1805,162.6848,0,0,0,0,100,0),
(@PATH,19,4626,-540.1805,163.6848,0,0,0,0,100,0),
(@PATH,20,4627.5,-538.9305,164.1848,0,0,0,0,100,0),
(@PATH,21,4629.5,-537.4305,165.1848,0,0,0,0,100,0),
(@PATH,22,4631.75,-535.4305,165.9348,0,0,0,0,100,0),
(@PATH,23,4634.75,-532.9305,166.4348,0,0,0,0,100,0),
(@PATH,24,4635.075,-532.534,166.5515,0,0,0,0,100,0),
(@PATH,25,4635.825,-532.034,166.8015,0,0,0,0,100,0),
(@PATH,26,4641.044,-524.0594,167.1748,0,0,0,0,100,0),
(@PATH,27,4640.689,-524.028,167.0105,0,0,0,0,100,0),
(@PATH,28,4640.771,-523.9791,167.2765,0,0,0,0,100,0),
(@PATH,29,4635.734,-532.2753,166.7173,0,0,0,0,100,0),
(@PATH,30,4633.234,-534.2753,166.2173,0,0,0,0,100,0),
(@PATH,31,4630.984,-536.0253,165.7173,0,0,0,0,100,0),
(@PATH,32,4628.984,-537.7753,164.7173,0,0,0,0,100,0),
(@PATH,33,4626.734,-539.7753,163.9673,0,0,0,0,100,0),
(@PATH,34,4624.984,-541.0253,163.2173,0,0,0,0,100,0),
(@PATH,35,4624.819,-541.2441,162.7961,0,0,0,0,100,0),
(@PATH,36,4623.319,-542.4941,162.5461,0,0,0,0,100,0),
(@PATH,37,4621.319,-542.9941,161.7961,0,0,0,0,100,0),
(@PATH,38,4619.569,-543.4941,161.0461,0,0,0,0,100,0),
(@PATH,39,4617.569,-543.9941,160.2961,0,0,0,0,100,0),
(@PATH,40,4613.819,-544.7441,159.7961,0,0,0,0,100,0),
(@PATH,41,4612.069,-545.2441,159.0461,0,0,0,0,100,0),
(@PATH,42,4609.069,-545.9941,158.5461,0,0,0,0,100,0),
(@PATH,43,4606.069,-546.9941,157.7961,0,0,0,0,100,0),
(@PATH,44,4602.238,-548.0697,157.0609,0,0,0,0,100,0),
(@PATH,45,4599.988,-549.8197,156.5609,0,0,0,0,100,0),
(@PATH,46,4596.738,-552.3197,155.8109,0,0,0,0,100,0),
(@PATH,47,4593.738,-554.3197,155.5609,0,0,0,0,100,0),
(@PATH,48,4594.211,-554.0303,155.7048,0,0,0,0,100,0),
(@PATH,49,4597.211,-552.0303,155.9548,0,0,0,0,100,0),
(@PATH,50,4600.461,-549.5303,156.7048,0,0,0,0,100,0);

-- 4. Onslaught Raven Archon 
SET @NPC := 117137;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4644.006,`position_y`=-489.4915,`position_z`=168.7654 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4644.006,-489.4915,168.7654,0,0,0,0,100,0),
(@PATH,2,4643.756,-493.4915,168.2654,0,0,0,0,100,0),
(@PATH,3,4643.256,-496.4915,167.7654,0,0,0,0,100,0),
(@PATH,4,4643.006,-498.4915,167.2654,0,0,0,0,100,0),
(@PATH,5,4643.311,-495.9854,167.7208,0,0,0,0,100,0),
(@PATH,6,4643.561,-492.9854,168.2208,0,0,0,0,100,0),
(@PATH,7,4643.817,-492.9625,168.5086,0,0,0,0,100,0),
(@PATH,8,4644.317,-489.2125,168.7586,0,0,0,0,100,0);

-- 5. Onslaught Raven Archon 
SET @NPC := 117142;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4568.026,`position_y`=-587.3014,`position_z`=151.4318 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4568.026,-587.3014,151.4318,0,0,0,0,100,0),
(@PATH,2,4564.026,-587.5514,150.6818,0,0,0,0,100,0),
(@PATH,3,4560.276,-587.8014,150.1818,0,0,0,0,100,0),
(@PATH,4,4557.276,-588.0514,149.6818,0,0,0,0,100,0),
(@PATH,5,4554.276,-588.3014,149.1818,0,0,0,0,100,0),
(@PATH,6,4553.841,-588.2387,148.9315,0,0,0,0,100,0),
(@PATH,7,4553.341,-588.4887,148.9315,0,0,0,0,100,0),
(@PATH,8,4549.591,-587.4887,148.1815,0,0,0,0,100,0),
(@PATH,9,4546.591,-586.7387,147.4315,0,0,0,0,100,0),
(@PATH,10,4543.841,-586.4887,147.1815,0,0,0,0,100,0),
(@PATH,11,4540.091,-585.4887,146.4315,0,0,0,0,100,0),
(@PATH,12,4537.091,-584.9887,145.6815,0,0,0,0,100,0),
(@PATH,13,4536.776,-584.8312,145.5589,0,0,0,0,100,0),
(@PATH,14,4535.276,-584.5812,145.3089,0,0,0,0,100,0),
(@PATH,15,4532.526,-585.5812,144.5589,0,0,0,0,100,0),
(@PATH,16,4530.776,-586.0812,143.8089,0,0,0,0,100,0),
(@PATH,17,4529.026,-586.8312,143.5589,0,0,0,0,100,0),
(@PATH,18,4527.026,-587.0812,142.8089,0,0,0,0,100,0),
(@PATH,19,4525.026,-587.8312,142.0589,0,0,0,0,100,0),
(@PATH,20,4524.905,-587.9237,142.0388,0,0,0,0,100,0),
(@PATH,21,4526.655,-587.1737,142.7888,0,0,0,0,100,0),
(@PATH,22,4528.655,-586.6737,143.2888,0,0,0,0,100,0),
(@PATH,23,4530.405,-586.1737,143.7888,0,0,0,0,100,0),
(@PATH,24,4533.155,-585.1737,144.5388,0,0,0,0,100,0),
(@PATH,25,4533.413,-585.1615,144.8716,0,0,0,0,100,0),
(@PATH,26,4535.413,-584.6615,145.3716,0,0,0,0,100,0),
(@PATH,27,4538.163,-585.4115,146.1216,0,0,0,0,100,0),
(@PATH,28,4541.163,-585.9115,146.3716,0,0,0,0,100,0),
(@PATH,29,4543.913,-586.6615,147.1216,0,0,0,0,100,0),
(@PATH,30,4547.913,-587.1615,147.8716,0,0,0,0,100,0),
(@PATH,31,4550.663,-587.9115,148.3716,0,0,0,0,100,0),
(@PATH,32,4551.041,-587.8854,148.5696,0,0,0,0,100,0),
(@PATH,33,4553.541,-588.3854,149.0696,0,0,0,0,100,0),
(@PATH,34,4556.541,-588.1354,149.5696,0,0,0,0,100,0),
(@PATH,35,4560.291,-587.8854,150.0696,0,0,0,0,100,0),
(@PATH,36,4564.291,-587.6354,150.8196,0,0,0,0,100,0),
(@PATH,37,4564.641,-587.5833,151.1127,0,0,0,0,100,0),
(@PATH,38,4568.141,-587.3333,151.6127,0,0,0,0,100,0),
(@PATH,39,4571.141,-583.3333,152.3627,0,0,0,0,100,0),
(@PATH,40,4575.641,-576.8333,152.6127,0,0,0,0,100,0),
(@PATH,41,4580.891,-569.8333,153.3627,0,0,0,0,100,0),
(@PATH,42,4584.391,-564.8333,153.8627,0,0,0,0,100,0),
(@PATH,43,4583.907,-565.6901,153.7024,0,0,0,0,100,0),
(@PATH,44,4580.407,-570.4401,153.2024,0,0,0,0,100,0),
(@PATH,45,4574.657,-578.4401,152.7024,0,0,0,0,100,0),
(@PATH,46,4570.657,-583.9401,152.2024,0,0,0,0,100,0);

-- 6. Onslaught Death Knight
SET @NPC := 117875;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4570.128,`position_y`=-631.7788,`position_z`=159.2071 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4570.128,-631.7788,159.2071,0,0,0,0,100,0),
(@PATH,2,4570.628,-632.5288,159.7071,0,0,0,0,100,0),
(@PATH,3,4572.128,-631.0288,160.2071,0,0,0,0,100,0),
(@PATH,4,4574.378,-629.0288,160.2071,0,0,0,0,100,0),
(@PATH,5,4584.378,-619.7788,160.9571,0,0,0,0,100,0),
(@PATH,6,4591.824,-612.4489,160.821,0,0,0,0,100,0),
(@PATH,7,4591.324,-611.6989,160.321,0,0,0,0,100,0),
(@PATH,8,4590.324,-609.9489,159.571,0,0,0,0,100,0),
(@PATH,9,4586.074,-603.6989,159.321,0,0,0,0,100,0),
(@PATH,10,4585.984,-603.7021,159.1084,0,0,0,0,100,0),
(@PATH,11,4584.984,-601.9521,158.8584,0,0,0,0,100,0),
(@PATH,12,4582.984,-602.9521,157.8584,0,0,0,0,100,0),
(@PATH,13,4580.484,-604.2021,156.8584,0,0,0,0,100,0),
(@PATH,14,4577.734,-605.4521,155.1084,0,0,0,0,100,0),
(@PATH,15,4575.734,-606.2021,154.1084,0,0,0,0,100,0),
(@PATH,16,4573.234,-607.4521,153.3584,0,0,0,0,100,0),
(@PATH,17,4571.484,-608.4521,152.8584,0,0,0,0,100,0),
(@PATH,18,4568.984,-609.7021,152.1084,0,0,0,0,100,0),
(@PATH,19,4565.234,-611.2021,151.3584,0,0,0,0,100,0),
(@PATH,20,4562.484,-612.4521,150.6084,0,0,0,0,100,0),
(@PATH,21,4557.984,-614.7021,149.8584,0,0,0,0,100,0),
(@PATH,22,4558.026,-614.7653,149.9136,0,0,0,0,100,0),
(@PATH,23,4557.526,-615.2653,149.6636,0,0,0,0,100,0),
(@PATH,24,4558.526,-616.7653,150.1636,0,0,0,0,100,0),
(@PATH,25,4561.026,-620.0153,151.1636,0,0,0,0,100,0),
(@PATH,26,4562.776,-622.2653,152.4136,0,0,0,0,100,0),
(@PATH,27,4564.026,-623.7653,153.1636,0,0,0,0,100,0),
(@PATH,28,4565.276,-625.2653,153.9136,0,0,0,0,100,0),
(@PATH,29,4566.276,-627.0153,154.9136,0,0,0,0,100,0),
(@PATH,30,4567.526,-628.5153,155.9136,0,0,0,0,100,0);

-- 7. Onslaught Death Knight
SET @NPC := 117876;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4644.598,`position_y`=-554.0845,`position_z`=168.3518 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4644.598,-554.0845,168.3518,0,0,0,0,100,0),
(@PATH,2,4643.098,-556.5845,167.8518,0,0,0,0,100,0),
(@PATH,3,4641.598,-558.8345,167.1018,0,0,0,0,100,0),
(@PATH,4,4639.598,-562.0845,166.3518,0,0,0,0,100,0),
(@PATH,5,4638.045,-564.3422,165.4118,0,0,0,0,100,0),
(@PATH,6,4637.045,-564.0922,164.9118,0,0,0,0,100,0),
(@PATH,7,4636.045,-563.8422,164.1618,0,0,0,0,100,0),
(@PATH,8,4634.045,-563.3422,163.6618,0,0,0,0,100,0),
(@PATH,9,4633.045,-563.0922,163.4118,0,0,0,0,100,0),
(@PATH,10,4631.545,-562.3422,162.4118,0,0,0,0,100,0),
(@PATH,11,4627.545,-561.5922,161.6618,0,0,0,0,100,0),
(@PATH,12,4624.713,-560.8789,161.1454,0,0,0,0,100,0),
(@PATH,13,4622.713,-560.8789,160.3954,0,0,0,0,100,0),
(@PATH,14,4620.713,-560.6289,159.6454,0,0,0,0,100,0),
(@PATH,15,4617.713,-560.6289,159.1454,0,0,0,0,100,0),
(@PATH,16,4613.963,-560.3789,158.6454,0,0,0,0,100,0),
(@PATH,17,4608.963,-560.3789,157.8954,0,0,0,0,100,0),
(@PATH,18,4611.391,-560.3311,158.5312,0,0,0,0,100,0),
(@PATH,19,4617.141,-560.5811,159.0312,0,0,0,0,100,0),
(@PATH,20,4620.141,-560.5811,159.7812,0,0,0,0,100,0),
(@PATH,21,4622.141,-560.5811,160.2812,0,0,0,0,100,0),
(@PATH,22,4624.141,-560.5811,161.0312,0,0,0,0,100,0),
(@PATH,23,4624.396,-560.9586,161.3495,0,0,0,0,100,0),
(@PATH,24,4624.896,-560.9586,161.3495,0,0,0,0,100,0),
(@PATH,25,4626.896,-561.4586,161.8495,0,0,0,0,100,0),
(@PATH,26,4631.396,-562.7086,162.8495,0,0,0,0,100,0),
(@PATH,27,4633.396,-562.9586,163.5995,0,0,0,0,100,0),
(@PATH,28,4636.146,-563.9586,164.3495,0,0,0,0,100,0),
(@PATH,29,4637.146,-564.2086,164.8495,0,0,0,0,100,0),
(@PATH,30,4636.412,-563.797,164.5076,0,0,0,0,100,0),
(@PATH,31,4637.412,-564.047,165.0076,0,0,0,0,100,0),
(@PATH,32,4638.162,-564.297,165.7576,0,0,0,0,100,0),
(@PATH,33,4640.412,-561.047,166.5076,0,0,0,0,100,0),
(@PATH,34,4641.662,-558.297,167.2576,0,0,0,0,100,0),
(@PATH,35,4643.912,-555.297,168.2576,0,0,0,0,100,0),
(@PATH,36,4645.912,-551.797,169.0076,0,0,0,0,100,0),
(@PATH,37,4644.598,-554.0845,168.3518,0,0,0,0,100,0);

-- 8. Onslaught Raven Archon 
SET @NPC := 117139;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4672.427,`position_y`=-432.248,`position_z`=173.8428 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4672.427,-432.248,173.8428,0,0,0,0,100,0),
(@PATH,2,4675.927,-430.498,174.3428,0,0,0,0,100,0),
(@PATH,3,4679.177,-428.998,175.0928,0,0,0,0,100,0),
(@PATH,4,4685.926,-425.7451,175.791,0,0,0,0,100,0),
(@PATH,5,4688.676,-423.2451,176.291,0,0,0,0,100,0),
(@PATH,6,4691.676,-420.7451,177.041,0,0,0,0,100,0),
(@PATH,7,4693.746,-418.9523,177.5551,0,0,0,0,100,0),
(@PATH,8,4695.496,-416.4523,178.0551,0,0,0,0,100,0),
(@PATH,9,4699.661,-409.5062,178.1642,0,0,0,0,100,0),
(@PATH,10,4697.22,-391.7566,178.4175,0,0,0,0,100,0),
(@PATH,11,4697.272,-392.0195,178.3085,0,0,0,0,100,0),
(@PATH,12,4697.517,-391.9886,178.4114,0,0,0,0,100,0),
(@PATH,13,4699.727,-409.6594,178.2528,0,0,0,0,100,0),
(@PATH,14,4693.497,-419.0012,177.537,0,0,0,0,100,0),
(@PATH,15,4691.247,-420.7512,176.787,0,0,0,0,100,0),
(@PATH,16,4688.497,-423.5012,176.537,0,0,0,0,100,0),
(@PATH,17,4686.247,-425.5012,175.787,0,0,0,0,100,0),
(@PATH,18,4686.04,-425.7852,175.5942,0,0,0,0,100,0),
(@PATH,19,4685.54,-426.0352,175.5942,0,0,0,0,100,0),
(@PATH,20,4681.04,-428.2852,175.0942,0,0,0,0,100,0),
(@PATH,21,4676.04,-430.5352,174.3442,0,0,0,0,100,0),
(@PATH,22,4672.29,-432.2852,173.8442,0,0,0,0,100,0);

-- 9. Onslaught Death Knight
SET @NPC := 117857;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4633.917,`position_y`=-476.0173,`position_z`=168.7754 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4633.917,-476.0173,168.7754,0,0,0,0,100,0),
(@PATH,2,4634.167,-475.5173,168.7754,0,0,0,0,100,0),
(@PATH,3,4635.772,-458.6652,168.1609,0,0,0,0,100,0),
(@PATH,4,4633.772,-456.4152,167.4109,0,0,0,0,100,0),
(@PATH,5,4633.272,-455.9152,166.9109,0,0,0,0,100,0),
(@PATH,6,4632.272,-454.4152,166.4109,0,0,0,0,100,0),
(@PATH,7,4630.772,-452.9152,165.6609,0,0,0,0,100,0),
(@PATH,8,4630.631,-452.4373,165.6382,0,0,0,0,100,0),
(@PATH,9,4631.881,-453.9373,166.3882,0,0,0,0,100,0),
(@PATH,10,4632.881,-455.1873,166.8882,0,0,0,0,100,0),
(@PATH,11,4633.381,-455.9373,167.3882,0,0,0,0,100,0),
(@PATH,12,4635.381,-458.4373,168.1382,0,0,0,0,100,0),
(@PATH,13,4635.367,-458.5712,168.2003,0,0,0,0,100,0),
(@PATH,14,4635.617,-459.0712,168.2003,0,0,0,0,100,0),
(@PATH,15,4633.764,-475.9621,168.6973,0,0,0,0,100,0),
(@PATH,16,4632.514,-478.7121,169.1973,0,0,0,0,100,0),
(@PATH,17,4631.264,-481.2121,169.6973,0,0,0,0,100,0),
(@PATH,18,4627.014,-490.9621,169.1973,0,0,0,0,100,0),
(@PATH,19,4625.764,-493.7121,168.4473,0,0,0,0,100,0),
(@PATH,20,4624.014,-497.4621,167.9473,0,0,0,0,100,0),
(@PATH,21,4621.019,-503.5197,167.5489,0,0,0,0,100,0),
(@PATH,22,4618.269,-509.5197,167.0489,0,0,0,0,100,0),
(@PATH,23,4618.476,-508.4322,167.2701,0,0,0,0,100,0),
(@PATH,24,4621.087,-503.366,167.9358,0,0,0,0,100,0),
(@PATH,25,4625.337,-494.116,168.4358,0,0,0,0,100,0),
(@PATH,26,4627.087,-490.616,169.1858,0,0,0,0,100,0),
(@PATH,27,4628.087,-488.116,170.1858,0,0,0,0,100,0),
(@PATH,28,4631.837,-479.866,169.4358,0,0,0,0,100,0),
(@PATH,29,4633.587,-476.366,168.6858,0,0,0,0,100,0);

-- 10. Onslaught Death Knight
SET @NPC := 117836;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4663.659,`position_y`=-378.53,`position_z`=178.9522 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4663.659,-378.53,178.9522,0,0,0,0,100,0),
(@PATH,2,4661.159,-374.28,178.9522,0,0,0,0,100,0),
(@PATH,3,4656.159,-367.03,178.9522,0,0,0,0,100,0),
(@PATH,4,4656.221,-366.9449,178.9369,0,0,0,0,100,0),
(@PATH,5,4655.721,-366.1949,178.9369,0,0,0,0,100,0),
(@PATH,6,4656.221,-362.1949,178.9369,0,0,0,0,100,0),
(@PATH,7,4688.97,-376.0598,179.0081,0,0,0,0,100,0),
(@PATH,8,4688.47,-377.3098,179.0081,0,0,0,0,100,0),
(@PATH,9,4686.72,-377.8098,179.0081,0,0,0,0,100,0),
(@PATH,10,4683.47,-378.8098,179.0081,0,0,0,0,100,0),
(@PATH,11,4681.97,-379.3098,179.0081,0,0,0,0,100,0),
(@PATH,12,4675.504,-381.5966,179.0296,0,0,0,0,100,0),
(@PATH,13,4672.254,-380.5966,178.7796,0,0,0,0,100,0),
(@PATH,14,4668.004,-379.5966,178.7796,0,0,0,0,100,0),
(@PATH,15,4663.438,-378.4114,178.941,0,0,0,0,100,0);

-- 11. Onslaught Death Knight
SET @NPC := 117835;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4646.254,`position_y`=-412.3115,`position_z`=168.0308 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4646.254,-412.3115,168.0308,0,0,0,0,100,0),
(@PATH,2,4650.254,-411.8115,169.0308,0,0,0,0,100,0),
(@PATH,3,4652.004,-411.5615,169.5308,0,0,0,0,100,0),
(@PATH,4,4654.004,-411.0615,170.2808,0,0,0,0,100,0),
(@PATH,5,4656.004,-410.8115,170.7808,0,0,0,0,100,0),
(@PATH,6,4658.004,-410.5615,171.5308,0,0,0,0,100,0),
(@PATH,7,4660.004,-410.3115,172.2808,0,0,0,0,100,0),
(@PATH,8,4661.754,-410.0615,172.7808,0,0,0,0,100,0),
(@PATH,9,4663.754,-409.8115,173.2808,0,0,0,0,100,0),
(@PATH,10,4665.754,-409.3115,174.0308,0,0,0,0,100,0),
(@PATH,11,4668.754,-408.8115,174.7808,0,0,0,0,100,0),
(@PATH,12,4670.504,-408.5615,175.5308,0,0,0,0,100,0),
(@PATH,13,4672.504,-408.3115,176.5308,0,0,0,0,100,0),
(@PATH,14,4674.504,-408.0615,177.5308,0,0,0,0,100,0),
(@PATH,15,4674.718,-407.6685,177.7038,0,0,0,0,100,0),
(@PATH,16,4676.718,-407.4185,178.2038,0,0,0,0,100,0),
(@PATH,17,4678.718,-406.6685,178.7038,0,0,0,0,100,0),
(@PATH,18,4683.218,-405.4185,179.4538,0,0,0,0,100,0),
(@PATH,19,4687.403,-403.8835,179.7482,0,0,0,0,100,0),
(@PATH,20,4685.523,-395.8652,179.424,0,0,0,0,100,0),
(@PATH,21,4682.773,-395.6152,178.924,0,0,0,0,100,0),
(@PATH,22,4677.773,-395.1152,178.174,0,0,0,0,100,0),
(@PATH,23,4674.023,-394.6152,177.924,0,0,0,0,100,0),
(@PATH,24,4671.023,-394.3652,177.174,0,0,0,0,100,0),
(@PATH,25,4671.405,-394.4984,177.5945,0,0,0,0,100,0),
(@PATH,26,4674.405,-394.7484,177.8445,0,0,0,0,100,0),
(@PATH,27,4680.155,-395.2484,178.5945,0,0,0,0,100,0),
(@PATH,28,4685.155,-395.7484,179.3445,0,0,0,0,100,0),
(@PATH,29,4685.285,-395.9227,179.333,0,0,0,0,100,0),
(@PATH,30,4685.785,-395.9227,179.333,0,0,0,0,100,0),
(@PATH,31,4687.56,-403.8329,179.7082,0,0,0,0,100,0),
(@PATH,32,4681.06,-406.0829,179.2082,0,0,0,0,100,0),
(@PATH,33,4678.31,-406.8329,178.7082,0,0,0,0,100,0),
(@PATH,34,4677.956,-407.2584,178.4327,0,0,0,0,100,0),
(@PATH,35,4676.456,-407.7584,178.1827,0,0,0,0,100,0),
(@PATH,36,4674.706,-408.0084,177.4327,0,0,0,0,100,0),
(@PATH,37,4672.706,-408.2584,176.4327,0,0,0,0,100,0),
(@PATH,38,4670.706,-408.5084,175.4327,0,0,0,0,100,0),
(@PATH,39,4668.706,-409.0084,174.6827,0,0,0,0,100,0),
(@PATH,40,4665.706,-409.5084,174.1827,0,0,0,0,100,0),
(@PATH,41,4663.706,-409.7584,173.4327,0,0,0,0,100,0),
(@PATH,42,4661.956,-409.7584,172.9327,0,0,0,0,100,0),
(@PATH,43,4659.956,-410.2584,172.1827,0,0,0,0,100,0),
(@PATH,44,4657.956,-410.5084,171.6827,0,0,0,0,100,0),
(@PATH,45,4655.956,-410.7584,170.9327,0,0,0,0,100,0),
(@PATH,46,4654.206,-411.0084,170.1827,0,0,0,0,100,0),
(@PATH,47,4652.206,-411.5084,169.6827,0,0,0,0,100,0),
(@PATH,48,4650.206,-411.7584,168.9327,0,0,0,0,100,0),
(@PATH,49,4646.206,-412.5084,168.1827,0,0,0,0,100,0);

-- 12. Onslaught Death Knight
SET @NPC := 117853;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4673.927,`position_y`=-465.8671,`position_z`=175.9483 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4673.927,-465.8671,175.9483,0,0,0,0,100,0),
(@PATH,2,4674.057,-465.5458,176.4839,0,0,0,0,100,0),
(@PATH,3,4675.307,-462.7958,176.7339,0,0,0,0,100,0),
(@PATH,4,4679.307,-453.0458,177.2339,0,0,0,0,100,0),
(@PATH,5,4682.046,-446.772,178.1347,0,0,0,0,100,0),
(@PATH,6,4684.296,-444.772,178.3847,0,0,0,0,100,0),
(@PATH,7,4687.046,-442.272,179.1347,0,0,0,0,100,0),
(@PATH,8,4690.046,-439.772,179.8847,0,0,0,0,100,0),
(@PATH,9,4687.49,-442.0988,179.0242,0,0,0,0,100,0),
(@PATH,10,4683.99,-445.0988,178.5242,0,0,0,0,100,0),
(@PATH,11,4682.49,-446.3488,178.0242,0,0,0,0,100,0),
(@PATH,12,4682.049,-446.586,177.8403,0,0,0,0,100,0),
(@PATH,13,4681.799,-446.836,177.8403,0,0,0,0,100,0),
(@PATH,14,4679.049,-453.336,177.0903,0,0,0,0,100,0),
(@PATH,15,4675.049,-463.336,176.5903,0,0,0,0,100,0),
(@PATH,16,4674.158,-465.8684,176.1417,0,0,0,0,100,0);

-- 13. Onslaught Death Knight
SET @NPC := 117837;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4562.605,`position_y`=-482.3372,`position_z`=130.0714 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4562.605,-482.3372,130.0714,0,0,0,0,100,0),
(@PATH,2,4563.605,-482.5872,131.0714,0,0,0,0,100,0),
(@PATH,3,4565.605,-483.0872,132.3214,0,0,0,0,100,0),
(@PATH,4,4567.355,-483.5872,133.8214,0,0,0,0,100,0),
(@PATH,5,4569.355,-484.0872,135.5714,0,0,0,0,100,0),
(@PATH,6,4571.355,-484.5872,137.0714,0,0,0,0,100,0),
(@PATH,7,4572.855,-485.0872,138.5714,0,0,0,0,100,0),
(@PATH,8,4574.855,-485.3372,139.5714,0,0,0,0,100,0),
(@PATH,9,4576.855,-486.0872,141.0714,0,0,0,0,100,0),
(@PATH,10,4578.855,-486.5872,142.5714,0,0,0,0,100,0),
(@PATH,11,4580.605,-487.0872,143.8214,0,0,0,0,100,0),
(@PATH,12,4580.711,-487.1699,143.7785,0,0,0,0,100,0),
(@PATH,13,4578.711,-486.4199,142.5285,0,0,0,0,100,0),
(@PATH,14,4576.711,-485.9199,141.0285,0,0,0,0,100,0),
(@PATH,15,4574.961,-485.4199,139.5285,0,0,0,0,100,0),
(@PATH,16,4572.211,-484.9199,138.0285,0,0,0,0,100,0),
(@PATH,17,4570.211,-484.4199,136.7785,0,0,0,0,100,0),
(@PATH,18,4568.461,-483.9199,134.7785,0,0,0,0,100,0),
(@PATH,19,4566.461,-483.1699,133.0285,0,0,0,0,100,0),
(@PATH,20,4564.461,-482.6699,131.5285,0,0,0,0,100,0),
(@PATH,21,4566.122,-483.1504,132.8683,0,0,0,0,100,0),
(@PATH,22,4564.372,-482.4004,131.3683,0,0,0,0,100,0),
(@PATH,23,4563.372,-482.1504,130.8683,0,0,0,0,100,0),
(@PATH,24,4562.372,-482.1504,129.8683,0,0,0,0,100,0),
(@PATH,25,4561.372,-482.1504,129.1183,0,0,0,0,100,0),
(@PATH,26,4560.372,-482.1504,128.1183,0,0,0,0,100,0),
(@PATH,27,4559.372,-482.1504,127.6183,0,0,0,0,100,0),
(@PATH,28,4557.372,-482.1504,126.8683,0,0,0,0,100,0),
(@PATH,29,4556.372,-481.9004,126.1183,0,0,0,0,100,0),
(@PATH,30,4555.372,-481.9004,125.3683,0,0,0,0,100,0),
(@PATH,31,4554.372,-481.9004,124.8683,0,0,0,0,100,0),
(@PATH,32,4553.372,-481.9004,124.3683,0,0,0,0,100,0),
(@PATH,33,4552.622,-481.6504,123.6183,0,0,0,0,100,0),
(@PATH,34,4550.622,-481.6504,122.6183,0,0,0,0,100,0),
(@PATH,35,4549.622,-481.6504,122.1183,0,0,0,0,100,0),
(@PATH,36,4548.622,-481.4004,121.3683,0,0,0,0,100,0),
(@PATH,37,4546.622,-481.4004,120.6183,0,0,0,0,100,0),
(@PATH,38,4544.622,-481.1504,119.6183,0,0,0,0,100,0),
(@PATH,39,4543.622,-481.1504,118.3683,0,0,0,0,100,0),
(@PATH,40,4540.622,-480.9004,117.3683,0,0,0,0,100,0),
(@PATH,55,4561.372,-482.1504,129.1183,0,0,0,0,100,0),
(@PATH,54,4560.372,-482.1504,128.1183,0,0,0,0,100,0),
(@PATH,53,4559.372,-482.1504,127.6183,0,0,0,0,100,0),
(@PATH,52,4557.372,-482.1504,126.8683,0,0,0,0,100,0),
(@PATH,51,4556.372,-481.9004,126.1183,0,0,0,0,100,0),
(@PATH,50,4555.372,-481.9004,125.3683,0,0,0,0,100,0),
(@PATH,49,4554.372,-481.9004,124.8683,0,0,0,0,100,0),
(@PATH,48,4553.372,-481.9004,124.3683,0,0,0,0,100,0),
(@PATH,47,4552.622,-481.6504,123.6183,0,0,0,0,100,0),
(@PATH,46,4550.622,-481.6504,122.6183,0,0,0,0,100,0),
(@PATH,45,4549.622,-481.6504,122.1183,0,0,0,0,100,0),
(@PATH,44,4548.622,-481.4004,121.3683,0,0,0,0,100,0),
(@PATH,43,4546.622,-481.4004,120.6183,0,0,0,0,100,0),
(@PATH,42,4544.622,-481.1504,119.6183,0,0,0,0,100,0),
(@PATH,41,4543.622,-481.1504,118.3683,0,0,0,0,100,0);

-- 14. Onslaught Death Knight
SET @NPC := 117855;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4591.347,`position_y`=-453.3334,`position_z`=146.8176 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4591.347,-453.3334,146.8176,0,0,0,0,100,0),
(@PATH,2,4593.286,-447.2549,146.5961,0,0,0,0,100,0),
(@PATH,3,4593.286,-443.2549,145.8461,0,0,0,0,100,0),
(@PATH,4,4593.286,-438.5049,145.3461,0,0,0,0,100,0),
(@PATH,5,4593.036,-431.5049,145.0961,0,0,0,0,100,0),
(@PATH,6,4593.392,-428.4322,144.6565,0,0,0,0,100,0),
(@PATH,7,4595.142,-426.1822,145.6565,0,0,0,0,100,0),
(@PATH,8,4597.142,-423.6822,146.6565,0,0,0,0,100,0),
(@PATH,9,4599.642,-420.6822,147.4065,0,0,0,0,100,0),
(@PATH,10,4602.142,-417.9322,148.1565,0,0,0,0,100,0),
(@PATH,11,4604.642,-414.9322,148.9065,0,0,0,0,100,0),
(@PATH,12,4606.642,-412.6822,149.9065,0,0,0,0,100,0),
(@PATH,13,4608.392,-410.1822,150.9065,0,0,0,0,100,0),
(@PATH,14,4608.691,-409.937,151.0649,0,0,0,0,100,0),
(@PATH,15,4609.941,-408.687,151.3149,0,0,0,0,100,0),
(@PATH,16,4613.441,-406.437,152.5649,0,0,0,0,100,0),
(@PATH,17,4615.691,-405.187,153.8149,0,0,0,0,100,0),
(@PATH,18,4618.191,-403.687,154.5649,0,0,0,0,100,0),
(@PATH,19,4621.691,-401.687,156.0649,0,0,0,0,100,0),
(@PATH,20,4620.293,-402.3251,155.5382,0,0,0,0,100,0),
(@PATH,21,4617.043,-404.3251,154.0382,0,0,0,0,100,0),
(@PATH,22,4614.543,-405.8251,152.7882,0,0,0,0,100,0),
(@PATH,23,4611.293,-407.8251,151.7882,0,0,0,0,100,0),
(@PATH,24,4609.751,-408.8759,151.0355,0,0,0,0,100,0),
(@PATH,25,4607.751,-411.1259,150.2855,0,0,0,0,100,0),
(@PATH,26,4605.751,-413.3759,149.0355,0,0,0,0,100,0),
(@PATH,27,4604.001,-415.8759,148.2855,0,0,0,0,100,0),
(@PATH,28,4602.001,-418.1259,147.7855,0,0,0,0,100,0),
(@PATH,29,4599.001,-421.6259,146.7855,0,0,0,0,100,0),
(@PATH,30,4597.001,-423.8759,146.0355,0,0,0,0,100,0),
(@PATH,31,4594.501,-427.1259,145.2855,0,0,0,0,100,0),
(@PATH,32,4594.465,-427.3057,145.1041,0,0,0,0,100,0),
(@PATH,33,4593.215,-428.5557,144.6041,0,0,0,0,100,0),
(@PATH,34,4593.465,-434.5557,145.3541,0,0,0,0,100,0),
(@PATH,35,4593.465,-440.3057,145.8541,0,0,0,0,100,0),
(@PATH,36,4593.465,-445.3057,146.3541,0,0,0,0,100,0);

-- 15. Onslaught Raven Archon
SET @NPC := 117138;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4724.406,`position_y`=-356.798,`position_z`=181.8883 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4724.406,-356.798,181.8883,0,0,0,0,100,0),
(@PATH,2,4717.824,-372.1068,181.2777,0,0,0,0,100,0),
(@PATH,3,4712.074,-377.1068,180.7777,0,0,0,0,100,0),
(@PATH,4,4709.574,-379.1068,180.2777,0,0,0,0,100,0),
(@PATH,5,4710.34,-378.5876,180.2192,0,0,0,0,100,0),
(@PATH,6,4713.34,-376.0876,180.9692,0,0,0,0,100,0),
(@PATH,7,4718.058,-372.0478,181.2572,0,0,0,0,100,0),
(@PATH,8,4721.808,-363.0478,182.0072,0,0,0,0,100,0),
(@PATH,9,4724.464,-356.5519,181.7701,0,0,0,0,100,0),
(@PATH,10,4722.449,-346.1371,182.0739,0,0,0,0,100,0),
(@PATH,11,4728.199,-335.8871,182.5739,0,0,0,0,100,0),
(@PATH,12,4722.129,-346.2792,181.8653,0,0,0,0,100,0),
(@PATH,13,4722.348,-346.2967,182.047,0,0,0,0,100,0),
(@PATH,14,4724.397,-356.7561,181.8892,0,0,0,0,100,0);

-- 16. Onslaught Death Knight
SET @NPC := 117832;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4775.135,`position_y`=-303.4818,`position_z`=196.1635 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4775.135,-303.4818,196.1635,0,0,0,0,100,0),
(@PATH,2,4774.385,-303.9818,195.6635,0,0,0,0,100,0),
(@PATH,3,4773.885,-303.9818,195.1635,0,0,0,0,100,0),
(@PATH,4,4773.885,-305.9818,194.9135,0,0,0,0,100,0),
(@PATH,5,4773.885,-309.9818,194.1635,0,0,0,0,100,0),
(@PATH,6,4773.885,-311.9818,193.4135,0,0,0,0,100,0),
(@PATH,7,4773.885,-314.9818,192.6635,0,0,0,0,100,0),
(@PATH,8,4774.135,-323.9818,193.4135,0,0,0,0,100,0),
(@PATH,9,4774.135,-332.7318,192.6635,0,0,0,0,100,0),
(@PATH,10,4774.135,-333.7318,193.6635,0,0,0,0,100,0),
(@PATH,11,4774.325,-344.7158,193.9453,0,0,0,0,100,0),
(@PATH,12,4775.325,-344.7158,194.9453,0,0,0,0,100,0),
(@PATH,13,4776.325,-344.7158,195.4453,0,0,0,0,100,0),
(@PATH,14,4777.325,-344.7158,196.1953,0,0,0,0,100,0),
(@PATH,15,4779.075,-344.7158,196.6953,0,0,0,0,100,0),
(@PATH,16,4780.075,-344.7158,197.1953,0,0,0,0,100,0),
(@PATH,17,4781.075,-344.7158,198.1953,0,0,0,0,100,0),
(@PATH,18,4782.075,-344.7158,198.9453,0,0,0,0,100,0),
(@PATH,19,4783.075,-344.7158,199.6953,0,0,0,0,100,0),
(@PATH,20,4783.273,-344.7045,200.0436,0,0,0,0,100,0),
(@PATH,21,4784.023,-344.7045,200.7936,0,0,0,0,100,0),
(@PATH,22,4784.273,-341.7045,201.5436,0,0,0,0,100,0),
(@PATH,23,4784.273,-338.7045,202.0436,0,0,0,0,100,0),
(@PATH,24,4784.273,-336.7045,203.0436,0,0,0,0,100,0),
(@PATH,25,4784.523,-334.7045,203.7936,0,0,0,0,100,0),
(@PATH,26,4784.523,-331.7045,204.2936,0,0,0,0,100,0),
(@PATH,27,4784.773,-323.7045,203.7936,0,0,0,0,100,0),
(@PATH,28,4785.273,-312.9545,204.2936,0,0,0,0,100,0),
(@PATH,29,4785.523,-308.9545,205.5436,0,0,0,0,100,0),
(@PATH,30,4785.523,-302.9545,206.0436,0,0,0,0,100,0),
(@PATH,31,4785.646,-300.5979,206.2332,0,0,0,0,100,0),
(@PATH,32,4784.646,-300.8479,205.4832,0,0,0,0,100,0),
(@PATH,33,4783.896,-301.0979,204.4832,0,0,0,0,100,0),
(@PATH,34,4782.896,-301.3479,203.4832,0,0,0,0,100,0),
(@PATH,35,4781.896,-301.5979,202.7332,0,0,0,0,100,0),
(@PATH,36,4780.896,-301.8479,201.7332,0,0,0,0,100,0),
(@PATH,37,4779.896,-302.0979,200.4832,0,0,0,0,100,0),
(@PATH,38,4779.146,-302.3479,199.7332,0,0,0,0,100,0),
(@PATH,39,4778.396,-302.8479,198.4832,0,0,0,0,100,0),
(@PATH,40,4777.396,-303.0979,197.7332,0,0,0,0,100,0),
(@PATH,41,4775.396,-303.3479,196.4832,0,0,0,0,100,0);

-- 17. Onslaught Death Knight
SET @NPC := 117839;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4716.436,`position_y`=-400.944,`position_z`=185.0362 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4716.436,-400.944,185.0362,0,0,0,0,100,0),
(@PATH,2,4717.936,-397.444,185.5362,0,0,0,0,100,0),
(@PATH,3,4721.186,-389.194,186.0362,0,0,0,0,100,0),
(@PATH,4,4723.422,-384.276,186.1633,0,0,0,0,100,0),
(@PATH,5,4735.376,-367.9473,186.7946,0,0,0,0,100,0),
(@PATH,6,4737.126,-365.4473,187.5446,0,0,0,0,100,0),
(@PATH,7,4739.126,-362.1973,188.0446,0,0,0,0,100,0),
(@PATH,8,4740.876,-359.9473,188.5446,0,0,0,0,100,0),
(@PATH,9,4742.458,-357.7573,189.1335,0,0,0,0,100,0),
(@PATH,10,4744.458,-358.0073,189.8835,0,0,0,0,100,0),
(@PATH,11,4746.458,-358.2573,190.6335,0,0,0,0,100,0),
(@PATH,12,4748.458,-358.2573,190.8835,0,0,0,0,100,0),
(@PATH,13,4750.208,-358.5073,191.6335,0,0,0,0,100,0),
(@PATH,14,4752.208,-358.7573,192.1335,0,0,0,0,100,0),
(@PATH,15,4755.208,-359.0073,192.8835,0,0,0,0,100,0),
(@PATH,16,4755.139,-358.7617,192.7538,0,0,0,0,100,0),
(@PATH,17,4752.139,-358.5117,192.2538,0,0,0,0,100,0),
(@PATH,18,4750.139,-358.5117,191.5038,0,0,0,0,100,0),
(@PATH,19,4748.389,-358.2617,191.0038,0,0,0,0,100,0),
(@PATH,20,4746.389,-358.2617,190.5038,0,0,0,0,100,0),
(@PATH,21,4744.389,-358.0117,189.7538,0,0,0,0,100,0),
(@PATH,22,4744.068,-358.0636,189.5123,0,0,0,0,100,0),
(@PATH,23,4742.068,-357.8136,188.7623,0,0,0,0,100,0),
(@PATH,24,4740.568,-360.3136,188.2623,0,0,0,0,100,0),
(@PATH,25,4738.568,-363.3136,187.7623,0,0,0,0,100,0),
(@PATH,26,4736.318,-366.5636,187.2623,0,0,0,0,100,0),
(@PATH,27,4736.031,-366.8282,186.9275,0,0,0,0,100,0),
(@PATH,28,4735.031,-368.0782,186.6775,0,0,0,0,100,0),
(@PATH,29,4732.281,-372.0782,186.1775,0,0,0,0,100,0),
(@PATH,30,4723.25,-384.6306,186.0191,0,0,0,0,100,0),
(@PATH,31,4718.75,-395.3806,185.5191,0,0,0,0,100,0),
(@PATH,32,4716.201,-400.9923,185.1606,0,0,0,0,100,0),
(@PATH,33,4718.451,-402.9923,185.6606,0,0,0,0,100,0),
(@PATH,34,4722.451,-405.9923,186.6606,0,0,0,0,100,0),
(@PATH,35,4734.701,-415.7423,187.4106,0,0,0,0,100,0),
(@PATH,36,4735.451,-416.4923,188.4106,0,0,0,0,100,0),
(@PATH,37,4735.871,-416.6113,188.0563,0,0,0,0,100,0),
(@PATH,38,4734.871,-415.8613,187.3063,0,0,0,0,100,0),
(@PATH,39,4734.121,-415.3613,186.8063,0,0,0,0,100,0),
(@PATH,40,4731.871,-413.3613,185.8063,0,0,0,0,100,0),
(@PATH,41,4730.371,-412.1113,186.5563,0,0,0,0,100,0),
(@PATH,42,4718.871,-403.1113,185.8063,0,0,0,0,100,0),
(@PATH,43,4716.524,-401.1166,185.1767,0,0,0,0,100,0);

-- 18. Onslaught Death Knight
SET @NPC := 117851;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4705.714,`position_y`=-320.1843,`position_z`=176.6997 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4705.714,-320.1843,176.6997,0,0,0,0,100,0),
(@PATH,2,4706.964,-320.9343,177.1997,0,0,0,0,100,0),
(@PATH,3,4707.714,-323.6843,177.6997,0,0,0,0,100,0),
(@PATH,4,4708.464,-325.4343,178.4497,0,0,0,0,100,0),
(@PATH,5,4709.69,-328.5651,179.3957,0,0,0,0,100,0),
(@PATH,6,4703.855,-338.3154,179.2477,0,0,0,0,100,0),
(@PATH,7,4702.105,-337.5654,178.4977,0,0,0,0,100,0),
(@PATH,8,4699.355,-336.3154,177.7477,0,0,0,0,100,0),
(@PATH,9,4696.605,-335.0654,177.2477,0,0,0,0,100,0),
(@PATH,10,4679.237,-327.8691,176.4677,0,0,0,0,100,0),
(@PATH,11,4679.204,-327.8438,176.4087,0,0,0,0,100,0),
(@PATH,12,4679.519,-327.856,176.9473,0,0,0,0,100,0),
(@PATH,13,4696.519,-335.106,177.4473,0,0,0,0,100,0),
(@PATH,14,4699.269,-336.356,177.6973,0,0,0,0,100,0),
(@PATH,15,4701.269,-337.106,178.1973,0,0,0,0,100,0),
(@PATH,16,4701.459,-337.2228,178.4309,0,0,0,0,100,0),
(@PATH,17,4704.209,-338.4728,179.1809,0,0,0,0,100,0),
(@PATH,18,4709.626,-328.3861,179.4376,0,0,0,0,100,0),
(@PATH,19,4708.876,-326.6361,178.6876,0,0,0,0,100,0),
(@PATH,20,4708.126,-324.8861,177.9376,0,0,0,0,100,0),
(@PATH,21,4707.126,-322.1361,177.4376,0,0,0,0,100,0),
(@PATH,22,4707.211,-321.6881,177.3876,0,0,0,0,100,0),
(@PATH,23,4706.711,-320.6881,176.8876,0,0,0,0,100,0),
(@PATH,24,4704.961,-319.6881,176.3876,0,0,0,0,100,0),
(@PATH,25,4702.461,-318.1881,175.3876,0,0,0,0,100,0),
(@PATH,26,4700.711,-317.1881,174.6376,0,0,0,0,100,0),
(@PATH,27,4698.961,-316.1881,173.8876,0,0,0,0,100,0),
(@PATH,28,4696.211,-315.1881,173.1376,0,0,0,0,100,0),
(@PATH,29,4694.711,-314.1881,172.3876,0,0,0,0,100,0),
(@PATH,30,4692.211,-312.6881,171.8876,0,0,0,0,100,0),
(@PATH,31,4690.461,-311.6881,171.1376,0,0,0,0,100,0),
(@PATH,32,4688.711,-310.6881,170.1376,0,0,0,0,100,0),
(@PATH,33,4686.961,-309.6881,169.6376,0,0,0,0,100,0),
(@PATH,34,4684.461,-308.1881,167.8876,0,0,0,0,100,0),
(@PATH,35,4682.711,-307.1881,167.3876,0,0,0,0,100,0),
(@PATH,36,4684.099,-307.9991,167.579,0,0,0,0,100,0),
(@PATH,37,4682.349,-306.9991,167.079,0,0,0,0,100,0),
(@PATH,38,4681.849,-306.7491,166.829,0,0,0,0,100,0),
(@PATH,39,4679.849,-306.4991,165.829,0,0,0,0,100,0),
(@PATH,40,4677.849,-306.2491,165.079,0,0,0,0,100,0),
(@PATH,41,4675.099,-305.7491,163.829,0,0,0,0,100,0),
(@PATH,42,4672.349,-305.2491,162.829,0,0,0,0,100,0),
(@PATH,43,4670.349,-304.7491,162.079,0,0,0,0,100,0),
(@PATH,44,4668.349,-304.4991,161.579,0,0,0,0,100,0),
(@PATH,45,4666.349,-303.9991,160.579,0,0,0,0,100,0),
(@PATH,46,4666.279,-304.1193,160.5885,0,0,0,0,100,0),
(@PATH,47,4669.279,-304.6193,161.8385,0,0,0,0,100,0),
(@PATH,48,4671.279,-305.1193,162.5885,0,0,0,0,100,0),
(@PATH,49,4673.029,-305.3693,163.3385,0,0,0,0,100,0),
(@PATH,50,4676.029,-305.6193,164.0885,0,0,0,0,100,0),
(@PATH,51,4678.029,-306.1193,165.0885,0,0,0,0,100,0),
(@PATH,52,4680.029,-306.3693,165.8385,0,0,0,0,100,0),
(@PATH,53,4680.176,-306.6355,166.1882,0,0,0,0,100,0),
(@PATH,54,4682.176,-306.8855,166.9382,0,0,0,0,100,0),
(@PATH,55,4684.676,-308.3855,168.6882,0,0,0,0,100,0),
(@PATH,56,4686.426,-309.3855,169.4382,0,0,0,0,100,0),
(@PATH,57,4688.176,-310.3855,170.1882,0,0,0,0,100,0),
(@PATH,58,4689.926,-311.3855,170.9382,0,0,0,0,100,0),
(@PATH,59,4691.676,-312.3855,171.1882,0,0,0,0,100,0),
(@PATH,60,4693.176,-313.3855,171.9382,0,0,0,0,100,0),
(@PATH,61,4694.926,-314.1355,172.9382,0,0,0,0,100,0),
(@PATH,62,4697.676,-315.6355,173.6882,0,0,0,0,100,0),
(@PATH,63,4699.426,-316.6355,174.4382,0,0,0,0,100,0),
(@PATH,64,4700.926,-317.6355,174.9382,0,0,0,0,100,0),
(@PATH,65,4703.676,-318.8855,175.6882,0,0,0,0,100,0),
(@PATH,66,4705.426,-319.8855,176.4382,0,0,0,0,100,0),
(@PATH,67,4703.938,-319.2475,176.1418,0,0,0,0,100,0);

-- 19. Onslaught Death Knight
SET @NPC := 117838;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4738.398,`position_y`=-268.4922,`position_z`=170.6809 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4738.398,-268.4922,170.6809,0,0,0,0,100,0),
(@PATH,2,4738.148,-270.2422,171.6809,0,0,0,0,100,0),
(@PATH,3,4738.648,-271.2422,172.1809,0,0,0,0,100,0),
(@PATH,4,4739.148,-271.9922,172.9309,0,0,0,0,100,0),
(@PATH,5,4740.148,-273.7422,173.6809,0,0,0,0,100,0),
(@PATH,6,4741.148,-275.4922,174.9309,0,0,0,0,100,0),
(@PATH,7,4742.148,-277.2422,175.6809,0,0,0,0,100,0),
(@PATH,8,4743.148,-278.7422,176.4309,0,0,0,0,100,0),
(@PATH,9,4744.148,-280.4922,177.6809,0,0,0,0,100,0),
(@PATH,10,4745.148,-282.2422,179.1809,0,0,0,0,100,0),
(@PATH,11,4746.148,-283.9922,179.9309,0,0,0,0,100,0),
(@PATH,12,4747.148,-285.4922,180.9309,0,0,0,0,100,0),
(@PATH,13,4747.233,-285.5703,180.9717,0,0,0,0,100,0),
(@PATH,14,4747.733,-286.3203,181.4717,0,0,0,0,100,0),
(@PATH,15,4748.483,-283.3203,180.2217,0,0,0,0,100,0),
(@PATH,16,4748.733,-281.3203,179.2217,0,0,0,0,100,0),
(@PATH,17,4749.483,-279.5703,178.4717,0,0,0,0,100,0),
(@PATH,18,4749.983,-277.8203,177.7217,0,0,0,0,100,0),
(@PATH,19,4750.483,-275.8203,176.9717,0,0,0,0,100,0),
(@PATH,20,4751.545,-272.9406,176.0473,0,0,0,0,100,0),
(@PATH,21,4760.295,-268.6906,175.2973,0,0,0,0,100,0),
(@PATH,22,4768.045,-264.6906,176.0473,0,0,0,0,100,0),
(@PATH,23,4768.183,-264.4334,175.7711,0,0,0,0,100,0),
(@PATH,24,4770.933,-262.9334,176.2711,0,0,0,0,100,0),
(@PATH,25,4769.183,-260.4334,174.7711,0,0,0,0,100,0),
(@PATH,26,4768.683,-259.6834,174.2711,0,0,0,0,100,0),
(@PATH,27,4767.433,-258.1834,173.2711,0,0,0,0,100,0),
(@PATH,28,4766.183,-256.4334,172.7711,0,0,0,0,100,0),
(@PATH,29,4765.183,-255.1834,172.0211,0,0,0,0,100,0),
(@PATH,30,4763.433,-252.6834,171.2711,0,0,0,0,100,0),
(@PATH,31,4761.683,-250.1834,170.5211,0,0,0,0,100,0),
(@PATH,32,4760.683,-248.6834,169.5211,0,0,0,0,100,0),
(@PATH,33,4758.657,-246.4807,168.7377,0,0,0,0,100,0),
(@PATH,34,4755.907,-247.2307,167.9877,0,0,0,0,100,0),
(@PATH,35,4753.907,-247.4807,167.2377,0,0,0,0,100,0),
(@PATH,36,4750.907,-248.2307,166.4877,0,0,0,0,100,0),
(@PATH,37,4748.407,-248.9807,166.2377,0,0,0,0,100,0),
(@PATH,38,4745.407,-249.4807,165.4877,0,0,0,0,100,0),
(@PATH,39,4742.407,-249.9807,164.7377,0,0,0,0,100,0),
(@PATH,40,4742.154,-250.1919,164.6562,0,0,0,0,100,0),
(@PATH,41,4740.904,-250.6919,164.4062,0,0,0,0,100,0),
(@PATH,42,4740.654,-252.4419,165.1562,0,0,0,0,100,0),
(@PATH,43,4740.404,-255.4419,165.9062,0,0,0,0,100,0),
(@PATH,44,4740.154,-257.4419,166.6562,0,0,0,0,100,0),
(@PATH,45,4739.904,-259.4419,167.6562,0,0,0,0,100,0),
(@PATH,46,4739.654,-261.1919,167.9062,0,0,0,0,100,0),
(@PATH,47,4739.154,-264.1919,168.9062,0,0,0,0,100,0),
(@PATH,48,4738.904,-266.1919,169.6562,0,0,0,0,100,0);

-- 20. Onslaught Death Knight
SET @NPC := 117860;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=4696.873,`position_y`=-283.3671,`position_z`=163.6956 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,10719,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,4696.873,-283.3671,163.6956,0,0,0,0,100,0),
(@PATH,2,4695.873,-281.6171,162.9456,0,0,0,0,100,0),
(@PATH,3,4695.373,-280.6171,162.4456,0,0,0,0,100,0),
(@PATH,4,4694.623,-278.8671,161.4456,0,0,0,0,100,0),
(@PATH,5,4693.373,-276.1171,160.9456,0,0,0,0,100,0),
(@PATH,6,4692.373,-274.3671,160.1956,0,0,0,0,100,0),
(@PATH,7,4691.623,-272.6171,159.4456,0,0,0,0,100,0),
(@PATH,8,4690.123,-270.1171,158.9456,0,0,0,0,100,0),
(@PATH,9,4689.373,-268.3671,158.4456,0,0,0,0,100,0),
(@PATH,10,4688.623,-266.6171,157.6956,0,0,0,0,100,0),
(@PATH,11,4687.373,-263.8671,156.9456,0,0,0,0,100,0),
(@PATH,12,4686.623,-262.1171,156.1956,0,0,0,0,100,0),
(@PATH,13,4685.623,-260.1171,155.4456,0,0,0,0,100,0),
(@PATH,14,4684.373,-257.6171,154.6956,0,0,0,0,100,0),
(@PATH,15,4684.381,-257.5009,154.6773,0,0,0,0,100,0),
(@PATH,16,4684.131,-257.0009,154.4273,0,0,0,0,100,0),
(@PATH,17,4686.131,-256.7509,155.1773,0,0,0,0,100,0),
(@PATH,18,4688.131,-256.5009,155.9273,0,0,0,0,100,0),
(@PATH,19,4690.131,-256.5009,156.4273,0,0,0,0,100,0),
(@PATH,20,4692.631,-256.2509,156.9273,0,0,0,0,100,0),
(@PATH,21,4696.631,-255.7509,157.6773,0,0,0,0,100,0),
(@PATH,22,4696.935,-255.8058,157.7687,0,0,0,0,100,0),
(@PATH,23,4699.935,-255.5558,158.5187,0,0,0,0,100,0),
(@PATH,24,4701.935,-256.0558,159.0187,0,0,0,0,100,0),
(@PATH,25,4703.435,-256.8058,159.5187,0,0,0,0,100,0),
(@PATH,26,4705.435,-257.3058,160.0187,0,0,0,0,100,0),
(@PATH,27,4708.185,-258.0558,160.7687,0,0,0,0,100,0),
(@PATH,28,4708.102,-258.0999,160.4381,0,0,0,0,100,0),
(@PATH,29,4705.352,-257.3499,159.9381,0,0,0,0,100,0),
(@PATH,30,4702.602,-256.3499,159.4381,0,0,0,0,100,0),
(@PATH,31,4700.602,-255.5999,158.6881,0,0,0,0,100,0),
(@PATH,32,4700.52,-255.7942,158.4137,0,0,0,0,100,0),
(@PATH,33,4699.77,-255.5442,158.1637,0,0,0,0,100,0),
(@PATH,34,4696.77,-255.7942,157.6637,0,0,0,0,100,0),
(@PATH,35,4692.77,-256.0442,156.9137,0,0,0,0,100,0),
(@PATH,36,4690.02,-256.5442,156.4137,0,0,0,0,100,0),
(@PATH,37,4688.02,-256.5442,155.9137,0,0,0,0,100,0),
(@PATH,38,4686.02,-256.5442,155.1637,0,0,0,0,100,0),
(@PATH,39,4686.198,-256.8826,155.1549,0,0,0,0,100,0),
(@PATH,40,4684.198,-256.8826,154.4049,0,0,0,0,100,0),
(@PATH,41,4684.948,-258.8826,155.1549,0,0,0,0,100,0),
(@PATH,42,4685.948,-260.6326,155.9049,0,0,0,0,100,0),
(@PATH,43,4687.198,-263.3826,156.6549,0,0,0,0,100,0),
(@PATH,44,4688.198,-265.1326,157.4049,0,0,0,0,100,0),
(@PATH,45,4688.948,-266.8826,158.1549,0,0,0,0,100,0),
(@PATH,46,4690.198,-269.6326,158.9049,0,0,0,0,100,0),
(@PATH,47,4691.198,-271.1326,159.4049,0,0,0,0,100,0),
(@PATH,48,4691.948,-272.8826,159.9049,0,0,0,0,100,0),
(@PATH,49,4692.948,-275.6326,160.6549,0,0,0,0,100,0),
(@PATH,50,4693.948,-277.3826,161.4049,0,0,0,0,100,0),
(@PATH,51,4694.698,-279.3826,162.1549,0,0,0,0,100,0),
(@PATH,52,4696.198,-281.8826,162.9049,0,0,0,0,100,0),
(@PATH,53,4696.171,-282.1349,163.015,0,0,0,0,100,0),
(@PATH,54,4696.921,-283.6349,163.765,0,0,0,0,100,0),
(@PATH,55,4692.171,-284.8849,162.765,0,0,0,0,100,0),
(@PATH,56,4686.671,-286.8849,162.015,0,0,0,0,100,0),
(@PATH,57,4682.792,-288.4092,162.0146,0,0,0,0,100,0),
(@PATH,58,4688.542,-286.4092,162.5146,0,0,0,0,100,0),
(@PATH,59,4693.042,-284.9092,163.0146,0,0,0,0,100,0),
(@PATH,60,4696.851,-283.3021,163.8536,0,0,0,0,100,0);

-- Frigid Necromancer SAI
SET @ENTRY := 27539;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=12;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,12,0,25,0,100,0,0,0,0,0,11,49292,0,0,0,0,0,1,0,0,0,0,0,0,0,"Frigid Necromancer - On Reset - Cast 'Ruby Corruption'");

-- Jortun
SET @NPC := 112693;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2,`position_x`=3966.579,`position_y`=272.363,`position_z`=15.73003 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`,`orientation`,`delay`,`move_type`,`action`,`action_chance`,`wpguid`) VALUES
(@PATH,1,3966.579,272.363,15.73003,0,0,0,0,100,0),
(@PATH,2,3961.079,270.613,15.48003,0,0,0,0,100,0),
(@PATH,3,3973.329,260.363,14.73003,0,0,0,0,100,0),
(@PATH,4,3979.829,254.613,15.98003,0,0,0,0,100,0),
(@PATH,5,3981.329,253.363,17.98003,0,0,0,0,100,0),
(@PATH,6,3987.59,248.0518,18.82422,0,0,0,0,100,0),
(@PATH,7,3989.59,247.8018,19.57422,0,0,0,0,100,0),
(@PATH,8,4013.34,246.0518,20.32422,0,0,0,0,100,0),
(@PATH,9,4014.34,245.8018,20.82422,0,0,0,0,100,0),
(@PATH,10,4015.34,245.8018,21.57422,0,0,0,0,100,0),
(@PATH,11,4016.34,245.8018,22.32422,0,0,0,0,100,0),
(@PATH,12,4022.34,245.3018,23.07422,0,0,0,0,100,0),
(@PATH,13,4022.455,245.0236,23.22869,0,0,0,0,100,0),
(@PATH,14,4023.205,244.7736,23.22869,0,0,0,0,100,0),
(@PATH,15,4030.205,244.2736,23.97869,0,0,0,0,100,0),
(@PATH,16,4035.205,243.7736,24.22869,0,0,0,0,100,0),
(@PATH,17,4041.955,243.2736,24.97869,0,0,0,0,100,0),
(@PATH,18,4050.955,242.2736,25.47869,0,0,0,0,100,0),
(@PATH,19,4051.224,242.1657,25.6583,0,0,0,0,100,0),
(@PATH,20,4055.724,241.6657,26.1583,0,0,0,0,100,0),
(@PATH,21,4060.474,240.4157,26.9083,0,0,0,0,100,0),
(@PATH,22,4064.474,239.6657,27.4083,0,0,0,0,100,0),
(@PATH,23,4069.224,238.4157,27.9083,0,0,0,0,100,0),
(@PATH,24,4075.724,236.6657,28.4083,0,0,0,0,100,0),
(@PATH,25,4086.474,234.4157,29.1583,0,0,0,0,100,0),
(@PATH,26,4090.474,233.6657,28.1583,0,0,0,0,100,0),
(@PATH,27,4092.474,233.1657,27.6583,0,0,0,0,100,0),
(@PATH,28,4096.224,232.1657,28.1583,0,0,0,0,100,0),
(@PATH,29,4098.224,231.6657,29.1583,0,0,0,0,100,0),
(@PATH,30,4100.224,231.1657,29.9083,0,0,0,0,100,0),
(@PATH,31,4096.492,231.9982,28.5828,0,0,0,0,100,0),
(@PATH,32,4098.492,231.4982,29.3328,0,0,0,0,100,0),
(@PATH,33,4100.492,230.9982,29.8328,0,0,0,0,100,0),
(@PATH,34,4101.492,230.7482,30.0828,0,0,0,0,100,0),
(@PATH,35,4126.742,211.4982,29.0828,0,0,0,0,100,0),
(@PATH,36,4130.742,208.4982,30.0828,0,0,0,0,100,0),
(@PATH,37,4126.928,211.2156,29.37246,0,0,0,0,100,0),
(@PATH,38,4130.928,208.2156,30.37246,0,0,0,0,100,0),
(@PATH,39,4132.178,207.2156,30.87246,0,0,0,0,100,0),
(@PATH,40,4133.928,205.9656,32.37246,0,0,0,0,100,0),
(@PATH,41,4158.026,187.5103,33.04226,0,0,0,0,100,0),
(@PATH,42,4177.526,171.0103,33.54226,0,0,0,0,100,0),
(@PATH,43,4181.526,167.7603,34.29226,0,0,0,0,100,0),
(@PATH,44,4177.997,170.6888,33.88856,0,0,0,0,100,0),
(@PATH,45,4181.747,167.4388,34.13856,0,0,0,0,100,0),
(@PATH,46,4182.247,166.9388,34.38856,0,0,0,0,100,0),
(@PATH,47,4183.997,165.6888,34.88856,0,0,0,0,100,0),
(@PATH,48,4188.747,162.1888,35.38856,0,0,0,0,100,0),
(@PATH,49,4194.247,158.4388,36.13856,0,0,0,0,100,0),
(@PATH,50,4198.997,154.9388,36.63856,0,0,0,0,100,0),
(@PATH,51,4201.497,153.1888,35.88856,0,0,0,0,100,0),
(@PATH,52,4203.247,151.9388,34.88856,0,0,0,0,100,0),
(@PATH,53,4201.792,152.8958,36.00117,0,0,0,0,100,0),
(@PATH,54,4203.292,151.6458,35.25117,0,0,0,0,100,0),
(@PATH,55,4210.042,146.6458,34.75117,0,0,0,0,100,0),
(@PATH,56,4212.792,142.8958,35.75117,0,0,0,0,100,0),
(@PATH,57,4213.792,141.1458,37.00117,0,0,0,0,100,0),
(@PATH,58,4215.042,139.3958,38.00117,0,0,0,0,100,0),
(@PATH,59,4216.042,137.6458,39.00117,0,0,0,0,100,0),
(@PATH,60,4214.134,140.9572,37.10639,0,0,0,0,100,0),
(@PATH,61,4215.134,139.2072,38.35639,0,0,0,0,100,0),
(@PATH,62,4216.384,137.4572,39.10639,0,0,0,0,100,0),
(@PATH,63,4216.884,136.4572,39.60639,0,0,0,0,100,0),
(@PATH,64,4218.634,135.7072,39.85639,0,0,0,0,100,0),
(@PATH,65,4224.134,133.4572,40.35639,0,0,0,0,100,0),
(@PATH,66,4229.384,130.9572,41.10639,0,0,0,0,100,0),
(@PATH,67,4235.634,127.9572,41.60639,0,0,0,0,100,0),
(@PATH,68,4229.684,130.7465,41.28711,0,0,0,0,100,0),
(@PATH,69,4235.934,127.7465,41.78711,0,0,0,0,100,0),
(@PATH,70,4238.684,126.4965,42.03711,0,0,0,0,100,0),
(@PATH,71,4242.434,123.2465,42.53711,0,0,0,0,100,0),
(@PATH,72,4246.934,119.2465,43.03711,0,0,0,0,100,0),
(@PATH,73,4249.684,116.7465,43.78711,0,0,0,0,100,0),
(@PATH,74,4251.184,115.4965,43.03711,0,0,0,0,100,0),
(@PATH,75,4254.434,112.9965,42.28711,0,0,0,0,100,0),
(@PATH,76,4267.336,101.6284,43.40099,0,0,0,0,100,0),
(@PATH,77,4269.836,98.62839,44.15099,0,0,0,0,100,0),
(@PATH,78,4273.086,95.12839,44.65099,0,0,0,0,100,0),
(@PATH,79,4278.336,89.12839,45.40099,0,0,0,0,100,0),
(@PATH,80,4279.836,87.62839,46.65099,0,0,0,0,100,0),
(@PATH,81,4278.601,88.82341,45.6701,0,0,0,0,100,0),
(@PATH,82,4280.101,87.32341,46.9201,0,0,0,0,100,0),
(@PATH,83,4281.351,85.82341,48.4201,0,0,0,0,100,0),
(@PATH,84,4285.351,82.82341,49.6701,0,0,0,0,100,0),
(@PATH,85,4288.851,79.82341,50.4201,0,0,0,0,100,0),
(@PATH,86,4292.851,76.82341,51.1701,0,0,0,0,100,0),
(@PATH,87,4297.351,73.07341,51.9201,0,0,0,0,100,0),
(@PATH,88,4297.78,72.80531,52.14567,0,0,0,0,100,0),
(@PATH,89,4302.28,69.05531,52.64567,0,0,0,0,100,0),
(@PATH,90,4305.78,64.30531,53.14567,0,0,0,0,100,0),
(@PATH,91,4308.78,60.55531,53.89567,0,0,0,0,100,0),
(@PATH,92,4312.53,55.80531,54.64567,0,0,0,0,100,0),
(@PATH,93,4309.234,60.36448,54.05492,0,0,0,0,100,0),
(@PATH,94,4312.734,55.61448,54.80492,0,0,0,0,100,0),
(@PATH,95,4315.234,52.36448,55.30492,0,0,0,0,100,0),
(@PATH,96,4317.984,49.61448,55.80492,0,0,0,0,100,0),
(@PATH,97,4320.984,47.11448,56.30492,0,0,0,0,100,0),
(@PATH,98,4321.984,45.61448,55.80492,0,0,0,0,100,0),
(@PATH,99,4323.484,44.11448,55.05492,0,0,0,0,100,0),
(@PATH,100,4325.484,42.11448,54.30492,0,0,0,0,100,0),
(@PATH,101,4326.984,40.61448,55.30492,0,0,0,0,100,0),
(@PATH,102,4330.484,37.11448,55.80492,0,0,0,0,100,0),
(@PATH,103,4332.734,35.11448,57.05492,0,0,0,0,100,0),
(@PATH,104,4333.234,34.36448,58.30492,0,0,0,0,100,0),
(@PATH,105,4330.798,36.88138,55.91195,0,0,0,0,100,0),
(@PATH,106,4332.798,34.63138,57.41195,0,0,0,0,100,0),
(@PATH,107,4333.548,34.13138,58.41195,0,0,0,0,100,0),
(@PATH,108,4334.298,33.38138,58.16195,0,0,0,0,100,0),
(@PATH,109,4339.298,28.38138,58.91195,0,0,0,0,100,0),
(@PATH,110,4342.798,25.13138,59.66195,0,0,0,0,100,0),
(@PATH,111,4347.048,20.88138,60.16195,0,0,0,0,100,0),
(@PATH,112,4351.298,16.88138,60.91195,0,0,0,0,100,0),
(@PATH,113,4351.698,16.44775,60.95687,0,0,0,0,100,0),
(@PATH,114,4351.948,16.19775,60.95687,0,0,0,0,100,0),
(@PATH,115,4356.448,12.19775,61.70687,0,0,0,0,100,0),
(@PATH,116,4361.698,7.947746,62.20687,0,0,0,0,100,0),
(@PATH,117,4365.448,4.697746,61.45687,0,0,0,0,100,0),
(@PATH,118,4366.198,4.197746,60.20687,0,0,0,0,100,0),
(@PATH,119,4365.591,4.536743,61.66898,0,0,0,0,100,0),
(@PATH,120,4366.591,4.036743,60.41898,0,0,0,0,100,0),
(@PATH,121,4372.341,-0.9632568,60.66898,0,0,0,0,100,0),
(@PATH,122,4375.841,-5.713257,61.41898,0,0,0,0,100,0),
(@PATH,123,4376.841,-7.463257,62.16898,0,0,0,0,100,0),
(@PATH,124,4378.091,-8.963257,62.66898,0,0,0,0,100,0),
(@PATH,125,4378.591,-9.713257,63.41898,0,0,0,0,100,0),
(@PATH,126,4380.341,-11.96326,64.41898,0,0,0,0,100,0),
(@PATH,127,4384.091,-16.71326,64.91898,0,0,0,0,100,0),
(@PATH,128,4388.841,-23.21326,65.66898,0,0,0,0,100,0),
(@PATH,129,4384.258,-16.96124,65.1631,0,0,0,0,100,0),
(@PATH,130,4389.008,-23.46124,65.9131,0,0,0,0,100,0),
(@PATH,131,4392.258,-27.71124,66.1631,0,0,0,0,100,0),
(@PATH,132,4398.258,-32.96124,66.9131,0,0,0,0,100,0),
(@PATH,133,4402.758,-36.46124,67.1631,0,0,0,0,100,0),
(@PATH,134,4408.758,-41.71124,67.6631,0,0,0,0,100,0),
(@PATH,135,4414.008,-46.21124,68.4131,0,0,0,0,100,0),
(@PATH,136,4419.508,-50.71124,68.9131,0,0,0,0,100,0),
(@PATH,137,4422.508,-53.46124,69.6631,0,0,0,0,100,0),
(@PATH,138,4419.742,-51.0945,69.37471,0,0,0,0,100,0),
(@PATH,139,4422.742,-53.5945,69.87471,0,0,0,0,100,0),
(@PATH,140,4423.242,-54.0945,70.12471,0,0,0,0,100,0),
(@PATH,141,4425.742,-55.5945,70.62471,0,0,0,0,100,0),
(@PATH,142,4427.492,-56.5945,71.12471,0,0,0,0,100,0),
(@PATH,143,4430.742,-58.5945,71.87471,0,0,0,0,100,0),
(@PATH,144,4434.242,-60.5945,72.62471,0,0,0,0,100,0),
(@PATH,145,4437.492,-62.5945,73.12471,0,0,0,0,100,0),
(@PATH,146,4437.903,-62.88269,73.40182,0,0,0,0,100,0),
(@PATH,147,4442.903,-65.88269,73.40182,0,0,0,0,100,0),
(@PATH,148,4454.653,-70.63269,73.90182,0,0,0,0,100,0),
(@PATH,149,4460.153,-73.13269,74.65182,0,0,0,0,100,0),
(@PATH,150,4454.842,-70.95877,74.27554,0,0,0,0,100,0),
(@PATH,151,4460.342,-73.20877,74.77554,0,0,0,0,100,0),
(@PATH,152,4464.842,-75.20877,75.52554,0,0,0,0,100,0),
(@PATH,153,4469.342,-77.45877,76.27554,0,0,0,0,100,0),
(@PATH,154,4473.592,-79.20877,76.52554,0,0,0,0,100,0),
(@PATH,155,4477.092,-80.95877,77.27554,0,0,0,0,100,0),
(@PATH,156,4481.592,-83.20877,78.02554,0,0,0,0,100,0),
(@PATH,157,4486.092,-85.45877,78.77554,0,0,0,0,100,0),
(@PATH,158,4486.404,-85.60809,79.05294,0,0,0,0,100,0),
(@PATH,159,4490.154,-87.35809,79.80294,0,0,0,0,100,0),
(@PATH,160,4493.904,-88.85809,80.30294,0,0,0,0,100,0),
(@PATH,161,4496.654,-89.85809,80.80294,0,0,0,0,100,0),
(@PATH,162,4499.154,-90.60809,81.30294,0,0,0,0,100,0),
(@PATH,163,4502.904,-92.10809,81.80294,0,0,0,0,100,0),
(@PATH,164,4505.654,-93.10809,82.55294,0,0,0,0,100,0),
(@PATH,165,4509.404,-94.60809,83.30294,0,0,0,0,100,0),
(@PATH,166,4505.88,-93.29077,82.71257,0,0,0,0,100,0),
(@PATH,167,4509.63,-94.79077,83.46257,0,0,0,0,100,0),
(@PATH,168,4510.38,-95.04077,83.46257,0,0,0,0,100,0),
(@PATH,169,4513.13,-95.79077,84.21257,0,0,0,0,100,0),
(@PATH,170,4516.63,-96.79077,84.71257,0,0,0,0,100,0),
(@PATH,171,4521.38,-98.29077,85.46257,0,0,0,0,100,0),
(@PATH,172,4525.38,-99.54077,86.21257,0,0,0,0,100,0),
(@PATH,173,4528.13,-100.2908,86.71257,0,0,0,0,100,0),
(@PATH,174,4521.656,-98.51135,85.72998,0,0,0,0,100,0),
(@PATH,175,4525.656,-99.76135,86.47998,0,0,0,0,100,0),
(@PATH,176,4528.406,-100.5114,86.97998,0,0,0,0,100,0),
(@PATH,177,4530.656,-101.0114,86.97998,0,0,0,0,100,0),
(@PATH,178,4535.656,-101.2614,87.72998,0,0,0,0,100,0),
(@PATH,179,4541.406,-101.7614,86.97998,0,0,0,0,100,0),
(@PATH,180,4550.406,-102.5114,87.72998,0,0,0,0,100,0),
(@PATH,181,4553.406,-102.7614,88.22998,0,0,0,0,100,0),
(@PATH,182,4555.406,-102.7614,88.97998,0,0,0,0,100,0),
(@PATH,183,4550.558,-102.7295,87.9478,0,0,0,0,100,0),
(@PATH,184,4553.558,-102.9795,88.4478,0,0,0,0,100,0),
(@PATH,185,4555.558,-102.9795,88.9478,0,0,0,0,100,0),
(@PATH,186,4556.558,-103.2295,88.9478,0,0,0,0,100,0),
(@PATH,187,4558.308,-103.4795,89.4478,0,0,0,0,100,0),
(@PATH,188,4561.308,-104.2295,90.6978,0,0,0,0,100,0),
(@PATH,189,4563.308,-104.7295,91.6978,0,0,0,0,100,0),
(@PATH,190,4565.308,-104.9795,92.4478,0,0,0,0,100,0),
(@PATH,191,4567.808,-105.7295,92.9478,0,0,0,0,100,0),
(@PATH,192,4576.808,-107.4795,92.1978,0,0,0,0,100,0),
(@PATH,193,4578.558,-107.9795,91.6978,0,0,0,0,100,0),
(@PATH,194,4580.558,-108.2295,90.6978,0,0,0,0,100,0),
(@PATH,195,4582.558,-108.7295,90.1978,0,0,0,0,100,0),
(@PATH,196,4578.968,-108.0446,92.06143,0,0,0,0,100,0),
(@PATH,197,4580.968,-108.5446,91.06143,0,0,0,0,100,0),
(@PATH,198,4582.718,-109.0446,90.56143,0,0,0,0,100,0),
(@PATH,199,4584.218,-109.2946,90.56143,0,0,0,0,100,0),
(@PATH,200,4587.968,-110.2946,91.31143,0,0,0,0,100,0),
(@PATH,201,4589.718,-110.5446,92.56143,0,0,0,0,100,0),
(@PATH,202,4592.718,-111.2946,94.56143,0,0,0,0,100,0),
(@PATH,203,4594.718,-111.7946,95.06143,0,0,0,0,100,0),
(@PATH,204,4596.468,-112.2946,95.81143,0,0,0,0,100,0),
(@PATH,205,4599.468,-113.0446,97.31143,0,0,0,0,100,0),
(@PATH,206,4594.818,-111.8515,95.27139,0,0,0,0,100,0),
(@PATH,207,4596.818,-112.3515,96.02139,0,0,0,0,100,0),
(@PATH,208,4599.818,-112.8515,97.52139,0,0,0,0,100,0),
(@PATH,209,4600.568,-113.1015,97.77139,0,0,0,0,100,0),
(@PATH,210,4602.568,-113.1015,98.52139,0,0,0,0,100,0),
(@PATH,211,4604.568,-113.1015,99.27139,0,0,0,0,100,0),
(@PATH,212,4606.568,-113.1015,99.77139,0,0,0,0,100,0),
(@PATH,213,4609.318,-113.1015,100.5214,0,0,0,0,100,0),
(@PATH,214,4611.318,-113.1015,101.2714,0,0,0,0,100,0),
(@PATH,215,4613.318,-113.1015,102.0214,0,0,0,0,100,0),
(@PATH,216,4615.318,-113.1015,102.5214,0,0,0,0,100,0),
(@PATH,217,4617.318,-113.1015,103.2714,0,0,0,0,100,0),
(@PATH,218,4619.318,-113.1015,104.0214,0,0,0,0,100,0),
(@PATH,219,4613.589,-113.3498,102.2264,0,0,0,0,100,0),
(@PATH,220,4615.589,-113.3498,102.7264,0,0,0,0,100,0),
(@PATH,221,4617.589,-113.3498,103.2264,0,0,0,0,100,0),
(@PATH,222,4619.589,-113.3498,103.9764,0,0,0,0,100,0),
(@PATH,223,4621.589,-113.3498,104.7264,0,0,0,0,100,0),
(@PATH,224,4623.589,-113.5998,105.7264,0,0,0,0,100,0),
(@PATH,225,4627.589,-113.8498,104.9764,0,0,0,0,100,0),
(@PATH,226,4628.589,-113.8498,104.2264,0,0,0,0,100,0),
(@PATH,227,4630.589,-114.0998,103.4764,0,0,0,0,100,0),
(@PATH,228,4643.339,-114.5998,103.9764,0,0,0,0,100,0),
(@PATH,229,4649.339,-114.8498,104.4764,0,0,0,0,100,0),
(@PATH,230,4655.339,-115.3498,105.2264,0,0,0,0,100,0),
(@PATH,231,4709.1,-115.011,117.582,0,0,0,0,100,0),
(@PATH,232,4711.271,-114.7002,118.7371,0,0,0,0,100,0),
(@PATH,233,4713.271,-114.7002,119.2371,0,0,0,0,100,0),
(@PATH,234,4715.271,-114.4502,119.9871,0,0,0,0,100,0),
(@PATH,235,4717.271,-114.4502,120.9871,0,0,0,0,100,0),
(@PATH,236,4719.271,-114.4502,122.4871,0,0,0,0,100,0),
(@PATH,237,4721.271,-114.4502,124.9871,0,0,0,0,100,0),
(@PATH,238,4722.271,-114.4502,126.9871,0,0,0,0,100,0),
(@PATH,239,4723.271,-114.2002,128.7371,0,0,0,0,100,0),
(@PATH,240,4724.271,-114.2002,130.2371,0,0,0,0,100,0),
(@PATH,241,4730.271,-114.2002,131.7371,0,0,0,0,100,0),
(@PATH,242,4733.271,-114.2002,132.4871,0,0,0,0,100,0),
(@PATH,243,4736.021,-114.2002,132.9871,0,0,0,0,100,0),
(@PATH,244,4739.021,-113.9502,133.7371,0,0,0,0,100,0),
(@PATH,245,4742.021,-113.9502,134.2371,0,0,0,0,100,0),
(@PATH,246,4745.021,-113.9502,134.9871,0,0,0,0,100,0),
(@PATH,247,4748.021,-113.7002,135.7371,0,0,0,0,100,0),
(@PATH,248,4751.021,-113.7002,136.4871,0,0,0,0,100,0),
(@PATH,249,4755.021,-113.4502,137.2371,0,0,0,0,100,0),
(@PATH,250,4757.021,-113.4502,137.9871,0,0,0,0,100,0),
(@PATH,251,4760.021,-113.4502,138.4871,0,0,0,0,100,0),
(@PATH,252,4755.3,-113.3806,137.3929,0,0,0,0,100,0),
(@PATH,253,4757.3,-113.3806,138.1429,0,0,0,0,100,0),
(@PATH,254,4760.3,-113.1306,138.6429,0,0,0,0,100,0),
(@PATH,255,4760.8,-113.1306,138.8929,0,0,0,0,100,0),
(@PATH,256,4764.8,-112.8806,139.6429,0,0,0,0,100,0),
(@PATH,257,4767.55,-112.6306,140.3929,0,0,0,0,100,0),
(@PATH,258,4770.3,-112.3806,140.6429,0,0,0,0,100,0),
(@PATH,259,4773.3,-112.3806,141.3929,0,0,0,0,100,0),
(@PATH,260,4776.3,-112.1306,141.8929,0,0,0,0,100,0),
(@PATH,261,4779.3,-111.8806,142.6429,0,0,0,0,100,0),
(@PATH,262,4782.3,-111.3806,143.1429,0,0,0,0,100,0),
(@PATH,263,4785.3,-111.1306,143.8929,0,0,0,0,100,0),
(@PATH,264,4782.639,-111.3082,143.3183,0,0,0,0,100,0),
(@PATH,265,4785.639,-111.0582,144.0683,0,0,0,0,100,0),
(@PATH,266,4787.639,-111.0582,144.8183,0,0,0,0,100,0),
(@PATH,267,4789.639,-111.0582,145.8183,0,0,0,0,100,0),
(@PATH,268,4791.639,-110.8082,146.8183,0,0,0,0,100,0),
(@PATH,269,4793.389,-110.8082,147.5683,0,0,0,0,100,0),
(@PATH,270,4795.389,-110.8082,148.5683,0,0,0,0,100,0),
(@PATH,271,4797.389,-110.5582,149.3183,0,0,0,0,100,0),
(@PATH,272,4799.389,-110.5582,150.3183,0,0,0,0,100,0),
(@PATH,273,4801.389,-110.5582,151.0683,0,0,0,0,100,0),
(@PATH,274,4803.389,-110.3082,151.8183,0,0,0,0,100,0),
(@PATH,275,4799.521,-110.2245,150.6717,0,0,0,0,100,0),
(@PATH,276,4801.521,-110.2245,151.4217,0,0,0,0,100,0),
(@PATH,277,4803.521,-110.2245,152.1717,0,0,0,0,100,0),
(@PATH,278,4804.021,-110.2245,152.1717,0,0,0,0,100,0),
(@PATH,279,4806.771,-109.4745,152.9217,0,0,0,0,100,0),
(@PATH,280,4808.771,-108.9745,153.6717,0,0,0,0,100,0),
(@PATH,281,4809.771,-108.7245,154.6717,0,0,0,0,100,0),
(@PATH,282,4810.521,-108.4745,155.6717,0,0,0,0,100,0),
(@PATH,283,4811.521,-108.2245,156.9217,0,0,0,0,100,0),
(@PATH,284,4816.271,-107.2245,158.9217,0,0,0,0,100,0),
(@PATH,285,4819.271,-106.4745,159.4217,0,0,0,0,100,0),
(@PATH,286,4816.643,-107.0058,159.1424,0,0,0,0,100,0),
(@PATH,287,4819.393,-106.2558,159.6424,0,0,0,0,100,0),
(@PATH,288,4822.393,-105.5058,160.3924,0,0,0,0,100,0),
(@PATH,289,4825.643,-103.2558,161.1424,0,0,0,0,100,0),
(@PATH,290,4828.893,-101.0058,161.8924,0,0,0,0,100,0),
(@PATH,291,4831.393,-99.25578,162.3924,0,0,0,0,100,0),
(@PATH,292,4833.643,-97.75578,162.8924,0,0,0,0,100,0),
(@PATH,293,4844.393,-90.50578,163.8924,0,0,0,0,100,0),
(@PATH,294,4846.143,-89.50578,164.8924,0,0,0,0,100,0),
(@PATH,295,4847.643,-88.25578,166.1424,0,0,0,0,100,0),
(@PATH,296,4849.393,-87.00578,167.6424,0,0,0,0,100,0),
(@PATH,297,4850.893,-86.00578,168.6424,0,0,0,0,100,0),
(@PATH,298,4852.643,-84.75578,170.1424,0,0,0,0,100,0),
(@PATH,299,4847.853,-88.10442,166.4347,0,0,0,0,100,0),
(@PATH,300,4849.603,-86.85442,167.9347,0,0,0,0,100,0),
(@PATH,301,4851.353,-85.85442,168.9347,0,0,0,0,100,0),
(@PATH,302,4852.853,-84.60442,170.4347,0,0,0,0,100,0),
(@PATH,303,4853.353,-84.35442,170.4347,0,0,0,0,100,0),
(@PATH,304,4854.353,-83.85442,171.4347,0,0,0,0,100,0),
(@PATH,305,4856.103,-83.10442,172.1847,0,0,0,0,100,0),
(@PATH,306,4857.103,-82.85442,172.9347,0,0,0,0,100,0),
(@PATH,307,4858.853,-82.35442,174.4347,0,0,0,0,100,0),
(@PATH,308,4860.603,-81.60442,175.1847,0,0,0,0,100,0),
(@PATH,309,4861.353,-81.10442,175.9347,0,0,0,0,100,0),
(@PATH,310,4863.103,-80.35442,176.9347,0,0,0,0,100,0),
(@PATH,311,4864.103,-79.85442,177.9347,0,0,0,0,100,0),
(@PATH,312,4866.103,-79.10442,178.9347,0,0,0,0,100,0),
(@PATH,313,4866.853,-78.85442,179.4347,0,0,0,0,100,0),
(@PATH,314,4870.603,-77.10442,178.6847,0,0,0,0,100,0),
(@PATH,315,4871.603,-76.85442,179.1847,0,0,0,0,100,0),
(@PATH,316,4873.353,-76.10442,179.9347,0,0,0,0,100,0),
(@PATH,317,4870.785,-76.93673,178.8536,0,0,0,0,100,0),
(@PATH,318,4871.785,-76.68673,179.6036,0,0,0,0,100,0),
(@PATH,319,4873.535,-75.68673,180.3536,0,0,0,0,100,0),
(@PATH,320,4875.535,-74.93673,181.1036,0,0,0,0,100,0),
(@PATH,321,4878.535,-72.68673,181.6036,0,0,0,0,100,0),
(@PATH,322,4884.285,-68.43673,182.6036,0,0,0,0,100,0),
(@PATH,323,4885.535,-67.18673,184.6036,0,0,0,0,100,0),
(@PATH,324,4887.035,-66.18673,185.1036,0,0,0,0,100,0),
(@PATH,325,4888.785,-64.93673,186.1036,0,0,0,0,100,0),
(@PATH,326,4891.035,-63.18673,186.8536,0,0,0,0,100,0),
(@PATH,327,4892.785,-61.93673,187.3536,0,0,0,0,100,0),
(@PATH,328,4895.035,-60.18673,188.1036,0,0,0,0,100,0),
(@PATH,329,4898.285,-57.68673,189.1036,0,0,0,0,100,0),
(@PATH,330,4900.785,-55.93673,189.8536,0,0,0,0,100,0),
(@PATH,331,4902.285,-54.68673,190.3536,0,0,0,0,100,0),
(@PATH,332,4898.646,-57.62174,189.3363,0,0,0,0,100,0),
(@PATH,333,4900.896,-55.62174,190.0863,0,0,0,0,100,0),
(@PATH,334,4902.646,-54.62174,190.5863,0,0,0,0,100,0),
(@PATH,335,4903.646,-53.62174,191.0863,0,0,0,0,100,0),
(@PATH,336,4905.896,-51.87174,191.8363,0,0,0,0,100,0),
(@PATH,337,4908.146,-49.87174,192.5863,0,0,0,0,100,0),
(@PATH,338,4911.896,-46.62174,193.0863,0,0,0,0,100,0),
(@PATH,339,4914.146,-44.87174,193.8363,0,0,0,0,100,0),
(@PATH,340,4915.646,-43.62174,194.5863,0,0,0,0,100,0),
(@PATH,341,4917.146,-42.37174,195.5863,0,0,0,0,100,0),
(@PATH,342,4920.146,-39.87174,197.3363,0,0,0,0,100,0),
(@PATH,343,4923.146,-37.37174,198.5863,0,0,0,0,100,0),
(@PATH,344,4925.646,-35.37174,199.8363,0,0,0,0,100,0),
(@PATH,345,4927.146,-34.12174,201.5863,0,0,0,0,100,0),
(@PATH,346,4928.646,-32.87174,202.3363,0,0,0,0,100,0),
(@PATH,347,4927.425,-33.87713,201.8472,0,0,0,0,100,0),
(@PATH,348,4928.925,-32.62713,202.5972,0,0,0,0,100,0),
(@PATH,349,4929.675,-31.87713,203.3472,0,0,0,0,100,0),
(@PATH,350,4931.175,-30.37713,204.0972,0,0,0,0,100,0),
(@PATH,351,4932.425,-28.62713,204.8472,0,0,0,0,100,0),
(@PATH,352,4933.675,-27.12713,205.8472,0,0,0,0,100,0),
(@PATH,353,4934.925,-25.62713,206.3472,0,0,0,0,100,0),
(@PATH,354,4935.925,-24.12713,207.0972,0,0,0,0,100,0),
(@PATH,355,4937.175,-22.87713,207.8472,0,0,0,0,100,0),
(@PATH,356,4938.675,-21.37713,208.5972,0,0,0,0,100,0),
(@PATH,357,4939.925,-19.87713,209.3472,0,0,0,0,100,0),
(@PATH,358,4941.175,-18.37713,210.0972,0,0,0,0,100,0),
(@PATH,359,4943.175,-15.87713,211.3472,0,0,0,0,100,0),
(@PATH,360,4944.425,-14.37713,212.0972,0,0,0,0,100,0),
(@PATH,361,4938.823,-21.04173,208.8677,0,0,0,0,100,0),
(@PATH,362,4940.073,-19.54173,209.6177,0,0,0,0,100,0),
(@PATH,363,4941.323,-18.04173,210.3677,0,0,0,0,100,0),
(@PATH,364,4943.323,-15.79173,211.6177,0,0,0,0,100,0),
(@PATH,365,4944.573,-14.29173,212.3677,0,0,0,0,100,0),
(@PATH,366,4945.573,-12.79173,212.8677,0,0,0,0,100,0),
(@PATH,367,4947.573,-10.54173,214.1177,0,0,0,0,100,0),
(@PATH,368,4948.823,-9.041726,214.8677,0,0,0,0,100,0),
(@PATH,369,4950.073,-7.291726,215.3677,0,0,0,0,100,0),
(@PATH,370,4951.323,-5.791726,216.3677,0,0,0,0,100,0),
(@PATH,371,4952.573,-4.291726,217.1177,0,0,0,0,100,0),
(@PATH,372,4953.573,-2.791726,218.1177,0,0,0,0,100,0),
(@PATH,373,4955.323,-0.5417261,218.8677,0,0,0,0,100,0),
(@PATH,374,4956.573,0.9582739,219.6177,0,0,0,0,100,0),
(@PATH,375,4957.823,2.458274,220.3677,0,0,0,0,100,0),
(@PATH,376,4959.573,4.958274,221.6177,0,0,0,0,100,0),
(@PATH,377,4960.823,6.458274,222.6177,0,0,0,0,100,0),
(@PATH,378,4962.073,8.208274,223.3677,0,0,0,0,100,0),
(@PATH,379,4963.823,10.45827,224.8677,0,0,0,0,100,0),
(@PATH,380,4965.073,11.95827,225.3677,0,0,0,0,100,0),
(@PATH,381,4967.073,14.45827,226.6177,0,0,0,0,100,0),
(@PATH,382,4968.323,15.95827,227.6177,0,0,0,0,100,0),
(@PATH,383,4970.073,18.20827,228.8677,0,0,0,0,100,0),
(@PATH,384,4971.323,19.95827,229.6177,0,0,0,0,100,0),
(@PATH,385,4968.528,16.30715,227.939,0,0,0,0,100,0),
(@PATH,386,4970.278,18.55715,229.189,0,0,0,0,100,0),
(@PATH,387,4971.528,20.05715,229.939,0,0,0,0,100,0),
(@PATH,388,4972.278,21.05715,230.189,0,0,0,0,100,0),
(@PATH,389,4974.278,23.05715,231.439,0,0,0,0,100,0),
(@PATH,390,4975.778,24.55715,232.439,0,0,0,0,100,0),
(@PATH,391,4978.028,26.55715,233.689,0,0,0,0,100,0),
(@PATH,392,4979.778,28.55715,234.689,0,0,0,0,100,0),
(@PATH,393,4982.028,30.55715,235.939,0,0,0,0,100,0),
(@PATH,394,4984.278,32.80715,237.189,0,0,0,0,100,0),
(@PATH,395,4986.278,34.80715,238.189,0,0,0,0,100,0),
(@PATH,396,4988.528,36.80715,239.439,0,0,0,0,100,0),
(@PATH,397,4988.716,37.15675,239.7151,0,0,0,0,100,0),
(@PATH,398,4989.966,38.40675,240.7151,0,0,0,0,100,0),
(@PATH,399,4991.466,39.65675,241.4651,0,0,0,0,100,0),
(@PATH,400,4993.716,41.65675,242.7151,0,0,0,0,100,0),
(@PATH,401,4994.966,42.65675,243.7151,0,0,0,0,100,0),
(@PATH,402,4996.466,44.15675,244.2151,0,0,0,0,100,0),
(@PATH,403,4997.966,45.40675,244.9651,0,0,0,0,100,0),
(@PATH,404,5000.216,47.40675,246.4651,0,0,0,0,100,0),
(@PATH,405,5001.716,48.65675,247.2151,0,0,0,0,100,0),
(@PATH,406,4996.59,44.31219,244.4983,0,0,0,0,100,0),
(@PATH,407,4998.09,45.56219,245.2483,0,0,0,0,100,0),
(@PATH,408,5000.34,47.56219,246.7483,0,0,0,0,100,0),
(@PATH,409,5001.84,49.06219,247.4983,0,0,0,0,100,0),
(@PATH,410,5003.84,50.81219,248.7483,0,0,0,0,100,0),
(@PATH,411,5004.59,52.56219,249.9983,0,0,0,0,100,0),
(@PATH,412,5005.59,54.31219,250.7483,0,0,0,0,100,0),
(@PATH,413,5006.59,56.06219,251.2483,0,0,0,0,100,0),
(@PATH,414,5007.34,57.56219,251.9983,0,0,0,0,100,0),
(@PATH,415,5008.34,59.31219,252.7483,0,0,0,0,100,0),
(@PATH,416,5009.34,61.06219,253.7483,0,0,0,0,100,0),
(@PATH,417,5010.34,62.81219,254.2483,0,0,0,0,100,0),
(@PATH,418,5010.84,63.56219,255.2483,0,0,0,0,100,0),
(@PATH,419,5011.84,65.31219,255.9983,0,0,0,0,100,0),
(@PATH,420,5012.84,67.06219,256.9983,0,0,0,0,100,0),
(@PATH,421,5013.84,68.81219,257.9983,0,0,0,0,100,0),
(@PATH,422,5011.006,63.99465,255.4823,0,0,0,0,100,0),
(@PATH,423,5012.006,65.74465,256.2323,0,0,0,0,100,0),
(@PATH,424,5013.006,67.49465,257.2323,0,0,0,0,100,0),
(@PATH,425,5014.006,69.24465,258.2323,0,0,0,0,100,0),
(@PATH,426,5014.756,70.24465,258.4823,0,0,0,0,100,0),
(@PATH,427,5016.506,71.24465,259.2323,0,0,0,0,100,0),
(@PATH,428,5019.006,72.49465,259.7323,0,0,0,0,100,0),
(@PATH,429,5021.756,73.74465,260.4823,0,0,0,0,100,0),
(@PATH,430,5023.506,74.74465,260.7323,0,0,0,0,100,0),
(@PATH,431,5025.006,75.74465,261.4823,0,0,0,0,100,0),
(@PATH,432,5027.756,76.99465,262.2323,0,0,0,0,100,0),
(@PATH,433,5029.506,77.99465,262.9823,0,0,0,0,100,0),
(@PATH,434,5030.256,78.49465,263.7323,0,0,0,0,100,0),
(@PATH,435,5033.006,79.74465,264.4823,0,0,0,0,100,0),
(@PATH,436,5033.756,80.24465,264.9823,0,0,0,0,100,0),
(@PATH,437,5035.506,81.24465,265.4823,0,0,0,0,100,0),
(@PATH,438,5036.506,81.74465,266.2323,0,0,0,0,100,0),
(@PATH,439,5030.598,78.71907,263.8674,0,0,0,0,100,0),
(@PATH,440,5033.098,79.96907,264.6174,0,0,0,0,100,0),
(@PATH,441,5034.098,80.46907,265.1174,0,0,0,0,100,0),
(@PATH,442,5035.848,81.46907,265.8674,0,0,0,0,100,0),
(@PATH,443,5036.848,81.96907,266.3674,0,0,0,0,100,0),
(@PATH,444,5038.598,82.96907,267.1174,0,0,0,0,100,0),
(@PATH,445,5040.348,83.71907,267.8674,0,0,0,0,100,0),
(@PATH,446,5042.098,84.46907,268.6174,0,0,0,0,100,0),
(@PATH,447,5044.098,85.46907,269.3674,0,0,0,0,100,0),
(@PATH,448,5046.598,86.46907,270.1174,0,0,0,0,100,0),
(@PATH,449,5049.098,87.71907,271.6174,0,0,0,0,100,0),
(@PATH,450,5051.848,88.96907,272.3674,0,0,0,0,100,0),
(@PATH,451,5053.848,89.71907,273.3674,0,0,0,0,100,0),
(@PATH,452,5055.598,90.71907,274.1174,0,0,0,0,100,0),
(@PATH,453,5059.098,92.21907,275.6174,0,0,0,0,100,0),
(@PATH,454,5059.351,92.58967,275.9098,0,0,0,0,100,0),
(@PATH,455,5061.351,93.33967,276.9098,0,0,0,0,100,0),
(@PATH,456,5062.351,93.58967,277.6598,0,0,0,0,100,0),
(@PATH,457,5064.101,94.08967,278.6598,0,0,0,0,100,0),
(@PATH,458,5066.101,94.58967,279.1598,0,0,0,0,100,0),
(@PATH,459,5067.101,94.83967,279.9098,0,0,0,0,100,0),
(@PATH,460,5068.101,94.83967,280.4098,0,0,0,0,100,0),
(@PATH,461,5072.601,95.83967,281.1598,0,0,0,0,100,0),
(@PATH,462,5075.601,96.58967,281.9098,0,0,0,0,100,0),
(@PATH,463,5078.601,97.33967,282.6598,0,0,0,0,100,0),
(@PATH,464,5081.351,98.08967,283.1598,0,0,0,0,100,0),
(@PATH,465,5081.644,98.23627,283.3898,0,0,0,0,100,0),
(@PATH,466,5085.394,99.23627,284.1398,0,0,0,0,100,0),
(@PATH,467,5089.394,99.48627,284.6398,0,0,0,0,100,0),
(@PATH,468,5092.394,99.73627,285.6398,0,0,0,0,100,0),
(@PATH,469,5094.144,99.98627,286.8898,0,0,0,0,100,0),
(@PATH,470,5095.144,99.98627,287.8898,0,0,0,0,100,0),
(@PATH,471,5097.144,100.2363,288.6398,0,0,0,0,100,0),
(@PATH,472,5100.144,100.7363,289.3898,0,0,0,0,100,0),
(@PATH,473,5103.144,100.9863,290.1398,0,0,0,0,100,0),
(@PATH,474,5105.144,101.2363,290.6398,0,0,0,0,100,0),
(@PATH,475,5104.537,101.2179,290.6266,0,0,0,0,100,0),
(@PATH,476,5102.787,100.9679,290.1266,0,0,0,0,100,0),
(@PATH,477,5100.787,100.7179,289.3766,0,0,0,0,100,0),
(@PATH,478,5098.787,100.4679,288.8766,0,0,0,0,100,0),
(@PATH,479,5096.787,100.2179,288.1266,0,0,0,0,100,0),
(@PATH,480,5094.787,99.96793,287.1266,0,0,0,0,100,0),
(@PATH,481,5093.787,99.96793,286.3766,0,0,0,0,100,0),
(@PATH,482,5091.787,99.71793,285.6266,0,0,0,0,100,0),
(@PATH,483,5090.037,99.71793,284.8766,0,0,0,0,100,0),
(@PATH,484,5086.037,99.21793,284.1266,0,0,0,0,100,0),
(@PATH,485,5083.037,98.96793,283.6266,0,0,0,0,100,0),
(@PATH,486,5079.037,98.46793,282.8766,0,0,0,0,100,0),
(@PATH,487,5078.892,98.26491,282.666,0,0,0,0,100,0),
(@PATH,488,5076.892,98.01491,282.166,0,0,0,0,100,0),
(@PATH,489,5073.142,96.76491,281.416,0,0,0,0,100,0),
(@PATH,490,5070.142,96.01491,280.916,0,0,0,0,100,0),
(@PATH,491,5067.392,95.26491,280.166,0,0,0,0,100,0),
(@PATH,492,5066.392,95.01491,279.666,0,0,0,0,100,0),
(@PATH,493,5065.392,94.76491,278.666,0,0,0,0,100,0),
(@PATH,494,5062.642,94.01491,277.916,0,0,0,0,100,0),
(@PATH,495,5061.642,93.76491,277.416,0,0,0,0,100,0),
(@PATH,496,5060.642,93.76491,276.666,0,0,0,0,100,0),
(@PATH,497,5057.892,93.01491,275.666,0,0,0,0,100,0),
(@PATH,498,5055.892,92.51491,274.916,0,0,0,0,100,0),
(@PATH,499,5053.892,92.01491,273.916,0,0,0,0,100,0),
(@PATH,500,5052.142,91.51491,273.166,0,0,0,0,100,0),
(@PATH,501,5050.142,90.76491,272.666,0,0,0,0,100,0),
(@PATH,502,5049.142,90.51491,271.916,0,0,0,0,100,0),
(@PATH,503,5046.392,89.76491,271.166,0,0,0,0,100,0),
(@PATH,504,5044.392,89.26491,270.416,0,0,0,0,100,0),
(@PATH,505,5055.736,92.20252,274.5854,0,0,0,0,100,0),
(@PATH,506,5053.736,91.70252,273.5854,0,0,0,0,100,0),
(@PATH,507,5051.736,91.20252,272.8354,0,0,0,0,100,0),
(@PATH,508,5049.986,90.70252,272.3354,0,0,0,0,100,0),
(@PATH,509,5048.986,90.45252,271.5854,0,0,0,0,100,0),
(@PATH,510,5045.986,89.70252,270.8354,0,0,0,0,100,0),
(@PATH,511,5043.986,88.95252,270.0854,0,0,0,0,100,0),
(@PATH,512,5043.736,88.95252,269.8354,0,0,0,0,100,0),
(@PATH,513,5040.986,87.45252,268.5854,0,0,0,0,100,0),
(@PATH,514,5039.486,86.45252,267.8354,0,0,0,0,100,0),
(@PATH,515,5037.736,85.45252,267.0854,0,0,0,0,100,0),
(@PATH,516,5036.236,84.20252,266.5854,0,0,0,0,100,0),
(@PATH,517,5034.486,83.20252,265.5854,0,0,0,0,100,0),
(@PATH,518,5032.736,82.45252,265.0854,0,0,0,0,100,0),
(@PATH,519,5030.986,81.45252,264.5854,0,0,0,0,100,0),
(@PATH,520,5029.236,80.45252,263.8354,0,0,0,0,100,0),
(@PATH,521,5027.486,79.45252,263.0854,0,0,0,0,100,0),
(@PATH,522,5025.986,78.45252,262.3354,0,0,0,0,100,0),
(@PATH,523,5024.236,77.45252,261.5854,0,0,0,0,100,0),
(@PATH,524,5021.486,75.95252,260.5854,0,0,0,0,100,0),
(@PATH,525,5018.986,74.45252,260.0854,0,0,0,0,100,0),
(@PATH,526,5021.314,75.6748,260.4416,0,0,0,0,100,0),
(@PATH,527,5018.814,74.1748,259.6916,0,0,0,0,100,0),
(@PATH,528,5016.064,72.6748,259.1916,0,0,0,0,100,0),
(@PATH,529,5014.064,70.4248,258.1916,0,0,0,0,100,0),
(@PATH,530,5012.064,68.1748,257.1916,0,0,0,0,100,0),
(@PATH,531,5010.064,65.9248,255.4416,0,0,0,0,100,0),
(@PATH,532,5008.064,63.9248,253.6916,0,0,0,0,100,0),
(@PATH,533,5005.814,61.6748,251.9416,0,0,0,0,100,0),
(@PATH,534,5004.814,60.1748,251.1916,0,0,0,0,100,0),
(@PATH,535,5003.314,58.9248,250.6916,0,0,0,0,100,0),
(@PATH,536,5002.064,57.4248,249.4416,0,0,0,0,100,0),
(@PATH,537,5000.564,55.9248,248.6916,0,0,0,0,100,0),
(@PATH,538,4998.564,53.9248,247.4416,0,0,0,0,100,0),
(@PATH,539,4995.814,50.9248,245.6916,0,0,0,0,100,0),
(@PATH,540,4994.564,49.4248,244.9416,0,0,0,0,100,0),
(@PATH,541,4991.814,46.6748,243.1916,0,0,0,0,100,0),
(@PATH,542,4990.314,45.1748,242.6916,0,0,0,0,100,0),
(@PATH,543,4988.314,42.9248,241.1916,0,0,0,0,100,0),
(@PATH,544,4991.532,46.35353,242.8972,0,0,0,0,100,0),
(@PATH,545,4990.032,44.85353,242.3972,0,0,0,0,100,0),
(@PATH,546,4988.032,42.60353,240.8972,0,0,0,0,100,0),
(@PATH,547,4987.282,41.60353,240.3972,0,0,0,0,100,0),
(@PATH,548,4985.782,40.35353,239.6472,0,0,0,0,100,0),
(@PATH,549,4984.282,38.85353,238.6472,0,0,0,0,100,0),
(@PATH,550,4982.782,37.60353,237.8972,0,0,0,0,100,0),
(@PATH,551,4982.032,36.85353,236.6472,0,0,0,0,100,0),
(@PATH,552,4980.532,35.35353,235.6472,0,0,0,0,100,0),
(@PATH,553,4979.782,34.85353,234.3972,0,0,0,0,100,0),
(@PATH,554,4979.282,34.10353,233.6472,0,0,0,0,100,0),
(@PATH,555,4978.532,33.35353,233.1472,0,0,0,0,100,0),
(@PATH,556,4977.782,32.60353,232.1472,0,0,0,0,100,0),
(@PATH,557,4975.782,30.85353,230.8972,0,0,0,0,100,0),
(@PATH,558,4975.032,30.10353,230.3972,0,0,0,0,100,0),
(@PATH,559,4972.782,28.10353,229.1472,0,0,0,0,100,0),
(@PATH,560,4970.782,26.10353,228.3972,0,0,0,0,100,0),
(@PATH,561,4969.282,24.60353,227.8972,0,0,0,0,100,0),
(@PATH,562,4964.282,19.85353,227.3972,0,0,0,0,100,0),
(@PATH,563,4963.855,19.72905,227.0677,0,0,0,0,100,0),
(@PATH,564,4962.605,18.47905,226.3177,0,0,0,0,100,0),
(@PATH,565,4961.105,17.22905,225.5677,0,0,0,0,100,0),
(@PATH,566,4960.355,16.47905,224.8177,0,0,0,0,100,0),
(@PATH,567,4958.855,15.22904,224.3177,0,0,0,0,100,0),
(@PATH,568,4957.355,13.97904,223.5677,0,0,0,0,100,0),
(@PATH,569,4956.605,13.47904,223.0677,0,0,0,0,100,0),
(@PATH,570,4955.355,12.47904,222.0677,0,0,0,0,100,0),
(@PATH,571,4953.105,10.47904,221.0677,0,0,0,0,100,0),
(@PATH,572,4951.355,9.229045,220.5677,0,0,0,0,100,0),
(@PATH,573,4950.605,8.479045,219.8177,0,0,0,0,100,0),
(@PATH,574,4949.105,7.229045,219.0677,0,0,0,0,100,0),
(@PATH,575,4947.605,5.979045,218.3177,0,0,0,0,100,0),
(@PATH,576,4952.728,10.19929,220.7288,0,0,0,0,100,0),
(@PATH,577,4951.228,8.949289,220.2288,0,0,0,0,100,0),
(@PATH,578,4950.478,8.199289,219.4788,0,0,0,0,100,0),
(@PATH,579,4948.978,6.949289,218.7288,0,0,0,0,100,0),
(@PATH,580,4947.478,5.699289,217.9788,0,0,0,0,100,0),
(@PATH,581,4945.228,3.699289,216.9788,0,0,0,0,100,0),
(@PATH,582,4943.478,1.199289,215.7288,0,0,0,0,100,0),
(@PATH,583,4942.478,-0.5507112,214.9788,0,0,0,0,100,0),
(@PATH,584,4941.728,-2.300711,214.2288,0,0,0,0,100,0),
(@PATH,585,4940.728,-3.800711,213.7288,0,0,0,0,100,0),
(@PATH,586,4939.728,-5.300711,212.9788,0,0,0,0,100,0),
(@PATH,587,4938.728,-7.050711,212.2288,0,0,0,0,100,0),
(@PATH,588,4937.728,-8.800711,211.4788,0,0,0,0,100,0),
(@PATH,589,4936.728,-10.55071,210.7288,0,0,0,0,100,0),
(@PATH,590,4935.728,-12.30071,209.9788,0,0,0,0,100,0),
(@PATH,591,4934.478,-14.05071,209.2288,0,0,0,0,100,0),
(@PATH,592,4933.478,-15.55071,208.2288,0,0,0,0,100,0),
(@PATH,593,4931.978,-18.30071,207.4788,0,0,0,0,100,0),
(@PATH,594,4935.371,-12.56639,209.951,0,0,0,0,100,0),
(@PATH,595,4934.371,-14.31639,209.201,0,0,0,0,100,0),
(@PATH,596,4933.371,-15.81639,208.201,0,0,0,0,100,0),
(@PATH,597,4931.871,-18.56639,207.201,0,0,0,0,100,0),
(@PATH,598,4930.871,-20.06639,206.451,0,0,0,0,100,0),
(@PATH,599,4928.871,-22.06639,205.451,0,0,0,0,100,0),
(@PATH,600,4926.871,-24.31639,204.451,0,0,0,0,100,0),
(@PATH,601,4925.371,-25.81639,203.701,0,0,0,0,100,0),
(@PATH,602,4924.871,-26.56639,202.701,0,0,0,0,100,0),
(@PATH,603,4922.871,-28.81639,200.701,0,0,0,0,100,0),
(@PATH,604,4921.371,-30.31639,199.701,0,0,0,0,100,0),
(@PATH,605,4920.121,-31.56639,198.951,0,0,0,0,100,0),
(@PATH,606,4918.371,-33.81638,197.701,0,0,0,0,100,0),
(@PATH,607,4915.621,-36.56638,196.201,0,0,0,0,100,0),
(@PATH,608,4913.621,-38.81638,195.451,0,0,0,0,100,0),
(@PATH,609,4910.871,-41.81638,194.451,0,0,0,0,100,0),
(@PATH,610,4908.871,-44.06638,193.451,0,0,0,0,100,0),
(@PATH,611,4910.639,-42.03794,194.2787,0,0,0,0,100,0),
(@PATH,612,4908.639,-44.28794,193.2787,0,0,0,0,100,0),
(@PATH,613,4903.889,-49.28794,191.5287,0,0,0,0,100,0),
(@PATH,614,4901.639,-51.28794,190.7787,0,0,0,0,100,0),
(@PATH,615,4899.389,-53.28794,190.0287,0,0,0,0,100,0),
(@PATH,616,4897.139,-55.28794,189.5287,0,0,0,0,100,0),
(@PATH,617,4895.889,-56.28794,188.7787,0,0,0,0,100,0),
(@PATH,618,4893.639,-58.28794,188.2787,0,0,0,0,100,0),
(@PATH,619,4891.389,-60.28794,187.2787,0,0,0,0,100,0),
(@PATH,620,4889.139,-62.03794,185.7787,0,0,0,0,100,0),
(@PATH,621,4885.389,-65.53794,183.7787,0,0,0,0,100,0),
(@PATH,622,4883.139,-67.28794,182.2787,0,0,0,0,100,0),
(@PATH,623,4885.011,-65.72313,183.5428,0,0,0,0,100,0),
(@PATH,624,4882.761,-67.72313,182.0428,0,0,0,0,100,0),
(@PATH,625,4878.761,-71.22313,181.7928,0,0,0,0,100,0),
(@PATH,626,4875.511,-73.47313,181.0428,0,0,0,0,100,0),
(@PATH,627,4873.011,-75.22313,180.2928,0,0,0,0,100,0),
(@PATH,628,4871.511,-76.47313,179.2928,0,0,0,0,100,0),
(@PATH,629,4870.511,-76.97313,178.7928,0,0,0,0,100,0),
(@PATH,630,4866.011,-80.47313,178.0428,0,0,0,0,100,0),
(@PATH,631,4864.511,-81.47313,176.5428,0,0,0,0,100,0),
(@PATH,632,4863.511,-82.22313,175.2928,0,0,0,0,100,0),
(@PATH,633,4862.011,-83.22313,174.2928,0,0,0,0,100,0),
(@PATH,634,4860.261,-84.47313,172.7928,0,0,0,0,100,0),
(@PATH,635,4858.761,-85.72313,171.7928,0,0,0,0,100,0),
(@PATH,636,4858.011,-86.22313,170.5428,0,0,0,0,100,0),
(@PATH,637,4856.261,-87.47313,169.2928,0,0,0,0,100,0),
(@PATH,638,4854.761,-88.72313,168.2928,0,0,0,0,100,0),
(@PATH,639,4853.011,-89.72313,166.7928,0,0,0,0,100,0),
(@PATH,640,4852.261,-90.47313,165.0428,0,0,0,0,100,0),
(@PATH,641,4856.188,-87.68352,169.0529,0,0,0,0,100,0),
(@PATH,642,4854.438,-88.93352,168.0529,0,0,0,0,100,0),
(@PATH,643,4852.938,-90.18352,166.5529,0,0,0,0,100,0),
(@PATH,644,4851.938,-90.68352,164.8029,0,0,0,0,100,0),
(@PATH,645,4851.688,-90.93352,165.0529,0,0,0,0,100,0),
(@PATH,646,4850.688,-91.18352,164.5529,0,0,0,0,100,0),
(@PATH,647,4848.688,-91.43352,163.5529,0,0,0,0,100,0),
(@PATH,648,4845.688,-91.43352,162.5529,0,0,0,0,100,0),
(@PATH,649,4838.688,-92.43352,163.3029,0,0,0,0,100,0),
(@PATH,650,4829.188,-93.68352,162.8029,0,0,0,0,100,0),
(@PATH,651,4824.188,-94.18352,162.0529,0,0,0,0,100,0),
(@PATH,652,4819.188,-94.93352,161.5529,0,0,0,0,100,0),
(@PATH,653,4814.188,-95.43352,160.8029,0,0,0,0,100,0),
(@PATH,654,4811.188,-95.93352,160.3029,0,0,0,0,100,0),
(@PATH,655,4813.979,-95.63231,160.5142,0,0,0,0,100,0),
(@PATH,656,4810.979,-96.13231,160.0142,0,0,0,0,100,0),
(@PATH,657,4807.979,-96.38231,158.7642,0,0,0,0,100,0),
(@PATH,658,4806.979,-96.63231,157.5142,0,0,0,0,100,0),
(@PATH,659,4805.979,-96.88231,155.7642,0,0,0,0,100,0),
(@PATH,660,4804.979,-97.13231,154.5142,0,0,0,0,100,0),
(@PATH,661,4804.229,-97.38231,153.5142,0,0,0,0,100,0),
(@PATH,662,4802.229,-97.88231,152.7642,0,0,0,0,100,0),
(@PATH,663,4799.229,-98.63231,151.2642,0,0,0,0,100,0),
(@PATH,664,4797.229,-99.13231,150.2642,0,0,0,0,100,0),
(@PATH,665,4795.479,-99.63231,149.5142,0,0,0,0,100,0),
(@PATH,666,4793.479,-100.1323,148.5142,0,0,0,0,100,0),
(@PATH,667,4791.729,-100.6323,147.7642,0,0,0,0,100,0),
(@PATH,668,4789.729,-100.8823,147.0142,0,0,0,0,100,0),
(@PATH,669,4786.979,-101.3823,146.2642,0,0,0,0,100,0),
(@PATH,670,4784.979,-101.8823,145.7642,0,0,0,0,100,0),
(@PATH,671,4781.979,-102.6323,145.0142,0,0,0,0,100,0),
(@PATH,672,4779.979,-103.1323,144.5142,0,0,0,0,100,0),
(@PATH,673,4777.229,-103.8823,143.7642,0,0,0,0,100,0),
(@PATH,674,4775.229,-104.3823,143.2642,0,0,0,0,100,0),
(@PATH,675,4779.875,-103.49,144.2818,0,0,0,0,100,0),
(@PATH,676,4776.875,-104.24,143.5318,0,0,0,0,100,0),
(@PATH,677,4774.875,-104.74,143.0318,0,0,0,0,100,0),
(@PATH,678,4771.125,-105.49,142.2818,0,0,0,0,100,0),
(@PATH,679,4767.125,-106.24,141.5318,0,0,0,0,100,0),
(@PATH,680,4765.125,-106.49,140.7818,0,0,0,0,100,0),
(@PATH,681,4762.125,-106.49,140.2818,0,0,0,0,100,0),
(@PATH,682,4759.375,-106.99,139.5318,0,0,0,0,100,0),
(@PATH,683,4757.375,-107.24,139.0318,0,0,0,0,100,0),
(@PATH,684,4753.625,-107.74,138.5318,0,0,0,0,100,0),
(@PATH,685,4750.625,-108.24,137.5318,0,0,0,0,100,0),
(@PATH,686,4747.625,-108.49,136.7818,0,0,0,0,100,0),
(@PATH,687,4744.625,-108.99,136.2818,0,0,0,0,100,0),
(@PATH,688,4742.625,-109.24,135.5318,0,0,0,0,100,0),
(@PATH,689,4739.625,-109.49,135.0318,0,0,0,0,100,0),
(@PATH,690,4742.248,-109.4313,135.3615,0,0,0,0,100,0),
(@PATH,691,4739.498,-109.9313,134.8615,0,0,0,0,100,0),
(@PATH,692,4738.998,-109.9313,134.6115,0,0,0,0,100,0),
(@PATH,693,4735.998,-110.4313,134.1115,0,0,0,0,100,0),
(@PATH,694,4733.998,-110.6813,133.3615,0,0,0,0,100,0),
(@PATH,695,4730.998,-111.1813,132.8615,0,0,0,0,100,0),
(@PATH,696,4728.998,-111.4313,132.1115,0,0,0,0,100,0),
(@PATH,697,4724.248,-112.1813,130.8615,0,0,0,0,100,0),
(@PATH,698,4723.498,-112.1813,128.6115,0,0,0,0,100,0),
(@PATH,699,4722.498,-112.4313,126.6115,0,0,0,0,100,0),
(@PATH,700,4721.498,-112.6813,125.1115,0,0,0,0,100,0),
(@PATH,701,4720.498,-112.6813,123.6115,0,0,0,0,100,0),
(@PATH,702,4719.498,-112.9313,122.6115,0,0,0,0,100,0),
(@PATH,703,4718.498,-113.1813,121.8615,0,0,0,0,100,0),
(@PATH,704,4717.498,-113.1813,121.1115,0,0,0,0,100,0),
(@PATH,705,4715.498,-113.4313,120.1115,0,0,0,0,100,0),
(@PATH,706,4713.498,-113.9313,119.3615,0,0,0,0,100,0),
(@PATH,707,4711.498,-114.1813,118.6115,0,0,0,0,100,0),
(@PATH,708,4709.498,-114.4313,117.8615,0,0,0,0,100,0),
(@PATH,709,4654.35,-121.904,105.083,0,0,0,0,100,0),
(@PATH,710,4649.321,-121.2758,104.7296,0,0,0,0,100,0),
(@PATH,711,4644.321,-120.7758,103.9796,0,0,0,0,100,0),
(@PATH,712,4629.571,-119.2758,104.9796,0,0,0,0,100,0),
(@PATH,713,4628.571,-119.2758,105.7296,0,0,0,0,100,0),
(@PATH,714,4627.571,-119.0258,106.7296,0,0,0,0,100,0),
(@PATH,715,4626.571,-119.0258,107.4796,0,0,0,0,100,0),
(@PATH,716,4625.571,-119.0258,108.2296,0,0,0,0,100,0),
(@PATH,717,4622.571,-118.7758,107.7296,0,0,0,0,100,0),
(@PATH,718,4620.821,-118.7758,106.4796,0,0,0,0,100,0),
(@PATH,719,4618.821,-118.5258,105.9796,0,0,0,0,100,0),
(@PATH,720,4616.821,-118.2758,105.2296,0,0,0,0,100,0),
(@PATH,721,4614.821,-118.2758,104.4796,0,0,0,0,100,0),
(@PATH,722,4611.821,-117.7758,103.9796,0,0,0,0,100,0),
(@PATH,723,4609.821,-117.7758,102.7296,0,0,0,0,100,0),
(@PATH,724,4607.821,-117.5258,101.9796,0,0,0,0,100,0),
(@PATH,725,4605.821,-117.2758,101.2296,0,0,0,0,100,0),
(@PATH,726,4603.821,-117.0258,100.4796,0,0,0,0,100,0),
(@PATH,727,4601.821,-117.0258,99.72955,0,0,0,0,100,0),
(@PATH,728,4599.821,-116.7758,99.47955,0,0,0,0,100,0),
(@PATH,729,4598.821,-116.7758,98.47955,0,0,0,0,100,0),
(@PATH,730,4596.821,-116.5258,97.72955,0,0,0,0,100,0),
(@PATH,731,4594.821,-116.2758,97.22955,0,0,0,0,100,0),
(@PATH,732,4592.821,-116.0258,96.47955,0,0,0,0,100,0),
(@PATH,733,4588.821,-115.7758,95.72955,0,0,0,0,100,0),
(@PATH,734,4594.681,-116.0849,96.89848,0,0,0,0,100,0),
(@PATH,735,4592.681,-115.8349,96.39848,0,0,0,0,100,0),
(@PATH,736,4588.681,-115.5849,95.39848,0,0,0,0,100,0),
(@PATH,737,4587.681,-115.3349,94.64848,0,0,0,0,100,0),
(@PATH,738,4586.931,-115.0849,93.64848,0,0,0,0,100,0),
(@PATH,739,4585.931,-115.0849,93.14848,0,0,0,0,100,0),
(@PATH,740,4584.931,-114.8349,92.64848,0,0,0,0,100,0),
(@PATH,741,4582.931,-114.3349,91.89848,0,0,0,0,100,0),
(@PATH,742,4581.931,-114.3349,91.14848,0,0,0,0,100,0),
(@PATH,743,4578.181,-113.5849,90.64848,0,0,0,0,100,0),
(@PATH,744,4563.431,-110.8349,89.89848,0,0,0,0,100,0),
(@PATH,745,4563.33,-110.5865,89.69603,0,0,0,0,100,0),
(@PATH,746,4562.58,-110.3365,89.44603,0,0,0,0,100,0),
(@PATH,747,4557.08,-108.3365,88.94603,0,0,0,0,100,0),
(@PATH,748,4553.33,-106.8365,88.44603,0,0,0,0,100,0),
(@PATH,749,4548.58,-105.0865,87.69603,0,0,0,0,100,0),
(@PATH,750,4542.33,-103.0865,87.19603,0,0,0,0,100,0),
(@PATH,751,4538.58,-101.5865,87.69603,0,0,0,0,100,0),
(@PATH,752,4532.08,-99.08654,87.19603,0,0,0,0,100,0),
(@PATH,753,4528.33,-97.83654,86.44603,0,0,0,0,100,0),
(@PATH,754,4524.58,-96.33654,85.94603,0,0,0,0,100,0),
(@PATH,755,4531.686,-98.95202,86.95757,0,0,0,0,100,0),
(@PATH,756,4527.936,-97.45202,86.20757,0,0,0,0,100,0),
(@PATH,757,4524.186,-96.20202,85.70757,0,0,0,0,100,0),
(@PATH,758,4522.686,-95.45202,85.45757,0,0,0,0,100,0),
(@PATH,759,4518.936,-93.95202,84.70757,0,0,0,0,100,0),
(@PATH,760,4516.186,-92.95202,83.95757,0,0,0,0,100,0),
(@PATH,761,4512.686,-91.70202,83.20757,0,0,0,0,100,0),
(@PATH,762,4508.936,-90.45202,82.95757,0,0,0,0,100,0),
(@PATH,763,4506.186,-89.20202,82.20757,0,0,0,0,100,0),
(@PATH,764,4503.436,-88.20202,81.70757,0,0,0,0,100,0),
(@PATH,765,4499.686,-86.70202,81.20757,0,0,0,0,100,0),
(@PATH,766,4496.686,-85.70202,80.45757,0,0,0,0,100,0),
(@PATH,767,4503.196,-88.03407,81.28053,0,0,0,0,100,0),
(@PATH,768,4499.446,-86.53407,80.78053,0,0,0,0,100,0),
(@PATH,769,4496.446,-85.53407,80.28053,0,0,0,0,100,0),
(@PATH,770,4493.196,-84.03407,79.78053,0,0,0,0,100,0),
(@PATH,771,4490.446,-82.78407,79.03053,0,0,0,0,100,0),
(@PATH,772,4486.946,-80.78407,78.53053,0,0,0,0,100,0),
(@PATH,773,4483.696,-79.03407,78.03053,0,0,0,0,100,0),
(@PATH,774,4480.446,-77.03407,77.53053,0,0,0,0,100,0),
(@PATH,775,4476.946,-75.28407,76.78053,0,0,0,0,100,0),
(@PATH,776,4474.196,-73.78407,76.28053,0,0,0,0,100,0),
(@PATH,777,4469.946,-71.28407,75.53053,0,0,0,0,100,0),
(@PATH,778,4469.636,-71.05446,75.28565,0,0,0,0,100,0),
(@PATH,779,4466.886,-69.55446,74.78565,0,0,0,0,100,0),
(@PATH,780,4462.636,-67.30446,74.28565,0,0,0,0,100,0),
(@PATH,781,4458.886,-65.30446,73.53565,0,0,0,0,100,0),
(@PATH,782,4454.636,-63.05446,73.03565,0,0,0,0,100,0),
(@PATH,783,4437.886,-54.55446,72.53565,0,0,0,0,100,0),
(@PATH,784,4435.386,-53.05446,72.03565,0,0,0,0,100,0),
(@PATH,785,4430.886,-50.80446,71.28565,0,0,0,0,100,0),
(@PATH,786,4428.136,-49.30446,70.53565,0,0,0,0,100,0),
(@PATH,787,4435.071,-52.68845,71.81055,0,0,0,0,100,0),
(@PATH,788,4430.571,-50.43845,71.06055,0,0,0,0,100,0),
(@PATH,789,4428.071,-49.18845,70.31055,0,0,0,0,100,0),
(@PATH,790,4427.571,-48.93845,70.31055,0,0,0,0,100,0),
(@PATH,791,4425.071,-47.18845,69.56055,0,0,0,0,100,0),
(@PATH,792,4422.821,-45.18845,69.06055,0,0,0,0,100,0),
(@PATH,793,4417.321,-41.18845,68.56055,0,0,0,0,100,0),
(@PATH,794,4411.821,-37.18845,67.81055,0,0,0,0,100,0),
(@PATH,795,4406.321,-32.93845,67.31055,0,0,0,0,100,0),
(@PATH,796,4402.037,-29.82576,66.68288,0,0,0,0,100,0),
(@PATH,797,4396.287,-25.82576,66.18288,0,0,0,0,100,0),
(@PATH,798,4390.037,-21.57576,65.68288,0,0,0,0,100,0),
(@PATH,799,4383.537,-17.07576,65.18288,0,0,0,0,100,0),
(@PATH,800,4377.183,-12.6132,64.68977,0,0,0,0,100,0),
(@PATH,801,4374.933,-10.6132,63.68977,0,0,0,0,100,0),
(@PATH,802,4374.183,-9.863197,62.93977,0,0,0,0,100,0),
(@PATH,803,4372.683,-8.613197,62.18977,0,0,0,0,100,0),
(@PATH,804,4371.933,-8.113197,61.68977,0,0,0,0,100,0),
(@PATH,805,4368.933,-5.363197,60.93977,0,0,0,0,100,0),
(@PATH,806,4361.433,0.8868032,61.68977,0,0,0,0,100,0),
(@PATH,807,4359.933,2.136803,62.43977,0,0,0,0,100,0),
(@PATH,808,4354.683,6.636803,61.93977,0,0,0,0,100,0),
(@PATH,809,4350.183,10.6368,61.43977,0,0,0,0,100,0),
(@PATH,810,4349.859,10.88503,61.13586,0,0,0,0,100,0),
(@PATH,811,4344.609,15.38503,60.38586,0,0,0,0,100,0),
(@PATH,812,4339.859,19.13503,59.88586,0,0,0,0,100,0),
(@PATH,813,4336.109,22.13503,59.13586,0,0,0,0,100,0),
(@PATH,814,4330.859,26.38503,58.88586,0,0,0,0,100,0),
(@PATH,815,4324.609,31.38503,58.38586,0,0,0,0,100,0),
(@PATH,816,4319.109,35.88503,57.63586,0,0,0,0,100,0),
(@PATH,817,4324.25,31.73278,57.89963,0,0,0,0,100,0),
(@PATH,818,4319,35.98278,57.39963,0,0,0,0,100,0),
(@PATH,819,4316.5,37.98278,57.14963,0,0,0,0,100,0),
(@PATH,820,4314,42.23278,56.39963,0,0,0,0,100,0),
(@PATH,821,4311.25,45.98278,55.64963,0,0,0,0,100,0),
(@PATH,822,4309,49.48278,55.14963,0,0,0,0,100,0),
(@PATH,823,4306.25,53.48278,54.64963,0,0,0,0,100,0),
(@PATH,824,4303.5,57.73278,53.89963,0,0,0,0,100,0),
(@PATH,825,4305.94,53.7986,54.33125,0,0,0,0,100,0),
(@PATH,826,4303.19,58.0486,53.58125,0,0,0,0,100,0),
(@PATH,827,4301.44,60.2986,53.33125,0,0,0,0,100,0),
(@PATH,828,4297.94,63.7986,52.83125,0,0,0,0,100,0),
(@PATH,829,4294.44,67.2986,52.08125,0,0,0,0,100,0),
(@PATH,830,4290.19,71.2986,51.58125,0,0,0,0,100,0),
(@PATH,831,4287.69,74.2986,50.83125,0,0,0,0,100,0),
(@PATH,832,4284.19,77.7986,50.33125,0,0,0,0,100,0),
(@PATH,833,4281.94,79.7986,49.58125,0,0,0,0,100,0),
(@PATH,834,4279.94,82.0486,49.08125,0,0,0,0,100,0),
(@PATH,835,4277.69,84.0486,47.33125,0,0,0,0,100,0),
(@PATH,836,4277.19,84.7986,45.83125,0,0,0,0,100,0),
(@PATH,837,4275.69,86.2986,45.08125,0,0,0,0,100,0),
(@PATH,838,4276.842,85.21431,45.47573,0,0,0,0,100,0),
(@PATH,839,4275.342,86.46431,44.72573,0,0,0,0,100,0),
(@PATH,840,4270.592,91.21431,43.97573,0,0,0,0,100,0),
(@PATH,841,4264.092,97.71431,43.22573,0,0,0,0,100,0),
(@PATH,842,4259.092,102.2143,42.72573,0,0,0,0,100,0),
(@PATH,843,4253.092,108.4643,43.47573,0,0,0,0,100,0),
(@PATH,844,4250.842,110.7143,44.22573,0,0,0,0,100,0),
(@PATH,845,4244.342,116.9643,43.47573,0,0,0,0,100,0),
(@PATH,846,4244.214,117.0388,43.13848,0,0,0,0,100,0),
(@PATH,847,4241.214,120.0388,42.63848,0,0,0,0,100,0),
(@PATH,848,4236.964,124.2888,41.88848,0,0,0,0,100,0),
(@PATH,849,4233.214,128.5388,41.38848,0,0,0,0,100,0),
(@PATH,850,4228.964,132.7888,41.13848,0,0,0,0,100,0),
(@PATH,851,4226.214,135.7888,40.38848,0,0,0,0,100,0),
(@PATH,852,4221.964,140.0388,39.88848,0,0,0,0,100,0),
(@PATH,853,4226.044,135.9142,40.22433,0,0,0,0,100,0),
(@PATH,854,4221.794,140.4142,39.47433,0,0,0,0,100,0),
(@PATH,855,4221.044,141.1642,39.72433,0,0,0,0,100,0),
(@PATH,856,4217.544,144.6642,37.72433,0,0,0,0,100,0),
(@PATH,857,4217.044,145.4142,36.97433,0,0,0,0,100,0),
(@PATH,858,4216.294,145.9142,36.22433,0,0,0,0,100,0),
(@PATH,859,4215.544,146.6642,35.72433,0,0,0,0,100,0),
(@PATH,860,4214.044,148.1642,34.97433,0,0,0,0,100,0),
(@PATH,861,4203.044,159.4142,35.72433,0,0,0,0,100,0),
(@PATH,862,4201.794,160.6642,36.72433,0,0,0,0,100,0),
(@PATH,863,4202.975,159.6724,35.65335,0,0,0,0,100,0),
(@PATH,864,4201.475,160.9224,36.65335,0,0,0,0,100,0),
(@PATH,865,4199.475,163.1724,36.40335,0,0,0,0,100,0),
(@PATH,866,4193.725,167.1724,35.65335,0,0,0,0,100,0),
(@PATH,867,4188.225,170.9224,35.15335,0,0,0,0,100,0),
(@PATH,868,4186.725,172.1724,34.15335,0,0,0,0,100,0),
(@PATH,869,4184.975,173.4224,33.90335,0,0,0,0,100,0),
(@PATH,870,4182.725,175.1724,33.15335,0,0,0,0,100,0),
(@PATH,871,4173.627,181.7326,32.9141,0,0,0,0,100,0),
(@PATH,872,4150.717,201.6091,32.68254,0,0,0,0,100,0),
(@PATH,873,4136.467,211.8591,31.93254,0,0,0,0,100,0),
(@PATH,874,4134.217,213.8591,31.18254,0,0,0,0,100,0),
(@PATH,875,4133.467,214.3591,30.68254,0,0,0,0,100,0),
(@PATH,876,4130.967,216.1091,29.68254,0,0,0,0,100,0),
(@PATH,877,4126.967,219.1091,30.18254,0,0,0,0,100,0),
(@PATH,878,4130.626,216.4117,29.37199,0,0,0,0,100,0),
(@PATH,879,4126.626,219.4117,30.12199,0,0,0,0,100,0),
(@PATH,880,4125.626,220.1617,30.37199,0,0,0,0,100,0),
(@PATH,881,4100.376,233.6617,29.87199,0,0,0,0,100,0),
(@PATH,882,4098.626,234.6617,28.37199,0,0,0,0,100,0),
(@PATH,883,4095.126,236.4117,27.62199,0,0,0,0,100,0),
(@PATH,884,4092.376,237.9117,29.62199,0,0,0,0,100,0),
(@PATH,885,4086.126,241.1617,29.12199,0,0,0,0,100,0),
(@PATH,886,4085.963,241.2927,29.05919,0,0,0,0,100,0),
(@PATH,887,4085.213,241.7927,28.80919,0,0,0,0,100,0),
(@PATH,888,4077.963,245.2927,28.30919,0,0,0,0,100,0),
(@PATH,889,4071.963,248.2927,27.55919,0,0,0,0,100,0),
(@PATH,890,4067.463,250.5427,27.05919,0,0,0,0,100,0),
(@PATH,891,4063.963,252.2927,26.55919,0,0,0,0,100,0),
(@PATH,892,4059.463,254.5427,25.80919,0,0,0,0,100,0),
(@PATH,893,4063.641,252.6666,26.29952,0,0,0,0,100,0),
(@PATH,894,4059.141,254.6666,25.54952,0,0,0,0,100,0),
(@PATH,895,4055.641,256.6666,25.04952,0,0,0,0,100,0),
(@PATH,896,4049.641,257.6666,24.29952,0,0,0,0,100,0),
(@PATH,897,4044.141,259.1666,24.04952,0,0,0,0,100,0),
(@PATH,898,4038.391,260.4166,23.29952,0,0,0,0,100,0),
(@PATH,899,4032.391,261.9166,22.79952,0,0,0,0,100,0),
(@PATH,900,4037.974,260.678,23.14158,0,0,0,0,100,0),
(@PATH,901,4032.224,262.178,22.64158,0,0,0,0,100,0),
(@PATH,902,4027.474,263.178,22.14158,0,0,0,0,100,0),
(@PATH,903,4024.724,264.178,21.64158,0,0,0,0,100,0),
(@PATH,904,4023.724,264.678,21.14158,0,0,0,0,100,0),
(@PATH,905,4022.724,264.928,20.39158,0,0,0,0,100,0),
(@PATH,906,4021.724,265.178,19.89158,0,0,0,0,100,0);

-- Missing Emotes for Crystalline Ice Giant in Dragonblight
-- Crystalline Ice Giant SAI 1
SET @GUID := -112879;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 2
SET @GUID := -112860;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 3
SET @GUID := -112853; 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 4
SET @GUID := -112858;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 5
SET @GUID := -112874;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 6
SET @GUID := -112848; 
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Crystalline Ice Giant SAI 7
SET @GUID := -112854;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=26291;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@GUID AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@GUID,0,0,0,1,0,100,0,3000,5000,3000,5000,11,50298,0,0,0,0,0,19,26358,200,0,0,0,0,0,"Crystalline Ice Giant - Out of Combat - Cast 'Boulder Miss'");

-- Smoldering Skeleton Visual
DELETE FROM `creature_template_addon` WHERE `entry` IN (27360, 27356);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(27360, 0, 0x0, 0x1, '48454 51437'); -- 27360 - 48454, 51437

-- Wastes Digger SAI
SET @ENTRY := 26492;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=2;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,2,0,1,0,100,0,2000,2000,2000,2000,5,35,0,0,0,0,0,1,0,0,0,0,0,0,0,"Wastes Digger - Out of Combat - Play Emote 35");

UPDATE `spell_dbc` SET `AttributesEx3`=`AttributesEx3`|0x00020000 WHERE `Id`=35009;

-- Deathless Watcher SAI
SET @ENTRY := 24013;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,25,0,100,0,0,0,0,0,90,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathless Watcher - On Reset - Set Flag Standstate Submerged"),
(@ENTRY,0,1,0,4,0,100,0,0,0,0,0,91,9,0,0,0,0,0,1,0,0,0,0,0,0,0,"Deathless Watcher - On Aggro - Remove Flag Standstate Submerged");
UPDATE `creature` SET `spawndist`=0, `MovementType`=0 WHERE `id`=24013;

-- Bloodpaw Warrior SAI
SET @ENTRY := 27342;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0 AND `id`=1;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,1,0,1,0,100,0,2000,4000,55000,65000,75,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodpaw Warrior - Out of Combat - Add Aura 'Bloodlust'");

-- Bloodpaw Marauder SAI
SET @ENTRY := 27340;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,0,0,0,1,0,100,0,2000,4000,55000,65000,75,6742,0,0,0,0,0,1,0,0,0,0,0,0,0,"Bloodpaw Marauder - Out of Combat - Add Aura 'Bloodlust'");

SET @JOVAAN := 21633; -- Deathbringer Jovaan
SET @TRIGGER := 4548; -- Smart Trigger
SET @DEVICE := 184833;-- Legion Communication Device
SET @GO_INFERNAL := 184834;-- Gobject that needs to be despawned during the script
SET @GO_INFERNAL2 := 184835;-- Gobject that needs to be despawned during the script
SET @EVENTID := 13852; -- From spell_dbc id 37492

DELETE FROM event_scripts WHERE id =@EVENTID;
INSERT INTO event_scripts (id, command, datalong, datalong2, x, y, z, o) VALUES
(@EVENTID, 10, @JOVAAN, 57000, -3310.995, 2951.892, 171.2171, 5.5355);

DELETE FROM areatrigger_scripts WHERE entry=@TRIGGER;
DELETE FROM smart_scripts WHERE entryorguid=@TRIGGER AND source_type=2;

UPDATE gameobject_template SET AIName ='' WHERE entry =@DEVICE;
DELETE FROM smart_scripts WHERE source_type=1 AND entryorguid =@DEVICE;

DELETE FROM smart_scripts WHERE entryorguid=@JOVAAN AND source_type=0;
INSERT INTO smart_scripts (entryorguid, source_type, id, link, event_type, event_phase_mask, event_chance, event_flags, event_param1, event_param2, event_param3, event_param4, action_type, action_param1, action_param2, action_param3, action_param4, action_param5, action_param6, target_type, target_param1, target_param2, target_param3, target_x, target_y, target_z, target_o, comment) VALUES
(@JOVAAN,0,0,1,11,0,100,0,0,0,0,0,11,34427,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Spellcast Etheral Teleport'),
(@JOVAAN,0,1,2,61,0,100,0,0,0,0,0,45,0,1,0,0,0,0,14,25737,@GO_INFERNAL,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Set Data GO'),
(@JOVAAN,0,2,3,61,0,100,0,0,0,0,0,45,0,2,0,0,0,0,14,25738,@GO_INFERNAL2,0,0,0,0,0,'Deathbringer Jovaan - Just summoned Set Data GO'),
(@JOVAAN,0,3,0,61,0,100,0,0,0,0,0,53,0,@JOVAAN,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - Just summoned - Start WP movement'),
(@JOVAAN,0,4,5,40,0,100,0,4,@JOVAAN,0,0,54,45000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Pause 45 seconds'),
(@JOVAAN,0,5,0,61,0,100,0,0,0,0,0,80,@JOVAAN*100,2,0,0,0,0,1,0,0,0,0,0,0,0,'Deathbringer Jovaan - On WP 4 reached - Run Script');

-- The Nightmare Manifests/Hope Within the Emerald Nightmare/The Boon of Remulos/Walking Legend
SET @TYRANDE        := 15633;
SET @ERANIKUS       := 15491;
SET @REMULOS        := 11832;
SET @MALFURION      := 17949;
SET @PHANTASM       := 15629;
SET @E_REDEEM       := 15628;

DELETE FROM `creature_ai_scripts` WHERE creature_id=@ERANIKUS;
-- Tyrande
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `flags_extra`=0, `type_flags`=0, `unit_flags`=32768, `faction_H`=1254, `faction_A`=1254 WHERE `entry`=@TYRANDE;
-- Eranikus, Tyrant of the Dream
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `InhabitType`=7, `faction_A`=35, `faction_H`=35, `unit_flags`=0, `flags_extra`=2097152, `type_flags`=8, `dynamicflags`=128, `speed_walk`=2 WHERE `entry`=@ERANIKUS;
-- Keeper Remulos
UPDATE `creature_template` SET `AIName`='SmartAI', `ScriptName`='', `speed_walk`=2.5, `speed_run`=3.75, `type_flags`=0, `unit_flags`=32768, `faction_H`=1254, `faction_A`=1254 WHERE `entry`=@REMULOS;
-- Malfurion
UPDATE `creature_template` SET `InhabitType`=4,`AIName`='SmartAI',`ScriptName`='' WHERE `entry`=@MALFURION;
-- Not sure if these are set on stock DB, but I'll still add them just in case.
UPDATE `creature_template` SET `IconName`='Interact', `npcflag`=16777216 WHERE `entry` IN (32788,32790);
-- Wrong gameobject, no idea who spawned it there.
DELETE FROM `gameobject` WHERE  `guid`=99849;

-- NPC texts
DELETE FROM `creature_text` WHERE entry IN (@REMULOS,@ERANIKUS,@PHANTASM,@TYRANDE,@E_REDEEM,@MALFURION);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@REMULOS,0,0,'We will locate the origin of the Nightmare through the fragments you collected, $n. From there, we will pull Eranikus through a rift in the Dream. Steel yourself, $c. We are inviting the embodiment of the Nightmare into our world.',12,0,100,0,0,0,'Keeper Remulos Say 0'),
(@REMULOS,1,1,'The rift will be opened there, above the Lake Elun''ara. Prepare yourself, $n. Eranikus''s entry into our world will be wrought with chaos and strife.',12,0,100,0,0,0,'Keeper Remulos Say 1'),
(@REMULOS,2,2,'He will stop at nothing to get to Malfurion''s physical manifistation. That must not happen... We must keep the beast occupied long enough for Tyrande to arrive.',12,0,100,0,0,0,'Keeper Remulos Say 2'),
(@REMULOS,3,3,'Defend Nighthaven, hero...',12,0,100,0,0,0,'Keeper Remulos Say 3'),
(@REMULOS,4,4,'Fiend! Face the might of Cenarius!',14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,5,5,'Who is the predictable one, beast? Surely you did not think that we would summon you on top of Malfurion? Your redemption comes, Eranikus. You will be cleansed of this madness - this corruption.',14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,6,6,'Hurry, $N! We must find protective cover!',12,0,100,0,0,0,'Keeper Remulos Say 6'),
(@REMULOS,7,7,'Please, champion, protect our people.',12,0,100,0,0,0,'Keeper Remulos Say 7'),
(@REMULOS,8,8,'It will be done, Eranikus. Be well, ancient one.',12,0,100,0,0,0,'Keeper Remulos Say 8'),
(@REMULOS,9,9,'Let us leave Nighthaven, hero Seek me out at the grove.',12,0,100,0,0,0,'Keeper Remulos Say 9'),
--
(@REMULOS,10,10,'Come, $N. The lake is around the bend.',12,0,100,1,0,0,'Keeper Remulos - say Text 0'),
(@REMULOS,11,11,'Stand near me, $N. I will protect you should anything go wrong.',12,0,100,1,0,0,'Keeper Remulos - say Text 1'),
(@REMULOS,12,12,'Malfurion!',12,0,100,5,0,0,'Keeper Remulos - say Text 2'),
(@REMULOS,13,13,'It was shrouded in nightmares, Malfurion. What is happening in the Dream? What could cause such atrocities?',12,0,100,6,0,0,'Keeper Remulos - say Text 3'),
(@REMULOS,14,14,'I sensed as much, Malfurion. Dark days loom ahead.',12,0,100,1,0,0,'Keeper Remulos - say Text 4'),
(@REMULOS,15,15,'You have been gone too long, Malfurion. Peace between the Children of Azeroth has become tenuous at best. What of my father? Of your brother? Have you any news?',12,0,100,6,0,0,'Keeper Remulos - say Text 5'),
(@REMULOS,16,16,'Farewell, old friend... Farewell...',12,0,100,1,0,0,'Keeper Remulos - say Text 6'),
(@REMULOS,17,17,'Let us return to the grove, mortal.',12,0,100,1,0,0,'Keeper Remulos - say Text 7'),
--
(@ERANIKUS,0,0,'Pitful predictable mortals... You know not what you have done! The master''s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!',14,0,100,0,0,0,'Eranikus Say 0'),
(@ERANIKUS,1,1,'Eranikus, Tyrant of the Dream lets loose a sinister laugh.',16,0,100,0,0,0,'Eranikus Say 1'),
(@ERANIKUS,2,2,'You are certanly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan''do Stormrage over to me and your pitiful life will be spared along with the lives of your people.',14,0,100,0,0,0,'Eranikus Say 2'),
(@ERANIKUS,3,3,'My redemption? You are bold, little one. My redemption comes by the will of my god.',14,0,100,0,0,0,'Eranikus Say 3'),
(@ERANIKUS,4,4,'Eranikus, Tyrant of the Dream roars furiously',16,0,100,0,0,0,'Eranikus Say 4'),
(@ERANIKUS,5,5,'Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...',14,0,100,0,0,0,'Eranikus Say 5'),
(@ERANIKUS,6,6,'Where is your savior? How long can you hold out against my attacks?',14,0,100,0,0,0,'Eranikus Say 6'),
(@ERANIKUS,7,7,'Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...',14,0,100,0,0,0,'Eranikus Say 7'),
(@ERANIKUS,8,8,'Defeated my minions? Then face me, mortals!',14,0,100,0,0,0,'Eranikus Say 8'),
(@ERANIKUS,9,9,'IT BURNS! THE PAIN.. SEARING...',14,0,100,0,0,0,'Eranikus Say 9'),
(@ERANIKUS,10,10,'WHY? Why did this happen to... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?',14,0,100,0,0,0,'Eranikus Say 10'),
(@ERANIKUS,11,11,'I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...',14,0,100,0,0,0,'Eranikus Say 11'),
(@ERANIKUS,12,12,'Tyrande falls to one knee.',16,0,100,0,0,0,'Eranikus Say 12'),
--
(@TYRANDE,0,0,'Seek absolution, Eranikus. All will be forgiven..',14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,1,1,'You will be forgiven, Eranikus. Elune will always love you. Break free of the bonds that command you!',14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,2,2,'The grasp of the Old Gods is unmoving. He is consumed by their dark thoughts... I... I... I cannot... cannot channel much longer... Elune aide me.',12,0,100,0,0,0,'Tyrande Say 0'),
--
(@E_REDEEM,0,0,'For so long, I was lost... The Nightmare''s corruption had consumed me... And now, you... all of you.. you have saved me. Released me from its grasp.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,1,1,'But... Malfurion, Cenarius, Ysera... They still fight. They need me. I must return to the Dream at once.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,2,2,'My lady, I am unworthy of your prayer. Truly, you are an angel of light. Please, assist me in returning to the barrow den so that I may return to the Dream. I like Malfurion, also have a love awaiting me... I must return to her... to protect her...',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,3,3,'And heroes... I hold that which you seek. May it once more see the evil dissolved. Remulos, see to it that our champion receives the shard of the Green Flight.',12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
--
(@PHANTASM,0,0,'Nightmare Phantasm drinks in the suffering of the fallen.',16,0,100,0,0,0,'Nightmare Phantasm Say 0'),
--
(@MALFURION,0,0,'Remulos, old friend. It is good to see you once more. I knew the message would find its way to you; one way or another.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 0'),
(@MALFURION,1,0,'I fear for the worst, old friend. Within the Dream we fight a new foe, born of an ancient evil. Ysera''s noble brood has fallen victim to the old whisperings. It seems as if the Nightmare has broken through the realm to find a new host on Azeroth.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 1'),
(@MALFURION,2,0,'Aye Remulos, prepare the mortal races.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 2'),
(@MALFURION,3,0,'Cenarius fights at my side. Illidan sits atop his throne in Outland; brooding. I''m afraid that the loss to Arthas proved to be his breaking point. Madness has embraced him, Remulos. He replays the events in his mind a thousand times per day, but in his mind, he is the victor and Arthas is utterly defeated. He is too far gone, old friend. I fear that the time may soon come that our bond is tested and it will not be as it was at the Well in Zin-Azshari.',12,0,100,1,0,0,'Malfurion Stormrage - say Text 3'),
(@MALFURION,4,0,'Remulos, I am being drawn back... Tyrande... send her my love... Tell her I am safe... Tell her... Tell her I will return... Farewell...',12,0,100,1,0,0,'Malfurion Stormrage - say Text 4');


-- Remulos SAI
DELETE FROM `smart_scripts` WHERE `source_type`IN (0,9) AND `entryorguid` IN (@REMULOS,@REMULOS*100,@REMULOS*100+1,@REMULOS*100+2);
DELETE FROM `smart_scripts` WHERE `source_type`=0 AND `entryorguid` = @MALFURION;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- Quests: Hope Within the Emerald Nightmare & The Boon of Remulos
(@REMULOS,0,0,0,62,0,100,0,10215,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,1,2,62,0,100,0,10215,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,2,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - Close gossip'),
(@REMULOS,0,3,0,19,0,100,0,13074,0,0,0,11,57413,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On Quest Accept - Cast Fitful Dream'),
-- The Nightmare Manifests
(@REMULOS,0,4,0,19,0,100,1,8736,0,0,0,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Say 0'),
(@REMULOS,0,5,0,52,0,100,0,0,@REMULOS,0,0,53,0,@REMULOS,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 0 - Start WayPoint'),
(@REMULOS,0,6,0,52,0,100,0,0,@REMULOS,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Remove Npcflag'),
(@REMULOS,0,7,0,40,0,100,0,13,@REMULOS,0,0,54,95000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Pause WP'),
(@REMULOS,0,8,0,40,0,100,0,13,@REMULOS,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Say 1'),
(@REMULOS,0,9,0,52,0,100,0,1,@REMULOS,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 1 - Say 2'),
(@REMULOS,0,10,0,52,0,100,0,2,@REMULOS,0,0,11,25813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Cast Conjure Dream Rift'),
(@REMULOS,0,11,0,52,0,100,0,2,@REMULOS,0,0,12,@ERANIKUS,3,3600000,0,0,0,8,0,0,0,7872.5888, -2664.55888, 497.139282,0.63583,'Keeper Remulos - On Say 3 - Summon Eranikus'),
(@REMULOS,0,12,0,52,0,100,0,2,@REMULOS,0,0,1,3,23000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 2 - Say 3'),
(@REMULOS,0,13,0,52,0,100,0,3,@REMULOS,0,0,1,4,31000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Say 4'),
(@REMULOS,0,14,0,52,0,100,0,4,@REMULOS,0,0,1,5,22000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 4 - Say 5'),
(@REMULOS,0,15,0,52,0,100,0,5,@REMULOS,0,0,1,6,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 5 - Say 6'),
(@REMULOS,0,16,0,40,0,100,0,20,@REMULOS,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Pause WP'),
(@REMULOS,0,17,0,40,0,100,0,20,@REMULOS,0,0,1,7,20000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Say 7'),
(@REMULOS,0,18,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7829.066,-2562.347,489.299,5.234,'Keeper Remulos - On Say 7 - Summon Nightmare Phantasm'),
(@REMULOS,0,19,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7828.889,-2580.694,489.299,0.753,'Keeper Remulos - On Say 7 -Summon Nightmare Phantasm'),
(@REMULOS,0,20,0,52,0,100,0,7,@REMULOS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Set react state aggresive'),
(@REMULOS,0,21,0,52,0,100,0,7,@REMULOS,0,0,49,0,0,0,0,0,0,19,@PHANTASM,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Attack'),
(@REMULOS,0,22,0,0,0,100,0,7000,14000,6000,12000,11,20665,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,23,0,0,0,100,0,26000,52000,34000,46000,11,20664,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,24,0,0,0,100,0,25000,25000,25000,50000,11,23381,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Healing Touch'),
(@REMULOS,0,25,0,0,0,100,0,10000,40000,40000,40000,11,25817,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Tranquility'),
(@REMULOS,0,26,0,0,0,100,0,16000,21000,19000,25000,11,21668,0,0,0,0,0,2,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Starfall'),
(@REMULOS,0,27,0,38,0,100,0,1,1,0,0,1,8,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Data Set - Say 8'),
(@REMULOS,0,28,0,52,0,100,0,8,@REMULOS,0,0,1,9,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Said 8 8 - Say 9'),
(@REMULOS,0,29,0,40,0,100,1,21,@REMULOS,0,0,49,0,0,0,0,0,0,11,@ERANIKUS,30,0,0,0,0,0,'Keeper Remulos - On Waypoint Reached - Attack Eranikus'),
(@REMULOS,0,30,0,6,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Keeper Remulos - On Death - Fail Quest'),
(@REMULOS,0,31,0,40,0,100,1,23,@REMULOS,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Pause WP'),
(@REMULOS,0,32,0,40,0,100,1,23,@REMULOS,0,0,66,2.835,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Set Orientation'),
(@REMULOS,0,33,0,52,0,100,0,9,@REMULOS,0,0,53,1,@REMULOS*100+1,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Said 9 - Go Home'),
(@REMULOS,0,34,0,40,0,100,0,12,@REMULOS*100+1,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Npcflags'),
(@REMULOS,0,35,0,40,0,100,0,12,@REMULOS*100+1,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Orientation'),
(@REMULOS,0,36,0,40,0,100,0,24,@REMULOS,0,0,80,@REMULOS*100+1,0,1,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 24 - Run Script only when OOC'),
-- Quest: Waking Legends
(@REMULOS,0,37,38,19,0,100,0,8447,0,0,0,81,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - Turn off Quest Giver & Gossip Flag'),
(@REMULOS,0,38,39,61,0,100,0,0,0,0,0,53,0,@REMULOS*100,0,8447,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - start WP'),
(@REMULOS,0,39,0,61,0,100,0,0,0,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - on Quest Accept - say Text 10'),
(@REMULOS,0,40,41,40,0,100,0,5,@REMULOS*100,0,0,54,83000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 5 - pause WP'),
(@REMULOS,0,41,42,61,0,100,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,3.12180,'Keeper Remulos - reached WP5 - set orientation'),
(@REMULOS,0,42,0,61,0,100,0,0,0,0,0,80,@REMULOS*100+2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 5 - run Script'),
(@REMULOS,0,43,0,40,0,100,0,10,@REMULOS*100,0,0,81,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 10 - Turn on Quest Giver & Gossip Flag'),
(@REMULOS,0,44,0,40,0,100,0,10,@REMULOS*100,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - reached WP 10 - set orientation'),
-- Script
(@REMULOS*100+2,9,0,0,0,0,100,0,2000,2000,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 1'),
(@REMULOS*100+2,9,1,0,0,0,100,0,3000,3000,0,0,11,25004,1,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Cast Spell: Throw Nightmare Object to Position'),
(@REMULOS*100+2,9,2,0,0,0,100,0,5000,5000,0,0,12,@MALFURION,8,0,0,0,0,8,0,0,0,7730.5288,-2318.8596,453.8706,6.14985,'Keeper Remulos - Summon Malfurion Stormrage'),
(@REMULOS*100+2,9,3,0,0,0,100,0,2000,2000,0,0,1,12,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 12'),
(@REMULOS*100+2,9,4,0,0,0,100,0,3000,3000,0,0,1,0,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 0'),
(@REMULOS*100+2,9,5,0,0,0,100,0,6000,6000,0,0,1,13,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 13'),
(@REMULOS*100+2,9,6,0,0,0,100,0,7000,7000,0,0,1,1,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 1'),
(@REMULOS*100+2,9,7,0,0,0,100,0,11000,11000,0,0,1,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 14'),
(@REMULOS*100+2,9,8,0,0,0,100,0,3500,3500,0,0,1,2,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 2'),
(@REMULOS*100+2,9,9,0,0,0,100,0,4000,4000,0,0,1,15,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 15'),
(@REMULOS*100+2,9,10,0,0,0,100,0,9000,9000,0,0,1,3,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 3'),
(@REMULOS*100+2,9,11,0,0,0,100,0,19000,19000,0,0,1,4,0,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Malfurion Stormrage - Say Text 4'),
(@REMULOS*100+2,9,12,0,0,0,100,0,6000,6000,0,0,1,16,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 16'),
(@REMULOS*100+2,9,13,0,0,0,100,0,2000,2000,0,0,1,17,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Say Text 17'),
(@REMULOS*100+2,9,14,0,0,0,100,0,0,0,0,0,15,8447,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - Give Quest Credit'),
(@REMULOS*100+2,9,15,0,0,0,100,0,1000,1000,0,0,45,0,1,0,0,0,0,9,@MALFURION,0,30,0,0,0,0,'Keeper Remulos - Set data 0 1 to Malfurion Stormrage'),
 --
(@MALFURION,0,0,0,54,0,100,0,0,0,0,0,11,52096,2,0,0,0,0,1,0,0,0,0,0,0,0,'Malfurion Stormrage - On summon - Cast Cosmetic Teleport Effect on self'),
(@MALFURION,0,1,0,38,0,100,0,0,1,0,0,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Malfurion Stormrage - On data set 0 1 - Despawn'),
 --
(@REMULOS*100+1,9,0,0,1,0,100,1,60000,60000,0,0,53,0,@REMULOS*100+1,0,8736,0,0,1,0,0,0,0,0,0,0,'On Script - OOC 1 Mintues - Go Home');

-- Eranikus, Tyrant of the Dream SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@ERANIKUS,@ERANIKUS*100,@ERANIKUS*100+1);
INSERT INTO `smart_scripts` VALUES
(@ERANIKUS,0,0,0,1,0,100,1,13000,13000,13000,13000,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - OOC 13 Sec - Say 0'),
(@ERANIKUS,0,1,0,52,0,100,0,0,@ERANIKUS,0,0,1,1,6000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 0 - Say 1'),
(@ERANIKUS,0,2,0,52,0,100,0,1,@ERANIKUS,0,0,1,2,34000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 1 - Say 2'),
(@ERANIKUS,0,3,0,52,0,100,0,2,@ERANIKUS,0,0,1,3,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Say 3'),
(@ERANIKUS,0,4,0,52,0,100,0,3,@ERANIKUS,0,0,1,4,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 3 - Say 4'),
(@ERANIKUS,0,5,0,52,0,100,0,4,@ERANIKUS,0,0,53,0,@ERANIKUS,0,8736,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 4 - Start WayPoint'),
(@ERANIKUS,0,6,0,40,0,100,0,3,@ERANIKUS,0,0,54,130000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Pause'),
(@ERANIKUS,0,7,0,40,0,100,0,3,@ERANIKUS,0,0,1,5,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On WayPoint 3 - Say 5'),
(@ERANIKUS,0,8,0,52,0,100,0,5,@ERANIKUS,0,0,80,@ERANIKUS*100,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus -  On Say 5 - Start Script'),
(@ERANIKUS*100,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100,9,16,0,0,0,100,0,1000,1000,0,0,1,6,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 6'),
(@ERANIKUS,0,9,0,52,0,100,0,6,@ERANIKUS,0,0,80,@ERANIKUS*100+1,0,2,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 6 - Start Script'),
(@ERANIKUS*100+1,9,0,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,1,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,2,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,3,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,4,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,5,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,6,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,7,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,8,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,9,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,10,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,11,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,12,0,0,0,100,0,5000,5000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7865.966,-2554.104,486.967,5.492,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,13,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7873.412,-2587.454,486.946,0.924,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,14,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7901.544,-2581.989,487.178,2.059,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,15,0,0,0,100,0,1000,1000,0,0,12,@PHANTASM,3,600000,0,0,0,8,0,0,0,7918.844,-2553.987,486.911,3.772,'Eranikus - On Script - Summon Nightmare Phantasm'),
(@ERANIKUS*100+1,9,16,0,0,0,100,0,1000,1000,0,0,1,7,33000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 7'),
(@ERANIKUS,0,10,0,40,0,100,0,4,@ERANIKUS,0,0,2,14,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 reached - Set faction enemy'),
(@ERANIKUS,0,38,0,40,0,100,0,4,@ERANIKUS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Waypont 4 - Set react state aggresive'),
(@ERANIKUS,0,11,0,2,0,100,0,30,65,12000,35000,12,@PHANTASM,3,600000,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - In Combat - Summon Nightmare Phantasm'),
(@ERANIKUS,0,12,0,4,1,100,0,0,0,0,0,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Say 8'),
(@ERANIKUS,0,13,0,4,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On aggro - Set react state aggresive'),  
(@ERANIKUS,0,14,0,4,0,100,0,0,0,0,0,49,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Eranikus - On aggro - Start Attack'),
(@ERANIKUS,0,15,0,0,0,100,0,2000,4000,55000,60000,11,24818,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Noxious Breath'),
(@ERANIKUS,0,16,0,0,0,100,0,9000,14000,50000,55000,11,24839,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Acid Spit'),
(@ERANIKUS,0,17,0,0,0,100,0,10000,20000,15000,25000,11,22878,0,0,0,0,0,2,0,0,0,0,0,0,0,'Eranikus - In Combat - Cast Shadow Bolt Volley'),
(@ERANIKUS,0,18,0,2,0,100,1,0,70,0,0,12,@TYRANDE,3,3600000,0,0,0,8,0,0,0,7900.216,-2572.621,488.176,2.330,'Eranikus - At 70% - Summon Tyrande'),
(@ERANIKUS,0,34,0,2,0,100,1,0,69,0,0,1,0,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 69% - Tyrande Say 0'),
(@ERANIKUS,0,35,0,2,0,100,1,0,30,0,0,1,1,0,0,0,0,0,11,@TYRANDE,30,0,0,0,0,0,'Eranikus - At 30% - Tyrande Say 1'),
(@ERANIKUS,0,19,0,2,0,100,1,0,25,0,0,1,9,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 25% - Say 9'),
(@ERANIKUS,0,20,0,2,0,100,1,0,22,0,0,1,10,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 22% - Say 10'),
(@ERANIKUS,0,21,0,2,0,100,1,0,20,0,0,1,11,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - At 20% - Say 11'),
(@ERANIKUS,0,22,0,52,0,100,0,11,@ERANIKUS,0,0,2,35,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set faction friendly'),
(@ERANIKUS,0,23,0,52,0,100,0,11,@ERANIKUS,0,0,8,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set react state passive'),
(@ERANIKUS,0,24,0,52,0,100,0,11,@ERANIKUS,0,0,18,33555200,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Set unit flags'),
(@ERANIKUS,0,25,0,52,0,100,0,11,@ERANIKUS,0,0,20,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Say 2 - Stop AutoAttack'),
(@ERANIKUS,0,26,0,52,0,100,0,11,@ERANIKUS,0,0,1,12,3000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 11 - Say 12'),
(@ERANIKUS,0,27,0,52,0,100,0,12,@ERANIKUS,0,0,12,@E_REDEEM,3,60000,0,0,0,8,0,0,0,7904.248,-2564.867,488.156,5.116,'Eranikus - On Say 12 - Summon Eranikus the Redeemed'),  
(@ERANIKUS,0,28,0,52,0,100,0,12,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - Say 12 - Kill'),
(@ERANIKUS,0,31,0,7,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On Evade - Quest Fail'),
(@ERANIKUS,0,32,0,6,0,100,0,0,0,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Death - Set invisibility'),
(@ERANIKUS,0,33,0,40,0,100,0,5,@ERANIKUS,0,0,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Set invisibility'),
(@ERANIKUS,0,36,0,40,0,100,0,5,@ERANIKUS,0,0,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus  - On WayPoint 5 - Die'),
(@ERANIKUS,0,37,0,40,0,100,0,5,@ERANIKUS,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Eranikus - On WayPoint 5 - Quest Fail');

-- Tyrande SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN (@TYRANDE);
INSERT INTO `smart_scripts` VALUES
(@TYRANDE,0,0,0,54,0,100,1,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - On Summon - Set react state aggresive'),
(@TYRANDE,0,1,0,1,0,100,1,95000,95000,95000,95000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 60 Sec - Set invisibility'),
(@TYRANDE,0,2,0,1,0,100,1,96000,96000,96000,96000,37,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tyrande - OOC 61 Sec - Kill'),
(@TYRANDE,0,3,0,0,0,100,0,1000,2000,2300,2500,11,21668,0,0,0,0,0,11,@ERANIKUS,20,0,0,0,0,0,'Tyrande - In Combat - Cast Starfall');

-- Eranikus the Redeemed SAI
UPDATE `creature_template` SET AIName='SmartAI', modelid1=6984 WHERE entry=@E_REDEEM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@E_REDEEM);
INSERT INTO `smart_scripts` VALUES
(@E_REDEEM,0,0,0,1,0,100,1,7000,7000,7000,7000,1,0,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - OOC 7 Secs - Say 0'),
(@E_REDEEM,0,1,0,52,0,100,0,0,@E_REDEEM,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 0 - Say 1'),
(@E_REDEEM,0,2,0,52,0,100,0,1,@E_REDEEM,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 1 - Say 2'),
(@E_REDEEM,0,3,0,52,0,100,0,2,@E_REDEEM,0,0,1,3,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 2 - Say 3'),
(@E_REDEEM,0,5,0,52,0,100,0,3,@E_REDEEM,0,0,15,8736,0,0,0,0,0,18,30,0,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Credit'),
(@E_REDEEM,0,6,0,52,0,100,0,3,@E_REDEEM,0,0,45,1,1,0,0,0,0,11,@REMULOS,40,0,0,0,0,0,'Eranikus the Redeemed - On Say 3 - Set Data');

UPDATE `creature_template` SET AIName='SmartAI', Faction_A=14, Faction_H=14 WHERE entry=@PHANTASM;
DELETE FROM `smart_scripts` WHERE entryorguid IN(@PHANTASM);
INSERT INTO `smart_scripts` VALUES
(@PHANTASM,0,0,0,54,0,100,0,0,0,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Start WayPoint'),
(@PHANTASM,0,1,0,54,0,100,0,0,0,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Aggresive'),
(@PHANTASM,0,2,0,54,0,100,0,0,0,0,0,49,0,0,0,0,0,0,18,50,0,0,0,0,0,0,'Nightmare Phantasm - Summon - Attack Player'),
(@PHANTASM,0,3,0,6,0,75,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - Death - Say 0'),
(@PHANTASM,0,4,0,40,0,100,0,4,@PHANTASM,0,0,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - WayPoint 20 - Start Again'),
(@PHANTASM,0,5,0,1,0,100,1,60000,60000,60000,60000,47,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 60 Secs - Unseen'),
(@PHANTASM,0,6,0,1,0,100,1,63000,63000,63000,63000,41,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 63 Secs - Despawn'),
(@PHANTASM,0,7,0,1,0,100,1,5000,5000,5000,5000,53,1,@PHANTASM,0,8736,0,0,1,0,0,0,0,0,0,0,'Nightmare Phantasm - OOC 5 Secs - Start WayPoint');

DELETE FROM `creature_template_addon` WHERE `entry`=@MALFURION;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@MALFURION,0,0,33554432,0,0,'24999'); -- Malfurion's Shade Aura & Hover Mode

DELETE FROM `creature_template_addon` WHERE `entry`=@ERANIKUS;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(@ERANIKUS,0,0,33554432,0,0,'');

DELETE FROM `spell_target_position` WHERE `id`=25004;
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(25004,1,7730.5288,-2318.8596,451.34,0);

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS,1,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS,2,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS,3,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS,4,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS,5,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS,7,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS,8,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS,9,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS,10,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS,11,7950.945801,-2597.000000,489.765564,'Keeper Remulos'),
(@REMULOS,12,7948.758301,-2610.823486,492.368988,'Keeper Remulos'),
(@REMULOS,13,7928.785156,-2629.920654,492.524933,'Keeper Remulos'), ## stop
(@REMULOS,14,7948.697754,-2610.551758,492.363983,'Keeper Remulos'),
(@REMULOS,15,7952.019531,-2591.974609,490.081238,'Keeper Remulos'),
(@REMULOS,16,7940.567871,-2577.845703,488.946808,'Keeper Remulos'),
(@REMULOS,17,7908.662109,-2566.450439,488.634644,'Keeper Remulos'),
(@REMULOS,18,7873.132324,-2567.422363,486.946442,'Keeper Remulos'),
(@REMULOS,19,7839.844238,-2570.598877,489.286224,'Keeper Remulos'),
(@REMULOS,20,7830.678597,-2572.878974,489.286224,'Keeper Remulos'),
(@REMULOS,21,7890.504,-2567.259,487.306,'Keeper Remulos'),
(@REMULOS,22,7906.447,-2566.105,488.435,'Keeper Remulos'),
(@REMULOS,23,7925.861,-2573.601,489.642,'Keeper Remulos'),
(@REMULOS,24,7912.283,-2568.500,488.891,'Keeper Remulos');

DELETE FROM `waypoints` WHERE `entry`=@REMULOS*100;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100,1,7828.5752,-2246.8354,463.5159,'Keeper Remulos - WP1'),
(@REMULOS*100,2,7824.6440,-2279.0273,459.3173,'Keeper Remulos - WP2'),
(@REMULOS*100,3,7814.1699,-2302.2565,456.2227,'Keeper Remulos - WP3'),
(@REMULOS*100,4,7787.4604,-2320.9807,454.5470,'Keeper Remulos - WP4'),
(@REMULOS*100,5,7753.7495,-2319.0832,454.7066,'Keeper Remulos - WP5'),
(@REMULOS*100,6,7787.4604,-2320.9807,454.5470,'Keeper Remulos - WP6'),
(@REMULOS*100,7,7814.1699,-2302.2565,456.2227,'Keeper Remulos - WP7'),
(@REMULOS*100,8,7824.6440,-2279.0273,459.3173,'Keeper Remulos - WP8'),
(@REMULOS*100,9,7828.5752,-2246.8354,463.5159,'Keeper Remulos - WP9'),
(@REMULOS*100,10,7848.3,-2216.35,470.888,'Keeper Remulos - WP10 (Home)');


-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@ERANIKUS);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@ERANIKUS,1,7949.812,-2605.4748,513.591,'Eranikus'),
(@ERANIKUS,2,7931.3330,-2575.2097,489.6286,'Eranikus'),
(@ERANIKUS,3,7925.129,-2573.747,493.901,'Eranikus'),
(@ERANIKUS,4,7910.554,-2565.5534,488.616,'Eranikus'),
(@ERANIKUS,5,7867.442,-2567.334,486.946,'Eranikus');


-- Waypoints
DELETE FROM `waypoints` WHERE entry IN(@PHANTASM);
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@PHANTASM,1,7891.990,-2566.737,487.385,'Phantasm'),
(@PHANTASM,2,7865.966,-2554.104,486.967,'Phantasm'),
(@PHANTASM,3,7901.544,-2581.989,487.178,'Phantasm'),
(@PHANTASM,4,7918.844,-2553.987,486.911,'Phantasm'),
(@PHANTASM,5,7873.412,-2587.454,486.946,'Phantasm');

-- Waypoints
DELETE FROM `waypoints` WHERE entry=@REMULOS*100+1;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100+1,12,7847.066,-2217.571,470.403,'Keeper Remulos'),
(@REMULOS*100+1,11,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS*100+1,10,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS*100+1,9,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS*100+1,8,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS*100+1,7,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS*100+1,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS*100+1,5,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS*100+1,4,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS*100+1,3,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS*100+1,2,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS*100+1,1,7940.567871,-2577.845703,488.946808,'Keeper Remulos');

-- Arch Druid Lilliandra
DELETE FROM `smart_scripts` WHERE entryorguid = 30630 AND `source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30630, 0, 0, 1, 62, 0, 100, 0, 9991, 0, 0, 0, 85, 57536, 0, 0, 0, 0, 0, 19, 30630, 0, 0, 0, 0, 0, 0, 'Arch Druid Lilliandra - On gossip option select - Player Cast Forcecast Portal: Moonglade on Arch Druid Lilliandra');

-- Icecrown's Moonglade portal
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=32790;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(32790,57654,1,0);

DELETE FROM `smart_scripts` WHERE entryorguid IN (32790) AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(32790, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 3, 0, 11686, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Portal - On Respawn - Morph Into 0'),
(32790, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 11, 61722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Portal - On Respawn - Cast Nature Portal State');

-- Moonglade's return portal
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry`=32788;
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES 
(32788,57539,1,0);

DELETE FROM `smart_scripts` WHERE entryorguid IN (32788) AND `source_type` IN (0);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(32788, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 3, 0, 11686, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Return Portal - On Respawn - Morph Into 0'),
(32788, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 61722, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Moonglade Return Portal - On Respawn - Cast Nature Portal State');

-- Conditions for portals
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=18 AND `SourceEntry` IN (57654,57539);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(18, 32790, 57654, 0, 0, 28, 0, 13073, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick'),
(18, 32788, 57539, 0, 0, 28, 0, 13075, 0, 0, 0, 0, 0, '', 'Required quest active for spellclick');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (9991,10215);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`) VALUES 
(9991, 0, 0, 'It''s a pleasure to meet you as well, Arch Druid. I am on a task from Tirion and time is short, might I trouble you for a portal to Moonglade?', 1, 1, 9992, 0, 0, 0, ''),
(10215, 0, 0, 'Please send me into the Emerald Dream to recover the acorns. I know of the danger and I do not fear it.', 1, 1, 0, 0, 0, 0, ''),
(10215, 1, 0, 'I wish to return to Arch Druid Lilliandra. Can you send me back to her?', 1, 1, 0, 0, 0, 0, '');

-- Conditions for gossip
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup` IN (9991,10215);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 9991, 0, 0, 0, 28, 0, 13073, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13073 complete'),
(15, 10215, 1, 0, 0, 28, 0, 13075, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13075 complete'),
(15, 10215, 0, 0, 0, 9, 0, 13074, 0, 0, 0, 0, 0, '', 'Show gossip menu option only if player has quest 13074 taken');