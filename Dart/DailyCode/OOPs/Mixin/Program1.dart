mixin Parent {

	void m1() {

		print("Inside Parent m1");
	}
}

class Demo {

	void m2() {

		print("Inside Demo m2");
	}
}

class Child extends Demo with Parent {


}

void main() {

	Child child = Child();
	child.m1();
	child.m2();
}
