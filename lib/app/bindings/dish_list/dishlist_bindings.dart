import 'package:get/get.dart';

import '../../data/repository/dish_list/dishlist_repository.dart';
import '../../data/repository/dish_list/dishlist_repository_impl.dart';

class DishListBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DishListRepository>(
      () => DishListRepositoryImpl(),
      tag: (DishListRepository).toString(),
    );
  }
}
