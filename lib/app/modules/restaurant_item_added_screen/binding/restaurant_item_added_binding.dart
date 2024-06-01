import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/restaurant_item_added_controller.dart';

/// A binding class for the RestaurantItemAddedScreen.
///
/// This class ensures that the RestaurantItemAddedController is created when the
/// RestaurantItemAddedScreen is first loaded.
class RestaurantItemAddedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantItemAddedController());
  }
}
