import 'dart:collection';

void main() {

	Map map = SplayTreeMap();
	
	map[0] = "Zero";
	
	map.addAll({1 : "One", 9 : "Nine" , 4 : "Four"});

	map.addEntries({3:"Three"}.entries);	

	print(map);		//{0: Zero, 1: One, 3: Three, 4: Four, 9: Nine}
}
