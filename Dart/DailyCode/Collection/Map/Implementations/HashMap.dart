import 'dart:collection';

void main() {

	Map map = HashMap();
	
	map.addAll({1:"ONE",2:"TWO",45:"FOURTYFIVE"});

	map.addEntries({3:"THREE"}.entries);

	print(map);	//{1: ONE, 2: TWO, 3: THREE, 45: FOURTYFIVE}
}
