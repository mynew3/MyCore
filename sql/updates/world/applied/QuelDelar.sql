

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('37527', '530', '1', '1', '0', '0', '12560', '-6783.8', '15.0114', '0.0276923', '300', '0', '0', '558900', '25240', '0', '0', '0', '0');

INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('37552', '530', '1', '1', '0', '0', '11800.1', '-7064.56', '25.2364', '2.769', '300', '0', '0', '123', '180', '0', '0', '0', '0');
UPDATE `creature_template` SET `dynamicflags`='32', `npcflag`='1', `AIName`='SmartAI' WHERE (`entry`='37552');
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES ('37601', '530', '1', '0', '0', '0', '11802.9', '-7064.22', '25.724', '3.30072', '300', '0', '0', '42', '0', '0', '0', '33554432', '0');
INSERT INTO `smart_scripts` (`entryorguid`, `event_type`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES ('37552', '64', '33', '37601', '7', 'On gossip hello - give quest credit - Thalorien Dawnseeker\'s Remains');

SET @CGUID := 43498;
DELETE FROM `creature` WHERE id=37527;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, 37527, 530, 1, 1, 12559.3, -6783.323, 15.06894, 0.06981317, 120, 0, 0);

UPDATE `creature_template` SET `vehicleid`=60 WHERE `entry`=30159;
UPDATE `smart_scripts` SET `action_param2`=0 WHERE `entryorguid`=31242 AND `source_type`=0 AND `id`=14;
UPDATE `creature_template_addon` SET `mount`=0 WHERE `entry`=31242;