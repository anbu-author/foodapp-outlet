import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/base/base_controller.dart';
import '../models/food_home_model.dart';


/// A controller class for the FoodHomeScreen.
///
/// This class manages the state of the FoodHomeScreen, including the
/// current foodHomeModelObj
class FoodHomeController extends BaseController {
  Rx<FoodHomeModel> foodHomeModelObj = FoodHomeModel().obs;
}
