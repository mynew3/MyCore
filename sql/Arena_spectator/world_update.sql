-- Arena Spectator
DELETE FROM `command` WHERE `name` = 'spectate';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('spectate', 1003, 'Syntax: .spectate $subcommand.\nUse .help sppectate');
DELETE FROM `command` WHERE `name` = 'spectate view';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('spectate view', 1005, 'Syntax: .spectate view #player\nAllow player to spectate arena from anotherplayer.');
DELETE FROM `command` WHERE `name` = 'spectate leave';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('spectate leave', 1007, 'Syntax: .spectate leave\nDisable spectator mode.');
DELETE FROM `command` WHERE `name` = 'spectate player';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('spectate player', 1004, 'Syntax: .spectate player #player\nAllow to spectate player.');
DELETE FROM `command` WHERE `name` = 'spectate reset';
INSERT INTO `command` (`name`, `permission`, `help`) VALUES ('spectate reset', 1006, 'Syntax: .spectate reset\nSend addon data.');
UPDATE `gameobject_template` SET `flags` = 36 WHERE entry IN (185918, 185917, 183970, 183971, 183972, 183973, 183977, 183979, 183978, 183980, 192642, 192643);

SET
@Entry = 190000,
@Name = "Arena Spectator",
@Subname = "Spectate Master",
@IconName = "Speak";

DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 29348, 0, @Name, @Subname, @IconName, 0, 80, 80, 2, 35, 3, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, 'npc_arena_spectator');
