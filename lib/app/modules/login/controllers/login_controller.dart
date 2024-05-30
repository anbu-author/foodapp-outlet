import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:get/get.dart';

import '../../../data/repository/onboarding/onboarding_repository.dart';

class LoginController extends BaseController {
  RxString email = RxString('');
  RxString password = RxString('');
  RxnString errorText = RxnString(null);
  Rxn<Function()> submitFunc = Rxn<Function()>(null);
  final OnboardingRepository _repository = Get.find(tag: (OnboardingRepository).toString());
  @override
  void onInit() {
    super.onInit();
    debounce<String>(email, validations, time: const Duration(milliseconds: 500));
    debounce<String>(password, validations, time: const Duration(milliseconds: 500));
  }

  void validations(String val) async {
    errorText.value = null; // reset validation errors to nothing
    submitFunc.value = null; // disable submit while validating
    if (val.isNotEmpty) {
      if (lengthOK(val) && await available(val)) {
        print('All validations passed, enable submit btn...');
        submitFunc.value = submitFunction();
        errorText.value = null;
      }
    }
  }

  bool lengthOK(String val, {int minLen = 5}) {
    if (val.length < minLen) {
      errorText.value = 'min. 5 chars';

      return false;
    }

    return true;
  }

  Future<bool> available(String val) async {
    print('Query availability of: $val');
    await Future.delayed(
        const Duration(seconds: 1),
            () => print('Available query returned')
    );

    if (val == "Sylvester") {
      errorText.value = 'Name Taken';

      return false;
    }

    return true;
  }

  void emailChanged(String val) {
    email.value = val;
  }

  void passwordChanged(String val) {
    password.value = val;
  }

  Future<bool> Function() submitFunction() {
    return () async {

      Map<String,dynamic> queryParam = {
        "email": email.value,
        "password":password.value
      };

      var githubRepoSearchService = _repository.login(queryParam);

      await callDataService(
        githubRepoSearchService,
        onSuccess: (value){
          //empty
        },
      );

      return true;
    };
  }


  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
