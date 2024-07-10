import "dart:io";

void main() async {

	//Read
	File f = File("Ecc.txt");

	if(f.existsSync()) {
	
		String str = await f.readAsString();
		print(str);
	}else
		print("file not found");

	
	//Write
	await f.writeAsString("Umesh Unde");
	await f.writeAsString("ECcentricOG",mode:FileMode.append);
	
	var ans = await f.readAsString();
	print(ans);

	f.delete();
	print("File is Deleted");
}
