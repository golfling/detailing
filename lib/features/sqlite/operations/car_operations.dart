import 'package:detailing/features/sqlite/models/car.dart';
import 'package:detailing/features/sqlite/poless_database.dart';

class TeacherOperations {
  final dbProvider = DetailingDatabase.instance;

  Future<Car> createTeacherNote(Car teacher) async {
    final db = await dbProvider.database;
    final id = await db.insert(CarTable.tableName, teacher.toJson());
    return teacher.copy(id: id);
  }

  Future<Car> readTeacherNoteWithId(int id) async {
    final db = await dbProvider.database;
    final result = await db.query(
      CarTable.tableName,
      columns: CarTable.values,
      where: '${CarTable.columnId} = ?',
      whereArgs: ['$id'],
    );

    if (result.isNotEmpty) {
      return Car.fromJson(result.first);
    } else {
      throw Exception('readCarNoteWithId');
    }
  }
}
