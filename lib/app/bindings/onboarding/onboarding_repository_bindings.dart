import 'package:get/get.dart';

import '../../data/repository/onboarding/onboarding_repository.dart';
import '../../data/repository/onboarding/onboarding_repository_impl.dart';
import '/app/data/repository/github_repository.dart';
import '/app/data/repository/github_repository_impl.dart';

class OnboardingRepositoryBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingRepository>(
      () => OnboardingRepositoryImpl(),
      tag: (OnboardingRepository).toString(),
    );
  }
}
