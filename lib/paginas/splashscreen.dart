import 'dart:async';

import 'package:proyecto_escuela/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SplashSecreenState();
  }
}

class _SplashSecreenState extends State {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds:5),
            (){
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                  builder: (BuildContext context){
                    return Home();
              }
          ));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('imagenes/pajaro3.jpg'),
      ),
    );

  }
}