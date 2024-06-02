import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

class NavigationController extends BaseController{

  var currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}