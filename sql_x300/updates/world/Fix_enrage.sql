SET @GUID = 1104; -- Set the ID for your stack_rules in your db
 
DELETE FROM `spell_group_stack_rules` WHERE `group_id`=@GUID;
INSERT INTO `spell_group_stack_rules`(`group_id`,`stack_rule`) VALUES (@GUID,1);
 
DELETE FROM `spell_group` WHERE `id`=@GUID;
INSERT INTO `spell_group`(`id`,`spell_id`) VALUES
(@GUID,14204),
(@GUID,57516),
(@GUID,57522);