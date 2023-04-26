import 'package:flutter/material.dart';

class CustomPostListTile extends StatelessWidget {
  final String headline, name, image;

  const CustomPostListTile(
      {super.key,
        required this.headline,
        required this.name,
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
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}