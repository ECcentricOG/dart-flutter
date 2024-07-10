void playerInfo([String team = "Barca"],{String? name,int? jerNo}) {

        print(name);
        print(jerNo);
        print(team);
}

void main() {

        playerInfo(name : "Messi",jerNo : 10, team : "Inter Maimi");
        playerInfo(name : "Andres", jerNo : 8);
}

