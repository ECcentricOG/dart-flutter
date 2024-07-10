class Temp {

	void m1() {

		print("Inside m1");
	}
}

mixin Demo on Temp {

	void fun() {

		print("Inside fun");
	}
}

class Random with Demo {


}

void main() {


}

/*

Error: 'Object' doesn't implement 'Temp' so it can't be used with 'Demo'.

*/
