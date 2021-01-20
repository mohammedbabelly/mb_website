import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mb_website/pages/about/bindings/about_bining.dart';

import 'pages/about/views/about_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MB website',
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF212121),
        accentColor: Colors.white,
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Color(0xff28963C),
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/about',
      getPages: [
        GetPage(
            name: '/about', page: () => AboutView(), binding: AboutBinding()),
      ],
    );
  }
}
