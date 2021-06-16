import 'package:flutter/material.dart';
import 'package:flutter_app/firstscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/second': (context) => SecondRoute(),
    },
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}



class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: <Widget>[
          
          Container(
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                 Navigator.pushNamed(context, '/second');
              },
            ),
          )
        ],
        
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}
