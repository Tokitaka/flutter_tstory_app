import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_form_button.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign in to your VICE account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44),
        ),
        SizedBox(
          height: mg_md,
        ),
        Row(
          children: [
            Text(
              "Don't have an account?",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: mg_sm,
            ),
            RichText(
              text: TextSpan(
                text: "Create one here.",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushReplacementNamed(context, "/joinForm");
                  },
              ),
            ),
          ],
        ),
        SizedBox(
          height: mg_lg,
        ),
        CustomFormButton(
            text: "Continue with Apple",

            icon: Icons.apple_outlined),
        SizedBox(
          height: mg_sm,
        ),
        CustomFormButton(
            text: "Continue with Facebook",

            icon: Icons.facebook_outlined,
            buttonColor: Color(0xFF445D91)),
        SizedBox(
          height: mg_sm,
        ),
        CustomFormButton(
          text: "Continue with Google",
          icon: Icons.g_mobiledata_outlined,
          buttonColor: Color(0xFFC1634B),
        ),
        SizedBox(
          height: mg_md,
        ),
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  height: 1,
                  width: 142,
                  color: myGrey,
                ),
              ),
              TextSpan(
                text: 'OR',
                style: TextStyle(color: myGrey, fontSize: 15),
              ),
              WidgetSpan(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  height: 1,
                  width: 143,
                  color: myGrey,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mg_md,
        ),
      ],
    );
  }
}