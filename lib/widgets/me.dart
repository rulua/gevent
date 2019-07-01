import 'package:flutter/material.dart';

import '../login.dart';

class Me extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MeState();
}

class MeState extends State<Me> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        home: new Scaffold(
            appBar: AppBar(
              title: Text("Me"),
              actions: <Widget>[
                new IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: null,
                ),
              ],
            ),
            body: new Container(
              child: new Column(
                children: <Widget>[
                  new Expanded(
                    child: new GridView.count(
                        padding: new EdgeInsets.all(20.0),
                        crossAxisCount: 4,
                        children: <Widget>[
                          new Tab(text: "money", icon: new Icon(Icons.home)),
                          new Tab(text: "money", icon: new Icon(Icons.event)),
                          new Tab(text: "money", icon: new Icon(Icons.people)),
                          new Tab(text: "money", icon: new Icon(Icons.favorite)),
                          new Tab(text: "money", icon: new Icon(Icons.music_note)),
                          new Tab(text: "money", icon: new Icon(Icons.book)),
                          new Tab(text: "money", icon: new Icon(Icons.chat)),
                          new Tab(text: "money", icon: new Icon(Icons.history)),
                          new Tab(text: "money", icon: new Icon(Icons.list)),
                        ],
                      ),
                  ),
                  new Padding(
                      padding: new EdgeInsets.all(15.0),
                      child: new RaisedButton(
                        child: const Text("log out"),
                        padding: new EdgeInsets.all(15.0),
                        elevation: 4.0,
                        splashColor: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new Login()),
                          );
                        },
                      ))
                ],
              ),
            )));
  }
}
