import 'package:flutter/material.dart';
import '../app.dart';

class ThemeUtils {
  static final blue = Colors.blue[200];
  static final bluePlus = Colors.blue;

  static ThemeData light = ThemeData(
    fontFamily: 'Cairo',
    primaryColor: Colors.blue[200],
    accentColor: Colors.blue,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.blue[200]
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue[200],
      iconTheme: IconThemeData(color: Colors.black),
    )
  );

  static ThemeData defaultDarkTheme = ThemeData.dark();
  static ThemeData dark = ThemeData(
    fontFamily: 'Cairo',
    appBarTheme: defaultDarkTheme.appBarTheme.copyWith(
      iconTheme: IconThemeData(color: Colors.white)
    ),
    floatingActionButtonTheme: defaultDarkTheme.floatingActionButtonTheme.copyWith(
      backgroundColor: Colors.blue[200],
    ),
    scaffoldBackgroundColor: defaultDarkTheme.scaffoldBackgroundColor,
    backgroundColor: defaultDarkTheme.backgroundColor,
    brightness: defaultDarkTheme.brightness,
    bottomAppBarColor: defaultDarkTheme.bottomAppBarColor,
    bottomAppBarTheme: defaultDarkTheme.bottomAppBarTheme,
    buttonTheme: defaultDarkTheme.buttonTheme,
    buttonColor: defaultDarkTheme.buttonColor,
    toggleButtonsTheme: defaultDarkTheme.toggleButtonsTheme,
    iconTheme: IconThemeData(color: Colors.white),
  );
  static Widget brezier([bool isLeft = true]) {
    return Positioned(
      top: -Get.height * .1,
      right: !isLeft ? null : -Get.width * .45,
      left: isLeft ? null : -Get.width * .45,
      child: BrezierWidget(),
    );
  }
  static Widget brezierBottom([bool isLeft = true, bool isBottom = false]) {
    return Positioned(
      top: isBottom ? null : - Get.height * .1,
      bottom: !isBottom ? null:  -Get.height * .1,
      right: !isLeft ? null : -Get.width * .45,
      left: isLeft ? null : -Get.width * .45,
      child: RotatedBox(
        quarterTurns: 2,
        child: BrezierWidget()),
    );
  }
}