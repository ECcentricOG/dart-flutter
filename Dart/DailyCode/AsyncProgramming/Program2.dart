void fun1() {

	for(int i=1;i<=10;i++)
		print("fun1 Statement$i");
}

void fun2() {

	for(int i=1;i<=10;i++)
		print("loop1 $i");

	Future.delayed(Duration(seconds:3));

	for(int i=1;i<=10;i++)
		print("loop2 $i");
}

void main() {

	print("Start");
	fun1();
	fun2();
	print("End");
}
