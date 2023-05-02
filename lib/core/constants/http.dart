import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

final dio = Dio(BaseOptions(
  baseUrl: "http://192.168.200.14:8080",
  contentType: "application/json; charset=utf-8",
));

Future<Uint8List> fetchImage() async {
  final response = await http.get(Uri.parse('https://picsum.photos/900/500'));
  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    throw Exception('Failed to load image');
  }
}
