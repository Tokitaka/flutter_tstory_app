import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/dto/response_dto.dart';
import 'package:tstory_app/dto/user_request.dart';
import 'package:tstory_app/model/user/user.dart';
import 'package:tstory_app/provider/session_provider.dart';

// 역할 : 통신 + 파싱
class UserRepository {
  static final UserRepository _instance = UserRepository._single();

  factory UserRepository() {
    return _instance;
  }

  UserRepository._single();

  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async {
    try {
      final data = joinReqDTO.toJson();
      final result =
      await FirebaseFirestore.instance.collection("users").add(data);
      final responseDTO = ResponseDTO(code: 1, msg: "success");
      responseDTO.data = {'id': result.id};
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "Request failed please try again");
    }
  }

  Future<ResponseDTO> fetchLogin(LoginReqDTO loginReqDTO) async {
    try {
      QuerySnapshot result = await FirebaseFirestore.instance
          .collection('users')
          .where('email', isEqualTo: loginReqDTO.email)
          .where('password', isEqualTo: loginReqDTO.password)
          .get();
      if (result.docs.isNotEmpty) {
        final doc = result.docs.first;
        // doc id를 token 으로 저장
        final token = doc.id;
        return ResponseDTO(code: 1, msg: "로그인 성공", data: token);
      } else {
        return ResponseDTO(code: -1, msg: "유저네임 혹은 비번이 틀렸습니다");
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "로그인 중 오류 발생");
    }
  }
}