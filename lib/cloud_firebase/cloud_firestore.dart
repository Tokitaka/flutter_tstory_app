import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/main.dart';

void addNewPost(String title, content) {
  final mContext = navigatorKey.currentContext!;
  final cState = navigatorKey.currentState!;

  Map<String, dynamic> user = {
    'email': currentUser!.email,
  };
  firestore
      .collection('posts')
      .add({
        'title': title,
        'content': content,
        'author': currentUser!.uid,
        'user': user,
      })
      .then(
        (value) => showDialog(
          context: mContext,
          builder: (context) => AlertDialog(
            title: Text('Success'),
            content: Text('New document added'),
            actions: [
              TextButton(
                onPressed: () {
                  cState.pushReplacementNamed(Routers.writePost);
                },
                child: Text('OK'),
              )
            ],
          ),
        ),
      )
      .catchError(
        (error) => showDialog(
          context: mContext,
          builder: (context) => AlertDialog(
            title: Text('Success'),
            content: Text('Error adding document:$error'),
            actions: [
              TextButton(
                onPressed: () {
                  cState.pushReplacementNamed(Routers.writePost);
                },
                child: Text('OK'),
              ),
            ],
          ),
        ),
      );
}

// ScaffoldMessenger.of(context)
//     .showSnackBar(SnackBar(content: Text(_email.text.trim())));
void addNewUser() {
  firestore
      .collection('users')
      .add({
        'username': 'London',
        'email': 'london@vice.com',
        'password': '1234',
      })
      .then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore
      .collection('users')
      .add({
        'username': 'Sydney',
        'email': 'sydney@vice.com',
        'password': '1234',
      })
      .then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));

  firestore
      .collection('users')
      .add({
        'username': 'Taiti',
        'email': 'taiti@vice.com',
        'password': '1234',
      })
      .then((value) => print('New document added: ${value.id}'))
      .catchError((error) => print('Error adding document: $error'));
}
