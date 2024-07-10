import 'dart:collection';

void main() {

	var data = {"Umesh" : 3,"Pritam" : 57,"Saprem" : 7};

	Map map = Map.of(data);

	map.addEntries({69:"Sid"}.entries); 	//Keys and values can be of diffent type doen't allow strict rule unlike Map.from .

	print(map);
}
