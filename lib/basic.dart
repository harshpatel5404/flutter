import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          backgroundColor: Colors.yellow[700],
          appBar: AppBar(
            title: Text(
              "Flutter App",
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hello flutter ",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Times New Roman",
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text("Button"),
                  shape: Border.all(color: Colors.white,width: 2.0,),
                ),
                FlatButton(
                  onPressed: () {},
                  // color: Colors.red,
                  splashColor: Colors.white,
                  child: Text("Button"),
                ),
                MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  splashColor: Colors.white,
                  shape: Border.all(),
                  child: Text("Button"),
                ),
                SizedBox(height: 20),
                IconButton(onPressed: (){  }, 
                    icon: Icon(Icons.alarm, color: Colors.white),
                    iconSize: 40,
                    tooltip: "Alarm",
                 )
              ],
            ),
          ),
        ));
  }
}
