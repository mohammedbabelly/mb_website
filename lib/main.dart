import 'package:flutter/material.dart';
import 'package:mb_website/data/colors/app_theme.dart';
import 'package:mb_website/routes/routes.dart';
import 'package:qlevar_router/qlevar_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate:
          QR.router(AppRoutes().routes, initRoute: '/home/experience'),
      routeInformationParser: QR.routeParser(),
      title: 'Mohammed Babelly',
      darkTheme: appTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
