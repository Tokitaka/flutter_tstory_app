import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/pages/post/list_page/home_page/for_you_page.dart';

class CustomSplashScreen extends StatefulWidget {
  @override
  State<CustomSplashScreen> createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen> {
  @override
  void initState() {
    initializeFirebase();
    super.initState();

  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB5tpc5rETd8kVik6-Z9SDctYpW0K0yuZA",
            appId: "1:544532137880:android:6dad87119343b0271f4ded",
            messagingSenderId: "544532137880",
            projectId: "my-tstory-app"));
    try {



      await Future.delayed(Duration(seconds: 5));

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ForYouPage(),
        ),
      );
    } catch (e) {
      Logger().e("Firebase 초기화 중 오류 발생 : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    Logger().d("CustomSplash Screen 빌드됨");
    return Center(
      child: Expanded(
        child: Text("CustomSplash Screen 빌드됨",
            style: TextStyle(color: Colors.black)),
      ),
    );
  }
}
