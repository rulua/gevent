import 'package:GEvent/widgets/ievent.dart';
import 'package:flutter/material.dart';

import 'gevent.dart';
import 'me.dart';
import 'message.dart';

class AppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppHomeState();
  }
}

class AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin{
  // This widget is the root of your application.
  TabController controller;

  @mustCallSuper
  void initState() {
    controller = new TabController(length: 4,vsync: this);
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: new Scaffold(
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new Gevent(),
            new Ievent(),
            new GeventMessage(),
            new Me()
          ],
        ),
        bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(text:"gevent",icon: new Icon(Icons.home),),
            new Tab(text:"iEvent",icon: new Icon(Icons.event),),
            new Tab(text:"message",icon: new Icon(Icons.message),),
            new Tab(text: "Me",icon: new Icon(Icons.person),)
          ],
        ),),
      ),

    );
  }

  
}





