import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/theme.dart';

class CustomInputField extends StatefulWidget {
  final text;

  const CustomInputField({
    super.key,
    required this.text,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.text,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: myGrey,
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide(
            color: myGrey,
            style: BorderStyle.solid,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your${widget.text}";
        }
      },
      cursorColor: myGrey,
    );
  }
}
