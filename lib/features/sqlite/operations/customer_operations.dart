import 'package:detailing/features/sqlite/models/customer.dart';
import 'package:detailing/features/sqlite/poless_database.dart';

class CustomerOperations {
  final dbProvider = DetailingDatabase.instance;

  Future<Customer> createCurriculumNote(Customer customer) async {
    final db = await dbProvider.database;
    final id = await db.insert(CustomerTable.tableName, customer.toJson());
    return customer.copy(id: id);
  }

  Future<Customer> readCurriculumNoteWithId(int id) async {
    final db = await dbProvider.database;
    final result = await db.query(
      CustomerTable.tableName,
      columns: CustomerTable.values,
      where: '${CustomerTable.columnId} = ?',
      whereArgs: ['$id'],
    );

    if (result.isNotEmpty) {
      return Customer.fromJson(result.first);
    } else {
      throw Exception('readCustomerNoteWithId');
    }
  }
}
