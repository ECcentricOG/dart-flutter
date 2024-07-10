void main() {

	List list = ["CPP","Java","Dart","Python","Dart","Java"];
	
	print(list[3]);
	
	//elementAt(index);
	print(list.elementAt(2));

	//lastIndexOf(Object)
	print(list.lastIndexOf("Dart"));	

	//indexOf(Object);
	print(list.indexOf("Java"));

	//getRange(start,end);
	print(list.getRange(0,2));
	
	//indexWhere(aero function)
	print(list.indexWhere((lang) => lang.startsWith('J')));
}
