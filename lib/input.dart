import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  String val = "Default";
  String value = "";

  void showtext() {
    setState(() {
      value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Input Field"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(val),
                TextField(
                  onChanged: (text) {
                    val = text;
                    print(val);
                  },
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Name",
                    prefixIcon: Icon(Icons.account_box),
                  ),
                  maxLength: 20,
                  style: TextStyle(fontSize: 30),
                ),
                RaisedButton(
                  onPressed: showtext,
                  child: Text("Press"),
                )
              ],
            ),
          ),
        ));
  }
}
