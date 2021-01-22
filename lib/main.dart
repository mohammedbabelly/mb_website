import 'package:flutter/material.dart';
import 'package:mb_website/routes/routes.dart';
import 'package:qlevar_router/qlevar_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: QR.router(AppRoutes().routes, initRoute: '/home/about'),
      routeInformationParser: QR.routeParser(),
      title: 'Mohammed Babelly',
      darkTheme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.black,
        brightness: Brightness.dark,
        backgroundColor: const Color(0xFF2F2F2F),
        accentColor: Color(0xff8a8a8a),
        accentIconTheme: IconThemeData(color: Colors.black),
        dividerColor: Color(0xff28963C),
        scaffoldBackgroundColor: const Color(0xFF2F2F2F),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
