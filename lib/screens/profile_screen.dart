import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_8/constants.dart';
import 'package:flutter_application_8/screens/settings_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Image.network("https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/advisor/wp-content/uploads/2023/07/top-20-small-dog-breeds.jpeg.jpg"),
            Lottie.asset(
              "images/Animation - 1706376837645.json",
              width: 100,
            ),
            Text("Your Profile").animate().fade(duration: Duration(milliseconds: 2000)),
            IconButton(
              onPressed: (){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SettingsScreen()), 
                // );
                Navigator.pushNamed(context, settingsRoute);
               // Navigator.push(context, PageTransition(type: PageTransitionType.scale, alignment: Alignment.center, child: SettingsScreen()));
              }, 
              icon: Icon(Icons.arrow_forward_rounded),
            ).animate().scale(duration: Duration(seconds: 2)),
            Hero(
              tag: '1',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}