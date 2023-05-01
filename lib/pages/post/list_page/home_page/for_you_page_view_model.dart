import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/model/post/post.dart';

// 창고 관리자
final forYouPageProvider = StateNotifierProvider.autoDispose<ForYouPageViewModel,ForYouPageModel>((ref){
  Logger().d("postHomePageProvider");
  return ForYouPageViewModel()..notifyInit();

});
// 창고 데이터 ()
class ForYouPageModel{
  List<Post> posts;
  ForYouPageModel({required this.posts});
}
// 창고 - StateNotifier의 state를 바꾸는 방식으로 저장, state를 추적, 창고 데이터가 가지고 있는 데이터는 null 이 가능
class ForYouPageViewModel extends StateNotifier<ForYouPageModel>{
  ForYouPageViewModel() : super(ForYouPageModel(posts: [])) {
  }
  // Foryoupage는 로그인 없이 접근이 가능하므로, 수정삭제추가가 불가능
  // Post 리스트 초기화
  void notifyInit() async {
     Logger().d("notifyInit");
     final snapshot = await FirebaseFirestore.instance.collection('posts').get();
     print("snapshot개수${snapshot.size}"); // 10
     final posts = snapshot.docs.map((doc)=>Post.fromSnapshot(doc)).toList();
     print("posts개수${posts.length}");
     state = ForYouPageModel(posts: posts);
  }
}