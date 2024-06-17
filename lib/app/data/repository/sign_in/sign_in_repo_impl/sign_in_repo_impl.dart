import 'package:flutter_getx_template/app/modules/sign_in/model/sign_in_model.dart';
import 'package:get/get.dart';

import '../../../remote/sign_in/sign_in_data_source/sign_in_data_source.dart';
import '../sign_in_repo/sign_in_repository.dart';

class SignInRepoImpl extends SignInRepository {
  final SignInDataSource _signInDataSource =
      Get.find(tag: (SignInDataSource).toString());

  @override
  Future<SignInModel> signIn(Map<String, dynamic> body) {
    return _signInDataSource.signIn(body);
  }
}
