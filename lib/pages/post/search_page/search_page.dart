import 'package:flutter/material.dart';
import 'package:tstory_app/core/constants/theme.dart';
import 'package:tstory_app/pages/custom_components/custom_arrow_appbar.dart';
import 'package:tstory_app/pages/post/scrap_page/scrap_null_list_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomArrowAppbar(text: "Search"),
      body: TextField(
        decoration: InputDecoration(
          hintText: 'Search for anything',
          hintStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: myGrey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black54,
              style: BorderStyle.solid, width: 5,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: myGrey,
              style: BorderStyle.solid,
            ),
          ),
        ),
        cursorColor: myGrey,
        ),
      );
  }
}
