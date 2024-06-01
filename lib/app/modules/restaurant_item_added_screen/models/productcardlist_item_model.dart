import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../../core/utils/image_constant.dart';

/// This class is used in the [productcardlist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ProductcardlistItemModel {
  ProductcardlistItemModel(
      {this.image,
      this.bestsellerone,
      this.text,
      this.title,
      this.price,
      this.id}) {
    image = image ?? Rx(ImageConstant.imgCapreseSalad);
    bestsellerone = bestsellerone ?? Rx(ImageConstant.imgPolygon1);
    text = text ?? Rx("Best Seller");
    title = title ?? Rx("Caprese Salad");
    price = price ?? Rx("\$ 5.30");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? bestsellerone;

  Rx<String>? text;

  Rx<String>? title;

  Rx<String>? price;

  Rx<String>? id;
}
