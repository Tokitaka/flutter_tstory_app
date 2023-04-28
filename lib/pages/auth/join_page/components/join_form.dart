import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/pages/auth/components/custom_input_field.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';

class JoinForm extends ConsumerWidget {
  final _formKey = GlobalKey<FormState>();



  JoinForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Form(
        child: Column(
          children: [
            CustomInputField(text: "Your name"),
            SizedBox(
              height: mg_sm,
            ),
            CustomInputField(text: "Email address"),
            SizedBox(
              height: mg_sm,
            ),
            CustomInputField(text: "Pick a password"),
            SizedBox(
              height: mg_sm,
            ),
            CustomInputField(text: "Confirm password"),
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
