import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:tstory_app/model/post/post.dart';
// Firebase -> Provider 창고 데이터
class MyInfoPageModel{

}
// Provider 창고
class MyInfoPageViewModel extends StateNotifier<MyInfoPageModel?>{
  MyInfoPageViewModel(super.state);

  void notifyInit() async {
    Logger().d("notifyInit");
    final snapshot = await FirebaseFirestore.instance.collection('posts').get();

  }
}