import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/splash_screen.dart';

class PinoloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}