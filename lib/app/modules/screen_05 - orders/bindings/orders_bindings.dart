import 'package:get/get.dart';

class OrdersBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrdersBindings>(
      () => OrdersBindings(),
    );
  }
}
