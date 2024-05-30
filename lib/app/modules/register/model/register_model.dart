

import '../../../core/utils/safe_convert.dart';

class RegisterModel {
  final bool status;
  final String message;
  final Data data;
  final Tokens tokens;

  RegisterModel({
    this.status = false,
    this.message = "",
    required this.data,
    required this.tokens,
  });

  factory RegisterModel.fromJson(Map<String, dynamic>? json) => RegisterModel(
    status: asBool(json, 'status'),
    message: asString(json, 'message'),
    data: Data.fromJson(asMap(json, 'data')),
    tokens: Tokens.fromJson(asMap(json, 'tokens')),
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    'message': message,
    'data': data.toJson(),
    'tokens': tokens.toJson(),
  };
}

class Data {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String uuid;
  final int status;
  final int emailVerified;
  final String updatedAt;
  final String createdAt;

  Data({
    this.id = 0,
    this.email = "",
    this.firstName = "",
    this.lastName = "",
    this.uuid = "",
    this.status = 0,
    this.emailVerified = 0,
    this.updatedAt = "",
    this.createdAt = "",
  });

  factory Data.fromJson(Map<String, dynamic>? json) => Data(
    id: asInt(json, 'id'),
    email: asString(json, 'email'),
    firstName: asString(json, 'first_name'),
    lastName: asString(json, 'last_name'),
    uuid: asString(json, 'uuid'),
    status: asInt(json, 'status'),
    emailVerified: asInt(json, 'email_verified'),
    updatedAt: asString(json, 'updatedAt'),
    createdAt: asString(json, 'createdAt'),
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'first_name': firstName,
    'last_name': lastName,
    'uuid': uuid,
    'status': status,
    'email_verified': emailVerified,
    'updatedAt': updatedAt,
    'createdAt': createdAt,
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

