import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/model/post/post.dart';

// 창고 관리자
final forYouPageProvider = StateNotifierProvider.autoDispose<ForYouPageViewModel,ForYouPageModel>((ref){
  Logger().d("postHomePageProvider");

  return ForYouPageViewModel()..notifyInit();

});
// 창고 데이터
class ForYouPageModel{
  List<Post> posts;
  ForYouPageModel({required this.posts});
}
// 창고
class ForYouPageViewModel extends StateNotifier<ForYouPageModel>{
  ForYouPageViewModel() : super(ForYouPageModel(posts: []));

  void notifyInit() async {
     Logger().d("notifyInit");
     final snapshot = await FirebaseFirestore.instance.collection('posts').get();
     final posts = snapshot.docs.map((doc)=>Post.fromSnapshot(doc)).toList();
     state = ForYouPageModel(posts: posts);
  }
}