import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Account Settings", style: TextStyle(fontSize: 20)),
                Text("여기에 이메일"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                )
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Account name", style: TextStyle(fontSize: 20)),
                Text("여기에 username"),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
