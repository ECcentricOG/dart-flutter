
Future<String> getOrder() {

	return Future.delayed(Duration(seconds:5),()=>"Burger");
}

void main() {

	print("Start");
	var x = getOrder();
	x.then((val) => print(val));
	print("End");
}
