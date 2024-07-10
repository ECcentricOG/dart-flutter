import 'dart:io';

int mult = 1;
void fact(int x) {
	
	if(x == 0)
		return;
	
	mult *= x;
	x--;
	fact(x);	
}

void main() {

	fact(5);
	print(mult);
}

