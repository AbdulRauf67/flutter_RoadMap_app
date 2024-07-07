//import 'dart:js_interop';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

  int counter=0 ;
  void _Increment(){
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('First Appliction'),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),
            Text('Aslam o Alikom'),
            Text('It is my first project and first page'),
            Text('Shown the number by increamented on press of floating button'),
            Text('$counter',style: TextStyle(fontSize: 24,color: Colors.red),),




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

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.home,)),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0 , 10, 0),
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.account_box,)),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0 , 10, 0),
            ),
            IconButton(onPressed: (){},
                icon: Icon(Icons.chat,))
          ],
        ),
      ),
    );
  }
}