import 'package:get/get.dart';

import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';
import '../../remote/dish_list/dishlist_data_source.dart';
import 'dishlist_repository.dart';

class DishListRepositoryImpl implements DishListRepository {
  final DishListDataSource _remoteSource =
      Get.find(tag: (DishListDataSource).toString());

  @override
  Future<DishListModel> dishList() {
    return _remoteSource.dishList();
  }
}
