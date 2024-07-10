class Backend {

	String? lang;
	
	Backend._code(String lang) {

		if(lang == 'Java')
			this.lang = "SpringBoot";
		else if(lang == 'JavaScript')
			this.lang = "NodeJS";
		else
			this.lang = "Go is good for backend";
	}

	factory Backend(String lang) {

		return Backend._code(lang);
	}
}
