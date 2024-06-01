import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/modules/cart/views/cart_view.dart';
import 'package:flutter_getx_template/app/modules/search/views/search_view.dart';
import 'package:get/get.dart';
import '../../nearby/views/nearby_view.dart';
import '/app/core/base/base_view.dart';
import '/app/modules/main/controllers/main_controller.dart';
import '/app/modules/main/model/menu_code.dart';
import '/app/modules/main/views/bottom_nav_bar.dart';

// ignore: must_be_immutable
class MainView extends BaseView<MainController> {
  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Container(
      key: UniqueKey(),
      child: Obx(
        () => getPageOnSelectedMenu(controller.selectedMenuCode),
      ),
    );
  }

  @override
  Widget? bottomNavigationBar() {
    return BottomNavBar(onItemSelected: controller.onMenuSelected);
  }

  final NearbyView homeView = NearbyView();
  SearchView? searchView;
  CartScreen? cartScreen;

  Widget getPageOnSelectedMenu(MenuCode menuCode) {
    switch (menuCode) {
      case MenuCode.HOME:
        return homeView;
      case MenuCode.FAVORITE:
        searchView ??= SearchView();
        return searchView!;
      case MenuCode.SETTINGS:
        cartScreen ??= CartScreen();
        return cartScreen!;
      default:
        return homeView;
    }
  }
}
