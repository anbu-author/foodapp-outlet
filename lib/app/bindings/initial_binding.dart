import 'package:flutter_getx_template/app/bindings/onboarding/onboarding_bindings.dart';
import 'package:flutter_getx_template/app/bindings/onboarding/onboarding_remote_source_bindings.dart';
import 'package:flutter_getx_template/app/bindings/onboarding/onboarding_repository_bindings.dart';
import 'package:flutter_getx_template/app/bindings/sign_in/sign_in_bindings.dart';
import 'package:flutter_getx_template/app/bindings/sign_in/sign_in_remote_source_bindings.dart';
import 'package:flutter_getx_template/app/bindings/sign_in/sign_in_repository_bindings.dart';
import 'package:flutter_getx_template/app/bindings/sign_up/sign_up_remote_source_bindings.dart';
import 'package:flutter_getx_template/app/bindings/sign_up/sign_up_repository_bindings.dart';
import 'package:get/get.dart';

import '../data/repository/ongoing_order/ongoing_order_repository.dart';
import '../modules/orders_screens/bindings/orders_bindings.dart';
import '../modules/screen_01 - Dashboard/bindings/dashboard_bindings.dart';
import '../modules/screen_02 - category/bindings/category_bindings.dart';
import '../modules/screen_03 - custompage/bindings/custompage_bindings.dart';
import '../modules/screen_04 - dishlist/bindings/dishlist_bindings.dart';
import '../modules/screen_06 - coupons/bindings/coupons_bindings.dart';
import '../modules/sidemenu/bindings/sidemenu_bindings.dart';
import '../modules/sign_up/bindings/sign_up_bindings.dart';
import 'dish_list/dishlist_bindings.dart';
import 'dish_list/dishlist_remote_source_bindings.dart';
import 'dish_list/dishlist_repository_bindings.dart';
import 'local_source_bindings.dart';
import 'ongoing_order/ongoing_order_bindings.dart';
import 'ongoing_order/ongoing_order_remote_source_bindings.dart';
import 'ongoing_order/ongoing_repository_bindings.dart';
import 'remote_source_bindings.dart';
import 'repository_bindings.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();
    OnboardingBindings().dependencies();
    SignInBindings().dependencies();
    SignInRepositoryBindings().dependencies();
    SignInRemoteSourceBindings().dependencies();
    SignUpBindings().dependencies();
    SignUpRepositoryBindings().dependencies();
    SignUpRemoteSourceBindings().dependencies();
    OnboardingRemoteSourceBindings().dependencies();
    OnboardingRepositoryBindings().dependencies();
    RemoteSourceBindings().dependencies();
    LocalSourceBindings().dependencies();
    DashboardBinding().dependencies();
    CategoryBindings().dependencies();
    CustompageBindings().dependencies();
    DishListBinding().dependencies();
    DishlistRepositoryBindings().dependencies();
    DishlistRemoteSourceBindings().dependencies();
    DishListBindings().dependencies();
    OrdersBindings().dependencies();
    CouponsBindings().dependencies();
    SidemenuBindings().dependencies();

    /// ongoingOrder
    OngoingOrderBindings().dependencies();
    OngoingOrderRemoteSourceBindings().dependencies();
    OngoingRepositoryBindings().dependencies();
  }
}
