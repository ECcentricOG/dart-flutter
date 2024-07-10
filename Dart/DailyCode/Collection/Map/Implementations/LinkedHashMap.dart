import 'dart:collection';

void main() {

	Map map = LinkedHashMap();

	map.addAll({3:9,4:16,1:1,2:4});

	map.addEntries({9:81}.entries);

	print(map);	//{3: 9, 4: 16, 1: 1, 2: 4, 9: 81}
}
