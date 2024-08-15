import 'package:get/get.dart';

import '../controller/orders_controller.dart';

class OrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrdersController>(
      () => OrdersController(),
    );
  }
}
