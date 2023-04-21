class JoinReqDTO {
  final String username;
  final String email;
  final String password;

  JoinReqDTO({required this.username, required this.email, required this.password});
  // 화면 데이터는 dto -> (toJson) Map -> (fromJson) ResponseDTO
  Map<String, dynamic> toJson() => {
    "username" : username,
    "email" : email,
    "password" : password
  };
}

class LoginReqDTO {
  final String email;
  final String password;

  LoginReqDTO({required this.email, required this.password});
  Map<String, dynamic> toJson() => {
    "email" : email,
    "password" : password
  };
}
