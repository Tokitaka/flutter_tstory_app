import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/cloud_firebase/cloud_firestore.dart';
import 'package:tstory_app/core/constants/routers.dart';
import 'package:tstory_app/core/constants/theme.dart';

class WritePage extends StatefulWidget {
  WritePage({Key? key}) : super(key: key);

  @override
  State<WritePage> createState() => _WritePageState();
}

class _WritePageState extends State<WritePage> {
  final TextEditingController _titleWriteController = TextEditingController();
  final TextEditingController _contentWriteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120.0, horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: _titleWriteController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: myWhite,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: "Enter title",
                    hintStyle: TextStyle(
                      fontSize: 18,
                    )),
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _contentWriteController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: myWhite,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 50, horizontal: 10),
                  hintText: "Enter content",
                  hintStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
                maxLines: 13,
                textInputAction: TextInputAction.send,
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  addNewPost(
                      _titleWriteController.text, _contentWriteController.text);
                },
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 30, color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
