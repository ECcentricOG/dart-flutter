mixin Parent1 {

	void m1() {

		print("In Parent1 mixin");
	}
}

mixin Parent2 {
	
	void m1() {
	
		print("In Parent2 mixin");
	}
}

class Child with Parent1,Parent2 {  // Thunb Rule

	
}

void main() {

	Child c = Child();
	c.m1();
}
