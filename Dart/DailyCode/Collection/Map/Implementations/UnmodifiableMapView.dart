import 'dart:collection';

void main() {

	var data = {1:1,2:4,4:16,3:9};
	
	Map map = UnmodifiableMapView(data);

	print(map);
}
