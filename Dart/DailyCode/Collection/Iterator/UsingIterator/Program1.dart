import 'dart:io';
void main() {

	var players = ["Messi","Ronaldo","Neymar","Mbappe","Haland","Lewandoski"];
	
	print(players);

	stdout.writeln();

	for(var player in players) 
		print(player);

	stdout.writeln();

	players.forEach(print);
}
