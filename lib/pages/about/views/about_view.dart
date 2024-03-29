import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:mb_website/data/colors/app_colors.dart';
import 'package:flutter/foundation.dart';
import '../controllers/about_controller.dart';

class AboutView extends GetResponsiveView<AboutController> {
  final isWebMobile = kIsWeb &&
      (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android);
  @override
  Widget build(BuildContext c) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 630,
            height: 60,
            alignment: Alignment.center,
            child: HoverCard(
                builder: (context, hovering) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(controller.about.value.head,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: isWebMobile ? 20 : 30,
                            fontWeight: FontWeight.w700,
                            color: TextColors.head)),
                  );
                },
                depth: 10,
                onTap: () {},
                depthColor: AppColors.purple,
                shadow: BoxShadow(color: AppColors.purple, blurRadius: 50))),
        Container(
          margin: EdgeInsets.only(top: 15),
          // child: Text(
          //   "Check out my skills👇",
          //   textAlign: TextAlign.center,
          //   style: GoogleFonts.lato(
          //       fontWeight: FontWeight.bold,
          //       height: 2,
          //       fontSize: 18,
          //       textStyle: TextStyle(wordSpacing: 3),
          //       color: TextColors.body),
          // ),
        ),
        Container(
          margin: EdgeInsets.only(top: 2, right: 10, left: 10),
          height: 250,
          child: TypewriterAnimatedTextKit(
            text: [controller.about.value.about],
            textAlign: TextAlign.center,
            textStyle: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                height: 2,
                fontSize: isWebMobile ? 15 : 20,
                textStyle: TextStyle(wordSpacing: 3),
                color: TextColors.body),
            speed: Duration(milliseconds: 40),
            repeatForever: false,
            totalRepeatCount: 1,
            displayFullTextOnTap: true,
          ),
        ),
      ],
    ));
  }
}
