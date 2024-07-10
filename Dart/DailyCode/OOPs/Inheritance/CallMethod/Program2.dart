class Parent {

	Parent() {

		print("In Parent Constructor");
	}

	call() {
	
		print("In Call Method");
	}
}

class Child extends Parent {

	Child() {

		super();
		print("In Child Constructor");
	}
}

void main() {

	Child child = Child();
}
