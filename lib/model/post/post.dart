import 'package:intl/intl.dart';
import 'package:tstory_app/model/user/user.dart';

class Post {
  late int id;
  late String title;
  late String content;
  late User user;
  late DateTime createdAt;
  late DateTime updatedAt;

  Post({
    required this.id,
    required this.title,
    required this.content,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });

  Post.fromJson(Map<String, dynamic> json) {
      id = json["id"];
      title = json["title"];
      content = json["content"];
      user =  User.fromJson(json["user"]);
      createdAt = DateFormat("yyyy-MM-dd").parse(json["createdAt"]);
      updatedAt = DateFormat("yyyy-MM-dd").parse(json["updatedAt"]);

  }

  Map<String, dynamic> toJson() => {
    "id" : id,
    "title" : title,
    "content" : content,
    "user": user,
    "createdAt" : createdAt,
    "updatedAt" : updatedAt,
  };
}
