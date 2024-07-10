import 'dart:collection';

void main () {

	var list = [1,2,3,4,5];
	
	Map map = Map.fromIterable(list,key:(val) => val,value:(val) => val*val);
	
	map.addEntries({6:36}.entries);
	
	print(map);
}
