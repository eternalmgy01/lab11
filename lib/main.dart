import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Color change',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Color changer"),
          backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
        body: HomePage(),
      ),
    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  var colors = [
    Colors.cyan,
    Colors.yellow,
    Colors.black,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.red,
    Colors.orange,
    Colors.brown,
    Colors.grey,
  ];
  var currentColor = Colors.black;
  var boxColor = Colors.black;
  setRandomColor(){
    var rnd = Random().nextInt(colors.length);
    var button = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[rnd];
      boxColor = colors[button];
    });
  }
  
  
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Center(
        child: RaisedButton(
          color: boxColor,
          padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
          child: Text('Change color',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
          ),
          onPressed: setRandomColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.0),
          ),
        ),
      ),
    );

  }
}
