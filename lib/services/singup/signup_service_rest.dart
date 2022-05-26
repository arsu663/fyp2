// import 'package:mealapp/services/login/login_service.dart';
// import 'package:mealapp/services/signup/signup_service.dart';

// import '../../app/dependencies.dart';
// import '../rest.dart';
// import '../../models/appUser.dart';

// class SignUpServiceRest implements SignupServices {
//   RestServices get rest => dependency();

//   Future<AppUser?> register(user) async {
//     final json = await RestServices.post('auths/signup', data: user);

//     if (json == null) return null;

//     json['id'] = json['localId'];
//     json['name'] = user.name;
//     json['password'] = user.password;
//     json['phoneNumber'] = user.phoneNumber;
//     json['photoUrl'] = user.imageUrl;
//     json['hasAppointment'] = user.hasAppointment;
//     json['appointment'] = user.appointment;

//     print("done");

//     final _user = AppUser.fromJson(json);
//     await RestServices.post("users", data: _user);
//     return _user;
//   }
// }


import 'package:mealapp/services/rest.dart';
import 'package:mealapp/services/singup/signup_service.dart';

import '../../models/appUser.dart';

class SignUpServiceRest extends SignupServices{
  
   Future<AppUser> addUser(AppUser user) async {
    final json = await RestServices.post('users', data: user.toJson());
    print('done');
    return AppUser.fromJson(json);
  }
}