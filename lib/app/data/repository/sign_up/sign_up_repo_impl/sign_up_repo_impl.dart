import 'package:get/get.dart';

import '../../../../modules/sign_up/models/sign_up_model.dart';
import '../../../remote/sign_up/sign_up_data_source/sign_up_data_source.dart';
import '../sign_up_repo/sign_up_repository.dart';

class SignUpRepoImpl extends SignUpRepository {
  final SignUpDataSource _signUpDataSource =
      Get.find(tag: (SignUpDataSource).toString());

  @override
  Future<SignUpModel> signUp(Map<String, dynamic> body) {
    return _signUpDataSource.signUp(body);
  }
}
