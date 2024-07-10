import "dart:io";

void main() {

	File f = File("Demo.txt");
	f.create();

	print(f.absolute);
	print(f.path);
	print(f.parent);
	print(f.isAbsolute);
	print(f.runtimeType);
	print(f.uri);
	print(f.hashCode);
}
