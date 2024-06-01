import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';


/// This class is used in the [listclock_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListclockItemModel {
  ListclockItemModel({this.clock, this.quickDelivery, this.id}) {
    clock = clock ?? Rx(ImageConstant.imgClock);
    quickDelivery = quickDelivery ?? Rx("Quick\nDelivery");
    id = id ?? Rx("");
  }

  Rx<String>? clock;

  Rx<String>? quickDelivery;

  Rx<String>? id;
}
