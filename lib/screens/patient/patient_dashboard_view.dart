import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../app/main_dependencies.dart';
import '../../mock/mock_list_doctors.dart';

class PatientDashboardScreen extends StatefulWidget {
  @override
  State<PatientDashboardScreen> createState() => _PatientDashboardScreenState();
}

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

  double? width, height;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        width = constraints.maxWidth;
        height = constraints.maxHeight;
        return Scaffold(
          // backgroundColor: Colors.teal[100],
          backgroundColor: Colors.white,
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildPatientCategory(
                    icon: FontAwesomeIcons.bookMedical,
                    title: "Appointments",
                    subtitle: "Book the appointment with the doctor",
                    tapHhandler: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DoctorList(doctors)));
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  buildPatientCategory(
                    icon: FontAwesomeIcons.recordVinyl,
                    title: "Update Booking",
                    subtitle: "Please Update your Bookings",
                    tapHhandler: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildPatientCategory(
                    icon: Icons.forum,
                    title: "Track Status",
                    subtitle: "Track the appointment status",
                    tapHhandler: () {},
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  buildPatientCategory(
                    icon: FontAwesomeIcons.bookMedical,
                    title: "Previous Appointments",
                    subtitle: "See All your appointments",
                    tapHhandler: () {},
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

buildPatientCategory({
  required IconData icon,
  required String title,
  required String subtitle,
  required VoidCallback tapHhandler,
}) {
  return Center(
    child: InkWell(
      onTap: tapHhandler,
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
          color: Colors.teal[500],
        ),
        height: 200,
        width: 170,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white54,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
// buildGridView() {
//   return InkWell(
//     onTap: () {
//       print("Pressed");
//     },
//     child: GridView.builder(
//       padding: EdgeInsets.only(top: 80),
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//       ),
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(
//             vertical: 10.0,
//             horizontal: 10.0,
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20.0),
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 20.0,
//                   spreadRadius: 15.0,
//                   color: Colors.black.withOpacity(0.05),
//                   offset: Offset.zero,
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   listCategory[index].icon,
//                   size: 40,
//                   color: listCategory[index].color,
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   listCategory[index].title as String,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 18,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 Text(
//                   listCategory[index].subTitle as String,
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 15,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//       itemCount: listCategory.length,
//     ),
//   );
// }
