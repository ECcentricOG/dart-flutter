class Parent {

        Parent() {

                print("In Parent Constructor");
        }

        call() {

                print("In Parent Call Method");
        }
}

class Child extends Parent {

        Child() {

                super();
                print("In Child Constructor");
        }
	
	call() {

		print("In Child Call Method");
	}
}

void main() {

        Child child = Child();
	child();
	Parent().call();
}
