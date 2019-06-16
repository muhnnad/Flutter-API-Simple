import 'package:flutter/material.dart';
import 'package:magacoo/Cardslider_one.dart';
import 'package:magacoo/Cardslider_two.dart';
import 'package:magacoo/Cardslider_three.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
          backgroundColor: Colors.black,
          
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
          title: Center(
              child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Orange", style: TextStyle(color: Colors.orange,fontFamily: 'Bevan'))
              ],
            ),
          ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            child: Column(
              children: <Widget>[
                slider_one_(),
                slider_two_(),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 9.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "My list",
                        style: TextStyle(color: Colors.black12, fontSize: 12.1,fontFamily: 'Bevan'),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black12,
                        size: 30.1,
                      ),
                    ],
                  ),
                ),
                slider_three_(),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 9.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "My Move",
                        style: TextStyle(color: Colors.black12, fontSize: 12.1,fontFamily: 'Bevan'),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black12,
                        size: 30.1,
                      ),
                    ],
                  ),
                ),
                slider_three_(),
                                Padding(
                  padding: const EdgeInsets.only(top: 4.0, left: 9.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "My Move",
                        style: TextStyle(color: Colors.black12, fontSize: 12.1,fontFamily: 'Bevan'),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.black12,
                        size: 30.1,
                      ),
                    ],
                  ),
                ),
                slider_three_(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
