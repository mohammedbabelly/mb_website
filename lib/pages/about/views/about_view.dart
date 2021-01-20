import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../about_controller.dart';

class AboutView extends GetResponsiveView<AboutController> {
  @override
  Widget build(BuildContext context) {
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
    );
  }
}
