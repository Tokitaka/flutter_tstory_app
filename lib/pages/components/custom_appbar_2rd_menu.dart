import 'package:flutter/material.dart';

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
