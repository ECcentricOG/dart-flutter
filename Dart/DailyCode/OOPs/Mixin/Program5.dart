mixin Demo {

	Demo() {

		print("In Constructor");
	}
}

void main() {

	Demo obj = Demo();
}

/*

 Error: Mixins can't declare constructors.
	Demo() {
	^^^^
Program5.dart:11:13: Error: The class 'Demo' is abstract and can't be instantiated.
	Demo obj = Demo();
	           ^^^^
*/
