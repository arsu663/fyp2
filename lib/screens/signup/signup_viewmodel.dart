import 'package:flutter/material.dart';
import 'package:mealapp/app/dependencies.dart';
import 'package:mealapp/services/auth.dart';
import 'package:mealapp/services/firebase/firebase_services.dart';
import 'package:mealapp/viewmodel.dart';

class SignUpViewmodel extends Viewmodel {
  AuthService get _services => dependency();
  FirebaseService get _fservices => dependency();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  signUp() async {
    var res = await _services.registerWithEmailAndPassword(
        emailController.text, passwordController.text);
    print(res);
    return res;
  }

  postUserData() async {
    Map<String, dynamic> userDataMap = {
      "name": nameController.text,
      "phone": phoneController.text,
    };
    var res = await _fservices.post(collection: "users", data: userDataMap);
    print(res);
    return res;
  }
}
