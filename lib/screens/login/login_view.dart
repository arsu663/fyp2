import 'package:flutter/material.dart';
import '../../app/main_dependencies.dart';
import '../../controllers/user_controllers.dart';
import 'login_viewmodel.dart';
import 'package:provider/provider.dart';

import '../../shared/constants.dart';
import '../../shared/loading.dart';

class LoginScreen extends StatefulWidget {
  static const String route = "/LoginPage";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // / text field state
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    UserController userController = context.watch<UserController>();

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
                  icon: Icon(Icons.person, color: Colors.white),
                  label: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        SignUpScreen.route, (route) => false);
                  },
                ),
              ],
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Login With Your Credentials',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.brown[600],
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 50.0,
                    ),
                    child: Container(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 20.0),

                            // UserInput(
                            //   keyboardType: TextInputType.emailAddress,
                            //   hintTitle: 'Username',
                            //   userInput: emailController,
                            //   password: false,
                            // ),
                            // UserInput(
                            //   userInput: passwordController,
                            //   hintTitle: 'Password',
                            //   keyboardType: TextInputType.visiblePassword,
                            //   password: true,
                            // ),

                            TextFormField(
                              controller: emailController,
                              decoration: textInputDecoration.copyWith(
                                  hintText: 'email'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a valid email';
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return "Please Enter A valid email";
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: textInputDecoration.copyWith(
                                  hintText: 'password'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter a your password';
                                }
                                if (value.length < 6) {
                                  return "Please Enter A valid pasword which is more than 6 characters";
                                }
                                return null;
                              },
                              onChanged: (val) {
                                setState(() => password = val);
                                // print(password);
                              },
                            ),
                            SizedBox(height: 20.0),
                            Consumer<LoginViewModel>(
                              builder: (context, viewmodel, _) {
                                return RaisedButton(
                                  color: Colors.brown[600],
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  // onPressed: Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientDashboardScreen()))
                                  onPressed: () => _onLoginPresseed(
                                      context: context, viewModel: viewmodel),
                                );
                              },
                            ),
                            SizedBox(height: 12.0),
                            Text(
                              error,
                              style:
                                  TextStyle(color: Colors.red, fontSize: 14.0),
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

  void _onLoginPresseed(
      {required BuildContext context,
      required LoginViewModel viewModel}) async {
    final user = await viewModel.login(
      email: emailController.text,
      password: passwordController.text,
    );
    // userController.setUser(user);
    Navigator.of(context).pushReplacementNamed(
      PatientDashboardScreen.route,
    );
    print("working");
  }
}







































































































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
