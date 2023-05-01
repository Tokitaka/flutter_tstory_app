import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/pages/custom_components/custom_botton_navigation_bar.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_1st.dart';
import 'package:tstory_app/pages/custom_components/custom_post_list_tile.dart';
import 'package:tstory_app/pages/custom_components/custom_recommendation_card.dart';
import 'package:tstory_app/pages/post/list_page/home_page/components/post_home_body.dart';
import 'package:tstory_app/pages/post/list_page/home_page/for_you_page_view_model.dart';

// 창고 데이터를 구독
class ForYouPage extends ConsumerWidget {
  ForYouPage({Key? key}) : super(key: key);
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(forYouPageProvider).posts;
    print("post개수${posts.length}");
    Logger().d("foryou 페이지 빌드");
    return Scaffold(
      appBar: custom_appbar_1st(context),
      body: CustomScrollView(
        slivers: [
          PostHomeBody(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 18,
            ),
          ),
          CustomRecommendationCard(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 18,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final post = posts[index];
                return ListTile(
                  leading: Image.asset("assets/matrix.jpg"),
                  title: TextButton(
                      child: Text(
                        post.title ?? "No title",
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      onPressed: () {}),
                  subtitle: Wrap(
                    children: [
                      Text(
                        post.title ?? "No title",
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: 5),
                    ],
                  ),
                );
              },
              childCount: posts.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(ref: ref),
    );
  }
}
