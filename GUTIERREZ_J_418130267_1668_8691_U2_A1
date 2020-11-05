import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: ReverseTextApp(),
  ));
}

class ReverseTextApp extends StatefulWidget {
  @override
  ReverseTextAppState createState() => ReverseTextAppState();
}

class ReverseTextAppState extends State<ReverseTextApp> {
  final _textController = TextEditingController();

  String resultString = "";

  void onPressOfButton() {
    setState(() {
      resultString = _textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Componente 1
          Container(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Texto',
                ),
                keyboardType: TextInputType.number,
              )),
          //Componente 2
          Container(
              padding: EdgeInsets.all(16.0),
              child: Text(resultString, style: TextStyle(fontSize: 40.0, color:Colors.green)),
          transform:Matrix4.rotationX(pi)),
          //Componente 3
          Container(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                child: Text(
                  "Invierte",
                  style: TextStyle(color: Colors.black),
                ),
                color: Colors.blue,
                onPressed: onPressOfButton,
              )),
        ],
      ),
    );
  }
}
