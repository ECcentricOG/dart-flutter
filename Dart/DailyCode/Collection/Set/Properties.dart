import 'dart:collection';

void main() {

	Set set = {"Umesh","Pritam","Saprem","Sarwesh"};
	
	print(set.first);

	print(set.hashCode);

	print(set.isEmpty);

	print(set.isNotEmpty);

	print(set.iterator);

	print(set.last);

	print(set.length);

	print(set.runtimeType);

	var temp = {3};

	//print(set.single);  Exception too many elements 
	print(temp.single);
}
