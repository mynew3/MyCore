-- Achievement: The Turkinator
DELETE FROM `spell_script_names` WHERE `ScriptName`='EC_spell_gen_turkey_tracker';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(62014, 'EC_spell_gen_turkey_tracker'); -- Turkey Tracker

-- Feast On Spells
DELETE FROM `spell_script_names` WHERE `ScriptName`='EC_spell_gen_feast_on';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(61784, 'EC_spell_gen_feast_on'), -- Feast On Turkey
(61785, 'EC_spell_gen_feast_on'), -- Feast On Cranberries
(61786, 'EC_spell_gen_feast_on'), -- Feast On Sweet Potatoes
(61787, 'EC_spell_gen_feast_on'), -- Feast On Pie
(61788, 'EC_spell_gen_feast_on'); -- Feast On Stuffing

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'EC_spell_gen_well_fed_pilgrims_bounty_ap',
'EC_spell_gen_well_fed_pilgrims_bounty_zm',
'EC_spell_gen_well_fed_pilgrims_bounty_hit',
'EC_spell_gen_well_fed_pilgrims_bounty_haste',
'EC_spell_gen_well_fed_pilgrims_bounty_spirit'
);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(61807, 'EC_spell_gen_well_fed_pilgrims_bounty_ap'),     -- A Serving of Turkey
(61804, 'EC_spell_gen_well_fed_pilgrims_bounty_zm'),     -- A Serving of Cranberries
(61806, 'EC_spell_gen_well_fed_pilgrims_bounty_hit'),    -- A Serving of Stuffing
(61808, 'EC_spell_gen_well_fed_pilgrims_bounty_haste'),  -- A Serving of Sweet Potatoes
(61805, 'EC_spell_gen_well_fed_pilgrims_bounty_spirit'); -- A Serving of Pie

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'EC_spell_gen_on_plate_pilgrims_bounty_turkey',
'EC_spell_gen_on_plate_pilgrims_bounty_cranberries',
'EC_spell_gen_on_plate_pilgrims_bounty_stuffing',
'EC_spell_gen_on_plate_pilgrims_bounty_sweet_potatoes',
'EC_spell_gen_on_plate_pilgrims_bounty_pie'
);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(66250, 'EC_spell_gen_on_plate_pilgrims_bounty_turkey'),            -- Pass The Turkey
(66261, 'EC_spell_gen_on_plate_pilgrims_bounty_cranberries'),       -- Pass The Cranberries
(66259, 'EC_spell_gen_on_plate_pilgrims_bounty_stuffing'),          -- Pass The Stuffing
(66262, 'EC_spell_gen_on_plate_pilgrims_bounty_sweet_potatoes'),    -- Pass The Sweet Potatoes
(66260, 'EC_spell_gen_on_plate_pilgrims_bounty_pie');               -- Pass The Pie

DELETE FROM `spell_script_names` WHERE `ScriptName`='EC_spell_gen_bountiful_feast';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(66477, 'EC_spell_gen_bountiful_feast'); -- Bountiful Feast

DELETE FROM `spell_script_names` WHERE `ScriptName` IN (
'EC_spell_gen_slow_roasted_turkey',
'EC_spell_gen_cranberry_chutney',
'EC_spell_gen_spice_bread_stuffing',
'EC_spell_gen_pumpkin_pie',
'EC_spell_gen_candied_sweet_potato'
);
INSERT INTO `spell_script_names` (`spell_id` ,`ScriptName`) VALUES
(65422, 'EC_spell_gen_slow_roasted_turkey'),   -- Slow-Roasted Turkey
(65420, 'EC_spell_gen_cranberry_chutney'),     -- Cranberry Chutney
(65419, 'EC_spell_gen_spice_bread_stuffing'),  -- Spice Bread Stuffing
(65421, 'EC_spell_gen_pumpkin_pie'),           -- Pumpkin Pie
(65418, 'EC_spell_gen_candied_sweet_potato');  -- Candied Sweet Potato