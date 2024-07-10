import 'dart:collection';

void main() {

	var temp = {1,2,3,10};
	
	Set set = UnmodifiableSetView(temp);

	print(set);
	
	set.add(17);
}

/*

{1, 2, 3, 10}
Unhandled exception:
Unsupported operation: Cannot change an unmodifiable set

*/
