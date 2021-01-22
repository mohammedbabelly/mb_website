import 'package:animate_icons/animate_icons.dart';
import 'package:blobs/blobs.dart';
import 'package:get/get.dart';

class AboutController extends GetxController {
  final AboutModel seed;
  AboutController(this.seed);
  final about = AboutModel().obs;
  final animateIconController = AnimateIconController().obs;
  final blobCtrl = BlobController().obs;
  @override
  void onInit() {
    about.value = this.seed;
    super.onInit();
  }
}

class AboutModel {
  String head;
  String about;
  AboutModel({this.head, this.about});
}
