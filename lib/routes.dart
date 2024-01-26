import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants.dart';
import 'package:flutter_application_8/screens/home_screen.dart';
import 'package:flutter_application_8/screens/not_found.dart';
import 'package:flutter_application_8/screens/profile_screen.dart';
import 'package:flutter_application_8/screens/settings_screen.dart';

class RouteGenerator{
  static Route? getRoute(RouteSettings settings){
    switch(settings.name){
      case homeRoute: return MaterialPageRoute(builder: (context) => HomeScreen());
      case startRoute: return MaterialPageRoute(builder: (context) => ProfileScreen());
      case settingsRoute: return MaterialPageRoute(builder: (context) => SettingsScreen());
      default: return MaterialPageRoute(builder: (context) => NotFoundScreen());
    }
  }
}