class Parent {

	int x = 10;
	String str = "name";

	void parentMethod() {

		print(x);
		print(name);
	}
}

class Child extends Parent {

	int y = 20;
	String str2 = "data";

	void childMethod() {

		print(y);
		print(str2);
	}
}

void main() {

	Parent obj = Parent();
	print(obj.y);
	print(obj.str2);
	obj.childMethod();
}

/*
Error: The getter 'name' isn't defined for the class 'Parent'.
 - 'Parent' is from 'Program1.dart'.
Try correcting the name to the name of an existing getter, or defining a getter or field named 'name'.
		print(name);
		      ^^^^
Program1.dart:28:12: Error: The getter 'y' isn't defined for the class 'Parent'.
 - 'Parent' is from 'Program1.dart'.
Try correcting the name to the name of an existing getter, or defining a getter or field named 'y'.
	print(obj.y);
	          ^
Program1.dart:29:12: Error: The getter 'str2' isn't defined for the class 'Parent'.
 - 'Parent' is from 'Program1.dart'.
Try correcting the name to the name of an existing getter, or defining a getter or field named 'str2'.
	print(obj.str2);
	          ^^^^
Program1.dart:30:6: Error: The method 'childMethod' isn't defined for the class 'Parent'.
 - 'Parent' is from 'Program1.dart'.
Try correcting the name to the name of an existing method, or defining a method named 'childMethod'.
	obj.childMethod();
	    ^^^^^^^^^^^
*/

