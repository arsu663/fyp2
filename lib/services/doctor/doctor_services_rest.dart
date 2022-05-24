

import 'package:mealapp/services/doctor/doctor_services.dart';
import 'package:mealapp/services/rest.dart';

import '../../app/dependencies.dart';
import '../../models/Doctor.dart';

class DoctorServiceRest implements DoctorService {
  RestServices service = dependency();
 

  Future<Doctor> getDoctor(doctorId) async {
    final doctor = await RestServices.get("doctors/$doctorId");
    return Doctor.fromJson(doctor);
  }

  Future<Doctor> updateDoctor(dr) async {
    final doctor = await RestServices.patch("doctors/${dr.id}", data: dr);
    return Doctor.fromJson(doctor);
  }
}
