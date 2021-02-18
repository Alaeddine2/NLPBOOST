import './src/app.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;
//import 'package:taxi_app/src/utils/i18n_utils.dart';
 
class ProdApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NLP BOOST',
      initialRoute: '/',
      home: SplashScreenMain(),
      //builder: UIErrorUtils.ui,
      //onInit: AppService.init,
      defaultTransition: Transition.topLevel,
      transitionDuration: 1200.milliseconds,
      theme: ThemeUtils.light,
      darkTheme: ThemeUtils.dark,
      themeMode: ThemeMode.light,
      //translations: I18N(),
      locale: ui.window.locale,
      fallbackLocale: Locale('fr', 'FR'),
      getPages: [
        GetPage(name: '/splashscreen', page: () => SplashScreenMain()),
        GetPage(name: '/loginscreen', page: () => LoginScreen()),
      ],
    );
  }
}