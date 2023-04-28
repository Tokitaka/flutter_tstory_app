import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_input_field.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';
import 'package:tstory_app/util/validator_util.dart';

class JoinForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _email = TextEditingController();


  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomInputField(
              hint: "Your name",
              controller: _username,
              funValidator: validateUsername(),
          ),
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
              hint: "Email address",
              controller: _email,
              funValidator: validateEmail()),
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
              isPassword: true,
              hint: "Pick a password",
              controller: _password,
              funValidator: validatePassword()),
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
              isPassword: true,
              hint: "Confirm password",
              controller: _confirmPassword,
              funValidator: validatePassword()),
          SizedBox(
            height: mg_sm,
          ),
          mybutton(
            text: "Create Account",
            route: "/home",
            buttonColor: Color(0xFF7F7F7F),
          ),
        ],
      ),
    );
  }
}


class _CustomInputFieldState extends State<CustomInputField> {
  String? _errorText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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