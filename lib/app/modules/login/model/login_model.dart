

import '../../../core/utils/safe_convert.dart';

class LoginModel {
  final bool status;
  final int code;
  final String message;
  final Data data;
  final Tokens tokens;

  LoginModel({
    this.status = false,
    this.code = 0,
    this.message = "",
    required this.data,
    required this.tokens,
  });

  factory LoginModel.fromJson(Map<String, dynamic>? json) => LoginModel(
    status: asBool(json, 'status'),
    code: asInt(json, 'code'),
    message: asString(json, 'message'),
    data: Data.fromJson(asMap(json, 'data')),
    tokens: Tokens.fromJson(asMap(json, 'tokens')),
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'code': code,
    'message': message,
    'data': data.toJson(),
    'tokens': tokens.toJson(),
  };
}

class Data {
  final int id;
  final String uuid;
  final String firstName;
  final String lastName;
  final String email;
  final int status;
  final int emailVerified;
  final String address;
  final String phoneNumber;
  final String createdAt;
  final String updatedAt;

  Data({
    this.id = 0,
    this.uuid = "",
    this.firstName = "",
    this.lastName = "",
    this.email = "",
    this.status = 0,
    this.emailVerified = 0,
    this.address = "",
    this.phoneNumber = "",
    this.createdAt = "",
    this.updatedAt = "",
  });

  factory Data.fromJson(Map<String, dynamic>? json) => Data(
    id: asInt(json, 'id'),
    uuid: asString(json, 'uuid'),
    firstName: asString(json, 'first_name'),
    lastName: asString(json, 'last_name'),
    email: asString(json, 'email'),
    status: asInt(json, 'status'),
    emailVerified: asInt(json, 'email_verified'),
    address: asString(json, 'address'),
    phoneNumber: asString(json, 'phone_number'),
    createdAt: asString(json, 'createdAt'),
    updatedAt: asString(json, 'updatedAt'),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'uuid': uuid,
    'first_name': firstName,
    'last_name': lastName,
    'email': email,
    'status': status,
    'email_verified': emailVerified,
    'address': address,
    'phone_number': phoneNumber,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };
}


class Tokens {
  final Access access;
  final Refresh refresh;

  Tokens({
    required this.access,
    required this.refresh,
  });

  factory Tokens.fromJson(Map<String, dynamic>? json) => Tokens(
    access: Access.fromJson(asMap(json, 'access')),
    refresh: Refresh.fromJson(asMap(json, 'refresh')),
  );

  Map<String, dynamic> toJson() => {
    'access': access.toJson(),
    'refresh': refresh.toJson(),
  };
}

class Access {
  final String token;
  final String expires;

  Access({
    this.token = "",
    this.expires = "",
  });

  factory Access.fromJson(Map<String, dynamic>? json) => Access(
    token: asString(json, 'token'),
    expires: asString(json, 'expires'),
  );

  Map<String, dynamic> toJson() => {
    'token': token,
    'expires': expires,
  };
}


class Refresh {
  final String token;
  final String expires;

  Refresh({
    this.token = "",
    this.expires = "",
  });

  factory Refresh.fromJson(Map<String, dynamic>? json) => Refresh(
    token: asString(json, 'token'),
    expires: asString(json, 'expires'),
  );

  Map<String, dynamic> toJson() => {
    'token': token,
    'expires': expires,
  };
}

