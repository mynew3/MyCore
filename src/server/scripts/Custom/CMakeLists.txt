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
  Custom/custom.cpp
  Custom/custom_scripts.cpp
  Custom/Ulduar/EC_boss_thorim.cpp
  Custom/WorldEvents/EC_boss_apothecary_trio.cpp
  Custom/WorldEvents/EC_pilgrim.cpp
  ${scripts_STAT_SRCS}
#  ${sources_Custom}
	Custom/mod_duel_reset.cpp
	Custom/npc_teleporter.cpp
	Custom/npc_profession.cpp
    Custom/Transmog/Transmogrification.h
    Custom/Transmog/Transmogrification.cpp
    Custom/Transmog/Transmogrifier.cpp
	Custom/arena_fast_start.cpp
)

message("  -> Prepared: Custom")
