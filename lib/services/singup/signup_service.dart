import 'package:mealapp/models/appUser.dart';

abstract class SignupServices{
   Future<AppUser?> register(AppUser user);
}