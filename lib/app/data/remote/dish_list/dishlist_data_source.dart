import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';

abstract class DishListDataSource {
  Future<DishListModel> dishList();
}
