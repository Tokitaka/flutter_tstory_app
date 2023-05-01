import 'package:flutter/material.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_null_list_page.dart';
import 'package:tstory_app/pages/post/search_page/search_page.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';

PreferredSizeWidget custom_appbar_1st(context) {
  bool hasToken = false;
  return AppBar(
    backgroundColor: Colors.black,
    leading: hasToken
        ? Container()
        : Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyInfoPage()),
                    );
                  },
                  icon: const Icon(Icons.account_circle_rounded,
                      color: Colors.white),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScrapListPage()),
                    );
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
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SearchPage()),
          );
        },
        icon: const Icon(Icons.search, color: Colors.white),
      ),
    ],
  );
}
