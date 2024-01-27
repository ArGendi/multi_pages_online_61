import 'package:flutter/material.dart';

class CustomAnimationScreen extends StatefulWidget {
  const CustomAnimationScreen({super.key});

  @override
  State<CustomAnimationScreen> createState() => _CustomAnimationScreenState();
}

class _CustomAnimationScreenState extends State<CustomAnimationScreen> with TickerProviderStateMixin{
  late Animation<Offset> animation;
  late AnimationController controller;
  late Animation<double> fadeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 2)
  );

    animation = Tween<Offset>(
      begin: Offset(3,0),
      end: Offset(0,0),
    ).animate(
      CurvedAnimation(parent: controller, curve: Curves.bounceOut),
    );

    fadeAnimation = CurvedAnimation(parent: controller, curve: Curves.bounceOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeTransition(
              opacity: fadeAnimation,
              child: Text(
                "Good morning",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            SlideTransition(
              position: animation,
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                controller.forward();
              }, 
              child: Text("Start animation"),
            )
          ],
        ),
      ),
    );
  }
}