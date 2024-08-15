import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../../data/remote/ongoing_order/ongoing_order_data_source.dart';
import '../../data/remote/ongoing_order/ongoing_order_data_source_impl.dart';

class OngoingOrderRemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OngoingDataSource>(
      () => OngoingDataSourceImpl(),
      tag: (OngoingDataSource).toString(),
    );
  }
}
