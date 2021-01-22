import 'package:flutter/material.dart';
import 'package:mb_website/pages/home_page/controllers/home_page_controller.dart';
import 'package:mb_website/widgets/drawer.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePageView extends GetResponsiveView<HomePageController> {
  final QRouter childRouter;
  HomePageView(this.childRouter);
  Rx<BuildContext> context;
  @override
  Widget build(_) {
    return Scaffold(
      body: childRouter,
      floatingActionButton: Builder(
        builder: (c) {
          context = c.obs;
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context.value).openDrawer(),
            iconSize: 30.0,
          );
        },
      ),
      drawer: Obx(() => AppDrawer(
            context: context.value,
          )),
    );
  }
}
