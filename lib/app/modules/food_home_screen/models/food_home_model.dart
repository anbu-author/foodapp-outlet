import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';
import 'listclock_item_model.dart';
import 'restaurantcard_item_model.dart';

/// This class defines the variables used in the [food_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FoodHomeModel {
  Rx<List<ListclockItemModel>> listclockItemList = Rx([
    ListclockItemModel(
        clock: ImageConstant.imgClock.obs,
        quickDelivery: "Quick\nDelivery".obs),
    ListclockItemModel(
        clock: ImageConstant.imgArrowDownBlueGray90002.obs,
        quickDelivery: "Pocket\nFriendly".obs),
    ListclockItemModel(
        clock: ImageConstant.imgClose.obs, quickDelivery: "Vegan".obs),
    ListclockItemModel(
        clock: ImageConstant.imgClose.obs, quickDelivery: "Top\nRated".obs),
    ListclockItemModel(
        clock: ImageConstant.imgHome.obs, quickDelivery: "Newly\nLaunched".obs)
  ]);

  Rx<List<RestaurantcardItemModel>> restaurantcardItemList = Rx([
    RestaurantcardItemModel(
        restaurantImage: ImageConstant.imgBriyaniCenter.obs,
        restaurantName: "Biriyani Center".obs,
        cuisineType: "South Indian, Biryani".obs,
        distance: "Silent Hill  |  3.9 Kms".obs,
        rating: "4.2".obs,
        estimatedTime: "10 Mins".obs),
    RestaurantcardItemModel(
        restaurantImage: ImageConstant.imgParallaxRes.obs,
        restaurantName: "Parallax Restaurant".obs,
        cuisineType: "Chinese, Grill, North Indian".obs,
        distance: "Athens City | 4.1 Kms".obs,
        rating: "4.1".obs,
        estimatedTime: "25  Mins".obs),
    RestaurantcardItemModel(
        restaurantImage: ImageConstant.imgHotelH.obs,
        restaurantName: "Hotel H".obs,
        cuisineType: "Itallian, Cafe".obs,
        distance: "Racoon City | 4.5 Kms".obs,
        rating: "4.5".obs,
        estimatedTime: "25 Mins".obs),
    RestaurantcardItemModel(
        restaurantImage: ImageConstant.imgTastyB.obs,
        restaurantName: "Tasty B".obs,
        cuisineType: "Burgers, Shawarma Rolls".obs,
        distance: "Arkham City | 3.9 Kms".obs,
        rating: "4.1".obs,
        estimatedTime: "40 Mins".obs),
    RestaurantcardItemModel(
        restaurantImage: ImageConstant.imgTheCircle.obs,
        restaurantName: "The Circle".obs,
        cuisineType: "Burgers, Avacado".obs,
        distance: "Valhalla | 3.9 Kms".obs,
        rating: "3.9".obs,
        estimatedTime: "40 Mins".obs)
  ]);
}
