void main() {
	
	var temp = [1,2,3,4,5,6,7,8,9]; //  iterable

	List list = List.from(temp,growable:true); // default
	
	list.add(10);
	list.add(20);

	print(list);
}
