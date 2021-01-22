import 'package:flutter/material.dart';

class Experience {
  String title;
  String date;
  String company;
  List<String> points;
  Experience({
    @required this.title,
    @required this.company,
    @required this.date,
    @required this.points,
  });
}
