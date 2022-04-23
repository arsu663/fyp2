import 'package:flutter/material.dart';

class PatientDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Patient Dashboard Screen"),
      ),
      body: Container(
        child: Center(
          child: Text("Body"),
        ),
      ),
    );
  }
}
