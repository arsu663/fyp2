import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50.0);
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).primaryColor;
    return AppBar(
      backgroundColor: _color,
      title: Text("Pick Appointment"),
    );
  }
}
