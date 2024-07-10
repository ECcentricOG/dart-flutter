class Parent {

	void fun() {

		print("Inside Parent fun");
	}
}

mixin Demo on Parent {

	void gun() {

		print("Inside Demo gun");
	}
}

class Child extends Parent with Demo {

	void run() {

		print("Inside Child run");
	}
}

void main() {

	Child c = Child();
	c.fun();
	c.gun();
	c.run();
}
