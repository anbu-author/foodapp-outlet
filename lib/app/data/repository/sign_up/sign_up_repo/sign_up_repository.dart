import '../../../../modules/sign_up/models/sign_up_model.dart';

abstract class SignUpRepository {
  Future<SignUpModel> signUp(Map<String, dynamic> body);
}
