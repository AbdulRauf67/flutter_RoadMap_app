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
            List<Card> _tilesList=[];
            
            _studentsList!.forEach((element){
              Card _tile=Card(
                child: ListTile(
                  title: Text(element.sName, style: TextStyle(fontSize: 24),),
                  subtitle: Text('Age: '+element.sAge.toString(), style: TextStyle(fontSize: 16),),
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




  bool logout=false;
  void signout(BuildContext context) async {
    Widget buttonYes=TextButton(onPressed: (){
      setState(() {
        logout=true;
      });
      Navigator.pop(context);// use to dismiss the alert dialog
    },
        child: Text("Yes"));
    Widget buttonNo=TextButton(onPressed: (){
      setState(() {
        logout=false;
      });
      Navigator.pop(context);// use to dismiss the alert dialog

    },
        child: Text("No"));


    AlertDialog alert=AlertDialog(
      title: Text('Logout'),
      content: Text('Sure you can logout?'),
      actions: [
        buttonYes,
        buttonNo
      ],
    );
    await showDialog(
        context: context,
        builder: (context) {
          return alert;
        });

    if(logout){
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('StudentsData'),
        backgroundColor: Colors.lightGreenAccent,
        actions: [
          IconButton(onPressed: () {
            signout(context);
          },
              icon: Icon(Icons.logout))
        ],
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

