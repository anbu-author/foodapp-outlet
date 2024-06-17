import 'package:get/get.dart';

import '../../data/repository/sign_up/sign_up_repo/sign_up_repository.dart';
import '../../data/repository/sign_up/sign_up_repo_impl/sign_up_repo_impl.dart';

class SignUpRepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpRepository>(
      () => SignUpRepoImpl(),
      tag: (SignUpRepository).toString(),
    );
  }
}
