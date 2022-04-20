import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget buildButton(String buttonTitle) {
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
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Welcome to Mohmand hospital"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.only(
              bottom: 120,
              top: 20,
              left: 10,
              right: 10,
            ),
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
          // SizedBox(
          //   height: 200,
          // ),
          buildButton("Login"),
          SizedBox(
            height: 40,
          ),
          buildButton("Sign Up"),
        ],
      ),
    );
  }
}
