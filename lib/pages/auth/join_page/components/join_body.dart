import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';

class JoinBody extends StatelessWidget {
  const JoinBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: mg_md,
        ),
        Text(
          "Create your VICE account",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 44),
        ),
        SizedBox(
          height: mg_md,
        ),
        Text(
            "Creating a VICE account lets us know what you've into so we can personalize the stories you see in our daily newsletter, apps, and elsewhere."),
        SizedBox(
          height: mg_md,
        ),
        SizedBox(
          width: mg_sm,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            SizedBox(
              width: mg_sm,
            ),
            RichText(
              text: TextSpan(
                text: "Sign in here",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.popAndPushNamed(
                      context, Routers.loginForm
                    );
                  },
              ),
            ),
          ],
        ),
        SizedBox(
          height: mg_lg,
        ),
      ],
    );
  }
}
