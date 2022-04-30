// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mealapp/mock/mock_list_doctors.dart';
import 'package:mealapp/screens/appointment/pickAppointment.dart';

import 'app/main_dependencies.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mohmand Hospital Appointment Booking System',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(100, 160, 150, 1),
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline5: TextStyle(fontSize: 22, fontFamily: 'RobotoCondensed'),
            ),
      ),
      home: DoctorPickAppointment(),
    );
  }
}
