import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_flutter/screens/splash/splash.dart';

class Routes {
  final routes = <String,WidgetBuilder> {
    '/splash': (BuildContext context) => new SplashScreen()
  };

  Routes(){
    runApp(new MaterialApp(
      title: 'Weather Flutter',
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: SplashScreen()
    ));
  }
}