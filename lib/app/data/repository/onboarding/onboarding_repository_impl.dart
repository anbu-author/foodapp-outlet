import 'package:flutter_getx_template/app/modules/login/model/login_model.dart';
import 'package:get/get.dart';

import '../../remote/onboarding/onboarding_remote_data_source.dart';
import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';
import '/app/data/remote/github_remote_data_source.dart';
import '/app/data/repository/github_repository.dart';
import 'onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingRemoteDataSource _remoteSource =
      Get.find(tag: (OnboardingRemoteDataSource).toString());

  @override
  Future<LoginModel> login(Map<String, dynamic> body) {
    return _remoteSource.login(body);
  }
}
