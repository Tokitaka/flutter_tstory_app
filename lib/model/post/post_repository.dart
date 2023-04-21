import 'package:dio/dio.dart';
import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/dto/post_request.dart';
import 'package:tstory_app/dto/response_dto.dart';
import 'package:tstory_app/model/post/post.dart';

class PostRepository {
  static final PostRepository _instance = PostRepository._single();

  factory PostRepository() {
    return _instance;
  }

  PostRepository._single();

  Future<ResponseDTO> fetchAllPosts() async {
    try {
      Response response = await dio.get("/post");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
      responseDTO.data = postList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }

  Future<ResponseDTO> fetchMyPosts(String jwt) async {
    try {
      Response response = await dio.get("/post",
          options: Options(headers: {'Authorization': jwt}));
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<dynamic>;
      List<Post> postList = mapList.map((e) => Post.fromJson(e)).toList();
      responseDTO.data = postList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }

  Future<ResponseDTO> fetchPost(int id, String jwt) async {
    try {
      Response response = await dio.get("/post/$id",
          options: Options(headers: {'Authorization': jwt}));
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      return responseDTO;
    } catch (e) {
      //DioError 예외 인스턴스
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }

  Future<ResponseDTO> fetchDelete(int id, String jwt) async {
    try {
      Response response = await dio.delete("/post/$id",
          options: Options(headers: {'Authorization': jwt}));
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }

  Future<ResponseDTO> fetchUpdate(int id, PostUpdateDTO postUpdateDTO, String jwt) async {
    try {
      Response response = await dio.put("/post/$id",
          options: Options(headers: {'Authorization': jwt}), data: postUpdateDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data); //store에 넣기위한 데이터
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }
  Future<ResponseDTO> fetchSave(PostSaveDTO postSaveDTO, String jwt) async {
    try {
      Response response = await dio.post("/post",
          options: Options(headers: {'Authorization': jwt}), data: postSaveDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패", data: e);
    }
  }
}
