import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sebha/constant.dart';

class HomeController extends GetxController {
  final box = GetStorage();

  late int count;
  bool? isDarkMode;

  void firstOpen() {
    box.writeIfNull('count', 0);
    box.writeIfNull('themee', false);
    isDarkMode = box.read('themee');
    // if ((box.read('themee')) == true) {
    //   Get.changeTheme(ThemeData.dark());
    // }
    //  else {
    //   Get.changeTheme(ThemeData.light());
    // }
    count = box.read('count');
    update();
  }

  void increment() {
    count++;
    box.write('count', count);

    update();
  }

  void resetCount() {
    count = 0;
    box.write('count', count);

    update();
  }

  void toggleDarkMode() {
    isDarkMode = !isDarkMode!;
    if (isDarkMode!) {
      Get.changeTheme(ThemeData.dark());
      box.write('themee', isDarkMode);
      update();
    } else {
      Get.changeTheme(ThemeData.light());
      box.write('themee', isDarkMode);
      update();
    }
  }

  gettheme() {
    print(box.read('themee'));
    box.writeIfNull('themee', false);
    isDarkMode = box.read('themee');
    ((box.read('themee')) == true)
        ? Get.changeTheme(ThemeData.dark())
        : Get.changeTheme(ThemeData.light());
  }
}
