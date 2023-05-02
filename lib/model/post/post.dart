import 'package:cloud_firestore/cloud_firestore.dart';


class Post {

  String? id;
  String? title;
  String? content;
  Map<String, dynamic>? user;

  Post({
    this.id,
    this.title,
    this.content,
    this.user,
  });

  factory Post.fromSnapshot(DocumentSnapshot snapshot) {
    // print("fromSnapshot 빌드됨");
    final data = snapshot.data() as Map<String, dynamic>;
    return Post(
      id: snapshot.id,
      title: data['title'],
      content: data['content'],
      user: data['user'],
    );
  }
}
