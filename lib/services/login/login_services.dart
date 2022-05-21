import '../rest.dart';
import '../../models/appUser.dart';

class LoginService extends Rest {
  Future<AppUser?> authenicate({String? email, String? password}) async {
    final json = await Rest.get('users?email=$email&&password=$password');
    if (json == null || json.length == 0) {
      return null;
    }
    final user = AppUser.fromJson(json[0]);
    return user;
  }
}
