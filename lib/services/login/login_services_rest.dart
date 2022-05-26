import 'package:mealapp/services/login/login_service.dart';

import '../../app/dependencies.dart';
import '../rest.dart';
import '../../models/appUser.dart';

class LoginServiceRest implements LoginServices {
  @override
  Future<AppUser?> authenicate({String? email, String? password}) async {
    final json =
        await RestServices.get('users?email=$email&&password=$password');
    if (json == null || json.length == 0) {
      return null;
    }
    final user = AppUser.fromJson(json[0]);
    return user;
  }
}
