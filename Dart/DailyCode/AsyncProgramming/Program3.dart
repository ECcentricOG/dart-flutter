
Future<void> getOrder() {

	return Future.delayed(Duration(seconds:5),throw Exception("Sorry No Food Left"));
}

void main() {
	
	print("Start");
	getOrder();
	print("End");
}
