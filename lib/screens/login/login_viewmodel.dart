import 'package:flutter/cupertino.dart';
import '../../models/appUser.dart';
import '../../services/login/login_services.dart';

class LoginViewModel with ChangeNotifier {
  AppUser? user;
  LoginService service = LoginService();

  Future<AppUser?> login({String? email, String? password}) async {
    user = await service.authenicate(email: email, password: password);
    notifyListeners();
    return user;
  }
}
