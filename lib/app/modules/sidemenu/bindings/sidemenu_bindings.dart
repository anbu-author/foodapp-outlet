import 'package:get/get.dart';

import '../controller/sidemenu_controller.dart';

class SidemenuBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideMenuController>(
      () => SideMenuController(),
    );
  }
}
