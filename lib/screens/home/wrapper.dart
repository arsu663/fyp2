import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/models/user.dart';
import 'package:mealapp/screens/authenticate/authenticate.dart';
import 'package:mealapp/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    // print(user);

    if (user == null) {
      return PatientDashboardScreen();
    } else {
      return Authenticate();
    }
  }
}
