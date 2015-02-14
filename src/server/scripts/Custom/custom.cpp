#include "ScriptPCH.h"

/* This is where custom scripts' loading functions should be declared. */
void AddSC_custom_scripts();
void AddSC_EC_boss_thorim();
void AddSC_EC_boss_apothecary_trio();
void AddSC_EC_pilgrim();

/* This is where custom scripts should be added. */
void AddSC_custom()
{

    AddSC_custom_scripts();
    AddSC_EC_boss_thorim();
    AddSC_EC_pilgrim();
	AddSC_EC_boss_apothecary_trio();
 
}
