import 'package:flutter/material.dart';

import 'app_colors.dart';

var appTheme = ThemeData(
  primarySwatch: Colors.purple,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: AppColors.background,
  accentColor: Colors.purple,
  accentIconTheme: IconThemeData(color: Colors.black),
  scaffoldBackgroundColor: AppColors.background,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
