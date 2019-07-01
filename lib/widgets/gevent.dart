import 'package:flutter/material.dart';

class Gevent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new GeventState();
}

class GeventState extends State<Gevent> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: new Scaffold(
          appBar: AppBar(
            title: Text("gevent"),
            actions: <Widget>[
              new IconButton(
                icon: const Icon(Icons.search),
                onPressed: null,
              )
            ],
          ),
          body: new Container(
            child: new Column(
              children: <Widget>[
                new Container(
                  color: Colors.blue,
                  child: new Padding(
                      padding: new EdgeInsets.all(15.0),
                      child: new Center(
                        child: Text("Hot Event",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                      )),
                ),
                new Row(
                  children: <Widget>[
                    new CircleAvatar(
                      child: Image.asset("assert/images/logo.png"),
                      radius: 70.0,
                    ),
                    new Container(
                      child: new Expanded(
                       child: new Column(
                        children: <Widget>[
                          new Text(
                              "From tomorrow on,Write to each of my dear ones,Telling them of my happiness what the lightening of happiness has told me.I will spread it to each of them.",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                              style: TextStyle(fontSize: 13.0),
                               ),
                             new Text(
                              "-- Hai Zi (1964-1989)",
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 13.0),
                            ),
                        ],
                      )),
                    )
                  ],
                ),

                new Container(
                  color: Colors.red,
                  child: new Padding(
                    padding: new EdgeInsets.all(15.0),
                    child: new Center(
                      child: Text(
                        "Company Event",style: TextStyle(fontSize: 23.0,color: Colors.white),
                      ),
                    ),
                  ),
                ),
                new Container(
                  child: new Column(
                    children: <Widget>[
                      new Image.asset("assert/images/google.png",fit: BoxFit.fill),
                      new Row(children: <Widget>[
                        Icon(Icons.people),
                         Icon(Icons.people),
                          Icon(Icons.people),
                           Icon(Icons.people),
                      ],)
                    ],
                  ),
                ),
                new Container(
                  padding: EdgeInsets.all(8),
                  child: new Column(
                    children: <Widget>[
                      new Image.asset("assert/images/ventures.png",fit: BoxFit.fill,),
                      new Row(children: <Widget>[
                        Icon(Icons.people),
                         Icon(Icons.people),
                          Icon(Icons.people),
                           Icon(Icons.people),
                      ],)
                    ],
                  ),
                ),
                new Container(
                  color: Colors.yellow,
                  child: new Padding(
                      padding: new EdgeInsets.all(15.0),
                      child: new Center(
                        child: Text("Interest Event",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                      )),
                ),
                new Container(
                  color: Colors.green,
                  child: new Padding(
                      padding: new EdgeInsets.all(15.0),
                      child: new Center(
                        child: Text("Recommend Event",style: TextStyle(fontSize: 23.0,color: Colors.white),),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
