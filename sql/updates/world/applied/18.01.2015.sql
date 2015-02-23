-- Исправление краша от заклинания Mind control,вроде как исправлено в оф тк,но подверится нужно.
UPDATE `creature_template` SET `mechanic_immune_mask` = 1 WHERE `entry` IN (19424,16925,8551);
-- Исрпвление вихря клинков и циклон у друида(Баг)
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES (46924, -33786, 2, 'Bladestorm vs. Cyclone FIX');
