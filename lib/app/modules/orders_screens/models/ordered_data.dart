import 'dish_customizations.dart';

class OrderedData {
  final int? id;
  final String? uuid;
  final int? price;
  final bool? status;
  final int? menuId;
  final String? createdAt;
  final String? dishName;
  final String? updatedAt;
  final int? submenuId;
  final int? restaurantId;
  final bool? isRecommended;
  final List<DishCustomizations>? dishCustomizations;

  OrderedData({
    this.id,
    this.uuid,
    this.price,
    this.status,
    this.menuId,
    this.createdAt,
    this.dishName,
    this.updatedAt,
    this.submenuId,
    this.restaurantId,
    this.isRecommended,
    this.dishCustomizations,
  });

  OrderedData.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uuid = json['uuid'] as String?,
        price = json['price'] as int?,
        status = json['status'] as bool?,
        menuId = json['menu_id'] as int?,
        createdAt = json['createdAt'] as String?,
        dishName = json['dish_name'] as String?,
        updatedAt = json['updatedAt'] as String?,
        submenuId = json['submenu_id'] as int?,
        restaurantId = json['restaurant_id'] as int?,
        isRecommended = json['is_recommended'] as bool?,
        dishCustomizations = (json['dish_customizations'] as List?)
            ?.map((dynamic e) =>
                DishCustomizations.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'uuid': uuid,
        'price': price,
        'status': status,
        'menu_id': menuId,
        'createdAt': createdAt,
        'dish_name': dishName,
        'updatedAt': updatedAt,
        'submenu_id': submenuId,
        'restaurant_id': restaurantId,
        'is_recommended': isRecommended,
        'dish_customizations':
            dishCustomizations?.map((e) => e.toJson()).toList(),
      };
}
