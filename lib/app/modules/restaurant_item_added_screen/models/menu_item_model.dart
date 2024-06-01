
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../core/utils/image_constant.dart';

/// This class is used in the [menu_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuItemModel {
  MenuItemModel(
      {this.pizza,
      this.margheritaText,
      this.anAbsoluteText,
      this.priceText,
      this.bestSellerImage,
      this.bestSellerText,
      this.glutenFreeText,
      this.pizzaFrittaText,
      this.classicText,
      this.pricetext2,
      this.id}) {
    pizza = pizza ?? Rx("Pizza");
    margheritaText = margheritaText ?? Rx("Margherita Pizza");
    anAbsoluteText = anAbsoluteText ?? Rx("An Absolute Dream.");
    priceText = priceText ?? Rx("\$ 1.20");
    bestSellerImage = bestSellerImage ?? Rx(ImageConstant.imgPolygon210x10);
    bestSellerText = bestSellerText ?? Rx("Best Seller");
    glutenFreeText = glutenFreeText ?? Rx("Gluten Free");
    pizzaFrittaText = pizzaFrittaText ?? Rx("Pizza Fritta");
    classicText = classicText ?? Rx("A Classic Neapolitan Street Food");
    pricetext2 = pricetext2 ?? Rx("\$ 1.35");
    id = id ?? Rx("");
  }

  Rx<String>? pizza;

  Rx<String>? margheritaText;

  Rx<String>? anAbsoluteText;

  Rx<String>? priceText;

  Rx<String>? bestSellerImage;

  Rx<String>? bestSellerText;

  Rx<String>? glutenFreeText;

  Rx<String>? pizzaFrittaText;

  Rx<String>? classicText;

  Rx<String>? pricetext2;

  Rx<String>? id;
}
