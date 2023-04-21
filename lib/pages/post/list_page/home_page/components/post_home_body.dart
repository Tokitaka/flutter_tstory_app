import 'package:flutter/material.dart';
import 'package:tstory_app/pages/components/custom_appbar_2rd_menu.dart';

class PostHomeBody extends StatelessWidget {
  const PostHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
              Appbar2rdMenu(text: "NULL", route: "/fillout"),
            ],
          ),
        ),
      ),
    );
  }
}