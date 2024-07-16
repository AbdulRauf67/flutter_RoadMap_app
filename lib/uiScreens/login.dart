import 'dart:ui';
import 'package:first_flutter_project/uiScreens/tabBarScreen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget{

  String title='';
  //FirstPage(this.title);


  @override
  State<login> createState() => _LoginState();

}

class _LoginState extends State<login>{

  GlobalKey<FormState> _globalKey=GlobalKey();
  TextEditingController _userName=TextEditingController();
  TextEditingController _password=TextEditingController();


  String? _validateUserName(String? value){
    return value!.isEmpty ? 'Invalid UserName' : null ;
  }
  String? _validatePassword(String? value){
    return value!.isEmpty ? 'Invalid password' : null ;
  }

  void loginBtn(){
    if(_globalKey.currentState!.validate()){
      String? userName=_userName.text.toString();
      String? password=_password.text.toString();

      _userName.clear();
      _password.clear();

      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Tabbarscreen())
      );

    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Appliction'),
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

                        SizedBox(
                          height: 30,
                          width: 30,
                        ),

                        Center(
                            child: Padding(
                              padding: EdgeInsets.all(30),
                              child: Container(
                                height: 150,
                                width: 150,
                                child: Center(
                                  child: Text('Login', style: TextStyle(
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
                                  controller: _userName,
                                  validator: (value)=> _validateUserName(value),
                                  // keyboardType: TextInputType.multiline,
                                  // minLines: 1,
                                  // //maxLength: 20,
                                  // maxLines: 3,
                                  decoration: InputDecoration(
                                      label: Text("Enter User Name"),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(30.0)
                                      )
                                  ),
                                ),
                                // Padding(padding: EdgeInsets.all(5)),
                                // TextFormField(
                                //   decoration: InputDecoration(
                                //       label: Text("Enter father Name"),
                                //       border: OutlineInputBorder(
                                //           borderRadius: BorderRadius.circular(20.0)
                                //       )
                                //   ),
                                // ),

                                Padding(padding: EdgeInsets.all(5)),
                                TextFormField(
                                  controller: _password,
                                  validator: (value) => _validatePassword(value),
                                  keyboardType: TextInputType.text,
                                  enableSuggestions: false,
                                  autocorrect: false,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      label: Text("Enter your password"),
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
                              label: Text("Login"),
                              icon: Icon(Icons.login)
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ElevatedButton.icon(
                                onPressed: (){},
                                label: Text("SignUp"),
                                icon: Icon(Icons.edit_note_rounded)
                            ),
                        ]
                        ),

                        Padding(padding: EdgeInsets.all(15)),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.blue
                            ),
                          ),
                        )

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
