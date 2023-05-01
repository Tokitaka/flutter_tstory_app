import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/core/constants/secure_storage.dart';
import 'package:tstory_app/model/user/user.dart';

final sessionProvider = Provider<SessionUser>((ref) {
  return SessionUser();
});

class SessionUser {
  User? user;
  String? jwt;
  bool? isLogin;

  void loginSuccess(user, jwt) {
    this.user = user;
    this.jwt = jwt;
    isLogin = true;
  }

  Future<void> logoutSuccess() async {
    user = null;
    jwt = null;
    isLogin = false;
    await SecureStorage.deleteToken();
    Logger().d("세션 종료 및 디바이스 jwt 삭제");
  }
}
