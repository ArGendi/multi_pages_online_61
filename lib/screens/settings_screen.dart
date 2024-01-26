import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Settings"),
      ),
      body: Center(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenSize.width * 0.25,
              height: 200,
              color: Colors.green,
            ),
            Text("Settings"),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("return Back"),
            ),
          ],
        ),
      ),
    );
  }
}