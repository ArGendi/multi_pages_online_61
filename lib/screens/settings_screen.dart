import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double x = 100;
  double y = 100;
  bool isBlue = true;
  double opacityValue = 0;
  double paddingValue = 0;
  int currentPage = 1;

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
            Hero(
              tag: '1',
              child: Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),
            ),
            Text("Settings"),
            TextButton(
              onPressed: (){
                setState(() {
                  isBlue = !isBlue;
                  x -= 50;
                  y -= 50;
                });
              }, 
              child: Text("change container"),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: x,
              height: y,
              color: isBlue? Colors.blue : Colors.red,
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 3),
              opacity: opacityValue,
              child: Text("Helloooooooooooo"),
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  opacityValue = 1;
                });
              }, 
              child: Text("show"),
            ),
            Card(
              color: Colors.yellow,
              child: AnimatedPadding(
                duration: Duration(seconds: 2),
                padding: EdgeInsets.symmetric(horizontal: paddingValue),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      paddingValue = 40;
                    });
                  }, 
                  child: Text("expand"),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: currentPage == 1? 30 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                SizedBox(width: 5,),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: currentPage == 2? 30 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                SizedBox(width: 5,),
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: currentPage == 3? 30 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: (){
                setState(() {
                  if(currentPage < 3){
                    currentPage++;
                  }
                });
              }, 
              icon: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      ),
    );
  }
}