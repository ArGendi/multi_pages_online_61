import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/screens/profile_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1500,
      splash: Icon(Icons.person, size: 70,),
      nextScreen: ProfileScreen(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}