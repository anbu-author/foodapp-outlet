import 'package:get/get.dart';

import '../controller/dishlist_controller.dart';

class DishListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DishListController>(
      () => DishListController(),
    );
  }
}
