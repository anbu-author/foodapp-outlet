
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../controller/food_home_controller.dart';

/// A binding class for the FoodHomeScreen.
///
/// This class ensures that the FoodHomeController is created when the
/// FoodHomeScreen is first loaded.
class FoodHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FoodHomeController>(() => FoodHomeController());
  }
}