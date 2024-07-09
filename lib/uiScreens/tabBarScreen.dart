import 'dart:ui';
import 'package:first_flutter_project/uiScreens/home.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'ListViewScr.dart';
import 'login.dart';

class Tabbarscreen extends StatefulWidget{

  String title='';
  //FirstPage(this.title);


  @override
  State<Tabbarscreen> createState() => _TabState();

}

class _TabState extends State<Tabbarscreen> with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            FirstPage('Abdul Rauf'),
            Listviewscr(),
            login()
        ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.purpleAccent,
          labelColor: Colors.green,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'ListView',
            ),
            Tab(
              icon: Icon(Icons.login),
              text: 'Login',
            ),
        ],
        ),
      ),
    );
  }
}

