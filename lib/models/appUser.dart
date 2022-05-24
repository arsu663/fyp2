// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class AppUser {
  dynamic? _id;
  String? _name;
  String? _password;
  String? _email;
  String? _phoneNumber;
  String? _imageUrl;
  bool hasAppointment = false;
  late DateTime _appointment;

  AppUser({
    dynamic id,
    String name = '',
    String imageUrl = '',
    String password = '',
    String email = "",
    String phoneNumber = "",
    DateTime? appointment,
    this.hasAppointment = false,
  });

  get id => _id;
  set id(value) => _id = value;

  get imageUrl => _imageUrl;
  set imageUrl(value) => _imageUrl = value;

  get name => _name;
  set name(value) => _name = value;

  get password => _password;
  set password(value) => _password = value;

  get email => _email;
  set email(value) => _email = value;

  get phoneNumber => _phoneNumber;
  set phoneNumber(value) => _phoneNumber = value;

  get appointment => _appointment;
  set appointment(value) => _appointment = value;

  AppUser.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          imageUrl: json['imageUrl'],
          password: json['password'],
          email: json['email'],
          phoneNumber: json['phoneNumber'],
          appointment: json['appointment'],
          hasAppointment: json['hasAppointment'],
        );

  // DocumentReference? get firestoreRef {
  //   FirebaseFirestore.instance.doc("users/$id");
  // }

  // Future<void> saveInfo() async {
  //   await firestoreRef?.set(toJson());
  // }

  // AppUser.fromDocument(DocumentSnapshot? documentSnapshot) {
  //   id = documentSnapshot?.id;
  //   imageUrl = documentSnapshot?.get("imageUrl");
  //   password = documentSnapshot?.get("password");
  //   email = documentSnapshot?.get("email");
  //   phoneNumber = documentSnapshot?.get("phoneNumber");
  //   appointment = documentSnapshot?.get("appointment");
  //   hasAppointment = documentSnapshot?.get("hasAppointment");
  //   name = documentSnapshot?.get("name");}

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'password': password,
        'email': email,
        'phoneNumber': phoneNumber,
        'imageUrl': imageUrl,
        'appointment': appointment,
        'hasAppointment': hasAppointment,
      };
}
