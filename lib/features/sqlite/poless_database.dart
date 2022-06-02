import 'package:detailing/features/sqlite/models/customer.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DetailingDatabase {
  static final DetailingDatabase instance = DetailingDatabase._init();

  static Database? _database;

  DetailingDatabase._init();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDB('detailing.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return openDatabase(path, version: 1, onCreate: _createDB); // await
  }

  Future _createDB(Database db, int version) async {
    const stringType = 'TEXT';
    const intType = 'INTEGER';
    const primaryKeyConstraint = 'PRIMARY KEY';
    const notNullConstraint = 'NOT NULL';
    const autoincrementConstraint = 'AUTOINCREMENT';

    // Customer table creating
    // ignore: leading_newlines_in_multiline_strings
    await db.execute('''CREATE TABLE IF NOT EXISTS ${CustomerTable.tableName} (
          ${CustomerTable.columnId} $intType $primaryKeyConstraint $autoincrementConstraint,
          ${CustomerTable.columnName} $stringType $notNullConstraint,
          ${CustomerTable.columnSurname} $stringType
    )''');
  }

  Future close() async {
    final db = await instance.database;
    await db.close();
  }
}
