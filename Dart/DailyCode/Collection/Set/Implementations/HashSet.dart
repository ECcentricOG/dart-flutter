// It uses Hashcode to insert values hence insertion order is not preserved

import 'dart:collection';
void main() {

	Set no = HashSet();
	
	no.add(23);
	no.add(56);
	no.add(2);
	no.add(3);
	no.add(90);
	
	print(no);
}

/*
{56, 90, 2, 3, 23}
*/
