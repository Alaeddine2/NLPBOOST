
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../app.dart';
import 'package:flutter/material.dart';

class ContainerSceen extends StatefulWidget {
  @override
  _ContainerSceenState createState() => _ContainerSceenState();
}
class _ContainerSceenState extends State<ContainerSceen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    EventScreen(),
    CoachScreen(),
    CoachScreen(),
    CoachScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      //_currentIndex == 1 ? Page1(): Page2(),
        /* Stack(
        children: <Widget>[
          HomeBackgroundColor(opacity),
          SingleChildScrollView(
            controller: scrollController,
            padding: EdgeInsets.only(top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildSearchAppBar(),
                UIHelper.verticalSpace(16),
                buildUpComingEventList(),
                UIHelper.verticalSpace(16),
                buildNearbyConcerts(),
              ],
            ),
          ),
        ],
      ), */
      bottomNavigationBar: HomePageButtonNavigationBar(
        onTap: (index) => setState(() => _currentIndex = index),//
        currentIndex: _currentIndex,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.qrcode),
      ),
    );
  }
}