class Parent {

	int? x;
	String? str;

	Parent(this.x,this.str);

	void printData() {

		print(x);
		print(str);
	} 
}

class Child extends Parent {

	int? y;
	String? name;

	Child(this.y,this.name);

	void showData() {

		print(y);
		print(name);
	}
}

void main() {

	Child child = Child(10,"Umesh");
}
/*
 Error: The superclass, 'Parent', has no unnamed constructor that takes no arguments.
	Child(this.y,this.name);
	^^^^^
*/
