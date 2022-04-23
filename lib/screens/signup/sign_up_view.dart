import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/main_dependencies.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // Color _color = Colors.teal;
  double height = 0.0, width = 0.0;
  bool isFullScreen(Size currentSize, Size fullSize) {
    print("$fullSize == $currentSize");

    if (currentSize.height == fullSize.height &&
        fullSize.width == currentSize.width)
      return true;
    else
      return false;
  }

  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  @override
  Widget build(BuildContext context) {
    Color _color = Theme.of(context).primaryColor;
    return Theme(
      data: ThemeData(primaryColor: _color),
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          height = constraints.maxHeight;
          width = constraints.maxWidth;
          return Scaffold(
            backgroundColor: Colors.teal[50],
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              title: Text(
                "Register Yourself",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/bg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: isFullScreen(
                        Size(width, height),
                        Size(MediaQuery.of(context).size.width,
                            MediaQuery.of(context).size.height),
                      )
                          ? 0.1 * height
                          : 0.2 * height,
                    ),
                    // Container(
                    //   // height: 150,
                    //   width: double.infinity,
                    //   margin: EdgeInsets.only(
                    //     bottom: 120,
                    //     // top: 20,
                    //     left: 10,
                    //     right: 10,
                    //   ),
                    //   child: Image.asset(
                    //     "assets/images/logo.png",
                    //     // fit: BoxFit.cover,
                    //   ),
                    // ),
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
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
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
                              _buildTextField("Phone Number"),
                              _buildTextField("Username"),
                              SizedBox(height: 20),
                              Container(
                                height: 40,
                                width: 150,
                                child: OutlinedButton(
                                  child: Text(
                                    "Sign Up",
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
                                  onPressed: () {
                                    print('Pressed');
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
                                        builder: (context) => LoginScreen()),
                                  );
                                },
                                child: RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.poppins(),
                                    children: [
                                      TextSpan(
                                        text: "Already have an acount? ",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Login",
                                        style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 18),
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
            ),
          );
        },
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
            contentPadding: EdgeInsets.only(left: 20.0)),
      ),
    ),
  );
}
