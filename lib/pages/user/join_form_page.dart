import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tstory_app/constants/color.dart';
import 'package:tstory_app/constants/size.dart';
import 'package:tstory_app/pages/user/login_form_page.dart';
import 'package:tstory_app/pages/post/scrap_list_page.dart';

class JoinFormPage extends StatelessWidget {
  const JoinFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: arrow_appbar(text: "Create Account"),
      body: Padding(
        padding: myhorizontalpd,
        child: Column(
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
            RichText(
              text: TextSpan(
                text: "Sign in here",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginFormPage()),
                    );
                    Row(
                      children: [
                      Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
              );
    ),
    ),
    ],
        ),




        SizedBox(
          height: mg_lg,
        ),
        SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                MyInput(text: "Your name"),
                SizedBox(
                  height: mg_sm,
                ),
                MyInput(text: "Email address"),
                SizedBox(
                  height: mg_sm,
                ),
                MyInput(text: "Pick a password"),
                SizedBox(
                  height: mg_sm,
                ),
                MyInput(text: "Confirm password"),
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
          ),
        ),
        ],

      ),
    );
}
}








class MyInput extends StatefulWidget {
  final text;

  const MyInput({
    super.key, required this.text,
  });

  @override
  State<MyInput> createState() => _MyInputState();
}

class _MyInputState extends State<MyInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.text,
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
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your${widget.text}";
        }
      },
      cursorColor: myGrey,
    );
  }
}
