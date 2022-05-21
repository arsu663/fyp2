import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:mealapp/services/rest.dart';


GetIt dependency = GetIt.instance;

void init() {
  // Services
  dependency.registerLazySingleton(() => Rest());
  // dependency.registerLazySingleton<LoginService>(() => UserServiceRest());

  // Viewmodels
  // dependency.registerLazySingleton(() => LoginViewmodel());
  // dependency.registerLazySingleton(() => TodolistViewmodel());
}
