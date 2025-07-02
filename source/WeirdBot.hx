package;

import com.raidandfade.haxicord.types.structs.Embed;
import com.raidandfade.haxicord.types.Message;
import com.raidandfade.haxicord.commands.CommandBot;
import haxe.Resource;

class WeirdBot extends CommandBot
{
	static var token = Resource.getString('token.tok');

	static function main()
	{
		new WeirdBot(token, WeirdBot, '-');
	}

	@Command
	function beep(message:Message)
	{
		message.react("🤰");
		message.reply({content: "boop"});
	}

	@Command
	function help(message:Message)
	{
		var embed:Embed = {
			title: "Command list",
			description: "The list of commands",
			fields: [
				{name: "-boop", value: "the bot says boop while  pregnant reacting the user", _inline: true},
				{name:"\n-explosion",value:"explosion. i guess??? whatever",_inline: false}
			],

		}
		message.reply({content: ":cat:", embed: embed});
	}

	@Command
	function explosion(message:Message)
	{
		var embed:Embed = {
			image: {url: "https://media.tenor.com/F_EBWO_CbvsAAAAM/komaru-comaru.gif",width:200,height: 200}

		}
		message.reply({content: "", embed: embed});
	}
}
