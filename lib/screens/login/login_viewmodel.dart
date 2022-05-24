import 'package:flutter/cupertino.dart';
import '../../models/appUser.dart';
import '../../services/login/login_services_rest.dart';
import '../../services/login/login_services_rest.dart';

class LoginViewModel with ChangeNotifier {
  AppUser? user;
  LoginServiceRest service = LoginServiceRest();

  Future<AppUser?> login({String? email, String? password}) async {
    user = await service.authenicate(email: email, password: password);
    notifyListeners();
    return user;
  }
}
