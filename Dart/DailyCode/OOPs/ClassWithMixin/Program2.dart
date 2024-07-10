mixin class Demo {

	void m2() {

		print("Inside m2");
	}
}

class Child1 with Demo {

	
}

class Child2 extends Demo {


}

void main() {

	Child1().m2();
	Child2().m2();
} 
