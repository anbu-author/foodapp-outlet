import '../../../core/base/base_remote_source.dart';
import '../../../core/constants/app_urls.dart';
import '../../../modules/orders_screens/models/ongoing_orders_model.dart';
import 'ongoing_order_data_source.dart';

class OngoingDataSourceImpl extends BaseRemoteSource
    implements OngoingDataSource {
  @override
  Future<OngoingOrdersModelClass> ongoingOrderData() {
    String endPoint = AppUrls.ongoingOrder;
    var dioCall = dioClient.get(endPoint);
    try {
      return callApiWithErrorParser(dioCall)
           .then((response) => OngoingOrdersModelClass.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
