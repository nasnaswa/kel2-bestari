import 'package:get/get.dart';

import '../controllers/minuman_controller.dart';

class MinumanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MinumanController>(
      () => MinumanController(),
    );
  }
}
