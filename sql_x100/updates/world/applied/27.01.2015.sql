--
DELETE FROM `spell_script_names` WHERE `spell_id`=70903 AND `ScriptName`='spell_cultist_dark_martyrdrom';
DELETE FROM `spell_script_names` WHERE `spell_id`=71236 AND `ScriptName`='spell_cultist_dark_martyrdrom';
UPDATE `spell_script_names` SET `ScriptName`='spell_cultist_dark_martyrdom' WHERE `spell_id` IN (72495,72496,72497,72498,72499,72500);
--
DELETE FROM `npc_text` WHERE `ID`=9690;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `BroadcastTextID0`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `BroadcastTextID1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `BroadcastTextID2`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `BroadcastTextID3`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `BroadcastTextID4`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `BroadcastTextID5`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `BroadcastTextID6`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `BroadcastTextID7`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`, `VerifiedBuild`) VALUES 
(9690, 'The younger races make a big fuss over Winter Veil. Ironforge''s bank is the center of the festivities.', 'The younger races make a big fuss over Winter Veil. Ironforge''s bank is the center of the festivities.', 16179, 0, 01, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
--
UPDATE `smart_scripts` SET `link`=18 WHERE  `entryorguid`=24238 AND `source_type`=0 AND `id`=16 AND `link`=0;
UPDATE `smart_scripts` SET `link`=22 WHERE  `entryorguid`=24238 AND `source_type`=0 AND `id`=13 AND `link`=0;
UPDATE `smart_scripts` SET `link`=24 WHERE  `entryorguid`=24238 AND `source_type`=0 AND `id`=2 AND `link`=0;

DELETE FROM `smart_scripts` WHERE `entryorguid`=24238 AND `source_type`=0 AND `id`>16;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24474 AND `source_type`=0 AND `id`>1;
DELETE FROM `smart_scripts` WHERE `entryorguid`=24458 AND `source_type`=0 AND `id`>2;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(24238, 0, 17, 0, 0, 0, 100, 0, 1000, 1000, 1000, 1000, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - IC - Update Home Position'),
(24238, 0, 18, 27, 61, 0, 100, 0, 0, 0, 0, 0, 53, 1, 24238, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - On Evade - Start WP'),
(24238, 0, 19, 20, 34, 0, 100, 0, 0, 1, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 5.41052, 'Bjorn Halgurdsson - On Reached WP1 - Set Orientation'),
(24238, 0, 20, 21, 61, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - Reached WP1 - Set Home Position'),
(24238, 0, 21, 0, 61, 0, 100, 0, 0, 0, 0, 0, 78, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - Reached WP1 - Reset Script'),
(24238, 0, 22, 23, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - On Spawn - Set Passive'),
(24238, 0, 23, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - On Spawn - Set Non Attackable'),
(24238, 0, 24, 25, 61, 0, 100, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson -  On Spellhit "Vrykul Insult" - Set Hostile'),
(24238, 0, 25, 26, 61, 0, 100, 0, 0, 0, 0, 0, 19, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson -  On Spellhit "Vrykul Insult" - Set Attackable'),
(24238, 0, 26, 0, 61, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson -  On Spellhit "Vrykul Insult" - Attack Invoker'),
(24238, 0, 27, 28, 61, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - On Evade - Set Passive'),
(24238, 0, 28, 0, 61, 0, 100, 0, 0, 0, 0, 0, 18, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bjorn Halgurdsson - On Evade - Set Non Attackable'),
(24474, 0, 2, 3, 4, 0, 100, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Vengeance Landing Assassin - On Agro - Store Targetlist'),
(24474, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 19, 24458, 0, 0, 0, 0, 0, 0, 'Vengeance Landing Assassin - On Agro - Send Targetlist to Lydia'),
(24474, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 24458, 0, 0, 0, 0, 0, 0, 'Vengeance Landing Assassin - On Agro - Set Data 1 1 on Lydia'),
(24458, 0, 3, 0, 38, 0, 100, 0, 1, 1, 0, 0, 49, 0, 0, 0, 0, 0, 0, 12, 1, 0, 0, 0, 0, 0, 0, 'Lydell - On Data Set - Attack Stored Target');

DELETE FROM `waypoints` WHERE `entry`=24238;
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(24238, 1, 1518.61, -5249.85, 207.396,  'Bjorn Halgurdsson');
