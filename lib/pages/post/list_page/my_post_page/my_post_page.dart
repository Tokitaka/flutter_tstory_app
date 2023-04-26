import 'package:flutter/material.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_1st.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_2rd_menu.dart';
import 'package:tstory_app/pages/custom_components/custom_post_list_tile.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_null_list_page.dart';
import 'package:tstory_app/pages/post/search_page/search_page.dart';

class MyPostPage extends StatefulWidget {
  const MyPostPage({super.key});

  @override
  State<MyPostPage> createState() => _MyPostPageState();
}

class _MyPostPageState extends State<MyPostPage> {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: custom_appbar_1st(context),
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomAppbar2rdMenu(
                      text: "FOR YOU",
                      route: "/foryou",
                    ),
                    CustomAppbar2rdMenu(text: "MY POST", route: "/home"),
                    CustomAppbar2rdMenu(text: "WRITE", route: "/write"),
                  ],
                ),
              ),
            ),
          ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
             ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "1010AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "99AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "88AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "77AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "66AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "55AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "44AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "33AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
          CustomPostListTile(
              image: "matrix.jpg",
              headline:
                  "22AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              ),
        ],
      ),
    );
  }
}




