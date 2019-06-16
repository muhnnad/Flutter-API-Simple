import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class slider_three_ extends StatefulWidget {
  @override
  _slider_three_State createState() => _slider_three_State();
}

class _slider_three_State extends State<slider_three_> {
  List nump = [10, 8, 9, 7];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, right: 3.0, left: 3.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            buildCard(context, nump[0]),
            buildCard(context, nump[1]),
            buildCard(context, nump[2]),
            buildCard(context, nump[3]),
          ],
        ),
      ),
    );
  }

  Card buildCard(BuildContext context, n) {
    return Card(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Image.asset(
              'assets/img/av${n}.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // color: colors,
        width: MediaQuery.of(context).size.width / 2.5,
        height: 190,
      ),
    );
  }
}
