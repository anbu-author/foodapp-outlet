import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/core/base/base_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../cart/views/cart_view.dart';
import '../../food_home_screen/views/food_home_screen.dart';
import '../../profile/views/profile_screen.dart';
import '../controller/navi_controller.dart';

class BotNaviBar extends BaseView<NavigationController>{

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return null;
  }

  final List<Widget> pages = [
    FoodHomeScreen(),
    ProfileScreen(),
    CartScreen(),
  ];

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon/noun.svg',
                color: Colors.black38,
              ),
              activeIcon: SvgPicture.asset(
                'assets/icon/noun.svg',
                color: Colors.black,
              ),
              label: 'Near you',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icon/search.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/icon/search.svg',
                color: Colors.black,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icon/noun_cart.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icon/noun_cart.svg',
                color: Colors.black,
              ),
              label: 'Cart',
            ),
          ],
          onTap: controller.changePage,
          currentIndex: controller.currentIndex.value,
        ),
      ),
    );
  }

}
