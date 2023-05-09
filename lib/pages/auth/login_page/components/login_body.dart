import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_form_button.dart';
import 'package:tstory_app/pages/auth/login_page/google_login_form_page.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Sign in to your Tstory account",
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
            text: "Continue with Apple", icon: Icons.apple_outlined),
        SizedBox(
          height: mg_sm,
        ),
        CustomFormButton(
          text: "Continue with Google",
          icon: Icons.g_mobiledata_outlined,
          buttonColor: Color(0xFFC1634B),
          onPressed: (){
            try {
             signInWithGoogle();
             Navigator.pushReplacementNamed(context, "/home");
            } catch (e) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Error'),
                  content: Text('Google Sign-In Failed'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('OK'))
                  ],
                ),
              );
            }
          },
        ),
        SizedBox(
          height: mg_md,
        ),
        RichText(
          text: TextSpan(
            text: "Just let me in",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.underline,
                fontSize: 18),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushReplacementNamed(context, "/home");
              },
          ),
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
