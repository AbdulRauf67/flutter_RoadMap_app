

import 'package:first_flutter_project/models/StudentModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBManager{

  static DBManager instance=DBManager._();

  DBManager._() {
  }

  Future<Database> initDatabase() async{
    String dbPath= await getDatabasesPath();
   final Database _database=await openDatabase(
      join(
        dbPath , 'students.db'
      ),
      onCreate: (db,version) {
        return db.execute(
          'create table students(uID text primary key,sName text,sAge integer)'
        );
      },
      version: 1
    );
    return _database;
  }


  Future<void> addStudentRecord(Studentmodel student) async{
    Database _db=await this.initDatabase();

    await _db.insert(
        'students',
        student.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort
    );
  }

  Future<List<Studentmodel>> loadStudentsRecord() async {
    Database _db=await this.initDatabase();


    List<Map<String,dynamic>> studentsList=await _db.query('students');

    return List.generate(studentsList.length, (index){
      return Studentmodel(
      studentsList[index]['uID'],
      studentsList[index]['sName'],
      studentsList[index]['sAge']
      );
    });

  }


  Future<void> deleteStudentRecord(String uID) async {
    Database _db=await this.initDatabase();

    await _db.delete(
      'students',
      where: 'uID=?',
      whereArgs: [uID]
    );
  }

  Future<void> updateStudentRecord(String uID, Studentmodel student) async {
    Database _db=await this.initDatabase();

    await _db.update(
        'students',
        student.toMap(),
        where: 'uID=?',
        whereArgs: [uID]
    );
  }
}