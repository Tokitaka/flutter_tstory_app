import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static late final FlutterSecureStorage _secureStorage;
  static bool hasToken = false;

  static Future<void> initialize() async {
    _secureStorage = const FlutterSecureStorage();
  }
  
  static Future<String?> readToken() async {
    final token = await _secureStorage.read(key: "jwt");
    if (token != null) {
      hasToken = true;
    }
    return token;
  }

  static Future<String?> deleteToken() async {
    await _secureStorage.delete(key: "jwt");
  }

}