class Meta {

	int? mobileNo;
	String? pass;

	Meta(this.mobileNo,this.pass);

	void stoleInfo() {

		print(mobileNo);
		print(pass);
	}
}

class Insta extends Meta {

	String? username;

	Insta(this.username,int mobileNo,String pass):super(mobileNo,pass);
	
	void stoleInfo() {

		print("All");
	}
	
	get getUsername => username;
}

void main() {

	Meta m = Insta("ECcentricOG",7767,"12345678");
	m.stoleInfo();
	print(m.mobileNo);
	print(m.pass);
}
