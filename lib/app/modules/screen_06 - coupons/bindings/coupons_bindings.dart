import 'package:get/get.dart';

class CouponsBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CouponsBindings>(
      () => CouponsBindings(),
    );
  }
}
