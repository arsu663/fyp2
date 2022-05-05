class Doctor {
  String? name;
  String? speciality;
  String? imageURL;
  String? email;

  Doctor({
    this.name,
    this.speciality,
    this.imageURL,
    this.email,
  });
  Doctor.copy(Doctor from)
      : this(
            name: from.name,
            speciality: from.speciality,
            imageURL: from.imageURL,
            email: from.email);
}
