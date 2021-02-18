import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../app.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      // title: new Text("Welcome In SplashScreen Package"),
      // automaticallyImplyLeading: false
      // ),
      body: new Center(
        child: new SignInButton(
          Buttons.Email,
          mini: true,
          elevation: 20,
          text: "Sign up",
          onPressed: () {
            Get.toNamed('/containerscreen');
          },
        )
      ),
    );
  }
}