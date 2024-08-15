import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

import '../../../data/repository/ongoing_order/ongoing_order_repository.dart';
import '../models/ongoing_order_details.dart';
import '../models/ongoing_orders_model.dart';

class OrdersController extends BaseController {

  final OngoingOrderRepository _ongoingOrderRepository = Get.find(
      tag: (OngoingOrderRepository).toString());
  RxList<OngoingOrderDetails> ongoingOrderData = <OngoingOrderDetails>[].obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getOngoingOrder();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<void> getOngoingOrder() async {
    try {
      OngoingOrdersModelClass ongoingOrdersModelClass = await _ongoingOrderRepository.ongoingOrderData();
      if(ongoingOrdersModelClass.data != null){
        ongoingOrderData.value = ongoingOrdersModelClass.data!;
      }
    } catch (e) {
      print('Error fetching ongoing order list: $e');
    }
  }
}
