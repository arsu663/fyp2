import 'package:flutter/material.dart';
import 'package:mealapp/mock/mock_list_doctors.dart';
// import 'package:mealapp/screens/signup/sign_up_screen.dart';
import 'main_dependencies.dart';

Route<dynamic> createRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/splash_screen":
      return MaterialPageRoute(builder: (context) => SplashScreen());
    case "/home_screen":
      return MaterialPageRoute(builder: (context) => HomeScreen());
    // case "/login":
    //   return MaterialPageRoute(builder: (context) => LoginScreen());
    // case "/signup":
    //   return MaterialPageRoute(builder: (context) => SignUpScreen());
    case "/patient_dashboard_view":
      return MaterialPageRoute(builder: (context) => PatientDashboardScreen());
    case "/doctor_dashboard_view":
      return MaterialPageRoute(builder: (context) => DoctorDashboardScreen());
    case "/doctor_list":
      return MaterialPageRoute(builder: (context) => DoctorList(doctors));
      case "/patient_appointment_screen":
      return MaterialPageRoute(builder: (context) => PatientAppointmentScreen());
  }
  return MaterialPageRoute(builder: (context) => SplashScreen());
}
