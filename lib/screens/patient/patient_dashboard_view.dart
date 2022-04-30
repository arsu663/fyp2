import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/main_dependencies.dart';

class PatientDashboardScreen extends StatefulWidget {
  @override
  State<PatientDashboardScreen> createState() => _PatientDashboardScreenState();
}

List<Category> listCategory = [
  Category(
    icon: FontAwesomeIcons.bookMedical,
    title: "Appointments",
    subTitle: "Book your Appointment",
    color: Colors.teal[200],
  ),
  Category(
    icon: FontAwesomeIcons.recordVinyl,
    title: "Update Booking",
    subTitle: "Your Latest Records",
    color: Colors.teal[200],
  ),
  Category(
    icon: Icons.forum,
    title: "Track Appointment",
    subTitle: "Status of the appointment",
    color: Colors.teal[200],
  ),
  Category(
    icon: Icons.settings,
    title: "Doctors",
    subTitle: "See all Doctors",
    color: Colors.teal[200],
  ),
];

class _PatientDashboardScreenState extends State<PatientDashboardScreen> {
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

  int _bottomNavIndex = 0;
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
                "Patient Dashboard",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          // drawer: Drawer(),
          body: buildGridView(),
        );
      },
    );
  }
}

buildGridView() {

 
    return InkWell(
      onTap: () {
        print("Pressed");
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
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20.0,
                    spreadRadius: 15.0,
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset.zero,
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    listCategory[index].icon,
                    size: 40,
                    color: listCategory[index].color,
                  ),
                  SizedBox(height: 10),
                  Text(
                    listCategory[index].title as String,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    listCategory[index].subTitle as String,
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
        itemCount: listCategory.length,
      ),
    );
  }
