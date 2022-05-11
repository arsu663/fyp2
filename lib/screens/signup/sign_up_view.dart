// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../app/main_dependencies.dart';

// class SignUpScreen extends StatefulWidget {
//   //  final Function toggleView;
//   // SignUpScreen({ required this.toggleView });
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {

//   // void _showButtonPressDialog(BuildContext context, String provider) {
//   //   Scaffold.of(context).showSnackBar(SnackBar(
//   //     content: Text('$provider Button Pressed!'),
//   //     backgroundColor: Colors.black26,
//   //     duration: Duration(milliseconds: 400),
//   //   ));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     Color _color = Theme.of(context).primaryColor;
//     return Theme(
//       data: ThemeData(primaryColor: _color),
//       child: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           // height = constraints.maxHeight;
//           // width = constraints.maxWidth;
//           return Scaffold(
//             backgroundColor: Colors.teal[50],
//             appBar: AppBar(
//               backgroundColor: Theme.of(context).primaryColor,
//               title: Text(
//                 "Register Yourself",
//                 style: GoogleFonts.poppins(
//                   fontSize: 26,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//             ),
//             body: SingleChildScrollView(
//               child: Container(
//                 // height: height,
//                 // width: width,
//                 // decoration: BoxDecoration(
//                 //   image: DecorationImage(
//                 //     image: AssetImage("assets/bg.jpg"),
//                 //     fit: BoxFit.cover,
//                 //   ),
//                 // ),
//                 child: Column(
//                   children: [
//                     // SizedBox(
//                     //   height: isFullScreen(
//                     //     Size(width, height),
//                     //     Size(MediaQuery.of(context).size.width,
//                     //         MediaQuery.of(context).size.height),
//                     //   )
//                     //       ? 0.1 * height
//                     //       : 0.2 * height,
//                     // ),
//                     // Container(
//                     //   // height: 150,
//                     //   width: double.infinity,
//                     //   margin: EdgeInsets.only(
//                     //     bottom: 120,
//                     //     // top: 20,
//                     //     left: 10,
//                     //     right: 10,
//                     //   ),
//                     //   child: Image.asset(
//                     //     "assets/images/logo.png",
//                     //     // fit: BoxFit.cover,
//                     //   ),
//                     // ),
//                     Padding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 25,
//                       ),
//                       child: Card(
//                         elevation: 20,
//                         shadowColor: Colors.teal,
//                         color: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.only(
//                             // bottomLeft: Radius.zero,
//                             bottomRight: Radius.circular(50),
//                             topLeft: Radius.circular(50),
//                           ),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 10, vertical: 40),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               Text(
//                                 "Enter your credentials",
//                                 style: GoogleFonts.poppins(
//                                   fontSize: 23,
//                                   color: Theme.of(context).primaryColor,
//                                   fontWeight: FontWeight.w900,
//                                 ),
//                               ),
//                               SizedBox(height: 12),
//                               _buildTextField("Email"),
//                               _buildTextField("Password"),
//                               _buildTextField("Phone Number"),
//                               _buildTextField("Username"),
//                               SizedBox(height: 20),
//                               Container(
//                                 height: 40,
//                                 width: 150,
//                                 child: OutlinedButton(
//                                   child: Text(
//                                     "Sign Up",
//                                     style: TextStyle(
//                                       fontSize: 25,
//                                     ),
//                                   ),
//                                   style: OutlinedButton.styleFrom(
//                                     primary: Colors.white,
//                                     backgroundColor: Colors.teal,
//                                     shape: const RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(15),
//                                       ),
//                                     ),
//                                   ),
//                                   onPressed: () {
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) =>
//                                             DoctorDashboardScreen(),
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               ),

//                               // GestureDetector(
//                               //   onTap: () {},
//                               //   child: Container(
//                               //     height: 0.075 * height,
//                               //     width: 0.8 * width,
//                               //     decoration: BoxDecoration(
//                               //       borderRadius: BorderRadius.circular(30.0),
//                               //       border:
//                               //           Border.all(color: Theme.of(context).primaryColor),
//                               //     ),
//                               //     child: Center(
//                               //       child: Text(
//                               //         "Log in",
//                               //         style: TextStyle(
//                               //             color: Theme.of(context).primaryColor,
//                               //             fontSize: 20),
//                               //       ),
//                               //     ),
//                               //   ),
//                               // ),
//                               SizedBox(height: 20),
//                               GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => LoginScreen()),
//                                   );
//                                 },
//                                 child: RichText(
//                                   text: TextSpan(
//                                     style: GoogleFonts.poppins(),
//                                     children: [
//                                       TextSpan(
//                                         text: "Already have an acount? ",
//                                         style: TextStyle(
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                       TextSpan(
//                                         text: " Login",
//                                         style: TextStyle(
//                                             color:
//                                                 Theme.of(context).primaryColor,
//                                             fontWeight: FontWeight.w900,
//                                             fontSize: 18),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// _buildTextField(String text) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       decoration: BoxDecoration(
//         color: Colors.teal[100],
//         borderRadius: BorderRadius.only(
//           // bottomLeft: Radius.zero,
//           bottomRight: Radius.circular(20),
//           topLeft: Radius.elliptical(
//             12,
//             10,
//           ),
//         ),
//       ),
//       child: TextFormField(
//         decoration: InputDecoration(
//             hintText: text,
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(left: 20.0)),
//       ),
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../shared/constants.dart';
import '../../shared/loading.dart';

class SignUpScreen extends StatefulWidget {
  final Function toggleView;

  SignUpScreen({required this.toggleView});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            backgroundColor: Colors.brown[300],
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0.0,
              title: Text(
                "Register to Mohmand Hospital",
              ),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Login'),
                  onPressed: () => widget.toggleView(),
                  // onPressed: () async {
                  //   dynamic result = await _auth.signInAnnon();
                  //   if (result == null) {
                  //     print("Error Siging up");
                  //   } else {
                  //     print("Registered");
                  //     print(email);
                  //     print(password);
                  //   }
                  // },
                ),
              ],
            ),
            body: SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 50.0,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      TextFormField(
                        decoration:
                            textInputDecoration.copyWith(hintText: 'email'),
                        validator: (val) =>
                            val!.isEmpty ? 'Enter an email' : null,
                        onChanged: (val) {
                          setState(() => email = val);
                          // print(email);
                        },
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        obscureText: true,
                        decoration:
                            textInputDecoration.copyWith(hintText: 'password'),
                        validator: (val) => val!.length < 6
                            ? 'Enter a password 6+ chars long'
                            : null,
                        onChanged: (val) {
                          setState(() => password = val);
                          // print(password);
                        },
                      ),
                      SizedBox(height: 20.0),
                      RaisedButton(
                          color: Colors.pink[400],
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              // print(email);
                              // print(password);
                              setState(() => loading = true);
                              dynamic result =
                                  await _auth.registerWithEmailAndPassword(
                                      email, password);
                              if (result == null) {
                                setState(() {
                                  loading = false;
                                  error =
                                      'Could not sign in with those credentials';
                                });
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen(toggleView: (){},)));
                              }
                            }
                          }),
                      SizedBox(height: 12.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
