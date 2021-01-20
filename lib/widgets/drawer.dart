import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppDrawer extends StatelessWidget {
  final context;
  final controller;
  AppDrawer({this.context, this.controller});
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
                Text(''),
                Text(''),
                Text(
                  'about',
                  style: drawerItemStyle,
                ),
                Text(
                  'projects',
                  style: drawerItemStyle,
                ),
                Text(
                  'experience',
                  style: drawerItemStyle,
                ),
                Text(
                  'contact',
                  style: drawerItemStyle,
                ),
                Text(''),
                Text(''),
              ],
            ),
            Align(
                alignment: Alignment(0.95, 0.95),
                child: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                  iconSize: 30.0,
                )
                // AnimateIcons(
                //   startIcon: Icons.menu,
                //   endIcon: Icons.close,
                //   size: 30.0,
                //   controller: controller,
                //   startTooltip: 'Icons.add_circle',
                //   endTooltip: 'Icons.add_circle_outline',
                //   onStartIconPress: () {
                //     // Scaffold.of(context).openDrawer();
                //     Navigator.of(context).pop();
                //     return true;
                //   },
                //   onEndIconPress: () {
                //     // Scaffold.of(context).openDrawer();
                //     Navigator.of(context).pop();
                //     return true;
                //   },
                //   duration: Duration(milliseconds: 200),
                //   color: Theme.of(context).accentColor,
                //   clockwise: false,
                // ),
                )
          ],
        ),
      ),
    );
  }
}

TextStyle drawerItemStyle = GoogleFonts.montserrat(
    fontSize: 30, fontWeight: FontWeight.w500, color: Color(0xff9f9f9f));
