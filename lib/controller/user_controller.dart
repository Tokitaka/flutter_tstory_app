import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/provider/session_provider.dart';

final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  UserController(this.ref);

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      currentUser = null;
      Navigator.pushNamedAndRemoveUntil(
          mContext!, Routers.home, (route) => false);
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text('Successfully logged out')));
    } catch (e) {
      ScaffoldMessenger.of(mContext!)
          .showSnackBar(SnackBar(content: Text('Failed to sign out: $e')));
    }
  }

  Future<void> join(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      Navigator.pushReplacementNamed(mContext!, Routers.loginForm);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(mContext!).showSnackBar(
            SnackBar(content: Text("The password provided is too weak")));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(mContext!).showSnackBar(
            SnackBar(content: Text("The account already exists for that email.")));
      }
    }
  }

  Future<void> login(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      currentUser = userCredential.user;
      Navigator.pushReplacementNamed(mContext!, Routers.home);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(mContext!).showSnackBar(
            SnackBar(content: Text("No user found for that email.")));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(mContext!).showSnackBar(
            SnackBar(content: Text("Wrong password provided for that user.")));
      }
    } catch (e) {
      ScaffoldMessenger.of(mContext!).showSnackBar(
          SnackBar(content: Text(e.toString())));
    }
  }
}
