import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
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
      ),
    );
  }
}


// packages  
//https://pub.dev/packages/carousel_slider





// and more tools
// CarouselSlider(
//    items: items,
//    height: 400,
//    aspectRatio: 16/9,
//    viewportFraction: 0.8,
//    initialPage: 0,
//    enableInfiniteScroll: true,
//    reverse: false,
//    autoPlay: true,
//    autoPlayInterval: Duration(seconds: 3),
//    autoPlayAnimationDuration: Duration(milliseconds: 800),
//    autoPlayCurve: Curve.fastOutSlowIn,
//    pauseAutoPlayOnTouch: Duration(seconds: 10),
//    enlargeCenterPage: true,
//    onPageChanged: callbackFunction,
//    scrollDirection: Axis.horizontal,
//  )