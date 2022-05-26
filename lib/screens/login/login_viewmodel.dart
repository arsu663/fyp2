import 'package:flutter/cupertino.dart';
import 'package:mealapp/services/auth.dart';
import 'package:mealapp/services/login/login_service.dart';
import 'package:mealapp/viewmodel.dart';
import '../../app/dependencies.dart';
import '../../models/appUser.dart';
import '../../services/login/login_services_rest.dart';
import '../../services/login/login_services_rest.dart';

class LoginViewModel extends Viewmodel {
  AppUser? user;
  //LoginServiceRest service = LoginServiceRest();
  AuthService get _services => dependency();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser() async {
    print("email: " + emailController.text);
    print("pass: " + passwordController.text);
    var res = await _services.signInWithEmailAndPassword(
        emailController.text, passwordController.text);
    return res;
  }
}
