import 'package:flutter/material.dart';

import '../../models/doctor.dart';

class DoctorDetailScreen extends StatefulWidget {
  static const String route = "/DoctorDetailsScreen";
  final Doctor? doctors;
  DoctorDetailScreen({this.doctors});

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}
// This screen should receive the data from the Doctor list screen when a doctor is clicked

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[400],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("${widget.doctors!.name as String}'s Profile"),
      ),
      body: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(widget.doctors!.imageURL as String),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Name: ${widget.doctors!.name as String}",
                  style: TextStyle(
                    fontFamily: "RobotoCondensed",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Speciality: ${widget.doctors!.speciality as String}",
                  style: TextStyle(
                    fontFamily: "RobotoCondensed",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email: ${widget.doctors!.email as String}",
                  style: TextStyle(
                    fontFamily: "RobotoCondensed",
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 40,
                  thickness: 0.8,
                  color: Colors.teal,
                ),
                Center(
                  child: Container(
                    height: 80,
                    width: 300,
                    child: OutlinedButton(
                      child: Text(
                        "Book Appointment",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.brown[600],
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            // bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.elliptical(
                              12,
                              10,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          )),

      // SafeArea(
      //   child: ListView.separated(
      //     itemBuilder: (context, index) => ListTile(
      //       title: Text(doctors[index].name as String),
      //       subtitle: Text(doctors[index].speciality as String),
      //       trailing: Text(doctors[index].email as String),
      //       leading: CircleAvatar(
      //         backgroundImage: NetworkImage(doctors[index].imageURL as String),
      //       ),
      //     ),
      //     separatorBuilder: (context, index) => Divider(
      //       color: Colors.teal,
      //       thickness: 0.8,
      //     ),
      //     itemCount: doctors.length,
      //   ),
      // ),
    );
  }
}
