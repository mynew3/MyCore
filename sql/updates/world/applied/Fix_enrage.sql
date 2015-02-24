SET @GUID = 1104; -- Set the ID for your stack_rules in your db
 
DELETE FROM `spell_group_stack_rules` WHERE `group_id`=@GUID;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES (@GUID,1);
 
DELETE FROM `spell_group` WHERE `id`=@GUID;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(@GUID,14204),
(@GUID,57516),
(@GUID,57522),
(@GUID,12317),
(@GUID,13045),
(@GUID,13046),
(@GUID,13047),
(@GUID,13048),
(@GUID,46867),
(@GUID,56611),
(@GUID,55612),
(@GUID,56613),
(@GUID,56614);