import 'package:get/get.dart';

import '../../data/remote/dish_list/dishlist_data_source.dart';
import '../../data/remote/dish_list/dishlist_data_source_impl.dart';

class DishlistRemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DishListDataSource>(
      () => DishListDataSourceImpl(),
      tag: (DishListDataSource).toString(),
    );
  }
}
