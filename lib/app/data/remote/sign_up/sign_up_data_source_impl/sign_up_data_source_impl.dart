import 'package:flutter_getx_template/app/core/constants/app_urls.dart';

import '../../../../core/base/base_remote_source.dart';
import '../../../../modules/sign_up/models/sign_up_model.dart';
import '../sign_up_data_source/sign_up_data_source.dart';

class SignUpDataSourceImpl extends BaseRemoteSource
    implements SignUpDataSource {
  @override
  Future<SignUpModel> signUp(Map<String, dynamic> body) {
    String endPoint = AppUrls.signUp;
    var dioCall = dioClient.post(endPoint, data: body);
    try {
      return callApiWithErrorParser(dioCall)
          .then((response) => SignUpModel.fromJson(response.data));
    } catch (e) {
      rethrow;
    }
  }
}
