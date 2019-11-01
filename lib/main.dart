import 'package:flutter/material.dart';

void main() => runApp(ButtonClickApp());

class ButtonClickApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
          appBar: new AppBar(
              title: new Text("Stateful Widget!"),
              backgroundColor: Colors.deepOrange),
          body: new Container(child: new Center(child: ButtonClick()))),
    );
  }
}

class ButtonClick extends StatefulWidget {
  @override
  ButtonClickState createState() => new ButtonClickState();
}

class ButtonClickState extends State<ButtonClick> {
  int counter = 0;
  List<String> stringsList = ['String 1', 'String 2', 'String 3', 'String 4'];
  String stringToShow = "";
  String deneme = "deneme String";

  void onPressFunction() {
    setState(() {
      stringToShow = stringsList[counter];
      counter = counter < 3 ? counter + 1 : 0;
      print(stringToShow);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(stringToShow,
              style:
                  new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
          new Padding(padding: new EdgeInsets.all(15.0)),
          new RaisedButton(
              child: new Text("Press me!",
                  style: new TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0)),
              color: Colors.red,
              onPressed: onPressFunction)
        ]);
  }
}
