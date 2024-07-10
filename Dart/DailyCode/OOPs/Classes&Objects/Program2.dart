import "dart:io";

	int? empCount = 0;
        String? name = null;
        String? location = null;

class Company {
	
	static void setInfo() {
	
		stdout.write("Enter Company Name : ");
		name = stdin.readLineSync()!;
		stdout.write("Enter Employee Count : ");
		empCount = int.parse(stdin.readLineSync()!);
		stdout.write("Enter Location : ");
		location = stdin.readLineSync()!;
	}

	void getInfo() {

		print("Employee Count : $empCount");
		print("Company Name : $name");
		print("Location : $location");
	}
}

void main() {

	Company c = new Company();
	Company.setInfo();
	Company().getInfo();
}
