import 'package:mealapp/models/doctor.dart';

class Appointment {
  int? time;
  Doctor? doctor;

  Appointment(this.time, this.doctor);

  Appointment.copy(Appointment from)
      : this(
          from.time,
          Doctor.copy(
            (from.doctor) as Doctor,
          ),
        );
}
