import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mb_website/pages/home_page/controllers/home_page_controller.dart';
import 'package:mb_website/routes/routes.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppDrawer extends GetResponsiveView<HomePageController> {
  final context;
  // final controller;
  AppDrawer({this.context});

  final GlobalKey<AnimatorWidgetState> key1 = GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> key2 = GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> key3 = GlobalKey<AnimatorWidgetState>();
  final GlobalKey<AnimatorWidgetState> key4 = GlobalKey<AnimatorWidgetState>();

  @override
  Widget build(_) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Drawer(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 20)),
                Text(''),
                Text(''),
                InkWell(
                  onTap: () => QR.to('home/about'),
                  child: FadeInDown(
                      key: key1,
                      child: Text('about',
                          style: controller.activePage.value == AppRoutes.about
                              ? drawerInactiveItemStyle
                              : drawerActiveItemStyle)),
                ),
                InkWell(
                  onTap: () {},
                  child: FadeInLeft(
                    key: key2,
                    child: Text(
                      'projects',
                      style: controller.activePage.value == AppRoutes.projects
                          ? drawerInactiveItemStyle
                          : drawerActiveItemStyle,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => _goTo('home/experience', context),
                  child: FadeInRight(
                    key: key3,
                    child: Text(
                      'experience',
                      style: controller.activePage.value == AppRoutes.experience
                          ? drawerInactiveItemStyle
                          : drawerActiveItemStyle,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: FadeInUp(
                    key: key4,
                    child: Text(
                      'contact',
                      style: controller.activePage.value == AppRoutes.contact
                          ? drawerInactiveItemStyle
                          : drawerActiveItemStyle,
                    ),
                  ),
                ),
                Text(''),
                Text(''),
              ],
            ),
            Align(
                alignment: Alignment(0.95, 0.95),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    key1.currentState.reverse();
                    key2.currentState.reverse();
                    key3.currentState.reverse();
                    key4.currentState.reverse();
                    Future.delayed(Duration(milliseconds: 500), () {
                      Navigator.of(context).pop();
                    });
                  },
                  iconSize: 30.0,
                ))
          ],
        ),
      ),
    );
  }
}

void _goTo(path, context) {
  QR.to(path);
  Navigator.of(context).pop();
}

TextStyle drawerActiveItemStyle = GoogleFonts.montserrat(
    fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff9f9f9f));
TextStyle drawerInactiveItemStyle = GoogleFonts.montserrat(
    fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white);
