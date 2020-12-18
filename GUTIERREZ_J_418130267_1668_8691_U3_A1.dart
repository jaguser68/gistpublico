import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CalculatorApp(),
  ));
}

class CalculatorApp extends StatefulWidget {
  @override
  CalcButton createState() => CalcButton();
}

class CalcButton extends State<CalculatorApp> {
  final txtEntrada = TextEditingController();
  //final txtResultado = TextEditingController();
  //double operand1 = 0.0;
  double operand2 = 0.0;
  String operation;
  String calculation = "0";

  void onPressOfButton(String text) {
    //Por hacer
  print(text);
   // setState(() {
     // calculation = txtEntrada.text;
    //});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(calculation, style: TextStyle(fontSize: 30)),
                )),
            //Row1
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ComponenteBoton(text: "7", callback: (){
                    onPressOfButton("7");
                  }),
                  ComponenteBoton(text: "8", callback: (){
                    onPressOfButton("8");
                  }),
                  ComponenteBoton(text: "9", callback: (){
                    onPressOfButton("9");
                  }),
                  ComponenteBoton(text: "%", callback: (){
                    onPressOfButton("%");
                  })

                ]),
            //Row2
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  ComponenteBoton(text: "4", callback: (){
                    onPressOfButton("4");
                  }),
                  ComponenteBoton(text: "5", callback: (){
                    onPressOfButton("5");
                  }),
                  ComponenteBoton(text: "6", callback: (){
                    onPressOfButton("6");
                  }),
                  ComponenteBoton(text: "+", callback: (){
                    onPressOfButton("+");
                  })

                ]),
            //Row3
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ComponenteBoton(text: "1", callback: (){
                    onPressOfButton("1");
                  }),
                  ComponenteBoton(text: "2", callback: (){
                    onPressOfButton("2");
                  }),
                  ComponenteBoton(text: "3", callback: (){
                    onPressOfButton("3");
                  }),
                  ComponenteBoton(text: "-", callback: (){
                    onPressOfButton("-");
                  })

                ]),
            //Row4
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ComponenteBoton(text: "C", callback: (){
                    onPressOfButton("C");
                  }),
                  ComponenteBoton(text: "0", callback: (){
                    onPressOfButton("0");
                  }),
                  ComponenteBoton(text: "=", callback: (){
                    onPressOfButton("=");
                  }),
                  ComponenteBoton(text: "*", callback: (){
                    onPressOfButton("*");
                  })

                ])

          ],
        ),
      ),
    );
  }
}
class ComponenteBoton extends StatelessWidget {
  final Function callback;
  final String text;
  const ComponenteBoton({Key key,@required this.text, @required this.callback}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
          padding: EdgeInsets.all(2.0),
          child: RaisedButton(
            child: Text(
              this.text,
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: callback,
          ));
  }
}
