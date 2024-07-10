import 'dart:collection';

void main() {

	var data = {"Messi" : 30,"Suarez" : 9,"Ronaldo" : 7}; // if same keys first element gets override by later entry
	
	Map map = Map.fromEntries(data.entries);
	
	map.addEntries({"Messi" : 10}.entries);

	print(map);
	
}
