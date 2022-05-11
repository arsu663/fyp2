// ignore_for_file: deprecated_member_use

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mealapp/models/user.dart';
import 'package:mealapp/screens/authenticate/authenticate.dart';
import 'package:mealapp/screens/home/wrapper.dart';
import 'package:mealapp/services/auth.dart';
import 'package:provider/provider.dart';

import 'app/main_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      // initialData: ,
      initialData: null,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mohmand Hospital Appointment Booking System',
        theme: ThemeData(
          // primaryColor: Color.fromRGBO(100, 160, 150, 1),
          primaryColor: Colors.brown[500],
          accentColor: Colors.pink[300],
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                bodyText2: TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                headline5:
                    TextStyle(fontSize: 22, fontFamily: 'RobotoCondensed'),
              ),
        ),
        home: Authenticate(),
      ),
    );
  }
}


//Last commit changin colors 21 May