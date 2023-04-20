import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/provider/session_provider.dart';

final postControllerProvider = Provider<PostController>((ref) {
  return PostController(ref);
});

class PostController{
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  PostController(this.ref);

  // 1. get요청은 컨트롤러를 거치지 않나?
  // 2.

  Future<void> refresh() async {
    SessionUser sessionUser = ref.read(sessionProvider);
    sessionUser.jwt;
  }
  Future<void> deletePost(int id) async {}
  Future<void> updatePost(int id, String title, String content) async {}
  Future<void> savePost(String title, String content) async {}
}