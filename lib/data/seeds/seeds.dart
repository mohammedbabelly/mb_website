import 'package:mb_website/models/experience.dart';
import 'package:mb_website/pages/about/controllers/about_controller.dart';

import 'about_seeds.dart';
import 'experience_seeds.dart';

class Seeds {
  static AboutModel about = aboutSeeds;
  static List<Experience> experiences = experiencesSeed;
}
