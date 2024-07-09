import 'dart:ui';
import 'package:first_flutter_project/uiScreens/home.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'ListViewScr.dart';
import 'login.dart';

class GrideViewScr extends StatefulWidget{

  String title='';
  //FirstPage(this.title);


  @override
  State<GrideViewScr> createState() => _TabState();

}

class _TabState extends State<GrideViewScr> {


  List<String> titles=['Home','Contacts','Phone','Messages',
    'Gellry','Settings','Music','Alarm',
    'FaceBook','Twitter','Android','IOS','Flutter'];
  List<IconData> usedIcons=[Icons.home,Icons.contacts,
    Icons.phone,Icons.messenger,Icons.browse_gallery,
    Icons.settings,Icons.music_note,Icons.alarm,
    Icons.facebook,Icons.table_bar_outlined,Icons.android,
    Icons.ios_share,Icons.flutter_dash];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('GridView'),
      ),
      body: SafeArea(
        child: GridView.count(
            crossAxisCount: 3,
            children:List.generate(titles.length, (index){
              return InkWell(
                onTap: (){},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(usedIcons[index],size: 45,color: Colors.pink,),
                    Text(titles[index],style: TextStyle(fontSize: 16),)
                  ],
                ),
              );
            })
        ),
      ),
    );
  }
}

