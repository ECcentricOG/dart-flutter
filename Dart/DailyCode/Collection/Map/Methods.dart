import 'dart:collection';
import 'dart:io';

void main() {

	Map og = {10:"Messi",7:"Ronaldo",4:"Ramos",8:"Iniesta",9:"Suarez",6:"Xavi",1:"Ter Stegen",2:"Dani",3:"Pique",5:"Puyol",11:"Neymar"};
	
	Map genZ = {10:"Messi",8:"Pedri",5:"Jude",7:"Mbappe",9:"Haland",11:"Vini"};

	print(og);
	print(genZ);

	//addAll(Iterable)
	genZ.addAll({6:"Gavi",12:"Musliyala"});
	print(genZ);	//{10: Messi, 8: Pedri, 5: Jude, 7: Mbappe, 9: Haland, 11: Vini, 6: Gavi, 12: Musliyala}

	//addEntries(Entry.entries)
	og.addEntries({12:"Marcelo"}.entries);
	print(og);	//{10: Messi, 7: Ronaldo, 4: Ramos, 8: Iniesta, 9: Suarez, 6: Xavi, 1: Ter Stegen, 2: Dani, 3: Pique, 5: Puyol, 11: Neymar, 12: Marcelo}

	//ContainsKey(Key);
	print(og.containsKey(10));		//true

	//containsValue(Value)
	print(og.containsValue("Ronaldo"));	//true

	//forEach(print)
	stdout.writeln();
	genZ.forEach((k,v) => print("$k : $v"));
	stdout.writeln();

	//map(entry,convert(k,v))
	//print(og.map((k,v) => k=k*k));

	//putIfAbsent(k,(v test));
	//print(og.putIfAbsent(11,(value) => og.value = "Bale"));

	//remove(key)
	print(og.remove(3)); 	//Pique

	//removeWhere(test(k,v))
	og.removeWhere((k,v) => k == 7);
	print(og);	//{10: Messi, 4: Ramos, 8: Iniesta, 9: Suarez, 6: Xavi, 1: Ter Stegen, 2: Dani, 5: Puyol, 11: Neymar, 12: Marcelo}

	//toString()
	print(og.toString());		//{10: Messi, 4: Ramos, 8: Iniesta, 9: Suarez, 6: Xavi, 1: Ter Stegen, 2: Dani, 5: Puyol, 11: Neymar, 12: Marcelo}

	//update(k,(v))
	print(og.update(11,(val) => val = "Bale"));
	print(og);	//{10: Messi, 4: Ramos, 8: Iniesta, 9: Suarez, 6: Xavi, 1: Ter Stegen, 2: Dani, 5: Puyol, 11: Bale, 12: Marcelo}

	//updateAll((k,v))
	og.updateAll((k,v) => k = k*k);
	print(og);		//{10: 100, 4: 16, 8: 64, 9: 81, 6: 36, 1: 1, 2: 4, 5: 25, 11: 121, 12: 144}

	//clear
	og.clear();
	print(og);

}
