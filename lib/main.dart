//@dart=2.9
import 'package:flutter/material.dart';
//change pubspec accordingly for splashscreen
import 'package:splashscreen/splashscreen.dart';
import 'HomeView.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 1,
        navigateAfterSeconds: new HomeView(),
        title: new Text(
          'Recipe Book',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        image: new Image.asset('lib/assets/logo.jpg'),
        backgroundColor: Colors.amber,
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: () => print("Flutter"),
        loaderColor: Colors.red);
  }
}
