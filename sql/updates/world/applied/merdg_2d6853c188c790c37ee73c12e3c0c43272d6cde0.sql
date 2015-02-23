-- Мердж по 2d6853c188c790c37ee73c12e3c0c43272d6cde0
UPDATE `creature_template` SET `unit_flags`=0 WHERE `entry`=21004;
--
UPDATE `creature_text` SET `sound`= 8506 WHERE `entry`= 15367;
--
DELETE FROM `gossip_menu` WHERE `entry` in(10355,10366,10477);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(10355, 14369),
(10366, 14375),
(10477, 14496);

DELETE FROM `gossip_menu_option` WHERE `menu_id` in(10355,10366,10477);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `BoxBroadcastTextID`) VALUES 
(10355, 0, 0, 'We''re ready. Begin the assault!', 33652, 1, 1, 0, 0, 0, 0, NULL, 0),
(10366, 0, 0, 'Activate secondary defensive systems.', 34420, 1, 1, 10477, 0, 0, 0, NULL, 0),
(10477, 0, 0, 'Confirmed.', 34421, 1, 1, 0, 0, 0, 0, NULL, 0);
UPDATE `creature_template` SET `gossip_menu_id`=10355 WHERE  `entry`=33579;
UPDATE `creature_template` SET `gossip_menu_id`=10366 WHERE  `entry`=33686;
--
SET @OGUID := 6166;
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+2;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@OGUID+0, 181575, 533, 3, 1, 3465.175, -3940.402, 308.79, 2.443457, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 181575 (Area: 3456)
(@OGUID+1, 181578, 533, 3, 1, 2493.018, -2921.778, 241.1933, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1), -- 181578 (Area: -1)
(@OGUID+2, 181576, 533, 3, 1, 3539.016, -2936.821, 302.4756, 3.141593, 0, 0, 1, -4.371139E-08, 7200, 255, 1); -- 181576 (Area: 3456)

-- These gameobjects have wrong flags at tdb 335, it's fine at 6.x. As seen on sniffs, they should have flags 16. Previous value was 6553616.
UPDATE `gameobject_template` SET `flags` = 16 WHERE `entry` IN (181575, 181576);
--
UPDATE `creature_text` SET `TextRange` = 3 WHERE `entry` = 27656 AND `groupid` = 0;
DELETE FROM `creature_text` WHERE `entry` = 27447 AND `groupid` = 4;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `TextRange`, `comment`) VALUES
(27447, 4, 0, 'Intruders, your victory will be short-lived. I am Commander Varos Cloudstrider. My drakes control the skies and protect this conduit. I will see to it personally that the Oculus does not fall into your hands!', 14, 0, 100, 0, 0, 13648, 31812, 3, 'Varos Cloudstrider SAY_VAROS_INTRO_TEXT');


