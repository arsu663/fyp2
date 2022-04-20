import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 400,
            // width: double.infinity,

            // child: Image.asset("assets/images/bg.png"),
            // decoration: BoxDecoration(
            //   color: Colors.white,
            // ),
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/bg.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  "This App is used for the purpose of Booking the appointment for the patient. It provides services for tracking the appointment booking, if the appointment is already been approved by the doctor or not.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 50,
                width: 200,
                child: OutlinedButton(
                  child: Text(
                    'Lets\'s Start',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.teal,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
