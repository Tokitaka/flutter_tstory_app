import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/controller/user_controller.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_form_button.dart';
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
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
            hint: "Email address",
            controller: _email,
          ),
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
            isPassword: true,
            hint: "Pick a password",
            controller: _password,
          ),
          SizedBox(
            height: mg_sm,
          ),
          CustomInputField(
            isPassword: true,
            hint: "Confirm password",
            controller: _confirmPassword,
          ),
          SizedBox(
            height: mg_sm,
          ),
          CustomFormButton(
            text: "Create Account",
            buttonColor: Color(0xFF7F7F7F),
            onPressed: () async {
              final userController = await ref.read(userControllerProvider);
              userController.join(_email.text.trim(), _password.text.trim());
            },
          ),
        ],
      ),
    );
  }
}
