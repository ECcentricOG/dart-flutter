void main() {

	List list = ["Messi","Inienta","Xavi","Puyol","Pedri","Gavi","Dani","Neymar","Suarez"];
	
	print(list);

	//remove(Object)
	list.remove("Gavi");
	print(list);

	//removeAt(index)
	list.removeAt(6);
	print(list);
	
	//removeLast();
	list.removeLast();
	print(list);
	
	//removeRange(start,end)
	list.removeRange(2,5);
	print(list);
	
	//removeWhere(Aero function (filter) )
	list.removeWhere((player) => player.startsWith('D'));
	print(list);

	//clear();
	list.clear();
	print(list);
}
