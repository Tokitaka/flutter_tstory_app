import 'package:flutter/material.dart';
import 'package:tstory_app/pages/custom_components/custom_appbar_2rd_menu.dart';

class PostHomeBody extends StatelessWidget {
  const PostHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      toolbarHeight: 0,
      flexibleSpace: FlexibleSpaceBar(
        background: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: CustomAppbar2rdMenu(),
        ),
      ),
    );
  }
}
