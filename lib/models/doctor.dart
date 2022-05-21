class Doctor {
  String? id;
  String? name;
  String? speciality;
  String? imageURL;
  String? email;

  Doctor({
    this.id,
    this.name,
    this.speciality,
    this.imageURL,
    this.email,
  });
  Doctor.copy(Doctor from)
      : this(
          id: from.id,
          name: from.name,
          speciality: from.speciality,
          imageURL: from.imageURL,
          email: from.email,
        );

  Doctor.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'],
          name: json['name'],
          speciality: json['speciality'],
          imageURL: json['imageURL'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'speciality': speciality,
        'imageURL': imageURL,
        'email': email,
      };
}
