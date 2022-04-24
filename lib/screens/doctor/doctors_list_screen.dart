import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';

class DoctorList extends StatefulWidget {
  List<Doctor> doctors;

  DoctorList(this.doctors);
  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Doctors"),
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            print("pressed");
          },
          child: ListView.separated(
            itemCount: widget.doctors.length,
            itemBuilder: (context, index) => ListTile(
              // dense: true,
              title: Text(
                widget.doctors[index].name as String,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('${widget.doctors[index].email} email'),
              trailing: Text(
                widget.doctors[index].speciality as String,
                style: TextStyle(fontSize: 16),
              ),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "${widget.doctors[index].imageURL}",
                ),
                radius: 40,
              ),
            ),
            separatorBuilder: (context, index) => Divider(
              color: Colors.blueGrey,
              thickness: 0.7,
            ),
          ),
        ),
      ),
    );
  }
}
