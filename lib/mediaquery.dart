import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Container(
          width: 200,
          // height:(MediaQuery.of(context).size.height)/2,
          color: Colors.red,
          child: Center(
              child: Container(
                child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Container(
                  color: Colors.black,
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(

                             
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.verified_user,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.account_box,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
              )),
        ),
      ),
    );
  }
}
