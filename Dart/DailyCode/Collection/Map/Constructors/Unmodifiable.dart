import 'dart:collection';

void main() {

	var data = {10:"Messi",7:"Ronaldo"};
	
	Map map = Map.unmodifiable(data);

	print(map);

	map.addEntries({8 : "Iniesta"}.entries);
}

/*

{10: Messi, 7: Ronaldo}
Unhandled exception:
Unsupported operation: Cannot modify unmodifiable map

*/
