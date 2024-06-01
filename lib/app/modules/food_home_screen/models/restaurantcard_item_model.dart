
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class is used in the [restaurantcard_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RestaurantcardItemModel {
  RestaurantcardItemModel(
      {this.restaurantImage,
      this.restaurantName,
      this.cuisineType,
      this.distance,
      this.rating,
      this.estimatedTime,
      this.id}) {
    restaurantImage = restaurantImage ?? Rx(ImageConstant.imgBriyaniCenter);
    restaurantName = restaurantName ?? Rx("Biriyani Center");
    cuisineType = cuisineType ?? Rx("South Indian, Biryani");
    distance = distance ?? Rx("Silent Hill  |  3.9 Kms");
    rating = rating ?? Rx("4.2");
    estimatedTime = estimatedTime ?? Rx("10 Mins");
    id = id ?? Rx("");
  }

  Rx<String>? restaurantImage;

  Rx<String>? restaurantName;

  Rx<String>? cuisineType;

  Rx<String>? distance;

  Rx<String>? rating;

  Rx<String>? estimatedTime;

  Rx<String>? id;
}
