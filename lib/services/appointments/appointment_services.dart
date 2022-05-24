import '../../models/appUser.dart';
import '../../models/appointment.dart';

abstract class AppointmentService {
  Future<List<Appointment>?> getUserTodoList(int, AppUser user);
  Future<List<Appointment>?> getRecordedApps();
  Future<Appointment>? addAppointment(Appointment app);
  Future<Appointment>? updateAppointment(Appointment app);
}