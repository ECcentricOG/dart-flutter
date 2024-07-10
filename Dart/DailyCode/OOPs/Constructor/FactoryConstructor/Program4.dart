class Demo {

	static Demo d = Demo();

	Demo() {

		print("In Constructor");
	}
}

void main() {

	print(Demo.d);
}
