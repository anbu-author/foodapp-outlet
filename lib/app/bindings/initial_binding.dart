import 'package:flutter_getx_template/app/bindings/onboarding_bindings.dart';
import 'package:flutter_getx_template/app/bindings/onboarding_remote_source_bindings.dart';
import 'package:flutter_getx_template/app/bindings/onboarding_repository_bindings.dart';
import 'package:get/get.dart';

import 'local_source_bindings.dart';
import 'remote_source_bindings.dart';
import 'repository_bindings.dart';

class InitialBinding implements Bindings {
  @override
  void dependencies() {
    RepositoryBindings().dependencies();
    OnboardingBindings().dependencies();
    OnboardingRemoteSourceBindings().dependencies();
    OnboardingRepositoryBindings().dependencies();
    RemoteSourceBindings().dependencies();
    LocalSourceBindings().dependencies();
  }
}
