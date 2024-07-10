class Parent {

	int x = 10;
	String str = "madhur";

	get getX => x;
	get getStr => str;
}

class Child extends Parent {

	int y = 20;
	String str2 = "Umesh";

	get getY => y;
	get getStr2 => str2;
}

void main() {

	Child c = Child();
	print(c.getX);
	print(c.getStr);
	print(c.getY);
	print(c.getStr2);
}
