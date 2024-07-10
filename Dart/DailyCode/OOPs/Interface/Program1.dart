abstract class Parent {

	int x = 10;
	
	void fun() {

		print("In fun");
	}
	
	void gun();
	void run();
}

class Child implements Parent {

	void gun() {

		print("In gun");
	}

	void run() {

		print("In run");
	}
}

void main() {

}
// Error
