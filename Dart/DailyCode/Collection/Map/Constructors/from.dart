import 'dart:collection';

void main() {

	var info = {1:"One",2:"Two",3:"Three"};
	
	Map map = Map.from(info);

	map.addEntries({4:"Four"}.entries);

	print(map);	
}
