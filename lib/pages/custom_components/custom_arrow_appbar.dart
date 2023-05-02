import 'package:flutter/material.dart';

class CustomArrowAppbar extends StatelessWidget implements PreferredSizeWidget{
  final text;
  const CustomArrowAppbar({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      title: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}