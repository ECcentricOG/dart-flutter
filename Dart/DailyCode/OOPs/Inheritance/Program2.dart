class Parent {

        int x = 10;
        String str = "name";

        void parentMethod() {

                print(x);
                print(str);
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

	Parent p = new Parent();
	print(p.x);
	print(p.str);
	p.parentMethod();

	Child c = new Child();
	print(c.x);
	print(c.str);
	c.parentMethod();
	print(c.y);
	print(c.str2);
	c.childMethod();
}
