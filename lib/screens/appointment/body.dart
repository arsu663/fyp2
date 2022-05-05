import 'package:flutter/material.dart';
import 'package:mealapp/models/patient.dart';

import '../../models/mock_data.dart';
// import 'package:patientaid/helpers/hex_code.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Patient (patients);
    return Column(
      //  mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRect(
            child: Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Theme.of(context).primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(500),
                child: Image.asset(
                  '${patients[0].doctor!.imageURL}',
                  width: 90,
                  height: 90,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Dr ${patients[2].doctor!.name} ',
                  style:
                      TextStyle(height: 2, fontSize: 19, color: Colors.white),
                ),
              ),
            ],
          ),
        )),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 40, bottom: 10),
          child: Text(
            "Choose your slot ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        SafeArea(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 15, bottom: 20),
              child: Row(
                children: [
                  Column(children: [
                    Text('Mon',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15)),
                    Container(
                        margin: const EdgeInsets.all(5.0),
                        // padding: const EdgeInsetss.all(3.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.blueAccent)),
                        child: IconButton(icon: Text('24'), onPressed: null))
                  ]),
                  Column(children: [
                    Text(
                      'Tue',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                      ),
                      child: IconButton(
                        icon: Text('25'),
                        onPressed: null,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Text('Wen',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15)),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      // padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                      ),
                      child: IconButton(
                        icon: Text('26'),
                        onPressed: null,
                      ),
                    ),
                  ]),
                  Column(children: [
                    Text('Thrus',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 15)),
                    Container(
                      margin: const EdgeInsets.all(5.0),
                      // padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Colors.blueAccent,
                        ),
                      ),
                      child: IconButton(
                        icon: Text('27'),
                        onPressed: null,
                      ),
                    ),
                  ]),
                  Column(
                    children: [
                      Text('Fri',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15)),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        // padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                        ),
                        child: IconButton(
                          icon: Text('28'),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Sat',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15)),
                      Container(
                        margin: const EdgeInsets.all(5.0),
                        // padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.blueAccent,
                          ),
                        ),
                        child: IconButton(
                          icon: Text('29'),
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Text(
            "Morning",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('9'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('10'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('11'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('12'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  // padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('1'),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Text(
            "Evening",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
              fontSize: 20,
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('3'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('4'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('5'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('6'),
                    onPressed: null,
                  ),
                ),
                Container(
                  height: 36,
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: IconButton(
                    icon: Text('7'),
                    onPressed: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
