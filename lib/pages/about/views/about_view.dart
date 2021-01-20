import 'package:animate_icons/animate_icons.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mb_website/widgets/drawer.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetResponsiveView<AboutController> {
  var inContext;
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(controller.about.value.head,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffcacaca))),
          SizedBox(
            height: 12,
          ),
          TypewriterAnimatedTextKit(
            text: [controller.about.value.about],
            textAlign: TextAlign.center,
            textStyle: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                height: 2,
                fontSize: 15,
                color: Color(0xff8a8a8a)),
            speed: Duration(milliseconds: 50),
            repeatForever: false,
            displayFullTextOnTap: true,
          ),
        ],
      )),
      floatingActionButton: Builder(
        builder: (context) {
          inContext = context;
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(inContext).openDrawer(),
            iconSize: 30.0,
          );
        },
      ),
      drawer: AppDrawer(
          context: c, controller: controller.animateIconController.value),
    );
  }
}
