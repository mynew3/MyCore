# Copyright (C) 2008-2015 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# file(GLOB_RECURSE sources_Custom Custom/*.cpp Custom/*.h)

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  Custom/custom.cpp
  Custom/CustomEC/custom_quest_spell_items.cpp
  Custom/TrialOfTheChampion/EC_instance_trial_of_the_champion.cpp
  Custom/TrialOfTheChampion/EC_trial_of_the_champion.h
  Custom/TrialOfTheChampion/EC_boss_argent_challenge.cpp
  Custom/TrialOfTheChampion/EC_boss_grand_champions.cpp
  Custom/TrialOfTheChampion/EC_boss_black_knight.cpp
  Custom/TrialOfTheChampion/EC_trial_of_the_champion.cpp
  Custom/Ulduar/EC_boss_thorim.cpp
  Custom/WorldEvents/EC_boss_apothecary_trio.cpp
  Custom/WorldEvents/EC_pilgrim.cpp
  Custom/WorldEvents/brewfest.cpp
  Custom/WorldEvents/EC_hallows_end.cpp
  Custom/mod_duel_reset.cpp
  Custom/npc_teleporter.cpp
  Custom/npc_profession.cpp
  Custom/Transmog/Transmogrification.h
  Custom/Transmog/Transmogrification.cpp
  Custom/Transmog/Transmogrifier.cpp
  Custom/arena_fast_start.cpp
  Custom/GOMove/GOMove.cpp
  Custom/npc_promo.cpp
  Custom/awards_for_time.cpp
  Custom/chat_censure.cpp
  Custom/boss_cooldown_reset.cpp
  Сustom/ArenaSpectator/arena_spectator.cpp
# ${sources_Custom}
)

message("  -> Prepared: Custom")
