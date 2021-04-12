import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hover_effect/hover_effect.dart';
import 'package:mb_website/data/colors/app_colors.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetResponsiveView<AboutController> {
  @override
  Widget build(BuildContext c) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: 550,
            height: 50,
            alignment: Alignment.center,
            child: HoverCard(
                builder: (context, hovering) {
                  return Text(controller.about.value.head,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: TextColors.head));
                },
                depth: 10,
                onTap: () {},
                depthColor: AppColors.purple,
                shadow: BoxShadow(color: AppColors.purple, blurRadius: 50))),
        Container(
          margin: EdgeInsets.only(top: 12),
          height: 200,
          child: TypewriterAnimatedTextKit(
            text: [controller.about.value.about],
            textAlign: TextAlign.center,
            textStyle: GoogleFonts.lato(
                fontWeight: FontWeight.w400,
                height: 2,
                fontSize: 15,
                color: TextColors.body),
            speed: Duration(milliseconds: 50),
            repeatForever: false,
            displayFullTextOnTap: true,
          ),
        )
      ],
    ));
  }
}
