import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/dto/post_request.dart';
import 'package:tstory_app/dto/response_dto.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/model/post/post_repository.dart';
import 'package:tstory_app/pages/post/detail_page/post_detail_page_view_model.dart';
import 'package:tstory_app/pages/post/list_page/home_page/for_you_page_view_model.dart';
import 'package:tstory_app/pages/post/list_page/my_post_page/my_post_page_view_model.dart';
import 'package:tstory_app/provider/session_provider.dart';


//Controller는 Provider - Store 접근
final postControllerProvider = Provider<PostController>((ref) {
  return PostController(ref);
});

class PostController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  PostController(this.ref);

  // refresh - foryou, mylist
  Future<void> refreshForYou() async {
    //창고 데이터 refresh : notifyInit
    ref.read(forYouPageProvider.notifier).notifyInit();
  }

  Future<void> refreshForMyList() async {
    SessionUser sessionUser = ref.read(sessionProvider);
    //창고 데이터 refresh : notifyInit
    ref.read(myPostPageProvider.notifier).notifyInit(sessionUser.jwt!);
  }

  // delete - myList, detail
  Future<void> deleteMyPost(int id) async {
    SessionUser sessionUser = ref.read(sessionProvider);
    //DB data
    await PostRepository().fetchDelete(id, sessionUser.jwt!);
    //Store 관리
    ref.read(myPostPageProvider.notifier).notifyRemove(id);
    ref.read(forYouPageProvider.notifier).notifyInit();
    // 삭제 완료 후, 이전 페이지에서 변경된 내용이 적용된 상태로 보여짐
    Navigator.pop(mContext!);
  }
  //update - detail 페이지
  Future<void> updatePost(int id, String title, String content) async {
    PostUpdateDTO postUpdateDTO = PostUpdateDTO(title: title, content: content);
    SessionUser sessionUser = ref.read(sessionProvider);
    ResponseDTO responseDTO =
        await PostRepository().fetchUpdate(id, postUpdateDTO, sessionUser.jwt!);
    ref.read(myPostPageProvider.notifier).notifyUpdate(responseDTO.data);
    ref.read(postDetailPageProvider.notifier).notifyUpdate(responseDTO.data);
    ref.read(forYouPageProvider.notifier).notifyInit();
    Navigator.pop(mContext!);
  }

  Future<void> savePost(String title, String content) async {
    PostSaveDTO postSaveDTO = PostSaveDTO(title: title, content: content);
    SessionUser sessionUser = ref.read(sessionProvider);
    ResponseDTO responseDTO = await PostRepository().fetchSave(postSaveDTO, sessionUser.jwt!);
    ref.read(myPostPageProvider.notifier).notifyAdd(responseDTO.data);
    ref.read(postDetailPageProvider.notifier).notifyAdd(responseDTO.data);
    ref.read(forYouPageProvider.notifier).notifyInit();
    Navigator.pop(mContext!);
  }
}
