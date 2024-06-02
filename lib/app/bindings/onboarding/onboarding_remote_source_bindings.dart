import 'package:get/get.dart';

import '../../data/remote/onboarding/onboarding_remote_data_source.dart';
import '../../data/remote/onboarding/onboarding_remote_data_source_impl.dart';
import '/app/data/remote/github_remote_data_source.dart';
import '/app/data/remote/github_remote_data_source_impl.dart';

class OnboardingRemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingRemoteDataSource>(
      () => OnboardingRemoteDataSourceImpl(),
      tag: (OnboardingRemoteDataSource).toString(),
    );
  }
}
