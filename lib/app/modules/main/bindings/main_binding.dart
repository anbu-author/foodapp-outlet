import 'package:flutter_getx_template/app/modules/cart/controllers/cart_controller.dart';
import 'package:flutter_getx_template/app/modules/nearby/bindings/nearby_binding.dart';
import 'package:flutter_getx_template/app/modules/nearby/controllers/nearby_controller.dart';
import 'package:get/get.dart';

import '../../food_home_screen/controller/food_home_controller.dart';
import '../../search/controllers/search_view_controller.dart';
import '/app/modules/home/controllers/home_controller.dart';
import '/app/modules/main/controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
      fenix: true,
    );
    Get.lazyPut<SearchViewController>(
      () => SearchViewController(),
      fenix: true,
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
      fenix: true,
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<FoodHomeController>(
            () => FoodHomeController(),
    );
    Get.lazyPut<NearbyController>(
      () => NearbyController(),
    );
  }
}
