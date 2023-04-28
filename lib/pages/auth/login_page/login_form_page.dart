import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/auth/components/custom_form_button.dart';
class LoginFormPage extends StatelessWidget {
  const LoginFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: myhorizontalpd,
        child: Column(
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
            TextField(
              decoration: InputDecoration(
                hintText: "Email Address",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: myGrey,
                    style: BorderStyle.solid,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: myGrey,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
              cursorColor: myGrey,
            ),
            SizedBox(
              height: mg_sm,
            ),
            Stack(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
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
                              Navigator.pushReplacementNamed(
                                  context, "/home");
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
            ),
          ],
        ),
      ),
    );
  }
}

