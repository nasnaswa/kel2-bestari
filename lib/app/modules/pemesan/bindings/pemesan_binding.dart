import 'package:get/get.dart';

import '../controllers/pemesan_controller.dart';

class PemesanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PemesanController>(
      () => PemesanController(),
    );
  }
}
