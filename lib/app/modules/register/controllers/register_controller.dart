import 'package:flutter_getx_template/app/core/base/base_controller.dart';
import 'package:flutter_getx_template/app/modules/register/model/register_model.dart';
import 'package:get/get.dart';

import '../../../data/repository/onboarding/onboarding_repository.dart';

class RegisterController extends BaseController {
  //TODO: Implement RegisterController
  final OnboardingRepository _repository = Get.find(tag: (OnboardingRepository).toString());

  final count = 0.obs;

  Rx<RegisterModel> result=RegisterModel(data: Data(), tokens: Tokens(access: Access(), refresh: Refresh())).obs;
  @override
  void onInit() {
    super.onInit();
  }

  callRegisterApi() async {
    var body={
      "email": "bhuvanesh@yopmail.com",
      "password":"12345678",
      "confirm_password":"12345678",
      "first_name":"bhuvanesh",
      "last_name":"bhu"
    };

    var registerService=_repository.register(body);
    await callDataService(
      registerService,
    onSuccess: (value){
        // result=value;
      //empty
      // Get.toNamed("page");
    }
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
