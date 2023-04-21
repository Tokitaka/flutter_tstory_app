import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/main.dart';

// class 내부에 있는게 아니라서 전역 접근 가능.
final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  UserController(this.ref);

  Future<void> logout() async {}
  Future<void> join(String username, String email, String password) async {

  }
  Future<void> login() async {}
}
