 SET @TYRANDE 		:= 15633;
SET @ERANIKUS 		:= 15491;
SET @REMULOS		:= 11832;
SET @PHANTASM		:= 15629;
SET @E_REDEEM		:= 15628;

DELETE FROM `creature_ai_scripts` WHERE creature_id=@ERANIKUS;
-- Tyrande
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', flags_extra=0, type_flags=0, unit_flags=32768, faction=1254 WHERE entry=@TYRANDE;
-- Eranikus, Tyrant of the Dream
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', InhabitType=7, faction=35, unit_flags=0, flags_extra=2097152, type_flags=8, dynamicflags=128, speed_walk=2 WHERE entry=@ERANIKUS;
-- Keeper Remulos
UPDATE `creature_template` SET AIName='SmartAI', ScriptName='', speed_walk=2.5, speed_run=3.75, type_flags=0, unit_flags=32768, faction=1254 WHERE entry=@REMULOS;


-- NPC texts
DELETE FROM `creature_text` WHERE entry IN (@REMULOS,@ERANIKUS,@PHANTASM,@TYRANDE,@E_REDEEM);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(@REMULOS,0,0,"We will locate the origin of the Nightmare through the fragments you collected, $n. From there, we will pull Eranikus through a rift in the Dream. Steel yourself, $c. We are inviting the embodiment of the Nightmare into our world.",12,0,100,0,0,0,'Keeper Remulos Say 0'),
(@REMULOS,1,1,"The rift will be opened there, above the Lake Elun'ara. Prepare yourself, $n. Eranikus's entry into our world will be wrought with chaos and strife.",12,0,100,0,0,0,'Keeper Remulos Say 1'),
(@REMULOS,2,2,"He will stop at nothing to get to Malfurion's physical manifistation. That must not happen... We must keep the beast occupied long enough for Tyrande to arrive.",12,0,100,0,0,0,'Keeper Remulos Say 2'),
(@REMULOS,3,3,"Defend Nighthaven, hero...",12,0,100,0,0,0,'Keeper Remulos Say 3'),
(@REMULOS,4,4,"Fiend! Face the might of Cenarius!",14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,5,5,"Who is the predictable one, beast? Surely you did not think that we would summon you on top of Malfurion? Your redemption comes, Eranikus. You will be cleansed of this madness - this corruption.",14,0,100,0,0,0,'Keeper Remulos Say 4'),
(@REMULOS,6,6,"Hurry, $N! We must find protective cover!",12,0,100,0,0,0,'Keeper Remulos Say 6'),
(@REMULOS,7,7,"Please, champion, protect our people.",12,0,100,0,0,0,'Keeper Remulos Say 7'),
(@REMULOS,8,8,"It will be done, Eranikus. Be well, ancient one.",12,0,100,0,0,0,'Keeper Remulos Say 8'),
(@REMULOS,9,9,"Let us leave Nighthaven, hero Seek me out at the grove.",12,0,100,0,0,0,'Keeper Remulos Say 9'),
(@ERANIKUS,0,0,"Pitful predictable mortals... You know not what you have done! The master''s will fulfilled. The Moonglade shall be destroyed and Malfurion along with it!",14,0,100,0,0,0,'Eranikus Say 0'),
(@ERANIKUS,1,1,"Eranikus, Tyrant of the Dream lets loose a sinister laugh.",16,0,100,0,0,0,'Eranikus Say 1'),
(@ERANIKUS,2,2,"You are certanly not your father, insect. Should it interest me, I would crush you with but a swipe of my claws. Turn Shan''do Stormrage over to me and your pitiful life will be spared along with the lives of your people.",14,0,100,0,0,0,'Eranikus Say 2'),
(@ERANIKUS,3,3,"My redemption? You are bold, little one. My redemption comes by the will of my god.",14,0,100,0,0,0,'Eranikus Say 3'),
(@ERANIKUS,4,4,"Eranikus, Tyrant of the Dream roars furiously",16,0,100,0,0,0,'Eranikus Say 4'),
(@ERANIKUS,5,5,"Rise, servants of the Nightmare! Rise and destroy this world! Let there be no survivors...",14,0,100,0,0,0,'Eranikus Say 5'),
(@ERANIKUS,6,6,"Where is your savior? How long can you hold out against my attacks?",14,0,100,0,0,0,'Eranikus Say 6'),
(@ERANIKUS,7,7,"Remulos, look how easy they fall before me? You can stop this, fool. Turn the druid over to me and it will all be over...",14,0,100,0,0,0,'Eranikus Say 7'),
(@ERANIKUS,8,8,"Defeated my minions? Then face me, mortals!",14,0,100,0,0,0,'Eranikus Say 8'),
(@ERANIKUS,9,9,"IT BURNS! THE PAIN.. SEARING...",14,0,100,0,0,0,'Eranikus Say 9'),
(@ERANIKUS,10,10,"WHY? Why did this happen to... to me? Where were you Tyrande? Where were you when I fell from the grace of Elune?",14,0,100,0,0,0,'Eranikus Say 10'),
(@ERANIKUS,11,11,"I... I feel... I feel the touch of Elune upon my being once more... She smiles upon me... Yes... I...",14,0,100,0,0,0,'Eranikus Say 11'),
(@ERANIKUS,12,12,"Tyrande falls to one knee.",16,0,100,0,0,0,'Eranikus Say 12'),
(@TYRANDE,0,0,"Seek absolution, Eranikus. All will be forgiven..",14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,1,1,"You will be forgiven, Eranikus. Elune will always love you. Break free of the bonds that command you!",14,0,100,0,0,0,'Tyrande Say 0'),
(@TYRANDE,2,2,"The grasp of the Old Gods is unmoving. He is consumed by their dark thoughts... I... I... I cannot... cannot channel much longer... Elune aide me.",12,0,100,0,0,0,'Tyrande Say 0'),
(@E_REDEEM,0,0,"For so long, I was lost... The Nightmare's corruption had consumed me... And now, you... all of you.. you have saved me. Released me from its grasp.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,1,1,"But... Malfurion, Cenarius, Ysera... They still fight. They need me. I must return to the Dream at once.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,2,2,"My lady, I am unworthy of your prayer. Truly, you are an angel of light. Please, assist me in returning to the barrow den so that I may return to the Dream. I like Malfurion, also have a love awaiting me... I must return to her... to protect her...",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@E_REDEEM,3,3,"And heroes... I hold that which you seek. May it once more see the evil dissolved. Remulos, see to it that our champion receives the shard of the Green Flight.",12,0,100,0,0,0,'Eranikus the Redeemed Say 0'),
(@PHANTASM,0,0,"Nightmare Phantasm drinks in the suffering of the fallen.",16,0,100,0,0,0,'Nightmare Phantasm Say 0');

