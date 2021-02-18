import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './../app.dart';

class SplashScreenMain extends StatefulWidget {
  static String path = '/';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenMain> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 14,
      navigateAfterSeconds: new LoginScreen(),
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: Colors.white,
      photoSize: 100.0,
      loaderColor: ThemeUtils.blue,
    );
  }

}