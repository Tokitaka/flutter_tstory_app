import 'package:intl/intl.dart';

class User {
  int id;
  String username;
  String email;
  String password;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.createdAt,
    required this.updatedAt,
  });

 factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id : json["id"],
        username : json["username"],
        email : json["email"],
        password : json["password"],
        createdAt : DateFormat("yyyy-mm-dd").parse(json["createdAt"]),
        updatedAt : DateFormat("yyyy-mm-dd").parse(json["updatedAt"]),
    );
  }

  Map<String, dynamic> toJson() => {
   "id" : id,
   "username" : username,
   "email" : email,
   "password" : password,
   "createdAt" : createdAt,
   "updatedAt" : updatedAt,
  };
}
