import 'package:flutter/material.dart';

class CustomFormButton extends StatelessWidget {
  final onPressed, text, icon, buttonColor;

  const CustomFormButton({
    super.key,
    this.onPressed,
    required this.text,
    this.icon,
    this.buttonColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
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
