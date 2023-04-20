import 'package:validators/validators.dart';
Function validateUsername(){
  return (String? value){
    if (value!.isEmpty) {
      return "Please Enter username";
    } else if (!isAlphanumeric(value)) {
      return "Username must contain only letters, numbers.";
    } else {
      return null;
    }
  };
}

Function validatePassword(){
  return (String? value){
    if (value!.isEmpty) {
      return "Please Enter password";
    } else {
      return null;
    }
  };
}
