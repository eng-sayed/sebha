import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sebha/view/Azkar.dart';
import 'package:sebha/view/home.dart';

import 'controller/home_controller.dart';

void main() async {
  await GetStorage.init();
  HomeController()..gettheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.teal,
      //   appBarTheme: AppBarTheme(
      //       backgroundColor: Colors.teal,
      //       iconTheme: IconThemeData(color: Colors.white),
      //       elevation: 0,
      //       titleTextStyle: TextStyle(color: Colors.white)),
      // ),
      //theme: Themes.light,
      //  darkTheme: Themes.dark,
      //  themeMode: HomeController().gettheme(),
      home: Home(),
    );
  }
}
