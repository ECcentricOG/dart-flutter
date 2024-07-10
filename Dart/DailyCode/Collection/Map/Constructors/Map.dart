import 'dart:collection';

void main() {

	Map map = Map();

	map.addEntries({10:"Messi"}.entries);

	map[1] = "Ter Stegen";
	
	map.addAll({7:"Ronaldo"});

	print(map);
}
