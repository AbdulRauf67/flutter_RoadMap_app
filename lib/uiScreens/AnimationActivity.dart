import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Animationactivity extends StatefulWidget{


  @override
  State<Animationactivity> createState() => _Animations();

}

class _Animations extends State<Animationactivity> {

  double _height=100;
  double _width=100;
  void _changeSize(){
    setState(() {
      _height < 350 ? _height+=50 : _height=100 ;
      _width < 350 ? _width+=50 : _width=100 ;
    });
  }

  double _opacity=1.0;
  void makeTransparent(){
    setState(() {
      _opacity > 0.1 ? _opacity -= 0.1 : _opacity = 1.0 ;
    });
  }

  bool _crossFade=true;
  void _changeFadeState(){
    setState(() {
      _crossFade ? _crossFade=false : _crossFade=true ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Animations'),
      ),
      body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
                width: 350,
              ),
              Center(
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  height: _height,
                  width: _width,
                  color: Colors.brown,
                  child: TextButton(
                    onPressed: _changeSize,
                    child: Text('Tap to change the Size',
                      style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child:AnimatedOpacity(
                  opacity: _opacity,
                  duration: Duration(milliseconds: 400),
                  curve: Curves.bounceIn,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.blueAccent,
                    child: TextButton(
                      onPressed: makeTransparent,
                      child: Text('Tap to change the Size',
                        style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
              ),
              SizedBox(
                height: 15,
              ),
              Stack(
                children: [
                  AnimatedCrossFade(
                      firstChild: Container(
                        height: 200,
                        width: 200,
                        color: Colors.pink,
                      ),
                      secondChild: Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                      crossFadeState: _crossFade ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                      duration: Duration(seconds: 2)),

                  Positioned.fill(child: TextButton(
                    onPressed: (){
                      _changeFadeState();
                    }, child: Text('Tap here to change'),
                  ))
                ],
              )
            ],
          ),
        ),
    );
  }
}

