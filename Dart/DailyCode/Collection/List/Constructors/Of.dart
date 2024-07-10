void main() {

	var temp = [1,2,3,4,5,6,7]; // iterable
	
	List list = List.of(temp,growable:true); // default
	
	list.add(10);	

	print(list);	
}
