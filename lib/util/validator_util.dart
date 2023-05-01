import 'package:flutter/material.dart';
import 'package:validators/validators.dart';

Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Please Enter username";
    } else if (!isAlphanumeric(value)) {
      return "Username must contain only letters, numbers.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Please Enter password";
    } else {
      return null; // return 하면 errorText 로 나온다
    }
  };
}

Function validatePasswordConfirm(TextEditingController password) {
  return (String? value) {
    if (value!.isEmpty) {
      return "Please Enter password";
    } else if (password.text != value) {
      return "Do not match passwords";
    } else {
      return null;
    }
  };
}

String? validateEmail(String? value) {
  if (value!.isEmpty) {
    return "Please Enter email";
  } else if (!isEmail(value)) {
    return "Please Enter a valid email address";
  } else {
    return null;
  }
}

Function validateTitle() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Please Enter title";
    } else if (value.length > 75) {
      return "Cannot exceed 75 characters";
    } else {
      return null;
    }
  };
}
