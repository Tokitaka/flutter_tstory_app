import 'package:flutter/material.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';
import 'package:tstory_app/pages/post/scrap_list_page.dart';
import 'package:tstory_app/pages/post/search_page.dart';

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
      appBar: appbar_1st(context),
      body: const CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Appbar2rdMenu(
                      text: "FOR YOU",
                      route: "/foryou",
                    ),
                    Appbar2rdMenu(text: "MY POST", route: "/home"),
                    Appbar2rdMenu(text: "WRITE", route: "/write"),
                  ],
                ),
              ),
            ),
          ),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "1010AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "99AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "88AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "77AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "66AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "55AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "44AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "33AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
          PostListTile(
              image: "matrix.jpg",
              headline:
                  "22AL TASKED WITH 'DESTROYING HUMANITY 'NOW WORKING ON CONTROL",
              name: "CHLOE XIANG",
              group: "MOTHERBOARD"),
        ],
      ),
    );
  }
}


PreferredSizeWidget appbar_1st(context) {
  return AppBar(
    backgroundColor: Colors.black,
    leading: Row(
      children: [
        Expanded(
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyInfoPage()),);
            },
            icon: const Icon(Icons.account_circle_rounded, color: Colors.white),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ScrapListPage()),);
            },
            icon: const Icon(Icons.save, color: Colors.white),
          ),
        ),
      ],
    ),
    title: const Text(
      'TheStorySoFar',
      style: TextStyle(color: Colors.white),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()),);
        },
        icon: const Icon(Icons.search, color: Colors.white),
      ),
    ],
  );
}

class PostListTile extends StatelessWidget {
  final String headline, name, group, image;

  const PostListTile(
      {super.key,
      required this.headline,
      required this.name,
      required this.group,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            leading: Image.asset("assets/$image"),
            title: TextButton(
                child: Text(
                  headline,
                  style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                onPressed: () {}),
            subtitle: Row(
              children: [
                Text(name),
                const SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Text(group,
                      style: const TextStyle(fontWeight: FontWeight.w700)),
                ),
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}

class Appbar2rdMenu extends StatelessWidget {
  final String text, route;

  const Appbar2rdMenu({super.key, required this.text, required this.route});

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 132,
    height: 60.0,
    color: Colors.black,
    child: Center(
      child: TextButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, route);
        },
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
    ),
      );
  }
}
