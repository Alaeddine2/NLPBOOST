import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageButtonNavigationBar extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;
  HomePageButtonNavigationBar({@required this.currentIndex, @required this.onTap});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          title: Text("Events"),
          icon: Icon(Icons.event),
        ),
        BottomNavigationBarItem(
          title: Text("Coach"),
          icon: Icon(Icons.cast_for_education_sharp),
        ),
        BottomNavigationBarItem(
          title: Text("statistics"),
          icon: Icon(Icons.data_usage_sharp),
        ),
        BottomNavigationBarItem(
          title: Text("Profil"),
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
