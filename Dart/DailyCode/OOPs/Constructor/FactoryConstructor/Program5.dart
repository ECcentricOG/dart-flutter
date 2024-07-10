class Demo {

	static Demo obj = Demo();

	factory Demo () {
	
		print("In Factory Constructor");
		return obj;
	}
}

void main() {

	Demo d = Demo();	
}

/*

In Factory Constructor
Unhandled exception:
Stack Overflow
#0      Demo.obj (file:///home/eccentricog/Flutter/Dart/DailyCode/OOPs/Constructor/FactoryConstructor/Program5.dart:3:20)

*/
