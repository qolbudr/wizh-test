import 'dart:io';
import 'package:path/path.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DatabaseHelper.internal();

  initDb() async {
    Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "main.db");
    var ourDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return ourDb;
  }

  void _onCreate(Database db, int version) async {
    // await db.execute("CREATE TABLE User(id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT, role TEXT, phone TEXT, address TEXT, photo TEXT, createdAt TEXT, updatedAt TEXT)");
    // await db.execute("CREATE TABLE Token(id INTEGER PRIMARY KEY, value TEXT)");
  }

  // Future? storeUser(UserModel user) async {
  //   var dbClient = await db;
  //   await dbClient.insert("User", user.toJson());
  // }

  // Future? storeToken(String token) async {
  //   var dbClient = await db;
  //   await dbClient.insert("Token", {'value': token});
  // }

  // Future<UserModel?> getUser() async {
  //   var dbClient = await db;
  //   final res = await dbClient.query("User");
  //   if (res.isNotEmpty) {
  //     Map<String, dynamic> user = res.first;
  //     return UserModel.fromJson(user);
  //   }

  //   return null;
  // }

  // Future<String?> getToken() async {
  //   var dbClient = await db;
  //   final res = await dbClient.query("Token");
  //   if (res.isNotEmpty) {
  //     Map<String, dynamic> token = res.first;
  //     return token['value'];
  //   }

  //   return null;
  // }

  // Future<void> deleteData() async {
  //   var dbClient = await db;
  //   await dbClient.delete('User');
  // }
}
