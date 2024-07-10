import 'dart:collection';

void main() {

	List list = [1,2,3,4,5,6,2,3,1,2,1,3,2,4,6,4,5,3,2,4,1,5];
	
	Set set = {1,2,3,4,5,6};

	Map map = {10:"Messi",9:"Suarez",11:"Neymar"};

	Queue queue = Queue();
	queue.addAll([1,2,3,4,5]);

	print(list.iterator);
	print(set.iterator);
	print(queue.iterator);
	// print(map.iterator); has no iterator property
}
