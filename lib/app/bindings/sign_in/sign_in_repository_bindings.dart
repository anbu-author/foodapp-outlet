
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../data/repository/sign_in/sign_in_repo/sign_in_repository.dart';
import '../../data/repository/sign_in/sign_in_repo_impl/sign_in_repo_impl.dart';

class SignInRepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInRepository>(
          () => SignInRepoImpl(),
      tag: (SignInRepository).toString(),
    );
  }
}