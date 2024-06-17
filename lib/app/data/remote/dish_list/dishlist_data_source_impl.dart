import '/app/core/base/base_remote_source.dart';
import '../../../core/constants/app_urls.dart';
import '../../../modules/screen_04 - dishlist/models/dishlist_model.dart';
import 'dishlist_data_source.dart';

class DishListDataSourceImpl extends BaseRemoteSource
    implements DishListDataSource {
  @override
  Future<DishListModel> dishList() {
    String endPoint = AppUrls.dishList;
    var dioCall = dioClient.get(endPoint);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => DishListModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
