import 'package:flutter/material.dart';
import 'package:mealapp/mock/mock_list_doctors.dart';
import 'main_dependencies.dart';

Route<dynamic> createRoute(RouteSettings? settings) {
  switch (settings!.name) {
    case SplashScreen.route:
      return MaterialPageRoute(
          builder: (context) => SplashScreen(), settings: settings);
    case HomeScreen.route:
      return MaterialPageRoute(
          builder: (context) => HomeScreen(), settings: settings);
    case LoginScreen.route:
      return MaterialPageRoute(
          builder: (context) => LoginScreen(), settings: settings);
    case SignUpScreen.route:
      return MaterialPageRoute(
          builder: (context) => SignUpScreen(), settings: settings);
    case PatientDashboardScreen.route:
      return MaterialPageRoute(
          builder: (context) => PatientDashboardScreen(), settings: settings);
    case DoctorDashboardScreen.route:
      return MaterialPageRoute(
          builder: (context) => DoctorDashboardScreen(), settings: settings);
    case DoctorList.route:
      return MaterialPageRoute(
          builder: (context) => DoctorList(doctors), settings: settings);
    case PatientAppointmentScreen.route:
      return MaterialPageRoute(
          builder: (context) => PatientAppointmentScreen(), settings: settings);
  }
  return MaterialPageRoute(
      builder: (context) => SplashScreen(), settings: settings);
}
