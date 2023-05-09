import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/pages/auth/login_page/components/login_body.dart';
import 'package:tstory_app/pages/auth/login_page/components/login_form.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              LoginBody(),
              LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
// else {
//   showDialog(
//     context: context,
//     builder: (context) => AlertDialog(
//       title: Text('Error'),
//       content: Text('Google Sign-In Failed'),
//       actions: [
//         TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: Text('OK'))
//       ],
//     ),
//   );
//   return SizedBox.shrink();
// }
}
