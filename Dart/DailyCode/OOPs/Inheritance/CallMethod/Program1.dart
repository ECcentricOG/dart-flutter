class Parent {

	Parent() {

		print("Parent Constructor");
	}
}

class Child extends Parent {

	Child() {

		super();
		print("Child Constructor");
	}
}

void main() {

	Child child = Child();
}

/*
Error: Superclass has no method named 'call'.
		super();
		^^^^
*/

