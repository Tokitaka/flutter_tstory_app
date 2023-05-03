import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';
import 'package:tstory_app/pages/post/search_page/search_page_view_model.dart';

class SearchPage extends ConsumerWidget {
  SearchPage({Key? key}) : super(key: key);

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(searchPageProvider).posts;
    return Scaffold(
      appBar: CustomArrowAppbar(text: "Search"),
      body: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Search for anything',
              hintStyle: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: myGrey),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black54,
                  style: BorderStyle.solid,
                  width: 5,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: myGrey,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            cursorColor: myGrey,
            textInputAction: TextInputAction.search,
            onSubmitted: (_) {
              String searchKeyword = _searchController.text.trim();
              if (searchKeyword.isNotEmpty) {
                ref.read(searchPageProvider.notifier).filterPostsByKeyword(searchKeyword);
              }
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  title: Text(post.title ?? ""),
                  subtitle: Text(post.content ?? "", maxLines: 10),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
