import 'package:flutter/material.dart';

import 'bar.dart';
import 'body.dart';
import 'float.dart';

class DoctorPickAppointment extends StatefulWidget {

  @override
  _DoctorPickAppointmentState createState() => _DoctorPickAppointmentState();
}

class _DoctorPickAppointmentState extends State<DoctorPickAppointment> {
  @override
  Widget build(BuildContext context) {
   return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(),
          floatingActionButton: Float()
        ),
      ),
    );
  }
  }