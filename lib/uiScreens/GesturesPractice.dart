import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Gesturespractice extends StatefulWidget{


  @override
  State<Gesturespractice> createState() => _gestureState();

}

class _gestureState extends State<Gesturespractice> {

  String _guestureValue='Not Any Event ';
  int sum=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector Widgets'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height:250 ,
                width: 350,
                alignment: Alignment.center,
                color: Colors.lightBlueAccent,
                child:DragTarget(builder: (BuildContext context, List<dynamic> candidateData, List<dynamic> rejectedData) {
                    if(candidateData.isEmpty){
                      return Text(sum.toString());
                    }else{
                      sum += 1;
                      return Text(sum.toString());
                    }
                  },
                )
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Draggable(
                childWhenDragging: GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.black26,
                    child: Icon(Icons.home, size: 60,color: Colors.white,),
                  ),
                ),

                feedback: GestureDetector(
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.lightGreenAccent,
                    child: Icon(Icons.home, size: 60,color: Colors.white,),
                    ),
                  ),
                child:GestureDetector(
                  onTap: (){
                    setState(() {
                      _guestureValue='Tap event performed';
                    });
                  } ,
                  onTapUp:(TapUpDetails tdd){
                    setState(() {
                      _guestureValue='TapUp performed $tdd';
                    });
                  },
                  onDoubleTap:(){
                    setState(() {
                      _guestureValue='Double Tap event performed';
                    });
                  } ,
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.lightGreen,
                    child: Icon(Icons.home, size: 60,color: Colors.white,),
                  ),
                ),
              ),
            ),



            Text(_guestureValue, style: TextStyle(fontSize: 20,color: Colors.lightBlueAccent),)
          ],
        ),
      ),
    );
  }
}

