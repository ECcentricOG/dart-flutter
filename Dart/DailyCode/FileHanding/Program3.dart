import "dart:io";
void main() async {

	File f = File("Demo.txt");
	
	//copy()
	var cp = f.copy("Ecc.txt");
	cp.then((val) => print(val));

	//copySync()
	f.copySync("Ecc.txt");

	//exist();
	var ans = await f.exists();
	print(ans);

	//lastAccessed()
	var la = await f.lastAccessed();
	print(la);
	
	//lastModified()
	var lm = await f.lastModified();
	print(lm);

	//length
	var len = await f.length();
	print(len);

	//rename()
	var r = await f.rename("FileDemo.txt");
	print(r);
}
