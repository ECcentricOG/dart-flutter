import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_practise/player.dart';

dynamic database;

Future<void> insert(Player player) async {
  dynamic localDB = await database;
  await localDB.insert(
    "players",
    player.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<void> delete(Player player) async {
  dynamic localDB = database;
  localDB.delete(
    "players",
    where: "jerNo = ?",
    whereArgs: [player.jerNo],
  );
}

Future<List<Player>> getPlayers() async {
  dynamic localDB = await database;
  List<Map<String, dynamic>> allPlayers = await localDB.query("players");

  return List.generate(
    allPlayers.length,
    (index) {
      return Player(
        avg: allPlayers[index]['avg'],
        jerNo: allPlayers[index]['jerNo'],
        name: allPlayers[index]['name'],
      );
    },
  );
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = await openDatabase(
    join(await getDatabasesPath(), "PlayerDataB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        '''
        CREATE TABLE players(
          jerNo INT PRIMARY KEY,
          name TEXT,
          avg REAL)
      ''',
      );
    },
  );

  List<Player> list = await getPlayers();
  for (Player p in list) {
    print(p);
  }
}
