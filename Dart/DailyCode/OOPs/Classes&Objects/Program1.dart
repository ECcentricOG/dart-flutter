import "dart:io";

class Demo {

	int x = int.parse(stdin.readLineSync()!);

	void fun() {
		
		stdout.writeln(x);
	}
}

void main() {

	Demo obj = Demo();
	obj.fun();
}
