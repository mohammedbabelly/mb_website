import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mb_website/data/seeds/contact_seeds.dart';
import 'package:mb_website/models/contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(ContactSeeds.length,
              (index) => _buildItem(ContactSeeds[index])).toList(),
        ),
      ),
    );
  }

  Widget _buildItem(ContactModel site) {
    return Container(
      width: 200,
      height: 70,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      child: ElevatedButton.icon(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(site.color))),
          onPressed: () => _launchURL(site.link),
          icon: FaIcon(
            site.icon,
            color: Colors.white,
          ),
          label: Text(
            site.name,
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
