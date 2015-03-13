#include "ScriptPCH.h"

/* This is where custom scripts' loading functions should be declared. */
void AddSC_custom_scripts();
void AddSC_EC_boss_thorim();
void AddSC_EC_boss_apothecary_trio();
void AddSC_EC_pilgrim();
void AddSC_EC_hallows_end();
void AddSC_brewfest();
void AddSC_Professions_NPC();
void AddSC_DuelReset();
void AddSC_TeLe_gossip_codebox();
void AddSC_PWS_Transmogrification();
void AddSC_CS_Transmogrification();
void AddSC_fast_arena_start();
void AddSC_GOMove_commandscript();
void AddSC_EC_instance_trial_of_the_champion();
void AddSC_EC_boss_grand_champions();
void AddSC_EC_boss_black_knight();
void AddSC_EC_boss_argent_challenge();
void AddSC_EC_trial_of_the_champion();
void AddSC_landro_longshot();
/* This is where custom scripts should be added. */
void AddSC_custom()
{

    AddSC_custom_scripts();
    AddSC_EC_boss_thorim();
    AddSC_EC_pilgrim();
	AddSC_EC_hallows_end();
    AddSC_brewfest();
	AddSC_EC_boss_apothecary_trio();
	AddSC_Professions_NPC();
	AddSC_DuelReset();
	AddSC_TeLe_gossip_codebox();
    AddSC_PWS_Transmogrification();
    AddSC_CS_Transmogrification();
	AddSC_fast_arena_start();
	AddSC_GOMove_commandscript();
	AddSC_EC_instance_trial_of_the_champion();
    AddSC_EC_boss_argent_challenge();
    AddSC_EC_boss_black_knight();
    AddSC_EC_boss_grand_champions();
    AddSC_EC_trial_of_the_champion();
	AddSC_landro_longshot();
 
}
