import 'package:flutter_getx_template/app/modules/login/model/login_model.dart';

import '/app/core/model/github_search_query_param.dart';
import '/app/data/model/github_project_search_response.dart';

abstract class OnboardingRepository {
    Future<LoginModel> login(Map<String,dynamic> body);
}
