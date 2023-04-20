class PostRepository {
  static final PostRepository _instance = PostRepository._single();

  factory PostRepository() {
    return _instance;
  }

  PostRepository._single();

  Future<ResponseDTO> fetchPostList(){
    return null;
  }
  fetchPost(){}
  fetchDelete(){}
  fetchUpdate(){}
  fetchSave(){}

}
