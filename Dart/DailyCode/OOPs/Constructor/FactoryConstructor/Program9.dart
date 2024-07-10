abstract class Developer {
	
	void devLang();
	
	factory Developer(String devType) {

		if(devType == 'Backend')
			return Backend();
		else if(devType == 'Frontend')
			return Frontend();
		else if(devType == 'Mobile')
			return Mobile();
		else
			return Other();
	}
}

class Backend implements Developer {

	void devLang() {

		print("SpringBoot,NodeJS");
	}
}

class Frontend implements Developer {

	void devLang() {

		print("ReactJS,AngularJS");
	}
}

class Mobile implements Developer {

	void devLang() {

		print("Flutter,Java,Kotlin,Swift");
	}
}

class Other implements Developer {

	void devLang() {

		print("DevOps,Testing");
	}
}
