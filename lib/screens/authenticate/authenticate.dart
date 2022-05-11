import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/screens/login/login_view.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showLogin = true;
  void toggleView() {
    setState(() {
      showLogin = !showLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginScreen(toggleView: toggleView);
    } else {
      return SignUpScreen(toggleView:toggleView);
    }
  }
}