-- Remulos SAI
DELETE FROM `smart_scripts` WHERE entryorguid IN(@REMULOS,@REMULOS*100,@REMULOS*100+1);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@REMULOS,0,0,0,62,0,100,0,10215,0,0,0,11,57413,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,1,2,62,0,100,0,10215,1,0,0,11,57670,1,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - cast spell'),
(@REMULOS,0,2,3,61,0,100,0,0,0,0,0,62,571,0,0,0,0,0,7,0,0,0,6408.346191,413.257690,553.104657,0.951110, 'Keeper Remulos - On link - Teleport Player'),
(@REMULOS,0,3,0,61,0,100,0,0,0,0,0,72,0,0,0,0,0,0,7,0,0,0,0,0,0,0,'Keeper Remulos - On gossip option select - Close gossip'),
(@REMULOS,0,4,0,19,0,100,0,13074,0,0,0,11,57413,0,0,0,0,0,7,0,0,0,0,0,0,0, 'Keeper Remulos - On Quest Accept - Cast Fitful Dream'),
(@REMULOS,0,5,0,19,0,100,1,8736,0,0,0,1,0,15000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Say 0'),
(@REMULOS,0,6,0,52,0,100,0,0,@REMULOS,0,0,53,0,@REMULOS,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 0 - Start WayPoint'),
(@REMULOS,0,7,0,52,0,100,0,0,@REMULOS,0,0,83,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Quest Accept - Remove Npcflag'),
(@REMULOS,0,8,0,40,0,100,0,13,@REMULOS,0,0,54,95000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Pause WP'),
(@REMULOS,0,9,0,40,0,100,0,13,@REMULOS,0,0,1,1,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 13 - Say 1'),
(@REMULOS,0,10,0,52,0,100,0,1,@REMULOS,0,0,1,2,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 1 - Say 2'),
(@REMULOS,0,11,0,52,0,100,0,2,@REMULOS,0,0,11,25813,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Cast Conjure Dream Rift'),
(@REMULOS,0,12,0,52,0,100,0,2,@REMULOS,0,0,12,@ERANIKUS,3,3600000,0,0,0,8,0,0,0,7872.5888, -2664.55888, 497.139282,0.63583,'Keeper Remulos - On Say 3 - Summon Eranikus'),
(@REMULOS,0,13,0,52,0,100,0,2,@REMULOS,0,0,1,3,23000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 2 - Say 3'),
(@REMULOS,0,14,0,52,0,100,0,3,@REMULOS,0,0,1,4,31000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 3 - Say 4'),
(@REMULOS,0,15,0,52,0,100,0,4,@REMULOS,0,0,1,5,22000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 4 - Say 5'),
(@REMULOS,0,16,0,52,0,100,0,5,@REMULOS,0,0,1,6,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 5 - Say 6'),
(@REMULOS,0,17,0,40,0,100,0,20,@REMULOS,0,0,54,60000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Pause WP'),
(@REMULOS,0,18,0,40,0,100,0,20,@REMULOS,0,0,1,7,20000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 20 - Say 7'),
(@REMULOS,0,19,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7829.066,-2562.347,489.299,5.234,'Keeper Remulos - On Say 7 - Summon Nightmare Phantasm'),
(@REMULOS,0,20,0,52,0,100,0,7,@REMULOS,0,0,12,@PHANTASM,3,3600000,0,0,0,8,0,0,0,7828.889,-2580.694,489.299,0.753,'Keeper Remulos - On Say 7 -Summon Nightmare Phantasm'),
(@REMULOS,0,21,0,52,0,100,0,7,@REMULOS,0,0,8,2,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Set react state aggresive'),
(@REMULOS,0,22,0,52,0,100,0,7,@REMULOS,0,0,49,0,0,0,0,0,0,19,@PHANTASM,0,0,0,0,0,0,'Keeper Remulos - On Say 7 - Attack'),
(@REMULOS,0,23,0,0,0,100,0,7000,14000,6000,12000,11,20665,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,24,0,0,0,100,0,26000,52000,34000,46000,11,20664,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Regrowth'),
(@REMULOS,0,25,0,0,0,100,0,25000,25000,25000,50000,11,23381,0,0,0,0,0,18,20,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Healing Touch'),
(@REMULOS,0,26,0,0,0,100,0,10000,40000,40000,40000,11,25817,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Tranquility'),
(@REMULOS,0,27,0,0,0,100,0,16000,21000,19000,25000,11,21668,0,0,0,0,0,2,0,0,0,0,0,0,0,'Keeper Remulos - In Combat - Cast Starfall'),
(@REMULOS,0,28,0,38,0,100,0,1,1,0,0,1,8,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Data Set - Say 8'),
(@REMULOS,0,29,0,52,0,100,0,8,@REMULOS,0,0,1,9,10000,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - Said 8 8 - Say 9'),
(@REMULOS,0,30,0,40,0,100,1,21,@REMULOS,0,0,49,0,0,0,0,0,0,11,@ERANIKUS,30,0,0,0,0,0,'Keeper Remulos - On Waypoint Reached - Attack Eranikus'),
(@REMULOS,0,31,0,6,0,100,0,0,0,0,0,6,8736,0,0,0,0,0,18,40,0,0,0,0,0,0,'Keeper Remulos - On Death - Fail Quest'),
(@REMULOS,0,32,0,40,0,100,1,23,@REMULOS,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Pause WP'),
(@REMULOS,0,33,0,40,0,100,1,23,@REMULOS,0,0,66,2.835,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 23 - Set Orientation'),
(@REMULOS,0,34,0,52,0,100,0,9,@REMULOS,0,0,53,1,@REMULOS*100,0,8736,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On Said 9 - Go Home'),
(@REMULOS,0,35,0,40,0,100,0,12,@REMULOS*100,0,0,82,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Npcflags'),
(@REMULOS,0,36,0,40,0,100,0,12,@REMULOS*100,0,0,66,3,0,0,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 12 - Set Orientation'),
(@REMULOS,0,37,0,40,0,100,0,24,@REMULOS,0,0,80,@REMULOS*100,0,1,0,0,0,1,0,0,0,0,0,0,0,'Keeper Remulos - On WayPoint 24 - Run Script only when OOC'),
(@REMULOS*100,9,0,0,1,0,100,1,60000,60000,0,0,53,1,@REMULOS*100,0,8736,0,0,1,0,0,0,0,0,0,0,'On Script - OOC 1 Mintues - Go Home');

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
(@ERANIKUS*100+1,9,16,0,0,0,100,0,1000,1000,0,0,1,7,35000,0,0,0,0,1,0,0,0,0,0,0,0,'Eranikus - On Script - Say 7'),
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
DELETE FROM `smart_scripts` WHERE entryorguid IN(@TYRANDE);
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

UPDATE `creature_template` SET AIName='SmartAI', faction=14 WHERE entry=@PHANTASM;
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
DELETE FROM `waypoints` WHERE entry=@REMULOS*100;
INSERT INTO `waypoints` (`entry`,`pointid`,`position_x`,`position_y`,`position_z`,`point_comment`) VALUES
(@REMULOS*100,12,7847.066,-2217.571,470.403,'Keeper Remulos'),
(@REMULOS*100,11,7829.66,-2244.87,463.87,'Keeper Remulos'),
(@REMULOS*100,10,7817.25,-2306.20,456.00,'Keeper Remulos'),
(@REMULOS*100,9,7866.54,-2312.20,463.32,'Keeper Remulos'),
(@REMULOS*100,8,7908.488,-2309.086,467.677,'Keeper Remulos'),
(@REMULOS*100,7,7933.290,-2314.777,473.674,'Keeper Remulos'),
(@REMULOS*100,6,7942.543457,-2320.170654,476.770355,'Keeper Remulos'),
(@REMULOS*100,5,7953.036133,-2357.953613,486.379303,'Keeper Remulos'),
(@REMULOS*100,4,7962.706055,-2411.155518,488.955231,'Keeper Remulos'),
(@REMULOS*100,3,7976.860352,-2552.697998,490.081390,'Keeper Remulos'),
(@REMULOS*100,2,7949.307617,-2569.120361,489.716248,'Keeper Remulos'),
(@REMULOS*100,1,7940.567871,-2577.845703,488.946808,'Keeper Remulos');
   
  
  
-- Void Zone
UPDATE `creature_template` SET `unit_flags` = `unit_flags` | 4 | 131072 WHERE `entry` = 34001;
-- Void Zone
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(34001, 0, 0, 0, 0, 0, "46262");
   
  
   
-- DB/String: Add trinity strings for the lookup online commands.
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (364, 'Player not online!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES (365, 'Online characters at account %s (Id: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
   
  
  
--  Gluth's emote texts
DELETE FROM `creature_text` WHERE `entry` = '15932';
INSERT INTO `creature_text`(`entry`,`groupid`,`id`,`type`,`sound`,`probability`,`comment`,`text`) VALUES
(15932,0,0,41,0,100,"gluth EMOTE_ZOMBIE","%s spots a nearby zombie to devour!"),
(15932,1,0,41,0,100,"gluth EMOTE_ENRAGE","%s becomes enraged!"),
(15932,2,0,41,0,100,"gluth EMOTE_DECIMATE","%s decimates all nearby flesh!");

-- Zombie's Infected Wound Aura
DELETE FROM `creature_template_addon` WHERE `entry` IN (16360, 30303);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`,`emote`, `auras`)
VALUES
(16360, 0, 0, 0, 0, 0, 29307),
(30303, 0, 0, 0, 0, 0, 29307);
   
  
SET @CGUID := 210018;

-- Spawn the Infinite Corruptor
DELETE FROM `creature` WHERE `guid`=@CGUID AND `id`=32273;
INSERT INTO `creature`(`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`,`orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID, 32273, 595, 2, 1, 2331.642, 1273.273, 132.9524, 3.717551, 7200, 0, 0);

-- Spawn the Guardian of time
DELETE FROM `creature` WHERE `guid` = @CGUID+1;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@CGUID+1, 32281, 595, 2, 1, 2321.489, 1268.383, 132.8507, 0.418879, 120, 0, 0);

-- Add Corruption of Time aura to the Guardian
DELETE FROM `creature_addon` WHERE `guid` = @CGUID+1;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@CGUID+1, 0, 0, 0, 0, 0, 60451);

-- Spawn Time-Rift
DELETE FROM `creature` WHERE `guid` = @CGUID+2 AND `id` = 28409;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
(@CGUID+2, 28409, 595, 2, 1, 0, 0, 2340.55, 1278.6, 133.312, 3.4767, 86400, 0, 0, 1, 0, 0, 0, 0, 0);

-- Guardian of Time's creature_text
DELETE FROM `creature_text` WHERE `entry` = 32281;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(32281, 0, 0, 'You have my thanks for saving my existence in this timeline. Now I must report back to my superiors. They must know immediately of what I just experienced.', 12, 0, 100, 0, 0, 0, 'Guardian of Time - SAY_SUCCESS');

-- Chromie's creature_text
DELETE FROM `creature_text` WHERE `entry` = '26527';
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(26527, 0, 0, 'Oh, no! Adventurers, something awful has happened! A colleague of mine has been captured by the Infinite Dragonflight, and they''re doing something horrible to him!$B$BKeeping Arthas is still your highest priority, but if you act fast you could help save a Guardian of Time!', 15, 0, 100, 0, 0, 0, 'Chromie'),
(26527, 1, 0, 'Adventurers, you must hurry! The Guardian of Time cannot last for much longer!', 15, 0, 100, 0, 0, 0, 'Chromie'),
(26527, 2, 0, 'I can barely sense the Guardian of Time! His timeline is fading quickly!', 15, 0, 100, 0, 0, 0, 'Chromie');

-- Corruption of Time implicit target conditions
DELETE FROM `conditions` WHERE`SourceEntry` = 60422 AND `SourceTypeOrReferenceId` = 13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`)VALUES
(13, 1, 60422, 0, 0, 31, 0, 3, 32281, 0, 0, 0, 0,'','Infinite Corruptor - Corruption of Time');

-- Remove The Culling of Time achievement criteria from disables
DELETE FROM `disables` WHERE `entry` = 7494 AND `sourceType` = 4;

-- Adds immunites to the Infinite Corruptor
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` |1|2|4|16|32|64|256|512|1024|2048|4096|8192|65536|131072|8388608|33554432|67108864 WHERE `entry` = 32273;
   
  
  
DELETE FROM `creature` WHERE `guid` IN (400000); -- Spawn Coren Direbrew
INSERT INTO `creature` (`guid`,`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
('400000','23872','230','1','1','0','0','890.931','-130.817','-49.7464','5.22232','86400','0','0','302400','0','0');

UPDATE `creature_template` SET `npcflag`=3,`faction`=35,`ScriptName`='npc_coren_direbrew',`flags_extra`=0 WHERE `entry` = 23872;
UPDATE `creature_template` SET `ScriptName` = 'npc_brewmaiden' WHERE `entry` IN (26822,26764);
   
  
  
SET @CREATURE_GUID := 4000150; -- 11 needed
SET @GOB_GUID := 400010; -- 1 needed

UPDATE `item_template` SET `ScriptName` = 'TW_item_water_bucket' WHERE `entry` = 32971;
UPDATE `creature_template` SET `ScriptName` = 'TW_npc_halloween_fire' WHERE `entry` = 23537;
UPDATE `creature_template` SET `flags_extra`=130 WHERE `entry`=23686; -- fire dummies should be invisible
UPDATE `creature_template` SET `HealthModifier`=20 WHERE `entry`=23543; -- HH should have 4440 hp

DELETE FROM `creature` WHERE `id` IN (23537,23686) AND `guid` BETWEEN @CREATURE_GUID+00 AND @CREATURE_GUID+10;
INSERT INTO `creature` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`modelid`,`equipment_id`,`position_x`,`position_y`,`position_z`,`orientation`,`spawntimesecs`,`spawndist`,`currentwaypoint`,`curhealth`,`curmana`,`MovementType`,`npcflag`,`unit_flags`,`dynamicflags`) VALUES
-- Spawn fire dummys for fire effigys
(@CREATURE_GUID+00,23537,530,1,1,0,0,-4192.38,-12268.1,2.53389,-1.72788,300,0,0,45780,0,0,0,0,0),
(@CREATURE_GUID+01,23537,530,1,1,0,0,-4207.84,-12276.7,4.82085,-0.069813,300,0,0,45780,0,0,0,0,0),
(@CREATURE_GUID+02,23537,0,1,1,0,0,-5753.24,-533.652,405.022,1.15192,300,0,0,45780,0,0,0,0,0),
(@CREATURE_GUID+03,23537,0,1,1,0,0,-5761.17,-528.193,404.855,1.16937,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+04,23537,0,1,1,0,0,-5747.52,-527.634,401.297,0.610865,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+05,23537,1,1,1,0,0,286.565,-4561.45,28.5742,2.42601,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+06,23537,530,1,1,0,0,9235.05,-6783.4,26.4426,1.5708,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+07,23537,0,1,1,0,0,2240.44,459.159,39.2838,0.820305,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+08,23537,0,1,1,0,0,2239.49,487.861,38.3446,-0.715585,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+09,23537,0,1,1,0,0,-9328.25,56.2778,63.2509,2.60054,300,0,0,15260,0,0,0,0,0),
(@CREATURE_GUID+10,23537,0,1,1,0,0,-9314.1,52.4562,77.7343,2.93215,300,0,0,15260,0,0,0,0,0);
-- Spawn Fire Handlers for villages
#(@CREATURE_GUID+11,23686,1,1,1,0,0,305.144,-4724.5,9.83766,3.68348,300,0,0,7185,7196,0,0,0,0),
#(@CREATURE_GUID+12,23686,0,1,1,0,0,-9465.54,63.2228,55.8587,6.25841,300,0,0,7185,7196,0,0,0,0);

DELETE FROM `game_event_creature` WHERE `guid` BETWEEN @CREATURE_GUID+00 AND @CREATURE_GUID+10;
INSERT INTO `game_event_creature` VALUES
(12, @CREATURE_GUID+00),
(12, @CREATURE_GUID+01),
(12, @CREATURE_GUID+02),
(12, @CREATURE_GUID+03),
(12, @CREATURE_GUID+04),
(12, @CREATURE_GUID+05),
(12, @CREATURE_GUID+06),
(12, @CREATURE_GUID+07),
(12, @CREATURE_GUID+08),
(12, @CREATURE_GUID+09),
(12, @CREATURE_GUID+10);
#(12, @CREATURE_GUID+11),
#(12, @CREATURE_GUID+12);

-- missing water bucket in Goldshire
DELETE FROM `gameobject` WHERE `guid`=@GOB_GUID;
INSERT INTO `gameobject` (`guid`,`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(@GOB_GUID,186234,0,1,1,-9430.03,60.747,56.7760,3.45835, 0, 0, 0.984808, 0.173648, 1, 100, 1);

DELETE FROM `game_event_gameobject` WHERE `guid`=@GOB_GUID;
INSERT INTO `game_event_gameobject` (`eventEntry`,`guid`) VALUES
(12,@GOB_GUID);

-- Fire Brigade Practice (Alliance) (Only 1 may be completed)
UPDATE `quest_template` SET `ExclusiveGroup` = 11360, `NextQuestId`= 12135 WHERE `id` IN (11360, 11439, 11440);
-- Fire Training (Horde) (Only 1 may be completed)
UPDATE `quest_template` SET `ExclusiveGroup` = 11361, `NextQuestId` = 12139 WHERE `id` IN (11361, 11449, 11450);
-- "Let the fires come" and Stop the Fires! (Only 1 may be completed) (Remove party accept)
UPDATE `quest_template` SET `Flags` = 4104, `ExclusiveGroup` = 12135, `PrevQuestId` = 0 WHERE `id` IN (12135, 11131); -- Alliance
UPDATE `quest_template` SET `Flags` = 4104, `ExclusiveGroup` = 12139, `PrevQuestId` = 0 WHERE `id` IN (12139, 11219); -- Horde
-- The Headless Horseman may only be taken if completed the quest "Smashing the pumpkin"
UPDATE `quest_template` SET `NextQuestId` = 11135 WHERE `id` = 12133; -- Alliance
UPDATE `quest_template` SET `NextQuestId` = 11220 WHERE `id` = 12155; -- Horde
UPDATE `quest_template` SET `RequiredRaces` = 1101, `ExclusiveGroup` = 0, `PrevQuestId` = 12133 WHERE `id` = 11135; -- Alliance
UPDATE `quest_template` SET `RequiredRaces` = 690, `ExclusiveGroup` = 0, `PrevQuestId` = 12155 WHERE `id` = 11220; -- Horde

UPDATE `creature_template` SET `ScriptName` = 'TW_npc_halloween_orphan_matron' WHERE `entry` IN (24519, 23973);
UPDATE `creature_template` SET `ScriptName` = 'TW_npc_shade_horseman' WHERE `entry` = 23543;

DELETE FROM creature_text WHERE entry=23543;
INSERT INTO creature_text (entry, groupid, id, TEXT, TYPE, LANGUAGE, probability, emote, duration, sound, COMMENT) VALUES
(23543,1,0,'Prepare yourselves, the bells have tolled! Shelter your weak, your young and your old! Each of you shall pay the final sum. Cry for mercy, the reckoning has come!',14,0,100,1,0,11966,'Shade of the Horseman - Horseman Bomb'),
(23543,2,0,'¡My flames have died, left not a spark. I shall send you myself, to the lifeless dark.',14,0,100,1,0,11968,'Shade of the Horseman - Horseman Out'),
(23543,3,0,'¡Fire consumes! You''ve tried and failed. Let there be no doubt, justice prevailed!',14,0,100,1,0,11967,'Shade of the Horseman - Horseman Fire'),
(23543,4,0,'<%s laughs>',16,0,100,11,0,11975,'Shade of the Horseman - Laugh1'),
(23543,4,1,'<%s laughs>',16,0,100,11,0,12119,'Shade of the Horseman - Laugh2');

-- HH in Scarlet Monastery needs to be able to fly
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=23682;

-- HH in Goldshire&Razor Hill needs to be able to fly
UPDATE `creature_template` SET `InhabitType`=5 WHERE `entry`=23543;
   
   
-- Pilgrim's Bounty event


-- Achievement: Pilgrim's Paunch
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11078,11079,11080,11081,11082,11083,11084,11085);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`) VALUES
-- Alliance
(11078, 6, 1657, 0),  -- Darnassus
(11078, 16, 404, 0),  -- Darnassus
(11079, 6, 809, 0),   -- Ironforge
(11079, 16, 404, 0),  -- Ironforge
(11080, 6, 3557, 0),  -- Exodar
(11080, 16, 404, 0),  -- Exodar
(11081, 6, 12, 0),    -- Stormwind
(11081, 16, 404, 0),  -- Stormwind
-- Horde
(11082, 6, 14, 0),    -- Orgrimmar
(11082, 16, 404, 0),  -- Orgrimmar
(11083, 6, 3470, 0),  -- Silvermoon City
(11083, 16, 404, 0),  -- Silvermoon City
(11084, 6, 1638, 0),  -- Thunder Bluff
(11084, 16, 404, 0),  -- Thunder Bluff
(11085, 6, 1497, 0),  -- Undercity
(11085, 16, 404, 0);  -- Undercity

-- Achievement: "FOOD FIGHT!"
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (11168,11178,11179,11180,11181);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES
(11168, 11, 0, 0, 'TW_achievement_food_fight'),
(11168, 16, 404, 0, ''),
(11178, 11, 0, 0, 'TW_achievement_food_fight'),
(11178, 16, 404, 0, ''),
(11179, 11, 0, 0, 'TW_achievement_food_fight'),
(11179, 16, 404, 0, ''),
(11180, 11, 0, 0, 'TW_achievement_food_fight'),
(11180, 16, 404, 0, ''),
(11181, 11, 0, 0, 'TW_achievement_food_fight'),
(11181, 16, 404, 0, '');


-- Achievement: The Turkinator
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=32820;
DELETE FROM `smart_scripts` WHERE `entryorguid`=32820 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(32820,0,0,0,6,0,100,0,0,0,0,0,85,62014,2,0,0,0,0,7,0,0,0,0,0,0,0,'On death - Cast Turkey Marker');

-- Item: Turkey Caller
UPDATE `creature_template` SET `faction`=35, `ScriptName` = 'TW_npc_lonely_turkey' WHERE `entry` =32956; -- Lonely Turkey

-- Achievement: The Turkinator
DELETE FROM `spell_script_names` WHERE `ScriptName`='TW_spell_gen_turkey_tracker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62014, 'TW_spell_gen_turkey_tracker'); -- Turkey Tracker

-- Feast On Spells
DELETE FROM `spell_script_names` WHERE `ScriptName`='TW_spell_gen_feast_on';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(61784, 'TW_spell_gen_feast_on'), -- Feast On Turkey
(61785, 'TW_spell_gen_feast_on'), -- Feast On Cranberries
(61786, 'TW_spell_gen_feast_on'), -- Feast On Sweet Potatoes
(61787, 'TW_spell_gen_feast_on'), -- Feast On Pie
(61788, 'TW_spell_gen_feast_on'); -- Feast On Stuffing

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'TW_spell_gen_well_fed_pilgrims_bounty_ap',
'TW_spell_gen_well_fed_pilgrims_bounty_zm',
'TW_spell_gen_well_fed_pilgrims_bounty_hit',
'TW_spell_gen_well_fed_pilgrims_bounty_haste',
'TW_spell_gen_well_fed_pilgrims_bounty_spirit');
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(61807, 'TW_spell_gen_well_fed_pilgrims_bounty_ap'),     -- A Serving of Turkey
(61804, 'TW_spell_gen_well_fed_pilgrims_bounty_zm'),     -- A Serving of Cranberries
(61806, 'TW_spell_gen_well_fed_pilgrims_bounty_hit'),    -- A Serving of Stuffing
(61808, 'TW_spell_gen_well_fed_pilgrims_bounty_haste'),  -- A Serving of Sweet Potatoes
(61805, 'TW_spell_gen_well_fed_pilgrims_bounty_spirit'); -- A Serving of Pie

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'TW_spell_gen_on_plate_pilgrims_bounty_turkey',
'TW_spell_gen_on_plate_pilgrims_bounty_cranberries',
'TW_spell_gen_on_plate_pilgrims_bounty_stuffing',
'TW_spell_gen_on_plate_pilgrims_bounty_sweet_potatoes',
'TW_spell_gen_on_plate_pilgrims_bounty_pie');
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(66250, 'TW_spell_gen_on_plate_pilgrims_bounty_turkey'),            -- Pass The Turkey
(66261, 'TW_spell_gen_on_plate_pilgrims_bounty_cranberries'),       -- Pass The Cranberries
(66259, 'TW_spell_gen_on_plate_pilgrims_bounty_stuffing'),          -- Pass The Stuffing
(66262, 'TW_spell_gen_on_plate_pilgrims_bounty_sweet_potatoes'),    -- Pass The Sweet Potatoes
(66260, 'TW_spell_gen_on_plate_pilgrims_bounty_pie');               -- Pass The Pie

DELETE FROM `spell_script_names` WHERE `ScriptName`='TW_spell_gen_bountiful_feast';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(66477, 'TW_spell_gen_bountiful_feast'); -- Bountiful Feast

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'TW_spell_gen_slow_roasted_turkey',
'TW_spell_gen_cranberry_chutney',
'TW_spell_gen_spice_bread_stuffing',
'TW_spell_gen_pumpkin_pie',
'TW_spell_gen_candied_sweet_potato');
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(65422, 'TW_spell_gen_slow_roasted_turkey'),   -- Slow-Roasted Turkey
(65420, 'TW_spell_gen_cranberry_chutney'),     -- Cranberry Chutney
(65419, 'TW_spell_gen_spice_bread_stuffing'),  -- Spice Bread Stuffing
(65421, 'TW_spell_gen_pumpkin_pie'),           -- Pumpkin Pie
(65418, 'TW_spell_gen_candied_sweet_potato');  -- Candied Sweet Potato

-- Temp Hack Fixes
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (32823,32830,32840);
DELETE FROM `vehicle_template_accessory` WHERE `entry` IN (32823,32830,32840);
-- Pilgrims Bounty: Chair hack root
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=65403;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES
(65403, 18373, 2, 'hack root pilgrim chairs');
   
  
  
UPDATE `creature_template` SET `ScriptName`='TW_npc_argent_squire' WHERE `entry` IN (
33518,  /* Squire Danny */
33522); /* Squire Cavin */

UPDATE `creature_template` SET `ScriptName`='TW_npc_argent_champion' WHERE `entry` IN (33707); /* Argent Champion */

-- add mount for argent champion
DELETE FROM `creature_template_addon` WHERE `entry`=33707;
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES
(33707, 0, 28919, 0, 0, 0, '');

-- add missing lance for the Argent Valiant
DELETE FROM `creature_equip_template` WHERE `entry`=33448;
INSERT INTO `creature_equip_template` (`entry`,`id`,`itemEntry1`) VALUES
(33448, 1, 46106);

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (9918,10224,10225,10226,10227,9919,9920,10228,9921,9922);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`) VALUES
(9918, 5, 64805, 0, ''), -- Darnassus
(10224, 5, 64808, 0, ''), -- Exodar
(10225, 5, 64809, 0, ''), -- Gnomeregan
(10226, 5, 64810, 0, ''), -- Ironforge
(10227, 5, 64811, 0, ''), -- Orgrimmar
(9919, 5, 64812, 0, ''), -- Sen'Jin
(9920, 5, 64813, 0, ''), -- Silvermoon
(10228, 5, 64814, 0, ''), -- Stormwind
(9921, 5, 64815, 0, ''), -- Thunder Bluff
(9922, 5, 64816, 0, ''); -- Undercity

UPDATE `creature_template` SET `ScriptName`='TW_npc_argent_faction_rider',`gossip_menu_id`=0,`speed_walk`=1.2,`unit_flags`=256 WHERE `entry` IN 
(33562,33559,33558,33564,33561,33382,33383,33384,33306,33285,33739,33738,33747,33743,33740,33746,33748,33744,33745,33749);

UPDATE `creature_template` SET `ScriptName`='TW_npc_the_black_knight' WHERE `entry`=33785;
   
  
  
-- Some Kologarn achievements
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (10284, 10722, 10285, 10095, 10290, 10133);
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `value2`, `ScriptName`) VALUES 
(10285, 11, 0, 0, 'achievement_with_open_arms'),
(10285, 12, 0, 0, ''),
(10095, 11, 0, 0, 'achievement_with_open_arms_25'),
(10095, 12, 1, 0, ''),
(10290, 11, 0, 0, 'achievement_rubble_and_roll'),
(10290, 12, 0, 0, ''),
(10133, 11, 0, 0, 'achievement_rubble_and_roll_25'),
(10133, 12, 1, 0, '');

DELETE FROM `disables` WHERE `entry` IN (10285, 10095, 10290, 10133) AND `sourceType` = 4;
   
  
  
-- Implements My Girl Loves to Skadi All the Ime (2156)
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 7595;
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`,
`value1`, `value2`, `ScriptName`) VALUES
(7595, 11, 0, 0, "TW_achievement_my_girl_loves_to_skadi_all_the_time");

DELETE FROM `disables` WHERE `entry` = 7595 AND `SourceType` = 4;
   
  
  
-- Move custom things to a separate entry value that is likely to be used on TC
-- doing this because the current merge overwrites these custom entries
DELETE FROM `trinity_string` WHERE `entry` IN (364,365);
DELETE FROM `trinity_string` WHERE `entry` IN (11500,11501,11502);
INSERT INTO `trinity_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(11500, 'Player not online!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11501, 'Online characters at account %s (Id: %u)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11502, '|cff00ff00Completed by|r:|cff00ccff %s|r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
   
 
   
DELETE FROM `spell_script_names` WHERE `scriptName` = 'spell_cultist_dark_martyrdom';
DELETE FROM `spell_script_names` WHERE `spell_id` = '57591';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('57591', 'spell_lava_strike');
DELETE FROM `disables` WHERE `sourceType` = '4' AND `entry` = '7327';
DELETE FROM `disables` WHERE `sourceType` = '4' AND `entry` = '7326';
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = '7326';
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = '7327';
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`, `value1`, `ScriptName`) VALUES
('7326', '11', '0', 'achievement_gonna_go_when_the_vulcano_blows'),
('7326', '12', '0', ''),
('7327', '11', '0', 'achievement_gonna_go_when_the_vulcano_blows'),
('7327', '12', '1', '');
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` = 7740 AND `type` = 0;
DELETE FROM `achievement_criteria_data`WHERE `criteria_id` = '7636' AND `type` = '0';
   
  
  
UPDATE `spell_dbc` SET `AttributesEx3` = 0 WHERE `Id` = 65142;
   
  
  
DELETE FROM `disables` WHERE `sourceType` = 4 AND `entry` IN (10068, 10069);
   
  
  
--
UPDATE `creature_template` SET `speed_run` = 0.42857 WHERE `entry` = 33886; 
   
  
  
DELETE FROM `spell_script_names` WHERE `spell_id` = 42264;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(42264, 'TW_spell_item_draenic_pale_ale');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE  `entry`=27958;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 27958 AND `source_type` =0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(27958, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 29, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Parading Pink Elekk - On Summon - Follow Invoker');
   
  
  

DELETE FROM `creature_template_addon` WHERE `entry` IN (38374, 23231, 25706, 24968, 40295, 36979);
INSERT INTO `creature_template_addon` (`entry`, `auras`) VALUES 
(38374, '71849'), -- Toxic Wasteling Passive
(23231, '40619'), -- willy
(25706, '45887'), -- Scorchling
(24968, '45266'), -- Clockwork Rocket Bot
(40295, '45266'), -- Blue Clockwork Rocket Bot
(36979, '69683 69732'); -- Lil KT

DELETE FROM `spell_script_names` WHERE `spell_id` IN (45888, 40638, 69682, 71848, 45267);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(45888, 'TW_spell_scorchling_focus'),
(40638, 'TW_spell_willy_focus'),
(69682, 'TW_spell_lil_kt_focus'),
(71848, 'TW_spell_toxic_wasteling_focus'),
(45267, 'TW_spell_rocket_bot_focus');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = 71847;
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
(71847, 71874, 0, 'Toxic Wasteling - Devour');
   
  
