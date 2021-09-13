import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_button/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: routes(),
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
    );
  }
}
