import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mb_website/routes/routes.dart';

class HomePageController extends GetxController {
  RxString activePage = AppRoutes.about.obs;
  // ignore: unused_field
  BuildContext _context;
  get context => context;
  set setContext(c) => _context = c;
}
