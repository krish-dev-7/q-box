class UserModel {
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? address;
  String? profileImageName;
  String? className;
  String? course;

  // String? address;

  UserModel(
      {this.firstName,
      this.lastName,
      this.phoneNumber,
      this.email,
      this.profileImageName,
      this.address,
      this.className,
      this.course});

  // UserModel fromJson(Map<String, dynamic> json) {
  //   return UserModel(
  //       firstName: json['firstName'],
  //       lastName: json['lastName'],
  //       age: json['age'],
  //       email: json['email'],
  //       profileImageUrl: json['profileImageUrl']);
  // }

  UserModel.fromJson(Map<String, Object?> json)
      : this(
            firstName: json['firstName']! as String,
            lastName: json['lastName']! as String,
            email: json['email']! as String,
            profileImageName: json['profileImageName'] as String,
            phoneNumber: json['phone']! as String,
            address: json['address'] as String,
            className: json['className'] as String,
            course: json['course'] as String);

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['phone'] = this.phoneNumber;
    data['email'] = this.email;
    data['profileImageName'] = this.profileImageName;
    data['address'] = this.address;
    data['className'] = this.className;
    data['course'] = this.course;
    return data;
  }
}
