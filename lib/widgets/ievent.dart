
import 'package:flutter/material.dart';

class Ievent extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return new IeventState();
  }
}

class IeventState extends State<Ievent>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor
            : Colors.white
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("iEvent"),),
        body: Container(
          child: Text("hot event"),
          height: 300.0,
        )
      ),
    ); 
  }
  
}