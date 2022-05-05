
import 'package:flutter/material.dart';

class Float extends StatefulWidget {

  @override
  _FloatState createState() => _FloatState();
}

class _FloatState extends State<Float> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {}
          ,
          label: Text('Save'),
          icon: Icon(Icons.check_circle),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () {},
          label: Text('Cancel'),
          icon: Icon(Icons.cancel),
        ),
      ],
    );
  }
}