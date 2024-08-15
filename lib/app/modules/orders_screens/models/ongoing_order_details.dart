import 'ordered_data.dart';

class OngoingOrderDetails {
  final int? id;
  final String? uuid;
  final int? userId;
  final int? restaurantId;
  final int? outletId;
  final int? orderTotal;
  final dynamic driverId;
  final String? deliveryStatus;
  final String? orderPaymentStatus;
  final List<OrderedData>? orderedData;
  final dynamic orderHistory;
  final String? paymentType;
  final int? userAddressId;
  final dynamic deliveryChargesAndTax;
  final dynamic deliveryChargesForDriver;
  final dynamic deliveryTipForDriver;
  final String? createdAt;
  final String? updatedAt;

  OngoingOrderDetails({
    this.id,
    this.uuid,
    this.userId,
    this.restaurantId,
    this.outletId,
    this.orderTotal,
    this.driverId,
    this.deliveryStatus,
    this.orderPaymentStatus,
    this.orderedData,
    this.orderHistory,
    this.paymentType,
    this.userAddressId,
    this.deliveryChargesAndTax,
    this.deliveryChargesForDriver,
    this.deliveryTipForDriver,
    this.createdAt,
    this.updatedAt,
  });

  OngoingOrderDetails.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uuid = json['uuid'] as String?,
        userId = json['user_id'] as int?,
        restaurantId = json['restaurant_id'] as int?,
        outletId = json['outlet_id'] as int?,
        orderTotal = json['order_total'] as int?,
        driverId = json['driver_id'],
        deliveryStatus = json['delivery_status'] as String?,
        orderPaymentStatus = json['order_payment_status'] as String?,
        orderedData = (json['ordered_data'] as List?)
            ?.map(
                (dynamic e) => OrderedData.fromJson(e as Map<String, dynamic>))
            .toList(),
        orderHistory = json['order_history'],
        paymentType = json['payment_type'] as String?,
        userAddressId = json['user_address_id'] as int?,
        deliveryChargesAndTax = json['delivery_charges_and_tax'],
        deliveryChargesForDriver = json['delivery_charges_for_driver'],
        deliveryTipForDriver = json['delivery_tip_for_driver'],
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'uuid': uuid,
        'user_id': userId,
        'restaurant_id': restaurantId,
        'outlet_id': outletId,
        'order_total': orderTotal,
        'driver_id': driverId,
        'delivery_status': deliveryStatus,
        'order_payment_status': orderPaymentStatus,
        'ordered_data': orderedData?.map((e) => e.toJson()).toList(),
        'order_history': orderHistory,
        'payment_type': paymentType,
        'user_address_id': userAddressId,
        'delivery_charges_and_tax': deliveryChargesAndTax,
        'delivery_charges_for_driver': deliveryChargesForDriver,
        'delivery_tip_for_driver': deliveryTipForDriver,
        'createdAt': createdAt,
        'updatedAt': updatedAt
      };
}
