import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/dto/response_dto.dart';
import 'package:tstory_app/dto/user_request.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/model/user/user_repository.dart';
import 'package:tstory_app/provider/session_provider.dart';

// class 내부에 있는게 아니라서 전역 접근 가능.
final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  UserController(this.ref);

  Future<void> logout() async {
    try {
      await ref.read(sessionProvider).logoutSuccess();
      Navigator.pushNamedAndRemoveUntil(mContext!, Routers.home, (route) => false);
    } catch (e) {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그아웃 실패")));
    }
  }
  Future<void> join(String username, String email, String password) async {
    JoinReqDTO joinReqDTO = JoinReqDTO(username: username, email: email, password: password);
    await UserRepository().fetchJoin(joinReqDTO);
  }
  Future<void> login(String email, String password) async {
    LoginReqDTO loginReqDTO = LoginReqDTO(email: email, password: password);
    // 파싱은 repository의 역할 - loginReqDTO를 그대로 넘겨준다.
    ResponseDTO responseDTO = await UserRepository().fetchLogin(loginReqDTO);
    // responseDTO의 검증은 controller 몫
    if(responseDTO.code != -1){
    // repository에서 담은 token을 secureStorage에 담아준다
    await secureStorage.write(key: "jwt", value: responseDTO.token);
    // 로그인된 상태를, loginSuccess()를 통해 등록해준다
    ref.read(sessionProvider).loginSuccess(responseDTO.data, responseDTO.token!);
    Navigator.popAndPushNamed(mContext!, Routers.home);
    } else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그인 실패 : ${responseDTO.msg}")));
    }
  }
}
