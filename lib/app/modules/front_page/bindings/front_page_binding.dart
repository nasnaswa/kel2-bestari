import 'package:get/get.dart';

import '../controllers/front_page_controller.dart';

class FrontPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FrontPageController>(
      () => FrontPageController(),
    );
  }
}
