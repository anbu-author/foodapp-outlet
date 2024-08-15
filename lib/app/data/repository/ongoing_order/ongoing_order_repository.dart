import '../../../modules/orders_screens/models/ongoing_orders_model.dart';

abstract class OngoingOrderRepository{
  Future<OngoingOrdersModelClass> ongoingOrderData();
}
