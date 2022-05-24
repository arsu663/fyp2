import 'package:mealapp/services/appointments/appointment_services.dart';
import 'package:mealapp/services/rest.dart';

import '../../app/dependencies.dart';
import '../../models/appointment.dart';

class AppointmentServiceRest implements AppointmentService {
  RestServices get rest => dependency();

  Future<List<Appointment>?> getUserTodoList(userId, user) async {
// var  appointments;
    if (user != null) {
      final List appointments = await RestServices.get("Appointments?userId=$userId");
      if (appointments.length == 0) return null;

      return appointments.map((e) => Appointment.fromJson(e)).toList();
    } else {
      final List appointments =
          await RestServices.get("Appointments?docotorId=$userId");
      if (appointments.length == 0) return null;

      return appointments.map((e) => Appointment.fromJson(e)).toList();
    }
  }

  Future<List<Appointment>> getRecordedApps() async {
    final List apps = await RestServices.get("Appointments");
    return apps.map((e) => Appointment.fromJson(e)).toList();
  }

  Future<Appointment> addAppointment(data) async {
    final app = await RestServices.post("Appointments", data: data);
    return Appointment.fromJson(app);
  }

  Future<Appointment> updateAppointment(data) async {
    final app = await RestServices.patch("Appointments/${data.id}", data: data);
    return Appointment.fromJson(app);
  }
}