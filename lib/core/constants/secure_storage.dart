import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static late final FlutterSecureStorage _storage;
  
  static void initialize() async {
    _storage = const FlutterSecureStorage();
  }
  
  static Future<String?> readToken() async {
    return await _storage.read(key: "jwt");
  }
}