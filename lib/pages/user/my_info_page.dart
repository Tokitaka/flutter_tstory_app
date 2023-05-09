import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/main.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (currentUser != null) {
      return
      Scaffold(
        appBar: CustomArrowAppbar(text: "My info"),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 70,
                width: getScreenWidth(context),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
                  child: Text("ACCOUNT",
                      style: TextStyle(fontSize: 15, color: Colors.green)),
                ),
                decoration: BoxDecoration(
                  color: Color(0xfff7f7f7),
                  border: Border(bottom: BorderSide(color: myGrey)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Account Settings", style: TextStyle(fontSize: 20)),
                  SizedBox(
                   width: 8,
                  ),
                  Text("${currentUser!.email}"),
                ],
              ),
              Container(
                height: 0.5,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xffefefef),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    else {
     Navigator.pushNamed(context, Routers.loginForm);
     return SizedBox.shrink();
    }
  }
}
