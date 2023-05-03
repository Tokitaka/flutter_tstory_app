import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/model/post/post.dart';

final searchPageProvider =
    StateNotifierProvider.autoDispose<SearchPageViewModel, SearchPageModel>(
        (ref) {
  Logger().d("postHomePageProvider");
  return SearchPageViewModel()..notifyInit();
});

// 창고 데이터
class SearchPageModel {
  List<Post> posts;
  SearchPageModel({required this.posts});
}

// 창고
class SearchPageViewModel extends StateNotifier<SearchPageModel> {
  SearchPageViewModel() : super(SearchPageModel(posts: []));

  void notifyInit() async {
    Logger().d("notifyInit");
    final snapshot = await FirebaseFirestore.instance.collection('posts').get();
    final posts = snapshot.docs.map((doc) => Post.fromSnapshot(doc)).toList();
    state = SearchPageModel(posts: posts);
  }

  void filterPostsByKeyword(String keyword) {
    final filteredPosts = state.posts
        .where((post) =>
            post.title!.contains(keyword) || post.content!.contains(keyword))
        .toList();
    state = SearchPageModel(posts: filteredPosts);
  }
}
