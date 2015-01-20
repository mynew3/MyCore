-- Lunar 0
-- Lita  1
-- Noblegarden 2
-- Childrens week 3
-- Midsummer 4
-- Brewfest 5
-- Hallows End 6
-- Pilgrims 7
-- Winterveil 8

-- Undead  Hallows End Winterveil
-- Bloodelf Luna winterveil midsummer
-- Orc Luna brewfest hallows end 
-- Troll Luna 
-- Tauren 
-- Goblin Hallows end   Winterveil
-- Human Luna Hallows end
-- Gnome Hallows end
-- Dwarf 
-- Lunar
-- Night elf
-- Dreanei Brewfest

UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry`IN(20102,18927,19177,19169,19175,19171,19172,19176,19178);

DELETE FROM `smart_scripts` WHERE `entryorguid`IN(20102,18927,19177,19169,19175,19171,19172,19176,19178)  AND `source_type`=0;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(20102,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Commoner - OOC - Say'),
(18927,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Human Commoner - OOC - Say'),
(19177,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Troll Commoner - OOC - Say'),
(19169,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood Elf Commoner - OOC - Say'),
(19175,0,0,0,1,0,100,0,3000,15000,45000,90000,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,'Orc Commoner - OOC - Say'),
(19169,0,4,0,1,0,100,0,3000,15000,45000,90000,1,4,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood Elf Commoner - OOC - Say'),
(19175,0,5,0,1,0,100,0,3000,15000,45000,90000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Orc Commoner - OOC - Say'),
(19171,0,5,0,1,0,100,0,3000,15000,45000,90000,1,5,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood Elf Commoner - OOC - Say'),
(20102,0,6,0,1,0,100,0,3000,15000,45000,90000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Commoner - OOC - Say'),
(19172,0,6,0,1,0,100,0,3000,15000,45000,90000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gnome Commoner - OOC - Say'),
(18927,0,6,0,1,0,100,0,3000,15000,45000,90000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Human Commoner - OOC - Say'),
(19175,0,6,0,1,0,100,0,3000,15000,45000,90000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Orc Commoner - OOC - Say'),
(19178,0,6,0,1,0,100,0,3000,15000,45000,90000,1,6,0,0,0,0,0,1,0,0,0,0,0,0,0,'Forsaken Commoner - OOC - Say'),
(19178,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Forsaken Commoner - OOC - Say'),
(20102,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Goblin Commoner - OOC - Say'),
(19169,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Blood Elf Commoner - OOC - Say');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` in(20102,18927,19177,19169,19175,19171,19172,19176,19178);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 1, 20102, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 18927, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19175, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19169, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 1, 19177, 0, 0, 12, 1, 7, 0, 0, 0, 0, 0, '', 'Commoner - Luna Festival must be active'),
(22, 5, 19169, 0, 0, 12, 1, 1, 0, 0, 0, 0, 0, '', 'Commoner - Midsummer must be active'),
(22, 6, 19175, 0, 0, 12, 1, 24, 0, 0, 0, 0, 0, '', 'Commoner - BrewFest must be active'),
(22, 6, 19171, 0, 0, 12, 1, 24, 0, 0, 0, 0, 0, '', 'Commoner - BrewFest must be active'),
(22, 7, 20102, 0, 0, 12, 1, 12, 0, 0, 0, 0, 0, '', 'Commoner - Hallows End must be active'),
(22, 7, 19172, 0, 0, 12, 1, 12, 0, 0, 0, 0, 0, '', 'Commoner - Hallows End must be active'),
(22, 7, 18927, 0, 0, 12, 1, 12, 0, 0, 0, 0, 0, '', 'Commoner - Hallows End must be active'),
(22, 7, 19175, 0, 0, 12, 1, 12, 0, 0, 0, 0, 0, '', 'Commoner - Hallows End must be active'),
(22, 7, 19178, 0, 0, 12, 1, 12, 0, 0, 0, 0, 0, '', 'Commoner - Hallows End must be active'),
(22, 9, 20102, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19169, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19178, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active');

DELETE FROM `creature_text` WHERE `entry` IN(20102,18927,19177,19169,19175,19171,19172,19176,19178);
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(20102, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 0, 100, 0, 0, 0, 16465, 'Goblin Commoner to Goblin Commoner'),
(20102, 0, 1, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 0, 100, 0, 0, 0, 16468, 'Goblin Commoner to Goblin Commoner'),
(18927, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 7, 100, 274, 0, 0, 24350, 'Human Commoner to Human Commoner'),
(19177, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Troll Commoner to Troll Commoner'),
(19169, 0, 0, 'Legend says that the great beast Omen sleeps in the waters of Lake Elune''ara in Moonglade, only to appear once a year. But that''s just a legend.', 12, 1, 100, 0, 0, 0, 24332, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 0, 1, 'The festival of the moon was ever more important to the kaldorei. The great festival of the druids is surely in full swing.', 12, 1, 100, 274, 0, 0, 16171, 'Blood Elf Commoner to Blood Elf Commoner'),
(19175, 0, 0, 'During the Lunar Festival, we should take time to seek out our elders and consider their wisdom.', 12, 1, 100, 0, 0, 0, 24333, 'Orc Commoner to Orc Commoner'),
(19175, 0, 1, 'Have you seen the fireworks? This is the best time of year to buy them.', 12, 1, 100, 0, 0, 0, 24334, 'Orc Commoner to Orc Commoner'),
(19175, 0, 2, 'The druids of Nighthaven are holding a great celebration in Moonglade for the Lunar Festival.', 12, 1, 100, 0, 0, 0, 24335, 'Orc Commoner to Orc Commoner'),
-- Brew Fest
(19171, 5, 0, 'To Brewfest!', 12, 7, 100, 5, 0, 0, 23630, 'Draenei Commoner to Draenei Commoner'),
(19175, 5, 0, 'Where''s me gold? Where''s me beer? Where''s me feet?', 12, 1, 100, 5, 0, 0, 23352, 'Orc Commoner to Orc Commoner'),
-- Hallows end
(20102, 6, 0, 'There MUST be a way to make more money off of this holiday.', 12, 0, 100, 0, 0, 0, 23299, 'Goblin Commoner to Goblin Commoner'),
(20102, 6, 1, 'For the Alliance! Wait... the Horde! Wait... which was I again?', 12, 0, 100, 4, 0, 149, 23364, 'Goblin Commoner to Goblin Commoner'),
(20102, 6, 2, 'The innkeepers are mad to be giving away treats for free.', 12, 0, 100, 0, 0, 0, 23300, 'Goblin Commoner to Goblin Commoner'),
(20102, 6, 3, 'Happy Hallow''s End!', 12, 0, 100, 0, 0, 0, 23284, 'Goblin Commoner to Goblin Commoner'),
(19172, 6, 0, 'We should go trick or treating later.', 12, 7, 100, 0, 0, 0, 24348, 'Gnome Commoner to Gnome Commoner'),
(19172, 6, 1, 'Happy Hallow''s End!', 12, 7, 100, 0, 0, 0, 24346, 'Gnome Commoner to Gnome Commoner'),
(19172, 6, 2, 'We should go trick or treating later.', 12, 7, 100, 1, 0, 0, 24348, 'Gnome Commoner to Gnome Commoner'),
(19172, 6, 3, 'Me got the mad voodoo, mon!', 12, 7, 100, 1, 0, 0, 23361, 'Gnome Commoner to Gnome Commoner'),
(18927, 6, 0, 'I think I''ve eaten too much candy...', 12, 7, 100, 15, 0, 0, 24347, 'Human Commoner to Human Commoner'),
(18927, 6, 1, 'Brains... braaaiiins!', 12, 7, 100, 15, 0, 0, 23358, 'Human Commoner to Human Commoner'),
(18927, 6, 2, 'We should go trick or treating later.', 12, 7, 100, 0, 0, 0, 24348, 'Human Commoner to Human Commoner'),
(18927, 6, 3, 'I think I''ve eaten too much candy...', 12, 7, 100, 0, 0, 0, 24347, 'Human Commoner to Human Commoner'),
(18927, 6, 4, 'Are there any more inns we can visit for treats?', 12, 7, 100, 0, 0, 0, 23293, 'Human Commoner to Human Commoner'),
(18927, 6, 5, 'Next year, I''m dressing up as either a corsair or an assassin.', 12, 7, 100, 0, 0, 0, 24338, 'Human Commoner to Human Commoner'),
(18927, 6, 6, 'What do you think of the mask?', 12, 7, 100, 0, 0, 0, 24339, 'Human Commoner to Human Commoner'),
(18927, 6, 7, 'You know... why DO we celebrate this holiday?', 12, 7, 100, 0, 0, 0, 23287, 'Human Commoner to Human Commoner'),
(19175, 6, 0, 'Happy Hallow''s End!', 12, 1, 100, 0, 0, 0, 24329, 'Orc Commoner to Orc Commoner'),
(19175, 6, 1, 'Next year, I''m dressing up as either a corsair or an assassin.', 12, 1, 100, 0, 0, 0, 24336, 'Orc Commoner to Orc Commoner'),
(19175, 6, 2, 'The Forsaken are right to celebrate their freedom.', 12, 1, 100, 0, 0, 0, 23295, 'Orc Commoner to Orc Commoner'),
(19175, 6, 3, 'We should attend the next burning of the Wickerman.', 12, 1, 100, 0, 0, 0, 23292, 'Orc Commoner to Orc Commoner'),
(19175, 6, 4, 'What do you think of the mask?', 12, 1, 100, 0, 0, 0, 24337, 'Orc Commoner to Orc Commoner'),
(19175, 6, 5, 'We should go trick or treating later.', 12, 1, 100, 1, 0, 0, 24331, 'Orc Commoner to Orc Commoner'),
(19178, 6, 0, 'We should go trick or treating later.', 12, 1, 100, 0, 0, 0, 24331, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 6, 1, 'Happy Hallow''s End!', 12, 1, 100, 0, 0, 0, 24329, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 6, 2, 'I think I''ve eaten too much candy...', 12, 1, 100, 15, 0, 0, 24330, 'Forsaken Commoner to Forsaken Commoner'),
-- Winterveil
(19178, 8, 0, 'Winter Veil just isn''t the same now, but going through the motions still makes me feel something.', 12, 1, 100, 0, 0, 0, 16167, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 1, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 6, 0, 0, 16464, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 2, 'Where are all those wonderful winter hats coming from?', 12, 1, 100, 0, 0, 0, 24325, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 3, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 0, 0, 0, 24323, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 4, 'Winter Veil just isn''t the same now, but going through the motions still makes me feel something.', 12, 1, 100, 396, 0, 0, 16167, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 5, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 273, 0, 0, 24323, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 6, 'Where are all those wonderful winter hats coming from?', 12, 1, 100, 273, 0, 0, 24325, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 7, 'Winter Veil just isn''t the same now, but going through the motions still makes me feel something.', 12, 1, 100, 6, 0, 0, 16167, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 8, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 1, 100, 273, 0, 0, 24324, 'Forsaken Commoner to Forsaken Commoner'),
(19178, 8, 9, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 396, 0, 0, 16464, 'Forsaken Commoner to Forsaken Commoner'),
(20102, 8, 0, 'Where are all those wonderful winter hats coming from?', 12, 0, 100, 0, 0, 0, 16503, 'Goblin Commoner to Goblin Commoner'),
(20102, 8, 1, 'Ah, the Winter Wondervolt. What will we think of next?', 12, 0, 100, 0, 0, 0, 16501, 'Goblin Commoner to Goblin Commoner'),
(20102, 8, 2, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 0, 100, 0, 0, 0, 0, 'Goblin Commoner to Goblin Commoner'),
(20102, 8, 3, 'Ah, the Winter Wondervolt. What will we think of next?', 12, 0, 100, 274, 0, 0, 16501, 'Goblin Commoner to Goblin Commoner'),
(19169, 8, 0, 'Winter Veil has always been a human thing. To see the goblins and orcs take it up is rather strange.', 12, 1, 100, 0, 0, 0, 16173, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 8, 1, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 0, 0, 0, 16464, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 8, 2, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 6, 0, 0, 16464, 'Blood Elf Commoner to Blood Elf Commoner'),
(19169, 8, 3, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 0, 0, 0, 24323, 'Blood Elf Commoner to Blood Elf Commoner'),
-- Midsummer
(19169, 4, 0, 'The Horde fires will never be extinguished!', 12, 1, 100, 4, 0, 0, 24534, 'Blood Elf Commoner to Blood Elf Commoner');
UPDATE `creature` SET `phaseMask`=2 WHERE  `id` In(31310,31313,31328,31330);
DELETE FROM `creature_text` WHERE `entry` IN(18927,19171,19175,19177,19173,19172,19176,19148) AND `groupid`=8;
DELETE FROM `creature_text` WHERE `entry` =15746;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `BroadcastTextID`, `comment`) VALUES
(18927, 8, 0, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 7, 100, 6, 0, 0, 24341, 'Human Commoner to Human Commoner'),
(18927, 8, 1, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 7, 100, 0, 0, 0, 24341, 'Human Commoner to Human Commoner'),
(18927, 8, 2, 'I should take the tram to Ironforge and visit Greatfather Winter.', 12, 7, 100, 6, 0, 0, 16032, 'Human Commoner to Human Commoner'),
(18927, 8, 3, 'Greatfather Winter will leave presents for everyone under the tree in Ironforge. I can''t wait to get mine!', 12, 7, 100, 0, 0, 0, 16422, 'Human Commoner to Human Commoner'),
(18927, 8, 4, 'Greatfather Winter will leave presents for everyone under the tree in Ironforge. I can''t wait to get mine!', 12, 7, 100, 396, 0, 0, 16422, 'Human Commoner to Human Commoner'),
(18927, 8, 5, 'I should take the tram to Ironforge and visit Greatfather Winter.', 12, 7, 100, 0, 0, 0, 16032, 'Human Commoner to Human Commoner'),
(18927, 8, 6, 'Where are all those wonderful winter hats coming from?', 12, 7, 100, 0, 0, 0, 24342, 'Human Commoner to Human Commoner'),
(18927, 8, 7, 'I should take the tram to Ironforge and visit Greatfather Winter.', 12, 7, 100, 396, 0, 0, 16032, 'Human Commoner to Human Commoner'),
(19171, 8, 0, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 7, 100, 0, 0, 0, 24341, 'Draenei Commoner to Draenei Commoner'),
(19171, 8, 1, 'Where are all those wonderful winter hats coming from?', 12, 7, 100, 0, 0, 0, 24342, 'Draenei Commoner to Draenei Commoner'),
(19171, 8, 2, 'Greatfather Winter will leave presents for everyone under the tree in Ironforge. I can''t wait to get mine!', 12, 7, 100, 0, 0, 0, 16422, 'Draenei Commoner to Draenei Commoner'),
(19171, 8, 3, 'It is my understanding that the people of the Alliance celebrate this Winter Veil in Ironforge.', 12, 7, 100, 0, 0, 0, 16161, 'Draenei Commoner to Draenei Commoner'),
(19175, 8, 0, 'Though we do not truly understand the traditions of Winter Veil, we have taken to them.', 12, 1, 100, 0, 0, 0, 16164, 'Orc Commoner to Orc Commoner'),
(19175, 8, 1, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 0, 0, 0, 24323, 'Orc Commoner to Orc Commoner'),
(19175, 8, 2, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 6, 0, 0, 24323, 'Orc Commoner to Orc Commoner'),
(19177, 8, 0, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 0, 0, 0, 24323, 'Troll Commoner to Troll Commoner'),
(19177, 8, 1, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 0, 0, 0, 16464, 'Troll Commoner to Troll Commoner'),
(19177, 8, 2, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 1, 100, 0, 0, 0, 24324, 'Troll Commoner to Troll Commoner'),
(15746, 8, 0, 'Presents for everyone! Father Winter''s put gifts under the tree for all.', 14, 0, 100, 0, 0, 0, 11430, 'Great-father Winter''s Helper'),
(19173, 8, 0, 'It feels like everyone wants to kiss me under the mistletoe.', 12, 7, 100, 0, 0, 0, 16158, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 8, 1, 'It feels like everyone wants to kiss me under the mistletoe.', 12, 7, 100, 396, 0, 0, 16158, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 8, 2, 'Where are all those wonderful winter hats coming from?', 12, 7, 100, 0, 0, 0, 24342, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 8, 3, 'Greatfather Winter will leave presents for everyone under the tree in Ironforge. I can''t wait to get mine!', 12, 7, 100, 6, 0, 0, 16422, 'Night Elf Commoner to Night Elf Commoner'),
(19173, 8, 4, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 7, 100, 0, 0, 0, 0, 'Night Elf Commoner to Night Elf Commoner'),
(19172, 8, 0, 'Greatfather Winter will leave presents for everyone under the tree in Ironforge. I can''t wait to get mine!', 12, 7, 100, 0, 0, 0, 16422, 'Gnome Commoner to Gnome Commoner'),
(19172, 8, 1, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 7, 100, 0, 0, 0, 24340, 'Gnome Commoner to Gnome Commoner'),
(19172, 8, 2, 'How embarrassing! Someone mistook me for one of Greatfather Winter''s helpers.', 12, 7, 100, 0, 0, 0, 016204, 'Gnome Commoner to Gnome Commoner'),
(19172, 8, 3, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 7, 100, 273, 0, 0, 24340, 'Gnome Commoner to Gnome Commoner'),
(19172, 8, 4, 'Where are all those wonderful winter hats coming from?', 12, 7, 100, 0, 0, 0, 24342, 'Gnome Commoner to Gnome Commoner'),
(19176, 8, 0, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 1, 100, 0, 0, 0, 24323, 'Tauren Commoner to Tauren Commoner'),
(19176, 8, 1, 'Greatfather Winter will leave presents for everyone under the tree in Orgrimmar. I wonder what he''ll bring me this year.', 12, 1, 100, 0, 0, 0, 16464, 'Tauren Commoner to Tauren Commoner'),
(19176, 8, 2, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 1, 100, 0, 0, 0, 24324, 'Tauren Commoner to Tauren Commoner'),
(19176, 8, 3, 'Greatfather Winter is only a wyvern''s ride away to Orgrimmar.', 12, 1, 100, 0, 0, 0, 16170, 'Tauren Commoner to Tauren Commoner'),
(19148, 8, 0, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 7, 100, 0, 0, 0, 24341, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 8, 1, 'Where are all those wonderful winter hats coming from?', 12, 7, 100, 274, 0, 0, 24342, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 8, 2, 'I hope I have a chance to visit with Greatfather Winter before Winter Veil is over.', 12, 7, 100, 0, 0, 0, 24340, 'Dwarf Commoner to Dwarf Commoner'),
(19148, 8, 3, 'The goblins of Smokywood Pastures always have such wonderful treats for sale this time of year.', 12, 7, 100, 0, 0, 0, 24341, 'Dwarf Commoner to Dwarf Commoner');


UPDATE `creature_template` SET `ainame`='SmartAI', `scriptname`='' WHERE `entry`IN(19148,15746,19173);
DELETE FROM `smart_scripts` WHERE `entryorguid`=15746  AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(18927,19171,19175,19177,19173,19172,19176,19148)  AND `source_type`=0 AND  `id`=8;
DELETE FROM `smart_scripts` WHERE `entryorguid`IN(18927,19171,19175,19177,19173,19172,19176,19148,19148,19173)  AND `source_type`=0 AND  `id`=9;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(18927,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Human Commoner - OOC - Say'),
(19171,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dreani Commoner - OOC - Say'),
(19175,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Orc Commoner - OOC - Say'),
(19177,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Troll Commoner - OOC - Say'),
(19173,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Night Elf Commoner - OOC - Say'),
(19172,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Gnome Commoner - OOC - Say'),
(19176,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Tauren Commoner - OOC - Say'),
(19148,0,8,0,1,0,100,0,3000,15000,45000,90000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Dwarf Commoner - OOC - Say'),
(15746,0,0,0,1,0,100,0,3000,15000,600000,600000,1,8,0,0,0,0,0,1,0,0,0,0,0,0,0,'Great-father Winter''s Helper - OOC - Say'),

(18927,0,9,0,64,0,100,0,0,0,0,0,98,7862, 9626,0,0,0,0,7,0,0,0,0,0,0,0,'Human Commoner - On Gossip Hello - Send Gossip Menu'),
(19148,0,9,0,64,0,100,0,0,0,0,0,98,7907, 9686,0,0,0,0,7,0,0,0,0,0,0,0,'Dwarf Commoner - On Gossip Hello - Send Gossip Menu'),
(19169,0,9,0,64,0,100,0,0,0,0,0,98,7911, 9698,0,0,0,0,7,0,0,0,0,0,0,0,'Blood Elf Commoner - On Gossip Hello - Send Gossip Menu'),
(19171,0,9,0,64,0,100,0,0,0,0,0,98,7910, 9694,0,0,0,0,7,0,0,0,0,0,0,0,'Draeni Commoner - On Gossip Hello - Send Gossip Menu'),
(19172,0,9,0,64,0,100,0,0,0,0,0,98,7929, 9717,0,0,0,0,7,0,0,0,0,0,0,0,'Gnome Commoner - On Gossip Hello - Send Gossip Menu'),
(19173,0,9,0,64,0,100,0,0,0,0,0,98,7909, 9690,0,0,0,0,7,0,0,0,0,0,0,0,'Night Elf Commoner - On Gossip Hello - Send Gossip Menu'),
(19175,0,9,0,64,0,100,0,0,0,0,0,98,7912, 9702,0,0,0,0,7,0,0,0,0,0,0,0,'Orc Commoner - On Gossip Hello - Send Gossip Menu'),
(19176,0,9,0,64,0,100,0,0,0,0,0,98,7913, 9706,0,0,0,0,7,0,0,0,0,0,0,0,'Tauren Commoner - On Gossip Hello - Send Gossip Menu'),
(19177,0,9,0,64,0,100,0,0,0,0,0,98,7933, 9718,0,0,0,0,7,0,0,0,0,0,0,0,'Troll Commoner - On Gossip Hello - Send Gossip Menu'),
(19178,0,9,0,64,0,100,0,0,0,0,0,98,7914, 9710,0,0,0,0,7,0,0,0,0,0,0,0,'Forsaken Commoner - On Gossip Hello - Send Gossip Menu');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` in(18927,19171,19175,19177,19173,19172,19176,19148) AND `SourceGroup`=9;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` in(18927,19171,19175,19177,19173,19172,19176,19148,19148,19173) AND `SourceGroup`=10;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=22 AND `SourceEntry` =15746;

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(22, 9, 18927, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19171, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19175, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19177, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19173, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19172, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19176, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 9, 19148, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 1, 15746, 0, 0, 12, 1, 52, 0, 0, 0, 0, 0, '', 'Great-father Winter''s Helper - Winter Veil: Gifts must be active'),
(22, 10, 18927, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19148, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19169, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19171, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19172, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19173, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19175, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19176, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19177, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active'),
(22, 10, 19178, 0, 0, 12, 1, 2, 0, 0, 0, 0, 0, '', 'Commoner - Winterveil must be active');

DELETE FROM `gossip_menu` WHERE `entry` IN(7929,7913,7912,7909,7862,7907,7911,7914,7933,7910);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES 
(7929, 9717), -- 19172
(7913, 9706), -- 19176
(7912, 9702), -- 19175
(7909, 9690), -- 19173
(7862, 9626), -- 18927
(7907, 9686), -- 19148
(7911, 9698), -- 19169
(7914, 9710), -- 19178
(7933, 9718), -- 19177
(7910, 9694); -- 19171

-- Fix Karazhan opera event game objects 
-- Interaction fix => Disable player interaction with Door and Curtain
UPDATE `gameobject_template` SET `flags` = 16 WHERE `entry` IN (184278,184279,183932);

DELETE FROM pet_levelstats WHERE creature_entry = 29264;
INSERT INTO pet_levelstats (creature_entry, level, hp, mana, armor, str, agi, sta, inte, spi) VALUES 
(29264, 80, 5161, 1, 9784, 331, 158, 356, 70, 115),
(29264, 79, 5050, 1, 9485, 327, 155, 351, 69, 113),
(29264, 78, 4939, 1, 9186, 323, 152, 346, 68, 111),
(29264, 77, 4828, 1, 8887, 319, 149, 341, 67, 109),
(29264, 76, 4717, 1, 8588, 314, 146, 336, 66, 107),
(29264, 75, 4606, 1, 8289, 310, 143, 331, 65, 105),
(29264, 74, 4495, 1, 7990, 306, 140, 326, 64, 103),
(29264, 73, 4384, 1, 7691, 302, 137, 321, 63, 101),
(29264, 72, 4273, 1, 7392, 298, 134, 316, 62, 99),
(29264, 71, 4162, 1, 7093, 294, 131, 311, 61, 97),
(29264, 70, 4051, 1, 6794, 290, 128, 307, 60, 99),
(29264, 69, 3941, 1, 6495, 285, 125, 302, 59, 97),
(29264, 68, 3834, 1, 6197, 281, 122, 297, 58, 95),
(29264, 67, 3728, 1, 5900, 277, 119, 292, 57, 93),
(29264, 66, 3624, 1, 5601, 273, 116, 287, 56, 91),
(29264, 65, 3524, 1, 5303, 269, 113, 281, 55, 89),
(29264, 64, 3425, 1, 5006, 265, 110, 276, 54, 87),
(29264, 63, 3331, 1, 4708, 261, 107, 271, 53, 85),
(29264, 62, 3237, 1, 4410, 257, 105, 266, 52, 83),
(29264, 61, 3144, 1, 4113, 252, 102, 161, 51, 81),
(29264, 60, 3052, 1, 3814, 248, 100, 256, 50, 80),
(29264, 59, 2961, 1, 3512, 244, 98, 250, 49, 78),
(29264, 58, 2871, 1, 3457, 240, 96, 245, 48, 77),
(29264, 57, 2784, 1, 3402, 236, 94, 241, 48, 76),
(29264, 56, 2699, 1, 3348, 232, 92, 236, 47, 74),
(29264, 55, 2614, 1, 3292, 228, 91, 231, 47, 73),
(29264, 54, 2533, 1, 3237, 223, 89, 226, 45, 72),
(29264, 53, 2453, 1, 3183, 219, 87, 221, 45, 70),
(29264, 52, 2371, 1, 3128, 215, 85, 216, 44, 69),
(29264, 51, 2292, 1, 3072, 211, 84, 212, 44, 68),
(29264, 50, 2215, 1, 3018, 207, 82, 207, 43, 67),
(29264, 49, 2138, 1, 2963, 203, 80, 202, 42, 66),
(29264, 48, 2062, 1, 2907, 199, 79, 197, 42, 64),
(29264, 47, 1990, 1, 2853, 194, 77, 193, 41, 63),
(29264, 46, 1919, 1, 2798, 190, 75, 188, 41, 62),
(29264, 45, 1848, 1, 2742, 186, 74, 184, 40, 61),
(29264, 44, 1782, 1, 2574, 182, 72, 178, 39, 59),
(29264, 43, 1716, 1, 2414, 178, 71, 174, 39, 58),
(29264, 42, 1651, 1, 2262, 174, 69, 169, 38, 57),
(29264, 41, 1585, 1, 2117, 170, 68, 165, 38, 56),
(29264, 40, 1524, 1, 1980, 166, 66, 160, 37, 55),
(29264, 39, 1459, 1, 1849, 161, 64, 155, 36, 54),
(29264, 38, 1395, 1, 1724, 157, 63, 151, 36, 52),
(29264, 37, 1336, 1, 1607, 153, 61, 146, 35, 52),
(29264, 36, 1277, 1, 1494, 149, 60, 142, 35, 50),
(29264, 35, 1220, 1, 1387, 145, 59, 138, 35, 49),
(29264, 34, 1163, 1, 1353, 141, 57, 132, 33, 48),
(29264, 33, 1110, 1, 1317, 137, 56, 128, 33, 46),
(29264, 32, 1057, 1, 1283, 132, 54, 124, 33, 46),
(29264, 31, 1006, 1, 1247, 128, 53, 120, 32, 44),
(29264, 30, 955, 1, 1212, 124, 52, 115, 32, 44),
(29264, 29, 905, 1, 1177, 120, 50, 110, 31, 42),
(29264, 28, 853, 1, 1142, 116, 49, 106, 30, 41),
(29264, 27, 800, 1, 1108, 112, 47, 102, 30, 40),
(29264, 26, 750, 1, 1072, 108, 46, 98, 30, 39),
(29264, 25, 699, 1, 1037, 103, 45, 94, 29, 39),
(29264, 24, 651, 1, 1002, 99, 43, 88, 28, 37),
(29264, 23, 605, 1, 967, 95, 42, 84, 28, 36),
(29264, 22, 562, 1, 932, 91, 40, 80, 27, 35),
(29264, 21, 521, 1, 897, 87, 39, 76, 27, 34),
(29264, 20, 484, 1, 861, 83, 39, 72, 27, 33),
(29264, 19, 449, 1, 826, 79, 37, 67, 26, 32),
(29264, 18, 417, 1, 791, 74, 36, 63, 25, 30),
(29264, 17, 386, 1, 756, 70, 34, 59, 25, 30),
(29264, 16, 356, 1, 721, 66, 33, 55, 25, 29),
(29264, 15, 328, 1, 685, 62, 32, 51, 24, 28),
(29264, 14, 300, 1, 650, 58, 31, 46, 23, 27),
(29264, 13, 273, 1, 615, 54, 30, 42, 23, 25),
(29264, 12, 247, 1, 580, 50, 28, 38, 23, 25),
(29264, 11, 222, 1, 545, 46, 27, 34, 22, 24),
(29264, 10, 198, 1, 518, 41, 26, 30, 22, 23),
(29264, 9, 176, 1, 412, 37, 26, 29, 22, 23),
(29264, 8, 156, 1, 322, 33, 25, 28, 22, 22),
(29264, 7, 137, 1, 245, 29, 24, 27, 21, 22),
(29264, 6, 120, 1, 180, 25, 24, 26, 21, 22),
(29264, 5, 102, 1, 126, 21, 23, 25, 21, 21),
(29264, 4, 86, 1, 82, 17, 22, 25, 21, 21),
(29264, 3, 71, 1, 46, 12, 21, 24, 20, 21),
(29264, 2, 55, 1, 21, 8, 21, 23, 20, 20),
(29264, 1, 42, 1, 20, 4, 20, 22, 20, 20);

