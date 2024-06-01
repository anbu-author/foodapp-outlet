import 'package:get/get_rx/src/rx_types/rx_types.dart';
import '../../../core/utils/image_constant.dart';
import 'menu_item_model.dart';
import 'productcardlist_item_model.dart';
import 'promotion_item_model.dart';

/// This class defines the variables used in the [restaurant_item_added_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RestaurantItemAddedModel {
  Rx<List<PromotionItemModel>> promotionItemList = Rx([
    PromotionItemModel(
        text: "FLAT 10% OFF".obs, text1: "USE COUPON \"101010\"".obs),
    PromotionItemModel(
        text: "20% UPTO RS100".obs, text1: "USE COUPON \"20100\"".obs),
    PromotionItemModel(
        text: "5% OFF ON ALL".obs, text1: "USE COUPON \"ALL05\"".obs)
  ]);

  Rx<List<ProductcardlistItemModel>> productcardlistItemList = Rx([
    ProductcardlistItemModel(
        image: ImageConstant.imgCapreseSalad.obs,
        bestsellerone: ImageConstant.imgPolygon1.obs,
        text: "Best Seller".obs,
        title: "Caprese Salad".obs,
        price: "\$ 5.30".obs),
    ProductcardlistItemModel(
        image: ImageConstant.imgPanzenella.obs,
        bestsellerone: ImageConstant.imgPolygon110x10.obs,
        text: "Best Seller".obs,
        title: "Panzenella".obs,
        price: "\$ 3.05".obs)
  ]);

  Rx<List<MenuItemModel>> menuItemList = Rx([
    MenuItemModel(
        pizza: "Pizza".obs,
        margheritaText: "Margherita Pizza".obs,
        anAbsoluteText: "An Absolute Dream.".obs,
        priceText: "\$ 1.20".obs,
        bestSellerImage: ImageConstant.imgPolygon210x10.obs,
        bestSellerText: "Best Seller".obs,
        glutenFreeText: "Gluten Free".obs,
        pizzaFrittaText: "Pizza Fritta".obs,
        classicText: "A Classic Neapolitan Street Food".obs,
        pricetext2: "\$ 1.35".obs),
    MenuItemModel(
        pizza: "Pizza".obs,
        margheritaText: "Margherita Pizza".obs,
        anAbsoluteText: "An Absolute Dream.".obs,
        priceText: "\$ 1.20".obs,
        bestSellerImage: ImageConstant.imgPolygon21.obs,
        bestSellerText: "Best Seller".obs,
        glutenFreeText: "Gluten Free".obs,
        pizzaFrittaText: "Pizza Fritta".obs,
        classicText: "A Classic Neapolitan Street Food".obs,
        pricetext2: "\$ 1.35".obs),
    MenuItemModel(
        pizza: "Pizza".obs,
        margheritaText: "Margherita Pizza".obs,
        anAbsoluteText: "An Absolute Dream.".obs,
        priceText: "\$ 1.20".obs,
        bestSellerImage: ImageConstant.imgPolygon22.obs,
        bestSellerText: "Best Seller".obs,
        glutenFreeText: "Gluten Free".obs,
        pizzaFrittaText: "Pizza Fritta".obs,
        classicText: "A Classic Neapolitan Street Food".obs,
        pricetext2: "\$ 1.35".obs),
    MenuItemModel(
        pizza: "Pizza".obs,
        margheritaText: "Margherita Pizza".obs,
        anAbsoluteText: "An Absolute Dream.".obs,
        priceText: "\$ 1.20".obs,
        bestSellerImage: ImageConstant.imgPolygon23.obs,
        bestSellerText: "Best Seller".obs,
        glutenFreeText: "Gluten Free".obs,
        pizzaFrittaText: "Pizza Fritta".obs,
        classicText: "A Classic Neapolitan Street Food".obs,
        pricetext2: "\$ 1.35".obs)
  ]);
}
