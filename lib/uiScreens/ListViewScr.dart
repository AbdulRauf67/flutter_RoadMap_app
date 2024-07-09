import 'dart:ui';
import 'package:first_flutter_project/uiScreens/GridViewScr.dart';
import 'package:first_flutter_project/uiScreens/home.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Listviewscr extends StatefulWidget{

  String title='';
  //FirstPage(this.title);


  @override
  State<Listviewscr> createState() => _listState();

}

class _listState extends State<Listviewscr>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Simple ListView'),
          backgroundColor: Colors.lightGreen,
        ),
        drawer:Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Image.asset('lib/resources/images/imgfile.png',
              fit: BoxFit.cover,)),

              ListTile(
                  leading:Icon(Icons.home),
                  title:Text('Home'),
                  ),
              ListTile(
                leading:Icon(Icons.account_box),
                title:Text('Account'),
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context,  MaterialPageRoute(builder: (context) => GrideViewScr()));
                },
                leading:Icon(Icons.grid_4x4_outlined),
                title:Text('Grid View'),
              ),
              Divider(
                height: 2,color: Colors.grey,
              ),
              ListTile(
                leading:Icon(Icons.settings),
                title:Text('Settings'),
              ),
              ListTile(
                leading:Icon(Icons.lock),
                title:Text('Privacy'),
              ),
              ListTile(
                leading:Icon(Icons.security),
                title:Text('Security'),
              ),
            ],
          ),
        ),
        body:ListView(
          children: [
            Card(
              child: ListTile(
                leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                title:Text('User Name'),
                subtitle: Text('job Description'),
                trailing: CircleAvatar(
                  backgroundColor: Colors.lightBlueAccent,
                  radius: 15,
                  child: Text('10',
                    textAlign: TextAlign.center
                    ,style: TextStyle(
                        fontSize: 16
                    ),),
                )),
              ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),
            Card(
              child: ListTile(
                  leading:CircleAvatar(radius: 25, child: Icon(Icons.man_rounded, size: 25,),),
                  title:Text('User Name'),
                  subtitle: Text('job Description'),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.lightBlueAccent,
                    radius: 15,
                    child: Text('10',
                      textAlign: TextAlign.center
                      ,style: TextStyle(
                          fontSize: 16
                      ),),
                  )),
            ),





          ],
        )
    );
  }
}

