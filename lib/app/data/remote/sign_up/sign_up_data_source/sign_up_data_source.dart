import '../../../../modules/sign_up/models/sign_up_model.dart';

abstract class SignUpDataSource {
  Future<SignUpModel> signUp(Map<String, dynamic> body);
}
