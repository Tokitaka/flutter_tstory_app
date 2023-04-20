import 'package:tstory_app/core/constants/http.dart';
import 'package:tstory_app/dto/response_dto.dart';

class PostRepository {
  static final PostRepository _instance = PostRepository._single();

  factory PostRepository() {
    return _instance;
  }

  PostRepository._single();

  Future<ResponseDTO> fetchPostList(String jwt){
    dio.get("/post", options: )
  }
  fetchPost(){}
  fetchDelete(){}
  fetchUpdate(){}
  fetchSave(){}

}
