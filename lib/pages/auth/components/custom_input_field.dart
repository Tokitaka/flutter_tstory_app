import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/join_page/components/join_form.dart';
import 'package:validators/validators.dart';

class CustomInputField extends StatefulWidget {
  final hint;
  final controller;
  final isPassword;

  const CustomInputField({
    Key? key,
    required this.hint,
    this.controller,
    this.isPassword,
  }) : super(key: key);

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword ?? false,
      onChanged: (value) {
          setState(() {
            widget.controller.text = value;
          });
      },
      controller: widget.controller,

      decoration: InputDecoration(
        hintText: widget.hint,
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
        errorText: _errorText,
      ),
      cursorColor: myGrey,
    );
  }
}

