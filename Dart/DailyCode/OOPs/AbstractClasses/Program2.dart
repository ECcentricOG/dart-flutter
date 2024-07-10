abstract class Parent {

	void property() {

		print("Happiness");
	}
	
	void career();
	void marry();
}

class Child extends Parent {

	void career() {

		print("Engineer");
	}

	void marry() {

		print("Sakshi");
	}
}

void main() {

	Parent p = new Child();
	p.property();
	p.career();
	p.marry();
}
