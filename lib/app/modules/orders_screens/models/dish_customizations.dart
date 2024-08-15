import 'dish_customization_items.dart';

class DishCustomizations {
  final int? id;
  final String? uuid;
  final bool? status;
  final int? dishId;
  final String? createdAt;
  final String? updatedAt;
  final bool? isMandatory;
  final String? selectNumbers;
  final int? customizationGroupId;
  final List<DishCustomizationItems>? dishCustomizationItems;

  DishCustomizations({
    this.id,
    this.uuid,
    this.status,
    this.dishId,
    this.createdAt,
    this.updatedAt,
    this.isMandatory,
    this.selectNumbers,
    this.customizationGroupId,
    this.dishCustomizationItems,
  });

  DishCustomizations.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uuid = json['uuid'] as String?,
        status = json['status'] as bool?,
        dishId = json['dish_id'] as int?,
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?,
        isMandatory = json['is_mandatory'] as bool?,
        selectNumbers = json['select_numbers'] as String?,
        customizationGroupId = json['customization_group_id'] as int?,
        dishCustomizationItems = (json['dish_customization_items'] as List?)
            ?.map((dynamic e) =>
                DishCustomizationItems.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'uuid': uuid,
        'status': status,
        'dish_id': dishId,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'is_mandatory': isMandatory,
        'select_numbers': selectNumbers,
        'customization_group_id': customizationGroupId,
        'dish_customization_items':
            dishCustomizationItems?.map((e) => e.toJson()).toList(),
      };
}
