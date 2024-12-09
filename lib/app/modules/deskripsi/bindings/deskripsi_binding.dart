import 'package:get/get.dart';

import '../controllers/deskripsi_controller.dart';

class DeskripsiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeskripsiController>(
      () => DeskripsiController(),
    );
  }
}
