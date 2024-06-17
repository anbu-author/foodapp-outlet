import 'package:get/get.dart';

import '../../data/remote/sign_up/sign_up_data_source/sign_up_data_source.dart';
import '../../data/remote/sign_up/sign_up_data_source_impl/sign_up_data_source_impl.dart';

class SignUpRemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpDataSource>(
      () => SignUpDataSourceImpl(),
      tag: (SignUpDataSource).toString(),
    );
  }
}
