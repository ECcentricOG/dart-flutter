void main() {

	List l = List.empty(growable:false); // default
 
	List list = List.empty(growable:true);
	
	list.add(10);
	list.add(20);
	list.add(30);

	print(l);
	print(list);
}
