import 'package:get/get.dart';

import '../../../modules/orders_screens/models/ongoing_orders_model.dart';
import '../../remote/ongoing_order/ongoing_order_data_source.dart';
import 'ongoing_order_repository.dart';

class OngoingOrderRepositoryImpl implements OngoingOrderRepository {
  final OngoingDataSource _ongoingDataSource =
      Get.find(tag: (OngoingDataSource).toString());

  @override
  Future<OngoingOrdersModelClass> ongoingOrderData() {
    return _ongoingDataSource.ongoingOrderData();
  }
}
