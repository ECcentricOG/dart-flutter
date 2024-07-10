mixin class Demo1 {

	void fun() {

		print("Inside fun");
	}
}

mixin class Demo2 {

	void gun() {

		print("Inside gun");
	}
}

class Child with Demo1,Demo2 {


}

void main() {

	Child().fun();
	Child().gun();
}
