import 'package:get/get.dart';
import 'package:mb_website/data/seeds/seeds.dart';
import 'package:mb_website/pages/about/controllers/about_controller.dart';
import 'package:mb_website/pages/about/views/about_view.dart';
import 'package:mb_website/pages/experience/views/experience_view.dart';
import 'package:mb_website/pages/home_page/controllers/home_page_controller.dart';
import 'package:mb_website/pages/home_page/views/home_page_view.dart';
import 'package:qlevar_router/qlevar_router.dart';

class AppRoutes {
  static String home = 'home';
  static String about = 'about';
  static String projects = 'projects';
  static String experience = 'experience';
  static String contact = 'contact';

  //Other
  static String redirect = 'redirect';

  final routes = <QRouteBase>[
    QRoute(
        name: home,
        path: '/home',
        onInit: () =>
            Get.lazyPut<HomePageController>(() => HomePageController()),
        onDispose: () => Get.delete<HomePageController>(),
        page: (childRouter) => HomePageView(childRouter),
        children: [
          QRoute(
              name: about,
              path: '/about',
              onInit: () => Get.lazyPut<AboutController>(
                  () => AboutController(Seeds.about)),
              onDispose: () => Get.delete<AboutController>(),
              page: (child) => AboutView()),
          QRoute(
              name: experience,
              path: '/experience',
              // onInit: () => Get.lazyPut<AboutController>(
              //     () => AboutController(Seeds.about)),
              // onDispose: () => Get.delete<AboutController>(),
              page: (child) => ExperienceView()),
        ]),
  ];
}