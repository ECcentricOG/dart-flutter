class Demo {

	Demo() {

		print("In Demo() Constructor");	
	}

	Demo.one() {

		print("In Demo.one() Constructor");
	}
}
void main() {

	Demo obj = new Demo();
	Demo one = new Demo.one();
}
