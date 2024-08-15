import 'package:get/get.dart';

import '../../data/repository/ongoing_order/ongoing_order_repository.dart';
import '../../data/repository/ongoing_order/ongoing_order_repository_impl.dart';

class OngoingOrderBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OngoingOrderRepository>(
      () => OngoingOrderRepositoryImpl(),
      tag: (OngoingOrderRepository).toString(),
    );
  }
}
