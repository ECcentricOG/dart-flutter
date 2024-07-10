void main() {

	List list = List.unmodifiable([10,20,30]);
	
	list.add(10);
}

/*

Unhandled exception:
Unsupported operation: Cannot add to an unmodifiable list

*/
