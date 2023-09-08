
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app_saksi_1/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        duration: 300,
        splash: SvgPicture.asset("assets/image/splash.svg"),
        nextScreen: const Login(),
        backgroundColor: Colors.blue,
        splashTransition: SplashTransition.scaleTransition,
      ),
    );
  }
}
