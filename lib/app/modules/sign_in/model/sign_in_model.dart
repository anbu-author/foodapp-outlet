class SignInModel {
  bool? status;
  int? code;
  String? message;
  Data? data;
  Tokens? tokens;

  SignInModel({this.status, this.code, this.message, this.data, this.tokens});

  SignInModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    tokens =
        json['tokens'] != null ? new Tokens.fromJson(json['tokens']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    if (this.tokens != null) {
      data['tokens'] = this.tokens!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? uuid;
  int? restaurantId;
  String? outletLocality;
  String? outletArea;
  String? outletMobile;
  String? outletEmail;
  String? outletLat;
  String? outletLng;
  String? outletRating;
  bool? status;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.uuid,
      this.restaurantId,
      this.outletLocality,
      this.outletArea,
      this.outletMobile,
      this.outletEmail,
      this.outletLat,
      this.outletLng,
      this.outletRating,
      this.status,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uuid = json['uuid'];
    restaurantId = json['restaurant_id'];
    outletLocality = json['outlet_locality'];
    outletArea = json['outlet_area'];
    outletMobile = json['outlet_mobile'];
    outletEmail = json['outlet_email'];
    outletLat = json['outlet_lat'];
    outletLng = json['outlet_lng'];
    outletRating = json['outlet_rating'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['uuid'] = this.uuid;
    data['restaurant_id'] = this.restaurantId;
    data['outlet_locality'] = this.outletLocality;
    data['outlet_area'] = this.outletArea;
    data['outlet_mobile'] = this.outletMobile;
    data['outlet_email'] = this.outletEmail;
    data['outlet_lat'] = this.outletLat;
    data['outlet_lng'] = this.outletLng;
    data['outlet_rating'] = this.outletRating;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}

class Tokens {
  Access? access;
  Access? refresh;

  Tokens({this.access, this.refresh});

  Tokens.fromJson(Map<String, dynamic> json) {
    access =
        json['access'] != null ? new Access.fromJson(json['access']) : null;
    refresh =
        json['refresh'] != null ? new Access.fromJson(json['refresh']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.access != null) {
      data['access'] = this.access!.toJson();
    }
    if (this.refresh != null) {
      data['refresh'] = this.refresh!.toJson();
    }
    return data;
  }
}

class Access {
  String? token;
  String? expires;

  Access({this.token, this.expires});

  Access.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    expires = json['expires'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['expires'] = this.expires;
    return data;
  }
}
