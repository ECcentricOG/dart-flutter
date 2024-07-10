mixin Demo1 {

	void fun1() {

		print("In Demo1");
	}
}

mixin Demo2 on Demo1{

	void fun2() {

		print("In Demo2");
	}
}

class Normal with Demo2 {

	
}

void main() {

	Normal n = Normal();
	n.fun1();
	n.fun2();
}

/*

Error: The non-abstract class 'Normal' is missing implementations for these members:
 - Demo1.fun1
Try to either
 - provide an implementation,
 - inherit an implementation from a superclass or mixin,
 - mark the class as abstract, or
 - provide a 'noSuchMethod' implementation.

class Normal with Demo2 {
      ^^^^^^
Program6.dart:3:7: Context: 'Demo1.fun1' is defined here.
	void fun1() {
	     ^^^^
Program6.dart:17:7: Error: 'Object' doesn't implement 'Demo1' so it can't be used with 'Demo2'.
 - 'Object' is from 'dart:core'.
 - 'Demo1' is from 'Program6.dart'.
 - 'Demo2' is from 'Program6.dart'.
class Normal with Demo2 {
*/
