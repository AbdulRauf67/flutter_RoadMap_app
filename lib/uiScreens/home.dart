import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ListViewScr.dart';

class FirstPage extends StatefulWidget{
  
  String title='';
  FirstPage(this.title);

  // int counter=0;
  // void Increment(){

  //   counter=counter+1;
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(this.title),
  //       backgroundColor: Colors.lightGreen,
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text('Aslam o Alikom'),
  //           Text('It is my first project and first page'),
  //           Text('Shown the number by increamented on press of floating button'),
  //           Text('$counter',style: TextStyle(fontSize: 24,backgroundColor: Colors.blue),),
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: Increment,
  //
  //       child: Icon(Icons.add),
  //     ),
  //   );
  // }

  @override
  State<FirstPage> createState() => _StateClass();

}

class _StateClass extends State<FirstPage>{

  void gotoListView(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Listviewscr())
    );
  }

  int counter=0 ;
  void _Increment(){
    setState(() {
      counter++;
    });
  }
  bool? _checkbox1=false;
  bool? _checkbox2=false;
  int _groupvalue=0;

  String? selectedItem='Student';
  List<String> options = ['Student','Teacher','Administrator','Visiter'];

  DateTime _selectedDate=DateTime.timestamp();
  void selectDate(BuildContext context) async {
    DateTime? pickedDate= await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2001,1), 
        lastDate: DateTime(2050));
    if(pickedDate != null && pickedDate != _selectedDate){
      setState(() {
        _selectedDate=pickedDate;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('WellCome '+widget.title),
        backgroundColor: Colors.lightGreen,

      ),

      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.all(10.0),
              child: Column(
                children: [

                ButtonBar(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.account_box)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.verified_user)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.work_history)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.history)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.share)),
                  ],
                ),

                Wrap(
                  children: [
                    Chip(
                      label: Text('chips'),
                      backgroundColor: Colors.lightGreenAccent,
                      avatar: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.chair),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          )
                      ),
                      deleteIcon: Icon(Icons.delete),
                      onDeleted: (){},
                    ),
                    Chip(
                      label: Text('Written'),
                      backgroundColor: Colors.lightGreenAccent,
                      avatar: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.chair),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          )
                      ),
                      deleteIcon: Icon(Icons.delete),
                      onDeleted: (){},
                    ),
                    Chip(
                      label: Text('chip'),
                      backgroundColor: Colors.lightGreenAccent,
                      avatar: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.chair),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          )
                      ),
                      deleteIcon: Icon(Icons.delete),
                      onDeleted: (){},
                    ),
                    Chip(
                      label: Text('show'),
                      backgroundColor: Colors.lightGreenAccent,
                      avatar: CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.chair),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(25)
                          )
                      ),
                      deleteIcon: Icon(Icons.delete),
                      onDeleted: (){},
                    ),
                  ],
                ),

                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 75,
                        child: Icon(Icons.message,
                        size: 100,),
                      ),
                      Positioned(
                        right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.lightBlueAccent,
                            radius: 20,
                            child: Text('10',
                                textAlign: TextAlign.center
                                ,style: TextStyle(
                              fontSize: 20
                            ),),
                          ))
                    ],
                  ),

                  DropdownButton(
                    value: selectedItem,
                      items: options.map(
                          (String option) {
                            return DropdownMenuItem<String>(
                              child: Text(option),
                              value: option,
                            );
                          }
                      ).toList(),
                      onChanged: (String? newValue){
                      setState(() {
                        selectedItem=newValue;
                      });
                      }
                  ),

                  ListTile(
                    leading: Radio(
                      groupValue: _groupvalue,
                      value:1,
                      onChanged: (int? value) {
                        setState(() {
                          _groupvalue=value!;
                        });
                      },
                    ),
                    title: Text('Monday'),
                  ),
                  ListTile(
                    leading: Radio(
                      groupValue: _groupvalue,
                      value:2,
                      onChanged: (int? value) {
                        setState(() {
                          _groupvalue=value!;
                        });
                      },
                    ),
                    title: Text('Tuesday'),
                  ),
                  ListTile(
                    leading: Radio(
                      groupValue: _groupvalue,
                      value:3,
                      onChanged: (int? value) {
                        setState(() {
                          _groupvalue=value!;
                        });
                      },
                    ),
                    title: Text('Wednessday'),
                  ),

                  Padding(padding: EdgeInsets.all(5)),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    enableSuggestions: false,
                    autocorrect: false,
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text("Enter your password"),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0)
                        )
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5)),

                  ListTile(
                    leading: Checkbox(
                      value:_checkbox1,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkbox1=value;
                        });
                      },
                    ),
                    title: Text('Monday'),
                  ),

                  ListTile(
                    leading: Checkbox(
                      value:_checkbox2,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkbox2=value;
                        });
                      },
                    ),
                    title: Text('Tuesday'),
                  ),

                  Padding(padding: EdgeInsets.all(5)),

                  Image(
                    image:AssetImage('lib/resources/images/imgfile.png') ,

                  ),
                  Image(image: NetworkImage('https://static.javatpoint.com/tutorial/dart/images/dart-programming.png'),
                    
                  ),

                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  const CircleAvatar(
                    radius: 40.0,
                    backgroundColor: Colors.green,
                    child: Image(
                      height: 60,
                      width: 60,
                      image: AssetImage('lib/resources/images/imgfile.png'),
                    ),
                  )

              ],
              ),
            ),

            Padding(
                padding: EdgeInsets.all(30.0)
            ),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),

            TextButton(
                onPressed: (){},
                child: Text("TextButton")
            ),
            IconButton(
                onPressed: (){},
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.account_box),
                    Padding(padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0)),
                    Icon(Icons.insert_emoticon_sharp)
                  ],
                )
            ),
            OutlinedButton.icon(
                onPressed: () => selectDate(context),
                label: Text("Open Calendar to Set Date"),
              icon: Icon(Icons.calendar_month),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.lime),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)
                  )
                ),
              ),
            ),

            Text("Date:   "+_selectedDate.toString()),

            ElevatedButton.icon(
                onPressed: (){
                  gotoListView(context);
                },
                label: Text("Go to ListView"),
                icon: Icon(Icons.list)
            ),

            Padding(padding: EdgeInsets.all(5)),
            InkWell(
              onTap: (){},
              child: Text("Event Handler Widget"),
            ),

            Container(
              height: 150,
              width: 250,
              child: Card(
                elevation: 10,
                color: Colors.pinkAccent,
                shadowColor: Colors.green,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(25)
                    )
                ),
                child: Center(
                  child: Text('Card View',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),

                      ],
        ),
      ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _Increment,
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),

      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.home,)),
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(10, 0 , 10, 0),
      //       ),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.account_box,)),
      //       Padding(
      //         padding: EdgeInsets.fromLTRB(10, 0 , 10, 0),
      //       ),
      //       IconButton(onPressed: (){},
      //           icon: Icon(Icons.chat,)),
      //
      //     ],
      //   ),
      // ),
    );
  }
}