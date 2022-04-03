import 'package:mb_website/models/projects/project.dart';

import '../constants.dart';
import 'tags_seeds.dart';
import 'technologies_seeds.dart';

class ProjectsSeeds {
  List<Project> projectsSeed;

  ProjectsSeeds() {
    projectsSeed = <Project>[
      Project(
          title: 'Cosmetic',
          description:
              'An application for Dental Cosmetic Clinic patients where it displays the upcoming appointments set by the doctor and the details of the upcoming session, session type (treatment, calendar, review), hour, hour. Then it displays the session details in general (clinic accounts, receivable and paid)',
          img: '$driveImg 1w1103Tb2E19E_EHoRBlOTZe26sRUse-H',
          url: 'https://play.google.com/store/apps/details?id=com.cosmatic.cosmatic2',
          tags: <Tag>[dartTag, mySqlTag, apiTag],
          technologies: <Technology>[flutterTech]),
    ];
  }
}
