import 'dart:collection';

void main() {

	var list = ["Messi","Penaldo","Neymar"];
	
	Iterator itr = list.iterator;
	
	while(itr.moveNext()) {

		if(itr.current == "Penaldo")
			itr.current = "Ronaldo";
	}
	
	print(list);
}

// We Cannot make Changes in collection with iterator breacuse there can be 2 or more iterators on one collection.

/*

Error: The setter 'current' isn't defined for the class 'Iterator<dynamic>'.
 - 'Iterator' is from 'dart:core'.
Try correcting the name to the name of an existing setter, or defining a setter or field named 'current'.
			itr.current = "Ronaldo";
			    ^^^^^^^
*/
