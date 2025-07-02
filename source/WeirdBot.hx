package;

import com.raidandfade.haxicord.types.Message;
import com.raidandfade.haxicord.commands.CommandBot;
import haxe.Resource;


class WeirdBot extends CommandBot
{
	static var token = Resource.getString('token.tok');

	
	static function main()
	{
 
		new WeirdBot(token,WeirdBot,'-');

	}

	@Command
	function beep(message:Message) {
		message.react(":pregnant_person:");
		message.reply({content: "boop"});
	}
		
	
}
