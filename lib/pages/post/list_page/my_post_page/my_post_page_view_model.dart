import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/dto/response_dto.dart';
import 'package:tstory_app/model/post/post.dart';
import 'package:tstory_app/model/post/post_repository.dart';
import 'package:tstory_app/provider/session_provider.dart';

// 창고 관리자
final myPostPageProvider = StateNotifierProvider.autoDispose<MyPostPageViewModel,MyPostPageModel>((ref){
  Logger().d("postHomePageProvider");
  SessionUser sessionUser = ref.read(sessionProvider);
  return MyPostPageViewModel(null)..notifyInit(sessionUser.jwt!);

});
// 창고 데이터 ()
class MyPostPageModel{
  List<Post> posts;
  MyPostPageModel({required this.posts});
}
// 창고 - StateNotifier의 state를 바꾸는 방식으로 저장, state를 추적, 창고 데이터가 가지고 있는 데이터는 null 이 가능
class MyPostPageViewModel extends StateNotifier<MyPostPageModel?>{
  MyPostPageViewModel(super.state);
  // 창고 내 아이템 관리
  // Post 리스트 초기화
  void notifyInit(String jwt) async {
    Logger().d("notifyInit");
    ResponseDTO responseDTO = await PostRepository().fetchMyPosts(jwt);
    state = MyPostPageModel(posts: responseDTO.data);
  }
  // 새로운 post 추가
  void notifyAdd(Post post){
    List<Post> posts = state!.posts;
    List<Post> newPosts = [...posts, post];
    state = MyPostPageModel(posts: newPosts);
  }
  // 특정 id를 가진 post 삭제
  void notifyRemove(int id){
    List<Post> posts = state!.posts;
    List<Post> newPosts = posts.where((e) => e.id != id).toList();
    state = MyPostPageModel(posts: newPosts);
  }
  // 특정 id를 가진 post 수정
  void notifyUpdate(Post post){
    List<Post> posts = state!.posts;
    List<Post> newPosts = posts.map((e) => post.id == e.id ? post : e).toList();
    state = MyPostPageModel(posts: newPosts);
  }
}