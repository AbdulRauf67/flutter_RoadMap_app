import 'package:flutter/material.dart';
import 'package:first_flutter_project/uiScreens/home.dart';
void main(){
 runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: FirstPage('Abdul Rauf'),
    );
  }

}