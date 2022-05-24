import '../../models/Doctor.dart';

abstract class DoctorService {
  Future<Doctor> getDoctor(int);
  Future<Doctor> updateDoctor(Doctor);
}
