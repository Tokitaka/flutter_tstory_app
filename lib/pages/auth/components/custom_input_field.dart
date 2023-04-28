import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:validators/validators.dart';

class CustomInputField extends StatefulWidget {
  final hint;
  final controller;
  final funValidator;
  final isPassword;

  const CustomInputField({
  Key? key,
  required this.hint,
    this.controller,
    required this.funValidator, this.isPassword,
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
      onChanged: (value){
        if (widget.funValidator != null) {
          setState(() {
            _errorText = widget.funValidator(value);
          });
        }
      },
      controller: widget.controller,
      validator: widget.funValidator,
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


