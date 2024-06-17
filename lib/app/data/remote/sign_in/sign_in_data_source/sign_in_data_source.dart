import '../../../../modules/sign_in/model/sign_in_model.dart';

abstract class SignInDataSource {
  Future<SignInModel> signIn(Map<String, dynamic> body);
}
