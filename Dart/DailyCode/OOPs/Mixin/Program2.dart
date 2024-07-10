mixin Parent {

	void m1() {

		print("Parent mixin");
	}
}

class Demo {

	void m1() {

		print("Demo class");
	}
}

class Child extends Demo with Parent {


}

void main() {

	Child c = Child();
	c.m1();
}
