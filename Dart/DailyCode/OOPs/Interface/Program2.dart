abstract class Parent {

	int x = 10;
	
	void fun() {

		print("In fun");
	}

	void run();
}

class Child implements Parent {

	int x = 20;
	
	void fun() {
	
		print("In child fun");
	}

	void run() {

		print("In run");
	}
}

void main() {

	Parent p = new Child();
	print(p.x);
	p.fun();
	p.run();
}
