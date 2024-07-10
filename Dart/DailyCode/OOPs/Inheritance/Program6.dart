class Parent {

        int x = 10;
        String str = "name";

        void parentMethod() {

                print(x);
                print(str);
        }
}

class Child extends Parent {

        int x = 20;
        String str = "Data";

        void childMethod() {

                print(x);
                print(str);
        }
}
void main() {

	Parent p = Parent();
	Child c = Child();

	p.parentMethod();
	c.parentMethod();
} 
