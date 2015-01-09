-- Небольшой фикс
REPLACE INTO `spell_linked_spell` VALUES 
(63644, -58427, 0, 'Overkill remove when change talents'),
(63644, -31665, 0, 'Master of Subt. remove when change talents'),
(63645, -58427, 0, 'Overkill remove when change talents'),
(63645, -31665, 0, 'Master of Subt. remove when change talents');
DELETE FROM spell_linked_spell WHERE spell_effect = -71265;
INSERT INTO spell_linked_spell VALUES
(31224,-71265,1,'Removing Swarm - flames part');
DELETE FROM spell_linked_spell WHERE spell_effect = -71264;
INSERT INTO spell_linked_spell VALUES
(31224,-71264,1,'Removing Swarm - before flames start part');