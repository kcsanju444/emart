class Users {
  String? firstName;
  String? lastName;
  String? email;
  String? username;
  String? phoneNumber;
  String? profileImage;

  Users(
      {this.firstName,
      this.lastName,
      this.email,
      this.username,
      this.phoneNumber,
      this.profileImage});

  Users fromJson(Map<String, dynamic> json) {
    return Users(
      firstName: json['firsname'],
      lastName: json['lastname'],
      email: json['email'],
      username: json['username'],
      phoneNumber: json['phoneNumber'] ?? "",
      profileImage: json['profileImage'] ??
          "https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/06/16/3940754963.png",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'username': username,
      'phoneNumber': phoneNumber,
      'profileImage': profileImage,
    };
  }
}
