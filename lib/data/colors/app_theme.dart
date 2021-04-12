import 'package:flutter/material.dart';

import 'app_colors.dart';

var appTheme = ThemeData(
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  backgroundColor: AppColors.background,
  accentColor: AppColors.accent,
  accentIconTheme: IconThemeData(color: Colors.black),
  scaffoldBackgroundColor: AppColors.background,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
