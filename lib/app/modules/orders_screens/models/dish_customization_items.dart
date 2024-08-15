class DishCustomizationItems {
  final int? id;
  final String? uuid;
  final bool? status;
  final String? createdAt;
  final String? updatedAt;
  final bool? defaultSelection;
  final int? customizationItemId;
  final int? dishCustomizationId;

  DishCustomizationItems({
    this.id,
    this.uuid,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.defaultSelection,
    this.customizationItemId,
    this.dishCustomizationId,
  });

  DishCustomizationItems.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uuid = json['uuid'] as String?,
        status = json['status'] as bool?,
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?,
        defaultSelection = json['default_selection'] as bool?,
        customizationItemId = json['customization_item_id'] as int?,
        dishCustomizationId = json['dish_customization_id'] as int?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'uuid': uuid,
        'status': status,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'default_selection': defaultSelection,
        'customization_item_id': customizationItemId,
        'dish_customization_id': dishCustomizationId,
      };
}
