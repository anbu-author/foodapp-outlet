class SignInModel {
  final bool? status;
  final int? code;
  final String? message;
  final Data? data;
  final Tokens? tokens;

  SignInModel({
    this.status,
    this.code,
    this.message,
    this.data,
    this.tokens,
  });

  SignInModel.fromJson(Map<String, dynamic> json)
      : status = json['status'] as bool?,
        code = json['code'] as int?,
        message = json['message'] as String?,
        data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null,
        tokens = (json['tokens'] as Map<String,dynamic>?) != null ? Tokens.fromJson(json['tokens'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'code' : code,
    'message' : message,
    'data' : data?.toJson(),
    'tokens' : tokens?.toJson()
  };
}

class Data {
  final int? id;
  final String? uuid;
  final String? firstName;
  final String? lastName;
  final String? email;
  final int? status;
  final int? emailVerified;
  final dynamic address;
  final dynamic phoneNumber;
  final String? createdAt;
  final String? updatedAt;

  Data({
    this.id,
    this.uuid,
    this.firstName,
    this.lastName,
    this.email,
    this.status,
    this.emailVerified,
    this.address,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        uuid = json['uuid'] as String?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        email = json['email'] as String?,
        status = json['status'] as int?,
        emailVerified = json['email_verified'] as int?,
        address = json['address'],
        phoneNumber = json['phone_number'],
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?;

  Map<String, dynamic> toJson() => {
    'id' : id,
    'uuid' : uuid,
    'first_name' : firstName,
    'last_name' : lastName,
    'email' : email,
    'status' : status,
    'email_verified' : emailVerified,
    'address' : address,
    'phone_number' : phoneNumber,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt
  };
}

class Tokens {
  final Access? access;
  final Refresh? refresh;

  Tokens({
    this.access,
    this.refresh,
  });

  Tokens.fromJson(Map<String, dynamic> json)
      : access = (json['access'] as Map<String,dynamic>?) != null ? Access.fromJson(json['access'] as Map<String,dynamic>) : null,
        refresh = (json['refresh'] as Map<String,dynamic>?) != null ? Refresh.fromJson(json['refresh'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'access' : access?.toJson(),
    'refresh' : refresh?.toJson()
  };
}

class Access {
  final String? token;
  final String? expires;

  Access({
    this.token,
    this.expires,
  });

  Access.fromJson(Map<String, dynamic> json)
      : token = json['token'] as String?,
        expires = json['expires'] as String?;

  Map<String, dynamic> toJson() => {
    'token' : token,
    'expires' : expires
  };
}

class Refresh {
  final String? token;
  final String? expires;

  Refresh({
    this.token,
    this.expires,
  });

  Refresh.fromJson(Map<String, dynamic> json)
      : token = json['token'] as String?,
        expires = json['expires'] as String?;

  Map<String, dynamic> toJson() => {
    'token' : token,
    'expires' : expires
  };
}