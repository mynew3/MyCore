-- Temp Hack Fixes
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32823,32830,32840);
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (32823,32830,32840);

UPDATE `creature_template` SET `modelid2` = '0', `speed_walk` = '0', `speed_run` = '0' WHERE `entry` IN (34823,34812,34824,34822,34819);

-- Pilgrims Bounty: Chair
UPDATE `creature_template` SET `spell1`=66261, `spell2`=61784, `spell3`=61785, `spell4`=61788, `spell5`=61786, `spell6`=61787 WHERE `entry`=34823; -- The Cranberry Chair
UPDATE `creature_template` SET `spell1`=66250, `spell2`=61784, `spell3`=61785, `spell4`=61788, `spell5`=61786, `spell6`=61787 WHERE `entry`=34812; -- The Turkey Chair
UPDATE `creature_template` SET `spell1`=66259, `spell2`=61784, `spell3`=61785, `spell4`=61788, `spell5`=61786, `spell6`=61787 WHERE `entry`=34819; -- The Stuffing Chair
UPDATE `creature_template` SET `spell1`=66260, `spell2`=61784, `spell3`=61785, `spell4`=61788, `spell5`=61786, `spell6`=61787 WHERE `entry`=34822; -- The Pie Chair
UPDATE `creature_template` SET `spell1`=66262, `spell2`=61784, `spell3`=61785, `spell4`=61788, `spell5`=61786, `spell6`=61787 WHERE `entry`=34824; -- The Sweet Potato Chair

-- Item: Turkey Caller
UPDATE `creature_template` SET `faction_A`=35, `faction_H`=35, `ScriptName` = 'EC_npc_lonely_turkey' WHERE `entry` =32956; -- Lonely Turkey

DELETE FROM `creature_template_addon` WHERE `entry` IN (34823,34812,34824,34822,34819);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(34823, 0, 0, 0, 1, 0, '61793 61798'), -- The Cranberry Chair / (Cranberry Server | Can Eat - Cranberries)
(34812, 0, 0, 0, 1, 0, '61796 61801'), -- The Turkey Chair / (Turkey Server | Can Eat - Turkey)
(34824, 0, 0, 0, 1, 0, '61797 61802'), -- The Sweet Potato Chair / (Sweet Potatoes Server | Can Eat - Sweet Potatoes)
(34822, 0, 0, 0, 1, 0, '61794 61799'), -- The Pie Chair / (Pie Server | Can Eat - Pie)
(34819, 0, 0, 0, 1, 0, '61795 61800'); -- The Stuffing Chair / (Stuffing Server | Can Eat - Stuffing)
