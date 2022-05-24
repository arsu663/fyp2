import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mealapp/shared/constants.dart';

import '../patient/patient_dashboard_view.dart';
import '../signup/sign_up_view.dart';

class UpdateBooking extends StatelessWidget {
  const UpdateBooking({Key? key}) : super(key: key);

  static const String route = "/updateBooking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[300],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Update Your Appointment"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Card(
            elevation: 20,
            shadowColor: Colors.teal,
            color: Colors.brown[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                // bottomLeft: Radius.zero,
                bottomRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Update Your Appointment",
                    style: GoogleFonts.poppins(
                      fontSize: 23,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Title'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: textInputDecoration.copyWith(hintText: 'Date'),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 40,
                    width: 150,
                    child: OutlinedButton(
                      child: Text(
                        "Update",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.brown[500],
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
