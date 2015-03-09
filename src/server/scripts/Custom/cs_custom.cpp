/*
 * Copyright (C) 2008-2014 TrinityCore <http://www.trinitycore.org/>
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


#include "Chat.h"
#include "ObjectMgr.h"
#include "Player.h"
#include "ReputationMgr.h"
#include "MapManager.h"
#include "Group.h"
#include "ScriptMgr.h"
#include "AccountMgr.h"

class custom_commandscript : public CommandScript
{
    public:
        custom_commandscript() : CommandScript("custom_commandscript") { }

        ChatCommand* GetCommands() const override
        {           
            static ChatCommand commandTable[] =
            {            
                { "mutehistory",     rbac::RBAC_PERM_COMMAND_MUTEHISTORY,             true,  &HandleMuteInfoCommand,             "", NULL },
                { NULL,              0,                                               false, NULL,                               "", NULL }
            };
            return commandTable;
        }

        static bool HandleMuteInfoCommand(ChatHandler* handler, char const* args)
        {
            if (!*args)
                return false;

            char* nameStr = strtok((char*)args, "");
            if (!nameStr)
                return false;

            std::string accountName = nameStr;
            if (!AccountMgr::normalizeString(accountName))
            {
                QueryResult result = CharacterDatabase.PQuery("SELECT account FROM `characters` where UPPER(name) = UPPER('%s')", nameStr);
                if (!result)
                {
                    handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
                    handler->SetSentErrorMessage(true);
                    return false;
                }

                Field* fields = result->Fetch();
                uint32 accountId = fields[0].GetUInt32();
                accountName = AccountMgr::GetName(accountId, accountName);

                return HandleMuteInfoHelper("character", accountId, accountName.c_str(), handler);
            }

            uint32 accountId = AccountMgr::GetId(accountName);
            if (!accountId)
            {
                QueryResult result = CharacterDatabase.PQuery("SELECT account FROM `characters` where UPPER(name) = UPPER('%s')", nameStr);
                if (!result)
                {
                    handler->PSendSysMessage(LANG_ACCOUNT_NOT_EXIST, accountName.c_str());
                    handler->SetSentErrorMessage(true);
                    return false;
                }
                Field* fields = result->Fetch();
                uint32 accountId = fields[0].GetUInt32();

                return HandleMuteInfoHelper("character", accountId, accountName.c_str(), handler);
            }


            return HandleMuteInfoHelper("account", accountId, accountName.c_str(), handler);
        }

        static bool HandleMuteInfoHelper(char const* type, uint32 accountId, char const* accountName, ChatHandler* handler)
        {
            std::string param = (char*)type;
            QueryResult result = LoginDatabase.PQuery("SELECT FROM_UNIXTIME(mutedate), mutetime, mutereason, mutedby FROM account_muted WHERE guid = '%u' ORDER BY mutedate ASC", accountId);
            if (!result)
            {
                if (param == "account")
                    handler->PSendSysMessage("No mutes for account: %s", accountName);
                else if (param == "character")
                    handler->PSendSysMessage("No mutes for character: %s", accountName);
                return true;
            }

            if (param == "account")
                handler->PSendSysMessage("Mutes for account: %s", accountName);
            else if (param == "character")
                handler->PSendSysMessage("Mutes for character: %s", accountName);
            do
            {
                Field* fields = result->Fetch();

                handler->PSendSysMessage("| Mute Date: %s | Mutetime: %u Minute(s) | Reason: %s | Set by: %s |",
                    fields[0].GetCString(), fields[1].GetUInt32(), fields[2].GetCString(), fields[3].GetCString());
            }
            while (result->NextRow());

            return true;
        }

  };

void AddSC_custom_commandscript()
{
    new custom_commandscript();
}
