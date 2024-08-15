import '../../../modules/orders_screens/models/ongoing_orders_model.dart';

abstract class OngoingDataSource{
  Future<OngoingOrdersModelClass> ongoingOrderData();
}