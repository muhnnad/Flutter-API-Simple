import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class slider_one_ extends StatefulWidget {
  @override
  _slider_one_State createState() => _slider_one_State();
}

class _slider_one_State extends State<slider_one_> {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: new CarouselSlider(
          enlargeCenterPage: true,
          items: [1, 2, 3, 4, 5].map((i) {
            return new Builder(
              builder: (BuildContext context) {
                return new Container(
                  width: MediaQuery.of(context).size.width,
                  margin: new EdgeInsets.symmetric(horizontal: 2.0),
                  child: ClipRRect(
                      borderRadius: new BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/img/av${i}.jpg',
                        fit: BoxFit.cover,
                      )),
                );
              },
            );
          }).toList(),
          height: 120.0,
          autoPlay: true),
    );
  }
}
