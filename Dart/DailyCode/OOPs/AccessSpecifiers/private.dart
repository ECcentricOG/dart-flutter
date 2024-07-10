class Demo {

	int _id = 3;
	String _name = "Umesh";

	// int a is public by default but if we add " _ " before id like _id then it is private in dart and private has file access in dart

	void _get() {

		print("id : $_id   name : $_name");
	}	
}
