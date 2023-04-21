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

  // // 권한 체크
  // Future<SessionUser> fetchVerifyWithJwt() async {
  //   // 1. 로그인 성공 시 생성되는 SessionUser
  //   SessionUser sessionUser = SessionUser();
  //   // 2. secureStorage에 담아놓은 jwt token 꺼내기 (IO)
  //   String? deviceJwt = await secureStorage.read(key: "jwt");
  //   if (deviceJwt != null) {
  //     Response response = await dio.get("/jwtToken",
  //         options: Options(headers: {"Authorization": deviceJwt}));
  //     ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  //     responseDTO.token = deviceJwt;
  //     responseDTO.data = User.fromJson(responseDTO.data);
  //     if(responseDTO.code == 1) {
  //
  //     }
  //   }
  // }
  Future<ResponseDTO> fetchJoin(JoinReqDTO joinReqDTO) async {
    try {
      Response response = await dio.post("/join", data: joinReqDTO.toJson());
      ResponseDTO responseDTO =
          ResponseDTO.fromJson(response.data); // data가 dynamic 타입
      responseDTO.data = User.fromJson(responseDTO.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "유저네임 중복");
    }
  }

  Future<ResponseDTO> fetchLogin(LoginReqDTO loginReqDTO) async {
    // 2. 통신을 위해서 Json serialize, data에 User 객체가 json 형태로 반환되는 로직 가정
    try {
      Response response = await dio.post("/login", data: loginReqDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      responseDTO.data = User.fromJson(responseDTO.data);
      // 3. 토큰 받기
      final authorization = response.headers['Authorization'];
      if (authorization != null) {
        responseDTO.token = authorization.first;
      }
      return responseDTO; //로그인 실패 시 token 값은 null이 됨
    } catch (e) {
      return ResponseDTO(code: -1, msg: "유저네임 혹은 비번이 틀렸습니다");
    }
  }
}
