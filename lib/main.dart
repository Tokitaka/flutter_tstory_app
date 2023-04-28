import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/pages/post/list_page/home_page/for_you_page.dart';
import 'package:tstory_app/pages/auth/join_page/join_form_page.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';
import 'package:tstory_app/pages/custom_components/custom_splash_screen.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';
import 'package:tstory_app/pages/post/list_page/my_post_page/my_post_page.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_null_list_page.dart';
import 'package:tstory_app/pages/post/search_page/search_page.dart';
import 'package:tstory_app/pages/post/write_page/write_page.dart';

List<File> files = [
  File("post_images/Meet the.jpg"),
  File("post_images/Way day.jpg"),
];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyB5tpc5rETd8kVik6-Z9SDctYpW0K0yuZA",
          appId: "1:544532137880:android:6dad87119343b0271f4ded",
          messagingSenderId: "544532137880",
          projectId: "my-tstory-app"));
  // addNewUser();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

final FirebaseFirestore firestore = FirebaseFirestore.instance;
final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.alexandriaTextTheme()),
      home: SplashScreen(),
      initialRoute: Routers.home,
      routes: {
        Routers.home: (context) => ForYouPage(),
        Routers.myPost: (context) => const MyPostPage(),
        Routers.scrapList: (context) => const ScrapListPage(),
        Routers.myInfo: (context) => const MyInfoPage(),
        Routers.search: (context) => const SearchPage(),
        Routers.loginForm: (context) => const LoginFormPage(),
        Routers.joinForm: (context) => const JoinFormPage(),
        Routers.writePost: (context) => const WritePage(),
      },
    );
  }
}

