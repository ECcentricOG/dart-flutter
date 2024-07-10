class Demo {
	
	int? id;
	String? name;

	Demo(this.name,this.id);
	
	void info() {

		print("name : $name and id : $id");
	}
}

void main() {

	Demo obj = new Demo("Umesh",3);
	obj.info();
}
