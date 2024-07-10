import 'dart:collection';

void main() {

	var keys = {10,7,9,11};
	var values = ["Messi","Ronaldo","Suarez","Bale"];

	Map map = Map.fromIterables(keys,values);

	map.addEntries({8 : "Iniesta"}.entries);

	print(map);
}
