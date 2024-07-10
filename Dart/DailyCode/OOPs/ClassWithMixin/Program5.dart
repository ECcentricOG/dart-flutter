abstract mixin class Parent1 {

	void fun() {

		print("Inside fun");
	}

	void marry();
}

class Parent2 {

	void career() {

		print("Engineer");
	}
}

class Child extends Parent2 with Parent1 {

	void marry() {

		print("Girl");
	}
}

void main() {

	Child c = Child();

	c.career();
	c.marry();
	c.fun();
}
