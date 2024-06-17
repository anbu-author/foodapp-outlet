import 'package:get/get.dart';

import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';
import '../../remote/onboarding/onboarding_remote_data_source.dart';
import 'onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingRemoteDataSource _remoteSource =
      Get.find(tag: (OnboardingRemoteDataSource).toString());

  @override
  Future<DishListModel> dishlist(Map<String, dynamic> body) {
    return _remoteSource.dishlist(body);
  }
}
