import "dart:io";

Future<String> getMessage() {

	String order = stdin.readLineSync()!;
	return Future.delayed(Duration(seconds : 3),()=>order);
}

Future<String> getOrder() async {

	stdout.write("What You Like to Order : ");
	var ord = await getMessage();
	return Future.delayed(Duration(seconds:3),()=>ord);
	
}

Future<String> getOrderMessage() async {

	var msg = await getOrder();
	return "Your Order is $msg";
}

void main() async {

	print("Start");
	var ans = await getOrderMessage();
	print(ans);
	print("End");
}
