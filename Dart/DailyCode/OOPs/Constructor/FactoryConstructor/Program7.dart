class Demo {

	Demo._private() {

		print("In Private Constructor");
	}

	factory Demo() {

		return Demo._private();
	}

	void fun() {

		print("Inside fun");
	}
}
