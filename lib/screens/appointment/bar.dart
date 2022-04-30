import 'package:flutter/material.dart';
// import 'package:patientaid/helpers/hex_code.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).primaryColor;
    return AppBar(
      backgroundColor: _color,
      leading: Icon(Icons.grid_view, color: Colors.white),
      title: Text("Pick Appointment"),
    );
  }
}
