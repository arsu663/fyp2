import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/screens/appointment/pickAppointment.dart';
// import 'package:mealapp/screens/signup/sign_up_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/homepage_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget buildButton(
      {required String buttonTitle, required VoidCallback tapHandler}) {
    return Container(
      height: 50,
      width: 200,
      child: OutlinedButton(
        child: Text(
          buttonTitle,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.teal,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              // bottomLeft: Radius.zero,
              bottomRight: Radius.circular(20),
              topLeft: Radius.elliptical(
                12,
                10,
              ),
            ),
          ),
        ),
        onPressed: tapHandler,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Welcome to Mohmand hospital"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            // height: 200,
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: 120,
              top: 20,
              // left: 10,
              // right: 10,
            ),
            child: Image.asset(
              "assets/images/logo.png",
              // fit: BoxFit.cover,
            ),
          ),
          // SizedBox(
          //   height: 200,
          // ),
          buildButton(
              buttonTitle: 'Login',
              tapHandler: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => LoginScreen(),
                //   ),
                // );
              }),
          SizedBox(
            height: 40,
          ),
          buildButton(
              buttonTitle: 'Sign Up',
              tapHandler: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SignUpScreen(),
                //   ),
                // );
              }),
        ],
      ),
    );
  }
}
