import 'package:flutter/cupertino.dart';

class Company {
  String name;
  String website;
  String logo;
  Company({
    @required this.name,
    this.website,
    this.logo,
  });
}
