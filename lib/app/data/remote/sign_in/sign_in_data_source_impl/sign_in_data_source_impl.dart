import 'package:flutter_getx_template/app/core/constants/app_urls.dart';
import 'package:flutter_getx_template/app/modules/sign_in/model/sign_in_model.dart';

import '/app/core/base/base_remote_source.dart';
import '../sign_in_data_source/sign_in_data_source.dart';

class SignInDataSourceImpl extends BaseRemoteSource
    implements SignInDataSource {
  @override
  Future<SignInModel> signIn(Map<String, dynamic> body) {
    String endPoint = AppUrls.signIn;
    var dioCall = dioClient.post(endPoint, data: body);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => SignInModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
