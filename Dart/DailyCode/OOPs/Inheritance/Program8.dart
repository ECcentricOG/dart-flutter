class Company {

	String? cName;
	String? loc;

	Company(this.cName,this.loc);
	
	void showData() {
	
		print(cName);
		print(loc);
	}
}

class Employee extends Company {

	int? id;
	String? name;

	Employee(this.id,this.name,String compName,String loc):super(compName,loc);

	void info() {

		print(id);
		print(name);
	}
}

void main() {

	Employee emp = Employee(3,"Umesh","Accenture","Pune");
	emp.showData();
	emp.info();
}
