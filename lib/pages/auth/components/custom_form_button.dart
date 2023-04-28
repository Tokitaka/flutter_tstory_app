import 'package:flutter/material.dart';

class CustomFormButton extends StatelessWidget {
  final route, text, icon, buttonColor;

  const CustomFormButton({
    super.key,
    required this.route,
    required this.text,
    this.icon,
    this.buttonColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        minimumSize: MaterialStateProperty.all(
          Size(350, 50),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(
            width: 5,
          ),
          Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );
  }
}
