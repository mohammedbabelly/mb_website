import 'package:get/get.dart';
import 'package:mb_website/data/seeds/seeds.dart';
import 'package:mb_website/pages/about/controllers/about_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutController>(() => AboutController(Seeds.about));
  }
}
