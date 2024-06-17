import 'package:get/get.dart';

import '../controller/custompage_controller.dart';

class CustompageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustompageController>(
      () => CustompageController(),
    );
  }
}
