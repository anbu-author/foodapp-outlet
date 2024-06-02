import 'package:get/get.dart';

import '../../data/repository/sign_in/sign_in_repo/sign_in_repository.dart';
import '../../data/repository/sign_in/sign_in_repo_impl/sign_in_repo_impl.dart';

class SignInBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInRepository>(
      () => SignInRepoImpl(),
      tag: (SignInRepository).toString(),
    );
  }
}
