import 'package:flutter/material.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_2rd_menu.dart';

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
              CustomAppbar2rdMenu(
                text: "FOR YOU",
                route: "/foryou",
              ),
              CustomAppbar2rdMenu(text: "MY POST", route: "/home"),
              CustomAppbar2rdMenu(text: "WRITE", route: "/write"),
              CustomAppbar2rdMenu(text: "NULL", route: "/fillout"),
            ],
          ),
        ),
      ),
    );
  }
}