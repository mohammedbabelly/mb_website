import 'package:mb_website/data/seeds/ptojects_seeds.dart';
import 'package:mb_website/models/experience.dart';
import 'package:mb_website/models/projects/project.dart';
import 'package:mb_website/pages/about/controllers/about_controller.dart';

import 'about_seeds.dart';
import 'experience_seeds.dart';

class Seeds {
  static AboutModel about = aboutSeeds;
  static List<Experience> experiences = experiencesSeed;
  static List<Project> projects = ProjectsSeeds().projectsSeed;
}
