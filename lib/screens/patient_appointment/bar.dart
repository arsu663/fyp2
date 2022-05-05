import 'package:flutter/material.dart';
import 'package:mealapp/screens/patient/patient_dashboard_view.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).primaryColor;
    return AppBar(
      backgroundColor: _color,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_outlined),
        color: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PatientDashboardScreen(),
            ),
          );
        },
      ),
      title: Text(
        "Appointents",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
