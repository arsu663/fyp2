import 'package:flutter/material.dart';

import '../../mock/mock_data.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: patients.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // height: 50,
            color: Colors.white10,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    'Appointment # ${index + 1} :\nTime : ${patients[index].time} pm',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 24),
                  ),
                  Text(
                    'Doctor : ${patients[index].doctor!.name}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                    ),
                  ),
                  // Text(
                  //   'skudia hospital ',
                  //   style: TextStyle(
                  //     color: Theme.of(context).primaryColor,
                  //     fontSize: 20,
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
