class Player {

	int? _jerNo;
	String? _name;

	get getName => _name;
	get getJerNo => _jerNo;

	set setName(String? name) => _name = name;
	set setJerNo(int? jerNo) => _jerNo = jerNo;

	Player(this._jerNo,this._name);
}

void main() {

	Player goat = new Player(17,"ABD");

	goat.setName = "Messi";
	goat.setJerNo = 10;
	
	print(goat.getName);
	print(goat.getJerNo);

}
