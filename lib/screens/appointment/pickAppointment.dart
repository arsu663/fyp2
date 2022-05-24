import 'package:flutter/material.dart';

class PickAppointment extends StatefulWidget {
  static const String route = "/pickAppointment";
  const PickAppointment({Key? key}) : super(key: key);

  @override
  State<PickAppointment> createState() => _PickAppointmentState();
}

class _PickAppointmentState extends State<PickAppointment> {
  // CalendarController _calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pick Appointment")),
      body: SingleChildScrollView(
          child: Column(
        children: [
        //  TableCalendar(),
        ],
      )),
    );
  }
}
