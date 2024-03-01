import 'dart:async';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// This class is used to store data in the device's memory
/// It is used to store the token and the language for example
///
///
/// [writeData] is used to write data to the device's memory
///
///
/// [readData] is used to read data from the device's memory
///
///
/// [deleteData] is used to delete data from the device's memory
///
///
///
/// [deleteAllData] is used to delete all data from the device's memory
///

class PersistData {
  static const _secureStorage = FlutterSecureStorage();

  static Future<void> writeData(String key, dynamic value) async {
    await _secureStorage.write(key: key, value: value);
  }

  static Future<String?> readData(String key) async {
    final String? value = await _secureStorage.read(key: key);
    return value;
  }

  static Future<void> deleteData(String key) async {
    await _secureStorage.delete(key: key);
  }

  static Future<void> deleteAllData() async {
    await _secureStorage.deleteAll();
  }

  static get token async {
    return await readData('x-auth-token');
  }

  static Future<void> setToken(String token) async {
    await writeData('x-auth-token', token);
  }

  static get id async {
    return await readData('id');
  }
}