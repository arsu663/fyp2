import 'package:flutter/material.dart';
import 'package:mealapp/app/main_dependencies.dart';
import 'package:mealapp/mock/mock_list_doctors.dart';
import 'package:mealapp/screens/doctor/doctor_details_screen.dart';

class DoctorList extends StatefulWidget {
  static const String route = "/DoctorsListScreen";
  List<Doctor> doctors;

  DoctorList(this.doctors);
  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Doctors"),
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return Card(
            // color: Colors.,
            child: ListTile(
              title: Text(doctors[index].name as String),
              leading: SizedBox(
                width: 50,
                height: 50,
                child: Image.network(doctors[index].imageURL as String),
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DoctorDetailScreen(
                          doctors: doctors[index],
                        )));
                print("Pressed");
              },
            ),
          );
        },
        // ListView.separated(
        //   itemCount: widget.doctors.length,
        //   itemBuilder: (context, index) => ListTile(
        //     // dense: true,
        //     title: Text(
        //       widget.doctors[index].name as String,
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     subtitle: Text('${widget.doctors[index].email} email'),
        //     trailing: Text(
        //       widget.doctors[index].speciality as String,
        //       style: TextStyle(fontSize: 16),
        //     ),
        //     leading: CircleAvatar(
        //       backgroundImage: NetworkImage(
        //         "${widget.doctors[index].imageURL}",
        //       ),
        //       radius: 40,
        //     ),
        //   ),
        //   separatorBuilder: (context, index) => Divider(
        //     color: Colors.blueGrey,
        //     thickness: 0.7,
        //   ),
        // ),
      ),
    );
  }
}
