-- no info, no script found
DELETE FROM `areatrigger_scripts` WHERE `ScriptName`='at_twiggy_flathead';
DELETE FROM `areatrigger_scripts` WHERE `ScriptName`='at_madrigosa';
DELETE FROM `areatrigger_scripts` WHERE `ScriptName`='at_eye_of_eternity_improvised_floor';

UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='boss_gazakroth';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='do_nothing';

UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName`='go_defias_cannon';
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName`='go_door_lever_dm';
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName`='go_kael_orb';
UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName`='go_movie_orb';

UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='internalitemhandler';

UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_aran_blizzard';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_bladespire_ogre';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_blaze';

-- script removed in commit 74facef60dda7e18a3c854160709c0d51071f975
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_brann_bronzebeard';

-- no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_crystalline_tangler';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_demon_fire';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_flame_crash';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_generic_harpoon_cannon';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_homunculus';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_invis_legion_teleporter';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_magnetic_core';
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_mindless_skeleton';

-- NPC 27597 Hulking Corpse, 27598 Fetid Troll Corpse - no spawn, no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_nether_vapor';

-- NPC 27597 Hulking Corpse, 27598 Fetid Troll Corpse - no spawn, no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_novos_minion';

-- NPC 24552 Sliver - no spawn, no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_sliver';

-- NPC 10399 Thuzadin Acolyte - no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_thuzadin_acolyte';

-- script removed in commit 9d2d4ba921757d6aaa3d06e5bab2be1a288f3ffd
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_tracy_proudwell';

-- script removed in commit f80a9f9f72deac24b1940cd7028c09e993947b99
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_vereth_the_cunning';

-- NPC 34001 Void Zone - no spawn, no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_void_zone';

-- NPC 15621 Yauj Brood - no info, no script found
UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName`='npc_yauj_brood';

UPDATE `item_template` SET `HolidayId`=423, `ScriptName`='' WHERE `entry`=49867;

DELETE FROM `areatrigger_scripts` WHERE `ScriptName` IN ('at_twiggy_flathead','at_madrigosa','at_eye_of_eternity_improvised_floor');

UPDATE `gameobject_template` SET `ScriptName`='' WHERE `ScriptName` IN ('go_defias_cannon','go_door_lever_dm','go_kael_orb','go_movie_orb');

UPDATE `item_template` SET `ScriptName`='' WHERE `ScriptName`='internalitemhandler';

UPDATE `creature_template` SET `ScriptName`='' WHERE `ScriptName` IN ('do_nothing','npc_aran_blizzard','npc_bladespire_ogre','npc_blaze','npc_crystalline_tangler','npc_demon_fire','npc_flame_crash','npc_generic_harpoon_cannon','npc_homunculus','npc_invis_legion_teleporter','npc_magnetic_core','npc_mindless_skeleton','npc_nether_vapor','npc_novos_minion','npc_sliver','npc_thuzadin_acolyte','npc_tracy_proudwell','npc_vereth_the_cunning','npc_void_zone','npc_yauj_brood');