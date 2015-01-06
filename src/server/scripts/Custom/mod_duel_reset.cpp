/*
 * Copyright (C) 2014 Mehanik 3 <https://bitbucket.org/Vitasic/mehanik_3>
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

#include "ScriptPCH.h"
#include "ScriptMgr.h"

class duel_reset : public PlayerScript
{
public:
	duel_reset() : PlayerScript("duel_reset") {}

	void OnDuelEnd(Player *winner, Player *looser, DuelCompleteType type)
	{
		if (type == DUEL_WON)
		{
			winner->RemoveArenaSpellCooldowns();
			looser->RemoveArenaSpellCooldowns();
			winner->SetHealth(winner->GetMaxHealth());
			looser->SetHealth(looser->GetMaxHealth());

			if (winner->getPowerType() == POWER_MANA)
				winner->SetPower(POWER_MANA, winner->GetMaxPower(POWER_MANA));
			if (looser->getPowerType() == POWER_MANA)
				looser->SetPower(POWER_MANA, looser->GetMaxPower(POWER_MANA));
		}
		winner->HandleEmoteCommand(EMOTE_ONESHOT_CHEER);
	}

	void OnDuelStart(Player *player1, Player *player2)
	{
		player1->RemoveArenaSpellCooldowns();
		player2->RemoveArenaSpellCooldowns();
		player1->SetHealth(player1->GetMaxHealth());
		player2->SetHealth(player2->GetMaxHealth());
		// Debuffs
		player1->RemoveAura(57723);
		player1->RemoveAura(57724);
		player1->RemoveAura(25771);
		player1->RemoveAura(41425);
		player1->RemoveAura(61987);
		player2->RemoveAura(57723);
		player2->RemoveAura(57724);
		player2->RemoveAura(25771);
		player2->RemoveAura(41425);
		player2->RemoveAura(61987);


		if (player1->getPowerType() == POWER_MANA)
			player1->SetPower(POWER_MANA, player1->GetMaxPower(POWER_MANA));
		if (player2->getPowerType() == POWER_MANA)
			player2->SetPower(POWER_MANA, player2->GetMaxPower(POWER_MANA));

		if (player1->getPowerType() == POWER_RAGE)
			player1->SetPower(POWER_RAGE, 0);
		if (player2->getPowerType() == POWER_RAGE)
			player2->SetPower(POWER_RAGE, 0);
		if (player1->getPowerType() == POWER_RUNIC_POWER)
			player1->SetPower(POWER_RUNIC_POWER, 0);
		if (player2->getPowerType() == POWER_RUNIC_POWER)
			player2->SetPower(POWER_RUNIC_POWER, 0);
	}
};

void AddSC_DuelReset()
{
    new duel_reset();
}