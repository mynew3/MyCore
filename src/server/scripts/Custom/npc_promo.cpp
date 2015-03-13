/*
 * Copyright © 2008-2015 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */


#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "ScriptedGossip.h"
#include "Player.h"
#include "ScriptPCH.h"
#include <cstring>

enum LandrosTexts
{
	SAY_WRONG = 1,
	SAY_CORRECT = 2
};

enum LandroMenus
{
	WELCOME							=	8855,
	PROMOTION_MENU_TEXT				=	8856,
	PROMOTION						=	9197,
	HEROES_OF_AZEROTH				=	9192,
	THROUGH_THE_DARK_PORTAL			=	9194,
	FIRES_OF_OUTLAND				=	9195,
	MARCH_OF_THE_LEGION				=	9196,
	SERVANTS_OF_THE_BETRAYER		=	9191,
	HUNT_FOR_ILLIDAN				=	9629,
	DRUMS_OF_WAR					=	9682,
	BLOOD_OF_GLADIATORS				=	10330,
	FIELDS_OF_HONOR					=	10533,
	SCOURGEWAR						=	10810,
	WRATHGATE						=	11342,
	ICECROWN						=	11343,
	POINTS_REDEMPTION				=	9193
};

class landro_longshot : public CreatureScript
{
    public:

        landro_longshot(): CreatureScript("epc_promo") { }

		int SelectedReward;

		bool OnGossipHello(Player* player, Creature* creature)
		{
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "What promotions do you have?", GOSSIP_SENDER_MAIN, PROMOTION);
			player->SEND_GOSSIP_MENU(WELCOME, creature->GetGUID());
			return true;
		}

		bool OnGossipSelect(Player* player, Creature* creature, uint32 sender, uint32 action)
		{
			player->PlayerTalkClass->ClearMenus();
			
			if (action != 0)
			{
				SelectedReward = action;
			}

			QueryResult GetGossipFields = WorldDatabase.PQuery("SELECT option_text, action_menu_id FROM gossip_menu_option WHERE menu_id = %u", action);
			do{
				Field* fields = GetGossipFields->Fetch();

				std::string OptionText		=	fields[0].GetString();
				uint32	ActionMenuID		=	fields[1].GetUInt32();
				if (ActionMenuID != 0)
				{
					player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, OptionText, GOSSIP_SENDER_MAIN, ActionMenuID);
				}
				else
				{
					player->ADD_GOSSIP_ITEM_EXTENDED(0, OptionText, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1, "", 0, true);
				}
			} while (GetGossipFields->NextRow());

			player->SEND_GOSSIP_MENU(PROMOTION_MENU_TEXT, creature->GetGUID());
			return true;
		}

		bool OnGossipSelectCode(Player* player, Creature* creature, uint32 sender, uint32 action, char const* code)
		{
			player->PlayerTalkClass->ClearMenus();
			uint32 codeUINT = (uint32)atol(code);
			if (!codeUINT)
				return false;
			QueryResult SearchForCode = WorldDatabase.PQuery("SELECT item FROM promotion_codes WHERE code = %u AND collection = %u AND used = 0", codeUINT, SelectedReward);
			if (!SearchForCode)
			{
				creature->AI()->Talk(SAY_WRONG);
			}
			else
			{
				creature->AI()->Talk(SAY_CORRECT);
				do
				{
					Field *fields = SearchForCode->Fetch();
					player->AddItem(fields[0].GetUInt32(), 1);
					WorldDatabase.PQuery("Update promotion_codes SET USED = 1 WHERE code = %u", codeUINT);
				} while (SearchForCode->NextRow());
			}

			player->PlayerTalkClass->SendCloseGossip();
			return true;
		}

};

void AddSC_landro_longshot()
{
    new landro_longshot();
}