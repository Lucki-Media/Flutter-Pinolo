import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pinolo/src/ui/welcome_page.dart';
import 'package:pinolo/src/utils/strings.dart';
import 'package:pinolo/src/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;

  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );

  }

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(seconds: 1));
    animation =
    CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
              child: Image.asset(
                'assets/images/app_logo.png',
                height: 150,
              ),
            ),
          const Positioned(
            bottom: 20,
              child: Text(Strings.kPinolo, style: TextStyle(fontFamily: 'Baloo2SemiBold',fontSize: 28,color: AppColors.kOrange),),),
        ],
      ),
    );
  }
}
