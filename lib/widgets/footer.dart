import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mb_website/data/colors/app_colors.dart';
import 'package:mb_website/data/seeds/contact_seeds.dart';
import 'package:mb_website/models/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(ContactSeeds.length,
                  (index) => _buildItem(ContactSeeds[index])).toList(),
            )
          ],
        ));
  }

  Widget _buildItem(ContactModel site) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => _launchURL(site.link),
        child: CircleAvatar(
          radius: 19,
          child: FaIcon(
            site.icon,
            size: 18,
            color: AppColors.background,
          ),
          backgroundColor: AppColors.accent,
        ),
      ),
    );
    // Container(
    //   width: 200,
    //   height: 70,
    //   margin: EdgeInsets.all(20),
    //   padding: EdgeInsets.all(10),
    //   child: ElevatedButton.icon(
    //       style: ButtonStyle(
    //           backgroundColor:
    //               MaterialStateProperty.all<Color>(Color(site.color))),
    //       onPressed: () => _launchURL(site.link),
    //       icon: FaIcon(
    //         site.icon,
    //         color: Colors.white,
    //       ),
    //       label: Text(
    //         site.name,
    //         style: TextStyle(color: Colors.white),
    //       )),
    // );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
