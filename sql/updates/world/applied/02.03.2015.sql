SET @Arg_Champion := 33707;
-- Squire Danny gossip
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 10343;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `OptionBroadcastTextID`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, box_text, `BoxBroadcastTextID` ) VALUES
( 10343, 0, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 1, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 2, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 3, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 4, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 5, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 6, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 7, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 8, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0),
( 10343, 9, 0, 'I am ready to fight!', 33430, 1, 1, 0, 0, 0, 0, '' ,0); 

-- Argent Champions texts
DELETE FROM `creature_text` WHERE `entry`= @Arg_Champion;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`,`BroadcastTextId`) VALUES
(@Arg_Champion,0,1,'Ready yourself!',12,0,100,1,1000,0,'Argent Champion',33753),
(@Arg_Champion,0,2,'Prepare yourself!',12,0,100,1,1000,0,'Argent Champion',33750),
(@Arg_Champion,0,3,'On your guard!',12,0,100,1,1000,0,'Argent Champion',33752),
(@Arg_Champion,0,4,'On your guard!',12,0,100,1,1000,0,'Argent Champion',33756),
(@Arg_Champion,0,5,'Let it begin!',12,0,100,1,1000,0,'Argent Champion',33758),
(@Arg_Champion,0,6,'Argent Champion is looking winded!',12,0,100,1,1000,0,'Argent Champion',0),
(@Arg_Champion,1,7,'Victory is mine!',12,0,100,1,1000,0,'Argent Champion',33771),
(@Arg_Champion,1,8,'It seems you still need more practice. Perhaps another time.',12,0,100,1,1000,0,'Argent Champion',33763),
(@Arg_Champion,1,9,'I have won. Better luck another time, friend.',12,0,100,1,1000,0,'Argent Champion',33773),
(@Arg_Champion,1,10,'I am afraid you will need more practice to defeat me.',12,0,100,1,1000,0,'Argent Champion',33772),
(@Arg_Champion,2,11,'I yield to you.',12,0,100,1,1000,0,'Argent Champion',33767),
(@Arg_Champion,2,12,'That was a well fought battle. I yield to you.',12,0,100,1,1000,0,'Argent Champion',33776),
(@Arg_Champion,2,13,'It would seem I underestimated your skills. Well done..',12,0,100,1,1000,0,'Argent Champion',33768),
(@Arg_Champion,2,14,'I have been defeated. Good fight!',12,0,100,1,1000,0,'Argent Champion',33868);