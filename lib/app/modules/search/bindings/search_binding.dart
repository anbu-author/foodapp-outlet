import 'package:get/get.dart';

import '../controllers/search_view_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchViewController>(
      () => SearchViewController(),
    );
  }
}
