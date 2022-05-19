import 'package:flutter/material.dart';

import './body.dart';
import './bar.dart';

class PatientAppointmentScreen extends StatefulWidget {
     static const String route = "/PatientAppointmentScreen";

  @override
  _PatientAppointmentScreenState createState() =>
      _PatientAppointmentScreenState();
}

class _PatientAppointmentScreenState extends State<PatientAppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: Bar(),
          body: Body(),
        ),
      ),
    );
  }
}
