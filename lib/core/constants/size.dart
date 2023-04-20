import 'package:flutter/material.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getDrawerWidth(BuildContext context) {
  return getScreenWidth(context) * 0.6;
}

final myhorizontalpd = const EdgeInsets.symmetric(horizontal: 30);
final mg_sm =15.0;
final mg_md =25.0;
final mg_lg =35.0;
