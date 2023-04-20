import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  var themeMode = ThemeMode.system.obs;

  @override
  void onInit() {
    super.onInit();
    var box = GetStorage();
    if (box.hasData('themeMode')) {
      themeMode.value = ThemeMode.values[box.read('themeMode')];
    }
    if(box.hasData("language")){
      String local = box.read("locale");
      Get.updateLocale(localeFromJson(local));
    }
  }

  String localeToJson(Locale locale) {
    return json.encode({
      'languageCode': locale.languageCode,
      'countryCode': locale.countryCode,
    });
  }

  Locale localeFromJson(String jsonString) {
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    return Locale(jsonMap['languageCode'], jsonMap['countryCode']);
  }

  void updateLocale(Locale newLocale){
    Get.updateLocale(newLocale);
    var box = GetStorage();
    box.write('locale', localeToJson(newLocale));
    Get.forceAppUpdate();
  }

  void updateThemeMode(ThemeMode mode) {
    themeMode.value = mode;
    var box = GetStorage();
    box.write('themeMode', mode.index);
  }
}