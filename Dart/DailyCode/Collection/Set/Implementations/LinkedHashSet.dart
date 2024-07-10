// Used to preserved insertion order. 
// Set uses LinkedHashSet by default.
import 'dart:collection';

void main() {

	Set set = LinkedHashSet();
	
	set.add(3);
	set.add(5);
	set.add(0);
	set.add(34);

	print(set);		
}
