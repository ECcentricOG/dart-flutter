abstract mixin class Demo {

	void m1();
}

class Child with Demo {

	void m1() {

		print("Inside m1");
	}
}

void main() {

	Child().m1();
}
