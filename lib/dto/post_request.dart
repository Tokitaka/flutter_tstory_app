class PostUpdateDTO {
  final String title;
  final String content;

  PostUpdateDTO({required this.title, required this.content});

  Map<String, dynamic> toJson() => {
    "title" : title,
    "content" : content
  };

}

class PostSaveDTO {
  final String title;
  final String content;

  PostSaveDTO({required this.title, required this.content});

  Map<String, dynamic> toJson() => {
    "title" : title,
    "content" : content
  };
}
