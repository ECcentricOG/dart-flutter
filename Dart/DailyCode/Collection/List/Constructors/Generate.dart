void main() {

	var temp = [1,2,3,4,5,6,7,8,9]; // iterable
	
	List list = List.generate(6,(i) => i * i,growable:true); // default

	print(list);
}
