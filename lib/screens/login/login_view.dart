import 'package:flutter/material.dart';
import 'package:mealapp/services/auth.dart';

import '../../shared/constants.dart';
import '../../shared/loading.dart';

class LoginScreen extends StatefulWidget {
  //  final Function toggleView;
  // LoginScreen({ required this.toggleView });
  static const String route = "/LoginPage";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                "Sign In to Mohmand Hospital",
              ),
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Register'),
                  // onPressed: () => widget.toggleView(),
                  onPressed: () async {
                    dynamic result = await _auth.signInAnnon();
                    if (result == null) {
                      print("Error Siging in");
                    } else {
                      print("Signed in");
                      print(result);
                    }
                  },
                ),
              ],
            ),

            body: Container(
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
                      },
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                        color: Colors.pink[400],
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          dynamic result = await _auth.signInAnnon();
                          if (result == null) {
                            print("Error Siging in");
                          } else {
                            print("Signed in");
                            print(result.id);
                          }
                          // if(_formKey.currentState!.validate()){
                          //   setState(() => loading = true);
                          //   dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                          //   if(result == null) {
                          //     setState(() {
                          //       loading = false;
                          //       error = 'Could not sign in with those credentials';
                          //     });
                          //   }
                          // }
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
            // body: SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       Container(
            //         // height: 150,
            //         width: double.infinity,
            //         margin: EdgeInsets.only(
            //           bottom: 120,
            //           // top: 20,
            //           left: 10,
            //           right: 10,
            //         ),
            //         child: Image.asset(
            //           "assets/images/logo.png",
            //           // fit: BoxFit.cover,
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.symmetric(
            //           horizontal: 25,
            //         ),
            //         child: Card(
            //           elevation: 20,
            //           shadowColor: Colors.teal,
            //           color: Colors.white,
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.only(
            //               // bottomLeft: Radius.zero,
            //               bottomRight: Radius.circular(50),
            //               topLeft: Radius.circular(50),
            //             ),
            //           ),
            //           child: Padding(
            //             padding:
            //                 const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            //             child: Column(
            //               mainAxisSize: MainAxisSize.min,
            //               children: [
            //                 Text(
            //                   "Enter your credentials",
            //                   style: GoogleFonts.poppins(
            //                     fontSize: 23,
            //                     color: Theme.of(context).primaryColor,
            //                     fontWeight: FontWeight.w900,
            //                   ),
            //                 ),
            //                 SizedBox(height: 12),
            //                 _buildTextField("Email"),
            //                 _buildTextField("Password"),
            //                 SizedBox(height: 20),
            //                 Container(
            //                   height: 40,
            //                   width: 150,
            //                   child: OutlinedButton(
            //                     child: Text(
            //                       "Login",
            //                       style: TextStyle(
            //                         fontSize: 25,
            //                       ),
            //                     ),
            //                     style: OutlinedButton.styleFrom(
            //                       primary: Colors.white,
            //                       backgroundColor: Colors.teal,
            //                       shape: const RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.all(
            //                           Radius.circular(15),
            //                         ),
            //                       ),
            //                     ),
            //                     onPressed: () {
            //                       Navigator.push(
            //                         context,
            //                         MaterialPageRoute(
            //                           builder: (context) => PatientDashboardScreen(),
            //                         ),
            //                       );
            //                     },
            //                   ),
            //                 ),
            //                 SizedBox(height: 20),
            //                 GestureDetector(
            //                   onTap: () {
            //                     Navigator.push(
            //                       context,
            //                       MaterialPageRoute(
            //                           builder: (context) => SignUpScreen()),
            //                     );
            //                   },
            //                   child: RichText(
            //                     text: TextSpan(
            //                       style: GoogleFonts.poppins(),
            //                       children: [
            //                         TextSpan(
            //                           text: "Don't have an account?",
            //                           style: TextStyle(
            //                             color: Colors.black,
            //                           ),
            //                         ),
            //                         TextSpan(
            //                           text: " Sign Up now",
            //                           style: TextStyle(
            //                             color: Theme.of(context).primaryColor,
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          );
  }
}

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
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: text,
//           border: InputBorder.none,
//           contentPadding: EdgeInsets.only(left: 20.0),
//         ),
//       ),
//     ),
//   );
// }
