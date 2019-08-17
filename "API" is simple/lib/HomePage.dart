import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert' show jsonDecode;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data;

  Future<String> getData() async {
    http.Response response = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});
    this.setState(() {
      data = jsonDecode(response.body);
    });
    //print(data);
    print(data[1]["title"]);
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this appbar app
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Icon(Icons.home),
            Text("  Home Page "),
          ],
        ),
      ),

      //start body
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: new ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),

              //Method list body
              child: buildListBody(index),

            ));
          },
        ),
      ),
    );
  }

  ListBody buildListBody(int index) {
    return ListBody(
      children: <Widget>[
        new Text(
          data[index]["title"],
          style: TextStyle(fontSize: 20.2, color: Colors.white),
        ),
        new Text(
          data[index]["body"],
          style: TextStyle(fontSize: 12.2, color: Colors.white70),
        ),
      ],
    );
  }
}
