import 'package:flutter/material.dart';
import 'package:mealapp/screens/doctor/doctor_dashboard_viewmodel.dart';
// import 'package:mealapp/screens/signup/sign_up_screen.dart';
import 'main_dependencies.dart';

Route<dynamic> createRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/splash_screen":
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case "/home_screen":
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case "/login":
      return MaterialPageRoute(builder: (context) => LoginScreen());
    case "/signup":
      return MaterialPageRoute(builder: (context) => SignUpScreen());
    case "/patient_dashboard_view":
      return MaterialPageRoute(builder: (context) => PatientDashboardScreen());
    case "/doctor_dashboard_view":
      return MaterialPageRoute(builder: (context) => DoctorDashboardScreen());
  }
  return MaterialPageRoute(builder: (context) => SplashScreen());
}
