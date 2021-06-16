import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    debugPrint("Start");
    Timer(Duration(seconds: 5), finished);
  }

  Widget finished() {
    debugPrint("end");

   return Scaffold(
     body: Center(
       child : Text("End")
     ),
   );
  }
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
