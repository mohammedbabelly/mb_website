import 'dart:core';
import 'technology.dart';
import 'tag.dart';
export 'technology.dart';
export 'tag.dart';

class Project {
  int id;
  String title;
  String description;
  String img;
  List<Tag> tags;
  List<Technology> technologies;
  String url;
  Project(
      {this.title,
      this.description,
      this.technologies,
      this.tags,
      this.img,
      this.url});
}
