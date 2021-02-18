import 'package:flutter/material.dart';
import '../app.dart';

class CoachScreen extends StatefulWidget {
  @override
  _CoachScreenState createState() => _CoachScreenState();
}
class _CoachScreenState extends State<CoachScreen> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Coach Screen")),
    );
  }
}