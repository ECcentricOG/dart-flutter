import 'dart:collection';

void main() {

	int o1 = 1;
	int o2 = 3-2;

	Map map = Map.identity();

	map.addEntries({o1:"One"}.entries);

	//map.addEntries(o2:"One"}.entries);

	print(map);
}
