import 'dart:collection';
import 'dart:io';

void main() {

	Set temp = {"Messi","Haland","Mbappe","Pedri"};
	Set players = {"Messi","Ronaldo","Iniesta","Ramos","Neymar","Zlatan","Hazard","Ronaldinho","Suarez","Modric"};
	
	print(temp); //{Messi, Haland, Mbappe, Pedri}
	print(players); //{Messi, Ronaldo, Iniesta, Ramos, Neymar, Zlatan, Hazard, Ronaldinho, Suarez, Modric}

	//add(Object)
	temp.add("Jude");
	print(temp); //{Messi, Haland, Mbappe, Pedri, Jude}

	//addAll(Iterable)
	temp.addAll(["Yamal","Saka"]);
	print(temp); //{Messi, Haland, Mbappe, Pedri, Jude, Yamal, Saka}

	//any(bool (test))
	print(players.any((player) => player.startsWith("M")));  //true

	//contains(Object)	
	print(players.contains("Iniesta")); // true

	//containsAll(Iterable)
	print(players.containsAll(["Xavi","Iniesta"])); // false

	//difference(Set)
	print(players.difference(temp)); // {Ronaldo, Iniesta, Ramos, Neymar, Zlatan, Hazard, Ronaldinho, Suarez, Modric}

	//elementAt(index)
	print(players.elementAt(2));

	//every(bool (test))
	print(players.every((player) => player.length >= 4)); //true

	//expand(change (test))
	//print(players.expand((player) => player+"OG"));  	Exception : type 'String' is not a subtype of type 'Iterable<dynamic>'

	//firstWhere((test))
	print(players.firstWhere((player) => player.length == 7));   //Ronaldo

	//fold(initializer (prev,curent))
	print(temp.fold("",(prev,player) => "$prev$player"));  //MessiHalandMbappePedriJudeYamalSaka

	//followedBy(Iterable)
	print(temp.followedBy(["Gavi","Balde"])); 	//(Messi, Haland, Mbappe, Pedri, Jude, Yamal, Saka, Gavi, Balde)

	stdout.writeln();
	//forEach(print)
	players.forEach(print);
	stdout.writeln();

	//intersection(Set)
	print(players.intersection(temp)); //{Messi}

	//join(String)
	print(temp.join(" || "));	//Messi || Haland || Mbappe || Pedri || Jude || Yamal || Saka

	//lastWhere((test))
	print(players.lastWhere((player) => player.startsWith('M'))); 	//Modric

	//lookup(Object)
	print(temp.lookup("Pedri"));	//Pedri
	print(temp.lookup("Jamal"));	//null

	//map(Change)
	print(players.map((player) => player[0] == 'I'));	//(false, false, true, false, false, false, false, false, false, false)

	//reduce(value,Change)
	print(players.reduce((prev,player) => player+prev));	//ModricSuarezRonaldinhoHazardZlatanNeymarRamosIniestaRonaldoMessi

	//remove(Object)
	players.remove("Hazard");
	print(players);		//{Messi, Ronaldo, Iniesta, Ramos, Neymar, Zlatan, Ronaldinho, Suarez, Modric}

	//removeAll(Iterable)
	players.removeAll(["Ramos","Ronaldinho"]);
	print(players);		//{Messi, Ronaldo, Iniesta, Neymar, Zlatan, Suarez, Modric}

	//removeWhere((test))
	players.removeWhere((player) => player.startsWith('Z'));
	print(players);			//{Messi, Ronaldo, Iniesta, Neymar, Suarez, Modric}

	//retainAll(Iterator)
	players.retainAll(["Messi","Ronaldo","Iniesta","Neymar","Modric"]);
	print(players);		//{Messi, Ronaldo, Iniesta, Neymar, Modric}

	//retainWhere((test))
	players.retainWhere((player) => player.startsWith('M') || player.startsWith('I'));
	print(players);

	//singleWhere((test))
	print(players.singleWhere((player) => player.endsWith('i')));	//Messi

	//skip(count)
	print(temp.skip(3));	//(Pedri, Jude, Yamal, Saka)

	//skipWhile((test))
	print(temp.skipWhile((player) => player.length >= 5 ));		//(Jude, Yamal, Saka)

	//take(count)
	print(temp.take(3));	//(Messi, Haland, Mbappe)

	//takeWhile((test))
	print(temp.takeWhile((player) => player.length == 5));		//(Messi)

	//toList({growable : true})
	print(players.toList());		//[Messi, Iniesta, Modric]

	//toSet()
	print(players.toSet());			//{Messi, Iniesta, Modric}

	//toString()
	print(temp.toString());			//{Messi, Haland, Mbappe, Pedri, Jude, Yamal, Saka}

	//union(Set)
	print(players.union(temp));		//{Messi, Iniesta, Modric, Haland, Mbappe, Pedri, Jude, Yamal, Saka}

	//where(test)
	print(players.where((player) => player.endsWith('i')));		//(Messi)

	//whereType<T>();
	print(players.whereType<Map>());
	
}
