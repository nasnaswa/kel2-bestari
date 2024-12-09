import 'package:get/get.dart';

import '../controllers/makanan_controller.dart';

class MakananBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MakananController>(
      () => MakananController(),
    );
  }
}
