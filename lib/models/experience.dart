import 'package:flutter/material.dart';

import 'experience/company.dart';
export 'experience/company.dart';

class Experience {
  String title;
  String date;
  Company company;
  List<String> points;
  Experience({
    @required this.title,
    @required this.company,
    @required this.date,
    @required this.points,
  });
}
