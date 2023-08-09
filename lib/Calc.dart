import 'package:flutter/material.dart';
import 'temp.dart';
import 'dart:async';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 6,
           splash:"assets/logo.png" ,
            nextScreen: temp(),
            splashTransition: SplashTransition.decoratedBoxTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.blue)

    );

  }
}


