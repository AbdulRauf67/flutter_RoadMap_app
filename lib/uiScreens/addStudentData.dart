import 'dart:ui';
import 'package:first_flutter_project/models/DBManager.dart';
import 'package:first_flutter_project/models/StudentModel.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class AddStudentData extends StatefulWidget{

  late Studentmodel oldStudentRecord;
  late String purpose='';
  AddStudentData(this.oldStudentRecord,this.purpose);

  @override
  State<AddStudentData> createState() => _DataState();

}

class _DataState extends State<AddStudentData>{

  GlobalKey<FormState> _globalKey=GlobalKey();
  TextEditingController _sName=TextEditingController();
  TextEditingController _uID=TextEditingController();
  TextEditingController _sAge=TextEditingController();

  @override
  void initState() {
    super.initState();
    if(widget.purpose=='Update'){
      _sName.text=widget.oldStudentRecord.sName;
      _sAge.text=widget.oldStudentRecord.sAge.toString();
      _uID.text=widget.oldStudentRecord.uID;
    }
  }


  String? _validateStuName(String? value){
    return value!.isEmpty ? 'Invalid Name' : null ;
  }
  String? _validateStuAge(String? value){
    return value!.isEmpty ? 'Invalid Age' : null ;
  }
  String? _validateU_ID(String? value){
    return value!.isEmpty ? 'Invalid Roll No' : null ;
  }

  void loginBtn(){
    if(_globalKey.currentState!.validate()){
      String? sName=_sName.text.toString();
      String? uID=_uID.text.toString();
      int?  sAge=int.parse(_sAge.text) ;

      _sName.clear();
      _uID.clear();
      _sAge.clear();

      Studentmodel student=Studentmodel(uID, sName, sAge);

      if(widget.purpose=='Update'){
        DBManager.instance.updateStudentRecord(widget.oldStudentRecord.uID, student);
      }else{
        DBManager.instance.addStudentRecord(student);
      }
      Navigator.pop(context);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Student Record'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                      children: [

                        Center(
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Center(
                                  child: Text('Student', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24
                                  ),),
                                ),
                                decoration: BoxDecoration(
                                  //color: Colors.blue,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(90),
                                    ),
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.centerLeft,

                                        colors: [
                                          //Colors.yellow,
                                          Colors.green,
                                          // Colors.pinkAccent,
                                          Colors.lightBlueAccent
                                        ]
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.pinkAccent,
                                          blurRadius: 15,
                                          offset: Offset(-5,5)
                                      )
                                    ]
                                ),
                              ),
                            )
                        ),

                        Padding(padding: EdgeInsets.all(15)),

                        Form(
                            key: _globalKey,
                            child:Column(
                              children: [
                                TextFormField(
                                  controller: _sName,
                                  validator: (value)=> _validateStuName(value),
                                  // keyboardType: TextInputType.multiline,
                                  // minLines: 1,
                                  // //maxLength: 20,
                                  // maxLines: 3,
                                  decoration: InputDecoration(
                                      label: Text("Enter Your Name"),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                      )
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  controller: _sAge,
                                  validator: _validateStuAge,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      label: Text("Enter your Age"),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                      )
                                  ),
                                ),

                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  controller: _uID,
                                  validator: (value) => _validateU_ID(value),
                                  keyboardType: TextInputType.text,
                                  // enableSuggestions: false,
                                  // autocorrect: false,
                                  // obscureText: true,
                                  decoration: InputDecoration(
                                      label: Text("Enter your Roll No"),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                      )
                                  ),
                                ),
                              ],
                            )
                        ),


                        SizedBox(
                          height: 70,
                        ),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                  onPressed: loginBtn,
                                  label: Text("Submit"),
                                  icon: Icon(Icons.login)
                              ),

                            ]
                        ),
                      ]
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
