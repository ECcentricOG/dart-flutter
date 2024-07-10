class Parent {

	int x = 10;
	String str = "name";

	void parentMethod() {

		print(x);
		print(str);
	}
}

class Child extends Parent {

	int x = 20;
	String str = "Data";

	void childMethod() {

		print(x);
		print(str);
	}
}
void main() {

	Child c = Child();
	print(c.x);
	print(c.str);
	c.parentMethod();
	print(c.x);
	print(c.str);
	c.childMethod();
}
