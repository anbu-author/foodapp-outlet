import 'package:dio/dio.dart';
import 'package:flutter_getx_template/app/core/values/app_endpoint.dart';
import 'package:flutter_getx_template/app/modules/login/model/login_model.dart';
import 'package:flutter_getx_template/app/modules/register/model/register_model.dart';

import '/app/core/base/base_remote_source.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/github_remote_data_source.dart';
import '/app/network/dio_provider.dart';
import 'onboarding_remote_data_source.dart';

class OnboardingRemoteDataSourceImpl extends BaseRemoteSource
    implements OnboardingRemoteDataSource {

  @override
  Future<LoginModel> login(Map<String, dynamic> body) {
    var endpoint = "${DioProvider.baseUrl}${AppEndPoint.login}";
    var dioCall = dioClient.post(endpoint, data: body);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => LoginModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> register(Map<String, dynamic> body) {
    var endpoint = "${DioProvider.baseUrl}${AppEndPoint.register}";
    var dioCall = dioClient.post(endpoint, data: body);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => RegisterModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
