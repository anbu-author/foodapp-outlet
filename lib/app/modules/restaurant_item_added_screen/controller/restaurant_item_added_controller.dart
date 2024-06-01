import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

import '../models/restaurant_item_added_model.dart';

/// A controller class for the RestaurantItemAddedScreen.
///
/// This class manages the state of the RestaurantItemAddedScreen, including the
/// current restaurantItemAddedModelObj
class RestaurantItemAddedController extends BaseController {
  Rx<RestaurantItemAddedModel> restaurantItemAddedModelObj =
      RestaurantItemAddedModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
