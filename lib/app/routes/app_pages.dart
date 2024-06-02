import 'package:flutter_getx_template/app/modules/food_home_screen/views/food_home_screen.dart';
import 'package:get/get.dart';

import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/food_home_screen/binding/food_home_binding.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/nearby/bindings/nearby_binding.dart';
import '../modules/nearby/views/nearby_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/restaurant_item_added_screen/binding/restaurant_item_added_binding.dart';
import '../modules/restaurant_item_added_screen/restaurant_item_added_screen.dart';
import '../modules/search/bindings/search_binding.dart';
import '../modules/search/views/search_view.dart';
import '/app/modules/home/bindings/home_binding.dart';
import '/app/modules/home/views/home_view.dart';
import '/app/modules/main/bindings/main_binding.dart';
import '/app/modules/main/views/main_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static const String initialRoute = '/initialRoute';
  static const String cartScreen = '/cart_screen';
  static const String restaurantItemAddedScreen = '/restaurant_item_added_screen';


  static final routes = [
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => SearchView(),
      binding: SearchBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartScreen(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_HOME_SCREEN,
      page: ()=> FoodHomeScreen(),
      binding: FoodHomeBinding()
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [CartBinding()],
    ),
    GetPage(
      name: restaurantItemAddedScreen,
      page: () => RestaurantItemAddedScreen(),
      bindings: [RestaurantItemAddedBinding()],
    ),
    GetPage(
      name: _Paths.NEARBY,
      page: () => NearbyView(),
      binding: NearbyBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () =>  RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
