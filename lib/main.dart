import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tstory_app/constants/routers.dart';
import 'package:tstory_app/pages/post/for_you_page.dart';
import 'package:tstory_app/pages/user/join_form_page.dart';
import 'package:tstory_app/pages/user/login_form_page.dart';
import 'package:tstory_app/pages/user/my_info_page.dart';
import 'package:tstory_app/pages/post/my_post_page.dart';
import 'package:tstory_app/pages/post/scrap_list_page.dart';
import 'package:tstory_app/pages/post/search_page.dart';
import 'package:tstory_app/pages/post/write_page.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

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
        Routers.home: (context) => const MyPostPage(),
        Routers.forYou: (context) => const ForYouPage(),
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

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyPostPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/logo.jpg"),
      ),
    );
  }
}
