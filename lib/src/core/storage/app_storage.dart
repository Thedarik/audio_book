import "dart:convert";

import "package:audio_book/src/feature/search/model/storage_model.dart";
import "package:shared_preferences/shared_preferences.dart";

enum StorageKey {
  user,
  refreshToken,
  token,
  theme,
}

sealed class AppStorage {
  static Future<void> store(
      {required StorageKey key, required String value}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.setString(key.name, value);
  }

  static Future<void> storeBook(
      {required String key, required StorageModel storageModel}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();

    List<String>? jsonStringList = storage.getStringList(key);
    List<StorageModel> storageModels = jsonStringList != null
        ? jsonStringList.map((jsonString) => StorageModel.fromJson(jsonDecode(jsonString))).toList()
        : [];

    storageModels.add(storageModel);

    List<String> updatedJsonStringList = storageModels.map((model) => jsonEncode(model)).toList();
    await storage.setStringList(key, updatedJsonStringList);
  }


  static Future<List<StorageModel>> loadBook({required String key}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    List<String>? jsonStringList = storage.getStringList(key);

    if (jsonStringList == null) {
      return [];
    }

    List<StorageModel> storageModels = jsonStringList.map((jsonString) => StorageModel.fromJson(jsonDecode(jsonString))).toList();

    return storageModels;
  }


  static Future<String?> load({required StorageKey key}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    final String? result = storage.getString(key.name);
    if (result == null) {
      return null;
    } else {
      return result;
    }
  }

  static Future<void> delete({required StorageKey key}) async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    await storage.remove(key.name);
  }
}
