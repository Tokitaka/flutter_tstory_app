import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/theme.dart';

class CustomInputField extends StatelessWidget {
  final hint;
  final controller;
  final funValidator;

  const CustomInputField({
    Key? key,
    required this.hint,
    this.controller,
    required this.funValidator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: funValidator,
      decoration: InputDecoration(
        hintText: hint,
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
      cursorColor: myGrey,
    );
  }
}
