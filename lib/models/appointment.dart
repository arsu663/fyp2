

class Appointment {
  dynamic id;
  String? name;
  bool? approve;
  bool? disapprove;
  dynamic doctorid;
  dynamic userId;
  DateTime? day;
  DateTime? date;
  DateTime? time;

  Appointment({
    this.id,
    this.name = "",
    this.approve = false,
    this.disapprove = true,
    this.doctorid,
    this.userId,
    this.day = null,
    this.date = null,
    this.time = null,
  });
// Appointment.copy(Appointment from ):this(from.time , from.hospitalName,Doctor.copy(from.doctor) );
  Appointment.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          approve: json['approve'],
          disapprove: json['disapprove'],
          doctorid: json['doctorId'],
          userId: json['userId'],
          day: DateTime.parse(
            json['day'],
          ),
          date: DateTime.parse(
            json['date'],
          ),
          time: DateTime.parse(
            json['time'],
          ),
        );
  Map<String, dynamic> toJson() => {
        // 'id': id,
        'name': name,
        'approve': approve,
        'disapprove': disapprove,
        'docotorId': doctorid,
        'userId': userId,
        'day': day.toString(),
        'date': date.toString(),
        'time': time.toString(),
      };
}
