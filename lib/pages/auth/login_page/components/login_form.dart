import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/controller/user_controller.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_form_button.dart';
import 'package:tstory_app/pages/auth/components/custom_input_field.dart';
import 'package:tstory_app/util/validator_util.dart';
import 'package:validators/validators.dart';

class LoginForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();
  final _password = TextEditingController();
  final _email = TextEditingController();

  LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomInputField(
            hint: "Email Address",
            controller: _email,
          ),
          SizedBox(
            height: mg_sm,
          ),
          Stack(
            children: [
              CustomInputField(
                isPassword: true,
                hint: "Password",
                controller: _password,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: RichText(
                      text: TextSpan(
                        text: "Forgot?",
                        style: TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushReplacementNamed(context, "/home");
                          },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: mg_md,
          ),
          CustomFormButton(
              text: "Sign in with email",
              buttonColor: Color(0xFF7F7F7F),
              onPressed: () async {
                final userController = ref.read(userControllerProvider);
                final emailError = validateEmail(_email.text.trim());
                if (emailError != null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(_email.text.trim())));
                }
                userController.login( _email.text.trim(), _password.text.trim());
              }
              ),
        ],
      ),
    );
  }
}
