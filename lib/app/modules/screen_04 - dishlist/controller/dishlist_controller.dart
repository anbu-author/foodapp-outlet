import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import '../../../data/repository/dish_list/dishlist_repository.dart';
import '../models/dishlist_model.dart';

class DishListController extends BaseController {
  final count = 0.obs;
  final DishListRepository _dishListRepository =
      Get.find(tag: (DishListRepository).toString());

  RxList<Message> dishListData = <Message>[].obs;

  @override
  void onInit() {
    super.onInit();
    getDishList();
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

  Future<void> getDishList() async {
    try {
      DishListModel dishListModel = await _dishListRepository.dishList();
      if (dishListModel.message != null) {
        dishListData.value = dishListModel.message!;
      }
    } catch (e) {
      print('Error fetching dish list: $e');
    }
  }
}
