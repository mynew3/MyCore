#include "ScriptMgr.h"
#include "Player.h"

class SystemAwardsForTime : public PlayerScript
{
public:
	SystemAwardsForTime() : PlayerScript("SystemAwardsForTime") { }

	// extract items for mail
	typedef std::pair<uint32, uint32> ItemPair;
	typedef std::list< ItemPair > ItemPairs;
	ItemPairs mailItems;

	void SendMail(Player* player, std::string subject, std::string text, uint32 money = 0)
	{
		if (mailItems.size() > MAX_MAIL_ITEMS)
			return;

		// from console show not existed sender
		MailSender sender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM);

		// fill mail
		MailDraft draft(subject, text);

		SQLTransaction trans = CharacterDatabase.BeginTransaction();

		for (ItemPairs::const_iterator itr = mailItems.begin(); itr != mailItems.end(); ++itr)
        {
            if (Item* item = Item::CreateItem(itr->first, itr->second))
            {
                item->SaveToDB(trans);                               // save for prevent lost at next mail load, if send fail then item will deleted
                draft.AddItem(item);
            }
        }

		if (money != 0)
			draft.AddMoney(money);
		draft.SendMailTo(trans, MailReceiver(player, player->GetGUID()), sender);
		CharacterDatabase.CommitTransaction(trans);
		mailItems.clear();
	}
	
	void OnTime(Player* player, uint32 total, uint32 /*level*/)
	{
		if (!sWorld->getBoolConfig(CONFIG_AWARDS_PER_TIME))
			return;
			
		switch (total)
		{
			case 3600: // 1 hours
				player->AddItem(49912, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;
			case 10800: // 3 hours
				player->AddItem(20558, 40);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;
			case 21600: // 6 hours
				player->AddItem(33816, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;
			case 43200: // 12 hours
				player->AddItem(37719, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;
			case 86400: // 1 day
				player->AddItem(49693, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;				
			case 172800: // 2 day
				player->AddItem(38186, 200);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;				
			case 345600: // 4 day
				player->AddItem(44819, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;				
			case 691200: // 8 day
				player->AddItem(33079, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;				
			case 1382400: // 16 day
				player->AddItem(54860, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");
				break;				
			case 2592000: // 30 day
				player->AddItem(54811, 1);
				ChatHandler(player->GetSession()).SendSysMessage("Подарок за проведенное время в игре!");			
/*				
			case 115200: // 32 hours
				mailItems.push_back(ItemPair(5133, 1));
				mailItems.push_back(ItemPair(5133, 3));
				mailItems.push_back(ItemPair(5133, 5));
				SendMail(player, "Заголовок письма", "Содержание письма", 5000000); // Send Items +500 gold
				ChatHandler(player->GetSession()).SendSysMessage("Сообщение");
*/
				break;
			default:
				break;
		}
	}
};

void AddSC_AwardsForTime() 
{		
	new SystemAwardsForTime();
}