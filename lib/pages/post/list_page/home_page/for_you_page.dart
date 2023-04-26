import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_1st.dart';
import 'package:tstory_app/pages/custom_components/custom_post_list_tile.dart';
import 'package:tstory_app/pages/custom_components/custom_recommendation_card.dart';
import 'package:tstory_app/pages/post/list_page/home_page/components/post_home_body.dart';

// 창고 데이터를 구독
class ForYouPage extends ConsumerWidget {
  ForYouPage({Key? key}) : super(key: key);
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          CustomPostListTile(
              image: "matrix2.jpg",
              headline:
                  "AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIAN",),
        ],
      ),
    );
  }
}
