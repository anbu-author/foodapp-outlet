import 'package:get/get_rx/src/rx_types/rx_types.dart';

/// This class is used in the [promotion_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PromotionItemModel {
  PromotionItemModel({this.text, this.text1, this.id}) {
    text = text ?? Rx("FLAT 10% OFF");
    text1 = text1 ?? Rx("USE COUPON \"101010\"");
    id = id ?? Rx("");
  }

  Rx<String>? text;

  Rx<String>? text1;

  Rx<String>? id;
}
