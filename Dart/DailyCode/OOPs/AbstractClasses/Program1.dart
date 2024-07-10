abstract class Parent {

	void property() {

		print("Happiess");
	}
	
	void career();
	void marry();
}

void main() {

	Parent p = Parent();
	p.property();
}
/*
Error: The class 'Parent' is abstract and can't be instantiated.
	Parent p = Parent();
	           ^^^^^^
*/
