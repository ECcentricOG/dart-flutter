import 'dart:collection';

class Club implements Iterator {

	var id = [];
	var name = [];
	int index = -1;	

	Club(String id,String name) {

		this.id = id.split(",");
		this.name = name.split(",");
	}

	bool moveNext() {

		if(index < id.length - 1){

			index++;
			return true;
		}
		return false;
	}

	get current {

		if(index >= 0 && index < id.length)
			return id[index]+ " : " + name[index];
	}
}

void main() {

	Club club = Club("1,2,3","Barcelona,Real Madrid,Man City");
	
	while(club.moveNext()) {

		print(club.current);
	}
}
