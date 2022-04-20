import 'package:flutter/material.dart';
import 'main_dependencies.dart';

Route<dynamic> createRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/splash_screen":
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case "/home_screen":
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case "/login_screen":
      return MaterialPageRoute(builder: (context) => LoginScreen());
  }
  return MaterialPageRoute(builder: (context) => SplashScreen());
}
