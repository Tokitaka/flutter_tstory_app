import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/main.dart';

import '../../controller/user_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final WidgetRef ref;

  const CustomBottomNavigationBar({Key? key, required this.ref}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.near_me), label: 'ForYou'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded), label: 'Myinfo'),
        BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'write'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
      ],
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: TextStyle(color: Colors.grey),
      selectedItemColor: Colors.green,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, Routers.home);
            break;
          case 1:
            if(currentUser != null){
              Navigator.pushNamed(context, Routers.myInfo);
            } else {
              Navigator.pushNamed(context, Routers.loginForm);
            }
            break;
          case 2:
            if(currentUser != null){
              Navigator.pushNamed(context, Routers.writePost);
            } else {
              Navigator.pushNamed(context, Routers.loginForm);
            }
            break;
          case 3:
            Navigator.pushReplacementNamed(context, Routers.search);
            break;
          case 4:
            final userController = ref.read(userControllerProvider);
            userController.logout();
            break;
        }
      },
    );
  }
}
