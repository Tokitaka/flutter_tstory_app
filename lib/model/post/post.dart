import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:tstory_app/model/user/user.dart';

class Post {
  String? id;
  String? title;
  String? content;
  User? user;

  Post({
    this.id,
    this.title,
    this.content,
    this.user,
  });

  factory Post.fromSnapshot(DocumentSnapshot snapshot) {
    return Post(
      id: snapshot.id,
      title: snapshot.get('title'),
      content: snapshot.get('content'),
    );
  }
}
