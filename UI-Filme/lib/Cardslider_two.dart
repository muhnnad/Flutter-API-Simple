import 'package:flutter/material.dart';

class slider_two_ extends StatefulWidget {
  @override
  _slider_two_State createState() => _slider_two_State();
}

class _slider_two_State extends State<slider_two_> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, right: 3.0, left: 3.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            buildCard(context, "Romantac", Color.fromRGBO(255, 0, 0, 0.8)),
            buildCard(context, "Horror", Color.fromRGBO(134, 99, 254, 0.73)),
            buildCard(context, "Action", Color.fromRGBO(62, 155, 91, 0.83)),
            buildCard(context, "Drama", Color.fromRGBO(62, 197, 193, 0.83)),
            buildCard(context, "Comedy", Color.fromRGBO(137, 116, 226, 0.92)),
            buildCard(context, "Sci-Fi", Color.fromRGBO(11, 105, 229, 0.59)),
          ],
        ),
      ),
    );
  }

  Card buildCard(BuildContext context, text, colors) {
    return Card(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
              child: Text(
            "${text}",
            style: TextStyle(color: Colors.white, fontSize: 14,fontFamily: 'Bevan'),
          )),
        ),
        color: colors,
        width: MediaQuery.of(context).size.width / 2.5,
        height: 46,
      ),
    );
  }
}
