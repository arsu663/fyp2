import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mealapp/screens/appointment/pickAppointment.dart';

import '../../app/main_dependencies.dart';

class DoctorDashboardScreen extends StatefulWidget {
   static const String route = "/DoctorViewScreen";
  @override
  State<DoctorDashboardScreen> createState() => _DoctorDashboardScreenState();
}

List<Category> doctorListCategory = [
  Category(
    icon: FontAwesomeIcons.bookMedical,
    title: "View Appointments",
    subTitle: "Check Patient's appointments",
    color: Colors.teal[200],
  ),
  Category(
    icon: FontAwesomeIcons.recordVinyl,
    title: "Update Scheduale",
    subTitle: "Change your timetable",
    color: Colors.teal[200],
  ),
  Category(
    icon: Icons.forum,
    title: "Set Reminder",
    subTitle: "Set Reminder for the future tasks",
    color: Colors.teal[200],
  ),
  Category(
    icon: Icons.settings,
    title: "Account Setting",
    subTitle: "Setting for the account",
    color: Colors.teal[200],
  ),
];

class _DoctorDashboardScreenState extends State<DoctorDashboardScreen> {
  bool isFullScreen(Size currentSize, Size fullSize) {
    print("$fullSize == $currentSize");

    if (currentSize.height == fullSize.height &&
        fullSize.width == currentSize.width)
      return true;
    else
      return false;
  }

  Size getSize(BuildContext context) {
    return Size(
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
  }

  double? width, height;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        width = constraints.maxWidth;
        height = constraints.maxHeight;
        return Scaffold(
          backgroundColor: Colors.teal[100],
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Image.asset('assets/images/arsu.png'),
              ),
            ],
            elevation: 10.0,
            title: Center(
              child: Text(
                "Hello, Dr Arsalan",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          drawer: Drawer(),
          body: buildGridViewDoctor(context),
        );
      },
    );
  }
}

buildGridViewDoctor(BuildContext context) {
  return InkWell(
    onTap: () {
      print("Pressed");
       Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PickAppointment(),
          ),
        );
    },
    child: GridView.builder(
      padding: EdgeInsets.only(top: 80),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10.0,
            horizontal: 10.0,
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 15.0,
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset.zero,
                  ),
                ],
                color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  doctorListCategory[index].icon,
                  size: 40,
                  color: doctorListCategory[index].color,
                ),
                SizedBox(height: 10),
                Text(
                  doctorListCategory[index].title as String,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  doctorListCategory[index].subTitle as String,
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
      itemCount: doctorListCategory.length,
    ),
  );
}
