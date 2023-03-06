// class model for how many data  will be reading
class StudentModel {
  final name;
  final email;
  final address;
  final id;

  StudentModel({
    this.name,
    this.email,
    this.address,
    this.id,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      name: json['name'],
      email: json['email'],
      address: json['address'],
      id: json['id'],
    );
  }

// to add data to php we have to use json converted to php
// also we need to create php code and controller code
  Map<String, dynamic> toJsonAdd() {
    return {
      "name": name,
      "email": email,
      "address": address,
    };
  }

  // delete
  Map<String, dynamic> toJsonDeleteUpdate() {
    return {
      "name": name,
      "email": email,
      "address": address,
      "id": id,
    };
  }
}
