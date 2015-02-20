DELETE FROM `creature_text` WHERE `entry` IN(37158,37704);
DELETE FROM `creature_text` WHERE `entry`=37225 AND `groupid` > 15;
INSERT INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES

(37158, 0, 0, '%s готовится атаковать!', 41, 0, 100, 0, 0, 0, 'Quel''Delar', 37211),
(37704, 0, 0, 'Кельделар возвращается к жизни в присутствии Ледяной Скорби!', 41, 0, 100, 0, 0, 0, 'Frostmourne Altar Bunny (Quel''Delar)', 37645),
-- Uther
(37225, 16, 0, 'Стой! Не подходи к этоту клинку близко!', 14, 0, 100, 25, 0, 16675, 'Uther the Lightbringer', 37201),
(37225, 17, 0, 'Вы понимаете, что вы наделали?', 14, 0, 100, 5, 0, 16676, 'Uther the Lightbringer', 37202),
(37225, 18, 0, 'Вы подделали этот клинок из саронита, саму кровь старого бога. Король-Лич призывает это оружие!.', 12, 0, 100, 1, 0, 16677, 'Uther the Lightbringer', 37204),
(37225, 19, 0, 'Каждый момент, пока вы находитесь здесь, Кельделар впитывает злость в себя.', 12, 0, 100, 1, 0, 16678, 'Uther the Lightbringer', 38442),
(37225, 20, 0, 'Существует только один способ очистить этот меч. Поторопитесь в Плато Солнечного Колодца и погрузите нож в его воды!', 12, 0, 100, 25, 0, 16679, 'Uther the Lightbringer', 37205),
(37225, 21, 0, 'Не могу сопротивляться зову Ледяной Скорбиии ...', 12, 0, 100, 1, 0, 16680, 'Uther the Lightbringer', 37206);

UPDATE `creature_template` SET `unit_flags`=768, `flags_extra`=0, `ScriptName`='npc_quel_delar_sword', `InhabitType`=7 WHERE `entry`=37158;
UPDATE `creature_template` SET `ScriptName`='npc_uther_quel_delar' WHERE `entry`=37225;

DELETE FROM `areatrigger_scripts` WHERE `entry`=5660;
INSERT INTO `areatrigger_scripts` (`entry`,`ScriptName`) VALUES
(5660, 'at_hor_uther_quel_delar_start');

DELETE FROM `spell_target_position` WHERE `id` IN(70719,70700);
INSERT INTO `spell_target_position` (`id`,`target_map`,`target_position_x`,`target_position_y`,`target_position_z`,`target_orientation`) VALUES
(70719, 668, 5302, 1989, 708, 0),
(70700, 668, 5298, 1995, 708, 0);

DELETE FROM `creature_loot_template` WHERE `entry` = 37158 AND `item` = 50254;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(37158, 50254, 100, 1, 0, 1, 1);

DELETE FROM `conditions` WHERE `SourceEntry` = 73035 AND `SourceTypeOrReferenceId` = 13;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `Comment`) VALUES
(13,1,73035,0,0,31,0,3,37704,0,0,0,0,'Essence of the Captured (73035) only hits Frostmourne Altar Bunny (Quel''Delar)');