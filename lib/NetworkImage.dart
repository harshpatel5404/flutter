import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget viwecards(int i) {
    return Card(
        child: Image.network("https://picsum.photos/250?image=$i"),
     
    );
  }

  @override
  Widget build(BuildContext context) {
    List lst = [1, 2, 23, 21, 25, 6, 71, 48, 19, 23, 45, 76, 23];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(child: Text("Code")),
                Tab(child: Text("Nature")),
                Tab(child: Text("Animal")),
              ],
            ),
            title: Text('Material App Bar'),
          ),
          body: TabBarView(children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  viwecards(lst[0]),
                  viwecards(lst[1]),
                  viwecards(lst[2]),
                  viwecards(lst[3]),
                  viwecards(lst[4]),
                  viwecards(lst[5]),
                  viwecards(lst[6]),
                  viwecards(lst[7]),
                  viwecards(lst[8]),
                  viwecards(lst[9]),
                  viwecards(lst[10]),
                  viwecards(lst[11]),
                ],
              ),
            ),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(20, (index) {
                return Container(
                  
                  child: Center(
                    child: viwecards(index),
                  ),
                );
              }),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  viwecards(lst[0]),
                  viwecards(lst[1]),
                  viwecards(lst[2]),
                  viwecards(lst[3]),
                  viwecards(lst[4]),
                  viwecards(lst[5]),
                  viwecards(lst[6]),
                  viwecards(lst[7]),
                  viwecards(lst[8]),
                  viwecards(lst[9]),
                  viwecards(lst[10]),
                  viwecards(lst[11]),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
