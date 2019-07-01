import 'package:GEvent/widgets/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController _controller;
  String username = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.grey),
        home: new Scaffold(
          body: new SingleChildScrollView(
            padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 100.0),
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                  child: new TextField(
                    onChanged: (text) {
                      username = text;
                      print(username);
                    },
                    keyboardType: TextInputType.number,
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "mobile",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          borderSide: new BorderSide(color: Colors.yellow)),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                new Container(
                  padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
                  child: new TextField(
                    controller: _controller,
                    onChanged: (text) {
                      password = text;
                      print(password);
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: "password",
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: new BorderSide(color: Colors.yellow),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye,color: Colors.blue),
                        onPressed: (){
                          setState(() {
                            //_isObsure = !_isObsure
                          });
                        },
        
                      
                      ),
                    ),
                    obscureText: false,
                  ),
                ),
                new Container(
                    child: new RaisedButton(
                      padding: EdgeInsets.only(left: 130,top: 20,right: 130,bottom: 20),
                      color: Colors.red,
                      textColor: Colors.white,
                      child: new Text(
                        "Login",
                        //textDirection: TextDirection.ltr,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new AppHome()),
                        );
                      },
                    )),
                    new Container(
                    padding: EdgeInsets.only(top: 20),
                    child: new Text('—————————— or ———————————',),
                    ),
                    new Container(
                    padding: EdgeInsets.only(top: 20),
                    child: new RaisedButton(
                      padding: EdgeInsets.only(left: 130,top: 20,right: 130,bottom: 20),
                      color: Colors.green,
                      textColor: Colors.white,
                      child: new Text(
                        "Register",
                        //textDirection: TextDirection.ltr,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new AppHome()),
                        );
                      },
                    ))
              ],
            ),
          ),
        ));
  }
}
