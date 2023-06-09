import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_list_page.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_null_list_page.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';

PreferredSizeWidget custom_appbar_1st(context) {
  return AppBar(
    backgroundColor: Colors.black,
    leading: currentUser != null
        ? Row(
            children: [
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
          )
        : Row(
            children: [
              Expanded(
                child: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    Navigator.pushNamed(context, Routers.loginForm);
                  },
                  child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 14)),
                ),
              ),
            ],
          ),
    title: InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routers.home);
      },
      child: const Text(
        'TheStorySoFar',
        style: TextStyle(color: Colors.white),
      ),
    ),
    centerTitle: true,
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, Routers.search);
        },
        icon: const Icon(Icons.search, color: Colors.white),
      ),
    ],
  );
}
