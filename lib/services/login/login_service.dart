import 'package:mealapp/models/appUser.dart';

abstract class LoginServices{
   Future<AppUser?> authenicate({String? email, String? password});
}