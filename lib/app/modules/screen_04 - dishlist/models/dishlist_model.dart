class DishListModel {
  bool? status;
  int? code;
  List<Message>? message;
  Data? data;

  DishListModel({this.status, this.code, this.message, this.data});

  DishListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    if (json['message'] != null) {
      message = <Message>[];
      json['message'].forEach((v) {
        message!.add(new Message.fromJson(v));
      });
    }
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    if (this.message != null) {
      data['message'] = this.message!.map((v) => v.toJson()).toList();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Message {
  int? id;
  int? outletId;
  int? dishId;
  bool? status;
  String? createdAt;
  String? updatedAt;
  Dish? dish;

  Message(
      {this.id,
      this.outletId,
      this.dishId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.dish});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    outletId = json['outlet_id'];
    dishId = json['dish_id'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    dish = json['dish'] != null ? new Dish.fromJson(json['dish']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['outlet_id'] = this.outletId;
    data['dish_id'] = this.dishId;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.dish != null) {
      data['dish'] = this.dish!.toJson();
    }
    return data;
  }
}

class Dish {
  int? id;
  String? uuid;
  int? menuId;
  int? submenuId;
  int? restaurantId;
  String? dishName;
  bool? status;
  bool? isRecommended;
  int? price;
  int? maximumQuantityPerOrder;
  bool? isVeg;
  String? dishImage;
  List<AvailableTime>? availableTime;
  String? createdAt;
  String? updatedAt;

  Dish(
      {this.id,
      this.uuid,
      this.menuId,
      this.submenuId,
      this.restaurantId,
      this.dishName,
      this.status,
      this.isRecommended,
      this.price,
      this.maximumQuantityPerOrder,
      this.isVeg,
      this.dishImage,
      this.availableTime,
      this.createdAt,
      this.updatedAt});

  Dish.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    menuId = json['menu_id'];
    submenuId = json['submenu_id'];
    restaurantId = json['restaurant_id'];
    dishName = json['dish_name'];
    status = json['status'];
    isRecommended = json['is_recommended'];
    price = json['price'];
    maximumQuantityPerOrder = json['maximum_quantity_per_order'];
    isVeg = json['is_veg'];
    dishImage = json['dish_image'];
    if (json['available_time'] != null) {
      availableTime = <AvailableTime>[];
      json['available_time'].forEach((v) {
        availableTime!.add(new AvailableTime.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uuid'] = this.uuid;
    data['menu_id'] = this.menuId;
    data['submenu_id'] = this.submenuId;
    data['restaurant_id'] = this.restaurantId;
    data['dish_name'] = this.dishName;
    data['status'] = this.status;
    data['is_recommended'] = this.isRecommended;
    data['price'] = this.price;
    data['maximum_quantity_per_order'] = this.maximumQuantityPerOrder;
    data['is_veg'] = this.isVeg;
    data['dish_image'] = this.dishImage;
    if (this.availableTime != null) {
      data['available_time'] =
          this.availableTime!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class AvailableTime {
  String? to;
  String? from;

  AvailableTime({this.to, this.from});

  AvailableTime.fromJson(Map<String, dynamic> json) {
    to = json['to'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['to'] = this.to;
    data['from'] = this.from;
    return data;
  }
}

class Data {
  Data.fromJson(Map<String, dynamic> json) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    return data;
  }
}
