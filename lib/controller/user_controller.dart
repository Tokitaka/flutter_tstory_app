import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/secure_storage.dart';
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
  Future<ResponseDTO> join(String username, String email, String password) async {
    JoinReqDTO joinReqDTO = JoinReqDTO(username: username, email: email, password: password);
    final responseDTO = await UserRepository().fetchJoin(joinReqDTO);
    return responseDTO;
  }

  Future<ResponseDTO> login(String email, String password) async {
    LoginReqDTO loginReqDTO = LoginReqDTO(email: email, password: password);
    final responseDTO = await UserRepository().fetchLogin(loginReqDTO);
    if(responseDTO.code == 1){
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그인 성공 : ${responseDTO.msg}")));
      return responseDTO;
    }

    final savedToken = await SecureStorage.readToken();
    if (savedToken != null && savedToken == responseDTO.token) {
      ref.read(sessionProvider).loginSuccess(responseDTO.data, responseDTO.token!);
      return responseDTO;
    }
    else {
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그인 정보가 일치하지 않습니다.")));
      return ResponseDTO(code: 1, msg: "로그인 정보가 일치하지 않습니다.");
    }
  }
}
