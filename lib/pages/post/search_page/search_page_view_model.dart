import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/model/post/post.dart';

final searchPageProvider =
    StateNotifierProvider.autoDispose<SearchPageViewModel, SearchPageModel>(
        (ref) {
  Logger().d("postHomePageProvider");
  return SearchPageViewModel();
});

class SearchPageModel {
  List<Post> posts;

  SearchPageModel({required this.posts});
}

class SearchPageViewModel extends StateNotifier<SearchPageModel> {
  SearchPageViewModel() : super(SearchPageModel(posts: []));

  Future<List<Post>> fetchPosts() async {
    final snapshot = await FirebaseFirestore.instance.collection('posts').get();
    final posts = snapshot.docs.map((doc) => Post.fromSnapshot(doc)).toList();
    return posts;
  }

  Future<void> filterPostsByKeyword(String keyword) async {
    final posts = await fetchPosts();
    final filteredPosts = posts
        .where((post) =>
            post.title!.toLowerCase().contains(keyword.toLowerCase()) ||
            post.content!.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    state = SearchPageModel(posts: filteredPosts);
  }
}
