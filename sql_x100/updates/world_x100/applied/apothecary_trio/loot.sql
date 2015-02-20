-- Hummel's Loot Template currently holds everything (all necklaces, mount, pet and rest of the stuff)
-- Delete items from Apothecary Hummel that should be inside the Heart-Shaped Box
DELETE FROM `creature_loot_template` WHERE `entry`=36296 AND `item` IN (49715,50250,50471,50446,50741);
-- Insert items into Heart-Shaped Box
SET @BOX := 54537; -- Heart-Shaped Box
DELETE FROM `item_loot_template` WHERE `entry`=@BOX;
INSERT INTO `item_loot_template` (`entry`, `item`, `Chance`, `lootmode`, `groupid`, `Mincount`, `Maxcount`) VALUES
(@BOX,50250,2,1,0,1,1), -- Big Love Rocket
(@BOX,50446,2,1,0,1,1), -- Toxic Wasteling
(@BOX,50471,5,1,0,1,1), -- The Heartbreaker
(@BOX,50741,5,1,0,1,1), -- Vile Fumigator's Mask
(@BOX,49715,5,1,0,1,1), -- Forever-Lovely Rose
(@BOX,49426,100,1,1,2,2); -- 1-2 Emblems of Frost