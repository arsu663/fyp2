import 'package:intl/intl.dart';
import 'package:mealapp/app/main_dependencies.dart';

import '../models/appointment.dart';

import '../models/doctor.dart';

final patients = <Appointment>[
  Appointment(
    id: "1",
    approve: false,
    disapprove: true,
    doctorid: "12",
    date: DateFormat.y(2018) as DateTime,
    day: DateFormat.d("Monday") as DateTime,
    name: "Arsalan",
    userId: "12",
    time: "11pm" as DateTime,
  ),
  Appointment(
    id: "1",
    approve: false,
    disapprove: true,
    doctorid: "12",
    date: DateFormat.y(2018) as DateTime,
    day: DateFormat.d("Monday") as DateTime,
    name: "Arsalan",
    userId: "12",
    time: "11pm" as DateTime,
  ),
  Appointment(
    id: "1",
    approve: false,
    disapprove: true,
    doctorid: "12",
    date: DateFormat.y(2018) as DateTime,
    day: DateFormat.d("Monday") as DateTime,
    name: "Arsalan",
    userId: "12",
    time: "12pm" as DateTime,
  ),
  Appointment(
    id: "1",
    approve: false,
    disapprove: true,
    doctorid: "12",
    date: DateFormat.y(2018) as DateTime,
    day: DateFormat.d("Monday") as DateTime,
    name: "Arsalan",
    userId: "12",
    time: "10pm" as DateTime,
  ),
];
