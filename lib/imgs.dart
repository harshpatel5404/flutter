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
        // backgroundColor: Colors.yellow[700],
        appBar: AppBar(
          title: Text(
            "Flutter App",
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            
          ),
          child: Center(
            child: Image.asset(
              "assets/images/download.jpg",
              fit: BoxFit.cover,
              height: 150,
              width: 200,
              
            ),
          ),
        ),
      ),
    );
  }
}
