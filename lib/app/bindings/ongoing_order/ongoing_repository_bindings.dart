import 'package:get/get.dart';

import '../../data/repository/ongoing_order/ongoing_order_repository.dart';
import '../../data/repository/ongoing_order/ongoing_order_repository_impl.dart';

class OngoingRepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OngoingOrderRepositoryImpl(),
      tag: (OngoingOrderRepository).toString(),
    );
  }
}
