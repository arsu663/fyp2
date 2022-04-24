import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/screens/signup/sign_up_view.dart';

class LoginScreen extends StatefulWidget {
  static const String route = "/LoginPage";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double height = 0.0, width = 0.0;
  bool isFullScreen(Size currentSize, Size fullSize) {
    print("$fullSize == $currentSize");

    if (currentSize.height == fullSize.height &&
        fullSize.width == currentSize.width)
      return true;
    else
      return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Mohmand Hospital",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: 150,
              width: double.infinity,
              margin: EdgeInsets.only(
                bottom: 120,
                // top: 20,
                left: 10,
                right: 10,
              ),
              child: Image.asset(
                "assets/images/logo.png",
                // fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Card(
                elevation: 20,
                shadowColor: Colors.teal,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.zero,
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Enter your credentials",
                        style: GoogleFonts.poppins(
                          fontSize: 23,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 12),
                      _buildTextField("Email"),
                      _buildTextField("Password"),
                      SizedBox(height: 20),
                      Container(
                        height: 40,
                        width: 150,
                        child: OutlinedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.teal,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                          //just for practice, when pressed it will redirect to
                          //Patient Dashboard screen
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PatientDashboardScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {},
                      //   child: Container(
                      //     height: 0.075 * height,
                      //     width: 0.8 * width,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(30.0),
                      //       border:
                      //           Border.all(color: Theme.of(context).primaryColor),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         "Log in",
                      //         style: TextStyle(
                      //             color: Theme.of(context).primaryColor,
                      //             fontSize: 20),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.poppins(),
                            children: [
                              TextSpan(
                                text: "Don't have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " Sign Up now",
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_buildTextField(String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BorderRadius.only(
          // bottomLeft: Radius.zero,
          bottomRight: Radius.circular(20),
          topLeft: Radius.elliptical(
            12,
            10,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 20.0),
        ),
      ),
    ),
  );
}
