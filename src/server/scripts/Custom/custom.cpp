#include "ScriptPCH.h"

/* This is where custom scripts' loading functions should be declared. */
void AddSC_custom_scripts();
void AddSC_EC_boss_thorim();
void AddSC_EC_boss_apothecary_trio();
void AddSC_EC_pilgrim();
void AddSC_Professions_NPC();
void AddSC_DuelReset();
void AddSC_TeLe_gossip_codebox();
void AddSC_PWS_Transmogrification();
void AddSC_CS_Transmogrification();
void AddSC_fast_arena_start();
void AddSC_GOMove_commandscript();
/* This is where custom scripts should be added. */
void AddSC_custom()
{

    AddSC_custom_scripts();
    AddSC_EC_boss_thorim();
    AddSC_EC_pilgrim();
	AddSC_EC_boss_apothecary_trio();
	AddSC_Professions_NPC();
	AddSC_DuelReset();
	AddSC_TeLe_gossip_codebox();
    AddSC_PWS_Transmogrification();
    AddSC_CS_Transmogrification();
	AddSC_fast_arena_start();
	AddSC_GOMove_commandscript();
 
}
