import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/pages/auth/join_page/components/join_body.dart';
import 'package:tstory_app/pages/auth/join_page/components/join_form.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';

class JoinFormPage extends StatelessWidget {
  const JoinFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger().d("joinpage 그려짐");
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomArrowAppbar(text: "Create Account"),
      body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: SingleChildScrollView(
      child: Column(
      children: [
            JoinBody(),
            JoinForm(),
          ],
        ),
    ),
      ),
    );
  }
}

