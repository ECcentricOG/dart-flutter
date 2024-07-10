class Demo {

	Demo._private() {

		print("In Private Constructor");
	}

	factory Demo() {

		print("In Factory Constructor");
		return Demo._private();
	}
}
