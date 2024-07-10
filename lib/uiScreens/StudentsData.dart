import 'package:first_flutter_project/models/DBManager.dart';
import 'package:first_flutter_project/models/StudentModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'addStudentData.dart';

class Studentsdata extends StatefulWidget{


  @override
  State<Studentsdata> createState() => _StudentState();

}

class _StudentState extends State<Studentsdata> {

  List<Studentmodel>? _studentsList=[];

  @override
  void initState() {
    super.initState();
   _loadStudentsDataFromSQLite();
  }

  void _loadStudentsDataFromSQLite() async {
    _studentsList= await DBManager.instance.loadStudentsRecord();
  }
  void _deleteStudent(String uID) async {
    await DBManager.instance.deleteStudentRecord(uID);
    setState(() {
      _loadStudentsDataFromSQLite();
    });
  }

  void _editStudentRecord(Studentmodel student) async {
    await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddStudentData(student,'Update')));

    setState(() {
      _loadStudentsDataFromSQLite();
    });
  }

  Widget _displayStudentsRecord(){
    return FutureBuilder(
        future: DBManager.instance.loadStudentsRecord(),
        builder: (context,snapshot){
          if(snapshot.hasError) {
            return Center(child:  Text('Error '/*+ snapshot.error.toString()*/));
          }
          else if(snapshot.hasData){
            List<ListTile> _tilesList=[];
            
            _studentsList!.forEach((element){
              ListTile _tile=ListTile(
                title: Text(element.sName, style: TextStyle(fontSize: 20),),
                subtitle: Text(element.sAge.toString(), style: TextStyle(fontSize: 20),),
                trailing: Wrap(
                  spacing: 5,
                  children: [
                    IconButton(
                        onPressed: (){_editStudentRecord(element);},
                        icon: Icon(Icons.edit_note)),
                    IconButton(
                      onPressed: (){_deleteStudent(element.uID);},
                      icon: Icon(Icons.delete),),
                  ],
                ),
              );
              _tilesList.add(_tile);
            });
            return Column(
              children: _tilesList,
            );
          }
          else{
            return Center(child:Text('No Data Available'),);
          }
        });
  }

  void navigateToAddStudent() async{
    Studentmodel student=Studentmodel('Abdul Rauf', '67', 1);
    await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddStudentData(student,'Add')));

    setState(() {
      _loadStudentsDataFromSQLite();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StudentsData'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: _displayStudentsRecord(),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            navigateToAddStudent();
          },
          //label: Text("Add"),
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
            Radius.circular(25)
            ),

          ),
      ),
    );
  }
}

