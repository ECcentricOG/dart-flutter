void playerInfo({String? name,int? jerNo},[String team = "Barca"]) {

	print(name);
	print(jerNo);
	print(team);
}

void main() {

	playerInfo(name : "Messi",jerNo : 10, team : "Inter Maimi");
	playerInfo(name : "Andres", jerNo : 8);
}

/*
Error: Expected ')' before this.
void playerInfo({String? name,int? jerNo},[String team = "Barca"]) {
*/
