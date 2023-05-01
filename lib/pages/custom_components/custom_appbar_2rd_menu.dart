import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/secure_storage.dart';
import 'package:tstory_app/core/constants/size.dart';
import 'package:tstory_app/main.dart';

class CustomAppbar2rdMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (idToken != null) {
      return Container(
        width: getScreenWidth(context),
        height: 60.0,
        color: Colors.black,
        child: Center(
          child: Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routers.home);
                },
                child: Text(
                  "FOR YOU",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routers.myPost);
                },
                child: Text(
                  "MY POST",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routers.writePost);
                },
                child: Text(
                  "WRITE",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
      );
    }
  }
}
