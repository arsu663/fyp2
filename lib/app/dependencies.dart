import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:mealapp/screens/login/login_viewmodel.dart';
import 'package:mealapp/services/login/login_service.dart';
import 'package:mealapp/services/login/login_services_rest.dart';
import 'package:mealapp/services/rest.dart';

import '../services/appointments/appointment_services.dart';
import '../services/appointments/appointment_services_rest.dart';
// import 'package:mealapp/services/signup/signup_service.dart';

// import '../services/signup/signup_service_rest.dart';

GetIt dependency = GetIt.instance;

void init() {
  // Services
  dependency.registerLazySingleton<RestServices>(() => RestServices());
  dependency.registerLazySingleton<LoginServices>(() => LoginServiceRest());
  // dependency.registerLazySingleton<SignupServices>(() => SignUpServiceRest());
  // dependency.registerLazySingleton<UserService>(() => UserServiceRest());
    dependency.registerLazySingleton<AppointmentService>(
      () => AppointmentServiceRest());

//   // Viewmodels
  dependency.registerLazySingleton(() => LoginViewModel());
//   dependency.registerLazySingleton(() => TodolistViewmodel());
}
