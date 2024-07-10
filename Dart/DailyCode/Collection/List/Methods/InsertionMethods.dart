void main() {

	List list = ["Messi","Ineista","Xavi","Puyol","Dani"];

	print(list);

	//add(Object);
	list.add("Pique");
	print(list);
	
	// addAll(<interarble>)
	var temp = ["Pedri","Gavi"];
	list.addAll(temp);
	print(list);

	//insert(index,Object)
	list.insert(3,"Balde");
	print(list);

	//insertAll(index,<iterable>)
	list.insertAll(4,["Neymar","Suarez"]);
	print(list);

	//replaceRange(start,end,<iterable>)
	list.replaceRange(6,9,["Busi","Ronaldinho"]);
	print(list);
}
