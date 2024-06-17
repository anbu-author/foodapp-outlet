import 'package:flutter/material.dart';

import '../modules/screen_01 - Dashboard/view/dashboard_screen_S1.dart';
import '../modules/screen_02 - category/view/category_S2.dart';
import '../modules/screen_02 - category/view/new_category.dart';
import '../modules/screen_03 - custompage/view/custom_groups.dart';
import '../modules/screen_04 - dishlist/view/disheslist_S4.dart';
import '../modules/screen_05 - orders/view/ongoing_orders.dart';
import '../modules/screen_06 - coupons/view/couponlist_S6.dart';
import '../modules/sidemenu/view/side_menu_S1.dart';

class MainScreen extends StatelessWidget {
  MainScreen(this.code);

  final int code;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(
              flex: 5,
              child: getpages(code),
            ),
          ],
        ),
      ),
    );
  }

  getpages(int code) {
    switch (code) {
      case 1:
        return DashboardScreen();
      case 2:
        return Screen2();
      case 3:
        return CustomGroup();
      case 4:
        return DishesList();
      case 5:
        return OngoingOrders();
      case 6:
        return Coupon_List();
      case 7:
        return NewCategoryPage();
    }
  }
}
