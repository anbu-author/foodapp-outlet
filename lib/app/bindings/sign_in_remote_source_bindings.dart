import 'package:get/get.dart';

import '../data/remote/sign_in/sign_in_data_source/sign_in_data_source.dart';
import '../data/remote/sign_in/sign_in_data_source_impl/sign_in_data_source_impl.dart';

class SignInRemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInDataSource>(
      () => SignInDataSourceImpl(),
      tag: (SignInDataSource).toString(),
    );
  }
}
