import 'package:flutter/material.dart';

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