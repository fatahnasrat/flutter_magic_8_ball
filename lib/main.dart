import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(title: Text('Ask Me Anything')),
        body: MagicApp(),
      ),
    ),
  );
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int ballNumber = 1;
  void changeData(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          changeData();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
