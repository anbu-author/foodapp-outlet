import '/app/core/base/base_remote_source.dart';
import '../../../core/constants/app_urls.dart';
import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';
import 'onboarding_remote_data_source.dart';

class OnboardingRemoteDataSourceImpl extends BaseRemoteSource
    implements OnboardingRemoteDataSource {
  @override
  Future<DishListModel> dishlist(Map<String, dynamic> body) {
    String endPoint = AppUrls.dishList;
    var dioCall = dioClient.post(endPoint, data: body);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => DishListModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
