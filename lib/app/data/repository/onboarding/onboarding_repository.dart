import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';

abstract class OnboardingRepository {
  Future<DishListModel> dishlist(Map<String, dynamic> body);
}
