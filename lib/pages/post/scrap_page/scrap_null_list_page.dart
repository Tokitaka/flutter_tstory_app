import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/pages/auth/join_page/join_form_page.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';

class ScrapNullListPage extends StatelessWidget {
  const ScrapNullListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomArrowAppbar(text: "Bookmarked"),
      body: Padding(
        padding: myhorizontalpd,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.bookmark_add_outlined,
              size: 60,
            ),
            const SizedBox(height: 15),
            const Text("Create a STORY account to save your bookmarks", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            const SizedBox(height: 10),
            const Text(
                "Creating a TheStorySoFar account allows you to save any article or video for later. You'll be able to access your bookmarks across devices, greate for your mornig commute or bedtime reading.",textAlign: TextAlign.center,),
            const SizedBox(height: 25),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginFormPage()),);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(
                  const Size(350, 48),
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: const Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            const SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const JoinFormPage()),);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(
                  const Size(350, 48),
                ),
                shape: MaterialStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
              child: const Text("Create Account", style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}


