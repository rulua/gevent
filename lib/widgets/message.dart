import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class GeventMessage extends StatefulWidget {
  @override
  GeventMessageState createState() => new GeventMessageState();
}

class GeventMessageState extends State<GeventMessage> {
  final _suggestions = <WordPair>[];
  String messageTitle = '';
  // final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.white),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Event Message'),
            actions: <Widget>[
              new IconButton(
                  icon: const Icon(Icons.list), onPressed: _getMessageDetail),
            ],
          ),
          body: _buildSuggestions(),
        ));
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Row(
        children: <Widget>[
          new CircleAvatar(
            child: Image.asset(
              "assert/images/logo.png",
            ),
            radius: 20.0,
          ),
          new Text(pair.asPascalCase)
        ],
      ),
      onTap: () {
        messageTitle = pair.asPascalCase;
        _getMessageDetail();
      },
    );
  }

  void _getMessageDetail() {
    Navigator.of(context)
        .push(new MaterialPageRoute<void>(builder: (BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: new Text(messageTitle),
        ),
        body: new Container(
          child: Column(
          // spacing: 8.0,
          // runSpacing: -2.0,
          children: <Widget>[
            Chip(
              backgroundColor: Colors.blueGrey[50],
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(messageTitle.substring(0, 1).toUpperCase()),
              ),
              label: new Text('ET, WHY ARE YOU COME HERE?'),
            ),
            Chip(
              //padding: EdgeInsets.only(top: 20),
              backgroundColor: Colors.blueGrey[50],
              avatar: new CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(messageTitle.substring(0, 1).toUpperCase()),
              ),
              label: new Text('ET, WHY ARE YOU COME HERE?'),
            ),
            // Container(
            //   child: Row(
            //     children: <Widget>[
            //       TextField(
            //         keyboardType: TextInputType.text,
            //       ),
            //       RaisedButton(
            //         child: Text("Send"),
            //         onPressed: null,
            //       )
            //     ],
            //   ),
            // )
          ],
        )),
      );
    }));
  }
}
