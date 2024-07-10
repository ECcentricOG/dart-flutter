import 'dart:collection';

void main() {

	var list = ["Umesh","Pritam","Saprem","Sarwesh"];
	
	Iterator itr = list.iterator;
	
	while(itr.moveNext()) {

		print(itr.current);
	}
}
