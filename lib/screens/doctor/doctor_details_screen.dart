import 'package:flutter/material.dart';
import 'package:mealapp/mock/mock_list_doctors.dart';

import '../../models/doctor.dart';

class DoctorDetailScreen extends StatefulWidget {
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text("${widget.doctors!.name as String}'s Profile"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
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
                    fontFamily: "Raleway",
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Speciality: ${widget.doctors!.speciality as String}",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(Icons.email),
                  Text("Email: ${widget.doctors!.email as String}",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                ],
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
                  child: ElevatedButton(
                      // style: ButtonStyle(backgroundColor:  ),
                      onPressed: () {},
                      child: Text("Book Appointment")))
            ],
          ),
        )
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
