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
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  LoginViewModel _viewModel = LoginViewModel();

  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool loading = false;

  // / text field state
  // String email = '';
  // String password = '';

  @override
  Widget build(BuildContext context) {
    //UserController userController = context.watch<UserController>();

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
                            TextFormField(
                              controller: _viewModel.emailController,
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
                              // onChanged: (val) {
                              //   setState(() => email = val);
                              // },
                            ),
                            SizedBox(height: 20.0),
                            TextFormField(
                              controller: _viewModel.passwordController,
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
                              // onChanged: (val) {
                              //   setState(() => password = val);
                              //   // print(password);
                              // },
                            ),
                            SizedBox(height: 20.0),
                            RaisedButton(
                              color: Colors.brown[600],
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.white),
                              ),
                              // onPressed: Navigator.push(context, MaterialPageRoute(builder: (context)=>PatientDashboardScreen()))
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  var res = await _viewModel.loginUser();
                                  if (res != null) {
                                    setState(() {
                                      loading = false;
                                    });
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Text("Successfully Singed In"),
                                      //duration: Duration(seconds: 2),
                                    ));
                                    Navigator.pushReplacementNamed(
                                        context, PatientDashboardScreen.route);
                                  } else {
                                    setState(() {
                                      loading = false;
                                      error = 'Invalid Credentials';
                                    });
                                  }
                                }
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
}




































































































