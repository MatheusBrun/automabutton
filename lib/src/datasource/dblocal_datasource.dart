import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DbDataSource {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'urls.db'),
        onCreate: (db, version) async {
      await db.execute(
        'CREATE TABLE urls (id TEXT PRIMARY KEY, title TEXT, url TEXT,)',
      );
    });
  }
}
