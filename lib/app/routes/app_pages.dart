import 'package:flutter_getx_template/app/modules/sign_up/bindings/sign_up_bindings.dart';
import 'package:flutter_getx_template/app/modules/sign_up/views/sign_up_screen.dart';
import 'package:get/get.dart';

import '../modules/orders_screens/bindings/orders_bindings.dart';
import '../modules/screen_01 - Dashboard/bindings/dashboard_bindings.dart';
import '../modules/screen_02 - category/bindings/category_bindings.dart';
import '../modules/screen_03 - custompage/bindings/custompage_bindings.dart';
import '../modules/screen_04 - dishlist/bindings/dishlist_bindings.dart';
import '../modules/screen_06 - coupons/bindings/coupons_bindings.dart';
import '../modules/sign_in/bindings/sign_in_binding.dart';
import '../modules/sign_in/views/sign_in_screen.dart';
import 'main_screen.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.SignInScreen;

  static final routes = [
    GetPage(
      name: _Paths.SignIn,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: _Paths.SignUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBindings(),
      ],
    ),
    GetPage(
      name: _Paths.DashboardScreen,
      page: () => MainScreen(1),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: _Paths.Screen2,
      page: () => MainScreen(2),
      bindings: [
        CategoryBindings(),
      ],
    ),
    GetPage(
      name: _Paths.CustomGroup,
      page: () => MainScreen(3),
      bindings: [
        CustompageBindings(),
      ],
    ),
    GetPage(
      name: _Paths.DishList,
      page: () => MainScreen(4),
      bindings: [
        DishListBinding(),
      ],
    ),
    GetPage(
      name: _Paths.OngoingOrders,
      page: () => MainScreen(5),
      bindings: [
        OrdersBindings(),
      ],
    ),
    GetPage(
      name: _Paths.CouponList,
      page: () => MainScreen(6),
      bindings: [
        CouponsBindings(),
      ],
    ),
    GetPage(
      name: _Paths.NewCat,
      page: () => MainScreen(7),
    ),
  ];
}
