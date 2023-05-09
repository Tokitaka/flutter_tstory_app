import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tstory_app/pages/auth/login_page/login_form_page.dart';
import 'package:tstory_app/pages/post/list_page/home_page/for_you_page.dart';

class CustomSplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: LottieBuilder.asset('assets/logo.json'),
      ),
      nextScreen: LoginFormPage(),
      splashTransition: SplashTransition.fadeTransition,
    );

  }
}
