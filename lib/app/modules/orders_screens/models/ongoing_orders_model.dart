import 'ongoing_order_details.dart';

class OngoingOrdersModelClass {
  final bool? status;
  final int? code;
  final String? message;
  final List<OngoingOrderDetails>? data;

  OngoingOrdersModelClass({
    this.status,
    this.code,
    this.message,
    this.data,
  });

  OngoingOrdersModelClass.fromJson(Map<String, dynamic> json)
      : status = json['status'] as bool?,
        code = json['code'] as int?,
        message = json['message'] as String?,
        data = (json['data'] as List?)
            ?.map(
                (e) => OngoingOrderDetails.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'status': status,
        'code': code,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
