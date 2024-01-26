// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants.dart';
import 'package:flutter_application_8/routes.dart';
import 'package:flutter_application_8/screens/home_screen.dart';
import 'package:flutter_application_8/screens/not_found.dart';
import 'package:flutter_application_8/screens/profile_screen.dart';
import 'package:flutter_application_8/screens/settings_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

void main(){
  runApp(MyApp());
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
      debugShowCheckedModeBanner: false,
      //home: ProfileScreen(),
      // routes: {
      //   homeRoute: (context) => HomeScreen(),
      //   profileRoute: (context) => ProfileScreen(),
      //   startRoute: (context) => SettingsScreen(),
      // },
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}

